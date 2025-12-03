@interface STIntroWelcomeViewController
- (STIntroWelcomeViewController)initWithChildName:(id)name forceParentalControls:(BOOL)controls continueHandler:(id)handler endHandler:(id)endHandler;
- (void)_turnOnScreenTime:(id)time;
- (void)loadView;
@end

@implementation STIntroWelcomeViewController

- (STIntroWelcomeViewController)initWithChildName:(id)name forceParentalControls:(BOOL)controls continueHandler:(id)handler endHandler:(id)endHandler
{
  controlsCopy = controls;
  nameCopy = name;
  endHandlerCopy = endHandler;
  handlerCopy = handler;
  v13 = +[STScreenTimeSettingsUIBundle bundle];
  v14 = v13;
  if (!controlsCopy)
  {
    v15 = [v13 localizedStringForKey:@"IntroWelcomeTitle" value:&stru_28766E5A8 table:0];
    v18 = @"AADC_IntroWelcomeDetail";
    v19 = v14;
LABEL_6:
    nameCopy = [v19 localizedStringForKey:v18 value:&stru_28766E5A8 table:0];
    goto LABEL_7;
  }

  v15 = [v13 localizedStringForKey:@"IntroWelcomeTitleChild" value:&stru_28766E5A8 table:0];
  if (![nameCopy length])
  {
    v18 = @"AADC_IntroWelcomeDetailGenericChild";
    v19 = v14;
    goto LABEL_6;
  }

  v16 = [v14 localizedStringForKey:@"AADC_IntroWelcomeDetailChild" value:&stru_28766E5A8 table:0];
  nameCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@ %@" error:0, nameCopy, nameCopy];

LABEL_7:
  v28.receiver = self;
  v28.super_class = STIntroWelcomeViewController;
  v20 = [(STIntroWelcomeViewController *)&v28 initWithTitle:v15 detailText:nameCopy symbolName:@"hourglass" contentLayout:2];
  v21 = [nameCopy copy];
  childName = v20->_childName;
  v20->_childName = v21;

  v20->_forceParentalControls = controlsCopy;
  v23 = [handlerCopy copy];

  continueHandler = v20->_continueHandler;
  v20->_continueHandler = v23;

  v25 = [endHandlerCopy copy];
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

  childName = [(STIntroWelcomeViewController *)self childName];
  v8 = [childName length];

  if (!v8)
  {
    v14 = @"IntroWelcomeWeeklyReportsDetailGenericChild";
    goto LABEL_6;
  }

  v9 = [v3 localizedStringForKey:@"IntroWelcomeWeeklyReportsDetailChild" value:&stru_28766E5A8 table:0];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  childName2 = [(STIntroWelcomeViewController *)self childName];
  v13 = [v10 initWithFormat:v9 locale:currentLocale, childName2];

LABEL_7:
  [(STIntroWelcomeViewController *)self addBulletedListItemWithTitle:v6 description:v13 symbolName:@"chart.bar.xaxis"];
  v15 = [v3 localizedStringForKey:@"IntroWelcomeDowntimeTitle" value:&stru_28766E5A8 table:0];
  v16 = [v3 localizedStringForKey:@"IntroWelcomeDowntimeDetail" value:&stru_28766E5A8 table:0];
  [(STIntroWelcomeViewController *)self addBulletedListItemWithTitle:v15 description:v16 symbolName:@"downtime"];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v18 = [v3 localizedStringForKey:@"IntroButtonTurnOnScreenTime" value:&stru_28766E5A8 table:0];
  [boldButton setAccessibilityIdentifier:@"IntroButtonTurnOnScreenTime"];
  [boldButton setTitle:v18 forState:0];
  [boldButton addTarget:self action:sel__turnOnScreenTime_ forControlEvents:0x2000];
  buttonTray = [(STIntroWelcomeViewController *)self buttonTray];
  [buttonTray addButton:boldButton];
}

- (void)_turnOnScreenTime:(id)time
{
  continueHandler = [(STIntroWelcomeViewController *)self continueHandler];
  continueHandler[2]();
}

@end