@interface PKPeerPaymentIdentityVerificationExplanationViewController
- (CGSize)_snapshotSize;
- (PKPeerPaymentIdentityVerificationExplanationViewController)initWithContext:(int64_t)a3 setupDelegate:(id)a4 identityVerificationController:(id)a5;
- (id)_bodyButtonText;
- (id)_bodyText;
- (id)_titleText;
- (void)_cancel;
- (void)_performAuthenticationLocationBased:(BOOL)a3 withCompletion:(id)a4;
- (void)_processNextViewController;
- (void)_sendAnalyticsButtonTapped:(id)a3;
- (void)_sendAnalyticsEvent:(id)a3;
- (void)_terminateFlow;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4;
- (void)setShowSpinner:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentIdentityVerificationExplanationViewController

- (PKPeerPaymentIdentityVerificationExplanationViewController)initWithContext:(int64_t)a3 setupDelegate:(id)a4 identityVerificationController:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  v10 = [(PKExplanationViewController *)&v23 initWithContext:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controller, a5);
    objc_storeWeak(&v11->_setupDelegate, v8);
    v12 = [v9 webService];
    v13 = [v12 peerPaymentService];
    v14 = [v13 account];
    v15 = [v14 associatedPassUniqueID];

    if ([v15 length])
    {
      v16 = [MEMORY[0x1E69B8A58] sharedInstance];
      v17 = [v16 passWithUniqueID:v15];
      [v17 loadImageSetSync:0 preheat:1];
      v18 = [[PKPassView alloc] initWithPass:v17 content:5 suppressedContent:512];
      [(PKPeerPaymentIdentityVerificationExplanationViewController *)v11 _snapshotSize];
      v19 = [(PKPassView *)v18 snapshotOfFrontFaceWithRequestedSize:?];
      v20 = [(PKExplanationViewController *)v11 explanationView];
      [v20 setImage:v19];
      [v20 setShowPrivacyView:0];
      v21 = [v20 imageView];
      [v21 setAccessibilityIgnoresInvertColors:1];
    }
  }

  return v11;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKExplanationViewController *)&v9 loadView];
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setDelegate:self];
  v4 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _titleText];
  [v3 setTitleText:v4];

  v5 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _bodyText];
  [v3 setBodyText:v5];

  v6 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _bodyButtonText];
  [v3 setBodyButtonText:v6];

  [v3 setBodyButtonUsesLearnMoreStyle:1];
  v7 = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];

  if (!v7)
  {
    v8 = [v3 dockView];
    [v8 setPrimaryButton:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)&v5 viewDidAppear:a3];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)&v5 viewWillDisappear:a3];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v4];
}

- (void)setShowSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setShowSpinner:v3];
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4
{
  v4 = a4;
  v5 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:v4 completion:0];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = v4;
  identityVerificaionError = self->_identityVerificaionError;
  if (identityVerificaionError > 2)
  {
    switch(identityVerificaionError)
    {
      case 3:
        v16 = [v4 dockView];
        [v16 setButtonsEnabled:0];

        v17 = [v5 dockView];
        v18 = [v17 primaryButton];
        [v18 setShowSpinner:1];

        v19 = [v5 dockView];
        v20 = [v19 footerView];
        [v20 setButtonsEnabled:0];

        break;
      case 4:
        [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _terminateFlow];
        goto LABEL_16;
      case 5:
        v7 = [(PKPeerPaymentIdentityVerificationController *)self->_controller webService];
        v8 = [v7 peerPaymentService];
        v9 = [v8 account];

        v10 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        v11 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:v9 webService:v7 context:[(PKExplanationViewController *)self context] delegate:self passLibraryDataProvider:v10];
        v12 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Presenting contact apple support alert...", location, 2u);
        }

        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D8], 0);
        [(PKPeerPaymentAccountResolutionController *)v11 presentFlowForAccountResolution:3 configuration:0 completion:&__block_literal_global_76];

        goto LABEL_12;
    }

LABEL_14:
    [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _processNextViewController];
    goto LABEL_16;
  }

  if (identityVerificaionError >= 2)
  {
    if (identityVerificaionError == 2)
    {
      v13 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
      v14 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
      v7 = PKDisplayableErrorCustom();

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __95__PKPeerPaymentIdentityVerificationExplanationViewController_explanationViewDidSelectContinue___block_invoke_56;
      v21[3] = &unk_1E8010970;
      v21[4] = self;
      v9 = PKAlertForDisplayableErrorWithHandlers(v7, 0, v21, 0);
      v15 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self navigationController];
      [v15 presentViewController:v9 animated:1 completion:0];

LABEL_12:
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BA500]];
  objc_initWeak(location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__PKPeerPaymentIdentityVerificationExplanationViewController_explanationViewDidSelectContinue___block_invoke;
  v22[3] = &unk_1E8017508;
  objc_copyWeak(&v23, location);
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _performAuthenticationLocationBased:1 withCompletion:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
LABEL_16:
}

void __95__PKPeerPaymentIdentityVerificationExplanationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!a2 || v5)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 localizedDescription];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Auth error during peer payment personalization: %@", &v10, 0xCu);
      }
    }

    else
    {
      [WeakRetained _processNextViewController];
    }
  }
}

void __95__PKPeerPaymentIdentityVerificationExplanationViewController_explanationViewDidSelectContinue___block_invoke_42(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presented contact apple support alert with success %@", &v5, 0xCu);
  }
}

- (void)explanationViewDidSelectBodyButton:(id)a3
{
  v4 = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  v5 = [v4 learnMore];
  v7 = [v5 buttonURL];

  if (v7)
  {
    if (PKIsURLHttpScheme())
    {
      v6 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v7];
      [v6 setModalPresentationStyle:2];
      [(PKPeerPaymentIdentityVerificationExplanationViewController *)self presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      PKOpenURL();
    }
  }

  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BAEF8]];
}

- (void)_processNextViewController
{
  controller = self->_controller;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__PKPeerPaymentIdentityVerificationExplanationViewController__processNextViewController__block_invoke;
  v3[3] = &unk_1E8017558;
  v3[4] = self;
  [(PKPeerPaymentIdentityVerificationController *)controller nextViewControllerWithCompletion:v3];
}

void __88__PKPeerPaymentIdentityVerificationExplanationViewController__processNextViewController__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPeerPaymentIdentityVerificationExplanationViewController__processNextViewController__block_invoke_2;
  block[3] = &unk_1E8017530;
  v12 = *(a1 + 32);
  v19 = v10;
  v20 = a5;
  block[4] = v12;
  v17 = v9;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKPeerPaymentIdentityVerificationExplanationViewController__processNextViewController__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1096) = *(a1 + 64);
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) navigationController];
    [v7 pushViewController:*(a1 + 40) animated:{1, v7}];
LABEL_3:

    return;
  }

  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKPeerPaymentIdentityVerificationExplanationViewController__processNextViewController__block_invoke_3;
    v10[3] = &unk_1E8010970;
    v10[4] = *(a1 + 32);
    v3 = PKAlertForDisplayableErrorWithHandlers(v2, 0, v10, 0);
    v4 = [*(a1 + 32) navigationController];
    [v4 presentViewController:v3 animated:1 completion:0];

    return;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [v5 explanationView];
    [v6 setDelegate:*(a1 + 32)];

    v9 = [*(a1 + 32) navigationController];
    [v9 pushViewController:*(a1 + 56) animated:{1, v9}];
    goto LABEL_3;
  }
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewControllerDidCancelSetupFlow:self];
  }

  else
  {
    [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _terminateFlow];
  }

  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BA468]];
}

- (void)_terminateFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_titleText
{
  v2 = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  v3 = [v2 title];

  if (![v3 length])
  {
    v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_5.isa);

    v3 = v4;
  }

  return v3;
}

- (id)_bodyText
{
  v2 = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  v3 = [v2 subtitle];

  return v3;
}

- (id)_bodyButtonText
{
  v2 = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  v3 = [v2 learnMore];

  v4 = [v3 buttonTitle];
  if (v4)
  {
    v5 = [v3 buttonURL];

    if (v5)
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_performAuthenticationLocationBased:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    if (v4)
    {
      v7 = 1025;
    }

    else
    {
      v7 = 2;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__14;
    v20 = __Block_byref_object_dispose__14;
    v21 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v22[0] = &unk_1F3CC7238;
    v8 = PKLocalizedString(&cfstr_Wallet_1.isa);
    v22[1] = &unk_1F3CC7250;
    v23[0] = v8;
    v23[1] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _reportAnalyticsAuthStarted];
    objc_initWeak(&location, self);
    v10 = v17[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __113__PKPeerPaymentIdentityVerificationExplanationViewController__performAuthenticationLocationBased_withCompletion___block_invoke;
    v11[3] = &unk_1E8017580;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = &v16;
    [v10 evaluatePolicy:v7 options:v9 reply:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v16, 8);
  }
}

void __113__PKPeerPaymentIdentityVerificationExplanationViewController__performAuthenticationLocationBased_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reportAnalyticsAuthEnded:v5 result:v10];
  }

  v8 = *(a1 + 32);
  if (!v10 || v5)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = *(v8 + 16);
  }

  v9();
}

- (void)_sendAnalyticsButtonTapped:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v4;
  v9[0] = *MEMORY[0x1E69BA6F0];
  v9[1] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:v8 count:2];

  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v7];
}

- (void)_sendAnalyticsEvent:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setObject:*MEMORY[0x1E69BB010] forKey:*MEMORY[0x1E69BABE8]];
  [v3 setObject:*MEMORY[0x1E69BAEE8] forKey:*MEMORY[0x1E69BA850]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6A8] sendEvent:v3];
}

@end