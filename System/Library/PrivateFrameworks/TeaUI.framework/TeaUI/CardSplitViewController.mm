@interface CardSplitViewController
- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController;
- (NSArray)keyCommands;
- (NSArray)viewControllers;
- (_TtC5TeaUI23CardSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarStyle;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (void)loadView;
- (void)setViewControllers:(id)controllers;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)toggleResponderPane;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CardSplitViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7E3421C(&selRef_viewDidLoad);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D7E33D3C(appear);
}

- (NSArray)viewControllers
{
  selfCopy = self;
  sub_1D7E34184();

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191304();

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D7E36F58(change);
}

- (void)setViewControllers:(id)controllers
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D8191314();
  selfCopy = self;
  sub_1D7E36978();
}

- (void)loadView
{
  selfCopy = self;
  sub_1D7E33B18();
}

- (id)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v2 = sub_1D7E36B50();

  return v2;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  CardSplitViewController.splitViewController(_:willChangeTo:)(&selfCopy->super, mode);
}

- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  primaryViewControllerCopy = primaryViewController;
  selfCopy = self;
  LOBYTE(self) = CardSplitViewController.splitViewController(_:collapseSecondary:onto:)(&selfCopy->super, viewControllerCopy, primaryViewControllerCopy);

  return self & 1;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D7E38924();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D7E6EC2C(appear);
}

- (void)toggleResponderPane
{
  selfCopy = self;
  sub_1D7E6EF54();
}

- (_TtC5TeaUI23CardSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  CardSplitViewController.init(nibName:bundle:)();
}

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  CardSplitViewController.splitViewController(_:separateSecondaryFrom:)(v9, &selfCopy->super, viewControllerCopy);
  v11 = v10;

  return v11;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  CardSplitViewController.keyCommands.getter();
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

@end