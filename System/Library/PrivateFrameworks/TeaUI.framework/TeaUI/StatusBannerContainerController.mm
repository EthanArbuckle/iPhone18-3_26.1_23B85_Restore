@interface StatusBannerContainerController
- (BOOL)_shouldOverlayTabBar;
- (BOOL)hidesBottomBarWhenPushed;
- (UITabBarItem)tabBarItem;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (_TtC5TeaUI31StatusBannerContainerController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_hostingNavigationBar;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHidesBottomBarWhenPushed:(BOOL)a3;
- (void)setTabBarItem:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation StatusBannerContainerController

- (void)loadView
{
  v2 = self;
  sub_1D7E48060();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7E48284();
}

- (id)_hostingNavigationBar
{
  v2 = self;
  v3 = sub_1D7E4C0E8();

  return v3;
}

- (id)childViewControllerForStatusBarStyle
{
  v1 = a1;
  v2 = sub_1D7E4D144();

  return v2;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7E4D7B4();
}

- (BOOL)_shouldOverlayTabBar
{
  v2 = self;
  v3 = sub_1D7F858B8();

  return v3 & 1;
}

- (UIViewController)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = sub_1D7F85978();

  return v2;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D7F859A8(a3);

  return v5;
}

- (_TtC5TeaUI31StatusBannerContainerController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  StatusBannerContainerController.init(nibName:bundle:)();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  StatusBannerContainerController.setEditing(_:animated:)(a3, a4);
}

- (BOOL)hidesBottomBarWhenPushed
{
  v2 = self;
  v3 = StatusBannerContainerController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)a3
{
  v4 = self;
  StatusBannerContainerController.hidesBottomBarWhenPushed.setter(a3);
}

- (UITabBarItem)tabBarItem
{
  v2 = self;
  v3 = StatusBannerContainerController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)a3
{
  v5 = a3;
  v6 = self;
  StatusBannerContainerController.tabBarItem.setter(a3);
}

@end