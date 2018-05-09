//
//  ViewController.swift
//  Kroger
//
//  Created by Utsha Guha on 8-5-18.
//  Copyright © 2018 Utsha Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let result1 = self.mergeStrings(a: "abc", b: "stu")
        print("Merge String = \(result1)")
        let result2 = self.count(numbers: [1,2,3], k: 4)
        print("Count Multiplication = \(result2)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mergeStrings(a: String, b: String) -> String {
        var result:String = ""
        if a.characters.count>b.characters.count {
            var firstString:String = ""
            var secondString:String = ""
            for i in 0..<a.characters.count {
                let aIndex = a.index(a.startIndex, offsetBy: i)
                let aStr = a[aIndex]
                firstString = String(aStr)
                if i<b.characters.count  {
                    let bIndex = b.index(b.startIndex, offsetBy: i)
                    let bStr = b[bIndex]
                    secondString = String(bStr)
                }
                else{
                    secondString = ""
                }
            result += firstString+secondString
            }
        }
        else if b.characters.count>a.characters.count{
            var firstString:String = ""
            var secondString:String = ""
            for i in 0..<b.characters.count {
                let bIndex = b.index(b.startIndex, offsetBy: i)
                let bStr = b[bIndex]
                secondString = String(bStr)
                if i<a.characters.count  {
                    let aIndex = a.index(a.startIndex, offsetBy: i)
                    let aStr = a[aIndex]
                    firstString = String(aStr)
                }
                else{
                    firstString = ""
                }
                result += firstString+secondString
            }
        }
        else{
            var firstString:String = ""
            var secondString:String = ""
            for i in 0..<b.characters.count {
                let bIndex = b.index(b.startIndex, offsetBy: i)
                let bStr = b[bIndex]
                secondString = String(bStr)
                let aIndex = a.index(a.startIndex, offsetBy: i)
                let aStr = a[aIndex]
                firstString = String(aStr)
                result += firstString+secondString
            }
        }
        return result
    }
    
    func count(numbers: [Int], k: Int) -> Int {
        let N:Int = numbers.count
        var count1:Int = 0
        var count2:Int = 1
        for i in 0..<N{
            count2 = numbers[i]
            for j in i+1..<N{
                count2 = count2*numbers[j]
                if count2<=k {
                    count1+=1
                }
                else{
                    break
                }
            }
        }
        return count1+numbers.count
    }


}

