@interface VUIASCAppInstallerViewController
- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)installs;
- (VUIASCAppInstallerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VUIASCAppInstallerViewController)initWithTitle:(id)title subtitle:(id)subtitle request:(id)request forceDSIDless:(BOOL)dless onFlowComplete:(id)complete;
- (void)handleCancel;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation VUIASCAppInstallerViewController

- (VUIASCAppInstallerViewController)initWithTitle:(id)title subtitle:(id)subtitle request:(id)request forceDSIDless:(BOOL)dless onFlowComplete:(id)complete
{
  v8 = _Block_copy(complete);
  sub_1E4205F14();
  sub_1E4205F14();
  if (v8)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v8;
  }

  requestCopy = request;
  return AppInstallerViewController.init(title:subtitle:request:forceDSIDless:onFlowComplete:)();
}

- (VUIASCAppInstallerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return AppInstallerViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  AppInstallerViewController.viewDidLoad()();
}

- (void)handleCancel
{
  selfCopy = self;
  sub_1E3835034();
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  AppInstallerViewController.lockupView(_:appStateDidChange:)(selfCopy, changeCopy);
}

- (BOOL)lockupViewShouldSupportDSIDLessInstalls:(id)installs
{
  installsCopy = installs;
  selfCopy = self;
  LOBYTE(self) = AppInstallerViewController.lockupViewShouldSupportDSIDLessInstalls(_:)();

  return self & 1;
}

@end