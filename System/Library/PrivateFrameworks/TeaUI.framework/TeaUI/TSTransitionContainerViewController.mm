@interface TSTransitionContainerViewController
- (BOOL)hidesBottomBarWhenPushed;
- (NSString)description;
- (TSTransitionContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TSTransitionContainerViewController)initWithRootViewController:(id)controller identifier:(id)identifier;
- (UITabBarItem)tabBarItem;
- (id)childViewControllerForStatusBarStyle;
- (void)handleDismiss;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHidesBottomBarWhenPushed:(BOOL)pushed;
- (void)setTabBarItem:(id)item;
- (void)tabBarSplitViewDidChangeCollapseStateToCollapseState:(BOOL)state;
- (void)tabBarSplitViewDidChangeTraitCollectionToTraitCollection:(id)collection;
- (void)tabBarSplitViewWillChangeDisplayModeToDisplayMode:(int64_t)mode;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation TSTransitionContainerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  TransitionContainerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  TransitionContainerViewController.viewWillAppear(_:)(appear);
}

- (id)childViewControllerForStatusBarStyle
{
  v0 = TransitionContainerViewController.childForStatusBarStyle.getter();

  return v0;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  TransitionContainerViewController.viewWillLayoutSubviews()();
}

- (TSTransitionContainerViewController)initWithRootViewController:(id)controller identifier:(id)identifier
{
  sub_1D8190F14();
  controllerCopy = controller;
  return TransitionContainerViewController.init(rootViewController:identifier:)();
}

- (NSString)description
{
  selfCopy = self;
  TransitionContainerViewController.description.getter();

  v3 = sub_1D8190EE4();

  return v3;
}

- (TSTransitionContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  TransitionContainerViewController.init(nibName:bundle:)();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  TransitionContainerViewController.viewDidDisappear(_:)(disappear);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  TransitionContainerViewController.setEditing(_:animated:)(editing, animated);
}

- (BOOL)hidesBottomBarWhenPushed
{
  selfCopy = self;
  v3 = TransitionContainerViewController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)pushed
{
  selfCopy = self;
  TransitionContainerViewController.hidesBottomBarWhenPushed.setter();
}

- (UITabBarItem)tabBarItem
{
  selfCopy = self;
  v3 = TransitionContainerViewController.tabBarItem.getter();

  return v3;
}

- (void)setTabBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  TransitionContainerViewController.tabBarItem.setter(item);
}

- (void)tabBarSplitViewDidChangeTraitCollectionToTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  TransitionContainerViewController.tabBarSplitViewDidChangeTraitCollection(to:)(selfCopy);
}

- (void)tabBarSplitViewDidChangeCollapseStateToCollapseState:(BOOL)state
{
  selfCopy = self;
  TransitionContainerViewController.tabBarSplitViewCollapseStateDidChange(to:)(0);
}

- (void)tabBarSplitViewWillChangeDisplayModeToDisplayMode:(int64_t)mode
{
  selfCopy = self;
  TransitionContainerViewController.tabBarSplitViewWillChangeDisplayMode(to:)(mode);
}

- (void)handleDismiss
{
  selfCopy = self;
  sub_1D7F2D8C0();
}

@end