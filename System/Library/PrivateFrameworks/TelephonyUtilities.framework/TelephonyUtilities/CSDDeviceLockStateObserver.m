@interface CSDDeviceLockStateObserver
- (CSDDeviceLockStateObserver)initWithFirstUnlockObserver:(id)a3 whenUnlockedObserver:(id)a4 queue:(id)a5;
- (CSDDeviceLockStateObserver)initWithQueue:(id)a3;
- (void)_handleDeviceFirstUnlockNotification;
- (void)_handleDeviceLockStatusNotification;
- (void)_refreshHasBeenUnlockedSinceBoot;
- (void)performBlockAfterFirstUnlock:(id)a3;
- (void)performBlockWhenUnlocked:(id)a3;
@end

@implementation CSDDeviceLockStateObserver

- (CSDDeviceLockStateObserver)initWithFirstUnlockObserver:(id)a3 whenUnlockedObserver:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = CSDDeviceLockStateObserver;
  v12 = [(CSDDeviceLockStateObserver *)&v25 init];
  if (v12)
  {
    dispatch_assert_queue_V2(v11);
    objc_storeStrong(&v12->_queue, a5);
    v13 = +[NSMutableArray array];
    firstUnlockCallbacks = v12->_firstUnlockCallbacks;
    v12->_firstUnlockCallbacks = v13;

    v15 = +[NSMutableArray array];
    whenUnlockedCallbacks = v12->_whenUnlockedCallbacks;
    v12->_whenUnlockedCallbacks = v15;

    hasBeenUnlockedSinceBootBlock = v12->_hasBeenUnlockedSinceBootBlock;
    v12->_hasBeenUnlockedSinceBootBlock = &stru_10061E130;

    mobileKeyLockStateBlock = v12->_mobileKeyLockStateBlock;
    v12->_mobileKeyLockStateBlock = &stru_10061E190;

    v12->_mobileKeyLockState = -1;
    objc_initWeak(&location, v12);
    objc_storeStrong(&v12->_firstUnlockObserver, a3);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001DCB84;
    v22[3] = &unk_10061A740;
    objc_copyWeak(&v23, &location);
    [(TUNotifyObserver *)v12->_firstUnlockObserver setCallback:v22];
    objc_storeStrong(&v12->_whenUnlockedObserver, a4);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001DCBC4;
    v20[3] = &unk_10061A740;
    objc_copyWeak(&v21, &location);
    [(TUNotifyObserver *)v12->_whenUnlockedObserver setCallback:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (CSDDeviceLockStateObserver)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = [[TUNotifyObserver alloc] initWithNotificationName:@"com.apple.mobile.keybagd.first_unlock" queue:v4];
  v6 = [[TUNotifyObserver alloc] initWithNotificationName:@"com.apple.mobile.keybagd.lock_status" queue:v4];
  v7 = [(CSDDeviceLockStateObserver *)self initWithFirstUnlockObserver:v5 whenUnlockedObserver:v6 queue:v4];

  return v7;
}

- (void)_refreshHasBeenUnlockedSinceBoot
{
  v3 = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot])
  {
    v4 = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBootBlock];
    v5 = v4[2]();

    if (v5 != [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot])
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109376;
        v7[1] = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot];
        v8 = 1024;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "hasBeenUnlockedSinceBoot changing from %d to %d", v7, 0xEu);
      }

      [(CSDDeviceLockStateObserver *)self setHasBeenUnlockedSinceBoot:v5];
    }
  }
}

- (void)_handleDeviceFirstUnlockNotification
{
  v3 = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(v3);

  [(CSDDeviceLockStateObserver *)self _refreshHasBeenUnlockedSinceBoot];
  if ([(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot])
  {
    v4 = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
    [v4 endObserving];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v11 + 1) + 8 * v9) + 16))();
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
    [v10 removeAllObjects];
  }
}

- (void)_handleDeviceLockStatusNotification
{
  v3 = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDDeviceLockStateObserver *)self mobileKeyLockStateBlock];
  v5 = v4[2]();

  v6 = v5 == 3 || v5 == 0;
  if (v6 && [(CSDDeviceLockStateObserver *)self mobileKeyLockState]&& [(CSDDeviceLockStateObserver *)self mobileKeyLockState]!= 3)
  {
    v7 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v8 = [v7 count];

    if (v8)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v23 = [(CSDDeviceLockStateObserver *)self mobileKeyLockState];
        v24 = 1024;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mobileKeyLockState changing from %d to %d", buf, 0xEu);
      }
    }

    v10 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
    [v10 endObserving];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v16 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    [v16 removeAllObjects];
  }

  [(CSDDeviceLockStateObserver *)self setMobileKeyLockState:v5];
}

- (void)performBlockAfterFirstUnlock:(id)a3
{
  v4 = a3;
  v5 = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDDeviceLockStateObserver *)self _refreshHasBeenUnlockedSinceBoot];
  v6 = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot];
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device has been unlocked since boot, so invoking block immediately", buf, 2u);
    }

    v4[2](v4);
LABEL_12:

    return;
  }

  if (v8)
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked since boot, so storing block to be performed upon first unlock after boot", v18, 2u);
  }

  v9 = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
  v10 = [v4 copy];

  v11 = objc_retainBlock(v10);
  [v9 addObject:v11];

  v12 = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
  if (v12)
  {
    v13 = v12;
    v14 = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
    v15 = [v14 isObserving];

    if ((v15 & 1) == 0)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked-after-boot and is not yet observing device lock-after-boot changes, so begin to observe device unlock-after-boot changes", v17, 2u);
      }

      v4 = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
      [v4 beginObserving];
      goto LABEL_12;
    }
  }
}

- (void)performBlockWhenUnlocked:(id)a3
{
  v4 = a3;
  v5 = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(CSDDeviceLockStateObserver *)self mobileKeyLockState]== -1)
  {
    v6 = [(CSDDeviceLockStateObserver *)self mobileKeyLockStateBlock];
    [(CSDDeviceLockStateObserver *)self setMobileKeyLockState:v6[2]()];
  }

  if ([(CSDDeviceLockStateObserver *)self mobileKeyLockState]&& [(CSDDeviceLockStateObserver *)self mobileKeyLockState]!= 3)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding callback to perform on next unlock", v19, 2u);
    }

    v9 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v10 = [v4 copy];
    v11 = objc_retainBlock(v10);
    [v9 addObject:v11];

    v12 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
    if (v12)
    {
      v13 = v12;
      v14 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
      v15 = [v14 isObserving];

      if ((v15 & 1) == 0)
      {
        v16 = sub_100004778();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device is not yet observing device unlock changes, beginning to observe device unlock changes", v18, 2u);
        }

        v17 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
        [v17 beginObserving];
      }
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device unlocked, performing callback immediately", buf, 2u);
    }

    v4[2](v4);
  }
}

@end