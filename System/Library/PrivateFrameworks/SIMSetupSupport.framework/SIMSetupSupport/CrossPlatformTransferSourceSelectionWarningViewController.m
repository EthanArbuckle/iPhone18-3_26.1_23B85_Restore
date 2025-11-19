@interface CrossPlatformTransferSourceSelectionWarningViewController
- (CrossPlatformTransferSourceSelectionWarningViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_handleNotificationESIMInstallStateChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation CrossPlatformTransferSourceSelectionWarningViewController

- (CrossPlatformTransferSourceSelectionWarningViewController)init
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_DETAIL_TARGET" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v3 stringWithFormat:v5];

  if (!+[TSUtilities inBuddy])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_DETAIL_TARGET_POST_BUDDY" value:&stru_28753DF48 table:@"Localizable"];

    v6 = v8;
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v14.receiver = self;
  v14.super_class = CrossPlatformTransferSourceSelectionWarningViewController;
  v11 = [(CrossPlatformTransferSourceSelectionWarningViewController *)&v14 initWithTitle:v10 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:v11 selector:sel__handleNotificationESIMInstallStateChanged_ name:@"esim.install.state.changed" object:0];

  return v11;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CrossPlatformTransferSourceSelectionWarningViewController;
  [(TSOBWelcomeController *)&v4 viewDidLoad];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];
}

- (void)_handleNotificationESIMInstallStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v7;

  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cross.platform.transfer"];
  v8 = [MEMORY[0x277CCAB88] notificationWithName:@"esim.install.state.changed" object:0 userInfo:v9];
  [(OBWelcomeController *)self _updateTrayButtonText:v8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end