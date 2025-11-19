@interface STIntroCommunicationLimitsViewController
- (STIntroCommunicationLimitsViewController)initWithChildName:(id)a3 limitType:(int64_t)a4 continueHandler:(id)a5;
- (void)_setUpLater:(id)a3;
- (void)_turnOnCommunicationLimits:(id)a3;
- (void)loadView;
@end

@implementation STIntroCommunicationLimitsViewController

- (STIntroCommunicationLimitsViewController)initWithChildName:(id)a3 limitType:(int64_t)a4 continueHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = [v10 localizedStringForKey:@"IntroCommunicationLimitsTitle" value:&stru_28766E5A8 table:0];
  if ([v8 length])
  {
    v12 = [v10 localizedStringForKey:@"IntroCommunicationLimitsDetailChild" value:&stru_28766E5A8 table:0];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithFormat:v12 locale:v14, v8];
  }

  else
  {
    v15 = [v10 localizedStringForKey:@"IntroCommunicationLimitsDetailGenericChild" value:&stru_28766E5A8 table:0];
  }

  v22.receiver = self;
  v22.super_class = STIntroCommunicationLimitsViewController;
  v16 = [(STIntroCommunicationLimitsViewController *)&v22 initWithTitle:v11 detailText:v15 symbolName:@"person.badge.shield.checkmark" contentLayout:2];
  v17 = [[_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel alloc] initWithSelection:a4];
  viewModel = v16->_viewModel;
  v16->_viewModel = v17;

  v19 = [v9 copy];
  continueHandler = v16->_continueHandler;
  v16->_continueHandler = v19;

  return v16;
}

- (void)loadView
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = STIntroCommunicationLimitsViewController;
  [(OBBaseWelcomeController *)&v39 loadView];
  v3 = [(STIntroCommunicationLimitsViewController *)self viewModel];
  v4 = [_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory makeViewControllerWithViewModel:v3];

  [(STIntroCommunicationLimitsViewController *)self addChildViewController:v4];
  v5 = [(STIntroCommunicationLimitsViewController *)self contentView];
  v6 = [v4 view];
  [v5 addSubview:v6];

  v7 = [v4 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = MEMORY[0x277CCAAD0];
  v38 = [v4 view];
  v36 = [v38 topAnchor];
  v37 = [(STIntroCommunicationLimitsViewController *)self contentView];
  v35 = [v37 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[0] = v34;
  v33 = [v4 view];
  v31 = [v33 bottomAnchor];
  v32 = [(STIntroCommunicationLimitsViewController *)self contentView];
  v30 = [v32 bottomAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v29 = v4;
  v40[1] = v28;
  v26 = [v4 view];
  v24 = [v26 leadingAnchor];
  v25 = [(STIntroCommunicationLimitsViewController *)self contentView];
  v23 = [v25 layoutMarginsGuide];
  v8 = [v23 leadingAnchor];
  v9 = [v24 constraintEqualToAnchor:v8];
  v40[2] = v9;
  v10 = [v4 view];
  v11 = [v10 trailingAnchor];
  v12 = [(STIntroCommunicationLimitsViewController *)self contentView];
  v13 = [v12 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  v40[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [v27 activateConstraints:v16];

  [v29 didMoveToParentViewController:self];
  v17 = +[STScreenTimeSettingsUIBundle bundle];
  v18 = [(STIntroCommunicationLimitsViewController *)self buttonTray];
  v19 = [MEMORY[0x277D37618] boldButton];
  v20 = [v17 localizedStringForKey:@"IntroCommunicationLimitsTurnOnButton" value:&stru_28766E5A8 table:0];
  [v19 setAccessibilityIdentifier:@"IntroCommunicationLimitsTurnOnButton"];
  [v19 setTitle:v20 forState:0];
  [v19 addTarget:self action:sel__turnOnCommunicationLimits_ forControlEvents:0x2000];
  [v18 addButton:v19];
  v21 = [MEMORY[0x277D37650] linkButton];
  v22 = [v17 localizedStringForKey:@"IntroCommunicationLimitsSetUpLaterButton" value:&stru_28766E5A8 table:0];
  [v21 setAccessibilityIdentifier:@"IntroCommunicationLimitsSetUpLaterButton"];
  [v21 setTitle:v22 forState:0];
  [v21 addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
  [v18 addButton:v21];
}

- (void)_turnOnCommunicationLimits:(id)a3
{
  v4 = [(STIntroCommunicationLimitsViewController *)self viewModel];
  v6 = +[STIntroCommunicationLimitsState createWithEnablementStateEnabledAndLimitType:](STIntroCommunicationLimitsState, "createWithEnablementStateEnabledAndLimitType:", [v4 selection]);

  v5 = [(STIntroCommunicationLimitsViewController *)self continueHandler];
  (v5)[2](v5, v6);
}

- (void)_setUpLater:(id)a3
{
  v5 = +[STIntroCommunicationLimitsState createWithEnablementStateNotSet];
  v4 = [(STIntroCommunicationLimitsViewController *)self continueHandler];
  (v4)[2](v4, v5);
}

@end