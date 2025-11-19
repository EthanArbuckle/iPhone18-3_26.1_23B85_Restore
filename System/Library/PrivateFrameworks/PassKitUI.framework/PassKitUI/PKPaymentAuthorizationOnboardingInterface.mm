@interface PKPaymentAuthorizationOnboardingInterface
- (PKPaymentAuthorizationOnboardingInterface)initWithOnboardingContext:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4 configuration:(id)a5 delegate:(id)a6;
- (PKPaymentProvisioningController)provisioningController;
- (id)_createBindRequestForFeatureApplication:(id)a3;
- (id)_createPrimaryViewController;
- (id)_setupErrorUserInfoWithBindToken:(id)a3;
- (id)applyWelcomeCardExperiment;
- (void)_bindFeatureApplication:(id)a3 completion:(id)a4;
- (void)_getAugmentedProduct:(id)a3;
- (void)_getProduct:(id)a3;
- (void)_loadFeatureOnboardingViewControllerForProduct:(id)a3 completion:(id)a4;
- (void)loadingViewControllerDidCancel:(id)a3;
- (void)viewController:(id)a3 canProceedWithInstallment:(BOOL)a4 featureApplication:(id)a5 completion:(id)a6;
- (void)viewControllerDidCancelSetupFlow:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
- (void)willAppear;
@end

@implementation PKPaymentAuthorizationOnboardingInterface

- (id)applyWelcomeCardExperiment
{
  applyWelcomeCardExperiment = self->_applyWelcomeCardExperiment;
  if (!applyWelcomeCardExperiment)
  {
    if (self->_feature == 2)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B8590]);
      v5 = self->_applyWelcomeCardExperiment;
      self->_applyWelcomeCardExperiment = v4;

      applyWelcomeCardExperiment = self->_applyWelcomeCardExperiment;
    }

    else
    {
      applyWelcomeCardExperiment = 0;
    }
  }

  v6 = applyWelcomeCardExperiment;

  return v6;
}

- (PKPaymentProvisioningController)provisioningController
{
  provisioningController = self->_provisioningController;
  if (!provisioningController)
  {
    v4 = objc_alloc(MEMORY[0x1E69B8D48]);
    v5 = [MEMORY[0x1E69B8EF8] sharedService];
    v6 = [v4 initWithWebService:v5];
    v7 = self->_provisioningController;
    self->_provisioningController = v6;

    v8 = self->_provisioningController;
    v9 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration request];
    v10 = [v9 installmentConfiguration];
    v11 = [v10 referrerIdentifier];
    [(PKPaymentProvisioningController *)v8 setReferrerIdentifier:v11];

    v12 = self->_provisioningController;
    v13 = MEMORY[0x1E695DFD8];
    v14 = PKFeatureIdentifierToString();
    v15 = [v13 setWithObject:v14];
    [(PKPaymentProvisioningController *)v12 setAllowedFeatureIdentifiers:v15];

    provisioningController = self->_provisioningController;
  }

  return provisioningController;
}

- (PKPaymentAuthorizationOnboardingInterface)initWithOnboardingContext:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4 configuration:(id)a5 delegate:(id)a6
{
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = PKPaymentAuthorizationOnboardingInterface;
  v13 = [(PKPaymentAuthorizationOnboardingInterface *)&v21 init];
  v14 = v13;
  if (v13)
  {
    v13->_onboardingContext = a3;
    objc_storeStrong(&v13->_configuration, a5);
    v14->_supportedInterfaceOrientations = a4;
    objc_storeWeak(&v14->_delegate, v12);
    v15 = [v11 request];
    v16 = [v15 installmentConfiguration];
    [v16 feature];
    v14->_feature = PKFeatureIdentifierFromPaymentSetupFeatureType();

    if (!v14->_feature)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v17 = [(PKPaymentAuthorizationOnboardingInterface *)v14 _createPrimaryViewController];
    primaryViewController = v14->_primaryViewController;
    v14->_primaryViewController = v17;
  }

  v19 = v14;
LABEL_6:

  return v19;
}

- (id)_createPrimaryViewController
{
  v3 = [[PKLoadingViewController alloc] initWithDelegate:self];
  v4 = [[PKNavigationController alloc] initWithRootViewController:v3];
  [(PKNavigationController *)v4 setSupportedInterfaceOrientations:self->_supportedInterfaceOrientations];
  if ([(UIViewController *)v3 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v4 setModalPresentationStyle:16];
    v5 = [(PKNavigationController *)v4 view];
    v6 = [v5 layer];

    [v6 setMasksToBounds:1];
    [v6 setCornerRadius:6.0];
  }

  else
  {
    [(PKNavigationController *)v4 setModalPresentationStyle:3];
  }

  return v4;
}

- (void)willAppear
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke;
  v2[3] = &unk_1E8015120;
  v2[4] = self;
  [(PKPaymentAuthorizationOnboardingInterface *)self _getProduct:v2];
}

void __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke_18;
    v10[3] = &unk_1E80150F8;
    v6 = v3;
    v7 = *(a1 + 32);
    v11 = v6;
    v12 = v7;
    [v5 _getAugmentedProduct:v10];
    v8 = v11;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Couldn't get payment setup product. Dismissing payment authorization.", buf, 2u);
    }

    v8 = [*(*(a1 + 32) + 16) presenter];
    [v8 dismissWithReason:1 completion:0];
  }
}

void __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) augmentWithProduct:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Couldn't get augmented product. Continuining without augmenting.", buf, 2u);
    }
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke_19;
  v7[3] = &unk_1E80150D0;
  v7[4] = v5;
  [v5 _loadFeatureOnboardingViewControllerForProduct:v6 completion:v7];
}

void __55__PKPaymentAuthorizationOnboardingInterface_willAppear__block_invoke_19(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 40);
  v8 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v3 setViewControllers:v6 animated:{0, v8, v9}];

  v7 = [*(*(a1 + 32) + 40) presentationController];
  [v7 setDelegate:v5];
}

- (void)_getProduct:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationOnboardingInterface *)self provisioningController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKPaymentAuthorizationOnboardingInterface__getProduct___block_invoke;
  v7[3] = &unk_1E8015170;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 preflightWithCompletion:v7];
}

void __57__PKPaymentAuthorizationOnboardingInterface__getProduct___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentAuthorizationOnboardingInterface__getProduct___block_invoke_2;
  block[3] = &unk_1E8015148;
  v6 = a2;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKPaymentAuthorizationOnboardingInterface__getProduct___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) provisioningController];
    v6 = [v2 paymentSetupProductModel];

    v3 = [v6 productsForFeatureIdentifier:*(*(a1 + 32) + 48)];
    v4 = [v3 firstObject];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)_getAugmentedProduct:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "request:augmentedProduct", "", buf, 2u);
    }
  }

  v8 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration request];
  v9 = [(PKPaymentAuthorizationOnboardingInterface *)self applyWelcomeCardExperiment];
  v10 = [MEMORY[0x1E69B8DB8] paymentService];
  v11 = [v8 installmentConfiguration];
  v12 = [v9 experimentDetails];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKPaymentAuthorizationOnboardingInterface__getAugmentedProduct___block_invoke;
  v14[3] = &unk_1E8015198;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v10 augmentedProductForInstallmentConfiguration:v11 experimentDetails:v12 withCompletion:v14];
}

void __66__PKPaymentAuthorizationOnboardingInterface__getAugmentedProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKPaymentAuthorizationOnboardingInterface__getAugmentedProduct___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__PKPaymentAuthorizationOnboardingInterface__getAugmentedProduct___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) product];
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_signpost_id_make_with_pointer(v3, *(a1 + 40));
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v3, OS_SIGNPOST_INTERVAL_END, v5, "request:augmentedProduct", "", v6, 2u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_loadFeatureOnboardingViewControllerForProduct:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKFeatureOnBoardingViewController alloc];
  onboardingContext = self->_onboardingContext;
  feature = self->_feature;
  v11 = [(PKPaymentAuthorizationOnboardingInterface *)self provisioningController];
  v12 = [v7 onboardingItems];
  v13 = [v12 firstObject];
  v14 = [(PKFeatureOnBoardingViewController *)v8 initWithParentFlowController:0 setupDelegate:self setupContext:8 onboardingContext:onboardingContext featureIdentifier:feature provisioningController:v11 paymentSetupProduct:v7 currentPage:v13];

  v15 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration request];
  v16 = [v15 installmentConfiguration];
  [(PKFeatureOnBoardingViewController *)v14 setInstallmentConfiguration:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__PKPaymentAuthorizationOnboardingInterface__loadFeatureOnboardingViewControllerForProduct_completion___block_invoke;
  v19[3] = &unk_1E80109C0;
  v20 = v14;
  v21 = v6;
  v17 = v14;
  v18 = v6;
  [(PKFeatureOnBoardingViewController *)v17 preflightWithCompletion:v19];
}

void __103__PKPaymentAuthorizationOnboardingInterface__loadFeatureOnboardingViewControllerForProduct_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __103__PKPaymentAuthorizationOnboardingInterface__loadFeatureOnboardingViewControllerForProduct_completion___block_invoke_2;
  v2[3] = &unk_1E8010E20;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)loadingViewControllerDidCancel:(id)a3
{
  v3 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration presenter];
  [v3 dismissWithReason:3 completion:0];
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentAuthorizationOnboardingDidFinishWithError:self->_setupError];
}

- (void)viewController:(id)a3 canProceedWithInstallment:(BOOL)a4 featureApplication:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v8)
  {
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Cannot proceed with installment authorization", buf, 2u);
    }

    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __116__PKPaymentAuthorizationOnboardingInterface_viewController_canProceedWithInstallment_featureApplication_completion___block_invoke;
    v15[3] = &unk_1E80151C0;
    objc_copyWeak(&v17, buf);
    v16 = v13;
    [(PKPaymentAuthorizationOnboardingInterface *)self _bindFeatureApplication:v11 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __116__PKPaymentAuthorizationOnboardingInterface_viewController_canProceedWithInstallment_featureApplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E69BBBC8];
    v7 = [WeakRetained _setupErrorUserInfoWithBindToken:v10];
    v8 = [v5 errorWithDomain:v6 code:-2016 userInfo:v7];
    [v4 setSetupError:v8];

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

- (id)_setupErrorUserInfoWithBindToken:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = *MEMORY[0x1E69BC078];
    v8[0] = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_bindFeatureApplication:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentAuthorizationOnboardingInterface *)self _createBindRequestForFeatureApplication:a3];
  v8 = [MEMORY[0x1E69B8EF8] sharedService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentAuthorizationOnboardingInterface__bindFeatureApplication_completion___block_invoke;
  v10[3] = &unk_1E80151E8;
  v11 = v6;
  v9 = v6;
  [v8 performInstallmentBindWithRequest:v7 completion:v10];
}

void __80__PKPaymentAuthorizationOnboardingInterface__bindFeatureApplication_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Installment bind error: %@", &v10, 0xCu);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 bindToken];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_createBindRequestForFeatureApplication:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration request];
  v6 = objc_alloc_init(MEMORY[0x1E69B84B8]);
  v7 = [v4 applicationIdentifier];
  [v6 setApplicationIdentifier:v7];

  v8 = [v5 installmentConfiguration];
  v9 = [v8 bindingTotalAmount];
  [v6 setBindingAmount:v9];

  v10 = [v5 merchantIdentifier];
  if (v10)
  {
    [v6 setMerchantIdentifier:v10];
  }

  else
  {
    v11 = [v5 installmentConfiguration];
    v12 = [v11 installmentMerchantIdentifier];
    [v6 setMerchantIdentifier:v12];
  }

  v13 = [v4 applicationBaseURL];
  [v6 setBaseURL:v13];

  return v6;
}

- (void)viewControllerDidCancelSetupFlow:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationOnboardingInterface (%{public}p): Dismissing because setup was cancelled", &v6, 0xCu);
  }

  v5 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration presenter];
  [v5 dismissWithReason:3 completion:0];
}

@end