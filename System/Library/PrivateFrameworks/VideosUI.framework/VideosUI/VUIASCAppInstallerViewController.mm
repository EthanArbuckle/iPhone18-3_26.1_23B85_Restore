@interface VUIASCAppInstallerViewController
- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)a3;
- (VUIASCAppInstallerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VUIASCAppInstallerViewController)initWithTitle:(id)a3 subtitle:(id)a4 request:(id)a5 forceDSIDless:(BOOL)a6 onFlowComplete:(id)a7;
- (void)handleCancel;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)viewDidLoad;
@end

@implementation VUIASCAppInstallerViewController

- (VUIASCAppInstallerViewController)initWithTitle:(id)a3 subtitle:(id)a4 request:(id)a5 forceDSIDless:(BOOL)a6 onFlowComplete:(id)a7
{
  v8 = _Block_copy(a7);
  sub_1E4205F14();
  sub_1E4205F14();
  if (v8)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v8;
  }

  v9 = a5;
  return AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)();
}

- (VUIASCAppInstallerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return AppInstallerViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  AppInstallerViewController.viewDidLoad()();
}

- (void)handleCancel
{
  v2 = self;
  sub_1E3835034();
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AppInstallerViewController.lockupView(_:appStateDidChange:)(v8, v7);
}

- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = AppInstallerViewController.lockupViewShouldSupportDSIDLessInstalls(_:)();

  return self & 1;
}

@end