@interface SSConfirmationCodeViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (SSConfirmationCodeViewController)initWithCardData:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)initAsMidOperationWithCarrierName:(id)a3;
- (id)initAsMidOperationWithCarrierName:(id)a3 requireGeneralConsent:(BOOL)a4;
- (void)_hideKeyboard;
- (void)_setupLayoutConstraint;
- (void)_textFieldDidEnd;
- (void)confirm:(id)a3;
- (void)userDidTapCancel;
- (void)viewDidLoad;
@end

@implementation SSConfirmationCodeViewController

- (id)initAsMidOperationWithCarrierName:(id)a3 requireGeneralConsent:(BOOL)a4
{
  v7 = a3;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONFIRMATION_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

  if ([v7 length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
    v15 = [v12 stringWithFormat:v14, v7];

    v11 = v15;
  }

  v19.receiver = self;
  v19.super_class = SSConfirmationCodeViewController;
  v16 = [(SSConfirmationCodeViewController *)&v19 initWithTitle:v9 detailText:v11 symbolName:@"antenna.radiowaves.left.and.right"];
  v17 = v16;
  if (v16)
  {
    [(SSConfirmationCodeViewController *)v16 setModalInPresentation:1];
    objc_storeStrong(&v17->_carrierName, a3);
    v17->_isMidOperation = 1;
    v17->_requireGeneralConsent = a4;
  }

  return v17;
}

- (id)initAsMidOperationWithCarrierName:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONFIRMATION_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

  if ([v5 length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
    v13 = [v10 stringWithFormat:v12, v5];

    v9 = v13;
  }

  v17.receiver = self;
  v17.super_class = SSConfirmationCodeViewController;
  v14 = [(SSConfirmationCodeViewController *)&v17 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];
  v15 = v14;
  if (v14)
  {
    [(SSConfirmationCodeViewController *)v14 setModalInPresentation:1];
    objc_storeStrong(&v15->_carrierName, a3);
    v15->_isMidOperation = 1;
  }

  return v15;
}

- (SSConfirmationCodeViewController)initWithCardData:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONFIRMATION_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

  v13.receiver = self;
  v13.super_class = SSConfirmationCodeViewController;
  v10 = [(SSConfirmationCodeViewController *)&v13 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];
  v11 = v10;
  if (v10)
  {
    [(SSConfirmationCodeViewController *)v10 setModalInPresentation:1];
    objc_storeStrong(&v11->_fauxCardData, a3);
    v11->_isMidOperation = 0;
    v11->_requireGeneralConsent = 1;
  }

  return v11;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = SSConfirmationCodeViewController;
  [(TSOBWelcomeController *)&v25 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75BB8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  codeTextField = self->_codeTextField;
  self->_codeTextField = v4;

  [(UITextField *)self->_codeTextField setBorderStyle:3];
  [(UITextField *)self->_codeTextField setKeyboardType:2];
  [(UITextField *)self->_codeTextField setTextContentType:*MEMORY[0x277D77020]];
  [(UITextField *)self->_codeTextField setClearButtonMode:1];
  [(UITextField *)self->_codeTextField setReturnKeyType:9];
  [(UITextField *)self->_codeTextField addTarget:self action:sel__textFieldDidBegin forControlEvents:0x10000];
  [(UITextField *)self->_codeTextField addTarget:self action:sel__textFieldDidEnd forControlEvents:0x40000];
  [(UITextField *)self->_codeTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_codeTextField setDelegate:self];
  v6 = [(SSConfirmationCodeViewController *)self view];
  [v6 addSubview:self->_codeTextField];

  v7 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v7;

  v9 = self->_continueButton;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v9 setTitle:v11 forState:0];

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel_confirm_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  v12 = [(SSConfirmationCodeViewController *)self buttonTray];
  [v12 addButton:self->_continueButton];

  [(SSConfirmationCodeViewController *)self setShouldAdjustButtonTrayForKeyboard:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];

  if (self->_requireGeneralConsent)
  {
    [(SSOBBoldTrayButton *)self->_continueButton setHidden:1];
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"NPHCELLULAR_CARD_INFO_NEXT" value:&stru_28753DF48 table:@"Localizable"];
    v17 = [v14 initWithTitle:v16 style:2 target:self action:sel_confirm_];
    nextButton = self->_nextButton;
    self->_nextButton = v17;

    v19 = [(OBBaseWelcomeController *)self navigationItem];
    [v19 setRightBarButtonItem:self->_nextButton];

    [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  }

  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancel];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v20;

  v22 = [(OBBaseWelcomeController *)self navigationItem];
  [v22 setLeftBarButtonItem:self->_cancelButton];

  [(SSConfirmationCodeViewController *)self _setupLayoutConstraint];
  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__hideKeyboard];
  v24 = [(SSConfirmationCodeViewController *)self view];
  [v24 addGestureRecognizer:v23];
}

- (void)userDidTapCancel
{
  if (+[TSUtilities inBuddy])
  {
    if (!+[TSUtilities areAnyPlansOnDevice])
    {
      v6 = MEMORY[0x277D75110];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"SKIP_SETUP_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"SKIP_SETUP_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
      v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

      v12 = MEMORY[0x277D750F8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"SKIP" value:&stru_28753DF48 table:@"Localizable"];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__SSConfirmationCodeViewController_userDidTapCancel__block_invoke;
      v21[3] = &unk_279B44B38;
      v21[4] = self;
      v15 = [v12 actionWithTitle:v14 style:1 handler:v21];
      [v11 addAction:v15];

      v16 = MEMORY[0x277D750F8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
      v19 = [v16 actionWithTitle:v18 style:0 handler:&__block_literal_global_7];
      [v11 addAction:v19];

      [(SSConfirmationCodeViewController *)self presentViewController:v11 animated:1 completion:0];
      return;
    }

    v3 = +[TSCellularPlanManagerCache sharedInstance];
    [v3 provideUserResponse:2 confirmationCode:&stru_28753DF48];

    WeakRetained = [(SSConfirmationCodeViewController *)self delegate];
  }

  else
  {
    v5 = +[TSCellularPlanManagerCache sharedInstance];
    [v5 provideUserResponse:2 confirmationCode:&stru_28753DF48];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  [WeakRetained userDidTapCancel];
}

void __52__SSConfirmationCodeViewController_userDidTapCancel__block_invoke(uint64_t a1)
{
  v2 = +[TSCellularPlanManagerCache sharedInstance];
  [v2 provideUserResponse:2 confirmationCode:&stru_28753DF48];

  v3 = [*(a1 + 32) delegate];
  [v3 userDidTapCancel];
}

- (void)confirm:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(UITextField *)self->_codeTextField text];
  confirmationCode = self->_confirmationCode;
  self->_confirmationCode = v4;

  v6 = [(NSString *)self->_confirmationCode length];
  v7 = _TSLogDomain();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = self->_confirmationCode;
      v16 = 138412546;
      v17 = v9;
      v18 = 2080;
      v19 = "[SSConfirmationCodeViewController confirm:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "confirmation code:%@ @%s", &v16, 0x16u);
    }

    [(UITextField *)self->_codeTextField resignFirstResponder];
    if (!self->_requireGeneralConsent)
    {
      v10 = +[TSCellularPlanManagerCache sharedInstance];
      [v10 provideUserResponse:0 confirmationCode:self->_confirmationCode];
    }

    if (self->_isMidOperation)
    {
      v7 = [(SSConfirmationCodeViewController *)self delegate];
      [v7 viewControllerDidComplete:self];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained waitForResponse:self];

      v7 = +[TSCellularPlanManagerCache sharedInstance];
      fauxCardData = self->_fauxCardData;
      v13 = self->_confirmationCode;
      v14 = objc_loadWeakRetained(&self->_delegate);
      -[NSObject addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:](v7, "addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:", fauxCardData, v13, [v14 signupUserConsentResponse], &__block_literal_global_83);
    }
  }

  else if (v8)
  {
    v16 = 136315138;
    v17 = "[SSConfirmationCodeViewController confirm:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "No Confirmation Code @%s", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  if (self->_requireGeneralConsent)
  {
    -[UIBarButtonItem setEnabled:](self->_nextButton, "setEnabled:", [v11 length] != 0);
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  codeTextField = self->_codeTextField;
  if (codeTextField == a3)
  {
    [(SSConfirmationCodeViewController *)self confirm:0];
    [(SSConfirmationCodeViewController *)self _hideKeyboard];
  }

  return codeTextField != a3;
}

- (void)_hideKeyboard
{
  if ([(UITextField *)self->_codeTextField isFirstResponder])
  {
    v3 = [(SSConfirmationCodeViewController *)self view];
    [v3 endEditing:1];
  }
}

- (void)_setupLayoutConstraint
{
  v3 = [(UITextField *)self->_codeTextField topAnchor];
  v4 = [(SSConfirmationCodeViewController *)self headerView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:20.0];
  [v6 setActive:1];

  v7 = [(UITextField *)self->_codeTextField leadingAnchor];
  v8 = [(SSConfirmationCodeViewController *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v11 = [v7 constraintGreaterThanOrEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UITextField *)self->_codeTextField trailingAnchor];
  v13 = [(SSConfirmationCodeViewController *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintGreaterThanOrEqualToAnchor:v15];
  [v16 setActive:1];

  v20 = [(UITextField *)self->_codeTextField centerXAnchor];
  v17 = [(SSConfirmationCodeViewController *)self view];
  v18 = [v17 centerXAnchor];
  v19 = [v20 constraintEqualToAnchor:v18];
  [v19 setActive:1];
}

- (void)_textFieldDidEnd
{
  [(SSOBBoldTrayButton *)self->_continueButton setHidden:0];
  v3 = [(UITextField *)self->_codeTextField text];
  -[OBBoldTrayButton setEnabled:](self->_continueButton, "setEnabled:", [v3 length] != 0);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end