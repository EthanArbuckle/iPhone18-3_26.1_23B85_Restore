@interface BootstrapperViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC5TeaUI26BootstrapperViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarHidden;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BootstrapperViewController

- (id)childViewControllerForStatusBarHidden
{
  v0 = sub_1D7FFA1E8();

  return v0;
}

- (_TtC5TeaUI26BootstrapperViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  sub_1D7FF9D04();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7FF9DCC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7FFA060();
}

- (NSArray)preferredFocusEnvironments
{
  sub_1D7FFA294();
  sub_1D7FFA334();
  v2 = sub_1D8191304();

  return v2;
}

@end