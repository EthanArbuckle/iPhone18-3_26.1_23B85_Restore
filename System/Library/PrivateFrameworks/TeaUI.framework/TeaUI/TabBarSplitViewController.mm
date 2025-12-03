@interface TabBarSplitViewController
- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController;
- (NSArray)keyCommands;
- (NSArray)viewControllers;
- (_TtC5TeaUI25TabBarSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarHidden;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (int64_t)preferredDisplayMode;
- (int64_t)targetDisplayModeForActionInSplitViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)openNewWindow;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setViewControllers:(id)controllers;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)tabBarNavigationControllerDidPopWithNotification:(id)notification;
- (void)toggleResponderPane;
- (void)toggleSideBarVisibility;
- (void)toggleSplitViewFocusTo:(int64_t)to;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TabBarSplitViewController

- (id)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v2 = TabBarSplitViewController.childForStatusBarStyle.getter();

  return v2;
}

- (_TtC5TeaUI25TabBarSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  TabBarSplitViewController.init(nibName:bundle:)();
}

- (void)loadView
{
  selfCopy = self;
  TabBarSplitViewController.loadView()();
}

- (NSArray)viewControllers
{
  selfCopy = self;
  TabBarSplitViewController.viewControllers.getter();

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191304();

  return v3;
}

- (void)setViewControllers:(id)controllers
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D8191314();
  selfCopy = self;
  TabBarSplitViewController.viewControllers.setter();
}

- (int64_t)preferredDisplayMode
{
  selfCopy = self;
  v3 = TabBarSplitViewController.preferredDisplayMode.getter();

  return v3;
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  selfCopy = self;
  TabBarSplitViewController.preferredDisplayMode.setter();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  TabBarSplitViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLoad
{
  selfCopy = self;
  TabBarSplitViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  TabBarSplitViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  TabBarSplitViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  TabBarSplitViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  TabBarSplitViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  TabBarSplitViewController.didReceiveMemoryWarning()();
}

- (void)tabBarNavigationControllerDidPopWithNotification:(id)notification
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  selfCopy = self;
  sub_1D7F6D1F4();

  (*(v5 + 8))(v7, v4);
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  collapseCopy = collapse;
  selfCopy = self;
  TabBarSplitViewController.splitViewControllerDidCollapse(_:)(collapseCopy);
}

- (void)splitViewControllerDidExpand:(id)expand
{
  expandCopy = expand;
  selfCopy = self;
  TabBarSplitViewController.splitViewControllerDidExpand(_:)(expandCopy);
}

- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  primaryViewControllerCopy = primaryViewController;
  selfCopy = self;
  LOBYTE(self) = TabBarSplitViewController.splitViewController(_:collapseSecondary:onto:)(&selfCopy->super, viewControllerCopy, primaryViewControllerCopy);

  return self & 1;
}

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabBarSplitViewController.splitViewController(_:separateSecondaryFrom:)(v9, &selfCopy->super, viewControllerCopy);
  v11 = v10;

  return v11;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  TabBarSplitViewController.splitViewController(_:willChangeTo:)(&selfCopy->super, mode);
}

- (int64_t)targetDisplayModeForActionInSplitViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = TabBarSplitViewController.targetDisplayModeForAction(in:)(controllerCopy);

  return v6;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  TabBarSplitViewController.keyCommands.getter();
  v4 = v3;

  if (v4)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3260);
    v5 = sub_1D8191304();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)openNewWindow
{
  selfCopy = self;
  sub_1D7F74AF8();
}

- (void)toggleResponderPane
{
  selfCopy = self;
  sub_1D7F74C24();
}

- (void)toggleSideBarVisibility
{
  selfCopy = self;
  sub_1D7F74F10();
}

- (void)toggleSplitViewFocusTo:(int64_t)to
{
  selfCopy = self;
  TabBarSplitViewController.toggleSplitViewFocus(to:)(to);
}

@end