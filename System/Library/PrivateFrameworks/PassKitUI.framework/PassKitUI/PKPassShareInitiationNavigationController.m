@interface PKPassShareInitiationNavigationController
- (PKClientShareSecureElementPassViewControllerDelegate)shareDelegate;
- (PKPassShareInitiationNavigationController)initWithSharesController:(id)a3 environment:(unint64_t)a4;
- (id)_activityItemForActivationCode;
- (id)_placeholderActivityItem;
- (unint64_t)_transitionToNextStepIsMockTransition:(BOOL)a3;
- (void)_flowDidCancel;
- (void)_flowDidCancelWithError:(id)a3;
- (void)_flowDidFinishWithSuccess;
- (void)_revokeCreatedShareWithCompletion:(id)a3;
- (void)_sendOverLegacyCarKeyiMessage;
- (void)_sendOverSelectedChannel;
- (void)_sendOveriMessage;
- (void)_sendOveriMessageUsingComposeViewController;
- (void)_transitionToStep:(unint64_t)a3;
- (void)_updateShareActivationOptions;
- (void)interceptableActivityViewController:(id)a3 didInterceptActivitySelectionOfType:(id)a4;
- (void)passShareIntroductionExplanationViewControllerDidCancel:(id)a3;
- (void)passShareIntroductionExplanationViewControllerDidContinue:(id)a3;
- (void)setShouldPromptUserToShare:(BOOL)a3;
- (void)shareActivityDidFinishWithShare:(BOOL)a3;
- (void)sharePreviewViewControllerDidCancel:(id)a3;
- (void)sharePreviewViewControllerDidContinue:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareInitiationNavigationController

- (PKPassShareInitiationNavigationController)initWithSharesController:(id)a3 environment:(unint64_t)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v39.receiver = self;
  v39.super_class = PKPassShareInitiationNavigationController;
  v8 = [(PKNavigationController *)&v39 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sharesController, a3);
    [(PKSharedPassSharesController *)v9->_sharesController prewarmCreateShare];
    v10 = [(PKSharedPassSharesController *)v9->_sharesController pass];
    v11 = [[PKShareInitiationAnalyticsReporter alloc] initWithPass:v10];
    analyticsReporter = v9->_analyticsReporter;
    v9->_analyticsReporter = v11;

    v13 = [PKPassShareInitiationContext alloc];
    v14 = [(PKSharedPassSharesController *)v9->_sharesController baseNewShareForPass];
    v15 = [(PKPassShareInitiationContext *)v13 initWithFlow:0 share:v14];
    context = v9->_context;
    v9->_context = v15;

    -[PKPassShareInitiationContext setAuthenticationType:](v9->_context, "setAuthenticationType:", [v10 isCarKeyPass]);
    [(PKPassShareInitiationContext *)v9->_context setEnvironment:a4];
    v17 = v9->_context;
    v18 = [(PKSharedPassSharesController *)v9->_sharesController blockedSharingChannels];
    [(PKPassShareInitiationContext *)v17 setBlockedChannels:v18];

    v19 = v9->_context;
    v20 = [(PKSharedPassSharesController *)v9->_sharesController allowedSharingChannels];
    [(PKPassShareInitiationContext *)v19 setAllowedChannels:v20];

    v21 = [(PKPassShareInitiationContext *)v9->_context allowedChannels];
    v22 = *MEMORY[0x1E69CDAB0];
    v40[0] = *MEMORY[0x1E69CDAB0];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v24 = PKEqualObjects();

    if (v24)
    {
      [(PKPassShareInitiationContext *)v9->_context setChannelBundleIdentifier:v22];
      [(PKPassShareInitiationContext *)v9->_context setFlow:6];
    }

    v25 = MEMORY[0x1E69B9280];
    v26 = [(PKSharedPassSharesController *)v9->_sharesController pass];
    v27 = [v25 displayInformationForAccessPass:v26 webService:0];

    v28 = v9->_context;
    v29 = [v27 title];
    [(PKPassShareInitiationContext *)v28 setSharePreviewTitle:v29];

    v30 = v9->_context;
    v31 = [v27 subtitle];
    [(PKPassShareInitiationContext *)v30 setSharePreviewSubtitle:v31];

    v32 = v9->_context;
    v33 = [v27 imageURL];
    [(PKPassShareInitiationContext *)v32 setSharePreviewImageURL:v33];

    v34 = v9->_context;
    v35 = MEMORY[0x1E69DCAB8];
    v36 = PKPassKitUIBundle();
    v37 = [v35 imageNamed:@"Generic-Shared-Key" inBundle:v36];
    [(PKPassShareInitiationContext *)v34 setSharePreviewFallbackImage:v37];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PKPassShareInitiationNavigationController;
  [(PKPassShareInitiationNavigationController *)&v9 viewWillAppear:a3];
  if (!self->_hasAppeared)
  {
    self->_hasAppeared = 1;
    if (([(PKSharedPassSharesController *)self->_sharesController isCrossPlatformSharingEnabled]& 1) == 0)
    {
      v4 = [(PKSharedPassSharesController *)self->_sharesController pass];
      v5 = [v4 isCarKeyPass];

      if (!v5)
      {
        [(PKPassShareInitiationNavigationController *)self setNavigationBarHidden:1];
        v7 = [MEMORY[0x1E696ABC0] pkSharingError:7];
        [(PKPassShareInitiationNavigationController *)self _flowDidCancelWithError:v7];

        return;
      }

      [(PKPassShareInitiationContext *)self->_context setFlow:5];
    }

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Starting share initiation flow", v8, 2u);
    }

    [(PKPassShareInitiationNavigationController *)self _transitionToNextStep];
  }
}

- (void)setShouldPromptUserToShare:(BOOL)a3
{
  if (!a3)
  {
    if ([(PKPassShareInitiationContext *)self->_context flow]== 5)
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "ShareInitiation: ignore setShouldPromptUserToShare because using legacy flow", v6, 2u);
      }
    }

    else
    {
      context = self->_context;

      [(PKPassShareInitiationContext *)context setFlow:4];
    }
  }
}

- (unint64_t)_transitionToNextStepIsMockTransition:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(PKPassShareInitiationContext *)self->_context flow];
  v6 = 0;
  v7 = 0;
  currentStep = self->_currentStep;
  v9 = 1;
  if (currentStep <= 2)
  {
    v10 = v5;
    if (currentStep)
    {
      if (currentStep != 1)
      {
        if (currentStep == 2)
        {
          v7 = 0;
          v9 = 0;
          v6 = 3;
        }

        goto LABEL_23;
      }

      v7 = 0;
      v9 = 0;
      v13 = v5 - 4 >= 3;
    }

    else
    {
      if ([(PKPassShareInitiationContext *)self->_context environment]== 2)
      {
        v7 = 0;
        v9 = 0;
        v6 = 1;
        goto LABEL_23;
      }

      v7 = 0;
      v9 = 0;
      v13 = v10 - 5 >= 2;
    }

    if (v13)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    goto LABEL_23;
  }

  if ((currentStep - 5) < 2)
  {
    v6 = 0;
    if (a3)
    {
      return v6;
    }

    goto LABEL_25;
  }

  if (currentStep == 3)
  {
    v7 = 0;
    v9 = 0;
    v6 = 4;
  }

  else if (currentStep == 4)
  {
    v11 = [(PKPassShareInitiationContext *)self->_context composedShare];
    v12 = [v11 activationOptions];

    v7 = v12 == 0;
    if (v12)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }

    v9 = v12 == 0;
  }

LABEL_23:
  if (!a3)
  {
    if (v7)
    {
LABEL_25:
      [(PKPassShareInitiationNavigationController *)self _flowDidFinishWithSuccess];
      return v6;
    }

    if (v9)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_currentStep;
        v17 = 134217984;
        v18 = v15;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "ShareInitiation: WARNING: Unablet to determine next step from currentStep: %lu", &v17, 0xCu);
      }
    }

    else
    {
      [(PKPassShareInitiationNavigationController *)self _transitionToStep:v6];
    }
  }

  return v6;
}

- (void)_transitionToStep:(unint64_t)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 6)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_1E8022798[a3];
    }

    *buf = 138412290;
    v59 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Transitioning to step: %@", buf, 0xCu);
  }

  currentStep = self->_currentStep;
  self->_currentStep = a3;
  if (currentStep > a3)
  {
    return;
  }

  v8 = [(PKPassShareInitiationNavigationController *)self viewControllers];
  v9 = [v8 count];

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v22 = [(PKPassShareInitiationContext *)self->_context flow];
      switch(v22)
      {
        case 6uLL:
          [(PKPassShareInitiationNavigationController *)self _sendOveriMessageUsingComposeViewController];
          break;
        case 5uLL:
          [(PKPassShareInitiationNavigationController *)self _sendOverLegacyCarKeyiMessage];
          break;
        case 1uLL:
          [(PKPassShareInitiationNavigationController *)self _sendOveriMessage];
          break;
        default:
          [(PKPassShareInitiationNavigationController *)self _sendOverSelectedChannel];
          break;
      }

      return;
    }

    if (a3 != 5)
    {
      if (a3 == 6)
      {
        v15 = [PKInterceptableActivityViewController alloc];
        v16 = [(PKPassShareInitiationNavigationController *)self _activityItemForActivationCode];
        v54 = v16;
        v14 = 1;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
        v18 = [(PKInterceptableActivityViewController *)v15 initWithItems:v17 delegate:self];
        activityViewController = self->_activityViewController;
        self->_activityViewController = v18;

        v20 = self->_activityViewController;
        v21 = [(PKPassShareInitiationContext *)self->_context blockedChannels];
        [(PKInterceptableActivityViewController *)v20 setExcludedActivityTypes:v21];

        v12 = self->_activityViewController;
        v13 = 0;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      return;
    }

    v33 = [_TtC9PassKitUI43PKPassShareActivationOverviewViewController alloc];
    v34 = [(PKPassShareInitiationContext *)self->_context composedShare];
    v35 = [v34 activationOptions];
    v36 = [(PKPassShareInitiationContext *)self->_context recipient];
    v37 = [(PKPassShareActivationOverviewViewController *)v33 initWithActivationOptions:v35 recipient:v36 delegate:self];

    v12 = [[PKNavigationController alloc] initWithRootViewController:v37];
    v14 = 0;
LABEL_26:
    v13 = 1;
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a3 == 1)
  {
    v12 = [[PKPassShareIntroductionExplanationViewController alloc] initWithSharesController:self->_sharesController context:self->_context delegate:self];
    [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendEventForPage:0 specifics:0];
    v14 = 1;
    goto LABEL_26;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return;
    }

    [(PKPassShareInitiationNavigationController *)self _updateShareActivationOptions];
    v10 = [[PKPassSharePreviewViewController alloc] initWithSharesController:self->_sharesController context:self->_context delegate:self];
    previewViewController = self->_previewViewController;
    self->_previewViewController = v10;

    v12 = [[PKNavigationController alloc] initWithRootViewController:self->_previewViewController];
    [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendEventForPage:2 specifics:0];
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      return;
    }

LABEL_32:
    if (v9)
    {
      v43 = [(UIViewController *)self pkui_frontMostViewController];
      if ([(PKPassShareInitiationNavigationController *)v43 isBeingDismissed])
      {
        v44 = [(PKPassShareInitiationNavigationController *)v43 presentingViewController];

        v43 = v44;
      }

      if (v43 == self)
      {
        v45 = 1;
      }

      else
      {
        v45 = v14;
      }

      if ((v45 & 1) == 0)
      {
        v46 = self->_activityViewController;
        if (v43 != v46)
        {
          v47 = [(PKPassShareInitiationNavigationController *)v43 presentingViewController];
          v48 = self->_activityViewController;

          if (v47 != v48)
          {
LABEL_43:
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __63__PKPassShareInitiationNavigationController__transitionToStep___block_invoke;
            v50[3] = &unk_1E8010A10;
            v50[4] = self;
            v51 = v12;
            [(PKPassShareInitiationNavigationController *)self dismissViewControllerAnimated:1 completion:v50];

LABEL_48:
            return;
          }

          v46 = self->_activityViewController;
        }

        self->_activityViewController = 0;

        goto LABEL_43;
      }
    }

    else
    {
      if (v13)
      {
        v53 = v12;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
        [(PKPassShareInitiationNavigationController *)self setViewControllers:v43];
        goto LABEL_48;
      }

      v43 = objc_alloc_init(MEMORY[0x1E69DD258]);
      v52 = v43;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [(PKPassShareInitiationNavigationController *)self setViewControllers:v49];
    }

    [(PKPassShareInitiationNavigationController *)v43 presentViewController:v12 animated:1 completion:0];
    goto LABEL_48;
  }

  v23 = [PKInterceptableActivityViewController alloc];
  v24 = [(PKPassShareInitiationNavigationController *)self _placeholderActivityItem];
  v57 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v26 = [(PKInterceptableActivityViewController *)v23 initWithItems:v25 peopleSuggestionBundleIds:&unk_1F3CC86F0 delegate:self];
  v27 = self->_activityViewController;
  self->_activityViewController = v26;

  v28 = self->_activityViewController;
  v29 = [(PKPassShareInitiationContext *)self->_context blockedChannels];
  [(PKInterceptableActivityViewController *)v28 setExcludedActivityTypes:v29];

  v30 = self->_activityViewController;
  v31 = [(PKPassShareInitiationContext *)self->_context allowedChannels];
  [(PKInterceptableActivityViewController *)v30 setAllowedActivityTypes:v31];

  v12 = self->_activityViewController;
  if ([(PKPassShareInitiationContext *)self->_context environment]== 2)
  {
    v32 = MEMORY[0x1E69BB110];
  }

  else if (self->_isFromPeopleScreen)
  {
    v32 = MEMORY[0x1E69BB108];
  }

  else
  {
    v32 = MEMORY[0x1E69BB100];
  }

  v38 = *v32;
  analyticsReporter = self->_analyticsReporter;
  v55 = *MEMORY[0x1E69BB0E0];
  v56 = v38;
  v40 = MEMORY[0x1E695DF20];
  v41 = v38;
  v14 = 1;
  v42 = [v40 dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  [(PKShareInitiationAnalyticsReporter *)analyticsReporter sendEventForPage:1 specifics:v42];

  v13 = 0;
  if (v12)
  {
    goto LABEL_32;
  }
}

- (void)_sendOverLegacyCarKeyiMessage
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Sending share over car key IDS imessage channel", buf, 2u);
  }

  sharesController = self->_sharesController;
  v5 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v6 = [(PKSharedPassSharesController *)sharesController entitlementsForShare:v5];

  v7 = objc_alloc(MEMORY[0x1E69B85B0]);
  v8 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v9 = [v8 paymentPass];
  v10 = [v7 initWithPaymentPass:v9 entitlements:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKPassShareInitiationNavigationController__sendOverLegacyCarKeyiMessage__block_invoke;
  v11[3] = &unk_1E80226B0;
  v11[4] = self;
  [PKSharingMessageExtensionMessageBuilder messageFromSharingRequest:v10 completionHandler:v11];
}

void __74__PKPassShareInitiationNavigationController__sendOverLegacyCarKeyiMessage__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6973F10];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = *(a1 + 32);
  v7 = *(v6 + 1568);
  *(v6 + 1568) = v5;

  [*(*(a1 + 32) + 1568) setMessageComposeDelegate:?];
  [*(*(a1 + 32) + 1568) setMessage:v4];

  v8 = [*(a1 + 32) pkui_frontMostViewController];
  [v8 presentViewController:*(*(a1 + 32) + 1568) animated:1 completion:0];
}

- (void)_sendOveriMessage
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Sending share over imessage extension", buf, 2u);
  }

  [(PKPassSharePreviewViewController *)self->_previewViewController setShowHeaderSpinner:1];
  v4 = [(PKInterceptableActivityViewController *)self->_activityViewController view];
  [v4 setUserInteractionEnabled:0];

  v5 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v6 = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
  [v5 updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v6];

  v7 = objc_alloc(MEMORY[0x1E69B8A18]);
  v8 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v9 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v10 = [v7 initWithShare:v8 pass:v9];

  [v10 setSharingInvitationFlow:1];
  objc_initWeak(buf, self);
  v11 = [(PKSharingAnalyticsReporter *)self->_analyticsReporter sessionToken];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PKPassShareInitiationNavigationController__sendOveriMessage__block_invoke;
  v12[3] = &unk_1E80226D8;
  objc_copyWeak(&v13, buf);
  [PKSharingMessageExtensionMessageBuilder messageFromInvitation:v10 analyticsSessionToken:v11 completionHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __62__PKPassShareInitiationNavigationController__sendOveriMessage__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _placeholderActivityItem];
    [v6 setValue:v3];
    v7 = v5[200];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setItems:v8];

    v9 = v5[199];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PKPassShareInitiationNavigationController__sendOveriMessage__block_invoke_2;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, (a1 + 32));
    [v9 dismissViewControllerAnimated:1 completion:v10];
    objc_destroyWeak(&v11);
  }
}

void __62__PKPassShareInitiationNavigationController__sendOveriMessage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[200] view];
    [v2 setUserInteractionEnabled:1];

    [v4[200] handleInterceptedShareActivity];
    v3 = v4[199];
    v4[199] = 0;

    WeakRetained = v4;
  }
}

- (void)_sendOveriMessageUsingComposeViewController
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Sending share over imessage using imessage compose VC", buf, 2u);
  }

  [(PKPassSharePreviewViewController *)self->_previewViewController setShowHeaderSpinner:1];
  v4 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v5 = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
  [v4 updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v5];

  v6 = objc_alloc(MEMORY[0x1E69B8A18]);
  v7 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v8 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v9 = [v6 initWithShare:v7 pass:v8];

  [v9 setSharingInvitationFlow:1];
  objc_initWeak(buf, self);
  v10 = [(PKSharingAnalyticsReporter *)self->_analyticsReporter sessionToken];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKPassShareInitiationNavigationController__sendOveriMessageUsingComposeViewController__block_invoke;
  v11[3] = &unk_1E80226D8;
  objc_copyWeak(&v12, buf);
  [PKSharingMessageExtensionMessageBuilder messageFromInvitation:v9 analyticsSessionToken:v10 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __88__PKPassShareInitiationNavigationController__sendOveriMessageUsingComposeViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6973F10]);
    v6 = WeakRetained[196];
    WeakRetained[196] = v5;

    [WeakRetained[196] setMessageComposeDelegate:WeakRetained];
    [WeakRetained[196] setMessage:v3];
    v7 = [WeakRetained pkui_frontMostViewController];
    v8 = WeakRetained[196];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PKPassShareInitiationNavigationController__sendOveriMessageUsingComposeViewController__block_invoke_2;
    v9[3] = &unk_1E8010970;
    v9[4] = WeakRetained;
    [v7 presentViewController:v8 animated:1 completion:v9];
  }
}

- (void)_sendOverSelectedChannel
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Sending share over previously selected channel", buf, 2u);
  }

  v4 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v5 = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
  [v4 updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v5];

  v6 = objc_alloc(MEMORY[0x1E69B8A18]);
  v7 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v8 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v9 = [v6 initWithShare:v7 pass:v8];

  v10 = [(PKPassShareInitiationContext *)self->_context flow];
  if (v10 <= 6)
  {
    [v9 setSharingInvitationFlow:qword_1BE1168B0[v10]];
  }

  objc_initWeak(location, self);
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__57;
  v37 = __Block_byref_object_dispose__57;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__57;
  v31[4] = __Block_byref_object_dispose__57;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__57;
  v29[4] = __Block_byref_object_dispose__57;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke;
  aBlock[3] = &unk_1E8022750;
  objc_copyWeak(&v28, location);
  v11 = v9;
  v24 = v11;
  v25 = v31;
  v26 = v29;
  v27 = buf;
  v12 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_4;
  v21[3] = &unk_1E8022778;
  objc_copyWeak(&v22, location);
  v21[4] = buf;
  v21[5] = v31;
  v21[6] = v29;
  v13 = _Block_copy(v21);
  v14 = [(PKPassShareInitiationContext *)self->_context authenticationType];
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = PKShareAuthorizationPaymentRequest(v11);
      v16 = [(PKPassShareInitiationNavigationController *)self view];
      v17 = [v16 window];
      v18 = [v17 windowScene];
      v19 = [v18 _sceneIdentifier];

      v20 = [MEMORY[0x1E69B9250] authorizeForRequest:v15 presentationSceneIdentifier:v19 authHandler:v12 completion:v13];
    }
  }

  else
  {
    [MEMORY[0x1E69B9250] authorizeDeviceOwnerWithAuthHandler:v12 completion:v13];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v28);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(location);
}

void __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_2;
  block[3] = &unk_1E8022728;
  objc_copyWeak(&v15, (a1 + 64));
  v10 = *(a1 + 32);
  v11 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
}

void __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[198] sendAuthenticationEventForSuccess:1 specifics:0];
    [v3[199] setShowHeaderSpinner:1];
    v4 = v3[194];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v8 = *(a1 + 48);
    v11 = *(a1 + 64);
    v9[2] = __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_3;
    v9[3] = &unk_1E8022700;
    v7 = v8;
    v10 = v8;
    [v4 createShareWithPartialShare:v5 authorization:v6 completion:v9];
  }
}

void __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v19 = v7;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(*(a1[5] + 8) + 40) != 0;
  }

  (*(a1[4] + 16))(a1[4], v18);
}

void __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_4(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[199] setShowHeaderSpinner:0];
    v6 = [v5[197] flow];
    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (v7 || (a2 & 1) != 0)
    {
      if (v6 == 4)
      {
        v9 = objc_loadWeakRetained(v5 + 203);
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [*(*(*(a1 + 48) + 8) + 40) activationOptions];
        v12 = [v11 activationCode];
        [v9 didCreateShareURL:v10 activationCode:v12 error:*(*(*(a1 + 32) + 8) + 40)];

        [v5 _flowDidFinishWithSuccess];
      }

      else if (v7)
      {
        [v5 _flowDidCancelWithError:?];
      }

      else
      {
        if (*(*(*(a1 + 48) + 8) + 40))
        {
          [v5[197] setComposedShare:?];
        }

        [v5[197] setDidCreateShare:1];
        v13 = [v5 _placeholderActivityItem];
        [v13 setValue:*(*(*(a1 + 40) + 8) + 40)];
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(*(*(a1 + 40) + 8) + 40) absoluteString];
          v16 = PKSharingLoggableMailboxAddress();
          *buf = 138543362;
          v23 = v16;
          _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "ShareInitiation: using share url: %{public}@", buf, 0xCu);
        }

        v17 = v5[200];
        v21 = v13;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        [v17 setItems:v18];

        v19 = v5[199];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_92;
        v20[3] = &unk_1E8010970;
        v20[4] = v5;
        [v19 dismissViewControllerAnimated:1 completion:v20];
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Auth canceled", buf, 2u);
      }

      [v5[198] sendAuthenticationEventForSuccess:0 specifics:0];
      [v5 _transitionToStep:3];
    }
  }
}

void __69__PKPassShareInitiationNavigationController__sendOverSelectedChannel__block_invoke_92(uint64_t a1)
{
  [*(*(a1 + 32) + 1600) handleInterceptedShareActivity];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1592);
  *(v2 + 1592) = 0;
}

- (void)_flowDidCancelWithError:(id)a3
{
  analyticsReporter = self->_analyticsReporter;
  v5 = a3;
  [(PKShareInitiationAnalyticsReporter *)analyticsReporter sendDoneEventWithDidShare:0 error:v5 specifics:0];
  v6 = self->_analyticsReporter;
  self->_analyticsReporter = 0;

  v7 = PKSharingDisplayableError(v5);

  if (!v7)
  {
    v8 = [MEMORY[0x1E696ABC0] pkSharingError:7];
    v9 = [(PKSharedPassSharesController *)self->_sharesController pass];
    v7 = PKSharingDisplayableError(v8, v9);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPassShareInitiationNavigationController__flowDidCancelWithError___block_invoke;
  v12[3] = &unk_1E8010970;
  v12[4] = self;
  v10 = PKAlertForDisplayableErrorWithHandlers(v7, 0, v12, 0);
  v11 = [(UIViewController *)self pkui_frontMostViewController];
  [v11 presentViewController:v10 animated:1 completion:0];
}

- (void)_flowDidCancel
{
  [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendDoneEventWithDidShare:0 error:0 specifics:0];
  analyticsReporter = self->_analyticsReporter;
  self->_analyticsReporter = 0;

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PKPassShareInitiationNavigationController__flowDidCancel__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  [(PKPassShareInitiationNavigationController *)self _revokeCreatedShareWithCompletion:v4];
}

void __59__PKPassShareInitiationNavigationController__flowDidCancel__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Flow did cancel", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1624));
  v4 = *(a1 + 32);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(v4 + 203);
    [v5 didFinishShareWithDidUserShare:0 error:0];
  }

  else
  {
    v6 = [v4 presentingViewController];
    v7 = v6;
    if (!v6)
    {
      v7 = *(a1 + 32);
    }

    v5 = v7;

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_flowDidFinishWithSuccess
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Flow did finish with success", v10, 2u);
  }

  [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendDoneEventWithDidShare:1 error:0 specifics:0];
  analyticsReporter = self->_analyticsReporter;
  self->_analyticsReporter = 0;

  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_shareDelegate);
    [(PKPassShareInitiationNavigationController *)v6 didFinishShareWithDidUserShare:1 error:0];
  }

  else
  {
    v7 = [(PKPassShareInitiationNavigationController *)self presentingViewController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = self;
    }

    v6 = v9;

    [(PKPassShareInitiationNavigationController *)v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_revokeCreatedShareWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKPassShareInitiationContext *)self->_context didCreateShare])
  {
    sharesController = self->_sharesController;
    v6 = [(PKPassShareInitiationContext *)self->_context composedShare];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PKPassShareInitiationNavigationController__revokeCreatedShareWithCompletion___block_invoke;
    v7[3] = &unk_1E8012C28;
    v8 = v4;
    [(PKSharedPassSharesController *)sharesController revokeShare:v6 shouldCascade:0 withCompletion:v7];

    [(PKPassShareInitiationContext *)self->_context setDidCreateShare:0];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __79__PKPassShareInitiationNavigationController__revokeCreatedShareWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateShareActivationOptions
{
  v3 = [(PKPassShareInitiationContext *)self->_context flow];
  if (v3 == 5)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Not setting activation options because legacy car key share", buf, 2u);
    }
  }

  else
  {
    v5 = v3;
    v6 = [(PKPassShareInitiationContext *)self->_context recipient];
    v9 = v5 == 1 || v5 == 6 || v6 != 0;

    sharesController = self->_sharesController;
    v11 = [(PKPassShareInitiationContext *)self->_context channelBundleIdentifier];
    v16 = [(PKSharedPassSharesController *)sharesController shareInitiationActivationConfigurationForChannelBundleIdentifier:v11 isRecipientKnownContact:v9];

    v12 = [(PKPassShareInitiationContext *)self->_context composedShare];
    v13 = [v16 defaultOptions];
    [v12 setActivationOptions:v13];

    context = self->_context;
    v15 = [v16 availableOptions];
    [(PKPassShareInitiationContext *)context setAvailableActivationOptions:v15];

    -[PKPassShareInitiationContext setActivationOptionsUserEditable:](self->_context, "setActivationOptionsUserEditable:", [v16 allowUserEdit]);
  }
}

- (id)_placeholderActivityItem
{
  v3 = [(PKPassShareInitiationContext *)self->_context sharePreviewTitle];
  v4 = [(PKPassShareInitiationContext *)self->_context sharePreviewSubtitle];
  v5 = [(PKPassShareInitiationContext *)self->_context sharePreviewImageURL];
  v6 = [(PKPassShareInitiationContext *)self->_context sharePreviewFallbackImage];
  v7 = [PKActivityItemSource placeholderURLItemWithTitle:v3 subtitle:v4 iconURL:v5 iconPlaceholder:v6];

  return v7;
}

- (id)_activityItemForActivationCode
{
  v3 = [(PKPassShareInitiationNavigationController *)self _placeholderActivityItem];
  v4 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v5 = [v4 activationOptions];
  v6 = [v5 activationCode];

  [v3 setValue:v6];

  return v3;
}

- (void)sharePreviewViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(PKPassShareInitiationContext *)self->_context flow];
  if (v5 <= 6)
  {
    if (((1 << v5) & 0x1B) != 0)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __81__PKPassShareInitiationNavigationController_sharePreviewViewControllerDidCancel___block_invoke_2;
      v10 = &unk_1E8010970;
      v11 = self;
      v6 = &v7;
    }

    else
    {
      if ([(PKPassShareInitiationContext *)self->_context environment]!= 2)
      {
        [(PKPassShareInitiationNavigationController *)self _flowDidCancel];
        goto LABEL_8;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __81__PKPassShareInitiationNavigationController_sharePreviewViewControllerDidCancel___block_invoke;
      v15 = &unk_1E8010970;
      v16 = self;
      v6 = &v12;
    }

    [v4 dismissViewControllerAnimated:1 completion:{v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
  }

LABEL_8:
}

- (void)sharePreviewViewControllerDidContinue:(id)a3
{
  v21 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc(MEMORY[0x1E69B8A38]);
  v6 = [v21 sharedEntitlements];
  v7 = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
  v8 = [v5 initWithSharedEntitlements:v6 availableEntitlements:v7 editable:1];

  if ([v8 canAllowResharing])
  {
    v9 = [v8 globalView];
    v10 = [v9 shareability];

    v11 = *MEMORY[0x1E69BB300];
    v12 = *MEMORY[0x1E69BB2F8];
    if (v10)
    {
      v13 = *MEMORY[0x1E69BB300];
    }

    else
    {
      v13 = *MEMORY[0x1E69BB2F8];
    }

    [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BB220]];
  }

  else
  {
    v11 = *MEMORY[0x1E69BB300];
    v12 = *MEMORY[0x1E69BB2F8];
  }

  v14 = [v21 sharedEntitlements];
  v15 = [(PKSharedPassSharesController *)self->_sharesController baseNewShareForPass];
  v16 = [v15 sharedEntitlements];
  v17 = PKEqualObjects();

  v18 = MEMORY[0x1E69BB1F8];
  if (v17)
  {
    v18 = MEMORY[0x1E69BB200];
  }

  [v4 setObject:*v18 forKeyedSubscript:*MEMORY[0x1E69BB1F0]];
  v19 = [v21 activationOptions];

  if (v19)
  {
    v20 = v11;
  }

  else
  {
    v20 = v12;
  }

  [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BB218]];

  [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendEventForPage:2 button:2 specifics:v4];
  [(PKPassShareInitiationNavigationController *)self _transitionToNextStep];
}

- (void)interceptableActivityViewController:(id)a3 didInterceptActivitySelectionOfType:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (PKEqualObjects() && (PKSharingUseIMessageExtension() & 1) != 0)
  {
    v8 = 0;
    v9 = 1;
    v10 = MEMORY[0x1E69BB240];
    v11 = 1;
  }

  else if (PKEqualObjects())
  {
    v9 = 0;
    v8 = 1;
    v10 = MEMORY[0x1E69BB238];
    v11 = 2;
  }

  else
  {
    v12 = PKEqualObjects();
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69BB258];
    if (v12)
    {
      v10 = MEMORY[0x1E69BB250];
    }

    v11 = 3;
  }

  v13 = *v10;
  [(PKPassShareInitiationContext *)self->_context setFlow:v11];
  [(PKPassShareInitiationContext *)self->_context setChannelBundleIdentifier:v7];
  if (v8)
  {
    v34 = 0;
    v14 = [v6 selectedRecipientWithOutContactIdentifier:&v34];
    v15 = v34;
    [MEMORY[0x1E69B8740] defaultContactResolver];
    v16 = v8;
    v17 = v7;
    v19 = v18 = v9;
    [v19 contactForIdentifier:v15];
    v32 = v13;
    v21 = v20 = v6;

    v9 = v18;
    v7 = v17;
    v8 = v16;
    [(PKPassShareInitiationContext *)self->_context setRecipient:v21 fallbackNickname:v14];

    v6 = v20;
    v13 = v32;
  }

  sharesController = self->_sharesController;
  v23 = [(PKPassShareInitiationContext *)self->_context channelBundleIdentifier];
  LODWORD(sharesController) = [(PKSharedPassSharesController *)sharesController isSharingChannelBlockedForChannel:v23 isRecipientKnownContact:v8 | v9];

  if (sharesController)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Trying to share over blocked sharing channel", buf, 2u);
    }

    v25 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_8.isa);
    v26 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_9.isa);
    v27 = PKDisplayableErrorCustom();

    if (v8)
    {
      [(PKPassShareInitiationNavigationController *)self _flowDidCancelWithError:v27];
    }

    else
    {
      v30 = PKAlertForDisplayableErrorWithHandlers(v27, 0, 0, 0);
      v31 = [(UIViewController *)self pkui_frontMostViewController];
      [v31 presentViewController:v30 animated:1 completion:0];
    }
  }

  else
  {
    analyticsReporter = self->_analyticsReporter;
    v35 = *MEMORY[0x1E69BB248];
    v36[0] = v13;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [(PKShareInitiationAnalyticsReporter *)analyticsReporter sendEventForPage:1 button:2 specifics:v29];

    [(PKPassShareInitiationNavigationController *)self _transitionToNextStep];
  }
}

- (void)shareActivityDidFinishWithShare:(BOOL)a3
{
  v3 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  if (self->_currentStep == 2 && !a3)
  {
    [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendEventForPage:1 button:1 specifics:0];
  }

  if (v3)
  {
    v5 = [(PKPassShareInitiationContext *)self->_context flow];
    v6 = v5 == 6 || v5 == 1;
    if (v6 && self->_currentStep == 4)
    {
      sharesController = self->_sharesController;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__PKPassShareInitiationNavigationController_shareActivityDidFinishWithShare___block_invoke;
      v20[3] = &unk_1E8010970;
      v20[4] = self;
      [(PKSharedPassSharesController *)sharesController updateSharesWithCompletion:v20];
    }

    else
    {

      [(PKPassShareInitiationNavigationController *)self _transitionToNextStep];
    }

    return;
  }

  currentStep = self->_currentStep;
  if (currentStep == 6)
  {
    v9 = self;
    v10 = 5;
    goto LABEL_24;
  }

  if (currentStep == 4)
  {
    activityViewController = self->_activityViewController;
    if (activityViewController)
    {
      v12 = [(PKInterceptableActivityViewController *)activityViewController presentingViewController];

      if (!v12)
      {
        goto LABEL_27;
      }

      [(PKPassShareInitiationNavigationController *)self _revokeCreatedShareWithCompletion:0];
      v13 = self->_activityViewController;
      v14 = [(PKPassShareInitiationNavigationController *)self _placeholderActivityItem];
      v21[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(PKInterceptableActivityViewController *)v13 setItems:v15];

      v16 = self;
      v17 = 2;
    }

    else
    {
      if (!self->_carKeyMessageComposer)
      {
        return;
      }

      [(PKPassShareInitiationNavigationController *)self _revokeCreatedShareWithCompletion:0];
      carKeyMessageComposer = self->_carKeyMessageComposer;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __77__PKPassShareInitiationNavigationController_shareActivityDidFinishWithShare___block_invoke_2;
      v19[3] = &unk_1E8010970;
      v19[4] = self;
      [(MFMessageComposeViewController *)carKeyMessageComposer dismissViewControllerAnimated:1 completion:v19];
      v16 = self;
      v17 = 3;
    }

    [(PKPassShareInitiationNavigationController *)v16 _transitionToStep:v17];
    return;
  }

  if (currentStep != 2)
  {
    return;
  }

  if ([(PKPassShareInitiationContext *)self->_context environment]== 2)
  {
    v9 = self;
    v10 = 1;
LABEL_24:

    [(PKPassShareInitiationNavigationController *)v9 _transitionToStep:v10];
    return;
  }

LABEL_27:

  [(PKPassShareInitiationNavigationController *)self _flowDidCancel];
}

void __77__PKPassShareInitiationNavigationController_shareActivityDidFinishWithShare___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1552) mostRecentlyCreatedShare];
  v3 = *(a1 + 32);
  v4 = v2;
  if (v2)
  {
    [v3[197] setComposedShare:v2];
    [*(a1 + 32) _transitionToNextStep];
  }

  else
  {
    [v3 _flowDidCancel];
  }
}

void __77__PKPassShareInitiationNavigationController_shareActivityDidFinishWithShare___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1568);
  *(v1 + 1568) = 0;
}

- (void)passShareIntroductionExplanationViewControllerDidContinue:(id)a3
{
  sharesController = self->_sharesController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__PKPassShareInitiationNavigationController_passShareIntroductionExplanationViewControllerDidContinue___block_invoke;
  v4[3] = &unk_1E8013908;
  v4[4] = self;
  [(PKSharedPassSharesController *)sharesController canSendInvitationWithCompletion:v4];
}

void __103__PKPassShareInitiationNavigationController_passShareIntroductionExplanationViewControllerDidContinue___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __103__PKPassShareInitiationNavigationController_passShareIntroductionExplanationViewControllerDidContinue___block_invoke_2;
    v5[3] = &unk_1E8010970;
    v5[4] = *(a1 + 32);
    v3 = PKAlertForDisplayableErrorWithHandlers(a2, 0, v5, 0);
    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 _transitionToNextStep];
  }
}

- (void)passShareIntroductionExplanationViewControllerDidCancel:(id)a3
{
  [(PKShareInitiationAnalyticsReporter *)self->_analyticsReporter sendEventForPage:2 button:1 specifics:0];

  [(PKPassShareInitiationNavigationController *)self _flowDidCancel];
}

- (PKClientShareSecureElementPassViewControllerDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

@end