@interface TabBarController
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (NSArray)viewControllers;
- (_TtC5TeaUI16TabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5TeaUI16TabBarController)initWithTabs:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TabBarController

- (NSArray)viewControllers
{
  v2 = self;
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

- (void)setViewControllers:(id)a3
{
  if (a3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D8191314();
  }

  v4 = self;
  TabBarController.viewControllers.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  TabBarController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  TabBarController.viewDidAppear(_:)(a3);
}

- (_TtC5TeaUI16TabBarController)initWithTabs:(id)a3
{
  sub_1D7E0A1A8(0, &qword_1ECA11088);
  sub_1D8191314();
  TabBarController.init(tabs:)();
}

- (_TtC5TeaUI16TabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  TabBarController.init(nibName:bundle:)();
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TabBarController.tabBarController(_:shouldSelect:)(&v8->super, v7);

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TabBarController.tabBarController(_:didSelect:)(&v8->super, v7);
}

@end