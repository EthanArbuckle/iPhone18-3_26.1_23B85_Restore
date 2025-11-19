@interface TabBarContainerController
- (_TtC5TeaUI25TabBarContainerController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_1D814C6E4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D814C808();
}

- (_TtC5TeaUI25TabBarContainerController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  sub_1D814C968();
}

@end