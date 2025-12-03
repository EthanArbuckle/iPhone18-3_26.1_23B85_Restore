@interface TabBarController
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (NSArray)viewControllers;
- (_TtC5TeaUI16TabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5TeaUI16TabBarController)initWithTabs:(id)tabs;
- (void)setViewControllers:(id)controllers;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TabBarController

- (NSArray)viewControllers
{
  selfCopy = self;
  v3 = TabBarController.viewControllers.getter();

  if (v3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setViewControllers:(id)controllers
{
  if (controllers)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D8191314();
  }

  selfCopy = self;
  TabBarController.viewControllers.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  TabBarController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  TabBarController.viewDidAppear(_:)(appear);
}

- (_TtC5TeaUI16TabBarController)initWithTabs:(id)tabs
{
  sub_1D7E0A1A8(0, &qword_1ECA11088);
  sub_1D8191314();
  TabBarController.init(tabs:)();
}

- (_TtC5TeaUI16TabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  TabBarController.init(nibName:bundle:)();
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabBarController.tabBarController(_:shouldSelect:)(&selfCopy->super, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabBarController.tabBarController(_:didSelect:)(&selfCopy->super, viewControllerCopy);
}

@end