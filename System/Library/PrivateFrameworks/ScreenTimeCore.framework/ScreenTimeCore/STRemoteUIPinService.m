@interface STRemoteUIPinService
- (void)presentRemotePINControllerWithCompletionHandler:(id)a3;
@end

@implementation STRemoteUIPinService

- (void)presentRemotePINControllerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v7[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v7[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v8[0] = @"STRemoteServiceViewController";
  v8[1] = &__kCFBooleanTrue;
  v8[2] = &__kCFBooleanTrue;
  v7[2] = SBSUIRemoteAlertOptionDisableFadeInAnimation;
  v7[3] = SBSUIRemoteAlertOptionLaunchingInterfaceOrientation;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [UIApp activeInterfaceOrientation]);
  v8[3] = v4;
  [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = v3;
  v5 = v6;
  SBSUIActivateRemoteAlertWithLifecycleNotifications();
}

@end