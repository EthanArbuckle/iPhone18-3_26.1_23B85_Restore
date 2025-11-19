@interface PreviewViewController
- (_TtC5TeaUI21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PreviewViewController

- (void)viewDidLoad
{
  v2 = self;
  PreviewViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  PreviewViewController.viewDidDisappear(_:)(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PreviewViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  PreviewViewController.viewWillLayoutSubviews()();
}

- (_TtC5TeaUI21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  PreviewViewController.init(nibName:bundle:)();
}

@end