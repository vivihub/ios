//
//  ViewController.swift
//  Is It Prime
//
//  Created by shu on 2016/03/20.
//  Copyright © 2016年 shu. All rights reserved.
//

import UIKit
// 練習

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isitPrime(sender: AnyObject) {
        
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            
            }
                if number != 1 && number != 2 {
                    for var i = 2; i < number; i++ {
                        if number % i == 0 {
                            isPrime = false
                        }
                    }
                
                }
            if isPrime {
                resultLabel.text = "\(number) is prime!"
            } else {
                resultLabel.text = "\(number) is not prime!"
              }
        
        } else {
            resultLabel.text = "数字のみを入力してくだい"
        }
        
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

