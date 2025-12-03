@interface PKPeerPaymentIdentityVerificationExplanationViewController
- (CGSize)_snapshotSize;
- (PKPeerPaymentIdentityVerificationExplanationViewController)initWithContext:(int64_t)context setupDelegate:(id)delegate identityVerificationController:(id)controller;
- (id)_bodyButtonText;
- (id)_bodyText;
- (id)_titleText;
- (void)_cancel;
- (void)_performAuthenticationLocationBased:(BOOL)based withCompletion:(id)completion;
- (void)_processNextViewController;
- (void)_sendAnalyticsButtonTapped:(id)tapped;
- (void)_sendAnalyticsEvent:(id)event;
- (void)_terminateFlow;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)setShowSpinner:(BOOL)spinner;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentIdentityVerificationExplanationViewController

- (PKPeerPaymentIdentityVerificationExplanationViewController)initWithContext:(int64_t)context setupDelegate:(id)delegate identityVerificationController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  v10 = [(PKExplanationViewController *)&v23 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controller, controller);
    objc_storeWeak(&v11->_setupDelegate, delegateCopy);
    webService = [controllerCopy webService];
    peerPaymentService = [webService peerPaymentService];
    account = [peerPaymentService account];
    associatedPassUniqueID = [account associatedPassUniqueID];

    if ([associatedPassUniqueID length])
    {
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      v17 = [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
      [v17 loadImageSetSync:0 preheat:1];
      v18 = [[PKPassView alloc] initWithPass:v17 content:5 suppressedContent:512];
      [(PKPeerPaymentIdentityVerificationExplanationViewController *)v11 _snapshotSize];
      v19 = [(PKPassView *)v18 snapshotOfFrontFaceWithRequestedSize:?];
      explanationView = [(PKExplanationViewController *)v11 explanationView];
      [explanationView setImage:v19];
      [explanationView setShowPrivacyView:0];
      imageView = [explanationView imageView];
      [imageView setAccessibilityIgnoresInvertColors:1];
    }
  }

  return v11;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKExplanationViewController *)&v9 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
  _titleText = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _titleText];
  [explanationView setTitleText:_titleText];

  _bodyText = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _bodyText];
  [explanationView setBodyText:_bodyText];

  _bodyButtonText = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _bodyButtonText];
  [explanationView setBodyButtonText:_bodyButtonText];

  [explanationView setBodyButtonUsesLearnMoreStyle:1];
  response = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];

  if (!response)
  {
    dockView = [explanationView dockView];
    [dockView setPrimaryButton:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)&v5 viewDidAppear:appear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIdentityVerificationExplanationViewController;
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)&v5 viewWillDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v4];
}

- (void)setShowSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowSpinner:spinnerCopy];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentingViewController = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  v5 = continueCopy;
  identityVerificaionError = self->_identityVerificaionError;
  if (identityVerificaionError > 2)
  {
    switch(identityVerificaionError)
    {
      case 3:
        dockView = [continueCopy dockView];
        [dockView setButtonsEnabled:0];

        dockView2 = [v5 dockView];
        primaryButton = [dockView2 primaryButton];
        [primaryButton setShowSpinner:1];

        dockView3 = [v5 dockView];
        footerView = [dockView3 footerView];
        [footerView setButtonsEnabled:0];

        break;
      case 4:
        [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _terminateFlow];
        goto LABEL_16;
      case 5:
        webService = [(PKPeerPaymentIdentityVerificationController *)self->_controller webService];
        peerPaymentService = [webService peerPaymentService];
        account = [peerPaymentService account];

        v10 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        v11 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:account webService:webService context:[(PKExplanationViewController *)self context] delegate:self passLibraryDataProvider:v10];
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
      webService = PKDisplayableErrorCustom();

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __95__PKPeerPaymentIdentityVerificationExplanationViewController_explanationViewDidSelectContinue___block_invoke_56;
      v21[3] = &unk_1E8010970;
      v21[4] = self;
      account = PKAlertForDisplayableErrorWithHandlers(webService, 0, v21, 0);
      navigationController = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self navigationController];
      [navigationController presentViewController:account animated:1 completion:0];

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

- (void)explanationViewDidSelectBodyButton:(id)button
{
  response = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  learnMore = [response learnMore];
  buttonURL = [learnMore buttonURL];

  if (buttonURL)
  {
    if (PKIsURLHttpScheme())
    {
      v6 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:buttonURL];
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
    presentingViewController = [(PKPeerPaymentIdentityVerificationExplanationViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_titleText
{
  response = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  title = [response title];

  if (![title length])
  {
    v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_5.isa);

    title = v4;
  }

  return title;
}

- (id)_bodyText
{
  response = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  subtitle = [response subtitle];

  return subtitle;
}

- (id)_bodyButtonText
{
  response = [(PKPeerPaymentIdentityVerificationController *)self->_controller response];
  learnMore = [response learnMore];

  buttonTitle = [learnMore buttonTitle];
  if (buttonTitle)
  {
    buttonURL = [learnMore buttonURL];

    if (buttonURL)
    {
      buttonURL = buttonTitle;
    }
  }

  else
  {
    buttonURL = 0;
  }

  return buttonURL;
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_performAuthenticationLocationBased:(BOOL)based withCompletion:(id)completion
{
  basedCopy = based;
  v23[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    if (basedCopy)
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
    v12 = completionCopy;
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

- (void)_sendAnalyticsButtonTapped:(id)tapped
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v4;
  v9[0] = *MEMORY[0x1E69BA6F0];
  v9[1] = tapped;
  v5 = MEMORY[0x1E695DF20];
  tappedCopy = tapped;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:v8 count:2];

  [(PKPeerPaymentIdentityVerificationExplanationViewController *)self _sendAnalyticsEvent:v7];
}

- (void)_sendAnalyticsEvent:(id)event
{
  v3 = [event mutableCopy];
  [v3 setObject:*MEMORY[0x1E69BB010] forKey:*MEMORY[0x1E69BABE8]];
  [v3 setObject:*MEMORY[0x1E69BAEE8] forKey:*MEMORY[0x1E69BA850]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6A8] sendEvent:v3];
}

@end