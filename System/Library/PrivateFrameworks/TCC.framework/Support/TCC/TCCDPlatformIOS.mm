@interface TCCDPlatformIOS
- (BOOL)_displaySBRemoteAlert:(id)alert;
- (BOOL)_handleSBRemoteAlert:(id)alert;
- (BOOL)_isSBRemoteAlert:(id)alert;
- (BOOL)_isSBRemoteAlertAvailable;
- (BOOL)displayAlert:(id)alert;
- (TCCDPlatformIOS)initWithName:(id)name;
- (id)_getProcIdForSBRemoteAlert:(id)alert;
- (id)hangAssertionForClientWithPid:(int)pid;
- (void)_configureServices;
- (void)_waitForDeviceUnlock;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation TCCDPlatformIOS

- (TCCDPlatformIOS)initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = TCCDPlatformIOS;
  v3 = [(TCCDPlatform *)&v7 initWithName:name];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.tccd.PlatformIOSAlert", 0);
    alertQueue = v3->_alertQueue;
    v3->_alertQueue = v4;
  }

  return v3;
}

- (void)_configureServices
{
  v12.receiver = self;
  v12.super_class = TCCDPlatformIOS;
  [(TCCDPlatform *)&v12 _configureServices];
  servicesByName = [(TCCDPlatform *)self servicesByName];
  v4 = [servicesByName objectForKeyedSubscript:@"kTCCServiceAddressBook"];
  [v4 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v5 = [servicesByName objectForKeyedSubscript:@"kTCCServiceContactsLimited"];

  [v5 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v6 = [servicesByName objectForKeyedSubscript:@"kTCCServiceContactsFull"];

  [v6 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v7 = [servicesByName objectForKeyedSubscript:@"kTCCServiceCalendar"];

  [v7 setIos_watchKitUserNotificationNumber:&off_1000AE360];
  v8 = [servicesByName objectForKeyedSubscript:@"kTCCServiceReminders"];

  [v8 setIos_watchKitUserNotificationNumber:&off_1000AE378];
  v9 = [servicesByName objectForKeyedSubscript:@"kTCCServicePhotos"];

  [v9 setIos_watchKitUserNotificationNumber:&off_1000AE390];
  v10 = [servicesByName objectForKeyedSubscript:@"kTCCServicePhotosAdd"];

  [v10 setIos_watchKitUserNotificationNumber:&off_1000AE390];
  v11 = [servicesByName objectForKeyedSubscript:@"kTCCServiceMicrophone"];

  [v11 setIos_watchKitUserNotificationNumber:&off_1000AE3A8];
}

- (void)_waitForDeviceUnlock
{
  out_token = 0;
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  alertQueue = [(TCCDPlatformIOS *)self alertQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005D070;
  handler[3] = &unk_1000A6CE8;
  objc_copyWeak(&v15, &location);
  v5 = v3;
  v14 = v5;
  notify_register_dispatch("com.apple.springboard.lockstate", &out_token, alertQueue, handler);

  if ([(TCCDPlatformIOS *)self _isDeviceLocked])
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Remote Alert: Device locked; waiting for unlock...", v12, 2u);
    }
  }

  else
  {
    server2 = [(TCCDPlatform *)self server];
    logHandle2 = [server2 logHandle];

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_INFO, "Remote Alert: Device is not actually locked.", v12, 2u);
    }

    notify_cancel(out_token);
    dispatch_semaphore_signal(v5);
  }

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  server3 = [(TCCDPlatform *)self server];
  logHandle3 = [server3 logHandle];

  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_INFO, "Remote Alert: Device unlocked.", v12, 2u);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)_isSBRemoteAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  v5 = [configuration objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];
  if (v5)
  {
    configuration2 = [alertCopy configuration];
    v7 = [configuration2 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertViewControllerClassName"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isSBRemoteAlertAvailable
{
  if (qword_1000C12E8 != -1)
  {
    sub_10005E504();
  }

  return byte_1000C12F0;
}

- (id)_getProcIdForSBRemoteAlert:(id)alert
{
  configuration = [alert configuration];
  v5 = [configuration objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];

  v13 = 0;
  v6 = [[LSApplicationIdentity alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 personaUniqueString:&stru_1000A7240 error:&v13];
  v7 = v13;
  if (v7)
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 description];
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Remote Alert: failed to get identifier for second-stage prompt, bundleID=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }

  v11 = [RBSProcessIdentity identityForLSApplicationIdentity:v6];

  return v11;
}

- (BOOL)_displaySBRemoteAlert:(id)alert
{
  alertCopy = alert;
  server = [(TCCDPlatform *)self server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    service = [alertCopy service];
    name = [service name];
    configuration = [alertCopy configuration];
    *buf = 138543618;
    v57 = name;
    v58 = 2114;
    v59 = configuration;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Remote Alert: creating for %{public}@, with config: %{public}@", buf, 0x16u);
  }

  if ([alertCopy condition] != 2)
  {
    v21 = [SBSRemoteAlertDefinition alloc];
    configuration2 = [alertCopy configuration];
    v22 = [configuration2 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];
    configuration3 = [alertCopy configuration];
    v23 = [configuration3 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertViewControllerClassName"];
    v20 = [v21 initWithServiceName:v22 viewControllerClassName:v23];

    v13 = 0;
    LODWORD(configuration3) = 0;
LABEL_7:

    if (!v20)
    {
      server2 = [(TCCDPlatform *)self server];
      logHandle2 = [server2 logHandle];

      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        sub_10005E580();
      }

      v27 = 0;
      v20 = v13;
      goto LABEL_34;
    }

    v24 = [SBSRemoteAlertHandle newHandleWithDefinition:v20 configurationContext:0];
    if (!v24)
    {
      server3 = [(TCCDPlatform *)self server];
      logHandle3 = [server3 logHandle];

      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
      {
        sub_10005E54C();
      }

      v27 = 0;
      goto LABEL_33;
    }

    v25 = objc_alloc_init(SBSRemoteAlertActivationContext);
    v26 = v25;
    v27 = v25 != 0;
    if (v25)
    {
      v52 = configuration3;
      [v25 setActivatingForSiri:0];
      v53 = v24;
      if ([alertCopy condition] == 2)
      {
        v51 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:v13];
        v28 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetPredicate:v51];
        [v28 setShouldDismissInSwitcher:0];
        [v26 setPresentationTarget:v28];
        customUserInfo = [alertCopy customUserInfo];
        [v26 setUserInfo:customUserInfo];

        service2 = [alertCopy service];
        name2 = [service2 name];
        v32 = [NSString stringWithFormat:@"Secondary Prompt for %@", name2];
        [v26 setReason:v32];

        v24 = v53;
      }

      else
      {
        v54 = @"TCC Service";
        service3 = [alertCopy service];
        name3 = [service3 name];
        v55 = name3;
        v41 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [v26 setUserInfo:v41];

        [v26 setReason:@"TCC 3 Rights prompt first time"];
      }

      [v24 addObserver:self];
      v42 = dispatch_semaphore_create(0);
      [(TCCDPlatformIOS *)self setAlertSemaphore:v42];

      logHandle3 = 0;
      if ([alertCopy condition] == 2)
      {
        logHandle3 = [(TCCDPlatformIOS *)self hangAssertionForClientWithPid:v52];
      }

      server4 = [(TCCDPlatform *)self server];
      logHandle4 = [server4 logHandle];

      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_INFO))
      {
        service4 = [alertCopy service];
        name4 = [service4 name];
        *buf = 138543618;
        v57 = name4;
        v58 = 2114;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_INFO, "Remote Alert: activating for %{public}@: %{public}@", buf, 0x16u);
      }

      v24 = v53;
      [v53 activateWithContext:v26];
      alertSemaphore = [(TCCDPlatformIOS *)self alertSemaphore];

      if (!alertSemaphore)
      {
        goto LABEL_32;
      }

      alertSemaphore2 = [(TCCDPlatformIOS *)self alertSemaphore];
      dispatch_semaphore_wait(alertSemaphore2, 0xFFFFFFFFFFFFFFFFLL);

      [(TCCDPlatformIOS *)self setAlertSemaphore:0];
      if (!logHandle3)
      {
        goto LABEL_32;
      }

      [logHandle3 invalidate];
      server5 = [(TCCDPlatform *)self server];
      logHandle5 = [server5 logHandle];

      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v57) = v52;
        _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "invalidated watchdog opt-out assertion for client with pid: %d", buf, 8u);
      }
    }

    else
    {
      server6 = [(TCCDPlatform *)self server];
      logHandle5 = [server6 logHandle];

      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
      {
        sub_10005E518();
      }

      logHandle3 = 0;
    }

LABEL_32:
LABEL_33:

    logHandle2 = v13;
LABEL_34:

    v13 = v20;
    goto LABEL_35;
  }

  customUserInfo2 = [alertCopy customUserInfo];
  v11 = [customUserInfo2 objectForKeyedSubscript:@"ResponsiblePID"];
  configuration3 = [v11 intValue];

  v13 = [BSProcessHandle processHandleForPID:configuration3];
  bundleIdentifier = [v13 bundleIdentifier];
  customUserInfo3 = [alertCopy customUserInfo];
  v16 = [customUserInfo3 objectForKeyedSubscript:@"BundleRequestingSecondaryPrompt"];
  v17 = [bundleIdentifier isEqualToString:v16];

  if (v17)
  {
    v18 = [SBSRemoteAlertDefinition alloc];
    configuration2 = [(TCCDPlatformIOS *)self _getProcIdForSBRemoteAlert:alertCopy];
    v20 = [v18 initWithSceneProvidingProcess:configuration2 configurationIdentifier:0];
    goto LABEL_7;
  }

  v27 = 0;
LABEL_35:

  return v27;
}

- (BOOL)_handleSBRemoteAlert:(id)alert
{
  alertCopy = alert;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  alertQueue = [(TCCDPlatformIOS *)self alertQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DCB8;
  v8[3] = &unk_1000A6D30;
  v9 = alertCopy;
  v6 = alertCopy;
  objc_copyWeak(&v11, &location);
  v10 = &v13;
  dispatch_sync(alertQueue, v8);

  LOBYTE(alertQueue) = *(v14 + 24);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return alertQueue;
}

- (BOOL)displayAlert:(id)alert
{
  alertCopy = alert;
  if ([alertCopy condition] != 1 && objc_msgSend(alertCopy, "condition") != 2 || !-[TCCDPlatformIOS _isSBRemoteAlert:](self, "_isSBRemoteAlert:", alertCopy))
  {
    server = [(TCCDPlatform *)self server];
    logHandle = [server logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10005E5B4(alertCopy, logHandle);
    }

    goto LABEL_17;
  }

  if (![(TCCDPlatformIOS *)self _isSBRemoteAlertAvailable])
  {
    v9 = @"SBRemoteAlert not available.";
    goto LABEL_15;
  }

  service = [alertCopy service];

  if (!service)
  {
    v9 = @"missing Service";
    goto LABEL_15;
  }

  if ([alertCopy persistentStateValue] == -1)
  {
    v9 = @"Persistent state not set";
LABEL_15:
    server2 = [(TCCDPlatform *)self server];
    logHandle = [server2 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10005E670(v9, logHandle);
    }

LABEL_17:

    v6 = 0;
    goto LABEL_18;
  }

  if ([(TCCDPlatformIOS *)self _isDeviceLocked])
  {
    [(TCCDPlatformIOS *)self _waitForDeviceUnlock];
  }

  v6 = [(TCCDPlatformIOS *)self _handleSBRemoteAlert:alertCopy];
LABEL_18:

  return v6;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  server = [(TCCDPlatform *)self server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = activateCopy;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Remote Alert: %{public}@ didActivate", &v7, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  server = [(TCCDPlatform *)self server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Remote Alert: %{public}@ didDeactivate", &v9, 0xCu);
  }

  alertSemaphore = [(TCCDPlatformIOS *)self alertSemaphore];

  if (alertSemaphore)
  {
    alertSemaphore2 = [(TCCDPlatformIOS *)self alertSemaphore];
    dispatch_semaphore_signal(alertSemaphore2);
  }

  if ([deactivateCopy isValid])
  {
    [deactivateCopy invalidate];
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  server = [(TCCDPlatform *)self server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    sub_10005E6E8(handleCopy, errorCopy, logHandle);
  }

  alertSemaphore = [(TCCDPlatformIOS *)self alertSemaphore];

  if (alertSemaphore)
  {
    alertSemaphore2 = [(TCCDPlatformIOS *)self alertSemaphore];
    dispatch_semaphore_signal(alertSemaphore2);
  }

  [handleCopy removeObserver:self];
}

- (id)hangAssertionForClientWithPid:(int)pid
{
  v5 = [RBSTarget targetWithPid:?];
  if (v5)
  {
    v6 = [RBSDomainAttribute attributeWithDomain:@"com.apple.frontboard" name:@"DisableWatchdog"];
    if (v6)
    {
      v7 = [RBSAssertion alloc];
      v23 = v6;
      v8 = [NSArray arrayWithObjects:&v23 count:1];
      logHandle3 = [v7 initWithExplanation:@"Prevent watchdog termination while blocking on Contacts second stage prompt" target:v5 attributes:v8];

      if (logHandle3)
      {
        v20 = 0;
        v10 = [logHandle3 acquireWithError:&v20];
        logHandle4 = v20;
        server = [(TCCDPlatform *)self server];
        logHandle = [server logHandle];

        if (v10)
        {
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            pidCopy = pid;
            _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "acquired watchdog opt-out assertion for client with pid: %d", buf, 8u);
          }

          logHandle3 = logHandle3;
          v14 = logHandle3;
          goto LABEL_21;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          sub_10005E770(logHandle4, logHandle);
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

      server2 = [(TCCDPlatform *)self server];
      logHandle2 = [server2 logHandle];

      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7E8();
      }
    }

    else
    {
      server3 = [(TCCDPlatform *)self server];
      logHandle3 = [server3 logHandle];

      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7E8();
      }
    }

    logHandle4 = 0;
    goto LABEL_20;
  }

  server4 = [(TCCDPlatform *)self server];
  logHandle4 = [server4 logHandle];

  if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
  {
    sub_10005E81C();
  }

  v14 = 0;
LABEL_22:

  return v14;
}

@end