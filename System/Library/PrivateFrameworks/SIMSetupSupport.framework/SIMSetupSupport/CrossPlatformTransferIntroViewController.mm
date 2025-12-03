@interface CrossPlatformTransferIntroViewController
- (CrossPlatformTransferIntroViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)viewDidLoad;
@end

@implementation CrossPlatformTransferIntroViewController

- (CrossPlatformTransferIntroViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CROSSPLATFORM_NATIVE_CAMERA_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  LODWORD(v3) = +[TSUtilities isGreenTeaCapable];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"CROSSPLATFORM_NATIVE_CAMERA_DETAIL_WLAN";
  }

  else
  {
    v7 = @"CROSSPLATFORM_NATIVE_CAMERA_DETAIL_WIFI";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_28753DF48 table:@"Localizable"];

  v11.receiver = self;
  v11.super_class = CrossPlatformTransferIntroViewController;
  v9 = [(CrossPlatformTransferIntroViewController *)&v11 initWithTitle:v4 detailText:v8 symbolName:@"antenna.radiowaves.left.and.right"];

  return v9;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CrossPlatformTransferIntroViewController;
  [(TSOBWelcomeController *)&v16 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(CrossPlatformTransferIntroViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v7 = +[SSOBLinkTrayButton linkButton];
  LearnMoreButton = self->_LearnMoreButton;
  self->_LearnMoreButton = v7;

  v9 = self->_LearnMoreButton;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBLinkTrayButton *)v9 setTitle:v11 forState:0];

  [(SSOBLinkTrayButton *)self->_LearnMoreButton addTarget:self action:sel__LearnMoreButtonTapped forControlEvents:64];
  buttonTray2 = [(CrossPlatformTransferIntroViewController *)self buttonTray];
  [buttonTray2 addButton:self->_LearnMoreButton];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  if (!+[TSUtilities isPad])
  {
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];

    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v13];
    goto LABEL_5;
  }

  if (!+[TSUtilities inBuddy])
  {
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v13];
LABEL_5:
  }
}

- (void)_cancelButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_doneButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end