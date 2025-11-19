@interface TSSourceAutoReconnectWaitingViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSourceAutoReconnectWaitingViewController)init;
- (void)_skipButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation TSSourceAutoReconnectWaitingViewController

- (TSSourceAutoReconnectWaitingViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTO_RECONNECT_WAITING_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AUTO_RECONNECT_WAITING_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = TSSourceAutoReconnectWaitingViewController;
  v7 = [(TSSourceAutoReconnectWaitingViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v7;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = TSSourceAutoReconnectWaitingViewController;
  [(TSOBWelcomeController *)&v14 viewDidLoad];
  v3 = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v3;

  [(OBLinkTrayButton *)self->_skipButton setRole:2];
  v5 = self->_skipButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SKIP" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

  [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped_ forControlEvents:64];
  [(OBLinkTrayButton *)self->_skipButton setHidden:1];
  v8 = [(TSSourceAutoReconnectWaitingViewController *)self buttonTray];
  [v8 addButton:self->_skipButton];

  v9 = [(OBBaseWelcomeController *)self navigationItem];
  [v9 setHidesBackButton:1 animated:0];

  objc_initWeak(&location, self);
  v10 = dispatch_time(0, 180000000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__TSSourceAutoReconnectWaitingViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_279B44400;
  objc_copyWeak(&v12, &location);
  dispatch_after(v10, MEMORY[0x277D85CD0], v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__TSSourceAutoReconnectWaitingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained skipButton];
  [v1 setHidden:0];
}

- (void)_skipButtonTapped:(id)a3
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