@interface DebugSubViewController
- (_TtC5TeaUI22DebugSubViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doDone;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugSubViewController

- (void)viewDidLoad
{
  selfCopy = self;
  DebugSubViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  DebugSubViewController.viewWillLayoutSubviews()();
}

- (void)doDone
{
  selfCopy = self;
  sub_1D80A7F24();
}

- (_TtC5TeaUI22DebugSubViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  DebugSubViewController.init(nibName:bundle:)();
}

@end