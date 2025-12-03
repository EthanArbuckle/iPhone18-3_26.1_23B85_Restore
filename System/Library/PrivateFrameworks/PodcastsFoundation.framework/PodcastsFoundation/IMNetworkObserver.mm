@interface IMNetworkObserver
+ (BOOL)isLikelyToReachRemoteServerWithReachabilityFlags:(unsigned int)flags;
+ (id)_networkObserverLogConfig;
+ (id)sharedInstance;
- (BOOL)isObserving;
- (BOOL)networkTypeIsCellularType:(int64_t)type;
- (IMNetworkObserver)init;
- (NSString)connectionTypeHeader;
- (id)_dataStatusIndicator;
- (id)dataStatusIndicator;
- (id)operatorName;
- (id)stringForNetworkType:(int64_t)type;
- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)flags;
- (int64_t)_networkTypeFromCTDataIndicator:(int)indicator;
- (int64_t)_networkTypeFromDataIndicator:(id)indicator;
- (int64_t)_setNetworkType:(int64_t)type;
- (int64_t)networkType;
- (unsigned)_currentNetworkReachabilityFlags;
- (unsigned)networkReachabilityFlags;
- (void)_applicationForegroundNotification:(id)notification;
- (void)_copyConnectionDataStatus:(id)status;
- (void)_handleTelephonyNotificationWithName:(__CFString *)name userInfo:(__CFDictionary *)info;
- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)value toValue:(unsigned int)toValue;
- (void)_postTypeChangedNotificationFromValue:(int64_t)value toValue:(int64_t)toValue;
- (void)_reloadDataStatusIndicator;
- (void)_reloadNetworkType;
- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)flags;
- (void)_telephonyClient_withLockUpdateOperatorNameWithContext:(id)context;
- (void)_telephonyServer_withLockUpdateOperatorName;
- (void)_withLockBeginObserving;
- (void)_withLockDisconnectFromReachabilityService;
- (void)_withLockDisconnectFromTelephonyServer;
- (void)_withLockEndObserving;
- (void)_withLockInitializeTelephonyServer;
- (void)_withLockInitializeWiFiNetworkReachability;
- (void)_withLockReloadOperatorName;
- (void)_withLockUpdateObservingStatus;
- (void)beginObserving;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)endObserving;
- (void)internetDataStatus:(id)status;
- (void)reloadNetworkType;
- (void)setNetworkType:(int64_t)type;
@end

@implementation IMNetworkObserver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__IMNetworkObserver_sharedInstance__block_invoke;
  block[3] = &unk_1E856B200;
  block[4] = self;
  if (sharedInstance_sOnce != -1)
  {
    dispatch_once(&sharedInstance_sOnce, block);
  }

  return sharedInstance_sObserver;
}

id __35__IMNetworkObserver_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_alloc_init(objc_opt_class());
  sharedInstance_sObserver = result;
  return result;
}

- (IMNetworkObserver)init
{
  v4.receiver = self;
  v4.super_class = IMNetworkObserver;
  v2 = [(IMNetworkObserver *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstore.IMNetworkObserver", 0);
    v2->_notificationQueue = dispatch_queue_create("com.apple.itunesstore.IMNetworkObserver.notifications", 0);
    v2->_observing = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_telephonyClient = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v2->_dispatchQueue];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v2;
}

- (void)beginObserving
{
  os_unfair_lock_lock(&self->_lock);
  [(IMNetworkObserver *)self _withLockBeginObserving];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLockBeginObserving
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Starting IMNetworkObserver...", buf, 2u);
  }

  if (self->_observing)
  {
    v4 = _MTLogCategoryNetwork();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 0;
    v5 = "Already observing, nothing to do.";
    v6 = &v17;
    goto LABEL_19;
  }

  v7 = os_feature_enabled_core_telephony_reachability();
  v8 = _MTLogCategoryNetwork();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_INFO, "Configuring CoreTelephony...", v16, 2u);
    }

    [(CoreTelephonyClient *)self->_telephonyClient setDelegate:self];
  }

  else
  {
    if (v9)
    {
      *v15 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_INFO, "Configuring TelephonyServer...", v15, 2u);
    }

    [(IMNetworkObserver *)self _withLockInitializeTelephonyServer];
  }

  v10 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_INFO, "Configuring SCReachability...", v14, 2u);
  }

  [(IMNetworkObserver *)self _withLockInitializeWiFiNetworkReachability];
  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_INFO, "Updating Observation Status...", v13, 2u);
  }

  [(IMNetworkObserver *)self _withLockUpdateObservingStatus];
  v4 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v5 = "Started IMNetworkObserver.";
    v6 = &v12;
LABEL_19:
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }
}

- (void)_withLockInitializeTelephonyServer
{
  v3 = _CTServerConnectionCreate();
  self->_telephonyServer = v3;
  if (v3)
  {
    dispatchQueue = self->_dispatchQueue;
    _CTServerConnectionSetTargetQueue();
    telephonyServer = self->_telephonyServer;
    v6 = *MEMORY[0x1E69653E8];
    _CTServerConnectionRegisterForNotification();
    v7 = self->_telephonyServer;
    v8 = *MEMORY[0x1E69653F8];
    _CTServerConnectionRegisterForNotification();
  }
}

- (void)_withLockInitializeWiFiNetworkReachability
{
  v9 = *MEMORY[0x1E69E9840];
  address = xmmword_1D9187400;
  v3 = SCNetworkReachabilityCreateWithAddress(0, &address);
  self->_reachability = v3;
  if (v3)
  {
    v7.version = 0;
    v7.info = self;
    v7.retain = 0;
    v7.release = 0;
    v7.copyDescription = MEMORY[0x1E695D768];
    SCNetworkReachabilitySetCallback(v3, __ReachabilityCallback, &v7);
    SCNetworkReachabilitySetDispatchQueue(self->_reachability, self->_dispatchQueue);
  }

  else
  {
    v4 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7.version) = 0;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Unable to start SCNetworkReachability.", &v7, 2u);
    }
  }

  _currentNetworkReachabilityFlags = [(IMNetworkObserver *)self _currentNetworkReachabilityFlags];
  self->_networkReachabilityFlags = _currentNetworkReachabilityFlags;
  self->_networkType = [(IMNetworkObserver *)self _networkTypeForReachabilityFlags:_currentNetworkReachabilityFlags];
  v6 = *MEMORY[0x1E69E9840];
}

- (unsigned)_currentNetworkReachabilityFlags
{
  flags = 0;
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilityGetFlags(reachability, &flags);
    LODWORD(reachability) = flags;
  }

  return reachability;
}

- (void)_withLockUpdateObservingStatus
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_telephonyServer || (os_feature_enabled_core_telephony_reachability() & 1) != 0 || self->_reachability != 0;
  self->_observing = v3;
  v4 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    observing = self->_observing;
    v6 = os_feature_enabled_core_telephony_reachability();
    v7 = self->_telephonyServer != 0;
    reachability = self->_reachability;
    v10[0] = 67109888;
    v10[1] = observing;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = reachability != 0;
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_INFO, "IMNetworkObserver observation status changed: %{BOOL}d (use core telephony: %{BOOL}d, has server: %{BOOL}d, has reachability: %{BOOL}d)", v10, 0x1Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSString)connectionTypeHeader
{
  v12 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  networkType = [(IMNetworkObserver *)self networkType];
  v5 = [(IMNetworkObserver *)self stringForNetworkType:networkType];
  if (v5)
  {
    [string appendString:v5];
    if ([(IMNetworkObserver *)self networkTypeIsCellularType:networkType])
    {
      operatorName = [(IMNetworkObserver *)self operatorName];
      if ([operatorName length])
      {
        [string appendFormat:@"/%@", operatorName];
      }
    }
  }

  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = string;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEBUG, "Observer indicating connection header: %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return string;
}

- (int64_t)networkType
{
  os_unfair_lock_lock(&self->_lock);
  networkType = self->_networkType;
  os_unfair_lock_unlock(&self->_lock);
  return networkType;
}

- (unsigned)networkReachabilityFlags
{
  os_unfair_lock_lock(&self->_lock);
  networkReachabilityFlags = self->_networkReachabilityFlags;
  os_unfair_lock_unlock(&self->_lock);
  return networkReachabilityFlags;
}

- (void)_reloadDataStatusIndicator
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Reloading data status indicator", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__IMNetworkObserver__reloadDataStatusIndicator__block_invoke;
  v4[3] = &unk_1E856B228;
  v4[4] = self;
  [(IMNetworkObserver *)self _copyConnectionDataStatus:v4];
}

void __47__IMNetworkObserver__reloadDataStatusIndicator__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {

    *(*(a1 + 32) + 80) = a2;
  }
}

- (void)_reloadNetworkType
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Reloading network type", v4, 2u);
  }

  [(IMNetworkObserver *)self _reloadNetworkTypeWithReachabilityFlags:[(IMNetworkObserver *)self _currentNetworkReachabilityFlags]];
}

- (BOOL)isObserving
{
  os_unfair_lock_lock(&self->_lock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_lock);
  return observing;
}

- (void)endObserving
{
  os_unfair_lock_lock(&self->_lock);
  [(IMNetworkObserver *)self _withLockEndObserving];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLockEndObserving
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Stopping IMNetworkObserver...", buf, 2u);
  }

  if (!self->_observing)
  {
    v7 = _MTLogCategoryNetwork();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = 0;
    v8 = "IMNetworkObserver already stopped";
    v9 = &v15;
    goto LABEL_17;
  }

  v4 = os_feature_enabled_core_telephony_reachability();
  v5 = _MTLogCategoryNetwork();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *v14 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_INFO, "Disconnecting from CoreTelephonyClient", v14, 2u);
    }

    [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  }

  else
  {
    if (v6)
    {
      *v13 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_INFO, "Deallocating telephony server", v13, 2u);
    }

    [(IMNetworkObserver *)self _withLockDisconnectFromTelephonyServer];
  }

  v10 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_INFO, "Deallocating reachability service", v12, 2u);
  }

  [(IMNetworkObserver *)self _withLockDisconnectFromReachabilityService];
  [(IMNetworkObserver *)self _withLockUpdateObservingStatus];
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v8 = "IMNetworkObserver stopped.";
    v9 = &v11;
LABEL_17:
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }
}

- (void)_withLockDisconnectFromTelephonyServer
{
  if (self->_telephonyServer)
  {
    v3 = *MEMORY[0x1E69653E8];
    _CTServerConnectionUnregisterForNotification();
    telephonyServer = self->_telephonyServer;
    v5 = *MEMORY[0x1E69653F8];
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_telephonyServer);
    self->_telephonyServer = 0;
  }
}

- (void)_withLockDisconnectFromReachabilityService
{
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetDispatchQueue(reachability, 0);
    CFRelease(self->_reachability);
    self->_reachability = 0;
  }
}

- (void)dealloc
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating IMNetworkObserver", buf, 2u);
  }

  [(IMNetworkObserver *)self endObserving];
  os_unfair_lock_lock(&self->_lock);
  v4 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "Removing notification registrations", buf, 2u);
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if ((os_feature_enabled_core_telephony_reachability() & 1) == 0)
  {
    v5 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Removing CoreDarwin registrations", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E6965190], 0);
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E6965198], 0);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
  }

  dataStatusIndicator = self->_dataStatusIndicator;
  if (dataStatusIndicator)
  {
  }

  operatorName = self->_operatorName;
  if (operatorName)
  {
  }

  os_unfair_lock_unlock(&self->_lock);
  v11.receiver = self;
  v11.super_class = IMNetworkObserver;
  [(IMNetworkObserver *)&v11 dealloc];
}

- (BOOL)networkTypeIsCellularType:(int64_t)type
{
  result = 0;
  if (type <= 1999)
  {
    if (!type || type == 1000)
    {
      return result;
    }

    return 1;
  }

  if (type != 2000 && type != 3000)
  {
    return 1;
  }

  return result;
}

- (id)stringForNetworkType:(int64_t)type
{
  v3 = @"8G";
  v4 = @"9G";
  v5 = @"WiFi";
  if (type != 1000)
  {
    v5 = 0;
  }

  if (type != 8)
  {
    v4 = v5;
  }

  if (type != 7)
  {
    v3 = v4;
  }

  v6 = @"7G";
  if (type != 6)
  {
    v6 = 0;
  }

  if (type == 5)
  {
    v6 = @"6G";
  }

  if (type <= 6)
  {
    v3 = v6;
  }

  v7 = @"4G";
  v8 = @"5G";
  if (type != 4)
  {
    v8 = 0;
  }

  if (type != 3)
  {
    v7 = v8;
  }

  v9 = @"3G";
  if (type != 2)
  {
    v9 = 0;
  }

  if (type == 1)
  {
    v9 = @"2G";
  }

  if (type <= 2)
  {
    v7 = v9;
  }

  if (type <= 4)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

+ (BOOL)isLikelyToReachRemoteServerWithReachabilityFlags:(unsigned int)flags
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = flags & 6;
  v5 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109376;
    v8[1] = v4 == 2;
    v9 = 1024;
    flagsCopy = flags;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEBUG, "Determined is likely to reach network: %{BOOL}d (networkReachabilityFlags: %d", v8, 0xEu);
  }

  result = v4 == 2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)dataStatusIndicator
{
  os_unfair_lock_lock(&self->_lock);
  _dataStatusIndicator = [(IMNetworkObserver *)self _dataStatusIndicator];
  os_unfair_lock_unlock(&self->_lock);

  return _dataStatusIndicator;
}

- (id)operatorName
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  operatorName = self->_operatorName;
  if (!operatorName)
  {
    [(IMNetworkObserver *)self _withLockReloadOperatorName];
    operatorName = self->_operatorName;
  }

  v4 = operatorName;
  os_unfair_lock_unlock(&self->_lock);
  v5 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEBUG, "Observer indicating operator name: %@", &v8, 0xCu);
  }

  result = v4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_withLockReloadOperatorName
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Reloading operator name.", buf, 2u);
  }

  v4 = os_feature_enabled_core_telephony_reachability();
  v5 = _MTLogCategoryNetwork();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Using CoreTelephonyClient", v10, 2u);
    }

    v9 = 0;
    v7 = [(CoreTelephonyClient *)self->_telephonyClient getCurrentDataSubscriptionContextSync:&v9];
    if (!v9)
    {
      [(IMNetworkObserver *)self _telephonyClient_withLockUpdateOperatorNameWithContext:v7];
    }
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Using telephony server ", v8, 2u);
    }

    [(IMNetworkObserver *)self _telephonyServer_withLockUpdateOperatorName];
  }
}

- (void)_telephonyServer_withLockUpdateOperatorName
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_telephonyServer)
  {
    v3 = _CTServerConnectionCopyOperatorName();
    v4 = v3;
    v5 = HIDWORD(v3);
    if (HIDWORD(v3) && (operatorName = self->_operatorName) != 0)
    {

      self->_operatorName = 0;
    }

    else
    {
      v7 = _MTLogCategoryNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109376;
        v9[1] = v4;
        v10 = 1024;
        v11 = v5;
        _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Unable to determine operator name: { domain: %d, error code: %d", v9, 0xEu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_telephonyClient_withLockUpdateOperatorNameWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  operatorName = self->_operatorName;
  v5 = [(CoreTelephonyClient *)self->_telephonyClient getOperatorName:context error:&v17];
  if (v17)
  {
    v6 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v17;
      v7 = "Unable to determine operator name: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_1D8CEC000, v8, v9, v7, buf, 0xCu);
    }
  }

  else
  {
    v10 = v5;
    v11 = [(NSString *)v5 isEqualToString:operatorName];
    v12 = _MTLogCategoryNetwork();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = self->_operatorName;
        *buf = 138412290;
        v19 = v14;
        v7 = "Operator name has not changed: %@";
        v8 = v13;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_7;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_operatorName;
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "Identified new operator name: %@", buf, 0xCu);
      }

      self->_operatorName = v10;
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)reloadNetworkType
{
  os_unfair_lock_lock(&self->_lock);
  [(IMNetworkObserver *)self _reloadNetworkType];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setNetworkType:(int64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IMNetworkObserver *)self _setNetworkType:type];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 != type)
  {

    [(IMNetworkObserver *)self _postTypeChangedNotificationFromValue:v5 toValue:type];
  }
}

- (void)_applicationForegroundNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__IMNetworkObserver__applicationForegroundNotification___block_invoke;
  block[3] = &unk_1E856B200;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __56__IMNetworkObserver__applicationForegroundNotification___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if ((os_feature_enabled_core_telephony_reachability() & 1) == 0)
  {
    [*(a1 + 32) _reloadDataStatusIndicator];
  }

  [*(a1 + 32) _reloadNetworkType];
  v2 = (*(a1 + 32) + 56);

  os_unfair_lock_unlock(v2);
}

- (void)_handleTelephonyNotificationWithName:(__CFString *)name userInfo:(__CFDictionary *)info
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (CFStringCompare(name, *MEMORY[0x1E69653E8], 0))
  {
    if (CFStringCompare(name, *MEMORY[0x1E69653F8], 0))
    {
      v7 = _MTLogCategoryNetwork();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        nameCopy = name;
        _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_INFO, "Skipping unhandled telephony server notification: %@", buf, 0xCu);
      }
    }

    else
    {

      self->_operatorName = CFDictionaryGetValue(info, *MEMORY[0x1E69653F0]);
      v10 = _MTLogCategoryNetwork();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        operatorName = self->_operatorName;
        *buf = 138412290;
        nameCopy = operatorName;
        _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "Handling telephony server operator name changed notification (%@)", buf, 0xCu);
      }

      notificationQueue = self->_notificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__IMNetworkObserver__handleTelephonyNotificationWithName_userInfo___block_invoke;
      block[3] = &unk_1E856B200;
      block[4] = self;
      dispatch_async(notificationQueue, block);
    }
  }

  else
  {

    self->_dataStatusIndicator = CFDictionaryGetValue(info, *MEMORY[0x1E6965380]);
    v8 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      dataStatusIndicator = self->_dataStatusIndicator;
      *buf = 138412290;
      nameCopy = dataStatusIndicator;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "Handling telephony server data status changed notification (%@)", buf, 0xCu);
    }

    [(IMNetworkObserver *)self _reloadNetworkType];
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __67__IMNetworkObserver__handleTelephonyNotificationWithName_userInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IMNetworkObserverOperatorNameChangedNotification" object:v3];
}

- (void)currentDataSimChanged:(id)changed
{
  v5 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Handling current sim card change notification.", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(IMNetworkObserver *)self _reloadNetworkType];
  [(IMNetworkObserver *)self _telephonyClient_withLockUpdateOperatorNameWithContext:changed];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)internetDataStatus:(id)status
{
  v4 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "Handling internet data status notification.", v5, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(IMNetworkObserver *)self _reloadNetworkType];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_copyConnectionDataStatus:(id)status
{
  if (self->_telephonyServer)
  {
    _CTServerConnectionCopyDataStatus();
  }

  else
  {
    v4 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Unable to determine data indicator, telephony server is nil.", buf, 2u);
    }
  }

  (*(status + 2))(status, 0, 0);
}

- (id)_dataStatusIndicator
{
  result = self->_dataStatusIndicator;
  if (!result)
  {
    if (self->_telephonyServer)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __41__IMNetworkObserver__dataStatusIndicator__block_invoke;
      v4[3] = &unk_1E856B228;
      v4[4] = self;
      [(IMNetworkObserver *)self _copyConnectionDataStatus:v4];
      return self->_dataStatusIndicator;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_networkTypeFromDataIndicator:(id)indicator
{
  v4 = 0;
  v7[24] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E6965388];
  v7[1] = 1;
  v7[2] = *MEMORY[0x1E6965390];
  v7[3] = 1;
  v7[4] = *MEMORY[0x1E6965398];
  v7[5] = 2;
  v7[6] = *MEMORY[0x1E69653A0];
  v7[7] = 2;
  v7[8] = *MEMORY[0x1E69653A8];
  v7[9] = 2;
  v7[10] = *MEMORY[0x1E69653E0];
  v7[11] = 3;
  v7[12] = *MEMORY[0x1E69653B0];
  v7[13] = 3;
  v7[14] = *MEMORY[0x1E69653B8];
  v7[15] = 4;
  v7[16] = *MEMORY[0x1E69653C0];
  v7[17] = 5;
  v7[18] = *MEMORY[0x1E69653C8];
  v7[19] = 6;
  v7[20] = *MEMORY[0x1E69653D0];
  v7[21] = 7;
  v7[22] = *MEMORY[0x1E69653D8];
  v7[23] = 8;
  while (![indicator isEqualToString:v7[v4]])
  {
    v4 += 2;
    if (v4 == 24)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = v7[v4 + 1];
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)_networkTypeFromCTDataIndicator:(int)indicator
{
  if ((indicator - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return qword_1D9187410[indicator - 1];
  }
}

- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)flags
{
  v11 = *MEMORY[0x1E69E9840];
  if ((flags & 2) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((flags & 0x40000) == 0)
  {
    v3 = 1000;
    goto LABEL_10;
  }

  if (os_feature_enabled_core_telephony_reachability())
  {
    *v10 = 0;
    v5 = [(CoreTelephonyClient *)self->_telephonyClient getInternetDataStatusSync:v10];
    v3 = 0;
    if (*v10)
    {
      goto LABEL_10;
    }

    v6 = -[IMNetworkObserver _networkTypeFromCTDataIndicator:](self, "_networkTypeFromCTDataIndicator:", [v5 indicator]);
  }

  else
  {
    v6 = [(IMNetworkObserver *)self _networkTypeFromDataIndicator:[(IMNetworkObserver *)self _dataStatusIndicator]];
  }

  v3 = v6;
LABEL_10:
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 134217984;
    *&v10[4] = v3;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Determined network type: %ld", v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)value toValue:(unsigned int)toValue
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    valueCopy = value;
    v16 = 1024;
    toValueCopy = toValue;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Notifying of new reachability flags (%d -> %d)", buf, 0xEu);
  }

  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v10 = *MEMORY[0x1E696A500];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:toValue];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x1E696A4F0], 0}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_postTypeChangedNotificationFromValue:(int64_t)value toValue:(int64_t)toValue
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    valueCopy = value;
    v16 = 2048;
    toValueCopy = toValue;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Notifying of new network type (%ld -> %ld)", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v10 = *MEMORY[0x1E696A500];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:toValue];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x1E696A4F0], 0}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)flags
{
  v5 = [(IMNetworkObserver *)self _networkTypeForReachabilityFlags:?];
  v6 = [(IMNetworkObserver *)self _setNetworkType:v5];
  networkReachabilityFlags = self->_networkReachabilityFlags;
  self->_networkReachabilityFlags = flags;
  if (v6 != v5 || networkReachabilityFlags != flags)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__IMNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke;
    block[3] = &unk_1E856B250;
    v13 = v6 != v5;
    block[4] = self;
    block[5] = v6;
    block[6] = v5;
    v14 = networkReachabilityFlags != flags;
    v11 = networkReachabilityFlags;
    flagsCopy = flags;
    dispatch_async(notificationQueue, block);
  }
}

uint64_t __61__IMNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    result = [*(result + 32) _postTypeChangedNotificationFromValue:*(result + 40) toValue:*(result + 48)];
  }

  if (*(v1 + 65) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 56);
    v4 = *(v1 + 60);

    return [v2 _postReachabilityFlagsChangedNotificationFromValue:v3 toValue:v4];
  }

  return result;
}

- (int64_t)_setNetworkType:(int64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  networkType = self->_networkType;
  if (networkType != type)
  {
    self->_networkType = type;
    v5 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = [(IMNetworkObserver *)self stringForNetworkType:self->_networkType];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "%@: Set network type %@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return networkType;
}

+ (id)_networkObserverLogConfig
{
  if (_networkObserverLogConfig_onceToken != -1)
  {
    +[IMNetworkObserver _networkObserverLogConfig];
  }

  return _networkObserverLogConfig_logConfig;
}

void __46__IMNetworkObserver__networkObserverLogConfig__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698CA50]);
  [v0 setSubsystem:@"com.apple.Podcasts"];
  [v0 setCategory:@"Network Observer"];
  _networkObserverLogConfig_logConfig = [v0 copy];
}

@end