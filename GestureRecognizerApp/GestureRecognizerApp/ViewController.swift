//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by pc on 8.02.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var isHayko = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kullanicinin obje uzerine tiklayabilip tiklayamama durumu
        imageView.isUserInteractionEnabled = true
        //kullanicinin bir veya birden fazla kez objeye tiklamasinin kontrolu
        let gestureRecognizerApp = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        //yukaridaki komutu resime tasima yolu
        imageView.addGestureRecognizer(gestureRecognizerApp)
        
        
    }
    
    @objc func changeImage(){
        
        if(isHayko==true){
            imageView.image = UIImage(named: "cem")
            nameLabel.text = "Cem Karaca"
            isHayko=false
        }
        else{
            imageView.image = UIImage(named: "hayko")
            nameLabel.text = "Hayko Cepkin"
            isHayko=true
        }
        
        
    }
    
}
