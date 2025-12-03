@interface STCommunicationLimitsViewControllerProvider
+ (id)communicationLimitsViewControllerForDSID:(id)d;
@end

@implementation STCommunicationLimitsViewControllerProvider

+ (id)communicationLimitsViewControllerForDSID:(id)d
{
  dCopy = d;
  v4 = [[STRootViewModelCoordinator alloc] initWithUserDSID:dCopy deviceIdentifier:0 usageReportType:0 usageContext:0];

  v5 = [[STCommunicationLimitsListController alloc] initWithRootViewModelCoordinator:v4];
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v7 = [v6 localizedStringForKey:@"CommunicationLimitsSpecifierName" value:&stru_28766E5A8 table:0];
  [(STCommunicationLimitsListController *)v5 setTitle:v7];

  viewModel = [(STRootViewModelCoordinator *)v4 viewModel];
  v9 = [viewModel me];
  isRemoteUser = [v9 isRemoteUser];

  if (isRemoteUser)
  {
    [MEMORY[0x277CBDA28] requestAccountSyncWithOptions:1];
  }

  return v5;
}

@end