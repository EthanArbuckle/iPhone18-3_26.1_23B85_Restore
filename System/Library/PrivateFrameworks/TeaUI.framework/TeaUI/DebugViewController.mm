@interface DebugViewController
- (_TtC5TeaUI19DebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doDone;
- (void)doSettings;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugViewController

- (void)viewDidLoad
{
  selfCopy = self;
  DebugViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  DebugViewController.viewWillLayoutSubviews()();
}

- (void)doDone
{
  selfCopy = self;
  sub_1D80A7F24();
}

- (void)doSettings
{
  selfCopy = self;
  sub_1D80AF048();
}

- (_TtC5TeaUI19DebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  DebugViewController.init(nibName:bundle:)();
}

@end