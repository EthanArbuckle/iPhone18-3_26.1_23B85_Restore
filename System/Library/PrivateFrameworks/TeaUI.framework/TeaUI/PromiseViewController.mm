@interface PromiseViewController
- (NSString)description;
- (UINavigationItem)navigationItem;
- (_TtC5TeaUI21PromiseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (int64_t)preferredStatusBarStyle;
- (void)traitCollectionDidChange:(id)change;
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
  selfCopy = self;
  v3 = sub_1D7F1B3D8();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7F1B47C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D7F1C570(change);
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_1D7F1C660(edge);

  return v5;
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  v3 = sub_1D7F1C724();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1D7F1CA1C();

  v3 = sub_1D8190EE4();

  return v3;
}

- (_TtC5TeaUI21PromiseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  PromiseViewController.init(nibName:bundle:)();
}

@end