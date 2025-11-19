@interface STDevicesMenu
+ (void)updateWithCoordinator:(id)a3 viewController:(id)a4;
@end

@implementation STDevicesMenu

+ (void)updateWithCoordinator:(id)a3 viewController:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v19 viewModel];
  v7 = [v6 me];

  v8 = [v19 usageDetailsCoordinator];
  v9 = [v8 devices];
  v10 = [v9 count];

  v11 = [v19 viewModel];
  v12 = [v11 isCloudSyncEnabled];

  if (v10 >= 2 && (([v7 isRemoteUser] | v12) & 1) != 0)
  {
    v13 = +[STScreenTimeSettingsUIBundle bundle];
    v14 = [v13 localizedStringForKey:@"DevicesButtonTitle" value:&stru_28766E5A8 table:0];

    v15 = objc_alloc(MEMORY[0x277D751E0]);
    v16 = [STUsageDetailListController _getDevicesDropDownMenuWithCoordinator:v19 viewController:v5];
    v17 = [v15 initWithTitle:v14 menu:v16];
    v18 = [v5 navigationItem];
    [v18 setRightBarButtonItem:v17];
  }

  else
  {
    v14 = [v5 navigationItem];
    [v14 setRightBarButtonItem:0];
  }
}

@end