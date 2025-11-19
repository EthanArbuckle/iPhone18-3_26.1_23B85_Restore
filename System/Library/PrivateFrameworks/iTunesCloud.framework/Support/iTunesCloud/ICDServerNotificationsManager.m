@interface ICDServerNotificationsManager
- (ICDServerNotificationsManager)initWithDelegate:(id)a3;
- (ICDServerNotificationsManagerDelegate)delegate;
- (void)_didReceiveDarwinNotification:(id)a3;
- (void)_didReceiveDistributedNotification:(id)a3 withStreamEvent:(id)a4;
- (void)_didReceiveTelephonyCenterNotification:(id)a3;
- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3;
- (void)_handleAllowsExplicitContentChangedNotification:(id)a3;
- (void)_handleAllowsMusicVideosChangedNotification:(id)a3;
- (void)_handleApplicationRegistration:(BOOL)a3 notificationName:(id)a4 streamEvent:(id)a5;
- (void)_handleCloudAuthenticationDidChangeNotification;
- (void)_handleFamilyCircleChangedNotification;
- (void)_handleFamilyContentDeletionNotification:(id)a3 streamEvent:(id)a4;
- (void)_handleFirstUnlockNotification:(id)a3;
- (void)_handleHandlerCoordinatorDidFinishInitialization:(id)a3;
- (void)_handleLibraryAuthServiceTokenDidChangeNotification:(id)a3;
- (void)_handleMusicSettingsChangedNotification;
- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_handlePlayActivityFlushInternalTestRequestNotification;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)dealloc;
@end

@implementation ICDServerNotificationsManager

- (ICDServerNotificationsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleFamilyCircleChangedNotification
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received family circle changed notification", v5, 2u);
  }

  v4 = [(ICDServerNotificationsManager *)self delegate];
  [v4 notificationsManagerDidReceiveFamilyCircleChangedNotification:self];
}

- (void)_handleMusicSettingsChangedNotification
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received music settings changed notification", v5, 2u);
  }

  v4 = [(ICDServerNotificationsManager *)self delegate];
  [v4 notificationsManagerDidReceiveMusicSettingsChangedNotification:self];
}

- (void)_handlePlayActivityFlushInternalTestRequestNotification
{
  v3 = [(ICDServerNotificationsManager *)self delegate];
  [v3 notificationsManagerDidRecieveICPlayActivityFlushInternalTestRequestNotification:self];
}

- (void)_handleFamilyContentDeletionNotification:(id)a3 streamEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = xpc_dictionary_get_value(v8, "UserInfo");
    v11 = v10;
    if (v10 && xpc_get_type(v10) == &_xpc_type_dictionary)
    {
      v12 = xpc_dictionary_get_value(v11, "pairs");
      v13 = v12;
      if (v12 && xpc_get_type(v12) == &_xpc_type_dictionary)
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_10003EBF4;
        v20 = &unk_1001DAA68;
        v21 = v9;
        xpc_array_apply(v13, &v17);
      }
    }

    v22 = @"ICDServerNotificationsManagerFamilyEventKey";
    v23 = v9;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1, v17, v18, v19, v20];
    v15 = [NSNotification notificationWithName:v6 object:0 userInfo:v14];

    v16 = [(ICDServerNotificationsManager *)self delegate];
    [v16 notificationsManager:self didReceiveFamilyDeletionEventNotification:v15];
  }
}

- (void)_handleApplicationRegistration:(BOOL)a3 notificationName:(id)a4 streamEvent:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableSet);
  v11 = xpc_dictionary_get_value(v9, "UserInfo");
  if (v11 && (!xpc_dictionary_get_BOOL(v11, [@"isPlaceholder" UTF8String]) || !v6))
  {
    v12 = xpc_dictionary_get_array(v11, [@"bundleIDs" UTF8String]);
    v13 = v12;
    if (v12)
    {
      count = xpc_array_get_count(v12);
      if (count)
      {
        v15 = count;
        for (i = 0; i != v15; ++i)
        {
          string = xpc_array_get_string(v13, i);
          if (string)
          {
            v18 = [NSString stringWithUTF8String:string];
            if (v18)
            {
              [v10 addObject:v18];
            }
          }
        }
      }
    }

    self = v24;
  }

  if ([v10 count])
  {
    if (v6)
    {
      v19 = &off_1001ED168;
    }

    else
    {
      v19 = &off_1001ED180;
    }

    v25[0] = @"ICDServerNotificationsManagerIsApplicationRegistrationKey";
    v25[1] = @"ICDServerNotificationsManagerApplicationRegistrationBundleIDsKey";
    v26[0] = v19;
    v20 = [v10 copy];
    v26[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v22 = [NSNotification notificationWithName:v8 object:0 userInfo:v21];

    v23 = [(ICDServerNotificationsManager *)self delegate];
    [v23 notificationsManager:self didReceiveApplicationInstallationNotification:v22];
  }
}

- (void)_handleCloudAuthenticationDidChangeNotification
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cloud authentication status has changed - updating client status", v5, 2u);
  }

  v4 = [(ICDServerNotificationsManager *)self delegate];
  [v4 notificationsManagerDidReceiveCloudAuthenticationDidChangeDarwinNotification:self];
}

- (void)_handleLibraryAuthServiceTokenDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleLibraryAuthServiceTokenDidChangeNotification - posting dynamite state change", v7, 2u);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveAuthServiceTokenDidChangeNotification:v4];
}

- (void)_handleAllowsMusicVideosChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(ICDServerNotificationsManager *)self delegate];
  [v5 notificationsManager:self didReceiveAllowsMusicVideosDidChangeNotification:v4];
}

- (void)_handleAllowsExplicitContentChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(ICDServerNotificationsManager *)self delegate];
  [v5 notificationsManager:self didReceiveAllowsExplicitContentDidChangeNotification:v4];
}

- (void)_handleHandlerCoordinatorDidFinishInitialization:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handler Coordinator did finish initialization.", v7, 2u);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveHandlerCoordinatorFinishedInitializationNotification:v4];
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User identity store has changed.", v7, 2u);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveUserIdentityStoreDidChangeNotification:v4];
}

- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Active user identity has changed.", v7, 2u);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveActiveUserIdentityDidChangeNotification:v4];
}

- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subscription status has changed - updating client status", v7, 2u);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveSubscriptionStatusDidChangeNotification:v4];
}

- (void)_handleFirstUnlockNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "First unlock has occured", v6, 2u);
  }

  v5 = [(ICDServerNotificationsManager *)self delegate];
  [v5 notificationsManagerDidReceiveFirstUnlockNotification:self];
}

- (void)_didReceiveTelephonyCenterNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received telephony center notification %{public}@", &v9, 0xCu);
  }

  if ([v4 isEqualToString:kCTSettingPhoneNumberChangedNotification])
  {
    v6 = +[ICDeviceInfo currentDeviceInfo];
    v7 = [v6 isPhoneNumberAccessRestricted];

    if (v7)
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring telephony center notification %{public}@ because phone number access is restricted.", &v9, 0xCu);
      }
    }

    else
    {
      v8 = [(ICDServerNotificationsManager *)self delegate];
      [v8 notificationsManagerDidReceivePhoneNumberChangedNotification:self];
    }
  }
}

- (void)_didReceiveDarwinNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received darwin notification %{public}@", &v8, 0xCu);
  }

  v6 = [(ICDServerNotificationsManager *)self delegate];
  if ([v4 isEqualToString:@"com.apple.mobileipod.libraryimportdidfinish"])
  {
    [v6 notificationsManagerDidReceiveLibraryImportDidFinishDarwinNotification:self];
  }

  else if ([v4 isEqualToString:@"com.apple.itunesstored.autodownloaddefaultschange"])
  {
    [v6 notificationsManagerDidReceiveCellularDataRestrictionDidChangeDarwinNotification:self];
  }

  else if ([v4 isEqualToString:@"com.apple.purplebuddy.setupdone"])
  {
    [v6 notificationsManagerDidReceiveBuddySetupDoneDarwinNotification:self];
  }

  else if ([v4 isEqualToString:@"com.apple.family.family_updated"])
  {
    [(ICDServerNotificationsManager *)self _handleFamilyCircleChangedNotification];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received unsupported darwin notification %{public}@", &v8, 0xCu);
    }
  }
}

- (void)_didReceiveDistributedNotification:(id)a3 withStreamEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received distributed notification: %{public}@", &v11, 0xCu);
  }

  if ([v6 isEqualToString:AMSFamilyContentDeletionNotification])
  {
    [(ICDServerNotificationsManager *)self _handleFamilyContentDeletionNotification:v6 streamEvent:v7];
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"com.apple.LaunchServices.applicationRegistered"])
  {
    v9 = self;
    v10 = 1;
LABEL_9:
    [(ICDServerNotificationsManager *)v9 _handleApplicationRegistration:v10 notificationName:v6 streamEvent:v7];
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"com.apple.LaunchServices.applicationUnregistered"])
  {
    v9 = self;
    v10 = 0;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"com.apple.itunescloud.ICPlayActivityFlushInternalTestRequestNotification"])
  {
    [(ICDServerNotificationsManager *)self _handlePlayActivityFlushInternalTestRequestNotification];
  }

LABEL_10:
}

- (void)_tearDownNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)_setupNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleFirstUnlockNotification:" name:ICSecurityInfoFirstUnlockNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleMusicSubscriptionStatusDidChangeNotification:" name:ICMusicSubscriptionStatusDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleLibraryAuthServiceTokenDidChangeNotification:" name:ICLibraryAuthServiceClientTokenDidChangeNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100040760, ICCloudClientIsAuthenticatedDidChangeNotification, 0, 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, self, sub_100040758, @"com.apple.mobileipod-prefsChanged", 0, CFNotificationSuspensionBehaviorDrop);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, sub_100040750, @"com.apple.family.family_updated", 0, CFNotificationSuspensionBehaviorDrop);
  v9 = sub_10003FF80();
  if (v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = sub_10003FF80();
    [v10 addObserver:self selector:"_handleAllowsExplicitContentChangedNotification:" name:v11 object:0];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v12 = qword_100213B68;
  v40 = qword_100213B68;
  if (!qword_100213B68)
  {
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_1000400E4;
    v35 = &unk_1001DF318;
    v36 = &v37;
    v13 = sub_100040134();
    v38[3] = dlsym(v13, "MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification");
    qword_100213B68 = *(v36[1] + 24);
    v12 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (v12)
  {
    v14 = *v12;
    if (v14)
    {
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_handleAllowsMusicVideosChangedNotification:" name:v14 object:0];
    }

    v16 = sub_100040288();
    if (v16)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2050000000;
      v17 = qword_100213B78;
      v40 = qword_100213B78;
      if (!qword_100213B78)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_1000403EC;
        v35 = &unk_1001DF318;
        v36 = &v37;
        sub_1000403EC(&v32);
        v17 = v38[3];
      }

      v18 = v17;
      _Block_object_dispose(&v37, 8);
      if ([v17 isCurrentDeviceValidHomeAccessory])
      {
        v19 = +[NSNotificationCenter defaultCenter];
        v20 = sub_100040288();
        [v19 addObserver:self selector:"_handleAllowsExplicitContentChangedNotification:" name:v20 object:0];
      }
    }

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:self selector:"_handleActiveUserIdentityDidChangeNotification:" name:ICActiveUserIdentityDidChangeNotification object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:self selector:"_handleUserIdentityStoreDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"_handleHandlerCoordinatorDidFinishInitialization:" name:@"ICDHandlerCoordinatorDidFinishInitializationNotificationName" object:0];

    xpcStreamHandlerQueue = self->_xpcStreamHandlerQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000404B4;
    handler[3] = &unk_1001DAA40;
    handler[4] = self;
    xpc_set_event_stream_handler("com.apple.distnoted.matching", xpcStreamHandlerQueue, handler);
    v25 = self->_xpcStreamHandlerQueue;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100040544;
    v30[3] = &unk_1001DAA40;
    v30[4] = self;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v25, v30);
    v26 = self->_xpcStreamHandlerQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000405C0;
    v29[3] = &unk_1001DAA40;
    v29[4] = self;
    xpc_set_event_stream_handler("com.apple.CTTelephonyCenter", v26, v29);
  }

  else
  {
    v27 = +[NSAssertionHandler currentHandler];
    v28 = [NSString stringWithUTF8String:"NSString *getMPRestrictionsMonitorAllowsMusicVideosDidChangeNotification(void)"];
    [v27 handleFailureInFunction:v28 file:@"ICDServerNotificationsManager.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)dealloc
{
  [(ICDServerNotificationsManager *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = ICDServerNotificationsManager;
  [(ICDServerNotificationsManager *)&v3 dealloc];
}

- (ICDServerNotificationsManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICDServerNotificationsManager;
  v5 = [(ICDServerNotificationsManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.itunescloudd.ICDServerNotificationsManager", v7);
    xpcStreamHandlerQueue = v6->_xpcStreamHandlerQueue;
    v6->_xpcStreamHandlerQueue = v8;

    [(ICDServerNotificationsManager *)v6 _setupNotifications];
  }

  return v6;
}

@end