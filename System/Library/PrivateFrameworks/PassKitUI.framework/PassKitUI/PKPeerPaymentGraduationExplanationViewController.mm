@interface PKPeerPaymentGraduationExplanationViewController
- (PKPeerPaymentGraduationExplanationViewController)initWithPeerPaymentWebService:(id)service peerPaymentAccount:(id)account passLibraryDataProvider:(id)provider setupDelegate:(id)delegate context:(int64_t)context;
- (void)_presentGenericError;
- (void)_presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier:(BOOL)identifier;
- (void)_presentTermsWithTermsResponse:(id)response;
- (void)_showSpinner:(BOOL)spinner;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentGraduationExplanationViewController

- (PKPeerPaymentGraduationExplanationViewController)initWithPeerPaymentWebService:(id)service peerPaymentAccount:(id)account passLibraryDataProvider:(id)provider setupDelegate:(id)delegate context:(int64_t)context
{
  serviceCopy = service;
  accountCopy = account;
  providerCopy = provider;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = PKPeerPaymentGraduationExplanationViewController;
  v17 = [(PKExplanationViewController *)&v32 initWithContext:context];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerPaymentWebService, service);
    objc_storeStrong(&v18->_peerPaymentAccount, account);
    objc_storeWeak(&v18->_setupDelegate, delegateCopy);
    objc_storeWeak(&v18->_passLibraryDataProvider, providerCopy);
    associatedPassUniqueID = [(PKPeerPaymentAccount *)v18->_peerPaymentAccount associatedPassUniqueID];
    if ([associatedPassUniqueID length])
    {
      WeakRetained = objc_loadWeakRetained(&v18->_passLibraryDataProvider);
      v21 = [WeakRetained passWithUniqueID:associatedPassUniqueID];

      [v21 loadImageSetSync:0 preheat:1];
      v22 = [[PKPassView alloc] initWithPass:v21 content:5 suppressedContent:512];
      [(PKPassView *)v22 snapshotOfFrontFaceWithRequestedSize:257.0, 157.0];
      v31 = delegateCopy;
      v23 = providerCopy;
      v24 = accountCopy;
      v26 = v25 = serviceCopy;
      explanationView = [(PKExplanationViewController *)v18 explanationView];
      [explanationView setImage:v26];
      imageView = [explanationView imageView];
      [imageView setAccessibilityIgnoresInvertColors:1];

      serviceCopy = v25;
      accountCopy = v24;
      providerCopy = v23;
      delegateCopy = v31;
    }

    v29 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:2];
    [(PKExplanationViewController *)v18 setPrivacyLinkController:v29];

    [(PKExplanationViewController *)v18 setShowDoneButton:0];
    [(PKExplanationViewController *)v18 setShowCancelButton:1];
    [(PKExplanationViewController *)v18 setExplanationViewControllerDelegate:v18];
  }

  return v18;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentGraduationExplanationViewController;
  [(PKExplanationViewController *)&v8 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_5.isa);
  [explanationView setTitleText:v4];

  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGra.isa);
  [explanationView setBodyText:v5];

  [explanationView setShowPrivacyView:1];
  [explanationView setTopMargin:12.0];
  [explanationView setBodyDataDetectorTypes:0];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];
}

- (void)_presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E69B8F88]);
  v6 = v5;
  if (identifierCopy)
  {
    [v5 setPrerequisiteIdentifier:*MEMORY[0x1E69BC330]];
  }

  context = [(PKPeerPaymentWebService *)self->_peerPaymentWebService context];
  [v6 setDevSigned:{objc_msgSend(context, "devSigned")}];

  [(PKPeerPaymentGraduationExplanationViewController *)self _showSpinner:1];
  peerPaymentWebService = self->_peerPaymentWebService;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __121__PKPeerPaymentGraduationExplanationViewController__presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier___block_invoke;
  v9[3] = &unk_1E801B2A8;
  v9[4] = self;
  [(PKPeerPaymentWebService *)peerPaymentWebService peerPaymentIdentityVerificationRequest:v6 completion:v9];
}

void __121__PKPeerPaymentGraduationExplanationViewController__presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PKPeerPaymentGraduationExplanationViewController__presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier___block_invoke_2;
  block[3] = &unk_1E8010A88;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __121__PKPeerPaymentGraduationExplanationViewController__presentIdentityVerificationFlowWithGraduationPrerequisiteIdentifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0];
  if (PKPeerPaymentWebServiceErrorIsTermsAcceptanceRequiredError())
  {
    v19 = *(a1 + 40);
    v2 = [v19 domain];
    v3 = [v2 isEqualToString:*MEMORY[0x1E69BB840]];

    if (v3)
    {
      v4 = [v19 userInfo];
      v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v6 = v5;
    }

    else
    {
      v6 = v19;
    }

    v20 = v6;
    v8 = [v6 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x1E69BC558]];

    [*(a1 + 32) _presentTermsWithTermsResponse:v9];
  }

  else if (*(a1 + 48) && !*(a1 + 40))
  {
    v10 = [PKPeerPaymentIdentityVerificationController alloc];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1080);
    v13 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((v11 + 1096));
    v15 = -[PKPeerPaymentIdentityVerificationController initWithPeerPaymentWebService:identityVerificationResponse:setupDelegate:hideInitialSplashScreen:context:](v10, "initWithPeerPaymentWebService:identityVerificationResponse:setupDelegate:hideInitialSplashScreen:context:", v12, v13, WeakRetained, 1, [*(a1 + 32) context]);

    v16 = [(PKPeerPaymentIdentityVerificationController *)v15 firstViewController];
    if (v16)
    {
      v17 = [[PKNavigationController alloc] initWithRootViewController:v16];
      [(PKNavigationController *)v17 setModalInPresentation:1];
      [(PKNavigationController *)v17 setSupportedInterfaceOrientations:2];
      PKPaymentSetupApplyContextAppearance([*(a1 + 32) context], v17);
      [*(a1 + 32) presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Error: no view controller defined for identity verification flow", buf, 2u);
      }

      [*(a1 + 32) _presentGenericError];
    }
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _presentGenericError];
  }
}

- (void)_presentTermsWithTermsResponse:(id)response
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  termsURL = [responseCopy termsURL];
  termsIdentifier = [responseCopy termsIdentifier];
  v7 = termsIdentifier;
  if (!termsURL || !termsIdentifier)
  {
    termsURL2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsURL];

    termsIdentifier2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsIdentifier];

    v7 = termsIdentifier2;
    termsURL = termsURL2;
  }

  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
  if (termsURL && v7)
  {
    [(PKPeerPaymentGraduationExplanationViewController *)self _showSpinner:1];
    v11 = [PKPeerPaymentTermsController alloc];
    v12 = v11;
    if (self->_peerPaymentWebService)
    {
      v13 = [(PKPeerPaymentTermsController *)v11 initWithTermsURL:termsURL termsIdentifier:v7 passUniqueID:associatedPassUniqueID webService:?];
    }

    else
    {
      mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
      v13 = [(PKPeerPaymentTermsController *)v12 initWithTermsURL:termsURL termsIdentifier:v7 passUniqueID:associatedPassUniqueID webService:mEMORY[0x1E69B9020]];
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PKPeerPaymentGraduationExplanationViewController__presentTermsWithTermsResponse___block_invoke;
    v16[3] = &unk_1E8012C78;
    objc_copyWeak(&v17, buf);
    [(PKPeerPaymentTermsController *)v13 presentTermsOverController:self showInterstitialViewController:0 withCompletionHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = termsURL;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Error cannot present terms for url %@ and terms identifier %@", buf, 0x16u);
    }

    [(PKPeerPaymentGraduationExplanationViewController *)self _presentGenericError];
  }
}

void __83__PKPeerPaymentGraduationExplanationViewController__presentTermsWithTermsResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _showSpinner:0];
    if (a2 == 1)
    {
      v5 = &v7;
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v6 = __83__PKPeerPaymentGraduationExplanationViewController__presentTermsWithTermsResponse___block_invoke_3;
      goto LABEL_6;
    }

    if (a2 == 2)
    {
      v5 = v9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v6 = __83__PKPeerPaymentGraduationExplanationViewController__presentTermsWithTermsResponse___block_invoke_2;
LABEL_6:
      v5[2] = v6;
      v5[3] = &unk_1E8010970;
      v5[4] = v4;
      [v4 dismissViewControllerAnimated:1 completion:{v7, v8}];
    }
  }
}

void __83__PKPeerPaymentGraduationExplanationViewController__presentTermsWithTermsResponse___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1096));
  [WeakRetained viewControllerDidCancelSetupFlow:*(a1 + 32)];
}

- (void)_presentGenericError
{
  v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPeerPaymentGraduationExplanationViewController__presentGenericError__block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, v6, 0);
  if (v4)
  {
    [(PKPeerPaymentGraduationExplanationViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }
}

void __72__PKPeerPaymentGraduationExplanationViewController__presentGenericError__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1096));
  [WeakRetained viewControllerDidTerminateSetupFlow:*(a1 + 32)];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:spinnerCopy];

  [dockView setButtonsEnabled:spinnerCopy ^ 1];
  navigationItem = [(PKPeerPaymentGraduationExplanationViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:spinnerCopy ^ 1];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:spinnerCopy ^ 1];
}

@end