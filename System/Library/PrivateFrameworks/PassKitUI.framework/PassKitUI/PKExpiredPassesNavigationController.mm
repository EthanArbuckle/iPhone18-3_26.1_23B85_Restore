@interface PKExpiredPassesNavigationController
- (PKExpiredPassesNavigationController)initWithExistingGroupsController:(id)controller delegate:(id)delegate;
@end

@implementation PKExpiredPassesNavigationController

- (PKExpiredPassesNavigationController)initWithExistingGroupsController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKExpiredPassesNavigationController;
  v8 = [(PKNavigationController *)&v12 init];
  if (v8)
  {
    v9 = [[PKExpiredPassesViewController alloc] initWithExistingGroupsController:controllerCopy delegate:delegateCopy];
    expiredPassesViewController = v8->_expiredPassesViewController;
    v8->_expiredPassesViewController = v9;

    [(PKExpiredPassesNavigationController *)v8 pushViewController:v8->_expiredPassesViewController animated:0];
  }

  return v8;
}

@end