@interface RootHostingViewController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC8VideosUI25RootHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation RootHostingViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = sub_1E4119188();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E411940C();
}

- (_TtC8VideosUI25RootHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E4119914();
}

@end