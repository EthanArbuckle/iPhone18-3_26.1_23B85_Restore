@interface DebugViewController
- (_TtC5TeaUI19DebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doDone;
- (void)doSettings;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugViewController

- (void)viewDidLoad
{
  v2 = self;
  DebugViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  DebugViewController.viewWillLayoutSubviews()();
}

- (void)doDone
{
  v2 = self;
  sub_1D80A7F24();
}

- (void)doSettings
{
  v2 = self;
  sub_1D80AF048();
}

- (_TtC5TeaUI19DebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  DebugViewController.init(nibName:bundle:)();
}

@end