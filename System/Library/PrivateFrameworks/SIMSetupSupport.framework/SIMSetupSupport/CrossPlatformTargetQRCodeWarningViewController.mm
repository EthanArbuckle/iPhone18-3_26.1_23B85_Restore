@interface CrossPlatformTargetQRCodeWarningViewController
- (CrossPlatformTargetQRCodeWarningViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)_setupLaterButtonTapped;
- (void)viewDidLoad;
@end

@implementation CrossPlatformTargetQRCodeWarningViewController

- (CrossPlatformTargetQRCodeWarningViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CROSSPLATFORM_TARGET_QRCODE_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CROSSPLATFORM_TARGET_QRCODE_WARNING_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v9.receiver = self;
  v9.super_class = CrossPlatformTargetQRCodeWarningViewController;
  v7 = [(CrossPlatformTargetQRCodeWarningViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v7;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CrossPlatformTargetQRCodeWarningViewController;
  [(TSOBWelcomeController *)&v18 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(CrossPlatformTargetQRCodeWarningViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton addTarget:self action:sel__setupLaterButtonTapped forControlEvents:64];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
  [linkButton setTitle:v9 forState:0];

  buttonTray2 = [(CrossPlatformTargetQRCodeWarningViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
  [accessoryButton setTitle:v13 forState:0];

  [accessoryButton addTarget:self action:sel__learnMoreTapped forControlEvents:64];
  if (+[TSUtilities inBuddy])
  {
    [accessoryButton setHidden:1];
  }

  else
  {
    v14 = +[TSCoreTelephonyClientCache sharedInstance];
    [accessoryButton setHidden:{objc_msgSend(v14, "usingBootstrapDataService")}];
  }

  headerView = [(CrossPlatformTargetQRCodeWarningViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];

  navigationController = [(CrossPlatformTargetQRCodeWarningViewController *)self navigationController];
  navigationItem = [navigationController navigationItem];
  [navigationItem setHidesBackButton:0];
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

- (void)_setupLaterButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end