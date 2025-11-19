@interface PKOrderPhysicalCardAddressConfirmationViewController
- (BOOL)_shouldShowCancelNavigationButton;
- (PKOrderPhysicalCardAddressConfirmationViewController)initWithOrderPhysicalCardController:(id)a3;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (id)_addressBodyStringWithPostalAddress:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_presentNextViewControllerOrTerminate;
- (void)_presentViewController:(id)a3;
- (void)_showDisplayableError:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateFlow;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKOrderPhysicalCardAddressConfirmationViewController

- (PKOrderPhysicalCardAddressConfirmationViewController)initWithOrderPhysicalCardController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PKOrderPhysicalCardAddressConfirmationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v15, sel_initWithContext_, [v5 paymentSetupContext]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v7->_featureIdentifier = [v5 featureIdentifier];
    v8 = [v5 shippingAddress];
    shippingAddress = v7->_shippingAddress;
    v7->_shippingAddress = v8;

    v10 = [v5 selectedArtworkOption];
    artworkOption = v7->_artworkOption;
    v7->_artworkOption = v10;

    v7->_supportsAddressChange = +[PKBusinessChatController deviceSupportsBusinessChat];
    v12 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v12 configureWithTransparentBackground];
    v13 = [(PKOrderPhysicalCardAddressConfirmationViewController *)v7 navigationItem];
    [v13 setStandardAppearance:v12];

    [(PKExplanationViewController *)v7 setExplanationViewControllerDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PKOrderPhysicalCardAddressConfirmationViewController;
  [(PKOrderPhysicalCardAddressConfirmationViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PKOrderPhysicalCardAddressConfirmationViewController;
  [(PKExplanationViewController *)&v21 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:[(PKOrderPhysicalCardAddressConfirmationViewController *)self _shouldShowCancelNavigationButton]];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  v3 = [(PKOrderPhysicalCardAddressConfirmationViewController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setDelegate:self];
  [v4 setShowPrivacyView:0];
  [v4 setForceShowSetupLaterButton:1];
  [v4 setImageIgnoresTopSafeArea:1];
  v5 = objc_alloc_init(PKOrderPhysicalCardHeroView);
  physicalCardHeroView = self->_physicalCardHeroView;
  self->_physicalCardHeroView = v5;

  v7 = [(PKOrderPhysicalCardHeroView *)self->_physicalCardHeroView artworkView];
  v8 = [(PKOrderPhysicalCardController *)self->_controller nameOnCard];
  [v7 setNameOnCard:v8];

  v9 = MEMORY[0x1E69DCAB8];
  v10 = [(PKPhysicalCardArtworkOption *)self->_artworkOption frontFaceImage];
  v11 = [v9 imageWithPKImage:v10];
  [v7 setArtworkImage:v11];

  [v4 setHeroView:self->_physicalCardHeroView];
  v12 = PKLocalizedFeatureString();
  [v4 setTitleText:v12];

  v13 = [(PKOrderPhysicalCardAddressConfirmationViewController *)self _addressBodyStringWithPostalAddress:self->_shippingAddress];
  [v4 setBodyText:v13];

  v14 = [v4 dockView];
  v15 = [v14 primaryButton];
  v16 = PKLocalizedFeatureString();
  [v15 setTitle:v16 forState:0];

  v17 = [v4 dockView];
  v18 = [v17 footerView];

  if (self->_supportsAddressChange)
  {
    v19 = [v18 setUpLaterButton];
    v20 = PKLocalizedFeatureString();
    [v19 setTitle:v20 forState:0];
  }

  else
  {
    [v18 setSetUpLaterButton:0];
  }
}

- (BOOL)_shouldShowCancelNavigationButton
{
  v2 = [(PKOrderPhysicalCardAddressConfirmationViewController *)self navigationController];
  v3 = [v2 modalPresentationStyle] != 3;

  return v3;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKOrderPhysicalCardAddressConfirmationViewController;
  [(PKOrderPhysicalCardAddressConfirmationViewController *)&v6 viewWillDisappear:a3];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (id)_addressBodyStringWithPostalAddress:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [(PKPhysicalCardArtworkOption *)self->_artworkOption minimumEstimatedShippingTime];
  v7 = [(PKPhysicalCardArtworkOption *)self->_artworkOption maximumEstimatedShippingTime];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = PKLocalizedFeatureString();
  }

  else
  {
    v10 = v7;
    v11 = [(PKPhysicalCardArtworkOption *)self->_artworkOption shippingTimeUnit];
    if (v11 > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = PKLocalizedString(&off_1E8011DE8[v11]->isa);
    }

    v19 = v6;
    v20 = v10;
    v9 = PKStringWithValidatedFormat();
  }

  [v5 appendString:{v9, v19, v20}];
  if (!self->_supportsAddressChange)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = PKLocalizedFeatureString();
    v15 = [v13 initWithFormat:@"\n%@", v14];
    [v5 appendString:v15];
  }

  if (v4)
  {
    v16 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v4 style:0];
    if (v16)
    {
      [v5 appendString:@"\n\n"];
      [v5 appendString:v16];
    }
  }

  v17 = [v5 copy];

  return v17;
}

- (void)_presentNextViewControllerOrTerminate
{
  controller = self->_controller;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__PKOrderPhysicalCardAddressConfirmationViewController__presentNextViewControllerOrTerminate__block_invoke;
  v3[3] = &unk_1E8011D00;
  v3[4] = self;
  [(PKOrderPhysicalCardController *)controller nextViewControllerWithCompletion:v3];
}

void __93__PKOrderPhysicalCardAddressConfirmationViewController__presentNextViewControllerOrTerminate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [PKAccountFlowController displayableErrorForError:v5 featureIdentifier:v6[136] genericErrorTitle:0 genericErrorMessage:0];
    [*(a1 + 32) _showDisplayableError:v7];
  }

  else if (v8)
  {
    [v6 _presentViewController:?];
  }

  else
  {
    [v6 _terminateFlow];
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 pk_paymentSetupSetHideSetupLaterButton:1];
    v6 = [(PKOrderPhysicalCardAddressConfirmationViewController *)self navigationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PKOrderPhysicalCardAddressConfirmationViewController__presentViewController___block_invoke;
    v7[3] = &unk_1E8011D28;
    v7[4] = self;
    [v6 pk_presentPaymentSetupViewController:v5 animated:1 completion:v7];
  }

  else
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    [(PKOrderPhysicalCardAddressConfirmationViewController *)self _terminateFlow];
  }
}

- (void)_terminateFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    [(PKOrderPhysicalCardAddressConfirmationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v8 = [(PKExplanationViewController *)self explanationView];
  v4 = [v8 dockView];
  v5 = [v4 primaryButton];
  [v5 setShowSpinner:v3];
  [v5 setEnabled:v3 ^ 1];
  v6 = [v4 footerView];
  v7 = [v6 setUpLaterButton];
  [v7 setEnabled:v3 ^ 1];
}

- (void)_showDisplayableError:(id)a3
{
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
  [(PKOrderPhysicalCardAddressConfirmationViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  if (!self->_inUseAssertion)
  {
    v4 = MEMORY[0x1E695FBE0];
    v5 = PKPassKitCoreBundle();
    v6 = [v4 newAssertionForBundle:v5 withReason:@"Ordering physical card"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v6;
  }

  [(PKOrderPhysicalCardAddressConfirmationViewController *)self _showSpinner:1];
  controller = self->_controller;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke;
  v9[3] = &unk_1E8011D50;
  v9[4] = self;
  [(PKOrderPhysicalCardController *)controller startOrderPhysicalCardWithCompletion:v9];
}

void __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:v7];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1136);
    *(v12 + 1136) = v11;

    [*(*(a1 + 32) + 1136) setDelegate:?];
    [*(*(a1 + 32) + 1136) _setPrivateDelegate:?];
    v14 = *(a1 + 32);
    v15 = *(v14 + 1136);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke_2;
    v17[3] = &unk_1E8011D28;
    v17[4] = v14;
    [v15 presentWithCompletion:v17];
  }

  else if (v8)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke_4;
    v16[3] = &unk_1E8010970;
    v16[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }

  else if (v9)
  {
    [*(a1 + 32) _showSpinner:0];
    [*(a1 + 32) _showDisplayableError:v10];
  }
}

void __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectContinue___block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = a3;
  if (self->_supportsAddressChange)
  {
    if (!self->_businessChatController)
    {
      v5 = objc_alloc_init(PKBusinessChatController);
      businessChatController = self->_businessChatController;
      self->_businessChatController = v5;
    }

    v7 = [PKBusinessChatPhysicalCardContext alloc];
    v8 = [(PKOrderPhysicalCardController *)self->_controller paymentPass];
    v9 = [(PKBusinessChatPhysicalCardContext *)v7 initWithPaymentPass:v8 intent:0];

    objc_initWeak(&location, self);
    v10 = self->_businessChatController;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectSetupLater___block_invoke;
    v11[3] = &unk_1E8011338;
    objc_copyWeak(&v12, &location);
    [(PKBusinessChatController *)v10 openBusinessChatWithContext:v9 completion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __91__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectSetupLater___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectSetupLater___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __91__PKOrderPhysicalCardAddressConfirmationViewController_explanationViewDidSelectSetupLater___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    if (v3)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      [WeakRetained _terminateFlow];
    }

    WeakRetained = v5;
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_paymentAuthorizationCoordinator == v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[PKOrderPhysicalCardAddressConfirmationViewController paymentAuthorizationCoordinatorDidFinish:]";
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%s %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0x16u);
    }

    paymentAuthorizationCoordinator = self->_paymentAuthorizationCoordinator;
    self->_paymentAuthorizationCoordinator = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v7[3] = &unk_1E8010A10;
    v8 = v4;
    v9 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __97__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __97__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissWithCompletion:v3];
}

void __97__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 1128) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke_3;
    block[3] = &unk_1E8010970;
    block[4] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKOrderPhysicalCardAddressConfirmationViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5
{
  v7 = a5;
  controller = self->_controller;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __131__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke;
  v10[3] = &unk_1E8011DA0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(PKOrderPhysicalCardController *)controller completeOrderPhysicalCardWithApplePayTrustSignature:a4 completion:v10];
}

void __131__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __131__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke_2;
  v10[3] = &unk_1E8011D78;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __131__PKOrderPhysicalCardAddressConfirmationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LODWORD(v2) = *(a1 + 40) == 0;
  }

  v3 = v2 ^ 1;
  v4 = [objc_alloc(MEMORY[0x1E69B8B80]) initWithStatus:v3 errors:0];
  if (v3)
  {
    if (*(a1 + 40))
    {
      [*(a1 + 48) _showDisplayableError:?];
    }
  }

  else
  {
    *(*(a1 + 48) + 1128) = 1;
  }

  (*(*(a1 + 56) + 16))();
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  artworkOption = self->_artworkOption;
  if (artworkOption)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PKOrderPhysicalCardAddressConfirmationViewController_preflightWithCompletion___block_invoke;
    v8[3] = &unk_1E8011DC8;
    v9 = v4;
    v7 = [(PKPhysicalCardArtworkOption *)artworkOption artworkImage:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

void __80__PKOrderPhysicalCardAddressConfirmationViewController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKOrderPhysicalCardAddressConfirmationViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end