@interface ISNetworkObserver
+ (id)sharedInstance;
- (BOOL)_ntsIsUsingNetwork;
- (BOOL)isUsingNetwork;
- (BOOL)isWiFiEnabled;
- (BOOL)shouldShowCellularAutomaticDownloadsSwitch;
- (ISNetworkObserver)init;
- (NSString)connectionTypeHeader;
- (NSString)dataStatusIndicator;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)modemRegistrationStatus;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (double)lastNetworkTypeChangeTime;
- (id)_dataStatusIndicator;
- (id)copyValueForCarrierBundleKey:(id)a3;
- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)a3;
- (int64_t)_networkTypeFromDataIndicator:(id)a3;
- (int64_t)_setNetworkType:(int64_t)a3;
- (int64_t)networkType;
- (unsigned)_currentNetworkReachabilityFlags;
- (unsigned)networkReachabilityFlags;
- (void)_applicationForegroundNotification:(id)a3;
- (void)_copyConnectionDataStatus:(id)a3;
- (void)_handleTelephonyNotificationWithName:(__CFString *)a3 userInfo:(__CFDictionary *)a4;
- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)a3 toValue:(unsigned int)a4;
- (void)_postTypeChangedNotificationFromValue:(int64_t)a3 toValue:(int64_t)a4;
- (void)_reloadCellularRestriction;
- (void)_reloadDataStatusIndicator;
- (void)_reloadNetworkType;
- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)a3;
- (void)_telephonyOperatorNameDidChangeNotification:(id)a3;
- (void)_telephonyRegistrationDidChangeNotification:(id)a3;
- (void)beginObservingDownloadQueue:(id)a3;
- (void)beginUsingNetwork;
- (void)dealloc;
- (void)downloadQueueNetworkUsageChanged:(id)a3;
- (void)endObservingDownloadQueue:(id)a3;
- (void)endUsingNetwork;
- (void)reloadNetworkType;
- (void)setNetworkType:(int64_t)a3;
@end

@implementation ISNetworkObserver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ISNetworkObserver_sharedInstance__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = a1;
  if (sharedInstance_sOnce != -1)
  {
    dispatch_once(&sharedInstance_sOnce, block);
  }

  return sharedInstance_sObserver;
}

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__ISNetworkObserver_isUsingNetwork__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__ISNetworkObserver_isUsingNetwork__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_ntsIsUsingNetwork
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self->_networkUsageCount > 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observedDownloadQueues = self->_observedDownloadQueues;
  v4 = [(NSMutableSet *)observedDownloadQueues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observedDownloadQueues);
        }

        if (v2)
        {
          v2 = 1;
        }

        else
        {
          v2 = [*(*(&v10 + 1) + 8 * i) isUsingNetwork];
        }
      }

      v5 = [(NSMutableSet *)observedDownloadQueues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (int64_t)networkType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ISNetworkObserver_networkType__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ISNetworkObserver)init
{
  v22 = *MEMORY[0x277D85DE8];
  __ISRecordSPIClassUsage(self);
  v20.receiver = self;
  v20.super_class = ISNetworkObserver;
  v3 = [(ISNetworkObserver *)&v20 init];
  if (v3)
  {
    *(v3 + 2) = dispatch_queue_create("com.apple.itunesstore.ISNetworkObserver", 0);
    *(v3 + 8) = dispatch_queue_create("com.apple.itunesstore.ISNetworkObserver.notifications", 0);
    *(v3 + 24) = 1;
    *(v3 + 4) = CFAbsoluteTimeGetCurrent();
    v16 = 0;
    v18 = 0u;
    v19 = 0;
    v17 = v3;
    v4 = _CTServerConnectionCreate();
    *(v3 + 11) = v4;
    if (v4)
    {
      v5 = *(v3 + 2);
      _CTServerConnectionSetTargetQueue();
      v6 = *(v3 + 11);
      v7 = *MEMORY[0x277CC3CB0];
      _CTServerConnectionRegisterForNotification();
    }

    address = xmmword_275C64B10;
    v8 = SCNetworkReachabilityCreateWithAddress(0, &address);
    *(v3 + 10) = v8;
    if (v8)
    {
      context.version = 0;
      context.info = v3;
      context.retain = 0;
      context.release = 0;
      context.copyDescription = MEMORY[0x277CBE530];
      SCNetworkReachabilitySetCallback(v8, __ReachabilityCallback, &context);
      SCNetworkReachabilitySetDispatchQueue(*(v3 + 10), *(v3 + 2));
    }

    v9 = [v3 _currentNetworkReachabilityFlags];
    *(v3 + 10) = v9;
    *(v3 + 7) = [v3 _networkTypeForReachabilityFlags:v9];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v3 selector:sel__applicationForegroundNotification_ name:@"UIApplicationDidEnterForegroundNotification" object:0];
    [v10 addObserver:v3 selector:sel__applicationForegroundNotification_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    v11 = [MEMORY[0x277D69D20] sharedController];
    [v10 addObserver:v3 selector:sel__telephonyOperatorNameDidChangeNotification_ name:*MEMORY[0x277D6A658] object:v11];
    [v10 addObserver:v3 selector:sel__telephonyRegistrationDidChangeNotification_ name:*MEMORY[0x277D6A660] object:v11];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __CarrierChangeNotification, *MEMORY[0x277CC3848], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __CarrierChangeNotification, *MEMORY[0x277CC3850], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __AutoDownloadsSettingsChangedNotification, *MEMORY[0x277D6A6E8], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __NetworkTypeOverrideChangedNotification, *MEMORY[0x277D6A6F8], 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
  v4 = [MEMORY[0x277D69D20] sharedController];
  [v3 removeObserver:self name:*MEMORY[0x277D6A658] object:v4];
  [v3 removeObserver:self name:*MEMORY[0x277D6A660] object:v4];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3848], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3850], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6E8], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6F8], 0);
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

  [(NSMutableSet *)self->_observedDownloadQueues makeObjectsPerformSelector:sel_removeObserver_ withObject:self];

  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetDispatchQueue(reachability, 0);
    CFRelease(self->_reachability);
    self->_reachability = 0;
  }

  if (self->_telephonyServer)
  {
    v9 = *MEMORY[0x277CC3CB0];
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_telephonyServer);
    self->_telephonyServer = 0;
  }

  v10.receiver = self;
  v10.super_class = ISNetworkObserver;
  [(ISNetworkObserver *)&v10 dealloc];
}

id __35__ISNetworkObserver_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_alloc_init(objc_opt_class());
  sharedInstance_sObserver = result;
  return result;
}

- (void)beginObservingDownloadQueue:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ISNetworkObserver_beginObservingDownloadQueue___block_invoke;
  v5[3] = &unk_27A670CE8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = &v10;
  v5[7] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v11 + 24) != *(v7 + 24))
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:?];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __49__ISNetworkObserver_beginObservingDownloadQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    *(*(a1 + 32) + 72) = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 48) + 8) + 24) = [v2 _ntsIsUsingNetwork];
  [*(a1 + 40) addObserver:*(a1 + 32)];
  [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)beginUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ISNetworkObserver_beginUsingNetwork__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:1];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277D6A608] object:0];
  _Block_object_dispose(&v6, 8);
}

- (NSString)connectionTypeHeader
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(ISNetworkObserver *)self networkType];
  v4 = SSGetStringForNetworkType();
  if (v4)
  {
    [v3 appendString:v4];
    if (SSNetworkTypeIsCellularType())
    {
      v5 = [(ISNetworkObserver *)self operatorName];
      if ([(NSString *)v5 length])
      {
        [v3 appendFormat:@"/%@", v5];
      }
    }
  }

  return v3;
}

- (id)copyValueForCarrierBundleKey:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke;
  v18[3] = &unk_27A670D60;
  v18[4] = v5;
  v18[5] = a3;
  v18[6] = v4;
  v18[7] = &v19;
  [v5 getSubscriptionInfo:v18];
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v4, v6))
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    v9 = [v7 shouldLogToDisk];
    v10 = [v7 OSLogObject];
    if (v9)
    {
      v8 |= 2u;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v11 = objc_opt_class();
      v25 = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = a3;
      LODWORD(v17) = 22;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v25, v17}];
        free(v13);
        SSFileLog();
      }
    }
  }

  dispatch_release(v4);
  v14 = [v20[5] copy];
  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

intptr_t __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a2 subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
        if ([v8 slotID] == 1)
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke_2;
          v14[3] = &unk_27A670D38;
          v15 = *(a1 + 48);
          [v10 copyCarrierBundleValue:v8 key:v11 bundleType:v9 completion:v14];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)endObservingDownloadQueue:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ISNetworkObserver_endObservingDownloadQueue___block_invoke;
  v5[3] = &unk_27A670D88;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = &v10;
  v5[7] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v11 + 24) != *(v7 + 24))
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:?];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __47__ISNetworkObserver_endObservingDownloadQueue___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _ntsIsUsingNetwork];
  [*(a1 + 40) removeObserver:*(a1 + 32)];
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)endUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ISNetworkObserver_endUsingNetwork__block_invoke;
  v5[3] = &unk_27A6705F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:0];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277D6A610] object:0];
  _Block_object_dispose(&v6, 8);
}

uint64_t __36__ISNetworkObserver_endUsingNetwork__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (v1 >= 1)
  {
    *(*(*(result + 40) + 8) + 24) = v1 == 1;
    --*(*(result + 32) + 48);
  }

  return result;
}

- (double)lastNetworkTypeChangeTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xFFEFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ISNetworkObserver_lastNetworkTypeChangeTime__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __46__ISNetworkObserver_lastNetworkTypeChangeTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)networkReachabilityFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ISNetworkObserver_networkReachabilityFlags__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldShowCellularAutomaticDownloadsSwitch
{
  v2 = [(ISNetworkObserver *)self copyValueForCarrierBundleKey:@"ShowiTunesStoreAutoDownloadOverCellularSwitch"];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (NSString)dataStatusIndicator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ISNetworkObserver_dataStatusIndicator__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__ISNetworkObserver_dataStatusIndicator__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _dataStatusIndicator];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isWiFiEnabled
{
  v2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];

  return [v2 isWiFiEnabled];
}

- (NSString)mobileSubscriberCountryCode
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 mobileSubscriberCountryCode];
}

- (NSString)mobileSubscriberNetworkCode
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 mobileSubscriberNetworkCode];
}

- (NSString)modemRegistrationStatus
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 registrationStatus];
}

- (NSString)operatorName
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 operatorName];
}

- (NSString)providerName
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 providerName];
}

- (NSString)phoneNumber
{
  v2 = [MEMORY[0x277D69D20] sharedController];

  return [v2 phoneNumber];
}

- (void)reloadNetworkType
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ISNetworkObserver_reloadNetworkType__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)setNetworkType:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ISNetworkObserver_setNetworkType___block_invoke;
  block[3] = &unk_27A670DB0;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  v6 = v9[3];
  if (v6 != a3)
  {
    [(ISNetworkObserver *)self _postTypeChangedNotificationFromValue:v6 toValue:a3];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __36__ISNetworkObserver_setNetworkType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setNetworkType:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)downloadQueueNetworkUsageChanged:(id)a3
{
  v5 = [(ISNetworkObserver *)self isUsingNetwork];
  if (v5 == [a3 isUsingNetwork])
  {

    [(ISNetworkObserver *)self _postUsageChangedToValue:v5];
  }
}

- (void)_applicationForegroundNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ISNetworkObserver__applicationForegroundNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __56__ISNetworkObserver__applicationForegroundNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadDataStatusIndicator];
  v2 = *(a1 + 32);

  return [v2 _reloadNetworkType];
}

- (void)_telephonyOperatorNameDidChangeNotification:(id)a3
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ISNetworkObserver__telephonyOperatorNameDidChangeNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

uint64_t __65__ISNetworkObserver__telephonyOperatorNameDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverOperatorNameChangedNotification" object:v3];
}

- (void)_telephonyRegistrationDidChangeNotification:(id)a3
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ISNetworkObserver__telephonyRegistrationDidChangeNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

uint64_t __65__ISNetworkObserver__telephonyRegistrationDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverModemRegistrationChanged" object:v3];
}

- (void)_handleTelephonyNotificationWithName:(__CFString *)a3 userInfo:(__CFDictionary *)a4
{
  if (CFStringCompare(a3, *MEMORY[0x277CC3CB0], 0) == kCFCompareEqualTo)
  {

    self->_dataStatusIndicator = CFDictionaryGetValue(a4, *MEMORY[0x277CC3C48]);

    [(ISNetworkObserver *)self _reloadNetworkType];
  }
}

- (void)_copyConnectionDataStatus:(id)a3
{
  telephonyServer = self->_telephonyServer;
  _CTServerConnectionCopyDataStatus();
  (*(a3 + 2))(a3, 0, 0);
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

- (id)_dataStatusIndicator
{
  result = self->_dataStatusIndicator;
  if (!result)
  {
    if (self->_telephonyServer)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __41__ISNetworkObserver__dataStatusIndicator__block_invoke;
      v4[3] = &unk_27A670DD8;
      v4[4] = self;
      [(ISNetworkObserver *)self _copyConnectionDataStatus:v4];
      return self->_dataStatusIndicator;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_networkTypeFromDataIndicator:(id)a3
{
  v4 = 0;
  v7[24] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CC3C50];
  v7[1] = 1;
  v7[2] = *MEMORY[0x277CC3C58];
  v7[3] = 1;
  v7[4] = *MEMORY[0x277CC3C60];
  v7[5] = 2;
  v7[6] = *MEMORY[0x277CC3C68];
  v7[7] = 2;
  v7[8] = *MEMORY[0x277CC3C70];
  v7[9] = 2;
  v7[10] = *MEMORY[0x277CC3CA8];
  v7[11] = 3;
  v7[12] = *MEMORY[0x277CC3C78];
  v7[13] = 3;
  v7[14] = *MEMORY[0x277CC3C80];
  v7[15] = 4;
  v7[16] = *MEMORY[0x277CC3C88];
  v7[17] = 5;
  v7[18] = *MEMORY[0x277CC3C90];
  v7[19] = 6;
  v7[20] = *MEMORY[0x277CC3C98];
  v7[21] = 7;
  v7[22] = *MEMORY[0x277CC3CA0];
  v7[23] = 8;
  while (![a3 isEqualToString:v7[v4]])
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
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)a3
{
  if ((a3 & 2) != 0)
  {
    v6 = CFPreferencesCopyAppValue(@"SSNetworkTypeOverride", *MEMORY[0x277D6A708]);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 integerValue];
    }

    else
    {
      if ((a3 & 0x40000) == 0)
      {
        v3 = 1000;
LABEL_9:

        return v3;
      }

      v7 = [(ISNetworkObserver *)self _networkTypeFromDataIndicator:[(ISNetworkObserver *)self _dataStatusIndicator]];
    }

    v3 = v7;
    goto LABEL_9;
  }

  return 0;
}

- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)a3 toValue:(unsigned int)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = *MEMORY[0x277CCA300];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [v7 initWithObjectsAndKeys:{v8, v9, v10, *MEMORY[0x277CCA2F0], 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_postTypeChangedNotificationFromValue:(int64_t)a3 toValue:(int64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = *MEMORY[0x277CCA300];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [v7 initWithObjectsAndKeys:{v8, v9, v10, *MEMORY[0x277CCA2F0], 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_reloadCellularRestriction
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISNetworkObserver__reloadCellularRestriction__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__ISNetworkObserver__reloadCellularRestriction__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISNetworkObserver__reloadCellularRestriction__block_invoke_2;
  block[3] = &unk_27A670CC0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __47__ISNetworkObserver__reloadCellularRestriction__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverCellularRestrictionChangedNotification" object:v3];
}

- (void)_reloadDataStatusIndicator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__ISNetworkObserver__reloadDataStatusIndicator__block_invoke;
  v2[3] = &unk_27A670DD8;
  v2[4] = self;
  [(ISNetworkObserver *)self _copyConnectionDataStatus:v2];
}

void __47__ISNetworkObserver__reloadDataStatusIndicator__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {

    *(*(a1 + 32) + 8) = a2;
  }
}

- (void)_reloadNetworkType
{
  v3 = [(ISNetworkObserver *)self _currentNetworkReachabilityFlags];

  [(ISNetworkObserver *)self _reloadNetworkTypeWithReachabilityFlags:v3];
}

- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)a3
{
  v5 = [(ISNetworkObserver *)self _networkTypeForReachabilityFlags:?];
  v6 = [(ISNetworkObserver *)self _setNetworkType:v5];
  networkReachabilityFlags = self->_networkReachabilityFlags;
  self->_networkReachabilityFlags = a3;
  if (v6 != v5 || networkReachabilityFlags != a3)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ISNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke;
    block[3] = &unk_27A670E00;
    v13 = v6 != v5;
    block[4] = self;
    block[5] = v6;
    block[6] = v5;
    v14 = networkReachabilityFlags != a3;
    v11 = networkReachabilityFlags;
    v12 = a3;
    dispatch_async(notificationQueue, block);
  }
}

uint64_t __61__ISNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke(uint64_t result)
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

- (int64_t)_setNetworkType:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  networkType = self->_networkType;
  if (networkType != a3)
  {
    self->_networkType = a3;
    self->_lastNetworkTypeChangeTime = CFAbsoluteTimeGetCurrent();
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = self->_networkType;
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = SSGetStringForNetworkType();
      LODWORD(v14) = 22;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v15, v14}];
        free(v11);
        SSFileLog();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return networkType;
}

@end