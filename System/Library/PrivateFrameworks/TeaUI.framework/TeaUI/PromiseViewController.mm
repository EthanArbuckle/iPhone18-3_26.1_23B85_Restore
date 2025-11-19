@interface PromiseViewController
- (NSString)description;
- (UINavigationItem)navigationItem;
- (_TtC5TeaUI21PromiseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (int64_t)preferredStatusBarStyle;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PromiseViewController

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v0 = sub_1D7F1C630();

  return v0;
}

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1D7F1B3D8();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7F1B47C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7F1C570(a3);
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1D7F1C660(a3);

  return v5;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = sub_1D7F1C724();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1D7F1CA1C();

  v3 = sub_1D8190EE4();

  return v3;
}

- (_TtC5TeaUI21PromiseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  PromiseViewController.init(nibName:bundle:)();
}

@end