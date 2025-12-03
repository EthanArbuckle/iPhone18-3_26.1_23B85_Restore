@interface STIntroDowntimeViewController
- (STIntroDowntimeTableViewController)tableViewController;
- (STIntroDowntimeViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler;
- (void)_notNow:(id)now;
- (void)_setDowntime:(id)downtime;
- (void)loadView;
- (void)setTableViewController:(id)controller;
@end

@implementation STIntroDowntimeViewController

- (STIntroDowntimeViewController)initWithIntroductionModel:(id)model continueHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"IntroDowntimeTitle" value:&stru_28766E5A8 table:0];
  v10 = [v8 localizedStringForKey:@"IntroDowntimeDetail" value:&stru_28766E5A8 table:0];
  v17.receiver = self;
  v17.super_class = STIntroDowntimeViewController;
  v11 = [(OBTableWelcomeController *)&v17 initWithTitle:v9 detailText:v10 symbolName:@"downtime"];
  model = v11->_model;
  v11->_model = modelCopy;
  v13 = modelCopy;

  v14 = [handlerCopy copy];
  continueHandler = v11->_continueHandler;
  v11->_continueHandler = v14;

  return v11;
}

- (STIntroDowntimeTableViewController)tableViewController
{
  v4.receiver = self;
  v4.super_class = STIntroDowntimeViewController;
  tableViewController = [(STTableWelcomeController *)&v4 tableViewController];

  return tableViewController;
}

- (void)setTableViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STIntroDowntimeViewController *)a2 setTableViewController:?];
    }
  }

  v6.receiver = self;
  v6.super_class = STIntroDowntimeViewController;
  [(STTableWelcomeController *)&v6 setTableViewController:controllerCopy];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = STIntroDowntimeViewController;
  [(OBTableWelcomeController *)&v17 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  buttonTray = [(STIntroDowntimeViewController *)self buttonTray];
  bedtime = [(STIntroductionViewModel *)self->_model bedtime];
  deviceBedtimeEnabled = [bedtime deviceBedtimeEnabled];

  if (deviceBedtimeEnabled)
  {
    v7 = @"IntroDowntimeContinueButton";
  }

  else
  {
    v7 = @"IntroDowntimeTurnOnDowntimeButton";
  }

  if (deviceBedtimeEnabled)
  {
    v8 = @"IntroDowntimeTurnOffDowntimeButton";
  }

  else
  {
    v8 = @"IntroDowntimeNotNowButton";
  }

  v9 = [v3 localizedStringForKey:v7 value:&stru_28766E5A8 table:0];
  v10 = [v3 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setAccessibilityIdentifier:@"IntroDowntimeTurnOnDowntimeButton"];
  [boldButton setTitle:v9 forState:0];
  [boldButton addTarget:self action:sel__setDowntime_ forControlEvents:0x2000];
  [buttonTray addButton:boldButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setAccessibilityIdentifier:@"IntroDowntimeSetUpLaterButton"];
  [linkButton setTitle:v10 forState:0];
  [linkButton addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [buttonTray addButton:linkButton];
  v13 = MEMORY[0x277D75AC8];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v13 storyboardWithName:@"STIntroDowntimeTableViewController" bundle:v14];

  instantiateInitialViewController = [v15 instantiateInitialViewController];
  [(STIntroDowntimeViewController *)self setTableViewController:instantiateInitialViewController];
}

- (void)_setDowntime:(id)downtime
{
  tableViewController = [(STIntroDowntimeViewController *)self tableViewController];
  bedtime = [tableViewController bedtime];

  [bedtime setDeviceBedtimeEnabled:1];
  model = [(STIntroDowntimeViewController *)self model];
  [model setBedtime:bedtime];

  continueHandler = [(STIntroDowntimeViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)_notNow:(id)now
{
  continueHandler = [(STIntroDowntimeViewController *)self continueHandler];
  continueHandler[2]();
}

- (void)setTableViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIntroDowntimeViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"(tableViewController == nil) || [tableViewController isKindOfClass:[STIntroDowntimeTableViewController class]]"}];
}

@end