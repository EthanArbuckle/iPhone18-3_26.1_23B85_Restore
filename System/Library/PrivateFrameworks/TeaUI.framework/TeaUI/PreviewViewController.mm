@interface PreviewViewController
- (_TtC5TeaUI21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PreviewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PreviewViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  PreviewViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PreviewViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  PreviewViewController.viewWillLayoutSubviews()();
}

- (_TtC5TeaUI21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  PreviewViewController.init(nibName:bundle:)();
}

@end