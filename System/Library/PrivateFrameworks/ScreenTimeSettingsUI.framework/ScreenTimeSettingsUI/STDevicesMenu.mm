@interface STDevicesMenu
+ (void)updateWithCoordinator:(id)coordinator viewController:(id)controller;
@end

@implementation STDevicesMenu

+ (void)updateWithCoordinator:(id)coordinator viewController:(id)controller
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  viewModel = [coordinatorCopy viewModel];
  v7 = [viewModel me];

  usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
  devices = [usageDetailsCoordinator devices];
  v10 = [devices count];

  viewModel2 = [coordinatorCopy viewModel];
  isCloudSyncEnabled = [viewModel2 isCloudSyncEnabled];

  if (v10 >= 2 && (([v7 isRemoteUser] | isCloudSyncEnabled) & 1) != 0)
  {
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    navigationItem2 = [v13 localizedStringForKey:@"DevicesButtonTitle" value:&stru_28766E5A8 table:0];

    v15 = objc_alloc(MEMORY[0x277D751E0]);
    v16 = [STUsageDetailListController _getDevicesDropDownMenuWithCoordinator:coordinatorCopy viewController:controllerCopy];
    v17 = [v15 initWithTitle:navigationItem2 menu:v16];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setRightBarButtonItem:v17];
  }

  else
  {
    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

@end