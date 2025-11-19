@interface DebugSubViewController
- (_TtC5TeaUI22DebugSubViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doDone;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugSubViewController

- (void)viewDidLoad
{
  v2 = self;
  DebugSubViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  DebugSubViewController.viewWillLayoutSubviews()();
}

- (void)doDone
{
  v2 = self;
  sub_1D80A7F24();
}

- (_TtC5TeaUI22DebugSubViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  DebugSubViewController.init(nibName:bundle:)();
}

@end