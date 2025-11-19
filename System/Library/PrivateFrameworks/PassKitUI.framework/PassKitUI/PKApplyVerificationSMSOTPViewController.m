@interface PKApplyVerificationSMSOTPViewController
- (PKApplyVerificationSMSOTPViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 verificationPage:(id)a6;
- (unint64_t)_smsOTPViewEntryErrorFromError:(id)a3;
- (void)_cancelApplication;
- (void)_nextButtonPressed;
- (void)_requestNewCode;
- (void)_submitCode:(id)a3 skippedVerification:(BOOL)a4;
- (void)_terminateFlow;
- (void)_updateViewWithEntryError:(unint64_t)a3 source:(unint64_t)a4;
- (void)_withdrawApplication;
- (void)oneTimeCodeView:(id)a3 didEnterCode:(id)a4;
- (void)showNavigationBarSpinner:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKApplyVerificationSMSOTPViewController

- (PKApplyVerificationSMSOTPViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 verificationPage:(id)a6
{
  v11 = a6;
  v20.receiver = self;
  v20.super_class = PKApplyVerificationSMSOTPViewController;
  v12 = [(PKApplyExplanationViewController *)&v20 initWithController:a3 setupDelegate:a4 context:a5 applyPage:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_verificationPage, a6);
    [(PKExplanationViewController *)v13 setShowCancelButton:1];
    v14 = objc_alloc(MEMORY[0x1E69DC708]);
    v15 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v16 = [v14 initWithTitle:v15 style:0 target:v13 action:sel__nextButtonPressed];
    nextButton = v13->_nextButton;
    v13->_nextButton = v16;

    v18 = [(PKApplyVerificationSMSOTPViewController *)v13 navigationItem];
    [v18 setRightBarButtonItem:v13->_nextButton];
  }

  return v13;
}

- (void)showNavigationBarSpinner:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKApplyVerificationSMSOTPViewController;
  [(PKApplyExplanationViewController *)&v5 showNavigationBarSpinner:?];
  self->_showingSpinner = v3;
  [(PKOneTimeCodeView *)self->_otpView setDisableEntry:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKApplyVerificationSMSOTPViewController;
  [(PKApplyExplanationViewController *)&v14 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [[PKOneTimeCodeView alloc] initWithCodeLength:[(PKApplyVerificationPage *)self->_verificationPage verificationCodeLength] delegate:self];
  otpView = self->_otpView;
  self->_otpView = v4;

  v6 = self->_otpView;
  v7 = [(PKApplyVerificationSMSOTPViewController *)self view];
  v8 = [v7 backgroundColor];
  [(PKOneTimeCodeView *)v6 setBackgroundColor:v8];

  [v3 setBodyView:self->_otpView];
  [v3 setReverseBodyViewAndBodyButtonOrder:1];
  [(PKApplyVerificationSMSOTPViewController *)self _updateViewWithEntryError:0 source:0];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PKApplyVerificationSMSOTPViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E80131F8;
  objc_copyWeak(&v12, &location);
  [(PKApplyExplanationViewController *)self setLearnMoreAction:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKApplyVerificationSMSOTPViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  [(PKDynamicProvisioningPageViewController *)self setCancelButtonAction:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __54__PKApplyVerificationSMSOTPViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[1249] & 1) == 0)
  {
    if (WeakRetained[1248] == 1)
    {
      [WeakRetained _submitCode:0 skippedVerification:1];
    }

    else
    {
      [WeakRetained _requestNewCode];
    }
  }

  return 0;
}

void __54__PKApplyVerificationSMSOTPViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelApplication];
    WeakRetained = v2;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKApplyVerificationSMSOTPViewController;
  [(PKApplyExplanationViewController *)&v4 viewDidAppear:a3];
  [(PKApplyVerificationSMSOTPViewController *)self _updateViewWithEntryError:0 source:0];
  [(PKOneTimeCodeView *)self->_otpView becomeFirstResponder];
}

- (void)oneTimeCodeView:(id)a3 didEnterCode:(id)a4
{
  if (self->_otpView == a3)
  {
    [(PKApplyVerificationSMSOTPViewController *)self _updateViewWithEntryError:0 source:1];
  }
}

- (void)_nextButtonPressed
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4 = [(PKApplyExplanationViewController *)self currentPage];
  v5 = [(PKApplyVerificationSMSOTPViewController *)self analyticsPageTag];
  v8 = *MEMORY[0x1E69BA440];
  v9[0] = *MEMORY[0x1E69BAB18];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 reportAnalyticsDictionaryForPage:v4 pageTag:v5 additionalValues:v6];

  v7 = [(PKOneTimeCodeView *)self->_otpView currentCode];
  [(PKApplyVerificationSMSOTPViewController *)self _submitCode:v7 skippedVerification:0];
}

- (void)_requestNewCode
{
  v14 = *MEMORY[0x1E69E9840];
  [(PKApplyVerificationSMSOTPViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PKApplyExplanationViewController *)self controller];
    v5 = [v4 featureApplication];
    v6 = [v5 applicationIdentifier];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Requesting new otp code for application %@", buf, 0xCu);
  }

  v7 = [(PKApplyExplanationViewController *)self controller];
  verificationPage = self->_verificationPage;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKApplyVerificationSMSOTPViewController__requestNewCode__block_invoke;
  v9[3] = &unk_1E80148F0;
  objc_copyWeak(&v10, &location);
  [v7 resendVerificationForPage:verificationPage completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__PKApplyVerificationSMSOTPViewController__requestNewCode__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKApplyVerificationSMSOTPViewController__requestNewCode__block_invoke_2;
  v6[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
}

void __58__PKApplyVerificationSMSOTPViewController__requestNewCode__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    [WeakRetained showNavigationBarSpinner:0];
    v4 = [v11 _smsOTPViewEntryErrorFromError:*(a1 + 32)];
    [v11 _updateViewWithEntryError:v4 source:0];
    if (*(a1 + 32))
    {
      v5 = [v11 controller];
      v6 = *(a1 + 32);
      v7 = [v11 currentPage];
      v8 = [v11 analyticsPageTag];
      [v5 reportAnalyticsError:v6 page:v7 pageTag:v8 additionalValues:0];

      v9 = [v11 _shouldDisplayErrorForEntryError:v4];
      v3 = v11;
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = PKAlertForDisplayableErrorWithHandlers(*(a1 + 32), 0, 0, 0);
      if (v10)
      {
        [v11 presentViewController:v10 animated:1 completion:0];
      }
    }

    else
    {
      [v11[153] clearCurrentCode];
    }

    v3 = v11;
  }

LABEL_9:
}

- (void)_submitCode:(id)a3 skippedVerification:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_initWeak(&location, self);
  [(PKApplyVerificationSMSOTPViewController *)self showNavigationBarSpinner:1];
  v7 = [(PKApplyExplanationViewController *)self controller];
  v8 = [v7 featureApplication];
  v9 = [v8 applicationIdentifier];

  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v11)
    {
      *buf = 138412290;
      v20 = v9;
      v12 = "User skipped sms otp for application %@";
LABEL_6:
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

  else if (v11)
  {
    *buf = 138412290;
    v20 = v9;
    v12 = "Submitting otp code for application %@";
    goto LABEL_6;
  }

  v13 = objc_alloc_init(MEMORY[0x1E69B85E8]);
  [v13 setData:v6];
  [v13 setSkippedVerification:v4];
  v14 = [(PKApplyExplanationViewController *)self controller];
  verificationPage = self->_verificationPage;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke;
  v16[3] = &unk_1E80162F0;
  objc_copyWeak(&v17, &location);
  [v14 submitVerificationPage:verificationPage verificationInfo:v13 completion:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke_3;
    aBlock[3] = &unk_1E8011D28;
    aBlock[4] = WeakRetained;
    v4 = _Block_copy(aBlock);
    v5 = [v3 _smsOTPViewEntryErrorFromError:*(a1 + 32)];
    [v3 _updateViewWithEntryError:v5 source:0];
    if (*(a1 + 32))
    {
      v6 = [v3 controller];
      v7 = *(a1 + 32);
      v8 = [v3 currentPage];
      v9 = [v3 analyticsPageTag];
      [v6 reportAnalyticsError:v7 page:v8 pageTag:v9 additionalValues:0];

      if ([v3 _shouldDisplayErrorForEntryError:v5])
      {
        v10 = PKAlertForDisplayableErrorWithHandlers(*(a1 + 32), 0, 0, 0);
        if (v10)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke_4;
          v13[3] = &unk_1E8010B50;
          v14 = v4;
          [v3 presentViewController:v10 animated:1 completion:v13];
        }

        else
        {
          (*(v4 + 2))(v4, 1);
        }
      }

      else
      {
        (*(v4 + 2))(v4, 1);
      }
    }

    else
    {
      v11 = *(a1 + 40);
      [v3[153] resignFirstResponder];
      if (v11)
      {
        v12 = [v3 navigationController];
        [v12 pk_presentPaymentSetupViewController:*(a1 + 40) animated:1 completion:v4];
      }

      else
      {
        (*(v4 + 2))(v4, 0);
      }
    }
  }
}

uint64_t __75__PKApplyVerificationSMSOTPViewController__submitCode_skippedVerification___block_invoke_3(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = [*(a1 + 32) controller];
    [v5 endApplyFlow];

    v6 = *(a1 + 32);

    return [v6 _terminateFlow];
  }

  return result;
}

- (unint64_t)_smsOTPViewEntryErrorFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69BB840]];

    if (v6)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v4 = v8;
    }

    v9 = [v4 domain];
    v10 = *MEMORY[0x1E69BC300];
    v11 = v9;
    v12 = v11;
    if (v11 == v10)
    {
    }

    else
    {
      if (!v11 || !v10)
      {

        goto LABEL_16;
      }

      v13 = [v11 isEqualToString:v10];

      if (!v13)
      {
        goto LABEL_16;
      }
    }

    v15 = [v4 code];
    if (v15 > 40455)
    {
      if (v15 == 40456)
      {
        v14 = 2;
        goto LABEL_17;
      }

      if (v15 == 40457)
      {
        v14 = 3;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v15 == 40423)
    {
      v14 = 5;
      goto LABEL_17;
    }

    if (v15 == 40454)
    {
      v14 = 4;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (void)_cancelApplication
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKApplyVerificationSMSOTPViewController__cancelApplication__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PKApplyExplanationViewController *)self controller];
  v5 = [v4 cancelAlertWithContinueAction:v3];

  if (v5)
  {
    v6 = [(PKApplyVerificationSMSOTPViewController *)self navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __61__PKApplyVerificationSMSOTPViewController__cancelApplication__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) controller];
  v3 = [*(a1 + 32) currentPage];
  v4 = [*(a1 + 32) analyticsPageTag];
  v5 = *MEMORY[0x1E69BA440];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BA448];
  v10[0] = *MEMORY[0x1E69BA6F0];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 reportAnalyticsDictionaryForPage:v3 pageTag:v4 additionalValues:v7];

  return [*(a1 + 32) _withdrawApplication];
}

- (void)_withdrawApplication
{
  [(PKApplyVerificationSMSOTPViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PKApplyVerificationSMSOTPViewController__withdrawApplication__block_invoke;
  v4[3] = &unk_1E80162F0;
  objc_copyWeak(&v5, &location);
  [v3 withdrawApplicationWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__PKApplyVerificationSMSOTPViewController__withdrawApplication__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained navigationController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__PKApplyVerificationSMSOTPViewController__withdrawApplication__block_invoke_2;
      v12[3] = &unk_1E8011D28;
      v12[4] = v8;
      [v9 pk_presentPaymentSetupViewController:v5 animated:1 completion:v12];
    }

    else
    {
      [WeakRetained showNavigationBarSpinner:0];
      if (!v6)
      {
        v11 = [v8 controller];
        [v11 endApplyFlow];

        [v8 _terminateFlow];
        goto LABEL_7;
      }

      v9 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
      v10 = [v8 navigationController];
      [v10 presentViewController:v9 animated:1 completion:0];
    }
  }

LABEL_7:
}

uint64_t __63__PKApplyVerificationSMSOTPViewController__withdrawApplication__block_invoke_2(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

- (void)_terminateFlow
{
  v3 = [(PKApplyExplanationViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyVerificationSMSOTPViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_updateViewWithEntryError:(unint64_t)a3 source:(unint64_t)a4
{
  v19 = [(PKExplanationViewController *)self explanationView];
  if (a3 == 1)
  {
    a3 = [(PKOneTimeCodeView *)self->_otpView entryError];
  }

  v7 = 36.0;
  if (a3 > 3)
  {
    if (a3 - 4 < 2)
    {
      v12 = PKLocalizedPaymentString(&cfstr_ContinueWithPh.isa);
      [v19 setBodyButtonText:v12];

      v9 = 0;
      v11 = 0;
      v13 = 1;
      v7 = 36.0;
      v10 = 1;
      goto LABEL_19;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else if (a3)
  {
    v8 = a3 == 2;
    v9 = 0;
    v10 = a3 != 2 && a3 == 3;
    v11 = 0;
    v7 = 36.0;
  }

  else
  {
    v14 = [(PKOneTimeCodeView *)self->_otpView currentCode];
    v15 = [v14 length];
    v16 = [(PKApplyVerificationPage *)self->_verificationPage verificationCodeLength];

    v10 = 0;
    v17 = a4 == 1;
    v9 = v15 == v16;
    v11 = v15 == v16 && v17;
    v8 = !v11;
    v7 = 24.0;
  }

  v18 = PKLocalizedPaymentString(&cfstr_SendNewCode.isa);
  [v19 setBodyButtonText:v18];

  if (v8)
  {
    [(PKOneTimeCodeView *)self->_otpView becomeFirstResponder];
    v13 = 0;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_19:
  [(PKOneTimeCodeView *)self->_otpView resignFirstResponder];
LABEL_20:
  self->_isBodyButtonSkipToDocUpload = v13;
  [v19 setBodyViewPadding:v7];
  [(PKOneTimeCodeView *)self->_otpView setDisableEntry:v10];
  [(UIBarButtonItem *)self->_nextButton setEnabled:v9];
  [(PKOneTimeCodeView *)self->_otpView setEntryError:a3];
  [v19 setNeedsLayout];
  if (v11)
  {
    [(PKApplyVerificationSMSOTPViewController *)self _nextButtonPressed];
  }
}

@end