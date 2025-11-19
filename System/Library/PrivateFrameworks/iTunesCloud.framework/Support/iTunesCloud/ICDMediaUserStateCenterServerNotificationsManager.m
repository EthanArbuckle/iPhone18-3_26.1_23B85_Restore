@interface ICDMediaUserStateCenterServerNotificationsManager
- (ICDMediaUserStateCenterServerNotificationsManager)initWithDelegate:(id)a3;
- (ICDMediaUserStateCenterServerNotificationsManagerDelegate)delegate;
- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3;
- (void)_handleCloudAuthenticationDidChangeNotification;
- (void)_handleHomeUserSettingsDidChangeNotification:(id)a3;
- (void)_handleLibraryAuthServiceTokenDidChangeNotification:(id)a3;
- (void)_handleLocalStoreAccountPropertiesDidChangeNotification:(id)a3;
- (void)_handleMusicSettingsChangedNotification;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_setupNotifications;
@end

@implementation ICDMediaUserStateCenterServerNotificationsManager

- (ICDMediaUserStateCenterServerNotificationsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleMusicSettingsChangedNotification
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, music settings changed", &v5, 0xCu);
  }

  v4 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v4 notificationsManager:self didReceiveNotificationChangingUserState:0];
}

- (void)_handleCloudAuthenticationDidChangeNotification
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, cloud authentication changed", &v5, 0xCu);
  }

  v4 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v4 notificationsManager:self didReceiveNotificationChangingUserState:0];
}

- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, active user identity changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, subscription status changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, identity store changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_handleLocalStoreAccountPropertiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, store account properties changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_handleLibraryAuthServiceTokenDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, library authentication token changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_handleHomeUserSettingsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to update user state, home user settings changed", &v7, 0xCu);
  }

  v6 = [(ICDMediaUserStateCenterServerNotificationsManager *)self delegate];
  [v6 notificationsManager:self didReceiveNotificationChangingUserState:v4];
}

- (void)_setupNotifications
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = qword_100213E58;
  v26 = qword_100213E58;
  if (!qword_100213E58)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100128F2C;
    v21 = &unk_1001DF318;
    v22 = &v23;
    sub_100128F2C(&v18);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  if (![v3 isCurrentDeviceValidHomeAccessory])
  {
    goto LABEL_8;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v6 = qword_100213E68;
  v26 = qword_100213E68;
  if (!qword_100213E68)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100128FF4;
    v21 = &unk_1001DF318;
    v22 = &v23;
    v7 = sub_100129044();
    v8 = dlsym(v7, "MPHomeUserMonitorPrivateListeningForCurrentDeviceSettingDidChangeNotification");
    *(v22[1] + 24) = v8;
    qword_100213E68 = *(v22[1] + 24);
    v6 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v6)
  {
    [v5 addObserver:self selector:"_handleHomeUserSettingsDidChangeNotification:" name:*v6 object:0];

LABEL_8:
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_handleSubscriptionStatusDidChangeNotification:" name:ICMusicSubscriptionStatusDidChangeNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_handleActiveUserIdentityDidChangeNotification:" name:ICActiveUserIdentityDidChangeNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_handleLocalStoreAccountPropertiesDidChangeNotification:" name:ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"_handleUserIdentityStoreDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"_handleLibraryAuthServiceTokenDidChangeNotification:" name:ICLibraryAuthServiceClientTokenDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1001291A0, ICCloudClientIsAuthenticatedDidChangeNotification, 0, 0);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v15, self, sub_100129198, @"com.apple.mobileipod-prefsChanged", 0, CFNotificationSuspensionBehaviorDrop);
    return;
  }

  v16 = +[NSAssertionHandler currentHandler];
  v17 = [NSString stringWithUTF8String:"NSString *getMPHomeUserMonitorPrivateListeningForCurrentDeviceSettingDidChangeNotification(void)"];
  [v16 handleFailureInFunction:v17 file:@"ICDMediaUserStateCenterServerNotificationsManager.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (ICDMediaUserStateCenterServerNotificationsManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICDMediaUserStateCenterServerNotificationsManager;
  v5 = [(ICDMediaUserStateCenterServerNotificationsManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(ICDMediaUserStateCenterServerNotificationsManager *)v6 _setupNotifications];
  }

  return v6;
}

@end