@interface STIntroCommunicationLimitsViewController
- (STIntroCommunicationLimitsViewController)initWithChildName:(id)name limitType:(int64_t)type continueHandler:(id)handler;
- (void)_setUpLater:(id)later;
- (void)_turnOnCommunicationLimits:(id)limits;
- (void)loadView;
@end

@implementation STIntroCommunicationLimitsViewController

- (STIntroCommunicationLimitsViewController)initWithChildName:(id)name limitType:(int64_t)type continueHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = [v10 localizedStringForKey:@"IntroCommunicationLimitsTitle" value:&stru_28766E5A8 table:0];
  if ([nameCopy length])
  {
    v12 = [v10 localizedStringForKey:@"IntroCommunicationLimitsDetailChild" value:&stru_28766E5A8 table:0];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    nameCopy = [v13 initWithFormat:v12 locale:currentLocale, nameCopy];
  }

  else
  {
    nameCopy = [v10 localizedStringForKey:@"IntroCommunicationLimitsDetailGenericChild" value:&stru_28766E5A8 table:0];
  }

  v22.receiver = self;
  v22.super_class = STIntroCommunicationLimitsViewController;
  v16 = [(STIntroCommunicationLimitsViewController *)&v22 initWithTitle:v11 detailText:nameCopy symbolName:@"person.badge.shield.checkmark" contentLayout:2];
  v17 = [[_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel alloc] initWithSelection:type];
  viewModel = v16->_viewModel;
  v16->_viewModel = v17;

  v19 = [handlerCopy copy];
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
  viewModel = [(STIntroCommunicationLimitsViewController *)self viewModel];
  v4 = [_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory makeViewControllerWithViewModel:viewModel];

  [(STIntroCommunicationLimitsViewController *)self addChildViewController:v4];
  contentView = [(STIntroCommunicationLimitsViewController *)self contentView];
  view = [v4 view];
  [contentView addSubview:view];

  view2 = [v4 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = MEMORY[0x277CCAAD0];
  view3 = [v4 view];
  topAnchor = [view3 topAnchor];
  contentView2 = [(STIntroCommunicationLimitsViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[0] = v34;
  view4 = [v4 view];
  bottomAnchor = [view4 bottomAnchor];
  contentView3 = [(STIntroCommunicationLimitsViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29 = v4;
  v40[1] = v28;
  view5 = [v4 view];
  leadingAnchor = [view5 leadingAnchor];
  contentView4 = [(STIntroCommunicationLimitsViewController *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[2] = v9;
  view6 = [v4 view];
  trailingAnchor = [view6 trailingAnchor];
  contentView5 = [(STIntroCommunicationLimitsViewController *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [v27 activateConstraints:v16];

  [v29 didMoveToParentViewController:self];
  v17 = +[STScreenTimeSettingsUIBundle bundle];
  buttonTray = [(STIntroCommunicationLimitsViewController *)self buttonTray];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v20 = [v17 localizedStringForKey:@"IntroCommunicationLimitsTurnOnButton" value:&stru_28766E5A8 table:0];
  [boldButton setAccessibilityIdentifier:@"IntroCommunicationLimitsTurnOnButton"];
  [boldButton setTitle:v20 forState:0];
  [boldButton addTarget:self action:sel__turnOnCommunicationLimits_ forControlEvents:0x2000];
  [buttonTray addButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  v22 = [v17 localizedStringForKey:@"IntroCommunicationLimitsSetUpLaterButton" value:&stru_28766E5A8 table:0];
  [linkButton setAccessibilityIdentifier:@"IntroCommunicationLimitsSetUpLaterButton"];
  [linkButton setTitle:v22 forState:0];
  [linkButton addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
}

- (void)_turnOnCommunicationLimits:(id)limits
{
  viewModel = [(STIntroCommunicationLimitsViewController *)self viewModel];
  v6 = +[STIntroCommunicationLimitsState createWithEnablementStateEnabledAndLimitType:](STIntroCommunicationLimitsState, "createWithEnablementStateEnabledAndLimitType:", [viewModel selection]);

  continueHandler = [(STIntroCommunicationLimitsViewController *)self continueHandler];
  (continueHandler)[2](continueHandler, v6);
}

- (void)_setUpLater:(id)later
{
  v5 = +[STIntroCommunicationLimitsState createWithEnablementStateNotSet];
  continueHandler = [(STIntroCommunicationLimitsViewController *)self continueHandler];
  (continueHandler)[2](continueHandler, v5);
}

@end