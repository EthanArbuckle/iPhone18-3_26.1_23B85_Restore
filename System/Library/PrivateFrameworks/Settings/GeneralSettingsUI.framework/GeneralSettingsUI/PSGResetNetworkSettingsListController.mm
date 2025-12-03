@interface PSGResetNetworkSettingsListController
- (BOOL)customizedMutableSpecifiers:(id)specifiers;
- (void)appDidEnterBackground:(id)background;
- (void)didCancelResetActionSheet;
- (void)dismissSelfIfNeeded;
- (void)viewDidLoad;
@end

@implementation PSGResetNetworkSettingsListController

- (BOOL)customizedMutableSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [specifiersCopy specifierForID:@"RESET_NETWORK_LABEL"];
  [specifiersCopy removeAllObjects];
  if (v4)
  {
    [specifiersCopy addObject:v4];
  }

  return 1;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGResetNetworkSettingsListController;
  [(PSGResetOrEraseListController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_appDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
}

- (void)appDidEnterBackground:(id)background
{
  presentedViewController = [(PSGResetNetworkSettingsListController *)self presentedViewController];

  if (presentedViewController)
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
  presentingViewController = [(PSGResetNetworkSettingsListController *)self presentingViewController];

  if (presentingViewController)
  {

    [(PSGResetNetworkSettingsListController *)self dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    navigationController = [(PSGResetNetworkSettingsListController *)self navigationController];
    if (navigationController)
    {
      v5 = navigationController;
      navigationController2 = [(PSGResetNetworkSettingsListController *)self navigationController];
      viewControllers = [navigationController2 viewControllers];
      v8 = [viewControllers count];

      if (v8 >= 2)
      {

        [(UIViewController *)self psg_popViewControllerWithAnimated:1];
      }
    }
  }
}

- (void)didCancelResetActionSheet
{
  cancelCallbackURL = [(PSGResetNetworkSettingsListController *)self cancelCallbackURL];

  if (cancelCallbackURL)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    cancelCallbackURL2 = [(PSGResetNetworkSettingsListController *)self cancelCallbackURL];
    [defaultWorkspace openSensitiveURL:cancelCallbackURL2 withOptions:0];

    navigationController = [(PSGResetNetworkSettingsListController *)self navigationController];
    v6 = [navigationController popViewControllerAnimated:1];
  }
}

@end