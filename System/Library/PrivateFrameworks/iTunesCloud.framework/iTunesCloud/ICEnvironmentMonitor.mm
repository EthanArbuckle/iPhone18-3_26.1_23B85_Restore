@interface ICEnvironmentMonitor
+ (ICEnvironmentMonitor)sharedMonitor;
- (BOOL)_onQueue_isWiFiAssociated;
- (BOOL)_onQueue_networkConstrained;
- (BOOL)isCharging;
- (BOOL)isCurrentNetworkLinkExpensive;
- (BOOL)isCurrentNetworkLinkHighQuality;
- (BOOL)isEthernetWired;
- (BOOL)isNetworkConstrained;
- (BOOL)isRemoteServerLikelyReachable;
- (BOOL)isRemoteServerReachable;
- (BOOL)isWiFiAssociated;
- (BOOL)isWifiActive;
- (ICEnvironmentMonitor)init;
- (NSDictionary)signalInfo;
- (NSDictionary)signalStrength;
- (NSString)telephonyOperatorName;
- (NSString)telephonyRegistrationStatus;
- (double)currentBatteryLevel;
- (int64_t)_onQueue_currentCellularLinkQuality;
- (int64_t)_onQueue_currentNetworkType;
- (int64_t)currentThermalPressureLevel;
- (int64_t)currentThermalState;
- (int64_t)lastKnownNetworkType;
- (int64_t)networkType;
- (unint64_t)currentNetworkLinkQuality;
- (unint64_t)currentThermalLevel;
- (void)_handleApplicationDidEnterForegroundNotification:(id)notification;
- (void)_notifyObserversEnvironmentMonitorDidChangeTelephonyStatus;
- (void)_onQueue_loadInitialThermalLevel;
- (void)_onQueue_updateNetworkReachabilityAndNotifyObservers:(BOOL)observers;
- (void)_onQueue_updatePowerStateNotifyingObservers:(BOOL)observers;
- (void)_onQueue_updateTelephonyStateAndNotifyObservers:(BOOL)observers;
- (void)_onQueue_updateThermalLevelWithToken:(int)token;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)didStopTrackingNOI:(id)i;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ICEnvironmentMonitor

+ (ICEnvironmentMonitor)sharedMonitor
{
  if (sharedMonitor_sOnceToken_40161 != -1)
  {
    dispatch_once(&sharedMonitor_sOnceToken_40161, &__block_literal_global_40162);
  }

  v3 = sharedMonitor_sSharedMonitor_40163;

  return v3;
}

uint64_t __37__ICEnvironmentMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sSharedMonitor_40163 = objc_alloc_init(ICEnvironmentMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (ICEnvironmentMonitor)init
{
  v15.receiver = self;
  v15.super_class = ICEnvironmentMonitor;
  v2 = [(ICEnvironmentMonitor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloud.ICEnvironmentMonitor.accessQueue", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.itunescloud.ICEnvironmentMonitor.calloutQueue", MEMORY[0x1E69E96A8]);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = *(v2 + 3);
    *(v2 + 3) = weakObjectsHashTable;

    *(v2 + 4) = 0;
    *(v2 + 14) = -1;
    *(v2 + 16) = 0;
    *(v2 + 19) = 0;
    *(v2 + 12) = -1;
    v9 = *(v2 + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__ICEnvironmentMonitor_init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v10 = v2;
    v14 = v10;
    dispatch_async(v9, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleApplicationDidEnterForegroundNotification_ name:@"UIApplicationDidEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v10 selector:sel__handleApplicationDidEnterForegroundNotification_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  }

  return v2;
}

void __28__ICEnvironmentMonitor_init__block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __28__ICEnvironmentMonitor_init__block_invoke_2;
  handler[3] = &unk_1E7BFA000;
  v53 = v2;
  v4 = notify_register_dispatch("com.apple.system.powersources.timeremaining", (v2 + 112), v3, handler);
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "ICEnvironmentMonitor: failed to register for battery level notifications. status=%d", buf, 8u);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __28__ICEnvironmentMonitor_init__block_invoke_17;
  v50[3] = &unk_1E7BFA000;
  v51 = v6;
  v8 = notify_register_dispatch("com.apple.system.powersources.source", (v6 + 116), v7, v50);
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "ICEnvironmentMonitor: failed to register for power source notifications. status=%d", buf, 8u);
    }
  }

  [*(a1 + 32) _onQueue_updatePowerStateNotifyingObservers:0];
  v10 = +[ICDeviceInfo currentDeviceInfo];
  if ([v10 hasWiFiCapability] && objc_msgSend(MEMORY[0x1E69B1418], "hasBoolEntitlement:", @"com.apple.private.corewifi"))
  {
    v11 = [MEMORY[0x1E69B1418] hasEntitlement:@"com.apple.private.corewifi-xpc" inGroup:@"com.apple.security.exception.mach-lookup.global-name"];

    if (v11)
    {
      v54 = 0;
      v55 = &v54;
      v56 = 0x2050000000;
      v12 = getCWFInterfaceClass_softClass;
      v57 = getCWFInterfaceClass_softClass;
      if (!getCWFInterfaceClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v60 = 3221225472;
        v61 = __getCWFInterfaceClass_block_invoke;
        v62 = &unk_1E7BFA0A0;
        v63 = &v54;
        __getCWFInterfaceClass_block_invoke(buf);
        v12 = v55[3];
      }

      v13 = v12;
      _Block_object_dispose(&v54, 8);
      v14 = objc_alloc_init(v12);
      v15 = *(a1 + 32);
      v16 = *(v15 + 88);
      *(v15 + 88) = v14;

      [*(*(a1 + 32) + 88) activate];
    }
  }

  else
  {
  }

  v17 = +[ICDeviceInfo currentDeviceInfo];
  v18 = [v17 hasCellularDataCapability];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:*(*(a1 + 32) + 8)];
    v20 = *(*(a1 + 32) + 56);
    *(*(a1 + 32) + 56) = v19;

    v21 = *(a1 + 32);
    v22 = v21[7];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __28__ICEnvironmentMonitor_init__block_invoke_30;
    v48[3] = &unk_1E7BFA028;
    v49 = v21;
    [v22 getCurrentDataSubscriptionContext:v48];
    [*(*(a1 + 32) + 56) setDelegate:?];
  }

  [*(a1 + 32) _onQueue_updateTelephonyStateAndNotifyObservers:0];
  v23 = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
  v24 = *(*(a1 + 32) + 40);
  *(*(a1 + 32) + 40) = v23;

  v25 = *(*(a1 + 32) + 40);
  if (v25)
  {
    [v25 addObserver:*(a1 + 32) forKeyPath:@"path" options:5 context:ICEnvironmentMonitorNetworkPathEvaluatorContext];
  }

  else
  {
    v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "ICEnvironmentMonitor: failed to create network path observer", buf, 2u);
    }
  }

  v27 = a1 + 32;
  *(*v27 + 127) = [*(a1 + 32) _onQueue_networkConstrained];
  v28 = [MEMORY[0x1E695DFA8] set];
  v29 = *(*(a1 + 32) + 104);
  *(*v27 + 104) = v28;

  v30 = +[ICDeviceInfo currentDeviceInfo];
  v31 = [v30 isWatch];
  v32 = 50;
  if (v31)
  {
    v32 = 0;
  }

  *(*v27 + 144) = v32;

  v58 = @"linkQuality";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v34 = ICNOIKeysToObserve;
  ICNOIKeysToObserve = v33;

  v35 = objc_alloc_init(MEMORY[0x1E69D53E0]);
  v36 = *(*v27 + 96);
  *(*v27 + 96) = v35;

  v37 = *(*v27 + 96);
  if (v37)
  {
    [v37 setQueue:*(*v27 + 8)];
    [*(*(a1 + 32) + 96) setDelegate:?];
    [*(*(a1 + 32) + 96) trackNOIAnyForInterfaceType:2 options:0];
    [*(*(a1 + 32) + 96) trackNOIAnyForInterfaceType:1 options:0];
  }

  else
  {
    v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_ERROR, "Failed to create NWNetworkOfInterestManager", buf, 2u);
    }
  }

  v40 = *(a1 + 32);
  v39 = (a1 + 32);
  [v40 _onQueue_updateNetworkReachabilityAndNotifyObservers:0];
  [*v39 _onQueue_loadInitialThermalLevel];
  [*(*v39 + 7) refreshCellMonitor:0 completion:&__block_literal_global_39];
  v41 = *MEMORY[0x1E69E98C0];
  v42 = *v39;
  v43 = *(*v39 + 1);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __28__ICEnvironmentMonitor_init__block_invoke_40;
  v46[3] = &unk_1E7BFA000;
  v47 = v42;
  v44 = notify_register_dispatch(v41, v42 + 12, v43, v46);
  if (v44)
  {
    v45 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v44;
      _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_DEFAULT, "error registering for thermal pressure levels change notifications status=%u", buf, 8u);
    }
  }
}

- (BOOL)isEthernetWired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__ICEnvironmentMonitor_isEthernetWired__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_onQueue_networkConstrained
{
  dispatch_assert_queue_V2(self->_accessQueue);
  path = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  isConstrained = [path isConstrained];

  return isConstrained;
}

- (void)_onQueue_loadInitialThermalLevel
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  out_token = 0;
  v3 = notify_register_check(*MEMORY[0x1E69E98C0], &out_token);
  if (!v3)
  {
    state = notify_get_state(out_token, &self->_currentThermalLevel);
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v8 = v7;
    if (state)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        currentThermalLevel = self->_currentThermalLevel;
        *buf = 67109376;
        v17[0] = state;
        LOWORD(v17[1]) = 2048;
        *(&v17[1] + 2) = currentThermalLevel;
        v10 = "error getting current thermal pressure level - status=%u, _currentThermalLevel=%llu";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 18;
LABEL_10:
        _os_log_impl(&dword_1B4491000, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_currentThermalLevel;
      *buf = 134217984;
      *v17 = v14;
      v10 = "current thermal pressure level=%llu";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
      goto LABEL_10;
    }

    notify_cancel(out_token);
    return;
  }

  v4 = v3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v17[0] = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "error checking for thermal pressure level status=%u", buf, 8u);
  }
}

void __28__ICEnvironmentMonitor_init__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "ICEnvironmentMonitor: getCurrentDataSubscriptionContext failed error=%{public}@", &v9, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    [*(a1 + 32) _onQueue_updateTelephonyStateAndNotifyObservers:0];
  }
}

- (int64_t)_onQueue_currentNetworkType
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    v5 = +[ICDefaults standardDefaults];
    networkTypeOverride = [v5 networkTypeOverride];

    if (networkTypeOverride)
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543618;
        selfCopy = self;
        v26 = 2114;
        v27 = networkTypeOverride;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found network type override value %{public}@", &v24, 0x16u);
      }

      integerValue = [networkTypeOverride integerValue];
      return integerValue;
    }
  }

  path = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  status = [path status];

  if ((status & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_38;
  }

  path2 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  v12 = [path2 usesInterfaceType:3];

  if (v12)
  {
    return 2000;
  }

  path3 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  v14 = [path3 usesInterfaceType:1];

  if (v14)
  {
    return 1000;
  }

  telephonyStatusIndicator = self->_telephonyStatusIndicator;
  if (telephonyStatusIndicator > 9)
  {
    if (telephonyStatusIndicator > 15)
    {
      if ((telephonyStatusIndicator - 16) >= 4)
      {
        goto LABEL_38;
      }

      return 4;
    }

    if (telephonyStatusIndicator <= 12)
    {
      if (telephonyStatusIndicator == 10)
      {
        return 6;
      }

      if (telephonyStatusIndicator == 11)
      {
        return 7;
      }

      return 8;
    }

    return 3;
  }

  if (telephonyStatusIndicator > 5)
  {
    if ((telephonyStatusIndicator - 6) >= 2)
    {
      if (telephonyStatusIndicator != 8)
      {
        if (telephonyStatusIndicator == 9)
        {
          return 5;
        }

        goto LABEL_38;
      }

      return 4;
    }

    return 3;
  }

  if ((telephonyStatusIndicator - 3) < 3)
  {
    return 2;
  }

  if ((telephonyStatusIndicator - 1) < 2)
  {
    return 1;
  }

  if (!telephonyStatusIndicator)
  {
    path4 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
    v17 = [path4 usesInterfaceType:2];

    if (v17)
    {
      return 100;
    }

    path5 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
    if ([path5 usesInterfaceType:0])
    {

      return 3000;
    }

    path6 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
    v20 = [path6 usesInterfaceType:4];

    if (v20)
    {
      return 3000;
    }
  }

LABEL_38:
  v21 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v21 isWatch];

  if (!isWatch)
  {
    return 0;
  }

  return [(ICEnvironmentMonitor *)self _networkTypeFromWatchCarousel];
}

- (int64_t)_onQueue_currentCellularLinkQuality
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    v5 = +[ICDefaults standardDefaults];
    networkLinkQualityOverride = [v5 networkLinkQualityOverride];

    if (networkLinkQualityOverride)
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v24 = 2114;
        v25 = networkLinkQualityOverride;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found network link quality override value %{public}@", buf, 0x16u);
      }

      intValue = [networkLinkQualityOverride intValue];
      return intValue;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_networksOfInterest;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v10)
  {

    return self->_currentNetworkLinkQuality;
  }

  v11 = v10;
  v12 = 0;
  intValue = 0;
  v13 = *v18;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v17 + 1) + 8 * i);
      if ([v15 interface] == 2)
      {
        if ([v15 linkQuality] > intValue)
        {
          intValue = [v15 linkQuality];
        }

        v12 = 1;
      }
    }

    v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    return self->_currentNetworkLinkQuality;
  }

  return intValue;
}

- (BOOL)_onQueue_isWiFiAssociated
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if ([(ICEnvironmentMonitor *)self _onQueue_currentNetworkType]== 1000)
  {
    return 1;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_networksOfInterest;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    linkQuality = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 interface] == 1)
        {
          if ([v11 linkQuality] > linkQuality)
          {
            linkQuality = [v11 linkQuality];
          }

          v7 = 1;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);

    if (v7)
    {
      return linkQuality > 0;
    }
  }

  else
  {
  }

  return self->_wifiAssociated;
}

void __28__ICEnvironmentMonitor_init__block_invoke_36(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "ICEnvironmentMonitor: [_telephonyClient refreshCellMonitor] failed error=%{public}@", &v4, 0xCu);
    }
  }
}

- (int64_t)networkType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__ICEnvironmentMonitor_networkType__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCurrentNetworkLinkExpensive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICEnvironmentMonitor_isCurrentNetworkLinkExpensive__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRemoteServerLikelyReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICEnvironmentMonitor_isRemoteServerLikelyReachable__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __38__ICEnvironmentMonitor_signalStrength__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 56));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 88));
  *(*(a1[7] + 8) + 24) = *(a1[4] + 128);
}

- (NSDictionary)signalInfo
{
  v60[16] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__40061;
  v57 = __Block_byref_object_dispose__40062;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__40061;
  v47 = __Block_byref_object_dispose__40062;
  v48 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ICEnvironmentMonitor_signalInfo__block_invoke;
  block[3] = &unk_1E7BFA050;
  block[4] = self;
  block[5] = &v43;
  block[6] = &v53;
  block[7] = &v49;
  dispatch_sync(accessQueue, block);
  v5 = *MEMORY[0x1E69651F0];
  v60[0] = *MEMORY[0x1E69651E8];
  v60[1] = v5;
  v6 = *MEMORY[0x1E69651E0];
  v60[2] = *MEMORY[0x1E69651B8];
  v60[3] = v6;
  v7 = *MEMORY[0x1E69651A0];
  v60[4] = *MEMORY[0x1E6965228];
  v60[5] = v7;
  v8 = *MEMORY[0x1E69651B0];
  v60[6] = *MEMORY[0x1E69651F8];
  v60[7] = v8;
  v9 = *MEMORY[0x1E6965208];
  v60[8] = *MEMORY[0x1E69651A8];
  v60[9] = v9;
  v10 = *MEMORY[0x1E6965220];
  v60[10] = *MEMORY[0x1E6965210];
  v60[11] = v10;
  v11 = *MEMORY[0x1E69651D8];
  v60[12] = *MEMORY[0x1E6965200];
  v60[13] = v11;
  v12 = *MEMORY[0x1E69651D0];
  v60[14] = *MEMORY[0x1E6965218];
  v60[15] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:16];
  v14 = v13;
  v15 = v50[3];
  if ((v15 - 1) <= 0x1F2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v59 count:16];
    if (v17)
    {
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = [v54[5] objectForKeyedSubscript:{v20, v38}];

          if (v21)
          {
            v22 = [v54[5] objectForKeyedSubscript:v20];
            [v3 setObject:v22 forKeyedSubscript:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v38 objects:v59 count:16];
      }

      while (v17);
    }

    v15 = v50[3];
  }

  if ((v15 - 1000) <= 0x3E7)
  {
    v23 = MEMORY[0x1E696AD98];
    [v44[5] txRate];
    v24 = [v23 numberWithDouble:?];
    [v3 setObject:v24 forKeyedSubscript:@"wifi-txRate"];

    v25 = MEMORY[0x1E696AD98];
    channel = [v44[5] channel];
    v27 = [v25 numberWithUnsignedInt:{objc_msgSend(channel, "flags")}];
    [v3 setObject:v27 forKeyedSubscript:@"wifi-channel-flags"];

    v28 = MEMORY[0x1E696AD98];
    channel2 = [v44[5] channel];
    v30 = [v28 numberWithUnsignedInt:{objc_msgSend(channel2, "width")}];
    [v3 setObject:v30 forKeyedSubscript:@"wifi-channel-width"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v44[5], "PHYMode")}];
    [v3 setObject:v31 forKeyedSubscript:@"wifi-phyMode"];

    countryCode = [v44[5] countryCode];
    LOBYTE(v31) = countryCode == 0;

    if ((v31 & 1) == 0)
    {
      countryCode2 = [v44[5] countryCode];
      [v3 setObject:countryCode2 forKeyedSubscript:@"wifi-countryCode"];
    }

    v34 = MEMORY[0x1E696AD98];
    [v44[5] rxRate];
    v35 = [v34 numberWithDouble:?];
    [v3 setObject:v35 forKeyedSubscript:@"wifi-rxRate"];
  }

  v36 = [v3 copy];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  return v36;
}

- (BOOL)isWiFiAssociated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__ICEnvironmentMonitor_isWiFiAssociated__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDictionary)signalStrength
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__40061;
  v54 = __Block_byref_object_dispose__40062;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__40061;
  v44 = __Block_byref_object_dispose__40062;
  v45 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ICEnvironmentMonitor_signalStrength__block_invoke;
  block[3] = &unk_1E7BFA050;
  block[4] = self;
  block[5] = &v50;
  block[6] = &v40;
  block[7] = &v46;
  dispatch_sync(accessQueue, block);
  v5 = v47[3];
  if ((v5 - 1) > 0x1F2)
  {
    v9 = 0;
  }

  else
  {
    v6 = v51[5];
    v38 = 0;
    v7 = [v6 getCurrentDataServiceDescriptorSync:&v38];
    v8 = v38;
    if (v8)
    {
      v9 = v8;
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v9;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve Current Data CTServiceDescriptor: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v11 = v51[5];
      v37 = 0;
      v10 = [v11 getPublicSignalStrength:v7 error:&v37];
      v12 = v37;
      if (v12)
      {
        displayBars = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(displayBars, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v57 = v12;
          _os_log_impl(&dword_1B4491000, displayBars, OS_LOG_TYPE_ERROR, "Failed to retrieve CTSignalStrengthInfo %{public}@", buf, 0xCu);
        }
      }

      else
      {
        maxDisplayBars = [v10 maxDisplayBars];
        [v3 setObject:maxDisplayBars forKeyedSubscript:@"signal-bars-max"];

        displayBars = [v10 displayBars];
        [v3 setObject:displayBars forKeyedSubscript:@"signal-bars"];
      }

      v15 = v51[5];
      v36 = v12;
      v16 = [v15 getSignalStrengthMeasurements:v7 error:&v36];
      v9 = v36;

      if (v9)
      {
        rxagc = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(rxagc, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v57 = v9;
          _os_log_impl(&dword_1B4491000, rxagc, OS_LOG_TYPE_ERROR, "Failed to retrieve CTSignalStrengthMeasurements %{public}@", buf, 0xCu);
        }
      }

      else
      {
        rssi = [v16 rssi];
        [v3 setObject:rssi forKeyedSubscript:@"gsm-rssi"];

        rscp = [v16 rscp];
        [v3 setObject:rscp forKeyedSubscript:@"umts-rscp"];

        ecn0 = [v16 ecn0];
        [v3 setObject:ecn0 forKeyedSubscript:@"umts-ecn0"];

        rsrp = [v16 rsrp];
        [v3 setObject:rsrp forKeyedSubscript:@"lte-rsrp"];

        rsrq = [v16 rsrq];
        [v3 setObject:rsrq forKeyedSubscript:@"lte-rsrq"];

        v23 = [v16 snr];
        [v3 setObject:v23 forKeyedSubscript:@"lte-snr"];

        ecio = [v16 ecio];
        [v3 setObject:ecio forKeyedSubscript:@"evdo-ecio"];

        rxagc = [v16 rxagc];
        [v3 setObject:rxagc forKeyedSubscript:@"evdo-rxagc"];
      }
    }

    v5 = v47[3];
  }

  if ((v5 - 1000) <= 0x3E7)
  {
    v25 = [v41[5] RSSI] + 77.5;
    v26 = fabsf(sqrtf((v25 * v25) + 450.0));
    v27 = (v25 / (v26 + v26)) + 0.5;
    if (v27 < 0.0 || v27 > 1.0)
    {
      v29 = 0;
    }

    else
    {
      v30 = vcvtps_u32_f32(v27 * 3.0);
      if (v30 <= 1)
      {
        v30 = 1;
      }

      if (v30 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = v30;
      }
    }

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29];
    [v3 setObject:v31 forKeyedSubscript:@"signal-bars"];

    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:3];
    [v3 setObject:v32 forKeyedSubscript:@"signal-bars-max"];

    v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v41[5], "RSSI")}];
    [v3 setObject:v33 forKeyedSubscript:@"wifi-rssi"];
  }

  v34 = [v3 copy];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  return v34;
}

void __34__ICEnvironmentMonitor_signalInfo__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 88));
  v2 = [*(a1[4] + 80) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1[7] + 8) + 24) = *(a1[4] + 128);
}

- (BOOL)isCurrentNetworkLinkHighQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__ICEnvironmentMonitor_isCurrentNetworkLinkHighQuality__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__ICEnvironmentMonitor_isCurrentNetworkLinkHighQuality__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 128) != 0;
  v1 = *(result + 32);
  if ((*(v1 + 128) - 1) <= 0x1F2)
  {
    *(*(*(result + 40) + 8) + 24) = *(v1 + 144) > 0x31uLL;
  }

  return result;
}

- (BOOL)isNetworkConstrained
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ICEnvironmentMonitor_isNetworkConstrained__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)currentThermalLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ICEnvironmentMonitor_currentThermalLevel__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)currentThermalPressureLevel
{
  currentThermalLevel = [(ICEnvironmentMonitor *)self currentThermalLevel];
  v3 = 30;
  v4 = 40;
  v5 = 50;
  if (currentThermalLevel != 50)
  {
    v5 = 0;
  }

  if (currentThermalLevel != 40)
  {
    v4 = v5;
  }

  if (currentThermalLevel != 30)
  {
    v3 = v4;
  }

  v6 = 10;
  v7 = 20;
  if (currentThermalLevel != 20)
  {
    v7 = 0;
  }

  if (currentThermalLevel != 10)
  {
    v6 = v7;
  }

  if (currentThermalLevel <= 29)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (void)didStopTrackingAllNOIs:(id)is
{
  isCopy = is;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ICEnvironmentMonitor_didStopTrackingAllNOIs___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = isCopy;
  selfCopy = self;
  v6 = isCopy;
  dispatch_async(accessQueue, v7);
}

void __47__ICEnvironmentMonitor_didStopTrackingAllNOIs___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Stop tracking interfaces %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) didStopTrackingNOI:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ICEnvironmentMonitor_didStopTrackingAllNOIs___block_invoke_119;
  block[3] = &unk_1E7BFA300;
  block[4] = v9;
  dispatch_async(v10, block);
}

uint64_t __47__ICEnvironmentMonitor_didStopTrackingAllNOIs___block_invoke_119(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Start tracking WiFi and Cellular link changes", v4, 2u);
  }

  [*(*(a1 + 32) + 96) trackNOIAnyForInterfaceType:2 options:0];
  return [*(*(a1 + 32) + 96) trackNOIAnyForInterfaceType:1 options:0];
}

- (void)didStopTrackingNOI:(id)i
{
  iCopy = i;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ICEnvironmentMonitor_didStopTrackingNOI___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __43__ICEnvironmentMonitor_didStopTrackingNOI___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) interface];
  if ((result - 1) <= 1)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Stop tracking interface %{public}@", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = ICNOIKeysToObserve;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:*(*(&v10 + 1) + 8 * v9++) context:{ICEnvironmentMonitorNOIContext, v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 40) + 104) removeObject:*(a1 + 32)];
    return [*(a1 + 40) _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
  }

  return result;
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICEnvironmentMonitor_didStartTrackingNOI___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __44__ICEnvironmentMonitor_didStartTrackingNOI___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) interface];
  if ((result - 1) <= 1)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v16 = v4;
      v17 = 1024;
      v18 = [v4 linkQuality];
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Start tracking interface %{public}@. linkQuality=%d", buf, 0x12u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = ICNOIKeysToObserve;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:*(*(&v10 + 1) + 8 * i) options:1 context:{ICEnvironmentMonitorNOIContext, v10}];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 40) + 104) addObject:*(a1 + 32)];
    return [*(a1 + 40) _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
  }

  return result;
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_accessQueue);
  dataSubscriptionContext = self->_dataSubscriptionContext;
  self->_dataSubscriptionContext = changedCopy;

  [(ICEnvironmentMonitor *)self _onQueue_updateTelephonyStateAndNotifyObservers:1];
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  accessQueue = self->_accessQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(accessQueue);
  uuid = [(CTXPCServiceSubscriptionContext *)self->_dataSubscriptionContext uuid];
  uuid2 = [changedCopy uuid];

  LODWORD(changedCopy) = [uuid isEqual:uuid2];
  if (changedCopy)
  {

    [(ICEnvironmentMonitor *)self _onQueue_updateTelephonyStateAndNotifyObservers:1];
  }
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  v31 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_accessQueue);
  uuid = [(CTXPCServiceSubscriptionContext *)self->_dataSubscriptionContext uuid];
  uuid2 = [updateCopy uuid];
  v10 = [uuid isEqual:uuid2];

  if (v10)
  {
    v24 = infoCopy;
    v25 = updateCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    legacyInfo = [infoCopy legacyInfo];
    v12 = [legacyInfo countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v12;
    v14 = *v27;
    v15 = *MEMORY[0x1E69651C0];
    v16 = *MEMORY[0x1E69651C8];
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(legacyInfo);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:v15];
        v20 = v19;
        if (v19 == v16)
        {

LABEL_11:
          v22 = [v18 copy];
          cellSignalInfo = self->_cellSignalInfo;
          self->_cellSignalInfo = v22;

          continue;
        }

        v21 = [v19 isEqual:v16];

        if (v21)
        {
          goto LABEL_11;
        }
      }

      v13 = [legacyInfo countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v13)
      {
LABEL_14:

        infoCopy = v24;
        updateCopy = v25;
        break;
      }
    }
  }
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  accessQueue = self->_accessQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(accessQueue);
  uuid = [(CTXPCServiceSubscriptionContext *)self->_dataSubscriptionContext uuid];
  uuid2 = [changedCopy uuid];

  LODWORD(changedCopy) = [uuid isEqual:uuid2];
  if (changedCopy)
  {

    [(ICEnvironmentMonitor *)self _onQueue_updateTelephonyStateAndNotifyObservers:1];
  }
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  accessQueue = self->_accessQueue;
  changedCopy = changed;
  dispatch_assert_queue_V2(accessQueue);
  uuid = [(CTXPCServiceSubscriptionContext *)self->_dataSubscriptionContext uuid];
  uuid2 = [changedCopy uuid];

  LODWORD(changedCopy) = [uuid isEqual:uuid2];
  if (changedCopy)
  {

    [(ICEnvironmentMonitor *)self _onQueue_updateTelephonyStateAndNotifyObservers:1];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (ICEnvironmentMonitorNetworkPathEvaluatorContext == context)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ICEnvironmentMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }

  else if (ICEnvironmentMonitorNOIContext == context)
  {
    v14 = self->_accessQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__ICEnvironmentMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v16[3] = &unk_1E7BFA078;
    v17 = objectCopy;
    selfCopy = self;
    dispatch_async(v14, v16);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICEnvironmentMonitor;
    [(ICEnvironmentMonitor *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __71__ICEnvironmentMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_updateTelephonyStateAndNotifyObservers:1];
  v2 = *(a1 + 32);

  return [v2 _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
}

void __71__ICEnvironmentMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ([v2 interface] == 2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ([v2 interface] == 1)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v4 = 138543618;
      v5 = v2;
      v6 = 1024;
      v7 = [v2 linkQuality];
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Received link quality change on interface %{public}@. linkQuality=%d", &v4, 0x12u);
    }

LABEL_7:

    [*(a1 + 40) _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
  }
}

- (void)_handleApplicationDidEnterForegroundNotification:(id)notification
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ICEnvironmentMonitor__handleApplicationDidEnterForegroundNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __73__ICEnvironmentMonitor__handleApplicationDidEnterForegroundNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_updateTelephonyStateAndNotifyObservers:1];
  v2 = *(a1 + 32);

  return [v2 _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
}

- (void)_onQueue_updateTelephonyStateAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  dataSubscriptionContext = self->_dataSubscriptionContext;
  if (dataSubscriptionContext)
  {
    v6 = dataSubscriptionContext;
    v7 = self->_telephonyOperatorName;
    telephonyClient = self->_telephonyClient;
    v33 = 0;
    v9 = [(CoreTelephonyClient *)telephonyClient getOperatorName:v6 error:&v33];
    v10 = v33;
    telephonyOperatorName = self->_telephonyOperatorName;
    self->_telephonyOperatorName = v9;

    if (v10)
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v10;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "Error fetching operator name. error=%{public}@", buf, 0xCu);
      }
    }

    v13 = self->_telephonyOperatorName;
    if (v13 == v7)
    {
      v14 = 0;
    }

    else
    {
      v14 = ![(NSString *)v13 isEqualToString:v7];
    }

    v15 = self->_telephonyRegistrationStatus;
    v16 = self->_telephonyClient;
    v32 = 0;
    v17 = [(CoreTelephonyClient *)v16 copyRegistrationStatus:v6 error:&v32];
    v18 = v32;
    telephonyRegistrationStatus = self->_telephonyRegistrationStatus;
    self->_telephonyRegistrationStatus = v17;

    if (v18)
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v18;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "Error fetching registration status. error=%{public}@", buf, 0xCu);
      }
    }

    if (v14)
    {
      v21 = 1;
    }

    else
    {
      v22 = self->_telephonyRegistrationStatus;
      if (v22 == v15)
      {
        v21 = 0;
      }

      else
      {
        v21 = ![(NSString *)v22 isEqualToString:v15];
      }
    }

    telephonyStatusIndicator = self->_telephonyStatusIndicator;
    v24 = self->_telephonyClient;
    v31 = 0;
    v25 = [(CoreTelephonyClient *)v24 getDataStatus:v6 error:&v31];
    v26 = v31;
    if (v26)
    {
      v27 = v26;
      v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v27;
        _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "Error fetching data status. error=%{public}@", buf, 0xCu);
      }
    }

    if (v25)
    {
      indicator = [v25 indicator];
      self->_telephonyStatusIndicator = indicator;
      if (indicator == telephonyStatusIndicator)
      {
        v30 = v21;
      }

      else
      {
        v30 = 1;
      }

      if (!observersCopy)
      {
        goto LABEL_31;
      }

      if (indicator == telephonyStatusIndicator)
      {
        if (!v30)
        {
          goto LABEL_31;
        }
      }

      else
      {
        [(ICEnvironmentMonitor *)self _onQueue_updateNetworkReachabilityAndNotifyObservers:1];
      }
    }

    else if ((observersCopy & v21 & 1) == 0)
    {
LABEL_31:

      return;
    }

    [(ICEnvironmentMonitor *)self _notifyObserversEnvironmentMonitorDidChangeTelephonyStatus];
    goto LABEL_31;
  }
}

- (void)_onQueue_updatePowerStateNotifyingObservers:(BOOL)observers
{
  observersCopy = observers;
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  currentBatteryLevel = self->_currentBatteryLevel;
  charging = self->_charging;
  v33 = 0;
  v5 = IOPSDrawingUnlimitedPower();
  v6 = IOPSGetPercentRemaining();
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v37 = v7;
      *&v37[4] = 1024;
      *&v37[6] = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "Failed to get current batter state. err=%d (%x)", buf, 0xEu);
    }
  }

  charging |= v5;
  v9 = +[ICDefaults standardDefaults];
  chargingStateOverride = [v9 chargingStateOverride];

  if (chargingStateOverride)
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v37 = self;
      *&v37[8] = 2114;
      v38 = chargingStateOverride;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Found charging state override value %{public}@", buf, 0x16u);
    }

    bOOLValue = [chargingStateOverride BOOLValue];
    charging = bOOLValue;
  }

  else
  {
    bOOLValue = charging;
  }

  if (self->_charging != bOOLValue)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v37 = charging;
      *&v37[4] = 1024;
      *&v37[6] = v33;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = v5;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "Power state changed. isCharging=%d, isFullyCharged=%d, powerSourceIsUnlimited=%d", buf, 0x14u);
    }

    self->_charging = charging;
    if (observersCopy)
    {
      os_unfair_recursive_lock_lock_with_options();
      v14 = [(NSHashTable *)self->_observers copy];
      os_unfair_recursive_lock_unlock();
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__ICEnvironmentMonitor__onQueue_updatePowerStateNotifyingObservers___block_invoke;
      block[3] = &unk_1E7BFA078;
      v31 = v14;
      selfCopy = self;
      v16 = v14;
      dispatch_async(calloutQueue, block);
    }
  }

  v17 = currentBatteryLevel;
  v18 = +[ICDefaults standardDefaults];
  batteryLevelOverride = [v18 batteryLevelOverride];

  if (batteryLevelOverride)
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v37 = self;
      *&v37[8] = 2114;
      v38 = batteryLevelOverride;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Found battery level override value %{public}@", buf, 0x16u);
    }

    [batteryLevelOverride doubleValue];
    v22 = v21;
  }

  else
  {
    v22 = v17 / 100.0;
  }

  if (v22 != self->_currentBatteryLevel)
  {
    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v37 = v22;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "Battery level changed. batteryLevel=%.2f", buf, 0xCu);
    }

    self->_currentBatteryLevel = v22;
    if (observersCopy)
    {
      os_unfair_recursive_lock_lock_with_options();
      v24 = [(NSHashTable *)self->_observers copy];
      os_unfair_recursive_lock_unlock();
      v25 = self->_calloutQueue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__ICEnvironmentMonitor__onQueue_updatePowerStateNotifyingObservers___block_invoke_114;
      v27[3] = &unk_1E7BFA078;
      v28 = v24;
      selfCopy2 = self;
      v26 = v24;
      dispatch_async(v25, v27);
    }
  }
}

void __68__ICEnvironmentMonitor__onQueue_updatePowerStateNotifyingObservers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangePower:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __68__ICEnvironmentMonitor__onQueue_updatePowerStateNotifyingObservers___block_invoke_114(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangeBatteryLevel:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversEnvironmentMonitorDidChangeTelephonyStatus
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_recursive_lock_unlock();
  calloutQueue = self->_calloutQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__ICEnvironmentMonitor__notifyObserversEnvironmentMonitorDidChangeTelephonyStatus__block_invoke;
  v6[3] = &unk_1E7BFA078;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(calloutQueue, v6);
}

void __82__ICEnvironmentMonitor__notifyObserversEnvironmentMonitorDidChangeTelephonyStatus__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangeTelephonyStatus:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_onQueue_updateThermalLevelWithToken:(int)token
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v6 = state;
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      currentThermalLevel = self->_currentThermalLevel;
      *buf = 67109376;
      *v18 = v6;
      *&v18[4] = 2048;
      *&v18[6] = currentThermalLevel;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Failed to get current thermal level. status=%u, using %llu for now", buf, 0x12u);
    }
  }

  else
  {
    if (state64 == self->_currentThermalLevel)
    {
      return;
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_currentThermalLevel;
      *buf = 134218240;
      *v18 = v10;
      *&v18[8] = 2048;
      *&v18[10] = state64;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "thermal levels changed - oldValue=%llu, newValue=%llu", buf, 0x16u);
    }

    self->_currentThermalLevel = state64;
    os_unfair_recursive_lock_lock_with_options();
    v11 = [(NSHashTable *)self->_observers copy];
    os_unfair_recursive_lock_unlock();
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICEnvironmentMonitor__onQueue_updateThermalLevelWithToken___block_invoke;
    block[3] = &unk_1E7BFA078;
    v14 = v11;
    selfCopy = self;
    v7 = v11;
    dispatch_async(calloutQueue, block);
  }
}

void __61__ICEnvironmentMonitor__onQueue_updateThermalLevelWithToken___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangeThermalLevel:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_onQueue_updateNetworkReachabilityAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v64 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  _onQueue_currentNetworkType = [(ICEnvironmentMonitor *)self _onQueue_currentNetworkType];
  wifiAssociated = self->_wifiAssociated;
  ethernetWired = self->_ethernetWired;
  networkConstrained = self->_networkConstrained;
  _onQueue_currentCellularLinkQuality = [(ICEnvironmentMonitor *)self _onQueue_currentCellularLinkQuality];
  self->_wifiAssociated = [(ICEnvironmentMonitor *)self _onQueue_isWiFiAssociated];
  self->_ethernetWired = _onQueue_currentNetworkType == 2000;
  self->_networkConstrained = [(ICEnvironmentMonitor *)self _onQueue_networkConstrained];
  path = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  status = [path status];

  v10 = status == 1;
  if (status == 1)
  {
    v12 = 1;
  }

  else
  {
    path2 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
    v12 = [path2 status] == 3;
  }

  v13 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v13 isWatch];

  if (isWatch && _onQueue_currentNetworkType)
  {
    v12 = 1;
  }

  v15 = status == 1;
  path3 = [(NWPathEvaluator *)self->_networkPathEvaluator path];
  self->_currentNetworkLinkExpensive = [path3 isExpensive];

  v39 = v12;
  if (self->_remoteServerReachable == v10 && self->_remoteServerLikelyReachable == v12 && self->_currentNetworkLinkQuality == _onQueue_currentCellularLinkQuality && self->_wifiAssociated == wifiAssociated && self->_networkConstrained == networkConstrained)
  {
    v17 = self->_ethernetWired;
    networkType = self->_networkType;
    v19 = networkType == _onQueue_currentNetworkType;
    v20 = v17 != ethernetWired;
    if (v17 == ethernetWired && networkType == _onQueue_currentNetworkType)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v19 = self->_networkType == _onQueue_currentNetworkType;
    v20 = 1;
  }

  v21 = v15;
  v22 = @"fair";
  if (_onQueue_currentCellularLinkQuality < 0x14)
  {
    v22 = @"low";
  }

  if (_onQueue_currentCellularLinkQuality > 0x31)
  {
    v22 = @"high";
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d (%@)", _onQueue_currentCellularLinkQuality, v22];
  v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_telephonyStatusIndicator];
    v25 = v38 = v19;
    currentNetworkLinkExpensive = self->_currentNetworkLinkExpensive;
    v27 = self->_wifiAssociated;
    v28 = self->_ethernetWired;
    v29 = self->_networkConstrained;
    *buf = 67242242;
    v47 = _onQueue_currentNetworkType;
    v48 = 2114;
    v49 = v25;
    v50 = 1024;
    v51 = v21;
    v52 = 1024;
    v53 = v39;
    v54 = 2114;
    v55 = v23;
    v56 = 1024;
    v57 = currentNetworkLinkExpensive;
    v58 = 1024;
    v59 = v27;
    v60 = 1024;
    v61 = v28;
    v62 = 1024;
    v63 = v29;
    _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "Network reachability values changed. networkType=%{public}d, telephonyDataIndicator=%{public}@, isRemoteServerReachable=%{BOOL}u, isRemoteServerLikelyReachable=%{BOOL}u, currentNetworkLinkQuality=%{public}@, _currentNetworkLinkExpensive=%{BOOL}u, _wifiAssociated=%{BOOL}u, _ethernetWired=%{BOOL}u, _networkConstrained=%{BOOL}u", buf, 0x40u);

    v19 = v38;
  }

  if (v20)
  {
    self->_remoteServerReachable = v10;
    self->_remoteServerLikelyReachable = v39;
    self->_currentNetworkLinkQuality = _onQueue_currentCellularLinkQuality;
    if (observersCopy)
    {
      os_unfair_recursive_lock_lock_with_options();
      v30 = [(NSHashTable *)self->_observers copy];
      os_unfair_recursive_lock_unlock();
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__ICEnvironmentMonitor__onQueue_updateNetworkReachabilityAndNotifyObservers___block_invoke;
      block[3] = &unk_1E7BFA078;
      v44 = v30;
      selfCopy = self;
      v32 = v30;
      dispatch_async(calloutQueue, block);
    }
  }

LABEL_25:
  if (!v19)
  {
    self->_networkType = _onQueue_currentNetworkType;
    self->_wiFiActive = (_onQueue_currentNetworkType - 1000) < 0x3E8;
    if (_onQueue_currentNetworkType)
    {
      self->_lastKnownNetworkType = _onQueue_currentNetworkType;
    }

    if (observersCopy)
    {
      os_unfair_recursive_lock_lock_with_options();
      v33 = [(NSHashTable *)self->_observers copy];
      os_unfair_recursive_lock_unlock();
      v34 = self->_calloutQueue;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __77__ICEnvironmentMonitor__onQueue_updateNetworkReachabilityAndNotifyObservers___block_invoke_2;
      v40[3] = &unk_1E7BFA078;
      v41 = v33;
      selfCopy2 = self;
      v35 = v33;
      dispatch_async(v34, v40);
    }
  }
}

void __77__ICEnvironmentMonitor__onQueue_updateNetworkReachabilityAndNotifyObservers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangeNetworkReachability:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __77__ICEnvironmentMonitor__onQueue_updateNetworkReachabilityAndNotifyObservers___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 environmentMonitorDidChangeNetworkType:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (int64_t)currentThermalState
{
  currentThermalLevel = [(ICEnvironmentMonitor *)self currentThermalLevel];
  if (currentThermalLevel <= 29)
  {
    v4 = 2;
    if (currentThermalLevel != 20)
    {
      v4 = 0;
    }

    if (currentThermalLevel == 10)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else if (currentThermalLevel == 30 || currentThermalLevel == 40 || currentThermalLevel == 50)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (NSString)telephonyRegistrationStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40061;
  v10 = __Block_byref_object_dispose__40062;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ICEnvironmentMonitor_telephonyRegistrationStatus__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)telephonyOperatorName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40061;
  v10 = __Block_byref_object_dispose__40062;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ICEnvironmentMonitor_telephonyOperatorName__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)currentBatteryLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ICEnvironmentMonitor_currentBatteryLevel__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __43__ICEnvironmentMonitor_currentBatteryLevel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 160);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isWifiActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ICEnvironmentMonitor_isWifiActive__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)currentNetworkLinkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ICEnvironmentMonitor_currentNetworkLinkQuality__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRemoteServerReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ICEnvironmentMonitor_isRemoteServerReachable__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)lastKnownNetworkType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ICEnvironmentMonitor_lastKnownNetworkType__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCharging
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__ICEnvironmentMonitor_isCharging__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_recursive_lock_lock_with_options();
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)registerObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_recursive_lock_lock_with_options();
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_recursive_lock_unlock();
  }
}

- (void)dealloc
{
  v31 = *MEMORY[0x1E69E9840];
  networkPathEvaluator = self->_networkPathEvaluator;
  if (networkPathEvaluator)
  {
    [(NWPathEvaluator *)networkPathEvaluator removeObserver:self forKeyPath:@"path" context:ICEnvironmentMonitorNetworkPathEvaluatorContext];
    v4 = self->_networkPathEvaluator;
    self->_networkPathEvaluator = 0;
  }

  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  [(CWFInterface *)self->_wifiInterface invalidate];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_networksOfInterest;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = ICNOIKeysToObserve;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            v14 = 0;
            do
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v9 removeObserver:self forKeyPath:*(*(&v21 + 1) + 8 * v14++)];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_networksOfInterest removeAllObjects];
  [(NWNetworkOfInterestManager *)self->_noiManager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_noiManager destroy];
  batteryNotificationToken = self->_batteryNotificationToken;
  if (batteryNotificationToken != -1)
  {
    notify_cancel(batteryNotificationToken);
  }

  powerSourceNotificationToken = self->_powerSourceNotificationToken;
  if (powerSourceNotificationToken != -1)
  {
    notify_cancel(powerSourceNotificationToken);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  thermalNotificationToken = self->_thermalNotificationToken;
  if (thermalNotificationToken != -1)
  {
    notify_cancel(thermalNotificationToken);
  }

  v20.receiver = self;
  v20.super_class = ICEnvironmentMonitor;
  [(ICEnvironmentMonitor *)&v20 dealloc];
}

@end