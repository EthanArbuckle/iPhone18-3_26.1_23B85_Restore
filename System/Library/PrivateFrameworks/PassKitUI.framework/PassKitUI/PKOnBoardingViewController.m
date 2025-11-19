@interface PKOnBoardingViewController
- (PKOnBoardingViewController)initWithParentFlowController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 provisioningController:(id)a6 paymentSetupProduct:(id)a7 currentPage:(id)a8;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (PKSetupFlowControllerProtocol)parentFlowController;
- (id)nextOnboardingViewControllerWithPage:(id)a3 product:(id)a4;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)handleNotifyRequested;
- (void)preflightWithCompletion:(id)a3;
- (void)setHeroImage:(id)a3;
- (void)terminateSetupFlow;
- (void)updateForHeroImage;
- (void)viewDidLoad;
@end

@implementation PKOnBoardingViewController

- (PKOnBoardingViewController)initWithParentFlowController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 provisioningController:(id)a6 paymentSetupProduct:(id)a7 currentPage:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = PKOnBoardingViewController;
  v19 = [(PKExplanationViewController *)&v22 initWithContext:a5];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_parentFlowController, v14);
    objc_storeWeak(&v20->_setupDelegate, v15);
    objc_storeStrong(&v20->_provisioningController, a6);
    objc_storeStrong(&v20->_paymentSetupProduct, a7);
    objc_storeStrong(&v20->_currentPage, a8);
    [(PKExplanationViewController *)v20 setExplanationViewControllerDelegate:v20];
    [(PKOnBoardingViewController *)v20 setModalInPresentation:1];
  }

  return v20;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PKOnBoardingViewController;
  [(PKExplanationViewController *)&v26 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  v24 = [(PKOnBoardingViewController *)self navigationItem];
  [v24 setHidesBackButton:1];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [v3 dockView];
  v25 = [v4 footerView];
  [v3 setShowPrivacyView:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v5 = [(PKDynamicProvisioningPageContent *)self->_currentPage title];
  if (v5)
  {
    [v3 setTitleText:v5];
  }

  v6 = [(PKDynamicProvisioningPageContent *)self->_currentPage subtitle];
  if (v6)
  {
    [v3 setBodyText:v6];
  }

  v7 = [(PKDynamicProvisioningPageContent *)self->_currentPage body];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
    [v3 setAttributedSecondaryBodyText:v8];
  }

  v23 = v5;
  v21 = [(PKDynamicProvisioningPageContent *)self->_currentPage learnMore];
  v9 = [v21 buttonTitle];
  if (v9)
  {
    [v3 setBodyButtonText:v9];
  }

  v22 = v6;
  v10 = [(PKDynamicProvisioningPageContent *)self->_currentPage disclosureTitle];
  if (v10)
  {
    [v4 setButtonExplanationText:v10];
  }

  v11 = [(PKDynamicProvisioningPageContent *)self->_currentPage primaryActionTitle];
  v12 = [v4 primaryButton];
  v13 = v12;
  if (v11)
  {
    [v12 setTitle:v11 forState:0];
  }

  else
  {
    v14 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v13 setTitle:v14 forState:0];
  }

  v15 = [(PKDynamicProvisioningPageContent *)self->_currentPage secondaryActionTitle];
  if (v15)
  {
    [v3 setForceShowSetupLaterButton:1];
    v16 = [v25 setUpLaterButton];
    [v16 setTitle:v15 forState:0];
  }

  else
  {
    [v3 setForceShowSetupLaterButton:0];
  }

  v17 = PKOBKTextAlignment();
  v18 = [(PKDynamicProvisioningPageContent *)self->_currentPage contentAlignment];
  if (v17 == 4)
  {
    v19 = 2;
  }

  else
  {
    v19 = 4;
  }

  if (v19 == v18)
  {
    if (v17 == 4)
    {
      v20 = 1;
    }

    else
    {
      v20 = 4;
    }

    [v3 setTitleAlignment:v20];
    [v3 setBodyTextAlignment:v20];
  }

  [(PKOnBoardingViewController *)self updateForHeroImage];
}

- (void)setHeroImage:(id)a3
{
  objc_storeStrong(&self->_heroImage, a3);

  [(PKOnBoardingViewController *)self updateForHeroImage];
}

- (void)updateForHeroImage
{
  v4 = [(PKExplanationViewController *)self explanationView];
  if (self->_heroImage)
  {
    [v4 setImage:?];
    [v4 setTopBackgroundColor:0];
  }

  else
  {
    [v4 setImage:?];
    v3 = PKProvisioningSecondaryBackgroundColor();
    [v4 setTopBackgroundColor:v3];
  }
}

- (void)preflightWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  self->_preflightCalled = 1;
  if (self->_heroImage)
  {
    if (v4)
    {
LABEL_3:
      v5[2](v5, 1);
    }
  }

  else
  {
    v6 = [(PKDynamicProvisioningPageContent *)self->_currentPage heroImageURL];
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v9 = PKLogFacilityTypeGetObject();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKOnboardingViewController preflighting", buf, 2u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PKOnBoardingViewController_preflightWithCompletion___block_invoke;
        aBlock[3] = &unk_1E8017E48;
        aBlock[4] = self;
        v19 = v7;
        v20 = v5;
        v11 = _Block_copy(aBlock);
        v12 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
        v13 = [v12 cachedDataForURL:v8];

        if (v13)
        {
          v11[2](v11, v13);
        }

        else
        {
          v15 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__PKOnBoardingViewController_preflightWithCompletion___block_invoke_2;
          v16[3] = &unk_1E8013E70;
          v17 = v11;
          [v15 downloadFromUrl:v8 completionHandler:v16];
        }
      }

      else
      {
        if (v10)
        {
          *buf = 138412290;
          v22 = v7;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Could not create valid URL for :%@", buf, 0xCu);
        }

        if (v5)
        {
          v5[2](v5, 1);
        }
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKOnboardingViewController - nothing to preflight", buf, 2u);
      }

      if (v5)
      {
        goto LABEL_3;
      }
    }
  }
}

void __54__PKOnBoardingViewController_preflightWithCompletion___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    PKScreenScale();
    v5 = [v4 imageWithData:v3 scale:?];
    v6 = a1[4];
    v7 = *(v6 + 1128);
    *(v6 + 1128) = v5;

    v8 = *(a1[4] + 1128);
    v9 = PKLogFacilityTypeGetObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = a1[5];
        *buf = 138543362;
        v18 = v11;
        v12 = "Created image for URL: %{public}@";
LABEL_7:
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else if (v10)
    {
      v13 = a1[5];
      *buf = 138543362;
      v18 = v13;
      v12 = "Failed to create image for URL: %{public}@";
      goto LABEL_7;
    }
  }

  v14 = a1[6];
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKOnBoardingViewController_preflightWithCompletion___block_invoke_71;
    block[3] = &unk_1E8010B50;
    v16 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = [(PKDynamicProvisioningPageContent *)self->_currentPage pageNumber]+ 1;
  v5 = [(PKPaymentSetupProduct *)self->_paymentSetupProduct onboardingItems];
  if (v4 < [v5 count] && (objc_msgSend(v5, "objectAtIndex:", v4), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PKOnBoardingViewController *)self nextOnboardingViewControllerWithPage:v6 product:self->_paymentSetupProduct];
    [(PKExplanationViewController *)self showNavigationBarSpinner:1];
    v9 = [(PKOnBoardingViewController *)self navigationController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PKOnBoardingViewController_explanationViewDidSelectContinue___block_invoke;
    v15[3] = &unk_1E8011D28;
    v15[4] = self;
    [v9 pk_presentPaymentSetupViewController:v8 animated:1 completion:v15];
  }

  else
  {
    v10 = [(PKPaymentSetupProduct *)self->_paymentSetupProduct configuration];
    v11 = [v10 state];

    if (v11 >= 3)
    {
      if (v11 == 3)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "State is notify making request", v14, 2u);
        }

        [(PKOnBoardingViewController *)self handleNotifyRequested];
      }

      else if (v11 == 4)
      {
        v12 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "State is notify requested or invalid state transition - terminating setup flow", v14, 2u);
        }

        [(PKOnBoardingViewController *)self terminateSetupFlow];
      }
    }

    else
    {
      [(PKOnBoardingViewController *)self handleProductAvailable];
    }
  }
}

- (void)explanationViewDidSelectBodyButton:(id)a3
{
  v13 = [(PKDynamicProvisioningPageContent *)self->_currentPage learnMore];
  v4 = [v13 buttonURL];
  if (!v4)
  {
    v5 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKExplanationViewController *)self context]];
    v6 = [v13 title];
    [(PKPaymentMoreInformationViewController *)v5 setDetailTitle:v6];

    v7 = [v13 subtitle];
    [(PKPaymentMoreInformationViewController *)v5 setDetailSubtitle:v7];

    v8 = [v13 body];
    [(PKPaymentMoreInformationViewController *)v5 setDetailBody:v8];

    v9 = [v13 businessChatIntentName];
    [(PKPaymentMoreInformationViewController *)v5 setBusinessChatIntentName:v9];

    v10 = [v13 businessChatButtonTitle];
    [(PKPaymentMoreInformationViewController *)v5 setBusinessChatButtonTitle:v10];

    v11 = [[PKNavigationController alloc] initWithRootViewController:v5];
    v12 = [(PKOnBoardingViewController *)self navigationController];
    [v12 presentModalViewController:v11 withPaymentSetupContext:{-[PKExplanationViewController context](self, "context")}];

    goto LABEL_5;
  }

  if (PKIsURLHttpScheme())
  {
    v5 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v4];
    [(PKPaymentMoreInformationViewController *)v5 setModalPresentationStyle:2];
    [(PKOnBoardingViewController *)self presentViewController:v5 animated:1 completion:0];
LABEL_5:

    goto LABEL_7;
  }

  PKOpenURL();
LABEL_7:
}

- (void)terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v6 = [(PKOnBoardingViewController *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)handleNotifyRequested
{
  v3 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
  v4 = [v3 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:1];
    v5 = [(PKPaymentSetupProduct *)self->_paymentSetupProduct configuration];
    v6 = [v5 productIdentifier];

    v7 = objc_alloc_init(MEMORY[0x1E69B8D40]);
    [v7 addDiagnosticReason:@"Product Action"];
    [v7 setAction:*MEMORY[0x1E69BC2C8]];
    [v7 setProductIdentifier:v6];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke;
    v9[3] = &unk_1E80259B0;
    v10 = v6;
    v11 = self;
    v8 = v6;
    [v4 performProductActionRequest:v7 completion:v9];
  }

  else
  {
    [(PKOnBoardingViewController *)self terminateSetupFlow];
  }
}

void __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke_2;
  v11[3] = &unk_1E8011C98;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69B8E60]);
    v3 = [*(a1 + 32) JSONObject];
    [v2 updateWithPaymentSetupProductsResponse:v3 productsFilter:0 sectionsFilter:0];

    v4 = [v2 productForProductIdentifier:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 configuration];
      v7 = [v6 state];

      if (v7 <= 4)
      {
        if (((1 << v7) & 0xD) == 0)
        {
          v10 = *(a1 + 48);
          v11 = [v5 onboardingItems];
          v12 = [v11 firstObject];
          v13 = [v10 nextOnboardingViewControllerWithPage:v12 product:v5];

          v14 = [*(a1 + 48) navigationController];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke_87;
          v16[3] = &unk_1E8011D28;
          v16[4] = *(a1 + 48);
          [v14 pk_presentPaymentSetupViewController:v13 animated:1 completion:v16];

          goto LABEL_11;
        }

        v8 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error: Request notify me but got incorrect state. Showing error", buf, 2u);
        }
      }
    }
  }

  v2 = PKAlertForDisplayableErrorWithHandlers(*(a1 + 56), 0, 0, 0);
  v9 = *(a1 + 48);
  if (!v2)
  {
    [v9 showNavigationBarSpinner:0];
    [*(a1 + 48) terminateSetupFlow];
    goto LABEL_13;
  }

  v5 = [v9 navigationController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke_2_88;
  v15[3] = &unk_1E8010970;
  v15[4] = *(a1 + 48);
  [v5 presentViewController:v2 animated:1 completion:v15];
LABEL_11:

LABEL_13:
}

- (id)nextOnboardingViewControllerWithPage:(id)a3 product:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKOnBoardingViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_parentFlowController);
  v10 = objc_loadWeakRetained(&self->_setupDelegate);
  v11 = [(PKOnBoardingViewController *)v8 initWithParentFlowController:WeakRetained setupDelegate:v10 context:[(PKExplanationViewController *)self context] provisioningController:self->_provisioningController paymentSetupProduct:v6 currentPage:v7];

  return v11;
}

- (PKSetupFlowControllerProtocol)parentFlowController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFlowController);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end