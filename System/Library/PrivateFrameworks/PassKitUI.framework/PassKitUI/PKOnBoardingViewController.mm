@interface PKOnBoardingViewController
- (PKOnBoardingViewController)initWithParentFlowController:(id)controller setupDelegate:(id)delegate context:(int64_t)context provisioningController:(id)provisioningController paymentSetupProduct:(id)product currentPage:(id)page;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (PKSetupFlowControllerProtocol)parentFlowController;
- (id)nextOnboardingViewControllerWithPage:(id)page product:(id)product;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)handleNotifyRequested;
- (void)preflightWithCompletion:(id)completion;
- (void)setHeroImage:(id)image;
- (void)terminateSetupFlow;
- (void)updateForHeroImage;
- (void)viewDidLoad;
@end

@implementation PKOnBoardingViewController

- (PKOnBoardingViewController)initWithParentFlowController:(id)controller setupDelegate:(id)delegate context:(int64_t)context provisioningController:(id)provisioningController paymentSetupProduct:(id)product currentPage:(id)page
{
  controllerCopy = controller;
  delegateCopy = delegate;
  provisioningControllerCopy = provisioningController;
  productCopy = product;
  pageCopy = page;
  v22.receiver = self;
  v22.super_class = PKOnBoardingViewController;
  v19 = [(PKExplanationViewController *)&v22 initWithContext:context];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_parentFlowController, controllerCopy);
    objc_storeWeak(&v20->_setupDelegate, delegateCopy);
    objc_storeStrong(&v20->_provisioningController, provisioningController);
    objc_storeStrong(&v20->_paymentSetupProduct, product);
    objc_storeStrong(&v20->_currentPage, page);
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
  navigationItem = [(PKOnBoardingViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [explanationView setShowPrivacyView:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  title = [(PKDynamicProvisioningPageContent *)self->_currentPage title];
  if (title)
  {
    [explanationView setTitleText:title];
  }

  subtitle = [(PKDynamicProvisioningPageContent *)self->_currentPage subtitle];
  if (subtitle)
  {
    [explanationView setBodyText:subtitle];
  }

  body = [(PKDynamicProvisioningPageContent *)self->_currentPage body];
  if (body)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:body];
    [explanationView setAttributedSecondaryBodyText:v8];
  }

  v23 = title;
  learnMore = [(PKDynamicProvisioningPageContent *)self->_currentPage learnMore];
  buttonTitle = [learnMore buttonTitle];
  if (buttonTitle)
  {
    [explanationView setBodyButtonText:buttonTitle];
  }

  v22 = subtitle;
  disclosureTitle = [(PKDynamicProvisioningPageContent *)self->_currentPage disclosureTitle];
  if (disclosureTitle)
  {
    [dockView setButtonExplanationText:disclosureTitle];
  }

  primaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_currentPage primaryActionTitle];
  primaryButton = [dockView primaryButton];
  v13 = primaryButton;
  if (primaryActionTitle)
  {
    [primaryButton setTitle:primaryActionTitle forState:0];
  }

  else
  {
    v14 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v13 setTitle:v14 forState:0];
  }

  secondaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_currentPage secondaryActionTitle];
  if (secondaryActionTitle)
  {
    [explanationView setForceShowSetupLaterButton:1];
    setUpLaterButton = [footerView setUpLaterButton];
    [setUpLaterButton setTitle:secondaryActionTitle forState:0];
  }

  else
  {
    [explanationView setForceShowSetupLaterButton:0];
  }

  v17 = PKOBKTextAlignment();
  contentAlignment = [(PKDynamicProvisioningPageContent *)self->_currentPage contentAlignment];
  if (v17 == 4)
  {
    v19 = 2;
  }

  else
  {
    v19 = 4;
  }

  if (v19 == contentAlignment)
  {
    if (v17 == 4)
    {
      v20 = 1;
    }

    else
    {
      v20 = 4;
    }

    [explanationView setTitleAlignment:v20];
    [explanationView setBodyTextAlignment:v20];
  }

  [(PKOnBoardingViewController *)self updateForHeroImage];
}

- (void)setHeroImage:(id)image
{
  objc_storeStrong(&self->_heroImage, image);

  [(PKOnBoardingViewController *)self updateForHeroImage];
}

- (void)updateForHeroImage
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  if (self->_heroImage)
  {
    [explanationView setImage:?];
    [explanationView setTopBackgroundColor:0];
  }

  else
  {
    [explanationView setImage:?];
    v3 = PKProvisioningSecondaryBackgroundColor();
    [explanationView setTopBackgroundColor:v3];
  }
}

- (void)preflightWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  self->_preflightCalled = 1;
  if (self->_heroImage)
  {
    if (completionCopy)
    {
LABEL_3:
      v5[2](v5, 1);
    }
  }

  else
  {
    heroImageURL = [(PKDynamicProvisioningPageContent *)self->_currentPage heroImageURL];
    if (heroImageURL)
    {
      v7 = heroImageURL;
      v8 = [MEMORY[0x1E695DFF8] URLWithString:heroImageURL];
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
        mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
        v13 = [mEMORY[0x1E69B8A08] cachedDataForURL:v8];

        if (v13)
        {
          v11[2](v11, v13);
        }

        else
        {
          mEMORY[0x1E69B8A08]2 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__PKOnBoardingViewController_preflightWithCompletion___block_invoke_2;
          v16[3] = &unk_1E8013E70;
          v17 = v11;
          [mEMORY[0x1E69B8A08]2 downloadFromUrl:v8 completionHandler:v16];
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

- (void)explanationViewDidSelectContinue:(id)continue
{
  v4 = [(PKDynamicProvisioningPageContent *)self->_currentPage pageNumber]+ 1;
  onboardingItems = [(PKPaymentSetupProduct *)self->_paymentSetupProduct onboardingItems];
  if (v4 < [onboardingItems count] && (objc_msgSend(onboardingItems, "objectAtIndex:", v4), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PKOnBoardingViewController *)self nextOnboardingViewControllerWithPage:v6 product:self->_paymentSetupProduct];
    [(PKExplanationViewController *)self showNavigationBarSpinner:1];
    navigationController = [(PKOnBoardingViewController *)self navigationController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PKOnBoardingViewController_explanationViewDidSelectContinue___block_invoke;
    v15[3] = &unk_1E8011D28;
    v15[4] = self;
    [navigationController pk_presentPaymentSetupViewController:v8 animated:1 completion:v15];
  }

  else
  {
    configuration = [(PKPaymentSetupProduct *)self->_paymentSetupProduct configuration];
    state = [configuration state];

    if (state >= 3)
    {
      if (state == 3)
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "State is notify making request", v14, 2u);
        }

        [(PKOnBoardingViewController *)self handleNotifyRequested];
      }

      else if (state == 4)
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

- (void)explanationViewDidSelectBodyButton:(id)button
{
  learnMore = [(PKDynamicProvisioningPageContent *)self->_currentPage learnMore];
  buttonURL = [learnMore buttonURL];
  if (!buttonURL)
  {
    v5 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKExplanationViewController *)self context]];
    title = [learnMore title];
    [(PKPaymentMoreInformationViewController *)v5 setDetailTitle:title];

    subtitle = [learnMore subtitle];
    [(PKPaymentMoreInformationViewController *)v5 setDetailSubtitle:subtitle];

    body = [learnMore body];
    [(PKPaymentMoreInformationViewController *)v5 setDetailBody:body];

    businessChatIntentName = [learnMore businessChatIntentName];
    [(PKPaymentMoreInformationViewController *)v5 setBusinessChatIntentName:businessChatIntentName];

    businessChatButtonTitle = [learnMore businessChatButtonTitle];
    [(PKPaymentMoreInformationViewController *)v5 setBusinessChatButtonTitle:businessChatButtonTitle];

    v11 = [[PKNavigationController alloc] initWithRootViewController:v5];
    navigationController = [(PKOnBoardingViewController *)self navigationController];
    [navigationController presentModalViewController:v11 withPaymentSetupContext:{-[PKExplanationViewController context](self, "context")}];

    goto LABEL_5;
  }

  if (PKIsURLHttpScheme())
  {
    v5 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:buttonURL];
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
    presentingViewController = [(PKOnBoardingViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)handleNotifyRequested
{
  webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
  targetDevice = [webService targetDevice];

  if (objc_opt_respondsToSelector())
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:1];
    configuration = [(PKPaymentSetupProduct *)self->_paymentSetupProduct configuration];
    productIdentifier = [configuration productIdentifier];

    v7 = objc_alloc_init(MEMORY[0x1E69B8D40]);
    [v7 addDiagnosticReason:@"Product Action"];
    [v7 setAction:*MEMORY[0x1E69BC2C8]];
    [v7 setProductIdentifier:productIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PKOnBoardingViewController_handleNotifyRequested__block_invoke;
    v9[3] = &unk_1E80259B0;
    v10 = productIdentifier;
    selfCopy = self;
    v8 = productIdentifier;
    [targetDevice performProductActionRequest:v7 completion:v9];
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

- (id)nextOnboardingViewControllerWithPage:(id)page product:(id)product
{
  productCopy = product;
  pageCopy = page;
  v8 = [PKOnBoardingViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_parentFlowController);
  v10 = objc_loadWeakRetained(&self->_setupDelegate);
  v11 = [(PKOnBoardingViewController *)v8 initWithParentFlowController:WeakRetained setupDelegate:v10 context:[(PKExplanationViewController *)self context] provisioningController:self->_provisioningController paymentSetupProduct:productCopy currentPage:pageCopy];

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