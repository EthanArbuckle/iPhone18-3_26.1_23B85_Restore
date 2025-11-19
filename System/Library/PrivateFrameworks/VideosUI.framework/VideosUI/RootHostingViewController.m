@interface RootHostingViewController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC8VideosUI25RootHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation RootHostingViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = sub_1E4119188();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1E411940C();
}

- (_TtC8VideosUI25RootHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E4119914();
}

@end