@interface TSTargetReconnectWaitingViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTargetReconnectWaitingViewController)init;
- (void)_skipButtonTapped:(id)a3;
- (void)submitAutoReconnectionDetails;
- (void)viewDidLoad;
@end

@implementation TSTargetReconnectWaitingViewController

- (TSTargetReconnectWaitingViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RECONNECT_PRX_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RECONNECT_PRX_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = TSTargetReconnectWaitingViewController;
  v7 = [(TSTargetReconnectWaitingViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = TSTargetReconnectWaitingViewController;
  [(TSOBWelcomeController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v3;

  [(OBLinkTrayButton *)self->_skipButton setRole:2];
  v5 = self->_skipButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SET_UP_LATER_IN_SETTINGS" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

  [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped_ forControlEvents:64];
  v8 = [(TSTargetReconnectWaitingViewController *)self buttonTray];
  [v8 addButton:self->_skipButton];

  v9 = [(TSTargetReconnectWaitingViewController *)self buttonTray];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(OBBaseWelcomeController *)self navigationItem];
  [v10 setHidesBackButton:1 animated:0];

  self->_waitingStartTime = CFAbsoluteTimeGetCurrent();
}

- (void)_skipButtonTapped:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSTargetReconnectWaitingViewController _skipButtonTapped:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "Skipping reconnection @%s", &v7, 0xCu);
  }

  [(TSTargetReconnectWaitingViewController *)self submitAutoReconnectionDetails];
  v5 = [(TSTargetReconnectWaitingViewController *)self delegate];
  [v5 viewControllerDidComplete:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)submitAutoReconnectionDetails
{
  v2 = CFAbsoluteTimeGetCurrent() - self->_waitingStartTime;
  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  v3 = [objc_alloc(MEMORY[0x277CC3608]) initWithSuccess:0 skipped:1 duration:v2];
  [v4 submitAutoReconnectionDetails:v3];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end