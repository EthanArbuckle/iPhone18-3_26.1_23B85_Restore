@interface ICSiCloudAppListViewControllerHelper
+ (id)makeAppListViewControllerWithAccountManager:(id)manager homeViewModel:(id)model manageStorageAppsListViewModel:(id)viewModel;
@end

@implementation ICSiCloudAppListViewControllerHelper

+ (id)makeAppListViewControllerWithAccountManager:(id)manager homeViewModel:(id)model manageStorageAppsListViewModel:(id)viewModel
{
  viewModelCopy = viewModel;
  modelCopy = model;
  managerCopy = manager;
  v10 = objc_alloc_init(ICSiCloudAppListViewController);
  [(ICSiCloudAppListViewController *)v10 setAccountManager:managerCopy];

  [(ICSiCloudAppListViewController *)v10 setHomeViewModel:modelCopy];
  [(ICSiCloudAppListViewController *)v10 setManageStorageAppsListViewModel:viewModelCopy];

  return v10;
}

@end