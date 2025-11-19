@interface PMAuthorizationViewController
- (ASAuthorizationViewControllerDelegate)delegate;
- (BOOL)_shouldPresentSignInWithAppleForkingAlertForLoginChoice:(id)a3;
- (PMAuthorizationViewController)initWithPresentationContext:(id)a3 activity:(id)a4;
- (id)_cableClientViewControllerWithLoginChoice:(id)a3;
- (id)_controllerForCABLEAuthenticatorError:(id)a3;
- (id)_presentationContextControllerTitle;
- (id)_securityKeyRequestViewController;
- (id)_setUpContainerViewControllerWithCredentialRequestViewController:(id)a3;
- (id)_setUpInitialViewController;
- (id)_titleBarButtonItem;
- (void)_cancelButtonSelected:(id)a3;
- (void)_enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice:(id)a3;
- (void)_enableBluetoothAndShowCABLEConnectingViewController;
- (void)_presentManualPasswordEntryInterface;
- (void)_presentNewPINEntryInterface;
- (void)_presentPINEntryInterface;
- (void)_presentSignInWithAppleForkingAlertWithContinueHandler:(id)a3 cancelHandler:(id)a4;
- (void)_pushActivateSecurityKeyAgainViewController;
- (void)_pushCABLEAuthenticatingViewController;
- (void)_pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:(id)a3;
- (void)_pushCABLEClientViewControllerForCABLELoginChoice:(id)a3;
- (void)_pushCABLEConnectingViewController;
- (void)_pushPlatformKeyViewControllerWithSubtitle:(id)a3;
- (void)_pushSecurityKeyViewController;
- (void)_pushSecurityKeyViewController:(id)a3;
- (void)_pushSecurityKeyViewControllerWithError:(int64_t)a3;
- (void)_showCABLEAuthenticatorError:(id)a3;
- (void)_showEnableBluetoothViewControllerForCABLEAuthenticator;
- (void)_showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:(id)a3;
- (void)_startCABLEAuthenticator;
- (void)_startCABLEAuthenticatorOnInitialPresentationIfNeeded;
- (void)_startCABLEClientForSingleLoginChoiceIfNeeded;
- (void)_startCABLEClientWithLoginChoice:(id)a3;
- (void)passwordAuthenticationViewController:(id)a3 completedWithManuallyEnteredPasswordCredential:(id)a4;
- (void)passwordAuthenticationViewController:(id)a3 completedWithUserEnteredPIN:(id)a4;
- (void)performConditionalRegistrationIfPossible;
- (void)presentNewPINEntryInterface;
- (void)presentPINEntryInterface;
- (void)pushOrUpdateBasicPaneViewControllerWithError:(int64_t)a3 overrideUserVisibleErrorMessage:(id)a4;
- (void)requestPaneViewController:(id)a3 didRequestCredentialForLoginChoice:(id)a4 authenticatedContext:(id)a5 completionHandler:(id)a6;
- (void)requestPaneViewController:(id)a3 dismissWithCredential:(id)a4 error:(id)a5;
- (void)requestPaneViewControllerNeedsReload:(id)a3;
- (void)requestPaneViewControllerStartCABLEAuthentication:(id)a3;
- (void)updateInterfaceWithLoginChoices:(id)a3;
@end

@implementation PMAuthorizationViewController

- (PMAuthorizationViewController)initWithPresentationContext:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PMAuthorizationViewController;
  v9 = [(PMAuthorizationViewController *)&v18 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentationContext, a3);
    objc_storeStrong(&v10->_authorizationActivity, a4);
    v11 = objc_alloc_init(MEMORY[0x277D54D00]);
    wirelessSettingsController = v10->_wirelessSettingsController;
    v10->_wirelessSettingsController = v11;

    v10->_biometricsEnabled = [MEMORY[0x277CF0470] isBiometricAuthenticationAvailable];
    v13 = [MEMORY[0x277D49A50] sharedMonitor];
    if ([v13 isKeychainSyncEnabled])
    {
      v14 = [(ASCAuthorizationPresentationContext *)v10->_presentationContext iCloudKeychainPasskeyLoginChoiceCount];

      if (v14)
      {
        v15 = [(ASCAuthorizationPresentationContext *)v10->_presentationContext externalPasskeyLoginChoiceCount]!= 0;
LABEL_7:
        v10->_hasInternalAndExternalPasskeyLoginChoices = v15;
        v16 = v10;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (void)updateInterfaceWithLoginChoices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(ASCAuthorizationPresentationContext *)self->_presentationContext updateLoginChoices:v4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_4;
    block[3] = &unk_27831C9D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global);
  }
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_cold_1();
  }
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _initialViewControllerForPresentationContext:*(*(a1 + 32) + 992) expandingOtherLoginChoices:1];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v2)
  {
    [v2 setDelegate:v4];
    v5 = *(*(a1 + 32) + 1000);
    v8[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v5 setViewControllers:v6 animated:1];
  }

  else
  {
    os_activity_apply(*(v4 + 1008), &__block_literal_global_6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_2_cold_1();
  }
}

- (void)presentPINEntryInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController_presentPINEntryInterface__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)presentNewPINEntryInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PMAuthorizationViewController_presentNewPINEntryInterface__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)pushOrUpdateBasicPaneViewControllerWithError:(int64_t)a3 overrideUserVisibleErrorMessage:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke;
  aBlock[3] = &unk_27831CA28;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_3;
  v11[3] = &unk_27831CA78;
  v11[4] = self;
  v8 = _Block_copy(v11);
  v9 = v8;
  if (a3 <= 0x10)
  {
    if (((1 << a3) & 0x20C0) != 0)
    {
      v10 = descriptionForErrorCode();
      (v9)[2](v9, v10);
    }

    else if (((1 << a3) & 0x30) != 0)
    {
      v7[2](v7, a3);
    }

    else if (a3 == 16)
    {
      (*(v8 + 2))(v8, v6);
    }
  }
}

void __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_2;
  v2[3] = &unk_27831CA00;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_4;
  v5[3] = &unk_27831CA50;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)performConditionalRegistrationIfPossible
{
  v3 = [(PMAuthorizationViewController *)self _initialViewControllerForPresentationContext:self->_presentationContext];
  conditionalRegistrationViewController = self->_conditionalRegistrationViewController;
  self->_conditionalRegistrationViewController = v3;

  [(ASCredentialPickerViewControllerProtocol *)self->_conditionalRegistrationViewController setDelegate:self];
  v5 = self->_conditionalRegistrationViewController;

  [(ASCredentialPickerViewControllerProtocol *)v5 performConditionalRegistrationIfPossible];
}

- (id)_presentationContextControllerTitle
{
  v3 = [(ASCAuthorizationPresentationContext *)self->_presentationContext overrideHeader];

  presentationContext = self->_presentationContext;
  if (v3)
  {
    v5 = [(ASCAuthorizationPresentationContext *)presentationContext overrideHeader];
  }

  else if ([(ASCAuthorizationPresentationContext *)presentationContext requestTypes]== 2)
  {
    [MEMORY[0x277D49A08] isAppleAccountBrandingEnabled];
    v5 = _WBSLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __48__PMAuthorizationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PMAuthorizationViewController_viewWillAppear___block_invoke_2;
  v4[3] = &unk_27831C9D8;
  v4[4] = v2;
  return [v2 presentViewController:v1 animated:1 completion:v4];
}

uint64_t __48__PMAuthorizationViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  [WeakRetained authorizationViewControllerDidCompleteInitialPresentation:*(a1 + 32)];

  [*(a1 + 32) _startCABLEClientForSingleLoginChoiceIfNeeded];
  v3 = *(a1 + 32);

  return [v3 _startCABLEAuthenticatorOnInitialPresentationIfNeeded];
}

void __48__PMAuthorizationViewController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBA8A8] code:1009 userInfo:0];
  [WeakRetained authorizationViewController:v2 didCompleteWithCredential:0 error:v3];
}

- (id)_titleBarButtonItem
{
  v3 = [(PMAuthorizationViewController *)self _presentationContextControllerTitle];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:20.0 weight:*MEMORY[0x277D74420]];
    [v5 setFont:v6];

    v7 = [(PMAuthorizationViewController *)self _presentationContextControllerTitle];
    [v5 setText:v7];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
    [v8 setHidesSharedBackground:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_setUpInitialViewController
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(PMAuthorizationViewController *)self _initialViewControllerForPresentationContext:self->_presentationContext];
  if (v3)
  {
    v4 = [(PMAuthorizationViewController *)self _setUpContainerViewControllerWithCredentialRequestViewController:v3];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_24);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CF0400];
    v12 = *MEMORY[0x277CCA470];
    v13[0] = @"No view controller specified for request.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:v7 code:1 userInfo:v8];
    [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v9];

    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

void __60__PMAuthorizationViewController__setUpInitialViewController__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __60__PMAuthorizationViewController__setUpInitialViewController__block_invoke_cold_1();
  }
}

uint64_t __105__PMAuthorizationViewController__initialViewControllerForPresentationContext_expandingOtherLoginChoices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind];
  if (v3 == 7)
  {
    v4 = 0;
  }

  else if (v3 == 2)
  {
    v4 = [v2 isExternal];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_securityKeyRequestViewController
{
  v2 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext];

  return v2;
}

- (void)_presentPINEntryInterface
{
  self->_isPresentingNewPINEntryView = 0;
  v3 = self->_pinEntryAttempt + 1;
  self->_pinEntryAttempt = v3;
  if (v3 >= 2 && ([(ASNavigationController *)self->_navigationController topViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v9 = [(ASNavigationController *)self->_navigationController topViewController];
    v6 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:1 presentationContext:self->_presentationContext];
    [v9 updateWithConfiguration:v6];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:0 presentationContext:self->_presentationContext];
    v6 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v9];
    [v6 setDelegate:self];
    [v6 setAuthenticationDelegate:self];
    v7 = [(PMAuthorizationViewController *)self _titleBarButtonItem];
    v8 = [v6 as_navigationItem];
    [v8 setLeftBarButtonItem:v7];

    [(ASNavigationController *)self->_navigationController pushViewController:v6 animated:0];
  }
}

- (void)_presentNewPINEntryInterface
{
  v11[1] = *MEMORY[0x277D85DE8];
  self->_isPresentingNewPINEntryView = 1;
  v3 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:2 presentationContext:self->_presentationContext];
  v4 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v3];
  [v4 setDelegate:self];
  [v4 setAuthenticationDelegate:self];
  v5 = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  v6 = [v4 as_navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [v4 cancelBarButtonItem];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v4 as_navigationItem];
  [v9 setRightBarButtonItems:v8];

  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_presentManualPasswordEntryInterface
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:3 presentationContext:self->_presentationContext];
  v4 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v3];
  [v4 setDelegate:self];
  [v4 setAuthenticationDelegate:self];
  v5 = [v4 cancelBarButtonItem];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 as_navigationItem];
  [v7 setRightBarButtonItems:v6];

  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_presentSignInWithAppleForkingAlertWithContinueHandler:(id)a3 cancelHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = _WBSLocalizedString();
  v8 = MEMORY[0x277CCACA8];
  v9 = _WBSLocalizedString();
  v10 = [(ASCAuthorizationPresentationContext *)self->_presentationContext serviceName];
  v11 = [v8 localizedStringWithFormat:v9, v10];

  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v21 message:v11 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__PMAuthorizationViewController__presentSignInWithAppleForkingAlertWithContinueHandler_cancelHandler___block_invoke;
  v24[3] = &unk_27831CAE8;
  v25 = v6;
  v16 = v6;
  v17 = [v15 actionWithTitle:v12 style:0 handler:v24];
  v18 = MEMORY[0x277D750F8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__PMAuthorizationViewController__presentSignInWithAppleForkingAlertWithContinueHandler_cancelHandler___block_invoke_2;
  v22[3] = &unk_27831CAE8;
  v23 = v7;
  v19 = v7;
  v20 = [v18 actionWithTitle:v13 style:0 handler:v22];
  [v14 addAction:v20];
  [v14 addAction:v17];
  [(PMAuthorizationViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_cancelButtonSelected:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v4];
}

- (id)_setUpContainerViewControllerWithCredentialRequestViewController:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [objc_alloc(MEMORY[0x277CBA990]) initWithRootViewController:v4];

  navigationController = self->_navigationController;
  self->_navigationController = v5;

  v7 = [objc_alloc(MEMORY[0x277CBA950]) initWithRootViewController:self->_navigationController];
  [v7 setPaneDelegate:self];
  [(ASNavigationController *)self->_navigationController setDelegate:v7];

  return v7;
}

- (void)_pushSecurityKeyViewController
{
  v3 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext];
  [(PMAuthorizationViewController *)self _pushSecurityKeyViewController:v3];
}

- (void)_pushSecurityKeyViewControllerWithError:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext presentingError:a3];
  [(PMAuthorizationViewController *)self _pushSecurityKeyViewController:v4];
}

- (void)_pushSecurityKeyViewController:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [v4 cancelBarButtonItem];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 as_navigationItem];
  [v7 setRightBarButtonItems:v6];

  v8 = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  v9 = [v4 as_navigationItem];
  [v9 setLeftBarButtonItem:v8];

  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_pushPlatformKeyViewControllerWithSubtitle:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBA970] signInFailedErrorWithSubtitle:a3];
  v5 = [objc_alloc(MEMORY[0x277CBA918]) initWithConfiguration:v4];
  [v5 setDelegate:self];
  v6 = [v5 cancelBarButtonItem];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [v5 as_navigationItem];
  [v8 setRightBarButtonItems:v7];

  navigationController = self->_navigationController;
  v12 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v10 animated:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_pushActivateSecurityKeyAgainViewController
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext reinsertSecurityKey:1];
  v4 = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  v5 = v4;
  if (v4)
  {
    v13[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v7 = [v3 as_navigationItem];
    [v7 setLeftBarButtonItems:v6];
  }

  v8 = [v3 cancelBarButtonItem];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v10 = [v3 as_navigationItem];
  [v10 setRightBarButtonItems:v9];

  [v3 setDelegate:self];
  [(ASNavigationController *)self->_navigationController pushViewController:v3 animated:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_cableClientViewControllerWithLoginChoice:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBA928];
  v5 = a3;
  v6 = [[v4 alloc] initWithPresentationContext:self->_presentationContext loginChoice:v5 activity:self->_authorizationActivity];

  [v6 setDelegate:self];
  v7 = [v6 cancelBarButtonItem];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 as_navigationItem];
  [v9 setRightBarButtonItems:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_pushCABLEClientViewControllerForCABLELoginChoice:(id)a3
{
  v4 = [(PMAuthorizationViewController *)self _cableClientViewControllerWithLoginChoice:a3];
  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:1];
}

- (void)_pushCABLEConnectingViewController
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBA930]);
  [v3 setDelegate:self];
  v4 = [v3 cancelBarButtonItem];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v3 as_navigationItem];
  [v6 setRightBarButtonItems:v5];

  navigationController = self->_navigationController;
  v10 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v8 animated:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_pushCABLEAuthenticatingViewController
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA920]) initWithPresentationContext:self->_presentationContext];
  [v3 setDelegate:self];
  v4 = [v3 cancelBarButtonItem];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v3 as_navigationItem];
  [v6 setRightBarButtonItems:v5];

  navigationController = self->_navigationController;
  v10 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v8 animated:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startCABLEClientWithLoginChoice:(id)a3
{
  v4 = a3;
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PMAuthorizationViewController__startCABLEClientWithLoginChoice___block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  os_activity_apply(authorizationActivity, block);
  if (([(SFWirelessSettingsController *)self->_wirelessSettingsController isBluetoothEnabled]& 1) == 0)
  {
    [(PMAuthorizationViewController *)self _showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:v4 authenticatedContext:0 completionHandler:&__block_literal_global_63];
}

void __66__PMAuthorizationViewController__startCABLEClientWithLoginChoice___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1016);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 isBluetoothEnabled];
    _os_log_impl(&dword_21C6E5000, v4, OS_LOG_TYPE_DEFAULT, "Starting caBLE client: bluetoothEnabled: %{BOOL}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startCABLEClientForSingleLoginChoiceIfNeeded
{
  if ([(PMAuthorizationViewController *)self _shouldPresentCABLEAsInitialViewControllerForRequestTypes:[(ASCAuthorizationPresentationContext *)self->_presentationContext requestTypes] shouldAllowSecurityKeysFromCABLEView:[(ASCAuthorizationPresentationContext *)self->_presentationContext shouldAllowSecurityKeysFromCABLEView]])
  {
    v3 = [(ASCAuthorizationPresentationContext *)self->_presentationContext loginChoices];
    v5 = [v3 safari_firstObjectPassingTest:&__block_literal_global_65];

    v4 = v5;
    if (v5)
    {
      [(PMAuthorizationViewController *)self _startCABLEClientWithLoginChoice:v5];
      v4 = v5;
    }
  }
}

- (void)_showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBA958]) initWithPresentationContext:self->_presentationContext activity:self->_authorizationActivity];
  [v5 setDelegate:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __97__PMAuthorizationViewController__showEnableBluetoothViewControllerForCABLEClientWithLoginChoice___block_invoke;
  v10 = &unk_27831CA50;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [v5 setEnableBluetoothHandler:&v7];
  [(ASNavigationController *)self->_navigationController pushViewController:v5 animated:1, v7, v8, v9, v10, v11];
}

- (void)_enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice:(id)a3
{
  v4 = [(ASNavigationController *)self->_navigationController popViewControllerAnimated:1];
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_68);
  wirelessSettingsController = self->_wirelessSettingsController;

  [(SFWirelessSettingsController *)wirelessSettingsController setBluetoothEnabled:1];
}

void __97__PMAuthorizationViewController__enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21C6E5000, v0, OS_LOG_TYPE_DEFAULT, "Enabling Bluetooth", v1, 2u);
  }
}

- (void)_pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_presentationContext, a3);
  v6 = [[_TtC17PasswordManagerUI32PMCredentialPickerViewController alloc] initWithPresentationContext:v5 shouldExpandOtherLoginChoices:0 activity:self->_authorizationActivity];
  [(ASCredentialRequestPaneViewController *)v6 setDelegate:self];
  if (v6)
  {
    v7 = [(ASCredentialRequestPaneViewController *)v6 cancelBarButtonItem];
    v18 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v9 = [(PMCredentialPickerViewController *)v6 as_navigationItem];
    [v9 setRightBarButtonItems:v8];

    navigationController = self->_navigationController;
    v17 = v6;
    WeakRetained = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [(ASNavigationController *)navigationController setViewControllers:WeakRetained animated:1];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_70);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CF0400];
    v19 = *MEMORY[0x277CCA470];
    v20[0] = @"No view controller specified for request.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v12 errorWithDomain:v13 code:1 userInfo:v14];
    [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke_cold_1();
  }
}

- (void)_showCABLEAuthenticatorError:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(PMAuthorizationViewController *)self _controllerForCABLEAuthenticatorError:a3];
  v5 = [v4 cancelBarButtonItem];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v4 as_navigationItem];
  [v7 setRightBarButtonItems:v6];

  navigationController = self->_navigationController;
  v11 = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v9 animated:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_controllerForCABLEAuthenticatorError:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [MEMORY[0x277D49DC8] sharedManager];
  v6 = [v5 getEnabledExtensionsSynchronously];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v23 + 1) + 8 * v11);

        v13 = [MEMORY[0x277D49DC8] sharedManager];
        v14 = [v13 extensionSupportsPasskeys:v9];

        if (v14)
        {
          v15 = 1;
          goto LABEL_12;
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
  v9 = 0;
LABEL_12:

  if ([v4 safari_matchesErrorDomain:*MEMORY[0x277CF0400] andCode:5] && (objc_msgSend(MEMORY[0x277D49A50], "sharedMonitor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isKeychainSyncEnabled"), v16, ((v15 | v17) & 1) == 0))
  {
    v20 = objc_alloc_init(MEMORY[0x277CBA960]);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CBA940]);
    v19 = [v9 sf_bundleIdentifierForContainingApp];
    v20 = [v18 initWithError:v4 applicationBundleIdentifier:v19];
  }

  [v20 setDelegate:self];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_startCABLEAuthenticatorOnInitialPresentationIfNeeded
{
  v3 = [(ASCAuthorizationPresentationContext *)self->_presentationContext cableAuthenticatorURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(ASCAuthorizationPresentationContext *)self->_presentationContext shouldRequireCABLEAuthenticatorConsent];

    if ((v5 & 1) == 0)
    {

      [(PMAuthorizationViewController *)self _startCABLEAuthenticator];
    }
  }
}

- (void)_startCABLEAuthenticator
{
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  os_activity_apply(authorizationActivity, block);
  if (([(SFWirelessSettingsController *)self->_wirelessSettingsController isBluetoothEnabled]& 1) == 0)
  {
    [(PMAuthorizationViewController *)self _showEnableBluetoothViewControllerForCABLEAuthenticator];
  }

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_74;
  v5[3] = &unk_27831CB58;
  objc_copyWeak(&v6, &location);
  [WeakRetained authorizationViewController:self startCABLEAuthenticationWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1016);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 isBluetoothEnabled];
    _os_log_impl(&dword_21C6E5000, v4, OS_LOG_TYPE_DEFAULT, "Starting caBLE authenticator: bluetoothEnabled: %{BOOL}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_2;
  block[3] = &unk_27831CB30;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:?];
    }

    else
    {
      [WeakRetained _showCABLEAuthenticatorError:*(a1 + 40)];
    }

    WeakRetained = v3;
  }
}

- (void)_showEnableBluetoothViewControllerForCABLEAuthenticator
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA958]) initWithPresentationContext:self->_presentationContext activity:self->_authorizationActivity];
  [v3 setDelegate:self];
  v4 = [v3 cancelBarButtonItem];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v3 as_navigationItem];
  [v6 setRightBarButtonItems:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__PMAuthorizationViewController__showEnableBluetoothViewControllerForCABLEAuthenticator__block_invoke;
  v8[3] = &unk_27831C9D8;
  v8[4] = self;
  [v3 setEnableBluetoothHandler:v8];
  [(ASNavigationController *)self->_navigationController pushViewController:v3 animated:1];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_enableBluetoothAndShowCABLEConnectingViewController
{
  [(PMAuthorizationViewController *)self _pushCABLEConnectingViewController];
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_77);
  wirelessSettingsController = self->_wirelessSettingsController;

  [(SFWirelessSettingsController *)wirelessSettingsController setBluetoothEnabled:1];
}

void __85__PMAuthorizationViewController__enableBluetoothAndShowCABLEConnectingViewController__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21C6E5000, v0, OS_LOG_TYPE_DEFAULT, "Enabling Bluetooth", v1, 2u);
  }
}

- (void)requestPaneViewController:(id)a3 dismissWithCredential:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didCompleteWithCredential:v8 error:v7];
}

- (void)requestPaneViewController:(id)a3 didRequestCredentialForLoginChoice:(id)a4 authenticatedContext:(id)a5 completionHandler:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v14 loginChoiceKind] == 3)
  {
    v12 = v14;
    v13 = [v12 credentialKind];
    if (v13 == 2)
    {
      [(PMAuthorizationViewController *)self _pushSecurityKeyViewController];
      if (![(ASCAuthorizationPresentationContext *)self->_presentationContext shouldAllowSecurityKeysFromCABLEView])
      {
        (*(v10 + 2))(v10, 0, 0);
        goto LABEL_11;
      }
    }

    else if (v13 != 1)
    {
      if (v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      [(PMAuthorizationViewController *)self _pushSecurityKeyViewController];
    }

    [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:v12 authenticatedContext:v9 completionHandler:v10];
    goto LABEL_11;
  }

  if ([v14 loginChoiceKind] == 4)
  {
    [(PMAuthorizationViewController *)self _pushCABLEClientViewControllerForCABLELoginChoice:v14];
    [(PMAuthorizationViewController *)self _startCABLEClientWithLoginChoice:v14];
  }

  else
  {
    [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:v14 authenticatedContext:v9 completionHandler:v10];
  }

LABEL_12:
}

- (void)requestPaneViewControllerNeedsReload:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissAndPresentAgain:self];
}

void __91__PMAuthorizationViewController__pushRequestPaneViewControllerWithExpandedLoginChoiceList___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke_cold_1();
  }
}

- (void)requestPaneViewControllerStartCABLEAuthentication:(id)a3
{
  [(PMAuthorizationViewController *)self _pushCABLEConnectingViewController];

  [(PMAuthorizationViewController *)self _startCABLEAuthenticator];
}

- (void)passwordAuthenticationViewController:(id)a3 completedWithUserEnteredPIN:(id)a4
{
  v5 = a4;
  if (self->_isPresentingNewPINEntryView)
  {
    [(PMAuthorizationViewController *)self _pushActivateSecurityKeyAgainViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke;
  v7[3] = &unk_27831CBA8;
  v7[4] = self;
  [WeakRetained authorizationViewController:self validateUserEnteredPIN:v5 completionHandler:v7];
}

void __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_2;
    block[3] = &unk_27831C9D8;
    block[4] = *(a1 + 32);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = *(*(a1 + 32) + 1048);
    v8 = dispatch_time(0, 200000000);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_3;
    v9[3] = &unk_27831CB80;
    v9[4] = *(a1 + 32);
    v11 = v7;
    v10 = v5;
    dispatch_after(v8, MEMORY[0x277D85CD0], v9);
  }
}

void __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 _pushActivateSecurityKeyAgainViewController];
  }
}

uint64_t __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_3(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 1048) == *(result + 48))
  {
    *(v2 + 1048) = 0;
    v3 = *(result + 32);
    v4 = [*(result + 40) code];

    return [v3 _pushSecurityKeyViewControllerWithError:v4];
  }

  return result;
}

- (void)passwordAuthenticationViewController:(id)a3 completedWithManuallyEnteredPasswordCredential:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didCompleteWithCredential:v5 error:0];
}

- (ASAuthorizationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldPresentSignInWithAppleForkingAlertForLoginChoice:(id)a3
{
  sub_21CB81BE4();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = sub_21CB81BB4();
    swift_unknownObjectRelease();
  }

  return v4 & 1;
}

@end