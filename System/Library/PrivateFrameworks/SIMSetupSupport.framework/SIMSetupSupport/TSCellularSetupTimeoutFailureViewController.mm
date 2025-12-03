@interface TSCellularSetupTimeoutFailureViewController
- (TSCellularSetupTimeoutFailureViewController)initWithTimeoutReason:(int64_t)reason isEmbeddedInResultView:(BOOL)view plans:(id)plans;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_continueButtonTapped;
- (void)prepare:(id)prepare;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupTimeoutFailureViewController

- (TSCellularSetupTimeoutFailureViewController)initWithTimeoutReason:(int64_t)reason isEmbeddedInResultView:(BOOL)view plans:(id)plans
{
  plansCopy = plans;
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

  if (reason == 1)
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
    v21->_timeoutReason = reason;
    v21->_isEmbeddedInResultView = view;
    objc_storeStrong(&v21->_plans, plans);
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
    boldButton = [MEMORY[0x277D37618] boldButton];
    continueButton = self->_continueButton;
    self->_continueButton = boldButton;

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

    buttonTray = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
    [buttonTray addButton:self->_continueButton];

    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];

    if (+[TSUtilities inBuddy])
    {
      if (self->_timeoutReason == 1)
      {
        navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
        [navigationItem2 setHidesBackButton:0 animated:0];

        linkButton = [MEMORY[0x277D37650] linkButton];
        skipButton = self->_skipButton;
        self->_skipButton = linkButton;

        [(OBLinkTrayButton *)self->_skipButton setRole:2];
        v16 = self->_skipButton;
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"FINISH_SETUP" value:&stru_28753DF48 table:@"Localizable"];
        [(OBLinkTrayButton *)v16 setTitle:v18 forState:0];

        [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
        buttonTray2 = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
        [buttonTray2 addButton:self->_skipButton];

        buttonTray3 = [(TSCellularSetupTimeoutFailureViewController *)self buttonTray];
        [buttonTray3 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
      }
    }
  }
}

- (void)_continueButtonTapped
{
  if (self->_timeoutReason == 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ss.user.canceled" object:@"cancel.button.event"];
  }

  delegate = [(TSCellularSetupTimeoutFailureViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  if ([(NSArray *)self->_plans count]== 1)
  {
    v4 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
    prepareCopy[2](prepareCopy, [v4 activatingState] == 2);
  }

  else
  {
    prepareCopy[2](prepareCopy, 0);
  }
}

@end