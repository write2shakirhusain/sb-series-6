//
//  ViewController.swift
//  Enums_Demo
//
//  Created by Shakir Husain on 21/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var login  = LoginType.developer
        
        print("login")
        print(login)
        print(login.rawValue)

        
        var beverage =  Beverage.juice
        print("beverage")
        print(beverage)
        print(beverage.rawValue)


        
        var videoQualit = VideoQuality.low
        print("videoQualit")
        print(videoQualit)
        print(videoQualit.rawValue)
        
        videoQualit.next()
        print(videoQualit)
        print(videoQualit.rawValue)
        
        videoQualit.next()
        print(videoQualit)
        print(videoQualit.rawValue)
        
        videoQualit.next()
        print(videoQualit)
        print(videoQualit.rawValue)

        
        
    }
}




enum LoginType : Int {

    case admin = 1
    case developer
    case user
}

enum Beverage : String {

    case tea = "T"
    case coffee
    case juice
}

enum VideoQuality : String{

    case low = "L"
    case medium = "M"
    case high = "H"
    
    mutating func next(){
        
        switch (self){
            case .low :
                self = .medium
        case .medium :
            self = .high
        
        case .high :
            self = .low
            
        }
    }

}









//--------*** Enumeration ***------------------------------------------

// 1.An enumeration defines a common type for a group of related values

// 2.Enumerations are value types.

// 3.Emuration with RawValues

// 4.Muatating in Enum(Value type)


