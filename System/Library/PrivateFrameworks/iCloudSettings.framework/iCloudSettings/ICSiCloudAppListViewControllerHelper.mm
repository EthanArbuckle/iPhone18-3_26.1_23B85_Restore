@interface ICSiCloudAppListViewControllerHelper
+ (id)makeAppListViewControllerWithAccountManager:(id)a3 homeViewModel:(id)a4 manageStorageAppsListViewModel:(id)a5;
@end

@implementation ICSiCloudAppListViewControllerHelper

+ (id)makeAppListViewControllerWithAccountManager:(id)a3 homeViewModel:(id)a4 manageStorageAppsListViewModel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(ICSiCloudAppListViewController);
  [(ICSiCloudAppListViewController *)v10 setAccountManager:v9];

  [(ICSiCloudAppListViewController *)v10 setHomeViewModel:v8];
  [(ICSiCloudAppListViewController *)v10 setManageStorageAppsListViewModel:v7];

  return v10;
}

@end