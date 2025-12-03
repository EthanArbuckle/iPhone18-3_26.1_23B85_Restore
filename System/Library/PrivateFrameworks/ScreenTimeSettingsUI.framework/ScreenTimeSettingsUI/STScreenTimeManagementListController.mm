@interface STScreenTimeManagementListController
- (void)viewDidLoad;
@end

@implementation STScreenTimeManagementListController

- (void)viewDidLoad
{
  v11[5] = *MEMORY[0x277D85DE8];
  coordinator = [(STPINListViewController *)self coordinator];
  v4 = [(STRootGroupSpecifierProvider *)STPasscodeActivitySpecifierProvider providerWithCoordinator:coordinator];
  v11[0] = v4;
  v5 = [STIncludeWebsiteDataGroupSpecifierProvider providerWithCoordinator:coordinator isRootView:0];
  v11[1] = v5;
  v6 = [STPasscodeGroupSpecifierProvider providerWithCoordinator:coordinator listController:self isRootView:0];
  v11[2] = v6;
  v7 = [STDisableAppAndWebsiteActivityGroupSpecifierProvider providerWithCoordinator:coordinator isRootView:0];
  v11[3] = v7;
  v8 = [STStopSharingScreenTimeGroupSpecifierProvider providerWithCoordinator:coordinator isRootView:0];
  v11[4] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  [(STListViewController *)self setSpecifierProviders:v9];

  v10.receiver = self;
  v10.super_class = STScreenTimeManagementListController;
  [(STScreenTimeManagementListController *)&v10 viewDidLoad];
}

@end