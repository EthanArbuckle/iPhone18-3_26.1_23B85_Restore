@interface BKTVOutController
- (BKTVOutController)init;
- (BOOL)displayIsConnected:(id)a3;
- (BOOL)supportCloningToDisplay:(id)a3;
- (NSArray)windowServerDisplays;
- (void)_handleIapServerConnectionDied;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)systemShellDidFinishLaunching:(id)a3;
@end

@implementation BKTVOutController

- (void)_handleIapServerConnectionDied
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057EA8;
    block[3] = &unk_1000FD150;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

- (void)systemShellDidFinishLaunching:(id)a3
{
  v11 = 0;
  v12 = 0;
  sub_100058020(self, &v12, &v11, 1);
  v4 = v12;
  v5 = v11;
  if ([v4 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058360;
    block[3] = &unk_1000FC068;
    block[4] = self;
    v9 = v4;
    v10 = v5;
    dispatch_async(workQueue, block);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_class();
  v14 = v11;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    if ([v10 isEqualToString:@"currentMode"])
    {
      v17 = [v16 immutableCopy];
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058C08;
      block[3] = &unk_1000FBA68;
      v29 = v14;
      v30 = v12;
      v31 = self;
      v32 = v17;
      v19 = v17;
      dispatch_async(workQueue, block);

      v20 = v29;
    }

    else
    {
      if (![v10 isEqualToString:@"availableModes"])
      {
        v19 = BKLogDisplay();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v34 = v10;
          v35 = 2114;
          v36 = v14;
          v37 = 2114;
          v38 = v12;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ changed on %{public}@ -> %{public}@", buf, 0x20u);
        }

        goto LABEL_15;
      }

      v21 = [v16 immutableCopy];
      v22 = 2 * (a6 == @"Wireless");
      v23 = a6 == @"PurpleTVOut";
      v24 = self->_workQueue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100058E64;
      v25[3] = &unk_1000FCA90;
      if (v23)
      {
        v22 = 1;
      }

      v25[4] = self;
      v26 = v21;
      v27 = v22;
      v19 = v21;
      dispatch_async(v24, v25);
      v20 = v26;
    }

LABEL_15:
  }
}

- (BOOL)supportCloningToDisplay:(id)a3
{
  v4 = [a3 name];
  if ([v4 isEqualToString:@"Wireless"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"TVOut"])
  {
    v5 = !self->_queue_forceTVOutMode;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)displayIsConnected:(id)a3
{
  v4 = [a3 displayId];
  if (self)
  {
    v5 = v4;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = +[CADisplay displays];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 displayId] == v5)
          {
            v12 = [v11 immutableCopy];
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 availableModes];
  v14 = [v13 count] != 0;

  return v14;
}

- (NSArray)windowServerDisplays
{
  v2 = +[CAWindowServer serverIfRunning];
  v3 = [v2 displays];

  return v3;
}

- (void)dealloc
{
  if (self)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"com.apple.iapd.videoout.SettingsChanged", 0);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, 0, @"kIAPDServerDiedNotification", 0);
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"BKTetherControllerTetherStateChangedNotification" object:0];
  }

  v6.receiver = self;
  v6.super_class = BKTVOutController;
  [(BKTVOutController *)&v6 dealloc];
}

- (BKTVOutController)init
{
  v33.receiver = self;
  v33.super_class = BKTVOutController;
  v2 = [(BKTVOutController *)&v33 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    workQueue = v2->_workQueue;
    v2->_workQueue = Serial;

    v5 = [[BKDisplayCloneMirroringManager alloc] initWithDisplayProvider:v2];
    queue_cloneMirrorManager = v2->_queue_cloneMirrorManager;
    v2->_queue_cloneMirrorManager = v5;

    v26 = +[CAWindowServer serverIfRunning];
    v7 = [v26 displayWithName:@"TVOut"];
    if (v7)
    {
      v8 = sub_1000076E8();

      if (v7 == v8)
      {
        v2->_queue_forceTVOutMode = 1;
      }
    }

    v25 = +[CADisplay TVOutDisplay];
    [v25 addObserver:v2 forKeyPath:@"currentMode" options:0 context:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100059848, @"com.apple.iapd.videoout.SettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, sub_10005974C, @"kIAPDServerDiedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = +[BKTetherController sharedInstance];
    [v11 addObserver:v2 selector:"_tetherSettingChanged:" name:@"BKTetherControllerTetherStateChangedNotification" object:v12];

    v13 = +[BKSystemShellSentinel sharedInstance];
    v14 = [v13 addSystemShellObserver:v2 reason:@"BKTVOutController"];
    systemShellObserving = v2->_systemShellObserving;
    v2->_systemShellObserving = v14;

    v31 = 0;
    v32 = 0;
    sub_100058020(v2, &v32, &v31, 0);
    v16 = v32;
    v17 = v31;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          [v23 addObserver:v2 forKeyPath:@"availableModes" options:0 context:@"Wireless"];
          [(BKTVOutController *)v2 observeValueForKeyPath:@"availableModes" ofObject:v23 change:0 context:@"Wireless"];
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v20);
    }

    if (v7 && v17)
    {
      sub_1000588E0(v2, 1, v7);
      [v17 addObserver:v2 forKeyPath:@"availableModes" options:0 context:@"PurpleTVOut"];
      [(BKTVOutController *)v2 observeValueForKeyPath:@"availableModes" ofObject:v17 change:0 context:@"PurpleTVOut"];
    }
  }

  return v2;
}

@end