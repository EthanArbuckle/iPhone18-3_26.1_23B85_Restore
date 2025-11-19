@interface STIntroDowntimeViewController
- (STIntroDowntimeTableViewController)tableViewController;
- (STIntroDowntimeViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4;
- (void)_notNow:(id)a3;
- (void)_setDowntime:(id)a3;
- (void)loadView;
- (void)setTableViewController:(id)a3;
@end

@implementation STIntroDowntimeViewController

- (STIntroDowntimeViewController)initWithIntroductionModel:(id)a3 continueHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v8 localizedStringForKey:@"IntroDowntimeTitle" value:&stru_28766E5A8 table:0];
  v10 = [v8 localizedStringForKey:@"IntroDowntimeDetail" value:&stru_28766E5A8 table:0];
  v17.receiver = self;
  v17.super_class = STIntroDowntimeViewController;
  v11 = [(OBTableWelcomeController *)&v17 initWithTitle:v9 detailText:v10 symbolName:@"downtime"];
  model = v11->_model;
  v11->_model = v6;
  v13 = v6;

  v14 = [v7 copy];
  continueHandler = v11->_continueHandler;
  v11->_continueHandler = v14;

  return v11;
}

- (STIntroDowntimeTableViewController)tableViewController
{
  v4.receiver = self;
  v4.super_class = STIntroDowntimeViewController;
  v2 = [(STTableWelcomeController *)&v4 tableViewController];

  return v2;
}

- (void)setTableViewController:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(STIntroDowntimeViewController *)a2 setTableViewController:?];
    }
  }

  v6.receiver = self;
  v6.super_class = STIntroDowntimeViewController;
  [(STTableWelcomeController *)&v6 setTableViewController:v5];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = STIntroDowntimeViewController;
  [(OBTableWelcomeController *)&v17 loadView];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [(STIntroDowntimeViewController *)self buttonTray];
  v5 = [(STIntroductionViewModel *)self->_model bedtime];
  v6 = [v5 deviceBedtimeEnabled];

  if (v6)
  {
    v7 = @"IntroDowntimeContinueButton";
  }

  else
  {
    v7 = @"IntroDowntimeTurnOnDowntimeButton";
  }

  if (v6)
  {
    v8 = @"IntroDowntimeTurnOffDowntimeButton";
  }

  else
  {
    v8 = @"IntroDowntimeNotNowButton";
  }

  v9 = [v3 localizedStringForKey:v7 value:&stru_28766E5A8 table:0];
  v10 = [v3 localizedStringForKey:v8 value:&stru_28766E5A8 table:0];
  v11 = [MEMORY[0x277D37618] boldButton];
  [v11 setAccessibilityIdentifier:@"IntroDowntimeTurnOnDowntimeButton"];
  [v11 setTitle:v9 forState:0];
  [v11 addTarget:self action:sel__setDowntime_ forControlEvents:0x2000];
  [v4 addButton:v11];
  v12 = [MEMORY[0x277D37650] linkButton];
  [v12 setAccessibilityIdentifier:@"IntroDowntimeSetUpLaterButton"];
  [v12 setTitle:v10 forState:0];
  [v12 addTarget:self action:sel__notNow_ forControlEvents:0x2000];
  [v4 addButton:v12];
  v13 = MEMORY[0x277D75AC8];
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v13 storyboardWithName:@"STIntroDowntimeTableViewController" bundle:v14];

  v16 = [v15 instantiateInitialViewController];
  [(STIntroDowntimeViewController *)self setTableViewController:v16];
}

- (void)_setDowntime:(id)a3
{
  v4 = [(STIntroDowntimeViewController *)self tableViewController];
  v7 = [v4 bedtime];

  [v7 setDeviceBedtimeEnabled:1];
  v5 = [(STIntroDowntimeViewController *)self model];
  [v5 setBedtime:v7];

  v6 = [(STIntroDowntimeViewController *)self continueHandler];
  v6[2]();
}

- (void)_notNow:(id)a3
{
  v3 = [(STIntroDowntimeViewController *)self continueHandler];
  v3[2]();
}

- (void)setTableViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIntroDowntimeViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"(tableViewController == nil) || [tableViewController isKindOfClass:[STIntroDowntimeTableViewController class]]"}];
}

@end