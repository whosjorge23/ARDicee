//
//  Dicee2DViewController.swift
//  ARDicee
//
//  Created by Jorge Giannotta on 05/04/2019.
//  Copyright © 2019 Jorge Giannotta. All rights reserved.
//

import UIKit

class Dicee2DViewController: UIViewController {

    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
        navigationController?.navigationBar.tintColor = .orange
//      navigationController?.navigationBar.barTintColor = UIColor(named: "009432")

        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        let result : Int = randomDiceIndex1 + randomDiceIndex2 + 2
        
        resultLabel.text = "\(result)"
        
        print("Dice 1: \(randomDiceIndex1) + Dice 2: \(randomDiceIndex2) = Result: \(result)")
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}
