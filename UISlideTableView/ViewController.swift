//
//  ViewController.swift
//  UISlideTableView
//
//  Created by D7703_30 on 2018. 5. 3..
//  Copyright © 2018년 D7703_30. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var mySlide: UISlider!
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySlide.value = 0.0
        mySlide.setValue(0.0, animated: true)
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    @IBAction func slideMoved(_ sender: Any) {
        
        print("slider value = \(Int(mySlide.value ))")
        
        // 테이블뷰의 값을 리로드  (테이블 뷰에 표시됨)
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        
        let tableValue = String(Int(mySlide.value * 100))
        cell.textLabel?.text = tableValue
        return cell
    }
    
}


