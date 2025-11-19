@interface STAppAndWebsiteActivityOnboardingController
- (id)_createAppAndWebsiteActivityController;
- (void)_addTrayButtonToWelcomeController:(id)a3 localizationKey:(id)a4 action:(SEL)a5 isBold:(BOOL)a6;
- (void)_notNowSelected;
- (void)_turnOnAppAndWebsiteActivitySelected;
- (void)presentOverViewController:(id)a3 completionBlock:(id)a4;
@end

@implementation STAppAndWebsiteActivityOnboardingController

- (void)presentOverViewController:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  [(STAppAndWebsiteActivityOnboardingController *)self setCompletionBlock:a4];
  v7 = [(STAppAndWebsiteActivityOnboardingController *)self _createAppAndWebsiteActivityController];
  v8 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v7];
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    [v8 setSupportedInterfaceOrientations:2];
  }

  [v8 setModalPresentationStyle:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__STAppAndWebsiteActivityOnboardingController_presentOverViewController_completionBlock___block_invoke;
  v12[3] = &unk_279B7CAE0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v6 presentViewController:v11 animated:1 completion:v12];
}

- (id)_createAppAndWebsiteActivityController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUFeatureTitle" value:&stru_28766E5A8 table:0];
  v4 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUFeatureDetails" value:&stru_28766E5A8 table:0];
  v5 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v13 detailText:v4 symbolName:@"person.badge.hourglass.fill"];
  v6 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUWeeklyReportsTitle" value:&stru_28766E5A8 table:0];
  v7 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUWeeklyReportsDetail" value:&stru_28766E5A8 table:0];
  [v5 addBulletedListItemWithTitle:v6 description:v7 symbolName:@"chart.line.uptrend.xyaxis"];
  v8 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUDowntimeTitle" value:&stru_28766E5A8 table:0];
  v9 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUDowntimeDetail" value:&stru_28766E5A8 table:0];
  [v5 addBulletedListItemWithTitle:v8 description:v9 symbolName:@"downtime"];
  v10 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUAppLimitsTitle" value:&stru_28766E5A8 table:0];
  v11 = [v3 localizedStringForKey:@"AppAndWebsiteActivityEDUAppLimitsDetail" value:&stru_28766E5A8 table:0];
  [v5 addBulletedListItemWithTitle:v10 description:v11 symbolName:@"hourglass"];
  [(STAppAndWebsiteActivityOnboardingController *)self _addTrayButtonToWelcomeController:v5 localizationKey:@"AppAndWebsiteActivityEDUTurnOnButton" action:sel__turnOnAppAndWebsiteActivitySelected isBold:1];
  [(STAppAndWebsiteActivityOnboardingController *)self _addTrayButtonToWelcomeController:v5 localizationKey:@"AppAndWebsiteActivityEDUNotNowButton" action:sel__notNowSelected isBold:0];

  return v5;
}

- (void)_turnOnAppAndWebsiteActivitySelected
{
  v3 = [(STAppAndWebsiteActivityOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [(STAppAndWebsiteActivityOnboardingController *)self completionBlock];
  if (v4)
  {
    v5 = v4;
    v4[2](v4, 1);
    v4 = v5;
  }
}

- (void)_notNowSelected
{
  v3 = [(STAppAndWebsiteActivityOnboardingController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = [(STAppAndWebsiteActivityOnboardingController *)self completionBlock];
  if (v4)
  {
    v5 = v4;
    v4[2](v4, 0);
    v4 = v5;
  }
}

- (void)_addTrayButtonToWelcomeController:(id)a3 localizationKey:(id)a4 action:(SEL)a5 isBold:(BOOL)a6
{
  v10 = a4;
  v11 = a3;
  v15 = +[STScreenTimeSettingsUIBundle bundle];
  if (a6)
  {
    [MEMORY[0x277D37618] boldButton];
  }

  else
  {
    [MEMORY[0x277D37650] linkButton];
  }
  v12 = ;
  v13 = [v15 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];

  [v12 setTitle:v13 forState:0];
  [v12 addTarget:self action:a5 forControlEvents:0x2000];
  v14 = [v11 buttonTray];

  [v14 addButton:v12];
}

@end