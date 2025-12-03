@interface StatusBannerContainerController
- (BOOL)_shouldOverlayTabBar;
- (BOOL)hidesBottomBarWhenPushed;
- (UITabBarItem)tabBarItem;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (_TtC5TeaUI31StatusBannerContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_hostingNavigationBar;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHidesBottomBarWhenPushed:(BOOL)pushed;
- (void)setTabBarItem:(id)item;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation StatusBannerContainerController

- (void)loadView
{
  selfCopy = self;
  sub_1D7E48060();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7E48284();
}

- (id)_hostingNavigationBar
{
  selfCopy = self;
  v3 = sub_1D7E4C0E8();

  return v3;
}

- (id)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v2 = sub_1D7E4D144();

  return v2;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7E4D7B4();
}

- (BOOL)_shouldOverlayTabBar
{
  selfCopy = self;
  v3 = sub_1D7F858B8();

  return v3 & 1;
}

- (UIViewController)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = sub_1D7F85978();

  return v2;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_1D7F859A8(edge);

  return v5;
}

- (_TtC5TeaUI31StatusBannerContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  StatusBannerContainerController.init(nibName:bundle:)();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  StatusBannerContainerController.setEditing(_:animated:)(editing, animated);
}

- (BOOL)hidesBottomBarWhenPushed
{
  selfCopy = self;
  v3 = StatusBannerContainerController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)pushed
{
  selfCopy = self;
  StatusBannerContainerController.hidesBottomBarWhenPushed.setter(pushed);
}

- (UITabBarItem)tabBarItem
{
  selfCopy = self;
  v3 = StatusBannerContainerController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  StatusBannerContainerController.tabBarItem.setter(item);
}

@end