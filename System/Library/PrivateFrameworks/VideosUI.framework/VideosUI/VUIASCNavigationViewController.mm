@interface VUIASCNavigationViewController
- (VUIASCNavigationViewController)initWithAppName:(id)name appBundleIDs:(id)ds appAdamIDs:(id)iDs contentTitle:(id)title shouldHandleVPPA:(BOOL)a shouldPunchOutAfterAppInstallation:(BOOL)installation;
- (VUIASCNavigationViewController)initWithChannelDetails:(id)details punchoutAction:(id)action shouldHandleVPPA:(BOOL)a onFlowComplete:(id)complete;
- (void)viewDidLoad;
@end

@implementation VUIASCNavigationViewController

- (VUIASCNavigationViewController)initWithChannelDetails:(id)details punchoutAction:(id)action shouldHandleVPPA:(BOOL)a onFlowComplete:(id)complete
{
  v8 = _Block_copy(complete);
  if (v8)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v8;
  }

  detailsCopy = details;
  actionCopy = action;
  ASCNavigationViewController.init(channelDetails:punchoutAction:shouldHandleVPPA:onFlowComplete:)();
  return result;
}

- (VUIASCNavigationViewController)initWithAppName:(id)name appBundleIDs:(id)ds appAdamIDs:(id)iDs contentTitle:(id)title shouldHandleVPPA:(BOOL)a shouldPunchOutAfterAppInstallation:(BOOL)installation
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
  selfCopy = self;
  ASCNavigationViewController.viewDidLoad()();
}

@end