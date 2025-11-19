@interface TabBarSplitViewController
- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5;
- (NSArray)keyCommands;
- (NSArray)viewControllers;
- (_TtC5TeaUI25TabBarSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarHidden;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (int64_t)preferredDisplayMode;
- (int64_t)targetDisplayModeForActionInSplitViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)openNewWindow;
- (void)setPreferredDisplayMode:(int64_t)a3;
- (void)setViewControllers:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)tabBarNavigationControllerDidPopWithNotification:(id)a3;
- (void)toggleResponderPane;
- (void)toggleSideBarVisibility;
- (void)toggleSplitViewFocusTo:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TabBarSplitViewController

- (id)childViewControllerForStatusBarHidden
{
  v1 = a1;
  v2 = TabBarSplitViewController.childForStatusBarStyle.getter();

  return v2;
}

- (_TtC5TeaUI25TabBarSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  TabBarSplitViewController.init(nibName:bundle:)();
}

- (void)loadView
{
  v2 = self;
  TabBarSplitViewController.loadView()();
}

- (NSArray)viewControllers
{
  v2 = self;
  TabBarSplitViewController.viewControllers.getter();

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191304();

  return v3;
}

- (void)setViewControllers:(id)a3
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D8191314();
  v4 = self;
  TabBarSplitViewController.viewControllers.setter();
}

- (int64_t)preferredDisplayMode
{
  v2 = self;
  v3 = TabBarSplitViewController.preferredDisplayMode.getter();

  return v3;
}

- (void)setPreferredDisplayMode:(int64_t)a3
{
  v3 = self;
  TabBarSplitViewController.preferredDisplayMode.setter();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  TabBarSplitViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLoad
{
  v2 = self;
  TabBarSplitViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  TabBarSplitViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  TabBarSplitViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  TabBarSplitViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  TabBarSplitViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  TabBarSplitViewController.didReceiveMemoryWarning()();
}

- (void)tabBarNavigationControllerDidPopWithNotification:(id)a3
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  v8 = self;
  sub_1D7F6D1F4();

  (*(v5 + 8))(v7, v4);
}

- (void)splitViewControllerDidCollapse:(id)a3
{
  v4 = a3;
  v5 = self;
  TabBarSplitViewController.splitViewControllerDidCollapse(_:)(v4);
}

- (void)splitViewControllerDidExpand:(id)a3
{
  v4 = a3;
  v5 = self;
  TabBarSplitViewController.splitViewControllerDidExpand(_:)(v4);
}

- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  LOBYTE(self) = TabBarSplitViewController.splitViewController(_:collapseSecondary:onto:)(&v11->super, v9, v10);

  return self & 1;
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TabBarSplitViewController.splitViewController(_:separateSecondaryFrom:)(v9, &v8->super, v7);
  v11 = v10;

  return v11;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  TabBarSplitViewController.splitViewController(_:willChangeTo:)(&v7->super, a4);
}

- (int64_t)targetDisplayModeForActionInSplitViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = TabBarSplitViewController.targetDisplayModeForAction(in:)(v4);

  return v6;
}

- (NSArray)keyCommands
{
  v2 = self;
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
  v2 = self;
  sub_1D7F74AF8();
}

- (void)toggleResponderPane
{
  v2 = self;
  sub_1D7F74C24();
}

- (void)toggleSideBarVisibility
{
  v2 = self;
  sub_1D7F74F10();
}

- (void)toggleSplitViewFocusTo:(int64_t)a3
{
  v4 = self;
  TabBarSplitViewController.toggleSplitViewFocus(to:)(a3);
}

@end