@interface CardSplitViewController
- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5;
- (NSArray)keyCommands;
- (NSArray)viewControllers;
- (_TtC5TeaUI23CardSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarStyle;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (void)loadView;
- (void)setViewControllers:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)toggleResponderPane;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CardSplitViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7E3421C(&selRef_viewDidLoad);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D7E33D3C(a3);
}

- (NSArray)viewControllers
{
  v2 = self;
  sub_1D7E34184();

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191304();

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7E36F58(a3);
}

- (void)setViewControllers:(id)a3
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D8191314();
  v4 = self;
  sub_1D7E36978();
}

- (void)loadView
{
  v2 = self;
  sub_1D7E33B18();
}

- (id)childViewControllerForStatusBarStyle
{
  v1 = a1;
  v2 = sub_1D7E36B50();

  return v2;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  CardSplitViewController.splitViewController(_:willChangeTo:)(&v7->super, a4);
}

- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  LOBYTE(self) = CardSplitViewController.splitViewController(_:collapseSecondary:onto:)(&v11->super, v9, v10);

  return self & 1;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D7E38924();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1D7E6EC2C(a3);
}

- (void)toggleResponderPane
{
  v2 = self;
  sub_1D7E6EF54();
}

- (_TtC5TeaUI23CardSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  CardSplitViewController.init(nibName:bundle:)();
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CardSplitViewController.splitViewController(_:separateSecondaryFrom:)(v9, &v8->super, v7);
  v11 = v10;

  return v11;
}

- (NSArray)keyCommands
{
  v2 = self;
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