@interface TSTransferOneTimeCodeViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (TSTransferOneTimeCodeViewController)initWithSourceIccid:(id)a3 phoneNumber:(id)a4 carrierName:(id)a5 usePin:(BOOL)a6;
- (void)_cancelButtonTapped:(id)a3;
- (void)_changeOtpTextFieldState:(BOOL)a3;
- (void)_continueButtonTapped:(id)a3;
- (void)_hideKeyboard;
- (void)_installStateChanged:(id)a3;
- (void)_resendOTP;
- (void)_setupLayoutConstraint;
- (void)_startObserver;
- (void)_textFieldDidChange;
- (void)disableButtonsAndHideSpinnerText;
- (void)updateOtpState:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation TSTransferOneTimeCodeViewController

- (TSTransferOneTimeCodeViewController)initWithSourceIccid:(id)a3 phoneNumber:(id)a4 carrierName:(id)a5 usePin:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (!v6)
  {
    v16 = [v14 localizedStringForKey:@"ENTER_ONE_TIME_PASSCODE" value:&stru_28753DF48 table:@"Localizable"];

    v36 = v11;
    if ([v12 length] && (v21 = MEMORY[0x277CCACA8], objc_msgSend(v12, "formattedPhoneNumber"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stringWithFormat:", @"%@%@", @"****", v22), v18 = objc_claimAutoreleasedReturnValue(), v22, v18))
    {
      v23 = [v13 length];
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      if (v23)
      {
        v27 = [v25 localizedStringForKey:@"ONE_TIME_PASSCODE_DETAILS_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v24 stringWithFormat:v27, v18, v13];
      }

      else
      {
        v27 = [v25 localizedStringForKey:@"ONE_TIME_PASSCODE_DETAILS_NO_CARRIER_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v24 stringWithFormat:v27, v18, v35];
      }
      v20 = ;
    }

    else
    {
      if (![v13 length])
      {
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v18 localizedStringForKey:@"ONE_TIME_PASSCODE_DETAILS_NO_CARRIER_NO_PHONE_NUMBER" value:&stru_28753DF48 table:@"Localizable"];
LABEL_15:
        v11 = v36;
        LOBYTE(v6) = 0;
        goto LABEL_16;
      }

      v28 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v18 localizedStringForKey:@"ONE_TIME_PASSCODE_DETAILS_NO_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
      v20 = [v28 stringWithFormat:v26, v13];
    }

    goto LABEL_15;
  }

  v16 = [v14 localizedStringForKey:@"ENTER_ACCOUNT_PIN" value:&stru_28753DF48 table:@"Localizable"];

  if ([v13 length])
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ENTER_PIN_DETAILS_%@" value:&stru_28753DF48 table:@"Localizable"];
    v20 = [v17 stringWithFormat:v19, v13];
  }

  else
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v18 localizedStringForKey:@"ENTER_PIN_DETAILS_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];
  }

LABEL_16:

  v37.receiver = self;
  v37.super_class = TSTransferOneTimeCodeViewController;
  v29 = [(TSTransferOneTimeCodeViewController *)&v37 initWithTitle:v16 detailText:v20 icon:0];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_details, v20);
    objc_storeStrong(&v30->_sourceIccid, a3);
    v30->_usePin = v6;
    v31 = objc_alloc(MEMORY[0x277CC37B0]);
    v32 = [v31 initWithQueue:MEMORY[0x277D85CD0]];
    client = v30->_client;
    v30->_client = v32;
  }

  return v30;
}

- (void)viewDidLoad
{
  v42[2] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = TSTransferOneTimeCodeViewController;
  [(TSOBWelcomeController *)&v41 viewDidLoad];
  [(TSTransferOneTimeCodeViewController *)self _startObserver];
  [(TSTransferOneTimeCodeViewController *)self setModalInPresentation:1];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(TSTransferOneTimeCodeViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D75BB8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  otpEditor = self->_otpEditor;
  self->_otpEditor = v6;

  [(UITextField *)self->_otpEditor setBorderStyle:3];
  [(UITextField *)self->_otpEditor setKeyboardType:4];
  [(UITextField *)self->_otpEditor setTextContentType:*MEMORY[0x277D77020]];
  [(UITextField *)self->_otpEditor setClearButtonMode:1];
  [(UITextField *)self->_otpEditor setReturnKeyType:9];
  [(UITextField *)self->_otpEditor addTarget:self action:sel__textFieldDidChange forControlEvents:0x20000];
  [(UITextField *)self->_otpEditor setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_otpEditor setDelegate:self];
  if (self->_usePin)
  {
    [(UITextField *)self->_otpEditor setSecureTextEntry:1];
  }

  v8 = [objc_alloc(MEMORY[0x277D75C58]) initWithFrame:{0.0, 0.0, 320.0, 50.0}];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v42[0] = v9;
  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
  v13 = [v10 initWithTitle:v12 style:2 target:self action:sel__hideKeyboard];
  v42[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [v8 setItems:v14];

  [v8 sizeToFit];
  [(UITextField *)self->_otpEditor setInputAccessoryView:v8];
  v15 = [(TSTransferOneTimeCodeViewController *)self view];
  [v15 addSubview:self->_otpEditor];

  if (!self->_usePin)
  {
    v16 = +[SSOBLinkTrayButton linkButton];
    resendOTPButton = self->_resendOTPButton;
    self->_resendOTPButton = v16;

    v18 = self->_resendOTPButton;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"RENEW_ONE_TIME_PASSCODE" value:&stru_28753DF48 table:@"Localizable"];
    [(SSOBLinkTrayButton *)v18 setTitle:v20 forState:0];

    [(SSOBLinkTrayButton *)self->_resendOTPButton addTarget:self action:sel__resendOTP forControlEvents:64];
    v21 = [(TSTransferOneTimeCodeViewController *)self view];
    [v21 addSubview:self->_resendOTPButton];
  }

  v22 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v22;

  v24 = self->_continueButton;
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v24 setTitle:v26 forState:0];

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  v27 = [(TSTransferOneTimeCodeViewController *)self buttonTray];
  [v27 addButton:self->_continueButton];

  if (+[TSUtilities inBuddy])
  {
    v28 = [MEMORY[0x277D37650] linkButton];
    skipButton = self->_skipButton;
    self->_skipButton = v28;

    [(OBLinkTrayButton *)self->_skipButton setRole:2];
    v30 = self->_skipButton;
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v30 setTitle:v32 forState:0];

    [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__cancelButtonTapped_ forControlEvents:64];
    v33 = [(TSTransferOneTimeCodeViewController *)self buttonTray];
    [v33 addButton:self->_skipButton];

    v34 = [(TSTransferOneTimeCodeViewController *)self buttonTray];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v35 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped_];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v35;

    v34 = [(OBBaseWelcomeController *)self navigationItem];
    [v34 setLeftBarButtonItem:self->_cancelButton];
  }

  [(TSTransferOneTimeCodeViewController *)self _setupLayoutConstraint];
  v37 = [(OBBaseWelcomeController *)self navigationItem];
  [v37 setHidesBackButton:1 animated:0];

  v38 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__hideKeyboard];
  v39 = [(TSTransferOneTimeCodeViewController *)self view];
  [v39 addGestureRecognizer:v38];

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  otpEditor = self->_otpEditor;
  if (otpEditor == a3)
  {
    [(TSTransferOneTimeCodeViewController *)self _hideKeyboard];
  }

  return otpEditor != a3;
}

- (void)_hideKeyboard
{
  if ([(UITextField *)self->_otpEditor isFirstResponder])
  {
    v3 = [(TSTransferOneTimeCodeViewController *)self view];
    [v3 endEditing:1];
  }
}

- (void)_setupLayoutConstraint
{
  v3 = [(UITextField *)self->_otpEditor topAnchor];
  v4 = [(TSTransferOneTimeCodeViewController *)self headerView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:20.0];
  [v6 setActive:1];

  v7 = [(UITextField *)self->_otpEditor leadingAnchor];
  v8 = [(TSTransferOneTimeCodeViewController *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v11 = [v7 constraintGreaterThanOrEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UITextField *)self->_otpEditor trailingAnchor];
  v13 = [(TSTransferOneTimeCodeViewController *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintGreaterThanOrEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(UITextField *)self->_otpEditor centerXAnchor];
  v18 = [(TSTransferOneTimeCodeViewController *)self view];
  v19 = [v18 centerXAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  if (!self->_usePin)
  {
    v21 = [(SSOBLinkTrayButton *)self->_resendOTPButton topAnchor];
    v22 = [(UITextField *)self->_otpEditor bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:20.0];
    [v23 setActive:1];

    v27 = [(SSOBLinkTrayButton *)self->_resendOTPButton centerXAnchor];
    v24 = [(TSTransferOneTimeCodeViewController *)self view];
    v25 = [v24 centerXAnchor];
    v26 = [v27 constraintEqualToAnchor:v25];
    [v26 setActive:1];
  }
}

- (void)updateOtpState:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = a3;
    v26 = 2080;
    v27 = "[TSTransferOneTimeCodeViewController updateOtpState:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "updating otpState to %ld @%s", buf, 0x16u);
  }

  if (a3 == 1)
  {
    usePin = self->_usePin;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (usePin)
    {
      v10 = @"INCORRECT_PIN";
    }

    else
    {
      v10 = @"INCORRECT_ONE_TIME_PASSCODE";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];

    if (self->_usePin)
    {
      v12 = @"INCORRECT_PIN_MESSAGE";
    }

    else
    {
      v12 = @"INCORRECT_ONE_TIME_PASSCODE_MESSAGE";
    }

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

    objc_initWeak(buf, self);
    v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v14 preferredStyle:1];
    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"OK" value:&stru_28753DF48 table:@"Localizable"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__TSTransferOneTimeCodeViewController_updateOtpState___block_invoke;
    v22[3] = &unk_279B44550;
    objc_copyWeak(&v23, buf);
    v19 = [v16 actionWithTitle:v18 style:0 handler:v22];
    [v15 addAction:v19];

    [(TSTransferOneTimeCodeViewController *)self presentViewController:v15 animated:1 completion:0];
    objc_destroyWeak(&v23);

    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  if (a3 != 2)
  {
LABEL_13:
    [(OBWelcomeController *)self _hideButtonTraySpinner];
    [(SSOBLinkTrayButton *)self->_resendOTPButton hideSpinner];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__TSTransferOneTimeCodeViewController_updateOtpState___block_invoke_2;
    v21[3] = &unk_279B44578;
    v21[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v21);
    goto LABEL_14;
  }

  [(TSTransferOneTimeCodeViewController *)self disableButtonsAndHideSpinnerText];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

void __54__TSTransferOneTimeCodeViewController_updateOtpState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __54__TSTransferOneTimeCodeViewController_updateOtpState___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _changeOtpTextFieldState:1];
  v2 = [*(*(a1 + 32) + 1280) text];
  [*(*(a1 + 32) + 1288) setEnabled:{objc_msgSend(v2, "length") != 0}];

  [*(*(a1 + 32) + 1312) setEnabled:1];
  [*(*(a1 + 32) + 1296) setEnabled:1];
  v3 = *(*(a1 + 32) + 1304);

  return [v3 setEnabled:1];
}

- (void)disableButtonsAndHideSpinnerText
{
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:@" "];
  [(SSOBLinkTrayButton *)self->_resendOTPButton hideSpinner];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TSTransferOneTimeCodeViewController_disableButtonsAndHideSpinnerText__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __71__TSTransferOneTimeCodeViewController_disableButtonsAndHideSpinnerText__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _changeOtpTextFieldState:0];
  [*(*(a1 + 32) + 1312) setEnabled:0];
  [*(*(a1 + 32) + 1296) setEnabled:0];
  v2 = *(*(a1 + 32) + 1304);

  return [v2 setEnabled:0];
}

- (void)_continueButtonTapped:(id)a3
{
  v5 = [(UITextField *)self->_otpEditor text];
  [(TSTransferOneTimeCodeViewController *)self disableButtonsAndHideSpinnerText];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];

  [(CoreTelephonyClient *)self->_client handleUserEnteredOtp:self->_sourceIccid otp:v5 completion:&__block_literal_global_9];
}

void __61__TSTransferOneTimeCodeViewController__continueButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__TSTransferOneTimeCodeViewController__continueButtonTapped___block_invoke_cold_1();
    }
  }
}

- (void)_cancelButtonTapped:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSTransferOneTimeCodeViewController _cancelButtonTapped:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "cancelled otp verification @%s", &v7, 0xCu);
  }

  [(TSTransferOneTimeCodeViewController *)self disableButtonsAndHideSpinnerText];
  [(CoreTelephonyClient *)self->_client handleUserEnteredOtp:self->_sourceIccid otp:0 completion:&__block_literal_global_118];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  v6 = *MEMORY[0x277D85DE8];
}

void __59__TSTransferOneTimeCodeViewController__cancelButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v2;
    v7 = 2080;
    v8 = "[TSTransferOneTimeCodeViewController _cancelButtonTapped:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Otp cancelled : %@ @%s", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_changeOtpTextFieldState:(BOOL)a3
{
  v3 = a3;
  [(UITextField *)self->_otpEditor setEnabled:?];
  if (v3)
  {
    otpEditor = self->_otpEditor;

    [(UITextField *)otpEditor setTextColor:0];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] grayColor];
    [(UITextField *)self->_otpEditor setTextColor:v6];
  }
}

- (void)_installStateChanged:(id)a3
{
  v6 = a3;
  v4 = [v6 userInfo];
  v5 = [v4 objectForKey:@"PlanId"];

  if ([v5 isEqualToString:self->_sourceIccid])
  {
    [(OBWelcomeController *)self _updateTrayButtonText:v6];
  }
}

- (void)_resendOTP
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSTransferOneTimeCodeViewController _resendOTP]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "requested new OTP @%s", &v6, 0xCu);
  }

  [(TSTransferOneTimeCodeViewController *)self _changeOtpTextFieldState:0];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  [(SSOBLinkTrayButton *)self->_resendOTPButton setEnabled:0];
  [(SSOBLinkTrayButton *)self->_resendOTPButton showSpinner];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];

  [(CoreTelephonyClient *)self->_client renewOneTimePassword:self->_sourceIccid completion:&__block_literal_global_120];
  v5 = *MEMORY[0x277D85DE8];
}

void __49__TSTransferOneTimeCodeViewController__resendOTP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__TSTransferOneTimeCodeViewController__resendOTP__block_invoke_cold_1();
    }
  }
}

- (void)_startObserver
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__installStateChanged_ name:@"esim.install.state.changed" object:0];
}

- (void)_textFieldDidChange
{
  v3 = [(UITextField *)self->_otpEditor text];
  -[OBBoldTrayButton setEnabled:](self->_continueButton, "setEnabled:", [v3 length] != 0);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__TSTransferOneTimeCodeViewController__continueButtonTapped___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTransferOneTimeCodeViewController _continueButtonTapped:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]handleUserEnteredOtp failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__TSTransferOneTimeCodeViewController__resendOTP__block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTransferOneTimeCodeViewController _resendOTP]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]renewOneTimePassword failed : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end