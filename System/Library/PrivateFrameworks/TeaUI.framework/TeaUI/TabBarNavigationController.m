@interface TabBarNavigationController
- (NSArray)viewControllers;
- (NSString)description;
- (UITabBarItem)tabBarItem;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)setTabBarItem:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TabBarNavigationController

- (NSArray)viewControllers
{
  v2 = self;
  TabBarNavigationController.viewControllers.getter();

  sub_1D7E194D0();
  v3 = sub_1D8191304();

  return v3;
}

- (void)setViewControllers:(id)a3
{
  sub_1D7E194D0();
  sub_1D8191314();
  v4 = self;
  TabBarNavigationController.viewControllers.setter();
}

- (UITabBarItem)tabBarItem
{
  v2 = self;
  v3 = TabBarNavigationController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)a3
{
  v5 = a3;
  v6 = self;
  TabBarNavigationController.tabBarItem.setter(a3);
}

- (NSString)description
{
  v2 = self;
  TabBarNavigationController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  TabBarNavigationController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  TabBarNavigationController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  TabBarNavigationController.viewDidAppear(_:)(a3);
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  TabBarNavigationController.show(_:sender:)(a3, v10);

  sub_1D7E7BAAC(v10);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  TabBarNavigationController.navigationController(_:willShow:animated:)(v8, v9, a5);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v10 = self;
  TabBarNavigationController.navigationController(_:didShow:animated:)(&v10->super.super.super, v9, 0);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = TabBarNavigationController.navigationController(_:animationControllerFor:from:to:)(v10, a4, v11, v12);

  return v14;
}

@end