@interface PKPaymentCardIneligibleViewController
- (PKPaymentCardIneligibleViewController)initWithReason:(int64_t)a3 context:(int64_t)a4;
- (id)_alertWithReason:(int64_t)a3 learnMoreURL:(id)a4 isPreloaded:(BOOL)a5;
- (id)webView;
- (void)_webViewDidLoad:(BOOL)a3 withError:(id)a4;
- (void)dealloc;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation PKPaymentCardIneligibleViewController

- (PKPaymentCardIneligibleViewController)initWithReason:(int64_t)a3 context:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentCardIneligibleViewController;
  result = [(PKPaymentCardIneligibleViewController *)&v7 init];
  if (result)
  {
    result->_reason = a3;
    result->_context = a4;
    result->_preloadLearnMoreWebView = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PKPaymentCardIneligibleViewController;
  [(PKPaymentCardIneligibleViewController *)&v11 viewDidLoad];
  v3 = [(PKPaymentCardIneligibleViewController *)self view];
  v4 = [(PKPaymentCardIneligibleViewController *)self webView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v8];

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDone_];
  v10 = [(PKPaymentCardIneligibleViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentCardIneligibleViewController;
  [(PKPaymentCardIneligibleViewController *)&v2 dealloc];
}

- (id)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_alloc(MEMORY[0x1E69853A0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_webView;
    self->_webView = v5;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    webView = self->_webView;
  }

  return webView;
}

- (void)preflightWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentCardIneligibleViewController *)self learnMoreURL];
  if (!v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "No Learn More URL was available";
      v15 = v7;
      v16 = 2;
LABEL_10:
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

LABEL_11:

    v17 = [(PKPaymentCardIneligibleViewController *)self _alertWithReason:self->_reason learnMoreURL:v5 isPreloaded:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PKPaymentCardIneligibleViewController_preflightWithCompletion___block_invoke;
    v18[3] = &unk_1E8010E20;
    v19 = v17;
    v20 = v4;
    v11 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v18);

    v12 = v20;
    goto LABEL_12;
  }

  preloadLearnMoreWebView = self->_preloadLearnMoreWebView;
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!preloadLearnMoreWebView)
  {
    if (v8)
    {
      *buf = 138412290;
      v22 = v5;
      v14 = "Skipped pre-load of the Learn More URL %@";
      v15 = v7;
      v16 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Pre-loading the learn more URL %@", buf, 0xCu);
  }

  v9 = [v4 copy];
  preflightCompletion = self->_preflightCompletion;
  self->_preflightCompletion = v9;

  v11 = [MEMORY[0x1E696AF68] requestWithURL:v5];
  v12 = [(PKPaymentCardIneligibleViewController *)self webView];
  v13 = [v12 loadRequest:v11];
LABEL_12:
}

- (id)_alertWithReason:(int64_t)a3 learnMoreURL:(id)a4 isPreloaded:(BOOL)a5
{
  v8 = a4;
  v9 = v8;
  if (!self->_learnMorePresentationHandler)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    if (a3 == 5)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (a3 != 5 && a5)
  {
LABEL_7:
    v10 = a3 != 6;
  }

LABEL_8:
  IsBridge = PKPaymentSetupContextIsBridge();
  if (PKPaymentSetupContextIsIssuerApp())
  {
    v12 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    v13 = [v12 targetDevice];

    v14 = [v13 deviceClass];
    IsBridge = PKDeviceClassIsWatch();
  }

  v40 = v9;
  v39 = a5;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v15 = PKLocalizedPaymentString(&cfstr_EligibilityUnk.isa);
        if (v10)
        {
          v17 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE";
        }

        else
        {
          v17 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE_NO_URL";
        }

        goto LABEL_31;
      case 2:
        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA060], 0);
        v15 = PKLocalizedPaymentString(&cfstr_EligibilityIne.isa);
        if (v10)
        {
          v17 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE";
        }

        else
        {
          v17 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE_NO_URL";
        }

        goto LABEL_31;
      case 3:
        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA068], 0);
        v15 = PKLocalizedPaymentString(&cfstr_EligibilityUna.isa);
        v17 = @"ELIGIBILITY_UNAVAILABLE_ERROR_MESSAGE";
LABEL_31:
        v18 = PKLocalizedPaymentString(&v17->isa);
        goto LABEL_32;
    }

LABEL_23:
    v15 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
    v17 = @"COULD_NOT_ADD_CARD_MESSAGE";
    goto LABEL_31;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA058], 0);
      v15 = PKLocalizedPaymentString(&cfstr_EligibilityHar.isa);
      v16 = @"ELIGIBILITY_HARDWARE_NOT_SUPPORTED_ERROR_MESSAGE";
      goto LABEL_26;
    }

    if (a3 == 7)
    {
      v15 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr.isa);
      v18 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_0.isa);
LABEL_32:
      v19 = v18;
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (a3 != 4)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA070], 0);
    v15 = PKLocalizedPaymentString(&cfstr_EligibilityNew.isa);
    v16 = @"ELIGIBILITY_NEWER_OS_VERSION_REQUIRED_ERROR_MESSAGE";
LABEL_26:
    v20 = PKDeviceSpecificLocalizedStringKeyForKey(v16, IsBridge);
    v19 = PKLocalizedPaymentString(v20);

    goto LABEL_33;
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA050], 0);
  v15 = PKLocalizedPaymentString(&cfstr_EligibilityAlr.isa);
  v19 = 0;
LABEL_33:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:v19 preferredStyle:1];
  if (PKPaymentSetupContextIsSetupAssistant() && (-[PKPaymentProvisioningController credentialProvisioningQueue](self->_provisioningController, "credentialProvisioningQueue"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 count], v22, v23 <= 1))
  {
    v24 = MEMORY[0x1E69DC648];
    v25 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke;
    v49[3] = &unk_1E80112E8;
    v49[4] = self;
    v26 = [v24 actionWithTitle:v25 style:0 handler:v49];
    [v21 addAction:v26];

    v27 = @"COULD_NOT_ADD_CARD_TRY_ANOTHER_CARD";
  }

  else if (a3 == 5)
  {
    v27 = @"ELIGIBILITY_CANCEL_BUTTON_TITLE";
  }

  else
  {
    v27 = @"ELIGIBILITY_OK_BUTTON_TITLE";
  }

  v28 = PKLocalizedPaymentString(&v27->isa);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_2;
  aBlock[3] = &unk_1E80112E8;
  aBlock[4] = self;
  v29 = _Block_copy(aBlock);
  if (v10)
  {
    v30 = MEMORY[0x1E69DC648];
    v31 = PKLocalizedPaymentString(&cfstr_EligibilityLea.isa);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_3;
    v43[3] = &unk_1E8017CF8;
    v47 = v39;
    v44 = v40;
    v45 = self;
    v46 = v29;
    v32 = [v30 actionWithTitle:v31 style:0 handler:v43];
    [v21 addAction:v32];
  }

  v33 = [MEMORY[0x1E69DC648] actionWithTitle:v28 style:1 handler:v29];
  [v21 addAction:v33];

  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  if (a3 == 5 && (IsSetupAssistant & 1) == 0)
  {
    v35 = MEMORY[0x1E69DC648];
    v36 = PKLocalizedPaymentString(&cfstr_EligibilitySof.isa);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_4;
    v41[3] = &unk_1E8016458;
    v41[4] = self;
    v42 = v29;
    v37 = [v35 actionWithTitle:v36 style:0 handler:v41];
    [v21 addAction:v37];
  }

  return v21;
}

uint64_t __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1064);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 1056);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 32) && (*(a1 + 56) & 1) == 0)
  {
    v3 = [*(a1 + 40) webView];
    v4 = [MEMORY[0x1E696AF68] requestWithURL:*(a1 + 32)];
    v5 = [v3 loadRequest:v4];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 40)];
  [v6 setModalPresentationStyle:2];
  (*(*(*(a1 + 40) + 1048) + 16))();
  (*(*(a1 + 48) + 16))();
}

void __83__PKPaymentCardIneligibleViewController__alertWithReason_learnMoreURL_isPreloaded___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  IsBridge = PKPaymentSetupContextIsBridge();
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  if (IsBridge)
  {
    v5 = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
  }

  else
  {
    v5 = @"prefs:root=General&path=SOFTWARE_UPDATE_LINK";
  }

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [v4 openSensitiveURL:v6 withOptions:0];

  (*(*(a1 + 40) + 16))();
}

- (void)_webViewDidLoad:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_preflightCompletion)
  {
    v8 = [(PKPaymentCardIneligibleViewController *)self _alertWithReason:self->_reason learnMoreURL:0 isPreloaded:v4];
    v9 = _Block_copy(self->_preflightCompletion);
    preflightCompletion = self->_preflightCompletion;
    self->_preflightCompletion = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKPaymentCardIneligibleViewController__webViewDidLoad_withError___block_invoke;
    block[3] = &unk_1E8017D20;
    v23 = v9;
    v21 = v8;
    v22 = v7;
    v11 = v8;
    v12 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_6:
    goto LABEL_7;
  }

  if (v6 && !v4)
  {
    v13 = MEMORY[0x1E69DC650];
    v14 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
    v15 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
    v12 = [v13 alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v16 = MEMORY[0x1E69DC648];
    v17 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__PKPaymentCardIneligibleViewController__webViewDidLoad_withError___block_invoke_2;
    v19[3] = &unk_1E80112E8;
    v19[4] = self;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v19];

    [v12 addAction:v18];
    [(PKPaymentCardIneligibleViewController *)self presentViewController:v12 animated:1 completion:0];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Learn More webview finished loading", v6, 2u);
  }

  [(PKPaymentCardIneligibleViewController *)self _webViewDidLoad:1 withError:0];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Learn More webview failed to load with error %@", &v8, 0xCu);
  }

  [(PKPaymentCardIneligibleViewController *)self _webViewDidLoad:0 withError:v6];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v12 = a4;
  v6 = a5;
  v7 = [v12 navigationType];
  if (v7 == -1)
  {
    v11 = 1;
  }

  else
  {
    if (!v7 && (PKPaymentSetupContextIsSetupAssistant() & 1) == 0)
    {
      v8 = [v12 request];
      v9 = [v8 URL];

      v10 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v10 openURL:v9 configuration:0 completionHandler:0];
    }

    v11 = 0;
  }

  v6[2](v6, v11);
}

@end