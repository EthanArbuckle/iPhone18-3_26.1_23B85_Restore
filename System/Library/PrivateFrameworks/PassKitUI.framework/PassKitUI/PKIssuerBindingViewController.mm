@interface PKIssuerBindingViewController
- (PKIssuerBindingViewController)initWithIssuerData:(id)a3 signature:(id)a4 referralSource:(unint64_t)a5;
- (PKIssuerBindingViewControllerDelegate)delegate;
- (id)_alertViewControllerForError:(id)a3;
- (void)_cancel;
- (void)_confirmSecurityCapabilitiesWithCompletion:(id)a3;
- (void)_enableControls;
- (void)_presentFailureWithError:(id)a3;
- (void)_sendAnalyticsDidTapButton:(id)a3;
- (void)_sendAnalyticsViewVisibilityUpdateWithType:(id)a3;
- (void)_sendAuthenticationEvent;
- (void)_sendInternalErrorEventWithError:(id)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKIssuerBindingViewController

- (PKIssuerBindingViewController)initWithIssuerData:(id)a3 signature:(id)a4 referralSource:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = PKIssuerBindingViewController;
  v11 = [(PKExplanationViewController *)&v28 init];
  if (!v11)
  {
LABEL_10:
    v23 = v11;
    goto LABEL_11;
  }

  if (PKValidateIssuerBindingData())
  {
    v27 = 0;
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v27];
    v13 = v27;
    v14 = objc_alloc(MEMORY[0x1E69B88B8]);
    v15 = [v12 objectForKey:@"fidoProfile"];
    v16 = [v14 initWithDictionary:v15];

    v17 = [v16 relyingPartyIdentifier];
    relyingPartyIdentifier = v11->_relyingPartyIdentifier;
    v11->_relyingPartyIdentifier = v17;

    v11->_source = a5;
    v19 = [v12 PKStringForKey:@"displayableName"];
    issuerName = v11->_issuerName;
    v11->_issuerName = v19;

    v21 = PKHasVerifiedPrimaryAppleAccount();
    if (v21)
    {
      v22 = PKPrimaryAppleAccountFormattedUsername();
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v11->_accountName, v22);
    if (v21)
    {
    }

    v24 = [MEMORY[0x1E69B8A58] sharedInstance];
    passLibrary = v11->_passLibrary;
    v11->_passLibrary = v24;

    [(PKPassLibrary *)v11->_passLibrary addDelegate:v11];
    objc_storeStrong(&v11->_issuerData, a3);
    [(PKExplanationViewController *)v11 setExplanationViewControllerDelegate:v11];

    goto LABEL_10;
  }

  v23 = 0;
LABEL_11:

  return v23;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKIssuerBindingViewController;
  [(PKIssuerBindingViewController *)&v4 viewDidAppear:a3];
  [(PKIssuerBindingViewController *)self _sendAnalyticsViewVisibilityUpdateWithType:*MEMORY[0x1E69BA818]];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKIssuerBindingViewController;
  [(PKExplanationViewController *)&v14 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  [(PKExplanationViewController *)self setShowCancelButton:1];
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setDelegate:self];
  [v3 setShowPrivacyView:0];
  [v3 setBodyDataDetectorTypes:0];
  v4 = PKLocalizedString(&cfstr_Wallet_1.isa);
  [v3 setTitleText:v4];

  v5 = PKUIGetWalletAppIconWithSize(76.0, 76.0);
  [v3 setImage:v5];
  IsAvailable = PKPearlIsAvailable();
  accountName = self->_accountName;
  if (!IsAvailable)
  {
    if (accountName)
    {
      issuerName = self->_issuerName;
      v13 = self->_accountName;
      v8 = @"ISSUER_DATA_GENERATION_BODY_TEXT_TOUCH_ID";
      goto LABEL_6;
    }

    v12 = self->_issuerName;
    v9 = @"ISSUER_DATA_GENERATION_BODY_TEXT_TOUCH_ID_MISSING_ACCOUNT";
LABEL_9:
    PKLocalizedPaymentString(&v9->isa, &stru_1F3BD5BF0.isa, v12);
    goto LABEL_10;
  }

  if (!accountName)
  {
    v12 = self->_issuerName;
    v9 = @"ISSUER_DATA_GENERATION_BODY_TEXT_FACE_ID_MISSING_ACCOUNT";
    goto LABEL_9;
  }

  issuerName = self->_issuerName;
  v13 = self->_accountName;
  v8 = @"ISSUER_DATA_GENERATION_BODY_TEXT_FACE_ID";
LABEL_6:
  PKLocalizedPaymentString(&v8->isa, &stru_1F3BD6370.isa, issuerName, v13);
  v10 = LABEL_10:;
  [v3 setBodyText:v10];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKIssuerBindingViewController;
  [(PKIssuerBindingViewController *)&v4 viewDidDisappear:a3];
  [(PKIssuerBindingViewController *)self _sendAnalyticsViewVisibilityUpdateWithType:*MEMORY[0x1E69BA820]];
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  [(PKIssuerBindingViewController *)self _sendAnalyticsDidTapButton:*MEMORY[0x1E69BA468]];

  [(PKIssuerBindingViewController *)self _cancel];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  [(PKIssuerBindingViewController *)self _sendAnalyticsDidTapButton:*MEMORY[0x1E69BA500]];
  [(PKExplanationViewController *)self showNavigationBarSpinner:1];
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = [v5 dockView];
  [v6 setButtonsEnabled:0];

  if (!self->_accountName)
  {
    [(PKIssuerBindingViewController *)self _enableControls];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBAD0] code:1 userInfo:0];
    [(PKIssuerBindingViewController *)self _presentFailureWithError:v7];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke;
  v8[3] = &unk_1E8013B00;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(PKIssuerBindingViewController *)self _confirmSecurityCapabilitiesWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = *(WeakRetained + 138);
      v9 = *(*(a1 + 32) + 1112);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_2;
      v13[3] = &unk_1E80197A0;
      v13[4] = v7;
      [v8 requestIssuerBoundPassesWithBindingWithData:v9 automaticallyProvision:0 withCompletion:v13];
    }

    else if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_4;
      block[3] = &unk_1E8010A10;
      block[4] = WeakRetained;
      v12 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_5;
      v10[3] = &unk_1E8010970;
      v10[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
    }
  }
}

void __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_3;
  block[3] = &unk_1E8010A88;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _enableControls];
  if (*(a1 + 40) && !*(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1128));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((*(a1 + 32) + 1128));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained((*(a1 + 32) + 1128));
        [v8 issuerBindingViewController:*(a1 + 32) didFinishWithPassesData:*(a1 + 40)];
      }
    }
  }

  else
  {
    [*(a1 + 32) _enableControls];
    [*(a1 + 32) _sendInternalErrorEventWithError:*(a1 + 48)];
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);

    [v2 _presentFailureWithError:v3];
  }
}

uint64_t __66__PKIssuerBindingViewController_explanationViewDidSelectContinue___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _enableControls];
  [*(a1 + 32) _sendInternalErrorEventWithError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _presentFailureWithError:v3];
}

- (void)_enableControls
{
  [(PKExplanationViewController *)self showNavigationBarSpinner:0];
  v4 = [(PKExplanationViewController *)self explanationView];
  v3 = [v4 dockView];
  [v3 setButtonsEnabled:1];
}

- (void)_confirmSecurityCapabilitiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:24 context:0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKIssuerBindingViewController__confirmSecurityCapabilitiesWithCompletion___block_invoke;
  v7[3] = &unk_1E8022F50;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(PKSecurityCapabilitiesController *)v5 presentSecurityRepairFlowWithPresentingViewController:self completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__PKIssuerBindingViewController__confirmSecurityCapabilitiesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKIssuerBindingViewController__confirmSecurityCapabilitiesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E8012038;
  objc_copyWeak(v10, (a1 + 40));
  v10[1] = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(v10);
}

void __76__PKIssuerBindingViewController__confirmSecurityCapabilitiesWithCompletion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PKSecurityCapabilitiesErrorToString(*(a1 + 56));
      v5 = *(a1 + 32);
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Finished presenting security repair flow with upgrade error %@, error %@", &v8, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6 == 3)
    {
      v7 = *(*(a1 + 40) + 16);
    }

    else if (v6)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Issuer Binding VC - Aborting binding because user failed to upgrade to HSA2", &v8, 2u);
      }

      v7 = *(*(a1 + 40) + 16);
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
  }
}

- (void)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 issuerBindingViewControllerDidCancel:self];
  }

  else
  {

    [(PKIssuerBindingViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentFailureWithError:(id)a3
{
  v4 = [(PKIssuerBindingViewController *)self _alertViewControllerForError:a3];
  [(PKIssuerBindingViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_alertViewControllerForError:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 code] == 1;
  v7 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_3.isa);
  if (v6)
  {
    v8 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_4.isa);
    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_5.isa);
    v11 = [v9 actionWithTitle:v10 style:0 handler:&__block_literal_global_229];
    [v5 addObject:v11];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69DC648];
    v13 = PKLocalizedString(&cfstr_Cancel.isa);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__PKIssuerBindingViewController__alertViewControllerForError___block_invoke_2;
    v29[3] = &unk_1E8012CC0;
    objc_copyWeak(&v30, &location);
    v14 = [v12 actionWithTitle:v13 style:1 handler:v29];
    [v5 addObject:v14];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_6.isa);
    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v17 = [v15 actionWithTitle:v16 style:0 handler:0];
    [v5 addObject:v17];
  }

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v20)
  {
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v18 addAction:{*(*(&v25 + 1) + 8 * i), v25}];
      }

      v20 = [v19 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v20);
  }

  if ([v19 count])
  {
    v23 = [v19 objectAtIndexedSubscript:0];
    [v18 setPreferredAction:v23];
  }

  return v18;
}

void __62__PKIssuerBindingViewController__alertViewControllerForError___block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __62__PKIssuerBindingViewController__alertViewControllerForError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancel];
    WeakRetained = v2;
  }
}

- (void)_sendAnalyticsViewVisibilityUpdateWithType:(id)a3
{
  v15[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB710];
  v6 = a3;
  [v4 reporterForSubject:v5];

  v7 = MEMORY[0x1E69B8540];
  v8 = *MEMORY[0x1E69BABE8];
  v14[0] = *MEMORY[0x1E69BA680];
  v14[1] = v8;
  v9 = *MEMORY[0x1E69BABF8];
  v15[0] = v6;
  v15[1] = v9;
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  if (!relyingPartyIdentifier)
  {
    relyingPartyIdentifier = *MEMORY[0x1E69BB3A8];
  }

  v15[2] = relyingPartyIdentifier;
  v11 = *MEMORY[0x1E69BB0E0];
  v14[2] = *MEMORY[0x1E69BB3E0];
  v14[3] = v11;
  v12 = AnalyticsVASReferralSource();
  v15[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  [v7 subject:v5 sendEvent:v13];
}

- (void)_sendAnalyticsDidTapButton:(id)a3
{
  v15[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB710];
  v6 = a3;
  [v4 reporterForSubject:v5];

  v7 = MEMORY[0x1E69B8540];
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BABE8];
  v14[0] = *MEMORY[0x1E69BA680];
  v14[1] = v9;
  v10 = *MEMORY[0x1E69BABF8];
  v15[0] = v8;
  v15[1] = v10;
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  if (!relyingPartyIdentifier)
  {
    relyingPartyIdentifier = *MEMORY[0x1E69BB3A8];
  }

  v12 = *MEMORY[0x1E69BA440];
  v14[2] = *MEMORY[0x1E69BB3E0];
  v14[3] = v12;
  v15[2] = relyingPartyIdentifier;
  v15[3] = v6;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  [v7 subject:v5 sendEvent:v13];
}

- (void)_sendInternalErrorEventWithError:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB710];
  v6 = a3;
  [v4 reporterForSubject:v5];

  v7 = MEMORY[0x1E69B8540];
  v8 = *MEMORY[0x1E69BABE8];
  v14[0] = *MEMORY[0x1E69BA370];
  v9 = *MEMORY[0x1E69BA678];
  v13[0] = v8;
  v13[1] = v9;
  v10 = AnalyticsVASErrorTypeForError();

  v13[2] = *MEMORY[0x1E69BB3E0];
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  if (!relyingPartyIdentifier)
  {
    relyingPartyIdentifier = *MEMORY[0x1E69BB3A8];
  }

  v14[1] = v10;
  v14[2] = relyingPartyIdentifier;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v7 subject:v5 sendEvent:v12];
}

- (void)_sendAuthenticationEvent
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69BB710];
  [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB710]];

  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BA760];
  v6 = *MEMORY[0x1E69BABE8];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v6;
  v7 = *MEMORY[0x1E69BA370];
  v11[0] = v5;
  v11[1] = v7;
  v10[2] = *MEMORY[0x1E69BB3E0];
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  if (!relyingPartyIdentifier)
  {
    relyingPartyIdentifier = *MEMORY[0x1E69BB3A8];
  }

  v11[2] = relyingPartyIdentifier;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 subject:v3 sendEvent:v9];
}

- (PKIssuerBindingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end