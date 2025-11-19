@interface TSTransitionContainerViewController
- (BOOL)hidesBottomBarWhenPushed;
- (NSString)description;
- (TSTransitionContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TSTransitionContainerViewController)initWithRootViewController:(id)a3 identifier:(id)a4;
- (UITabBarItem)tabBarItem;
- (id)childViewControllerForStatusBarStyle;
- (void)handleDismiss;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHidesBottomBarWhenPushed:(BOOL)a3;
- (void)setTabBarItem:(id)a3;
- (void)tabBarSplitViewDidChangeCollapseStateToCollapseState:(BOOL)a3;
- (void)tabBarSplitViewDidChangeTraitCollectionToTraitCollection:(id)a3;
- (void)tabBarSplitViewWillChangeDisplayModeToDisplayMode:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TSTransitionContainerViewController

- (void)viewDidLoad
{
  v2 = self;
  TransitionContainerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  TransitionContainerViewController.viewWillAppear(_:)(a3);
}

- (id)childViewControllerForStatusBarStyle
{
  v0 = TransitionContainerViewController.childForStatusBarStyle.getter();

  return v0;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  TransitionContainerViewController.viewWillLayoutSubviews()();
}

- (TSTransitionContainerViewController)initWithRootViewController:(id)a3 identifier:(id)a4
{
  sub_1D8190F14();
  v5 = a3;
  return TransitionContainerViewController.init(rootViewController:identifier:)();
}

- (NSString)description
{
  v2 = self;
  TransitionContainerViewController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (TSTransitionContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  TransitionContainerViewController.init(nibName:bundle:)();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  TransitionContainerViewController.viewDidDisappear(_:)(a3);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  TransitionContainerViewController.setEditing(_:animated:)(a3, a4);
}

- (BOOL)hidesBottomBarWhenPushed
{
  v2 = self;
  v3 = TransitionContainerViewController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)a3
{
  v3 = self;
  TransitionContainerViewController.hidesBottomBarWhenPushed.setter();
}

- (UITabBarItem)tabBarItem
{
  v2 = self;
  v3 = TransitionContainerViewController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)a3
{
  v5 = a3;
  v6 = self;
  TransitionContainerViewController.tabBarItem.setter(a3);
}

- (void)tabBarSplitViewDidChangeTraitCollectionToTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  TransitionContainerViewController.tabBarSplitViewDidChangeTraitCollection(to:)(v5);
}

- (void)tabBarSplitViewDidChangeCollapseStateToCollapseState:(BOOL)a3
{
  v3 = self;
  TransitionContainerViewController.tabBarSplitViewCollapseStateDidChange(to:)(0);
}

- (void)tabBarSplitViewWillChangeDisplayModeToDisplayMode:(int64_t)a3
{
  v4 = self;
  TransitionContainerViewController.tabBarSplitViewWillChangeDisplayMode(to:)(a3);
}

- (void)handleDismiss
{
  v2 = self;
  sub_1D7F2D8C0();
}

@end