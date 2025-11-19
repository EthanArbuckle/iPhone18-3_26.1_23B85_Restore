@interface _SUSUIPostUpdateAlertController
- (BOOL)_otaFailed;
- (BOOL)_shouldShowPostUpdateAlert;
- (_SUSUIPostUpdateAlertController)initWithLayoutStateMonitor:(id)a3 alertPresentationManager:(id)a4;
- (void)_dismissAlertForReason:(id)a3;
- (void)_noteAlertAcknowledgedWithReason:(id)a3;
- (void)_registerForBuddyNotifications;
- (void)_setupAssistantFinished;
- (void)_setupAssistantLaunched;
- (void)_showStartupAlertItemForReason:(id)a3;
- (void)_uiLockStateChanged:(BOOL)a3;
- (void)layoutStateMonitorStateDidChange:(id)a3;
- (void)layoutStateMonitorUILockStateDidChange:(id)a3;
- (void)startRunning;
@end

@implementation _SUSUIPostUpdateAlertController

- (_SUSUIPostUpdateAlertController)initWithLayoutStateMonitor:(id)a3 alertPresentationManager:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = _SUSUIPostUpdateAlertController;
  v11 = [(_SUSUIPostUpdateAlertController *)&v12 init];
  v15 = v11;
  objc_storeStrong(&v15, v11);
  if (v11)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.softwareupdateservices._SUSUIPostUpdateAlertController", v9);
    controllerQueue = v15->_controllerQueue;
    v15->_controllerQueue = v5;

    objc_storeStrong(&v15->_alertPresentationManager, v13);
    objc_storeStrong(&v15->_layoutStateMonitor, location[0]);
    v15->_showingAlert = 0;
    v15->_dismissed = 0;
  }

  v8 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v8;
}

- (void)startRunning
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_controllerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_3D3D8;
  v7 = &unk_5CCB0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_registerForBuddyNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_3D6D8, BYSetupAssistantFinishedDarwinNotification, 0, CFNotificationSuspensionBehaviorDrop);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, self, sub_3D714, BYSetupAssistantLaunchedDarwinNotification, 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)_noteAlertAcknowledgedWithReason:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_controllerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_3D894;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = v12;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_uiLockStateChanged:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_controllerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_3DAD4;
  v8 = &unk_5F568;
  v9 = self;
  v10 = v11;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

- (void)_setupAssistantFinished
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_controllerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_3DDF8;
  v7 = &unk_5CCB0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_setupAssistantLaunched
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_controllerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_3E08C;
  v7 = &unk_5CCB0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)layoutStateMonitorStateDidChange:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)layoutStateMonitorUILockStateDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] isUILocked];
  [(_SUSUIPostUpdateAlertController *)v5 _uiLockStateChanged:v3 & 1];
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowPostUpdateAlert
{
  v3 = +[SUSUIPreferences sharedInstance];
  v5 = 0;
  LOBYTE(v4) = 0;
  if (([(SUSUIPreferences *)v3 needsAlertPresentationAfterOTAUpdate]& 1) != 0)
  {
    v6 = +[SUSUIPreferences sharedInstance];
    v5 = 1;
    v4 = [(SUSUIPreferences *)v6 preventPostUpdateAlert]^ 1;
  }

  if (v5)
  {
  }

  return v4 & 1;
}

- (BOOL)_otaFailed
{
  v16 = self;
  v15 = a2;
  v5 = +[SUPreferences sharedInstance];
  v12 = 0;
  v6 = 1;
  if (([(SUPreferences *)v5 skipDownload]& 1) == 0)
  {
    v13 = +[SUPreferences sharedInstance];
    v12 = 1;
    v6 = [(SUPreferences *)v13 skipApply];
  }

  if (v12)
  {
  }

  v14 = v6 & 1;
  if (v6)
  {
    location = SUSUILogPostUpdateAlert();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v10;
      sub_2544(v9);
      _os_log_impl(&dword_0, log, type, "Previous OTA attempt was fake (hence succeeded)", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    return 0;
  }

  else
  {
    v8 = 0;
    if (MSURetrievePreviousUpdateState())
    {
      oslog = SUSUILogPostUpdateAlert();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_11844(v18, v8);
        _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Previous OTA attempt failed. MSUPreviousUpdateState: %d", v18, 8u);
      }

      objc_storeStrong(&oslog, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

- (void)_showStartupAlertItemForReason:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(_SUSUIPostUpdateAlertController *)v30 dismissed])
  {
    v28 = SUSUILogPostUpdateAlert();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_3DCFC(v34, "[_SUSUIPostUpdateAlertController _showStartupAlertItemForReason:]");
      _os_log_impl(&dword_0, v28, v27, "[%{public}s] Already dismissed", v34, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    v26 = 1;
  }

  else if ([(_SUSUIPostUpdateAlertController *)v30 showingAlert])
  {
    v25 = SUSUILogPostUpdateAlert();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v33, location[0]);
      _os_log_impl(&dword_0, v25, v24, "Alert is already shown; not showing alert item for reason: %@", v33, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v26 = 1;
  }

  else if ([(_SUSUIPostUpdateAlertController *)v30 _shouldShowPostUpdateAlert])
  {
    v21 = SUSUILogPostUpdateAlert();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v31, location[0]);
      _os_log_impl(&dword_0, v21, v20, "Showing alert item for reason: %@", v31, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    objc_initWeak(&from, v30);
    v4 = [SUSUISetupUpgradeAlertItem alloc];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_3EBB0;
    v16 = &unk_616D8;
    objc_copyWeak(v17, &from);
    v18 = [(SUSUISetupUpgradeAlertItem *)v4 initWithAcknowledgementBlock:&v12];
    [(_SUSUIPostUpdateAlertController *)v30 setShowingAlert:1];
    queue = [(SUSUIAlertPresentationManager *)v30->_alertPresentationManager queue];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_3EC00;
    v9 = &unk_5D008;
    v10 = v30;
    v11 = v18;
    dispatch_async(queue, &v5);

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(v17);
    objc_destroyWeak(&from);
    v26 = 0;
  }

  else
  {
    v23 = SUSUILogPostUpdateAlert();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v32, location[0]);
      _os_log_impl(&dword_0, v23, v22, "Should not show a post update alert; not showing alert item for reason: %@", v32, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v26 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissAlertForReason:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = SUSUILogPostUpdateAlert();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v14, location[0]);
    _os_log_impl(&dword_0, v11, v10, "Dismissing alert for reason: %@", v14, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  [(_SUSUIPostUpdateAlertController *)v13 setDismissed:1];
  [(_SUSUIPostUpdateAlertController *)v13 _noteAlertAcknowledgedWithReason:location[0]];
  queue = [(SUSUIAlertPresentationManager *)v13->_alertPresentationManager queue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_3EEFC;
  v8 = &unk_5CCB0;
  v9 = v13;
  dispatch_async(queue, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end