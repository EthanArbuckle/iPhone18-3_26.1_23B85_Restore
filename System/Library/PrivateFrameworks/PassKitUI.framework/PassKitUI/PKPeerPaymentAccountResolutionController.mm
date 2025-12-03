@interface PKPeerPaymentAccountResolutionController
+ (BOOL)_canShowContactSupportForPass:(id)pass;
- (PKPaymentSetupDelegate)setupDelegate;
- (PKPeerPaymentAccountResolutionController)initWithAccount:(id)account webService:(id)service context:(int64_t)context delegate:(id)delegate passLibraryDataProvider:(id)provider;
- (PKPeerPaymentAccountResolutionControllerDelegate)delegate;
- (id)_contactAppleSupportAlertControllerForPass:(id)pass;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller;
- (id)_paymentWebService;
- (unint64_t)currentPeerPaymentAccountResolution;
- (void)_callSupportWithPhoneNumber:(id)number;
- (void)_dismissViewController;
- (void)_emailSupportWithEmailAddress:(id)address;
- (void)_openSupportWebsiteWithWebsiteURL:(id)l;
- (void)_peerPaymentAccountChanged:(id)changed;
- (void)_presentActivationFlowWithConfiguration:(id)configuration completion:(id)completion;
- (void)_presentContactAppleSupportAlertWithCompletion:(id)completion;
- (void)_presentFlowForAccountResolution:(unint64_t)resolution configuration:(id)configuration completion:(id)completion;
- (void)_presentIdentityVerificationWithConfiguration:(id)configuration completion:(id)completion;
- (void)_presentPeerPaymentAction:(unint64_t)action withCompletion:(id)completion;
- (void)_presentReOpenFlowWithCompletion:(id)completion;
- (void)_presentViewController:(id)controller;
- (void)dealloc;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)peerPaymentActionViewControllerDidCancel:(id)cancel;
- (void)peerPaymentActionViewControllerDidPerformAction:(id)action;
- (void)presentResolutionForCurrentAccountStateWithCompletion:(id)completion;
@end

@implementation PKPeerPaymentAccountResolutionController

- (PKPeerPaymentAccountResolutionController)initWithAccount:(id)account webService:(id)service context:(int64_t)context delegate:(id)delegate passLibraryDataProvider:(id)provider
{
  accountCopy = account;
  serviceCopy = service;
  delegateCopy = delegate;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = PKPeerPaymentAccountResolutionController;
  v17 = [(PKPeerPaymentAccountResolutionController *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, account);
    objc_storeStrong(&v18->_webService, service);
    v18->_context = context;
    v19 = objc_storeWeak(&v18->_delegate, delegateCopy);

    if (!delegateCopy)
    {
      objc_storeWeak(&v18->_delegate, v18);
    }

    objc_storeStrong(&v18->_passLibraryDataProvider, provider);
    if (!v18->_passLibraryDataProvider)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      passLibraryDataProvider = v18->_passLibraryDataProvider;
      v18->_passLibraryDataProvider = v20;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *MEMORY[0x1E69BC378];
    targetDevice = [(PKPeerPaymentWebService *)v18->_webService targetDevice];
    [defaultCenter addObserver:v18 selector:sel__peerPaymentAccountChanged_ name:v23 object:targetDevice];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentAccountResolutionController;
  [(PKPeerPaymentAccountResolutionController *)&v4 dealloc];
}

- (void)presentResolutionForCurrentAccountStateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PKPeerPaymentAccountResolutionController *)self presentFlowForAccountResolution:[(PKPeerPaymentAccountResolutionController *)self currentPeerPaymentAccountResolution] configuration:0 completion:completionCopy];
}

- (void)_presentFlowForAccountResolution:(unint64_t)resolution configuration:(id)configuration completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PKPeerPaymentAccountResolutionStateToString();
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = configurationCopy;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Presenting flow for peer payment account resolution: %@ configuration: %@.", &v12, 0x16u);
  }

  if (resolution <= 2)
  {
    if (resolution == 1)
    {
      [(PKPeerPaymentAccountResolutionController *)self _presentActivationFlowWithConfiguration:configurationCopy completion:completionCopy];
      goto LABEL_16;
    }

    if (resolution == 2)
    {
      [(PKPeerPaymentAccountResolutionController *)self _presentIdentityVerificationWithConfiguration:configurationCopy completion:completionCopy];
      goto LABEL_16;
    }
  }

  else
  {
    switch(resolution)
    {
      case 3uLL:
        [(PKPeerPaymentAccountResolutionController *)self _presentContactAppleSupportAlertWithCompletion:completionCopy];
        goto LABEL_16;
      case 4uLL:
        [(PKPeerPaymentAccountResolutionController *)self _presentReOpenFlowWithCompletion:completionCopy];
        goto LABEL_16;
      case 5uLL:
        [(PKPeerPaymentAccountResolutionController *)self _presentPeerPaymentAction:1 withCompletion:completionCopy];
        goto LABEL_16;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_16:
}

- (unint64_t)currentPeerPaymentAccountResolution
{
  v2 = [MEMORY[0x1E69B8FA0] _peerPaymentPassForAccount:self->_account passLibraryDataProvider:self->_passLibraryDataProvider];
  v3 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass();

  return v3;
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = MEMORY[0x1E69DC668];
  viewControllerCopy = viewController;
  sharedApplication = [v6 sharedApplication];
  keyWindow = [sharedApplication keyWindow];
  rootViewController = [keyWindow rootViewController];

  [rootViewController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  rootViewController = [keyWindow rootViewController];

  [rootViewController dismissViewControllerAnimated:animatedCopy completion:0];
}

+ (BOOL)_canShowContactSupportForPass:(id)pass
{
  passCopy = pass;
  v4 = PKUserInterfaceIdiom();
  v5 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
  v6 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v7 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC108]];

  v11 = (v4 & 0xFFFFFFFFFFFFFFFBLL) == 0 && v6 != 0 || v5 != 0 || v7 != 0;
  return v11;
}

- (id)_paymentWebService
{
  if (PKPaymentSetupContextIsBridge())
  {
    [getNPKCompanionAgentConnectionClass_0[0]() watchPaymentWebService];
  }

  else
  {
    [MEMORY[0x1E69B8EF8] sharedService];
  }
  v2 = ;

  return v2;
}

- (void)_presentActivationFlowWithConfiguration:(id)configuration completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  _paymentWebService = [(PKPeerPaymentAccountResolutionController *)self _paymentWebService];
  v9 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:_paymentWebService];
  v10 = [objc_alloc(MEMORY[0x1E69B8F38]) initWithPeerPaymentAccount:self->_account];
  if (configurationCopy)
  {
    currencyAmount = [configurationCopy currencyAmount];
    [v10 setAmount:currencyAmount];
    [v10 setFlowState:{objc_msgSend(configurationCopy, "registrationFlowState")}];
    senderAddress = [configurationCopy senderAddress];
    [v10 setPendingPaymentSenderAddress:senderAddress];
    [v10 setPaymentMode:{objc_msgSend(configurationCopy, "paymentMode")}];
  }

  if (v10)
  {
    objc_initWeak(location, self);
    v23[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__PKPeerPaymentAccountResolutionController__presentActivationFlowWithConfiguration_completion___block_invoke;
    v15[3] = &unk_1E80179B0;
    objc_copyWeak(&v21, location);
    v16 = v9;
    selfCopy = self;
    v18 = v10;
    v19 = configurationCopy;
    v20 = completionCopy;
    [v16 associateCredentials:v13 withCompletionHandler:v15];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Cannot present setup flow with a nil peer payment credential", location, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __95__PKPeerPaymentAccountResolutionController__presentActivationFlowWithConfiguration_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPeerPaymentAccountResolutionController__presentActivationFlowWithConfiguration_completion___block_invoke_2;
  block[3] = &unk_1E8017988;
  objc_copyWeak(&v17, (a1 + 72));
  v18 = a2;
  v13 = v5;
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = *(a1 + 40);
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v16 = *(a1 + 64);
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __95__PKPeerPaymentAccountResolutionController__presentActivationFlowWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (*(a1 + 88) == 1 && !*(a1 + 32))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v7 = [PKPeerPaymentExplanationViewController alloc];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(v9 + 24);
      v11 = *(a1 + 56);
      v12 = [*(a1 + 64) campaignAttributionReferrerIdentifier];
      v13 = [(PKPeerPaymentExplanationViewController *)v7 initWithProvisoningController:v8 setupDelegate:v9 passLibraryDataProvider:v5 context:v10 credential:v11 campaignAttributionReferrerIdentifier:v12];

      v14 = [[PKNavigationController alloc] initWithRootViewController:v13];
      [(PKNavigationController *)v14 setCustomFormSheetPresentationStyleForiPad];
      [*(a1 + 48) _presentViewController:v14];
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) description];
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Peer Payment associateCredential failed for local device with error:%@", &v15, 0xCu);
      }

      v5 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:*(a1 + 32)];
      [*(a1 + 48) _presentViewController:v5];
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

- (void)_presentIdentityVerificationWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (PKDeviceSupportsPeerPaymentIdentityVerification())
  {
    if ([configurationCopy isGraduation])
    {
      v8 = [[PKPeerPaymentGraduationExplanationViewController alloc] initWithPeerPaymentWebService:self->_webService peerPaymentAccount:self->_account passLibraryDataProvider:self->_passLibraryDataProvider setupDelegate:self context:self->_context];
      v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
      [(PKNavigationController *)v9 setModalInPresentation:1];
      [(PKNavigationController *)v9 setSupportedInterfaceOrientations:2];
      PKPaymentSetupApplyContextAppearance(self->_context, v9);
      [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v9];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      v8 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:self->_webService identityVerificationResponse:0 setupDelegate:self hideInitialSplashScreen:0 context:self->_context];
      v10 = [[PKPeerPaymentIdentityVerificationExplanationViewController alloc] initWithContext:0 setupDelegate:0 identityVerificationController:v8];
      [(PKPeerPaymentIdentityVerificationExplanationViewController *)v10 setShowSpinner:1];
      v11 = [[PKNavigationController alloc] initWithRootViewController:v10];
      [(PKNavigationController *)v11 setModalInPresentation:1];
      [(PKNavigationController *)v11 setSupportedInterfaceOrientations:2];
      PKPaymentSetupApplyContextAppearance(self->_context, v11);
      [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v11];
      v12 = objc_alloc_init(MEMORY[0x1E69B8F88]);
      context = [(PKPeerPaymentWebService *)self->_webService context];
      [v12 setDevSigned:{objc_msgSend(context, "devSigned")}];

      [v12 setVerificationContext:{objc_msgSend(configurationCopy, "verificationContext")}];
      objc_initWeak(&location, self);
      webService = self->_webService;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke;
      v17[3] = &unk_1E8017A00;
      objc_copyWeak(&v21, &location);
      v15 = v10;
      v18 = v15;
      v19 = configurationCopy;
      v16 = v11;
      v20 = v16;
      [(PKPeerPaymentWebService *)webService peerPaymentIdentityVerificationRequest:v12 completion:v17];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v8 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(0);
    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v8];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

void __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke_2;
  v9[3] = &unk_1E80179D8;
  objc_copyWeak(&v15, a1 + 7);
  v10 = a1[4];
  v11 = v5;
  v12 = v6;
  v13 = a1[5];
  v14 = a1[6];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v15);
}

void __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    [*(a1 + 32) setShowSpinner:0];
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      [v3 setVerificationContext:{objc_msgSend(*(a1 + 56), "verificationContext")}];
      v5 = [[PKPeerPaymentIdentityVerificationController alloc] initWithPeerPaymentWebService:WeakRetained[4] identityVerificationResponse:*(a1 + 40) setupDelegate:WeakRetained hideInitialSplashScreen:0 context:WeakRetained[3]];
      v7 = [(PKPeerPaymentIdentityVerificationController *)v5 firstViewController];
      v8 = *(a1 + 64);
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v8 setViewControllers:v9];
    }

    else
    {
      v5 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke_3;
      v10[3] = &unk_1E8010970;
      v11 = *(a1 + 64);
      v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, v10, 0);
      [*(a1 + 64) presentViewController:v6 animated:1 completion:0];

      v7 = v11;
    }
  }
}

void __101__PKPeerPaymentAccountResolutionController__presentIdentityVerificationWithConfiguration_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (id)_contactAppleSupportAlertControllerForPass:(id)pass
{
  passCopy = pass;
  if ([objc_opt_class() _canShowContactSupportForPass:passCopy])
  {
    v5 = PKUserInterfaceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
    v6 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
    v7 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    v8 = [passCopy localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
    organizationName = [passCopy organizationName];
    v10 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
    v11 = 0;
    if (v5 && v7)
    {
      v11 = PKLocalizedPaymentString(&cfstr_ContactIssuerB.isa, &cfstr_12.isa, organizationName, v7);
    }

    v27 = v10;
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v11 preferredStyle:v5 != 0];
    if (v7)
    {
      v13 = v5 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = MEMORY[0x1E69DC648];
      v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_3.isa);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __87__PKPeerPaymentAccountResolutionController__contactAppleSupportAlertControllerForPass___block_invoke;
      v32[3] = &unk_1E8011310;
      v32[4] = self;
      v33 = v7;
      v16 = [v14 actionWithTitle:v15 style:0 handler:v32];
      [v12 addAction:v16];
    }

    if (v6)
    {
      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_4.isa);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __87__PKPeerPaymentAccountResolutionController__contactAppleSupportAlertControllerForPass___block_invoke_2;
      v30[3] = &unk_1E8011310;
      v30[4] = self;
      v31 = v6;
      v19 = [v17 actionWithTitle:v18 style:0 handler:v30];
      [v12 addAction:v19];
    }

    if (v8)
    {
      v20 = MEMORY[0x1E69DC648];
      v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_5.isa);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __87__PKPeerPaymentAccountResolutionController__contactAppleSupportAlertControllerForPass___block_invoke_3;
      v28[3] = &unk_1E8011310;
      v28[4] = self;
      v29 = v8;
      v22 = [v20 actionWithTitle:v21 style:0 handler:v28];
      [v12 addAction:v22];
    }

    v23 = MEMORY[0x1E69DC648];
    v24 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_6.isa);
    v25 = [v23 actionWithTitle:v24 style:1 handler:0];
    [v12 addAction:v25];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_presentContactAppleSupportAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  _peerPaymentPass = [(PKPeerPaymentAccountResolutionController *)self _peerPaymentPass];
  v5 = [(PKPeerPaymentAccountResolutionController *)self _contactAppleSupportAlertControllerForPass:_peerPaymentPass];

  if (v5)
  {
    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v5];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v5 != 0);
  }
}

- (void)_presentReOpenFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8017AA0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (self->_context == 3)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc.isa);
    v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_0.isa);
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = MEMORY[0x1E69DC648];
    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_1.isa);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_3;
    v24[3] = &unk_1E8011248;
    v13 = completionCopy;
    v25 = v13;
    v14 = [v11 actionWithTitle:v12 style:1 handler:v24];
    [v10 addAction:v14];

    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_2.isa);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_4;
    v21 = &unk_1E8017AC8;
    v22 = v6;
    v23 = v13;
    v17 = [v15 actionWithTitle:v16 style:0 handler:&v18];
    [v10 addAction:{v17, v18, v19, v20, v21}];

    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v10];
  }

  else
  {
    (*(v5 + 2))(v5, completionCopy);
  }
}

void __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__17;
  v10[4] = __Block_byref_object_dispose__17;
  v11 = [*(*(a1 + 32) + 48) cloudStoreZoneNames];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_62;
  v7[3] = &unk_1E8017A78;
  v9 = v10;
  v7[4] = v4;
  v6 = v3;
  v8 = v6;
  [v5 peerPaymentReOpenAccountWithCompletion:v7];

  _Block_object_dispose(v10, 8);
}

void __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_62(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2;
  block[3] = &unk_1E8017A50;
  v12 = a2;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Reseting cloud store container for zone names %@...", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E69B86F8]);
    v5 = PKCurrentCloudStoreApplePayContainerName();
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_64;
    v15[3] = &unk_1E8017A28;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    [v4 resetContainerWithIdentifier:v5 zoneNames:v6 completion:v15];
  }

  else
  {
    v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 40)];
    v7 = PKTitleForDisplayableError();
    v8 = MEMORY[0x1BFB42D10](v4);
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2_76;
    v13[3] = &unk_1E8011248;
    v14 = *(a1 + 48);
    v12 = [v10 actionWithTitle:v11 style:0 handler:v13];
    [v9 addAction:v12];

    [*(a1 + 32) _presentViewController:v9];
  }
}

void __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_64(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2_65;
  block[3] = &unk_1E80150A8;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2_65(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Cloud store reset succuessful. Presenting activation flow.", buf, 2u);
    }

    [*(a1 + 32) _presentActivationFlowWithCompletion:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error reseting the cloud store container.", buf, 2u);
    }

    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_1.isa);
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct_2.isa);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_75;
    v11[3] = &unk_1E8011248;
    v12 = *(a1 + 40);
    v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
    [v7 addAction:v10];

    [*(a1 + 32) _presentViewController:v7];
  }
}

uint64_t __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_75(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_2_76(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __77__PKPeerPaymentAccountResolutionController__presentReOpenFlowWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_presentPeerPaymentAction:(unint64_t)action withCompletion:(id)completion
{
  completionCopy = completion;
  _peerPaymentPass = [(PKPeerPaymentAccountResolutionController *)self _peerPaymentPass];
  v22 = 0;
  objc_initWeak(&location, self);
  account = self->_account;
  v20 = 0;
  v9 = [PKPeerPaymentActionController canPerformPeerPaymentAction:action account:account unableReason:&v22 displayableError:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = [PKPeerPaymentActionViewController peerPaymentActionViewControllerForAction:action paymentPass:_peerPaymentPass webService:self->_webService passLibraryDataProvider:self->_passLibraryDataProvider context:self->_context];
    [v11 setDelegate:self];
    objc_storeStrong(&self->_peerPaymentActionViewController, v11);
    v12 = [[PKNavigationController alloc] initWithRootViewController:v11];
    [(PKNavigationController *)v12 setSupportedInterfaceOrientations:2];
    if ([(UIViewController *)v12 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v12 setModalPresentationStyle:2];
    }

    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v12];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v13 = v22;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __85__PKPeerPaymentAccountResolutionController__presentPeerPaymentAction_withCompletion___block_invoke;
    v18 = &unk_1E8010998;
    objc_copyWeak(&v19, &location);
    v14 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v13 displayableError:v10 addCardActionHandler:&v15];
    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v14, v15, v16, v17, v18];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);
}

void __85__PKPeerPaymentAccountResolutionController__presentPeerPaymentAction_withCompletion___block_invoke(uint64_t a1)
{
  v3 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentViewController:v3];
}

- (void)peerPaymentActionViewControllerDidCancel:(id)cancel
{
  [(PKPeerPaymentAccountResolutionController *)self _dismissViewController];
  peerPaymentActionViewController = self->_peerPaymentActionViewController;
  self->_peerPaymentActionViewController = 0;
}

- (void)peerPaymentActionViewControllerDidPerformAction:(id)action
{
  [(PKPeerPaymentAccountResolutionController *)self _dismissViewController];
  peerPaymentActionViewController = self->_peerPaymentActionViewController;
  self->_peerPaymentActionViewController = 0;
}

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:controllerCopy context:self->_context];

  [(PKPaymentSetupNavigationController *)v5 setPaymentSetupMode:1];
  [(PKNavigationController *)v5 setCustomFormSheetPresentationStyleForiPad];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [(PKPaymentSetupNavigationController *)v5 setSetupDelegate:WeakRetained];

  [(PKPaymentSetupNavigationController *)v5 setAllowsManualEntry:0];

  return v5;
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentAccountResolutionController:self requestsPresentViewController:controllerCopy animated:1];
}

- (void)_dismissViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentAccountResolutionController:self requestsDismissCurrentViewControllerAnimated:1];
}

- (void)_peerPaymentAccountChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPeerPaymentAccountResolutionController__peerPaymentAccountChanged___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__PKPeerPaymentAccountResolutionController__peerPaymentAccountChanged___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) targetDevice];
  v3 = [v2 account];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);

  return [v7 setAccount:v8];
}

- (void)_emailSupportWithEmailAddress:(id)address
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = getMFMailComposeViewControllerClass[0];
  addressCopy = address;
  if ([(objc_class *)v4() canSendMail])
  {
    v6 = objc_alloc_init(getMFMailComposeViewControllerClass[0]());
    [v6 setMailComposeDelegate:self];
    v11[0] = addressCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    [v6 setToRecipients:v7];
    [(PKPeerPaymentAccountResolutionController *)self _presentViewController:v6];
  }

  else
  {
    v8 = MEMORY[0x1E695DFF8];
    addressCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", addressCopy];
    v9 = [v8 URLWithString:?];

    PKOpenURL();
  }
}

- (void)_callSupportWithPhoneNumber:(id)number
{
  v3 = PKTelephoneURLFromPhoneNumber();
  PKOpenURL();
}

- (void)_openSupportWebsiteWithWebsiteURL:(id)l
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:l];
  if (v3)
  {
    v4 = v3;
    PKOpenURL();
    v3 = v4;
  }
}

- (PKPeerPaymentAccountResolutionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentSetupDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end