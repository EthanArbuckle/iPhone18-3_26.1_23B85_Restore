@interface MCUEAPlugin
- (MCUEAPlugin)init;
- (id)_descriptionForContext:(id)a3;
- (id)_positionLabelForContext:(id)a3;
- (void)carrierBundleChange:(id)a3;
- (void)dealloc;
- (void)install;
- (void)preferredDataSimChanged:(id)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
@end

@implementation MCUEAPlugin

- (id)_descriptionForContext:(id)a3
{
  v4 = a3;
  v5 = [(MCUEAPlugin *)self coreTelephonyClient];

  if (v5)
  {
    v6 = [(MCUEAPlugin *)self coreTelephonyClient];
    v18 = 0;
    v7 = [v6 getPhoneNumber:v4 error:&v18];
    v8 = v18;

    v9 = [(MCUEAPlugin *)self coreTelephonyClient];
    v17 = 0;
    v10 = [v9 getSimLabel:v4 error:&v17];
    v11 = v17;

    if (v8)
    {
      [v8 MCVerboseDescription];
    }

    else
    {
      [NSString stringWithFormat:@"%@", v7];
    }
    v13 = ;
    if (v11)
    {
      [v11 MCVerboseDescription];
    }

    else
    {
      [NSString stringWithFormat:@"%@", v10];
    }
    v12 = ;
  }

  else
  {
    v12 = @"CoreTelephony client not initialized";
    v13 = @"CoreTelephony client not initialized";
  }

  v19[0] = @"Position";
  v14 = [(MCUEAPlugin *)self _positionLabelForContext:v4];
  v20[0] = v14;
  v20[1] = v13;
  v19[1] = @"Phone Number";
  v19[2] = @"Sim Label";
  v20[2] = v12;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

  return v15;
}

- (id)_positionLabelForContext:(id)a3
{
  v3 = [a3 slotID];
  v4 = @"unknown";
  if (v3 == &dword_0 + 2)
  {
    v4 = @"2";
  }

  if (v3 == &dword_0 + 1)
  {
    return @"1";
  }

  else
  {
    return v4;
  }
}

- (MCUEAPlugin)init
{
  v7.receiver = self;
  v7.super_class = MCUEAPlugin;
  v2 = [(MCUEAPlugin *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_userActivityHandle = 0;
    MCLoggingInitialize();
    v4 = _MCLogObjects[3];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MCUEAPlugin initialized.", v6, 2u);
    }
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MCUEAPlugin;
  [(MCUEAPlugin *)&v2 dealloc];
}

- (void)install
{
  v3 = _MCLogObjects[3];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "MCUEAinstall: starting", buf, 2u);
  }

  v4 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  [(MCUEAPlugin *)self setCoreTelephonyClient:v4];

  v5 = [(MCUEAPlugin *)self coreTelephonyClient];
  [v5 setDelegate:self];

  v6 = _MCLogObjects[3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MCUEAinstall: created CoreTelephonyClient", v12, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_DD8, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = _MCLogObjects[3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MCUEAinstall: registered for lock status change notification", v11, 2u);
  }

  v9 = _MCLogObjects[3];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MCUEAinstall: done", v10, 2u);
  }
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MCLogObjects[3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(MCUEAPlugin *)self _positionLabelForContext:v6];
    *v15 = 138543618;
    *&v15[4] = v10;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MCUEA-CT: simStatusDidChange, %{public}@, status=%{public}@", v15, 0x16u);
  }

  if ([v7 isEqualToString:kCTSIMSupportSIMStatusReady])
  {
    v11 = _MCLogObjects[3];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v12 = "MCUEA-CT: SIM is now ready.";
LABEL_9:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, v15, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v13 = [v7 isEqualToString:kCTSIMSupportSIMStatusNotInserted];
  v11 = _MCLogObjects[3];
  if (v13)
  {
    if (os_log_type_enabled(_MCLogObjects[3], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v12 = "MCUEA-CT: SIM has been removed.";
      goto LABEL_9;
    }

LABEL_10:
    v14 = +[MCProfileConnection sharedConnection];
    [v14 checkCarrierProfile];

    goto LABEL_11;
  }

  if (os_log_type_enabled(_MCLogObjects[3], OS_LOG_TYPE_DEBUG))
  {
    *v15 = 138543362;
    *&v15[4] = v7;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "MCUEA-CT: Ignoring SIM notification with status: %{public}@", v15, 0xCu);
  }

LABEL_11:
}

- (void)carrierBundleChange:(id)a3
{
  v3 = _MCLogObjects[3];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "MCUEA-CT: New carrier bundle detected.", v5, 2u);
  }

  v4 = +[MCProfileConnection sharedConnection];
  [v4 checkCarrierProfile];
}

- (void)preferredDataSimChanged:(id)a3
{
  v5 = _MCLogObjects[3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(MCUEAPlugin *)self _descriptionForContext:a3];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MCUEA-CT: User data preference changed to: %{public}@", &v9, 0xCu);
  }

  v8 = +[MCProfileConnection sharedConnection];
  [v8 checkCarrierProfile];
}

@end