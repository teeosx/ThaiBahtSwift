//
//  ThaiBahtSwift.swift
//  ThaiBahtSwift
//
//  Created by Attawee Leelaphattanapong on 3/9/2560 BE.
//  Copyright © 2560 Attawee Leelaphattanapong. All rights reserved.
//

import Foundation

public extension Double {
    
    public var toTHBString: String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "th_TH")
        
        let TextNumber: NSNumber = NSNumber(value: self)
        let StringNumber = String(self)
        let isInteger = floor(self) == self
        
        if(isInteger){
            return "\(formatter.string(from: TextNumber)!)บาทถ้วน"
        }else{
            var splitNumber = StringNumber.components(separatedBy: ".")
            if (splitNumber[1].characters.count == 1){
                splitNumber[1] += "0"
            }
            if (splitNumber[1].characters.count > 2) {
                return "กรุณาใส่เลขทศนิยมเพียงสองตำแหน่ง"
            }
            let integerNumber: NSNumber = NSNumber(value: Double(splitNumber[0])!)
            let fractionNumber: NSNumber = NSNumber(value: Double(splitNumber[1])!)
            
            return "\(formatter.string(from: integerNumber)!)บาท\(formatter.string(from: fractionNumber)!)สตางค์"
        }
        
    }
}

public extension Int {
    
    public var toTHBString: String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "th_TH")
        
        let TextNumber: NSNumber = NSNumber(value: self)
        return "\(formatter.string(from: TextNumber)!)บาทถ้วน"
        
    }

}
