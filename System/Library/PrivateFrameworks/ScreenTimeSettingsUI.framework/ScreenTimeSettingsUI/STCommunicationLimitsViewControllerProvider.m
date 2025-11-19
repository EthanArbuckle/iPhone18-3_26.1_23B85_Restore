@interface STCommunicationLimitsViewControllerProvider
+ (id)communicationLimitsViewControllerForDSID:(id)a3;
@end

@implementation STCommunicationLimitsViewControllerProvider

+ (id)communicationLimitsViewControllerForDSID:(id)a3
{
  v3 = a3;
  v4 = [[STRootViewModelCoordinator alloc] initWithUserDSID:v3 deviceIdentifier:0 usageReportType:0 usageContext:0];

  v5 = [[STCommunicationLimitsListController alloc] initWithRootViewModelCoordinator:v4];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = [v6 localizedStringForKey:@"CommunicationLimitsSpecifierName" value:&stru_28766E5A8 table:0];
  [(STCommunicationLimitsListController *)v5 setTitle:v7];

  v8 = [(STRootViewModelCoordinator *)v4 viewModel];
  v9 = [v8 me];
  v10 = [v9 isRemoteUser];

  if (v10)
  {
    [MEMORY[0x277CBDA28] requestAccountSyncWithOptions:1];
  }

  return v5;
}

@end