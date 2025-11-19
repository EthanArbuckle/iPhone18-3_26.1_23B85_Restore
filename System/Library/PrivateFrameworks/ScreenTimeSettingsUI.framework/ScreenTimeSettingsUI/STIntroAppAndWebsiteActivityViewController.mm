@interface STIntroAppAndWebsiteActivityViewController
- (STIntroAppAndWebsiteActivityViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5;
- (void)_setUpLater:(id)a3;
- (void)_turnOnAppAndWebsiteActivity:(id)a3;
- (void)loadView;
@end

@implementation STIntroAppAndWebsiteActivityViewController

- (STIntroAppAndWebsiteActivityViewController)initWithIntroductionModel:(id)a3 childName:(id)a4 continueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  if ([v9 length])
  {
    v12 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityTitleChild" value:&stru_28766E5A8 table:0];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithFormat:v12 locale:v14, v9];

    v16 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityDetailChild" value:&stru_28766E5A8 table:0];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [MEMORY[0x277CBEAF8] currentLocale];
    v19 = [v17 initWithFormat:v16 locale:v18, v9];
  }

  else
  {
    v15 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityTitleGenericChild" value:&stru_28766E5A8 table:0];
    v19 = [v11 localizedStringForKey:@"IntroAppAndWebsiteActivityDetailGenericChild" value:&stru_28766E5A8 table:0];
  }

  v26.receiver = self;
  v26.super_class = STIntroAppAndWebsiteActivityViewController;
  v20 = [(STIntroAppAndWebsiteActivityViewController *)&v26 initWithTitle:v15 detailText:v19 symbolName:@"person.badge.hourglass.fill" contentLayout:2];
  model = v20->_model;
  v20->_model = v8;
  v22 = v8;

  v23 = [v10 copy];
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
  v7 = [(STIntroductionViewModel *)self->_model appAndWebsiteActivityEnabled];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = @"IntroAppAndWebsiteActivityContinueButton";
  }

  else
  {
    v9 = @"IntroAppAndWebsiteActivityTurnOnButton";
  }

  if (v8)
  {
    v10 = @"IntroAppAndWebsiteActivityTurnOffButton";
  }

  else
  {
    v10 = @"IntroAppAndWebsiteActivityNotNowButton";
  }

  v11 = [v3 localizedStringForKey:v9 value:&stru_28766E5A8 table:0];
  v12 = [v3 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  v13 = [(STIntroAppAndWebsiteActivityViewController *)self buttonTray];
  v14 = [MEMORY[0x277D37618] boldButton];
  [v14 setAccessibilityIdentifier:@"IntroAppAndWebsiteActivityTurnOnButton"];
  [v14 setTitle:v11 forState:0];
  [v14 addTarget:self action:sel__turnOnAppAndWebsiteActivity_ forControlEvents:0x2000];
  [v13 addButton:v14];
  v15 = [MEMORY[0x277D37650] linkButton];
  [v15 setAccessibilityIdentifier:@"IntroAppAndWebsiteActivitySetUpLaterButton"];
  [v15 setTitle:v12 forState:0];
  [v15 addTarget:self action:sel__setUpLater_ forControlEvents:0x2000];
  [v13 addButton:v15];
}

- (void)_turnOnAppAndWebsiteActivity:(id)a3
{
  v4 = [(STIntroAppAndWebsiteActivityViewController *)self model];
  [v4 setAppAndWebsiteActivityEnabled:MEMORY[0x277CBEC38]];

  v5 = [(STIntroAppAndWebsiteActivityViewController *)self continueHandler];
  v5[2]();
}

- (void)_setUpLater:(id)a3
{
  v4 = [(STIntroAppAndWebsiteActivityViewController *)self model];
  [v4 setAppAndWebsiteActivityEnabled:MEMORY[0x277CBEC28]];

  v5 = [(STIntroAppAndWebsiteActivityViewController *)self continueHandler];
  v5[2]();
}

@end