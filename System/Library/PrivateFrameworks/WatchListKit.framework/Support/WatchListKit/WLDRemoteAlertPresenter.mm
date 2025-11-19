@interface WLDRemoteAlertPresenter
+ (BOOL)isUnlocked;
- (BOOL)_isPad;
- (BOOL)promptForBundleID:(id)a3;
- (WLDRemoteAlertPresenter)init;
@end

@implementation WLDRemoteAlertPresenter

- (WLDRemoteAlertPresenter)init
{
  v3.receiver = self;
  v3.super_class = WLDRemoteAlertPresenter;
  return [(WLDRemoteAlertPresenter *)&v3 init];
}

+ (BOOL)isUnlocked
{
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  NSLog(@"WLDRemoteAlertPresenter: MKBGetDeviceLockState returned: %d", v2);
  return v3 == 3 || v3 == 0;
}

- (BOOL)promptForBundleID:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() isUnlocked] & 1) == 0)
  {
    NSLog(@"WLDRemoteAlertPresenter: security does not allow prompting");
    goto LABEL_5;
  }

  if ([objc_opt_class() isPresenting])
  {
    NSLog(@"WLDRemoteAlertPresenter: already prompting");
LABEL_5:
    v5 = 0;
    goto LABEL_9;
  }

  v6 = dispatch_semaphore_create(0);
  NSLog(@"WLDRemoteAlertPresenter: promptForBundleID: %@", v4);
  v7 = [(WLDRemoteAlertPresenter *)self _isPad];
  v8 = +[TVAppAccountStoreObjC activeAccount];
  v9 = [v8 username];

  v24[0] = v9;
  v23[0] = WLKViewServiceAccountNameKey;
  v23[1] = WLKViewServiceAppBundlesKey;
  v22 = v4;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  v24[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  v21[0] = @"TVAccessViewServiceViewController";
  v20[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v20[1] = SBSUIRemoteAlertOptionStatusBarStyle;
  v12 = [NSNumber numberWithInteger:v7];
  v20[2] = SBSUIRemoteAlertOptionUserInfo;
  v21[1] = v12;
  v21[2] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __45__WLDRemoteAlertPresenter_promptForBundleID___block_invoke;
  v18[3] = &unk_100045C88;
  v14 = v6;
  v19 = v14;
  v15 = objc_retainBlock(v18);
  v16 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  v5 = v16 != 0;
  if (v16)
  {
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_9:
  return v5;
}

intptr_t __45__WLDRemoteAlertPresenter_promptForBundleID___block_invoke(uint64_t a1)
{
  NSLog(@"WLDRemoteAlertPresenter deactivated");
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)_isPad
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFStringGetTypeID() && CFEqual(v3, @"iPad") != 0;
  CFRelease(v3);
  return v5;
}

@end