@interface STIntroAppAndWebsiteActivityViewController
- (STIntroAppAndWebsiteActivityViewController)initWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler;
- (void)_setUpLater:(id)later;
- (void)_turnOnAppAndWebsiteActivity:(id)activity;
- (void)loadView;
@end

@implementation STIntroAppAndWebsiteActivityViewController

- (STIntroAppAndWebsiteActivityViewController)initWithIntroductionModel:(id)model childName:(id)name continueHandler:(id)handler
{
  modelCopy = model;
  nameCopy = name;
  handlerCopy = handler;
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  if ([nameCopy length])
  {
    v12 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityTitleChild" value:&stru_28766E5A8 table:0];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    nameCopy = [v13 initWithFormat:v12 locale:currentLocale, nameCopy];

    v16 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityDetailChild" value:&stru_28766E5A8 table:0];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    nameCopy2 = [v17 initWithFormat:v16 locale:currentLocale2, nameCopy];
  }

  else
  {
    nameCopy = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityTitleGenericChild" value:&stru_28766E5A8 table:0];
    nameCopy2 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityDetailGenericChild" value:&stru_28766E5A8 table:0];
  }

  v26.receiver = self;
  v26.super_class = STIntroAppAndWebsiteActivityViewController;
  v20 = [(STIntroAppAndWebsiteActivityViewController *)&v26 initWithTitle:nameCopy detailText:nameCopy2 symbolName:@"person.badge.hourglass.fill" contentLayout:2];
  model = v20->_model;
  v20->_model = modelCopy;
  v22 = modelCopy;

  v23 = [handlerCopy copy];
  continueHandler = v20->_continueHandler;
  v20->_continueHandler = v23;

  return v20;
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = STIntroAppAndWebsiteActivityViewController;
  [(OBBaseWelcomeController *)&v19 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v18 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityScreenTimeInsightsTitle" value:&stru_28766E5A8 table:0];
  v17 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityScreenTimeInsightsDetail" value:&stru_28766E5A8 table:0];
  [(STIntroAppAndWebsiteActivityViewController *)self addBulletedListItemWithTitle:v18 description:v17 symbolName:@"chart.line.uptrend.xyaxis"];
  v16 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityScheduledDowntimeTitle" value:&stru_28766E5A8 table:0];
  v4 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityScheduledDowntimeDetail" value:&stru_28766E5A8 table:0];
  [(STIntroAppAndWebsiteActivityViewController *)self addBulletedListItemWithTitle:v16 description:v4 symbolName:@"downtime"];
  v5 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityAppLimitsTitle" value:&stru_28766E5A8 table:0];
  v6 = [v3 localizedStringForKey:@"IntroAppAndWebsiteActivityAppLimitsDetail" value:&stru_28766E5A8 table:0];
  [(STIntroAppAndWebsiteActivityViewController *)self addBulletedListItemWithTitle:v5 description:v6 symbolName:@"hourglass"];
  appAndWebsiteActivityEnabled = [(STIntroductionViewModel *)self->_model appAndWebsiteActivityEnabled];
  bOOLValue = [appAndWebsiteActivityEnabled BOOLValue];

  if (bOOLValue)
  {
    v9 = @"IntroAppAndWebsiteActivityContinueButton";
  }

  else
  {
    v9 = @"IntroAppAndWebsiteActivityTurnOnButton";
  }

  if (bOOLValue)
  {
    v10 = @"IntroAppAndWebsiteActivityTurnOffButton";
  }

  else
  {
    v10 = @"IntroAppAndWebsiteActivityNotNowButton";
  }

  v11 = [v3 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  v12 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  buttonTray = [(STIntroAppAndWebsiteActivityViewController *)self buttonTray];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setAccessibilityIdentifier:@"IntroAppAndWebsiteActivityTurnOnButton"];
  [boldButton setTitle:v11 forState:0];
  [boldButton addTarget:self action:sel__turnOnAppAndWebsiteActivity_ forControlEvents:0x2000];
  [buttonTray addButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setAccessibilityIdentifier:@"IntroAppAndWebsiteActivitySetUpLaterButton"];
  [linkButton setTitle:v12 forState:0];
  [linkButton addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
}

- (void)_turnOnAppAndWebsiteActivity:(id)activity
{
  model = [(STIntroAppAndWebsiteActivityViewController *)self model];
  [model setAppAndWebsiteActivityEnabled:MEMORY[0x277CBEC38]];

  continueHandler = [(STIntroAppAndWebsiteActivityViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_setUpLater:(id)later
{
  model = [(STIntroAppAndWebsiteActivityViewController *)self model];
  [model setAppAndWebsiteActivityEnabled:MEMORY[0x277CBEC28]];

  continueHandler = [(STIntroAppAndWebsiteActivityViewController *)self continueHandler];
  continueHandler[2]();
}

@end