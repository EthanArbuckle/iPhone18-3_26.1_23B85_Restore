@interface TSRoamingEducationViewController
- (TSRoamingEducationViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_continueButtonTapped;
- (void)_sendTravelEventMetricForRoaming:(BOOL)a3;
- (void)_setUpButtons;
- (void)_setUpLearnMoreLink;
- (void)viewDidLoad;
@end

@implementation TSRoamingEducationViewController

- (TSRoamingEducationViewController)init
{
  self->_tappedLearnMore = 0;
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v4;

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TRAVEL_MODE_ROAMING_EDUCATION_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TRAVEL_MODE_ROAMING_EDUCATION_BODY" value:&stru_28753DF48 table:@"Localizable"];

  v12.receiver = self;
  v12.super_class = TSRoamingEducationViewController;
  v10 = [(TSRoamingEducationViewController *)&v12 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TSRoamingEducationViewController;
  [(TSOBWelcomeController *)&v5 viewDidLoad];
  v3 = [(TSRoamingEducationViewController *)self navigationController];
  v4 = [v3 navigationItem];
  [v4 setHidesBackButton:0];

  [(TSRoamingEducationViewController *)self _setUpButtons];
  [(TSRoamingEducationViewController *)self _setUpLearnMoreLink];
}

- (void)_setUpButtons
{
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TRAVEL_MODE_DATA_ROAMING_ON" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  v8 = [(TSRoamingEducationViewController *)self buttonTray];
  [v8 addButton:self->_continueButton];

  v9 = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v9;

  [(SSOBBoldTrayButton *)self->_skipButton setRole:2];
  v11 = self->_skipButton;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v11 setTitle:v13 forState:0];

  [(SSOBBoldTrayButton *)self->_skipButton addTarget:self action:sel__cancelButtonTapped forControlEvents:64];
  v14 = [(TSRoamingEducationViewController *)self buttonTray];
  [v14 addButton:self->_skipButton];

  v15 = [(TSRoamingEducationViewController *)self buttonTray];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setUpLearnMoreLink
{
  v6 = [MEMORY[0x277D37638] accessoryButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRAVEL_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:sel__learnMoreButtonTapped forControlEvents:64];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(TSRoamingEducationViewController *)self headerView];
  [v5 addAccessoryButton:v6];
}

- (void)_cancelButtonTapped
{
  [(TSRoamingEducationViewController *)self _sendTravelEventMetricForRoaming:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_continueButtonTapped
{
  [(TSRoamingEducationViewController *)self _sendTravelEventMetricForRoaming:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_sendTravelEventMetricForRoaming:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 setObject:@"roaming_education" forKey:@"notificationType"];
  v6 = &TSTravelActionRoamingEducationRoamingOff;
  if (v3)
  {
    v6 = &TSTravelActionRoamingEducationRoamingOn;
  }

  [v5 setObject:*v6 forKey:@"finalAction"];
  if (self->_tappedLearnMore)
  {
    [v5 setObject:@"tapped_learn_more" forKey:@"finalActionSubtype"];
  }

  client = self->_client;
  v11 = 0;
  v8 = [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:v5 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TSRoamingEducationViewController *)v9 _sendTravelEventMetricForRoaming:v10];
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendTravelEventMetricForRoaming:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSRoamingEducationViewController _sendTravelEventMetricForRoaming:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for roaming education [%@] @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end