@interface BootstrapperViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC5TeaUI26BootstrapperViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC5TeaUI26BootstrapperViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  sub_1D7FF9D04();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7FF9DCC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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