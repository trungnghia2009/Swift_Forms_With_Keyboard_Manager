//
//  ViewController.swift
//  ScrollViewKeyboard
//
//  Created by trungnghia on 8/9/20.
//  Copyright © 2020 trungnghia. All rights reserved.
//

import LBTATools

class ViewController: LBTAFormController {
    
    // MARK: - Properties
    let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"), contentMode: .scaleAspectFit)
    
    let signUpButton = UIButton(title: "Sign Up",
                                titleColor: .white,
                                font: .boldSystemFont(ofSize: 16),
                                backgroundColor: #colorLiteral(red: 0.05965350568, green: 0.5876290798, blue: 0.9076900482, alpha: 1),
                                target: self,
                                action: #selector(handleSignUp))
    
    let cancelButton = UIButton(title: "Cancel",
                                titleColor: .white,
                                font: .boldSystemFont(ofSize: 16),
                                backgroundColor: .red,
                                target: self,
                                action: #selector(handleCancel))
    
    let optionLabel = UILabel(text: "or use the following",
                              font: .systemFont(ofSize: 16),
                              textColor: .label,
                              textAlignment: .center)
    
    let facebookButton = UIButton(image: #imageLiteral(resourceName: "facebook").withRenderingMode(.alwaysOriginal),
                                  action: #selector(handleFacebook))
    
    let twitterButton = UIButton(image: #imageLiteral(resourceName: "twitter").withRenderingMode(.alwaysOriginal),
                                 action: #selector(handleTwitter))
    
    let githubButton = UIButton(image: #imageLiteral(resourceName: "github").withRenderingMode(.alwaysOriginal),
                                action: #selector(handleGithub))
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        scrollView.alwaysBounceVertical = true
        formContainerStackView.axis = .vertical
        formContainerStackView.spacing = 12
        formContainerStackView.layoutMargins = .init(top: 20, left: 24, bottom: 0, right: 24)
        
        // Logo UI
        formContainerStackView.addArrangedSubview(imageView)
        imageView.constrainHeight(64)
        
        // Blank Space UI
        let blankView1 = UIView()
        blankView1.constrainHeight(40)
        formContainerStackView.addArrangedSubview(blankView1)
        
        // Input field UI
        (0...1).forEach({ _ in
            let tf = IndentedTextField(placeholder: "Enter text...", padding: 12, cornerRadius: 5, backgroundColor: .white)
            tf.constrainHeight(50)
            tf.layer.cornerRadius = 5
            formContainerStackView.addArrangedSubview(tf)
        })
        
        // Button UI
        formContainerStackView.addArrangedSubview(signUpButton)
        formContainerStackView.addArrangedSubview(cancelButton)
        signUpButton.constrainHeight(50)
        signUpButton.layer.cornerRadius = 5
        cancelButton.constrainHeight(50)
        cancelButton.layer.cornerRadius = 5
        
        // Blank Space UI
        let blankView2 = UIView()
        blankView2.constrainHeight(40)
        formContainerStackView.addArrangedSubview(blankView2)
        
        // Label UI
        formContainerStackView.addArrangedSubview(optionLabel)
        optionLabel.constrainHeight(50)
        
        // Social Network UI
        let buttonStackView = UIStackView(arrangedSubviews: [facebookButton, twitterButton, githubButton])
        [facebookButton, twitterButton, githubButton].forEach({
            $0.imageView?.contentMode = .scaleAspectFit
        })
        buttonStackView.constrainHeight(40)
        buttonStackView.distribution = .fillEqually
        
        formContainerStackView.addArrangedSubview(buttonStackView)
        
    }
    
    
    // MARK: - Selectors
    @objc private func handleSignUp() {
        print("Handle SignUp...")
    }
    
    @objc private func handleCancel() {
        print("Handle Cancel")
    }
    
    @objc private func handleFacebook() {
        print("Handle Facebook")
    }
    
    @objc private func handleTwitter() {
        print("Handle Twitter")
    }
    
    @objc private func handleGithub() {
        print("Handle Github")
    }
    


}

