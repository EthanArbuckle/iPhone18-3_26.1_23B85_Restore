@interface FMIPLockScreenController
- (BOOL)pluginHandleEvent:(int64_t)event;
- (FMIPLockScreenController)init;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginAppearance)pluginAppearance;
- (id)mainViewController;
- (void)_addObservers;
- (void)dealloc;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)pluginDidDeactivateWithContext:(id)context;
- (void)pluginWillActivateWithContext:(id)context;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)stopAlarm;
@end

@implementation FMIPLockScreenController

- (id)mainViewController
{
  _mainViewController = [(FMIPLockScreenController *)self _mainViewController];

  if (!_mainViewController)
  {
    v4 = [[FMIPLockScreenViewController alloc] initWithNibName:0 bundle:0];
    [(FMIPLockScreenController *)self set_mainViewController:v4];

    _mainViewController2 = [(FMIPLockScreenController *)self _mainViewController];

    if (!_mainViewController2)
    {
      v6 = sub_3FBC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_4044(v6);
      }
    }

    _mainViewController3 = [(FMIPLockScreenController *)self _mainViewController];
    [_mainViewController3 setPluginController:self];

    v8 = sub_3FBC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_4088(self, v8);
    }
  }

  _mainViewController4 = [(FMIPLockScreenController *)self _mainViewController];

  return _mainViewController4;
}

- (void)stopAlarm
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = kStopLostModeAlarmNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  statusCopy = status;
  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = statusCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received simStatusDidChange distributed notification: %@", &v6, 0xCu);
  }

  _os_activity_initiate(&dword_0, "SimStatusChangedLocalNotification", OS_ACTIVITY_FLAG_DEFAULT, &stru_82B0);
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  nameCopy = name;
  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = nameCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received operatorNameChanged distributed notification: %@", &v6, 0xCu);
  }

  _os_activity_initiate(&dword_0, "RegistrationStatusChangedNotification", OS_ACTIVITY_FLAG_DEFAULT, &stru_82D0);
}

- (void)_addObservers
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = kLostModeChangedRestrictedNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1364, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (FMIPLockScreenController)init
{
  v8.receiver = self;
  v8.super_class = FMIPLockScreenController;
  v2 = [(FMIPLockScreenController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CoreTelephonyClient);
    [(FMIPLockScreenController *)v2 setCtClient:v3];

    ctClient = [(FMIPLockScreenController *)v2 ctClient];
    [ctClient setDelegate:v2];

    v5 = sub_3FBC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "init - setting up notifications", v7, 2u);
    }

    [(FMIPLockScreenController *)v2 _addObservers];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_3FBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "dealloc - removing up notifications", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kLostModeChangedRestrictedNotification, 0);
  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Destroying myself", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = FMIPLockScreenController;
  [(FMIPLockScreenController *)&v6 dealloc];
}

- (void)pluginWillActivateWithContext:(id)context
{
  contextCopy = context;
  v4 = sub_3FBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = contextCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "TRACE: pluginWillActivateWithContext: %@", &v5, 0xCu);
  }
}

- (void)pluginDidDeactivateWithContext:(id)context
{
  contextCopy = context;
  v4 = sub_3FBC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = contextCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "TRACE: pluginDidDeactivateWithContext: %@", &v5, 0xCu);
  }
}

- (SBLockScreenPluginAppearance)pluginAppearance
{
  v2 = objc_alloc_init(SBLockScreenPluginMutableAppearanceContext);
  v3 = +[FMDFMIPManager sharedInstance];
  lostModeInfo = [v3 lostModeInfo];

  message = [lostModeInfo message];
  if ([message length])
  {

    v6 = 1;
    v7 = 2;
    v8 = 1;
  }

  else
  {
    phoneNumber = [lostModeInfo phoneNumber];
    v10 = [phoneNumber length];

    v8 = v10 != 0;
    if (v10)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = 2 * (v10 != 0);
  }

  [v2 setPresentationStyle:v6];
  [v2 setBackgroundStyle:v7];
  [v2 setNotificationBehavior:1];
  if ([lostModeInfo lostModeType] == &dword_0 + 3 || objc_msgSend(lostModeInfo, "lostModeType") == &dword_4 + 1)
  {
    v11 = 510;
  }

  else
  {
    v11 = 502;
  }

  [v2 setRestrictedCapabilities:v11];
  v12 = sub_3FBC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_4120(v8, v12);
  }

  return v2;
}

- (BOOL)pluginHandleEvent:(int64_t)event
{
  v5 = sub_3FBC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "FMIPLockScreenController: VolumeDownButtonPressed", v8, 2u);
  }

  v6 = 1;
  if (event <= 8)
  {
    if (((1 << event) & 0x1E0) == 0)
    {
      if (((1 << event) & 0xD) != 0)
      {
        return 0;
      }

      v6 = 0;
    }

    [(FMIPLockScreenController *)self stopAlarm];
  }

  return v6;
}

- (SBLockScreenPluginAgent)pluginAgent
{
  WeakRetained = objc_loadWeakRetained(&self->pluginAgent);

  return WeakRetained;
}

@end