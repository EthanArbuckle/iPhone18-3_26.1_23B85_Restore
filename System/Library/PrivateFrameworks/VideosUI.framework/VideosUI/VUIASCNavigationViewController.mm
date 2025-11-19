@interface VUIASCNavigationViewController
- (VUIASCNavigationViewController)initWithAppName:(id)a3 appBundleIDs:(id)a4 appAdamIDs:(id)a5 contentTitle:(id)a6 shouldHandleVPPA:(BOOL)a7 shouldPunchOutAfterAppInstallation:(BOOL)a8;
- (VUIASCNavigationViewController)initWithChannelDetails:(id)a3 punchoutAction:(id)a4 shouldHandleVPPA:(BOOL)a5 onFlowComplete:(id)a6;
- (void)viewDidLoad;
@end

@implementation VUIASCNavigationViewController

- (VUIASCNavigationViewController)initWithChannelDetails:(id)a3 punchoutAction:(id)a4 shouldHandleVPPA:(BOOL)a5 onFlowComplete:(id)a6
{
  v8 = _Block_copy(a6);
  if (v8)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v8;
  }

  v9 = a3;
  v10 = a4;
  ASCNavigationViewController.init(channelDetails:punchoutAction:shouldHandleVPPA:onFlowComplete:)();
  return result;
}

- (VUIASCNavigationViewController)initWithAppName:(id)a3 appBundleIDs:(id)a4 appAdamIDs:(id)a5 contentTitle:(id)a6 shouldHandleVPPA:(BOOL)a7 shouldPunchOutAfterAppInstallation:(BOOL)a8
{
  OUTLINED_FUNCTION_31_1();
  v9 = v8;
  if (v10)
  {
    sub_1E4205F14();
  }

  sub_1E42062B4();
  sub_1E42062B4();
  if (v9)
  {
    sub_1E4205F14();
  }

  v11 = OUTLINED_FUNCTION_75();
  ASCNavigationViewController.init(appName:appBundleIDs:appAdamIDs:contentTitle:shouldHandleVPPA:shouldPunchOutAfterAppInstallation:)(v11);
  OUTLINED_FUNCTION_25_2();
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  ASCNavigationViewController.viewDidLoad()();
}

@end