@interface SSConfirmationCodeViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (SSConfirmationCodeViewController)initWithCardData:(id)data;
- (TSSIMSetupFlowDelegate)delegate;
- (id)initAsMidOperationWithCarrierName:(id)name;
- (id)initAsMidOperationWithCarrierName:(id)name requireGeneralConsent:(BOOL)consent;
- (void)_hideKeyboard;
- (void)_setupLayoutConstraint;
- (void)_textFieldDidEnd;
- (void)confirm:(id)confirm;
- (void)userDidTapCancel;
- (void)viewDidLoad;
@end

@implementation SSConfirmationCodeViewController

- (id)initAsMidOperationWithCarrierName:(id)name requireGeneralConsent:(BOOL)consent
{
  nameCopy = name;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONFIRMATION_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

  if ([nameCopy length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
    nameCopy = [v12 stringWithFormat:v14, nameCopy];

    v11 = nameCopy;
  }

  v19.receiver = self;
  v19.super_class = SSConfirmationCodeViewController;
  v16 = [(SSConfirmationCodeViewController *)&v19 initWithTitle:v9 detailText:v11 symbolName:@"antenna.radiowaves.left.and.right"];
  v17 = v16;
  if (v16)
  {
    [(SSConfirmationCodeViewController *)v16 setModalInPresentation:1];
    objc_storeStrong(&v17->_carrierName, name);
    v17->_isMidOperation = 1;
    v17->_requireGeneralConsent = consent;
  }

  return v17;
}

- (id)initAsMidOperationWithCarrierName:(id)name
{
  nameCopy = name;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONFIRMATION_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

  if ([nameCopy length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CTCELLULARPLAN_CONFIRMATION_CODE_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
    nameCopy = [v10 stringWithFormat:v12, nameCopy];

    v9 = nameCopy;
  }

  v17.receiver = self;
  v17.super_class = SSConfirmationCodeViewController;
  v14 = [(SSConfirmationCodeViewController *)&v17 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];
  v15 = v14;
  if (v14)
  {
    [(SSConfirmationCodeViewController *)v14 setModalInPresentation:1];
    objc_storeStrong(&v15->_carrierName, name);
    v15->_isMidOperation = 1;
  }

  return v15;
}

- (SSConfirmationCodeViewController)initWithCardData:(id)data
{
  dataCopy = data;
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
    objc_storeStrong(&v11->_fauxCardData, data);
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
  view = [(SSConfirmationCodeViewController *)self view];
  [view addSubview:self->_codeTextField];

  v7 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v7;

  v9 = self->_continueButton;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v9 setTitle:v11 forState:0];

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel_confirm_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  buttonTray = [(SSConfirmationCodeViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

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

    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setRightBarButtonItem:self->_nextButton];

    [(UIBarButtonItem *)self->_nextButton setEnabled:0];
  }

  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancel];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v20;

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:self->_cancelButton];

  [(SSConfirmationCodeViewController *)self _setupLayoutConstraint];
  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__hideKeyboard];
  view2 = [(SSConfirmationCodeViewController *)self view];
  [view2 addGestureRecognizer:v23];
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

- (void)confirm:(id)confirm
{
  v20 = *MEMORY[0x277D85DE8];
  text = [(UITextField *)self->_codeTextField text];
  confirmationCode = self->_confirmationCode;
  self->_confirmationCode = text;

  v6 = [(NSString *)self->_confirmationCode length];
  delegate = _TSLogDomain();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = self->_confirmationCode;
      v16 = 138412546;
      v17 = v9;
      v18 = 2080;
      v19 = "[SSConfirmationCodeViewController confirm:]";
      _os_log_impl(&dword_262AA8000, delegate, OS_LOG_TYPE_DEFAULT, "confirmation code:%@ @%s", &v16, 0x16u);
    }

    [(UITextField *)self->_codeTextField resignFirstResponder];
    if (!self->_requireGeneralConsent)
    {
      v10 = +[TSCellularPlanManagerCache sharedInstance];
      [v10 provideUserResponse:0 confirmationCode:self->_confirmationCode];
    }

    if (self->_isMidOperation)
    {
      delegate = [(SSConfirmationCodeViewController *)self delegate];
      [delegate viewControllerDidComplete:self];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained waitForResponse:self];

      delegate = +[TSCellularPlanManagerCache sharedInstance];
      fauxCardData = self->_fauxCardData;
      v13 = self->_confirmationCode;
      v14 = objc_loadWeakRetained(&self->_delegate);
      -[NSObject addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:](delegate, "addNewPlanWithCardData:confirmationCode:userConsentResponse:completion:", fauxCardData, v13, [v14 signupUserConsentResponse], &__block_literal_global_83);
    }
  }

  else if (v8)
  {
    v16 = 136315138;
    v17 = "[SSConfirmationCodeViewController confirm:]";
    _os_log_impl(&dword_262AA8000, delegate, OS_LOG_TYPE_DEFAULT, "No Confirmation Code @%s", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if (self->_requireGeneralConsent)
  {
    -[UIBarButtonItem setEnabled:](self->_nextButton, "setEnabled:", [v11 length] != 0);
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  codeTextField = self->_codeTextField;
  if (codeTextField == return)
  {
    [(SSConfirmationCodeViewController *)self confirm:0];
    [(SSConfirmationCodeViewController *)self _hideKeyboard];
  }

  return codeTextField != return;
}

- (void)_hideKeyboard
{
  if ([(UITextField *)self->_codeTextField isFirstResponder])
  {
    view = [(SSConfirmationCodeViewController *)self view];
    [view endEditing:1];
  }
}

- (void)_setupLayoutConstraint
{
  topAnchor = [(UITextField *)self->_codeTextField topAnchor];
  headerView = [(SSConfirmationCodeViewController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v6 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:20.0];
  [v6 setActive:1];

  leadingAnchor = [(UITextField *)self->_codeTextField leadingAnchor];
  contentView = [(SSConfirmationCodeViewController *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v11 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [v11 setActive:1];

  trailingAnchor = [(UITextField *)self->_codeTextField trailingAnchor];
  contentView2 = [(SSConfirmationCodeViewController *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v16 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  [v16 setActive:1];

  centerXAnchor = [(UITextField *)self->_codeTextField centerXAnchor];
  view = [(SSConfirmationCodeViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v19 setActive:1];
}

- (void)_textFieldDidEnd
{
  [(SSOBBoldTrayButton *)self->_continueButton setHidden:0];
  text = [(UITextField *)self->_codeTextField text];
  -[OBBoldTrayButton setEnabled:](self->_continueButton, "setEnabled:", [text length] != 0);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end