@interface PSGResetNetworkSettingsListController
- (BOOL)customizedMutableSpecifiers:(id)a3;
- (void)appDidEnterBackground:(id)a3;
- (void)didCancelResetActionSheet;
- (void)dismissSelfIfNeeded;
- (void)viewDidLoad;
@end

@implementation PSGResetNetworkSettingsListController

- (BOOL)customizedMutableSpecifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 specifierForID:@"RESET_NETWORK_LABEL"];
  [v3 removeAllObjects];
  if (v4)
  {
    [v3 addObject:v4];
  }

  return 1;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGResetNetworkSettingsListController;
  [(PSGResetOrEraseListController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_appDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
}

- (void)appDidEnterBackground:(id)a3
{
  v4 = [(PSGResetNetworkSettingsListController *)self presentedViewController];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__PSGResetNetworkSettingsListController_appDidEnterBackground___block_invoke;
    v5[3] = &unk_278324EE0;
    v5[4] = self;
    [(PSGResetNetworkSettingsListController *)self dismissViewControllerAnimated:0 completion:v5];
  }

  else
  {

    [(PSGResetNetworkSettingsListController *)self dismissSelfIfNeeded];
  }
}

- (void)dismissSelfIfNeeded
{
  v3 = [(PSGResetNetworkSettingsListController *)self presentingViewController];

  if (v3)
  {

    [(PSGResetNetworkSettingsListController *)self dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    v4 = [(PSGResetNetworkSettingsListController *)self navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [(PSGResetNetworkSettingsListController *)self navigationController];
      v7 = [v6 viewControllers];
      v8 = [v7 count];

      if (v8 >= 2)
      {

        [(UIViewController *)self psg_popViewControllerWithAnimated:1];
      }
    }
  }
}

- (void)didCancelResetActionSheet
{
  v3 = [(PSGResetNetworkSettingsListController *)self cancelCallbackURL];

  if (v3)
  {
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [(PSGResetNetworkSettingsListController *)self cancelCallbackURL];
    [v4 openSensitiveURL:v5 withOptions:0];

    v7 = [(PSGResetNetworkSettingsListController *)self navigationController];
    v6 = [v7 popViewControllerAnimated:1];
  }
}

@end