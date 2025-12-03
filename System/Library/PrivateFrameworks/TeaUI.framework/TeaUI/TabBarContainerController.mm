@interface TabBarContainerController
- (_TtC5TeaUI25TabBarContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarHidden;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TabBarContainerController

- (id)childViewControllerForStatusBarHidden
{
  v0 = sub_1D814C938();

  return v0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D814C6E4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D814C808();
}

- (_TtC5TeaUI25TabBarContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  sub_1D814C968();
}

@end