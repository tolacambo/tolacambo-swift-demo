//
//  ExtentionHelper.swift
//  tolacambodemo
//
//  Created by Tola Voeung on 8/2/24.
//

import Foundation
import SwiftUI


extension Binding {
    func onTextChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
    
    
    
    
}
