//
//  ViewController.swift
//  CALayersDemo
//
//  Created by Vikash Kumar on 10/04/17.
//  Copyright © 2017 Vikash Kumar. All rights reserved.
//

import UIKit
import CoreGraphics
import CoreText

class ViewController: UIViewController {
    var lyr: CAShapeLayer!
    var animatedLayers = [CAShapeLayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeLayerEx6()
    }
    @IBAction func buttonAction(_ sender: UIButton) {
        animation6()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

//Layers
extension ViewController {
    //checkout anchorPoint's behaviour.
    func anchorPointEx() {
        let lyr = CALayer()
        lyr.frame.size = CGSize(width: 200, height: 200)
        lyr.position = self.view.center
        lyr.backgroundColor = UIColor.magenta.cgColor
        self.view.layer.addSublayer(lyr)
        
        
        let lyr1 = CALayer()
        lyr1.frame.size = CGSize(width: 75, height: 75)
        lyr1.position = CGPoint(x: 100, y: 100)
        lyr1.backgroundColor = UIColor.lightGray.cgColor
        lyr1.anchorPoint = CGPoint(x: 1, y: 1)
        lyr.addSublayer(lyr1)
        
    }
    
    func shapeLayerEx1() {
        lyr = CAShapeLayer()
        lyr.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        lyr.position = self.view.center
        //        lyr.path = UIBezierPath(roundedRect: lyr.bounds, cornerRadius: 5).cgPath
        lyr.path = UIBezierPath(ovalIn: lyr.bounds).cgPath
        
        //lyr.strokeColor = UIColor.green.cgColor
        //lyr.lineWidth = 3.0
        lyr.fillColor = UIColor.yellow.cgColor
        self.view.layer.addSublayer(lyr)
        
    }
    
    func shapeLayerEx2() {
        lyr = CAShapeLayer()
        lyr.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        lyr.position = self.view.center
        lyr.path = UIBezierPath(ovalIn: lyr.bounds).cgPath
        lyr.strokeStart = 0.5
        lyr.strokeEnd  = 1
        lyr.strokeColor = UIColor.gray.cgColor
        lyr.fillColor = nil
        self.view.layer.addSublayer(lyr)
    }

    func shapeLayerEx3() {
        lyr = CAShapeLayer()
        lyr.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        lyr.position = self.view.center
        lyr.path = UIBezierPath(roundedRect: lyr.bounds, cornerRadius: 10).cgPath
        lyr.strokeStart = 0
        lyr.strokeEnd  = 0.25
        lyr.strokeColor = UIColor.gray.cgColor
        lyr.fillColor = nil
        self.view.layer.addSublayer(lyr)
    }

    func shapeLayerEx4() {
        lyr = CAShapeLayer()
        lyr.frame = self.view.bounds
        lyr.position = self.view.center
        lyr.strokeStart = 0
        lyr.strokeEnd  = 0
        lyr.strokeColor = UIColor.gray.cgColor
        lyr.fillColor = nil
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20, y: 350))
        path.addLine(to: CGPoint(x: 20, y: 100))
        path.addLine(to: CGPoint(x: 150, y: 40))
        path.addLine(to: CGPoint(x: 300, y: 100))
        path.addLine(to: CGPoint(x: 300, y: 350))
        path.addLine(to: CGPoint(x: 20, y: 100))
        path.addLine(to: CGPoint(x: 300, y: 100))
        path.addLine(to: CGPoint(x: 20, y: 350))
        path.addLine(to: CGPoint(x: 300, y: 350))
        lyr.path = path.cgPath
        

        self.view.layer.addSublayer(lyr)
    }

    func shapeLayerEx5() {
        lyr = CAShapeLayer()
        lyr.frame = self.view.bounds
        lyr.position = self.view.center
        lyr.strokeStart = 0.0
        lyr.strokeEnd  = 0.01
        lyr.strokeColor = UIColor.black.cgColor
        lyr.fillColor = UIColor.green.cgColor
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -50, y: -100))
        path.addLine(to: CGPoint(x: 320, y: 568))
        path.move(to: CGPoint(x: 0, y: 568))
        path.addLine(to: CGPoint(x: 370, y: -100))
        path.move(to: CGPoint(x:320, y: self.view.frame.height/2))
        path.addLine(to: CGPoint(x: -100, y: self.view.frame.height/2))
        lyr.path = path.cgPath
        
        self.view.layer.addSublayer(lyr)

    }

    
    func shapeLayerEx6() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -50, y: -100))
        path.addLine(to: CGPoint(x: 320, y: 568))
        path.move(to: CGPoint(x: 0, y: 568))
        path.addLine(to: CGPoint(x: 370, y: -100))
        path.move(to: CGPoint(x:320, y: self.view.frame.height/2))
        path.addLine(to: CGPoint(x: -100, y: self.view.frame.height/2))
        
    
        for _ in 0..<1 {
           let lyr = CAShapeLayer()
            lyr.frame = self.view.bounds
            lyr.position = self.view.center
            lyr.strokeStart = 0.0
            lyr.strokeEnd  = 0.005
            lyr.strokeColor = UIColor.white.cgColor
            lyr.fillColor = UIColor.green.cgColor
            lyr.path = path.cgPath
            lyr.lineCap = kCALineCapRound
            lyr.lineWidth = 5
            self.view.layer.addSublayer(lyr)
            animatedLayers.append(lyr)
        }
        
        let fixLyr = CAShapeLayer()
        fixLyr.frame = self.view.bounds
        fixLyr.position = self.view.center
        fixLyr.strokeColor = UIColor.darkGray.cgColor
        fixLyr.path = path.cgPath
        self.view.layer.addSublayer(fixLyr)
        self.view.backgroundColor = UIColor.black
        
    }

    func shapeLayerEx7() {
        let π: CGFloat = CGFloat(Double.pi)
        lyr = CAShapeLayer()
        lyr.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        lyr.position = self.view.center
        lyr.strokeColor = UIColor.red.cgColor
        lyr.strokeStart = 0
        lyr.strokeEnd = 0
        lyr.lineWidth = 5.0
        lyr.lineCap = kCALineCapRound
        lyr.fillColor = nil


        let path = UIBezierPath()
        let layerCenter = CGPoint(x: lyr.bounds.width/2, y: lyr.bounds.height/2)
         path.addArc(withCenter: layerCenter,
                     radius: 100,
                     startAngle: 0 ,
                     endAngle: -π,
                     clockwise: false)
        
        path.addArc(withCenter: CGPoint(x: -50, y: 190), radius: 100, startAngle: 300*π/180, endAngle: 2 * π, clockwise: true)
       
       // path.addArc(withCenter: layerCenter, radius: 100, startAngle:105*π/180 , endAngle: 240*π/180, clockwise: false)

        path.addArc(withCenter: CGPoint(x: 250, y: 190), radius: 100, startAngle: π, endAngle: 240*π/180, clockwise: true)

        lyr.path = path.cgPath
        self.view.layer.addSublayer(lyr)

        let fixLyr = CAShapeLayer()
        fixLyr.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        fixLyr.position = self.view.center
        fixLyr.strokeColor = UIColor.darkGray.cgColor
        fixLyr.path = path.cgPath
        self.view.layer.addSublayer(fixLyr)
        //self.view.backgroundColor = UIColor.black
        
    }

}

//Animations
extension ViewController {
    
    func animation1()  {
        let ani = CABasicAnimation()
        ani.keyPath = "transform.scale"
        ani.toValue = CGPoint(x: 50, y: 50)
        ani.duration = 2
        ani.fillMode = kCAFillModeBoth
        ani.isRemovedOnCompletion = false
        lyr.add(ani, forKey: "zoom")

    }
    
    func animation2()  {
        
        let start = CABasicAnimation(keyPath: "strokeStart")
        start.toValue = 0
        let end = CABasicAnimation(keyPath: "strokeEnd")
        end.toValue = 0
        
        // 4
        let group = CAAnimationGroup()
        group.animations = [start, end]
        group.duration = 1.5
        group.autoreverses = true
        group.repeatCount = HUGE // repeat forver
        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        lyr.add(group, forKey: nil)
    }

    func animation3()  {
//        lyr.strokeColor = UIColor.blue.cgColor
//        lyr.strokeEnd = 0
//        let ani = CABasicAnimation()
//        ani.keyPath = "strokeEnd"
//        ani.toValue = 1
//        ani.duration = 2
//        ani.repeatCount = Float.infinity
//        lyr.add(ani, forKey: nil)
//        
        
        let start = CABasicAnimation(keyPath: "strokeStart")
        start.toValue = 1
        let end = CABasicAnimation(keyPath: "strokeEnd")
        end.toValue = 1
        
        // 4
        let group = CAAnimationGroup()
        group.animations = [start, end]
        group.duration = 1.5
        group.autoreverses = true
        group.repeatCount = HUGE // repeat forver
        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        lyr.add(group, forKey: nil)

    }

    func animation4()  {
        lyr.strokeStart = 0.0
        let end = CABasicAnimation(keyPath: "strokeEnd")
        end.toValue = 1
        
        // 4
        let group = CAAnimationGroup()
        group.animations = [ end]
        group.duration = 3.0
        //group.autoreverses = true
        //group.repeatCount = HUGE // repeat forver
        group.isRemovedOnCompletion = false
        group.fillMode = kCAFillModeForwards
        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        lyr.add(group, forKey: nil)
    }

    func animation5()  {
        let start = CABasicAnimation(keyPath: "strokeStart")
        start.toValue = 0.99

        let end = CABasicAnimation(keyPath: "strokeEnd")
        end.toValue = 1
        
        // 4
        let group = CAAnimationGroup()
        group.animations = [start, end]
        group.duration = 4.0
        //group.autoreverses = true
        group.repeatCount = HUGE // repeat forver
        group.isRemovedOnCompletion = false
        group.fillMode = kCAFillModeForwards
        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        lyr.add(group, forKey: nil)
    }
    
    func animation6()  {
        var delay = 0
        for lyr in animatedLayers {
            let start = CABasicAnimation(keyPath: "strokeStart")
            start.toValue = 0.999
            
            let end = CABasicAnimation(keyPath: "strokeEnd")
            end.toValue = 1
            
            // 4
            let group = CAAnimationGroup()
            group.animations = [start, end]
            group.duration = 10.0
            //group.autoreverses = true
            group.repeatCount = HUGE // repeat forver
            group.isRemovedOnCompletion = false
            group.fillMode = kCAFillModeForwards
            group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            group.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            lyr.add(group, forKey: nil)

            delay += 1
        }
    }


    func animation7()  {
        let endStrokAni = CABasicAnimation(keyPath: "strokeEnd")
        endStrokAni.toValue = 1
        
        endStrokAni.duration = 10.0
        //group.autoreverses = true
        endStrokAni.repeatCount = HUGE // repeat forver
        //endStrokAni.isRemovedOnCompletion = false
        endStrokAni.fillMode = kCAFillModeForwards
        endStrokAni.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        lyr.add(endStrokAni, forKey: nil)
    }

}
