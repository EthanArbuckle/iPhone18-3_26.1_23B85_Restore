@interface TabBarNavigationController
- (NSArray)viewControllers;
- (NSString)description;
- (UITabBarItem)tabBarItem;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setTabBarItem:(id)item;
- (void)setViewControllers:(id)controllers;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TabBarNavigationController

- (NSArray)viewControllers
{
  selfCopy = self;
  TabBarNavigationController.viewControllers.getter();

  sub_1D7E194D0();
  v3 = sub_1D8191304();

  return v3;
}

- (void)setViewControllers:(id)controllers
{
  sub_1D7E194D0();
  sub_1D8191314();
  selfCopy = self;
  TabBarNavigationController.viewControllers.setter();
}

- (UITabBarItem)tabBarItem
{
  selfCopy = self;
  v3 = TabBarNavigationController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  TabBarNavigationController.tabBarItem.setter(item);
}

- (NSString)description
{
  selfCopy = self;
  TabBarNavigationController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  TabBarNavigationController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  TabBarNavigationController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  TabBarNavigationController.viewDidAppear(_:)(appear);
}

- (void)showViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  TabBarNavigationController.show(_:sender:)(controller, v10);

  sub_1D7E7BAAC(v10);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabBarNavigationController.navigationController(_:willShow:animated:)(controllerCopy, viewControllerCopy, animated);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabBarNavigationController.navigationController(_:didShow:animated:)(&selfCopy->super.super.super, v9, 0);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = TabBarNavigationController.navigationController(_:animationControllerFor:from:to:)(controllerCopy, operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

@end