@interface PKExpiredPassesNavigationController
- (PKExpiredPassesNavigationController)initWithExistingGroupsController:(id)a3 delegate:(id)a4;
@end

@implementation PKExpiredPassesNavigationController

- (PKExpiredPassesNavigationController)initWithExistingGroupsController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKExpiredPassesNavigationController;
  v8 = [(PKNavigationController *)&v12 init];
  if (v8)
  {
    v9 = [[PKExpiredPassesViewController alloc] initWithExistingGroupsController:v6 delegate:v7];
    expiredPassesViewController = v8->_expiredPassesViewController;
    v8->_expiredPassesViewController = v9;

    [(PKExpiredPassesNavigationController *)v8 pushViewController:v8->_expiredPassesViewController animated:0];
  }

  return v8;
}

@end