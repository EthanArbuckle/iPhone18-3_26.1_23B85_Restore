@interface TSSourceAutoReconnectTransferredViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSourceAutoReconnectTransferredViewController)init;
- (void)_continueButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSSourceAutoReconnectTransferredViewController

- (TSSourceAutoReconnectTransferredViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTO_RECONNECT_COMPLETED_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AUTO_RECONNECT_COMPLETED_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = TSSourceAutoReconnectTransferredViewController;
  v7 = [(TSSourceAutoReconnectTransferredViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = TSSourceAutoReconnectTransferredViewController;
  [(TSOBWelcomeController *)&v10 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  v8 = [(TSSourceAutoReconnectTransferredViewController *)self buttonTray];
  [v8 addButton:self->_continueButton];

  v9 = [(OBBaseWelcomeController *)self navigationItem];
  [v9 setHidesBackButton:1 animated:0];
}

- (void)_continueButtonTapped
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