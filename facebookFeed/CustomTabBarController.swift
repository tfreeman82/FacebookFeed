//
//  CustomTabBarController.swift
//  facebookFeed
//
//  Created by Tristan Freeman on 11/29/17.
//  Copyright © 2017 Tristan Freeman. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: feedController)
        //navigationController.title = "News Feed"
        navigationController.tabBarItem.image = UIImage(named: "news_feed")
        
        
        let watchController = UIViewController()
        let secondNavigationController = UINavigationController (rootViewController: watchController)
        secondNavigationController.tabBarItem.image = UIImage(named: "watch_icon")
        
        let marketController = UIViewController()
        let thirdNavigationController = UINavigationController (rootViewController: marketController)
        thirdNavigationController.tabBarItem.image = UIImage (named: "market_icon")
        
        let notificationController = UIViewController()
        let fourthNavigationController = UINavigationController (rootViewController: notificationController)
        fourthNavigationController.tabBarItem.image = UIImage (named: "notification_icon")
        
        let moreController = UIViewController()
        let fifthNavigationController = UINavigationController (rootViewController: moreController)
        fifthNavigationController.tabBarItem.image = UIImage (named: "more_icon")
        
    
        
        viewControllers = [navigationController, secondNavigationController, thirdNavigationController, fourthNavigationController, fifthNavigationController]
    }
}
