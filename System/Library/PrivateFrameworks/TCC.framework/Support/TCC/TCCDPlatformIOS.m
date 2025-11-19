@interface TCCDPlatformIOS
- (BOOL)_displaySBRemoteAlert:(id)a3;
- (BOOL)_handleSBRemoteAlert:(id)a3;
- (BOOL)_isSBRemoteAlert:(id)a3;
- (BOOL)_isSBRemoteAlertAvailable;
- (BOOL)displayAlert:(id)a3;
- (TCCDPlatformIOS)initWithName:(id)a3;
- (id)_getProcIdForSBRemoteAlert:(id)a3;
- (id)hangAssertionForClientWithPid:(int)a3;
- (void)_configureServices;
- (void)_waitForDeviceUnlock;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation TCCDPlatformIOS

- (TCCDPlatformIOS)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = TCCDPlatformIOS;
  v3 = [(TCCDPlatform *)&v7 initWithName:a3];
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
  v3 = [(TCCDPlatform *)self servicesByName];
  v4 = [v3 objectForKeyedSubscript:@"kTCCServiceAddressBook"];
  [v4 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v5 = [v3 objectForKeyedSubscript:@"kTCCServiceContactsLimited"];

  [v5 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v6 = [v3 objectForKeyedSubscript:@"kTCCServiceContactsFull"];

  [v6 setIos_watchKitUserNotificationNumber:&off_1000AE348];
  v7 = [v3 objectForKeyedSubscript:@"kTCCServiceCalendar"];

  [v7 setIos_watchKitUserNotificationNumber:&off_1000AE360];
  v8 = [v3 objectForKeyedSubscript:@"kTCCServiceReminders"];

  [v8 setIos_watchKitUserNotificationNumber:&off_1000AE378];
  v9 = [v3 objectForKeyedSubscript:@"kTCCServicePhotos"];

  [v9 setIos_watchKitUserNotificationNumber:&off_1000AE390];
  v10 = [v3 objectForKeyedSubscript:@"kTCCServicePhotosAdd"];

  [v10 setIos_watchKitUserNotificationNumber:&off_1000AE390];
  v11 = [v3 objectForKeyedSubscript:@"kTCCServiceMicrophone"];

  [v11 setIos_watchKitUserNotificationNumber:&off_1000AE3A8];
}

- (void)_waitForDeviceUnlock
{
  out_token = 0;
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = [(TCCDPlatformIOS *)self alertQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005D070;
  handler[3] = &unk_1000A6CE8;
  objc_copyWeak(&v15, &location);
  v5 = v3;
  v14 = v5;
  notify_register_dispatch("com.apple.springboard.lockstate", &out_token, v4, handler);

  if ([(TCCDPlatformIOS *)self _isDeviceLocked])
  {
    v6 = [(TCCDPlatform *)self server];
    v7 = [v6 logHandle];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Remote Alert: Device locked; waiting for unlock...", v12, 2u);
    }
  }

  else
  {
    v8 = [(TCCDPlatform *)self server];
    v9 = [v8 logHandle];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Remote Alert: Device is not actually locked.", v12, 2u);
    }

    notify_cancel(out_token);
    dispatch_semaphore_signal(v5);
  }

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [(TCCDPlatform *)self server];
  v11 = [v10 logHandle];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Remote Alert: Device unlocked.", v12, 2u);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)_isSBRemoteAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v4 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];
  if (v5)
  {
    v6 = [v3 configuration];
    v7 = [v6 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertViewControllerClassName"];
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

- (id)_getProcIdForSBRemoteAlert:(id)a3
{
  v4 = [a3 configuration];
  v5 = [v4 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];

  v13 = 0;
  v6 = [[LSApplicationIdentity alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 personaUniqueString:&stru_1000A7240 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = [(TCCDPlatform *)self server];
    v9 = [v8 logHandle];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 description];
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote Alert: failed to get identifier for second-stage prompt, bundleID=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }

  v11 = [RBSProcessIdentity identityForLSApplicationIdentity:v6];

  return v11;
}

- (BOOL)_displaySBRemoteAlert:(id)a3
{
  v4 = a3;
  v5 = [(TCCDPlatform *)self server];
  v6 = [v5 logHandle];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 service];
    v8 = [v7 name];
    v9 = [v4 configuration];
    *buf = 138543618;
    v57 = v8;
    v58 = 2114;
    v59 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Remote Alert: creating for %{public}@, with config: %{public}@", buf, 0x16u);
  }

  if ([v4 condition] != 2)
  {
    v21 = [SBSRemoteAlertDefinition alloc];
    v19 = [v4 configuration];
    v22 = [v19 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertServiceName"];
    v12 = [v4 configuration];
    v23 = [v12 objectForKeyedSubscript:@"TCCDAlertConfig_SBRemoteAlertViewControllerClassName"];
    v20 = [v21 initWithServiceName:v22 viewControllerClassName:v23];

    v13 = 0;
    LODWORD(v12) = 0;
LABEL_7:

    if (!v20)
    {
      v33 = [(TCCDPlatform *)self server];
      v34 = [v33 logHandle];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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
      v35 = [(TCCDPlatform *)self server];
      v36 = [v35 logHandle];

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
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
      v52 = v12;
      [v25 setActivatingForSiri:0];
      v53 = v24;
      if ([v4 condition] == 2)
      {
        v51 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:v13];
        v28 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetPredicate:v51];
        [v28 setShouldDismissInSwitcher:0];
        [v26 setPresentationTarget:v28];
        v29 = [v4 customUserInfo];
        [v26 setUserInfo:v29];

        v30 = [v4 service];
        v31 = [v30 name];
        v32 = [NSString stringWithFormat:@"Secondary Prompt for %@", v31];
        [v26 setReason:v32];

        v24 = v53;
      }

      else
      {
        v54 = @"TCC Service";
        v39 = [v4 service];
        v40 = [v39 name];
        v55 = v40;
        v41 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [v26 setUserInfo:v41];

        [v26 setReason:@"TCC 3 Rights prompt first time"];
      }

      [v24 addObserver:self];
      v42 = dispatch_semaphore_create(0);
      [(TCCDPlatformIOS *)self setAlertSemaphore:v42];

      v36 = 0;
      if ([v4 condition] == 2)
      {
        v36 = [(TCCDPlatformIOS *)self hangAssertionForClientWithPid:v52];
      }

      v43 = [(TCCDPlatform *)self server];
      v44 = [v43 logHandle];

      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = [v4 service];
        v46 = [v45 name];
        *buf = 138543618;
        v57 = v46;
        v58 = 2114;
        v59 = v53;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Remote Alert: activating for %{public}@: %{public}@", buf, 0x16u);
      }

      v24 = v53;
      [v53 activateWithContext:v26];
      v47 = [(TCCDPlatformIOS *)self alertSemaphore];

      if (!v47)
      {
        goto LABEL_32;
      }

      v48 = [(TCCDPlatformIOS *)self alertSemaphore];
      dispatch_semaphore_wait(v48, 0xFFFFFFFFFFFFFFFFLL);

      [(TCCDPlatformIOS *)self setAlertSemaphore:0];
      if (!v36)
      {
        goto LABEL_32;
      }

      [v36 invalidate];
      v49 = [(TCCDPlatform *)self server];
      v38 = [v49 logHandle];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v57) = v52;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "invalidated watchdog opt-out assertion for client with pid: %d", buf, 8u);
      }
    }

    else
    {
      v37 = [(TCCDPlatform *)self server];
      v38 = [v37 logHandle];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10005E518();
      }

      v36 = 0;
    }

LABEL_32:
LABEL_33:

    v34 = v13;
LABEL_34:

    v13 = v20;
    goto LABEL_35;
  }

  v10 = [v4 customUserInfo];
  v11 = [v10 objectForKeyedSubscript:@"ResponsiblePID"];
  v12 = [v11 intValue];

  v13 = [BSProcessHandle processHandleForPID:v12];
  v14 = [v13 bundleIdentifier];
  v15 = [v4 customUserInfo];
  v16 = [v15 objectForKeyedSubscript:@"BundleRequestingSecondaryPrompt"];
  v17 = [v14 isEqualToString:v16];

  if (v17)
  {
    v18 = [SBSRemoteAlertDefinition alloc];
    v19 = [(TCCDPlatformIOS *)self _getProcIdForSBRemoteAlert:v4];
    v20 = [v18 initWithSceneProvidingProcess:v19 configurationIdentifier:0];
    goto LABEL_7;
  }

  v27 = 0;
LABEL_35:

  return v27;
}

- (BOOL)_handleSBRemoteAlert:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  v5 = [(TCCDPlatformIOS *)self alertQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DCB8;
  v8[3] = &unk_1000A6D30;
  v9 = v4;
  v6 = v4;
  objc_copyWeak(&v11, &location);
  v10 = &v13;
  dispatch_sync(v5, v8);

  LOBYTE(v5) = *(v14 + 24);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return v5;
}

- (BOOL)displayAlert:(id)a3
{
  v4 = a3;
  if ([v4 condition] != 1 && objc_msgSend(v4, "condition") != 2 || !-[TCCDPlatformIOS _isSBRemoteAlert:](self, "_isSBRemoteAlert:", v4))
  {
    v7 = [(TCCDPlatform *)self server];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005E5B4(v4, v8);
    }

    goto LABEL_17;
  }

  if (![(TCCDPlatformIOS *)self _isSBRemoteAlertAvailable])
  {
    v9 = @"SBRemoteAlert not available.";
    goto LABEL_15;
  }

  v5 = [v4 service];

  if (!v5)
  {
    v9 = @"missing Service";
    goto LABEL_15;
  }

  if ([v4 persistentStateValue] == -1)
  {
    v9 = @"Persistent state not set";
LABEL_15:
    v10 = [(TCCDPlatform *)self server];
    v8 = [v10 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005E670(v9, v8);
    }

LABEL_17:

    v6 = 0;
    goto LABEL_18;
  }

  if ([(TCCDPlatformIOS *)self _isDeviceLocked])
  {
    [(TCCDPlatformIOS *)self _waitForDeviceUnlock];
  }

  v6 = [(TCCDPlatformIOS *)self _handleSBRemoteAlert:v4];
LABEL_18:

  return v6;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = [(TCCDPlatform *)self server];
  v6 = [v5 logHandle];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Remote Alert: %{public}@ didActivate", &v7, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = [(TCCDPlatform *)self server];
  v6 = [v5 logHandle];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Remote Alert: %{public}@ didDeactivate", &v9, 0xCu);
  }

  v7 = [(TCCDPlatformIOS *)self alertSemaphore];

  if (v7)
  {
    v8 = [(TCCDPlatformIOS *)self alertSemaphore];
    dispatch_semaphore_signal(v8);
  }

  if ([v4 isValid])
  {
    [v4 invalidate];
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDPlatform *)self server];
  v9 = [v8 logHandle];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10005E6E8(v6, v7, v9);
  }

  v10 = [(TCCDPlatformIOS *)self alertSemaphore];

  if (v10)
  {
    v11 = [(TCCDPlatformIOS *)self alertSemaphore];
    dispatch_semaphore_signal(v11);
  }

  [v6 removeObserver:self];
}

- (id)hangAssertionForClientWithPid:(int)a3
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
      v9 = [v7 initWithExplanation:@"Prevent watchdog termination while blocking on Contacts second stage prompt" target:v5 attributes:v8];

      if (v9)
      {
        v20 = 0;
        v10 = [v9 acquireWithError:&v20];
        v11 = v20;
        v12 = [(TCCDPlatform *)self server];
        v13 = [v12 logHandle];

        if (v10)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v22 = a3;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "acquired watchdog opt-out assertion for client with pid: %d", buf, 8u);
          }

          v9 = v9;
          v14 = v9;
          goto LABEL_21;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10005E770(v11, v13);
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v17 = [(TCCDPlatform *)self server];
      v18 = [v17 logHandle];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7E8();
      }
    }

    else
    {
      v16 = [(TCCDPlatform *)self server];
      v9 = [v16 logHandle];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005E7E8();
      }
    }

    v11 = 0;
    goto LABEL_20;
  }

  v15 = [(TCCDPlatform *)self server];
  v11 = [v15 logHandle];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10005E81C();
  }

  v14 = 0;
LABEL_22:

  return v14;
}

@end