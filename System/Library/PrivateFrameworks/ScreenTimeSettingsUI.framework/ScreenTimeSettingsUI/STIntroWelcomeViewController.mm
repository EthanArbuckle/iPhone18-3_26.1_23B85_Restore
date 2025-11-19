@interface STIntroWelcomeViewController
- (STIntroWelcomeViewController)initWithChildName:(id)a3 forceParentalControls:(BOOL)a4 continueHandler:(id)a5 endHandler:(id)a6;
- (void)_turnOnScreenTime:(id)a3;
- (void)loadView;
@end

@implementation STIntroWelcomeViewController

- (STIntroWelcomeViewController)initWithChildName:(id)a3 forceParentalControls:(BOOL)a4 continueHandler:(id)a5 endHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = +[STScreenTimeSettingsUIBundle bundle];
  v14 = v13;
  if (!v8)
  {
    v15 = [v13 localizedStringForKey:@"IntroWelcomeTitle" value:&stru_28766E5A8 table:0];
    v18 = @"AADC_IntroWelcomeDetail";
    v19 = v14;
LABEL_6:
    v17 = [v19 localizedStringForKey:v18 value:&stru_28766E5A8 table:0];
    goto LABEL_7;
  }

  v15 = [v13 localizedStringForKey:@"IntroWelcomeTitleChild" value:&stru_28766E5A8 table:0];
  if (![v10 length])
  {
    v18 = @"AADC_IntroWelcomeDetailGenericChild";
    v19 = v14;
    goto LABEL_6;
  }

  v16 = [v14 localizedStringForKey:@"AADC_IntroWelcomeDetailChild" value:&stru_28766E5A8 table:0];
  v17 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@ %@" error:0, v10, v10];

LABEL_7:
  v28.receiver = self;
  v28.super_class = STIntroWelcomeViewController;
  v20 = [(STIntroWelcomeViewController *)&v28 initWithTitle:v15 detailText:v17 symbolName:@"hourglass" contentLayout:2];
  v21 = [v10 copy];
  childName = v20->_childName;
  v20->_childName = v21;

  v20->_forceParentalControls = v8;
  v23 = [v12 copy];

  continueHandler = v20->_continueHandler;
  v20->_continueHandler = v23;

  v25 = [v11 copy];
  endHandler = v20->_endHandler;
  v20->_endHandler = v25;

  return v20;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = STIntroWelcomeViewController;
  [(OBBaseWelcomeController *)&v21 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"IntroWelcomeContentPrivacyTitle" value:&stru_28766E5A8 table:0];
  v5 = [v3 localizedStringForKey:@"IntroWelcomeContentPrivacyDetail" value:&stru_28766E5A8 table:0];
  v20 = v4;
  [(STIntroWelcomeViewController *)self addBulletedListItemWithTitle:v4 description:v5 symbolName:@"figure.and.child.holdinghands"];
  v6 = [v3 localizedStringForKey:@"IntroWelcomeWeeklyReportsTitle" value:&stru_28766E5A8 table:0];
  if (![(STIntroWelcomeViewController *)self forceParentalControls])
  {
    v14 = @"IntroWelcomeWeeklyReportsDetail";
LABEL_6:
    v13 = [v3 localizedStringForKey:v14 value:&stru_28766E5A8 table:0];
    goto LABEL_7;
  }

  v7 = [(STIntroWelcomeViewController *)self childName];
  v8 = [v7 length];

  if (!v8)
  {
    v14 = @"IntroWelcomeWeeklyReportsDetailGenericChild";
    goto LABEL_6;
  }

  v9 = [v3 localizedStringForKey:@"IntroWelcomeWeeklyReportsDetailChild" value:&stru_28766E5A8 table:0];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [(STIntroWelcomeViewController *)self childName];
  v13 = [v10 initWithFormat:v9 locale:v11, v12];

LABEL_7:
  [(STIntroWelcomeViewController *)self addBulletedListItemWithTitle:v6 description:v13 symbolName:@"chart.bar.xaxis"];
  v15 = [v3 localizedStringForKey:@"IntroWelcomeDowntimeTitle" value:&stru_28766E5A8 table:0];
  v16 = [v3 localizedStringForKey:@"IntroWelcomeDowntimeDetail" value:&stru_28766E5A8 table:0];
  [(STIntroWelcomeViewController *)self addBulletedListItemWithTitle:v15 description:v16 symbolName:@"downtime"];
  v17 = [MEMORY[0x277D37618] boldButton];
  v18 = [v3 localizedStringForKey:@"IntroButtonTurnOnScreenTime" value:&stru_28766E5A8 table:0];
  [v17 setAccessibilityIdentifier:@"IntroButtonTurnOnScreenTime"];
  [v17 setTitle:v18 forState:0];
  [v17 addTarget:self action:sel__turnOnScreenTime_ forControlEvents:0x2000];
  v19 = [(STIntroWelcomeViewController *)self buttonTray];
  [v19 addButton:v17];
}

- (void)_turnOnScreenTime:(id)a3
{
  v3 = [(STIntroWelcomeViewController *)self continueHandler];
  v3[2]();
}

@end