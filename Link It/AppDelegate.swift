//
//  AppDelegate.swift
//  Link It
//
//  Created by Jason Wong on 2018-06-15.
//  Copyright © 2018 Jason Wong. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        // Creat the app to be a status bar
        item = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        // Label the statusbar app as "Link It!"
        // item?.title = "Link It!"
        /*
        Code only there as an example for how to add a menu item
        item?.action = #selector(AppDelegate.linkIt)
        */
        // Get the image from the Asset.xcassets labeled link
        item?.image = NSImage(named: "link")
        // Create the menu items to be shown when clicking the status title
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Link It", action: #selector(AppDelegate.linkIt), keyEquivalent: "L"))
        menu.addItem(NSMenuItem(title: "Qut", action: #selector(AppDelegate.quit), keyEquivalent: "Q"))
        
        // Display menu items
        item?.menu = menu
    }
    
    func linkIt() {
        // Print the text when the Link It menu item is pressed
        print("WE MADE IT!")
    }
    
    func quit() {
        // Quit the application
        NSApplication.shared().terminate(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

