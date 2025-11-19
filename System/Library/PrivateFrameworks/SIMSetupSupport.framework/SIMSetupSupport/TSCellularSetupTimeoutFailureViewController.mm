@interface TSCellularSetupTimeoutFailureViewController
- (TSCellularSetupTimeoutFailureViewController)initWithTimeoutReason:(int64_t)a3 isEmbeddedInResultView:(BOOL)a4 plans:(id)a5;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_continueButtonTapped;
- (void)prepare:(id)a3;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupTimeoutFailureViewController

- (TSCellularSetupTimeoutFailureViewController)initWithTimeoutReason:(int64_t)a3 isEmbeddedInResultView:(BOOL)a4 plans:(id)a5
{
  v25 = a5;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACTIVATE_EXCEED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  LODWORD(v8) = +[TSUtilities inBuddy];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v8)
  {
    v12 = @"ACTIVATE_EXCEED_DETAIL";
  }

  else
  {
    v12 = @"ACTIVATE_EXCEED_DETAIL_POSTBUDDY";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

  if (a3 == 1)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ERROR_TRANSFER_ITEM_ACTIVATION_TIMEOUT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    LOBYTE(v14) = +[TSUtilities inBuddy];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    if (v14)
    {
      v18 = @"ERROR_TRANSFER_ITEM_CONSENT_TIMEOUT_MESSAGE_BUDDY";
    }

    else
    {
      v18 = @"ERROR_TRANSFER_ITEM_CONSENT_TIMEOUT_MESSAGE";
    }

    v20 = [v16 localizedStringForKey:v18 value:&stru_28753DF48 table:@"Localizable"];

    v19 = 0;
    v13 = v20;
  }

  else
  {
    v19 = @"antenna.radiowaves.left.and.right";
    v15 = v9;
  }

  v26.receiver = self;
  v26.super_class = TSCellularSetupTimeoutFailureViewController;
  v21 = [(TSCellularSetupTimeoutFailureViewController *)&v26 initWithTitle:v15 detailText:v13 symbolName:v19];
  v22 = v21;
  if (v21)
  {
    v21->_timeoutReason = a3;
    v21->_isEmbeddedInResultView = a4;
    objc_storeStrong(&v21->_plans, a5);
  }

  return v22;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = TSCellularSetupTimeoutFailureViewController;
  [(TSOBWelcomeController *)&v21 viewDidLoad];
  if (!self->_isEmbeddedInResultView)
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    continueButton = self->_continueButton;
    self->_continueButton = v3;

    [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
    v5 = +[TSUtilities inBuddy];
    v6 = self->_continueButton;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v5)
    {
      v9 = @"CONTINUE";
    }

    else
    {
      v9 = @"DONE";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];
    [(OBBoldTrayButton *)v6 setTitle:v10 forState:0];

    v11 = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
    [v11 addButton:self->_continueButton];

    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    v12 = [(OBBaseWelcomeController *)self navigationItem];
    [v12 setHidesBackButton:1 animated:0];

    if (+[TSUtilities inBuddy])
    {
      if (self->_timeoutReason == 1)
      {
        v13 = [(OBBaseWelcomeController *)self navigationItem];
        [v13 setHidesBackButton:0 animated:0];

        v14 = [MEMORY[0x277D37650] linkButton];
        skipButton = self->_skipButton;
        self->_skipButton = v14;

        [(OBLinkTrayButton *)self->_skipButton setRole:2];
        v16 = self->_skipButton;
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"FINISH_SETUP" value:&stru_28753DF48 table:@"Localizable"];
        [(OBLinkTrayButton *)v16 setTitle:v18 forState:0];

        [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
        v19 = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
        [v19 addButton:self->_skipButton];

        v20 = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
      }
    }
  }
}

- (void)_continueButtonTapped
{
  if (self->_timeoutReason == 1)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"ss.user.canceled" object:@"cancel.button.event"];
  }

  v4 = [(TSCellularSetupTimeoutFailureViewController *)self delegate];
  [v4 viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id)a3
{
  v5 = a3;
  if ([(NSArray *)self->_plans count]== 1)
  {
    v4 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
    v5[2](v5, [v4 activatingState] == 2);
  }

  else
  {
    v5[2](v5, 0);
  }
}

@end