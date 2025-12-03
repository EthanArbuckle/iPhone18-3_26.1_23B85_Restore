@interface RTWiFiManager_MobileWiFi
+ (id)activeScanRequest;
+ (id)cacheScanRequest;
+ (id)defaultScanRequest;
+ (id)scanRequestWithType:(int64_t)type dwellTime:(int64_t)time channels:(id)channels lowPriority:(BOOL)priority merge:(BOOL)merge;
- (void)_cancelScan;
- (void)_destroyConnectionToWiFiManager;
- (void)_establishConnectionToWiFiManager;
- (void)_handleScanResultsCallback:(id)callback attemptCacheFallback:(BOOL)fallback error:(int)error;
- (void)_handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)callback eventData:(id)data;
- (void)_handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)callback;
- (void)_pollAccessPoints;
- (void)_pollManagerPowerStatus;
- (void)_scheduleActiveScan;
- (void)_scheduleScan;
- (void)_scheduleScanWithCache;
- (void)_scheduleScanWithChannels:(id)channels;
- (void)_setRegisteredForExtendedLinkCallbacks:(BOOL)callbacks;
- (void)_setRegisteredForPowerCallbacks:(BOOL)callbacks;
- (void)_setRegisteredForScanUpdateCallbacks:(BOOL)callbacks;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)handleWiFiDeviceClientCacheScanCallback:(__WiFiDeviceClient *)callback scanResults:(id)results error:(int)error;
- (void)handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)callback eventData:(id)data;
- (void)handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)callback;
- (void)handleWiFiDeviceClientScanCallback:(__WiFiDeviceClient *)callback scanResults:(id)results error:(int)error;
- (void)handleWiFiDeviceClientScanUpdateCallback:(__WiFiDeviceClient *)callback scanRequest:(id)request scanResults:(id)results error:(int)error;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
@end

@implementation RTWiFiManager_MobileWiFi

- (void)_scheduleScanWithCache
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [devices count];

  if (v4)
  {
    cacheScanRequest = [objc_opt_class() cacheScanRequest];
    devices2 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTWiFiManager_MobileWiFi__scheduleScanWithCache__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = cacheScanRequest;
    selfCopy = self;
    v7 = cacheScanRequest;
    [devices2 enumerateObjectsUsingBlock:v8];
  }
}

+ (id)cacheScanRequest
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"SCAN_MAXAGE";
  v4[1] = @"SCAN_MERGE";
  v5[0] = &unk_28459F270;
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"SCAN_TYPE";
  v4[3] = @"SCAN_DWELL_TIME";
  v5[2] = &unk_28459F288;
  v5[3] = &unk_28459F2A0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (void)_setup
{
  v3 = objc_opt_new();
  [(RTWiFiManager_MobileWiFi *)self setAccessPointForInterface:v3];

  [(RTWiFiManager_MobileWiFi *)self _establishConnectionToWiFiManager];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTWiFiManager_MobileWiFi *)self _destroyConnectionToWiFiManager];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)_scheduleScan
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [devices count];

  if (v4)
  {
    defaultScanRequest = [objc_opt_class() defaultScanRequest];
    devices2 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__RTWiFiManager_MobileWiFi__scheduleScan__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = defaultScanRequest;
    selfCopy = self;
    v7 = defaultScanRequest;
    [devices2 enumerateObjectsUsingBlock:v8];
  }
}

- (void)_scheduleActiveScan
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [devices count];

  if (v4)
  {
    activeScanRequest = [objc_opt_class() activeScanRequest];
    devices2 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTWiFiManager_MobileWiFi__scheduleActiveScan__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = activeScanRequest;
    selfCopy = self;
    v7 = activeScanRequest;
    [devices2 enumerateObjectsUsingBlock:v8];
  }
}

- (void)_scheduleScanWithChannels:(id)channels
{
  channelsCopy = channels;
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v6 = [devices count];

  if (v6)
  {
    v7 = [objc_opt_class() scanRequestWithType:2 dwellTime:110 channels:channelsCopy lowPriority:1 merge:1];
    devices2 = [(RTWiFiManager_MobileWiFi *)self devices];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__RTWiFiManager_MobileWiFi__scheduleScanWithChannels___block_invoke;
    v10[3] = &unk_2788C4A48;
    v11 = v7;
    selfCopy = self;
    v9 = v7;
    [devices2 enumerateObjectsUsingBlock:v10];
  }
}

- (void)_cancelScan
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  [devices enumerateObjectsUsingBlock:&__block_literal_global_116];
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = RTWiFiManager_MobileWiFi;
  [(RTWiFiManager *)&v9 internalAddObserver:observer name:nameCopy];
  v7 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  v8 = [nameCopy isEqualToString:v7];

  if (v8 && [(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
  {
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForScanUpdateCallbacks:1];
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = RTWiFiManager_MobileWiFi;
  [(RTWiFiManager *)&v9 internalRemoveObserver:observer name:nameCopy];
  v7 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  v8 = [nameCopy isEqualToString:v7];

  if (v8 && ![(RTNotifier *)self getNumberOfObservers:nameCopy])
  {
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForScanUpdateCallbacks:0];
  }
}

- (void)_establishConnectionToWiFiManager
{
  v8 = *MEMORY[0x277D85DE8];
  [(RTWiFiManager_MobileWiFi *)self _destroyConnectionToWiFiManager];
  [(RTWiFiManager_MobileWiFi *)self setWifiManager:WiFiManagerClientCreate()];
  if ([(RTWiFiManager_MobileWiFi *)self wifiManager])
  {
    [(RTWiFiManager_MobileWiFi *)self wifiManager];
    v3 = WiFiManagerClientCopyDevices();
    [(RTWiFiManager_MobileWiFi *)self setDevices:v3];

    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForExtendedLinkCallbacks:1];
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForPowerCallbacks:1];
    [(RTWiFiManager_MobileWiFi *)self wifiManager];
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        devices = [(RTWiFiManager_MobileWiFi *)self devices];
        v6 = 134217984;
        v7 = [devices count];
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "created WiFiManagerClient with %lu devices", &v6, 0xCu);
      }
    }
  }
}

- (void)_destroyConnectionToWiFiManager
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [devices count];

  if (v4)
  {
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForPowerCallbacks:0];
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForExtendedLinkCallbacks:0];
  }

  [(RTWiFiManager_MobileWiFi *)self setDevices:0];
  if ([(RTWiFiManager_MobileWiFi *)self wifiManager])
  {
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForScanUpdateCallbacks:0];
    [(RTWiFiManager_MobileWiFi *)self wifiManager];
    CFRunLoopGetMain();
    v5 = *MEMORY[0x277CBF048];
    WiFiManagerClientUnscheduleFromRunLoop();
    wifiManager = [(RTWiFiManager_MobileWiFi *)self wifiManager];
    [(RTWiFiManager_MobileWiFi *)self setWifiManager:0];
    Main = CFRunLoopGetMain();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RTWiFiManager_MobileWiFi__destroyConnectionToWiFiManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = wifiManager;
    CFRunLoopPerformBlock(Main, v5, block);
  }
}

- (void)_setRegisteredForExtendedLinkCallbacks:(BOOL)callbacks
{
  if (callbacks)
  {
    [(RTWiFiManager_MobileWiFi *)self _pollAccessPoints];
  }

  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__RTWiFiManager_MobileWiFi__setRegisteredForExtendedLinkCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  callbacksCopy = callbacks;
  v6[4] = self;
  [devices enumerateObjectsUsingBlock:v6];

  if (!callbacks)
  {
    [(RTWiFiManager *)self setAccessPoints:0];
  }
}

- (void)_setRegisteredForPowerCallbacks:(BOOL)callbacks
{
  if (callbacks)
  {
    [(RTWiFiManager_MobileWiFi *)self _pollManagerPowerStatus];
  }

  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__RTWiFiManager_MobileWiFi__setRegisteredForPowerCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  callbacksCopy = callbacks;
  v6[4] = self;
  [devices enumerateObjectsUsingBlock:v6];

  if (!callbacks)
  {
    [(RTWiFiManager *)self setPowerStatus:0];
  }
}

- (void)_setRegisteredForScanUpdateCallbacks:(BOOL)callbacks
{
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__RTWiFiManager_MobileWiFi__setRegisteredForScanUpdateCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  callbacksCopy = callbacks;
  v6[4] = self;
  [devices enumerateObjectsUsingBlock:v6];
}

- (void)handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)callback
{
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientPowerCallback___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = callback;
  dispatch_async(queue, v6);
}

- (void)_handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)callback
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = WiFiDeviceClientGetPower() ? 2 : 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        InterfaceName = WiFiDeviceClientGetInterfaceName();
        v7 = [RTWiFiManager powerStatusToString:v4];
        v8 = 138412546;
        v9 = InterfaceName;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "power status for device, %@, changed to, %@", &v8, 0x16u);
      }
    }
  }

  [(RTWiFiManager_MobileWiFi *)self _pollManagerPowerStatus];
}

- (void)_pollManagerPowerStatus
{
  [(RTWiFiManager_MobileWiFi *)self wifiManager];
  if (WiFiManagerClientGetPower())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(RTWiFiManager *)self setPowerStatus:v3];
}

- (void)handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)callback eventData:(id)data
{
  dataCopy = data;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientExtendedLinkCallback_eventData___block_invoke;
  block[3] = &unk_2788C5020;
  v10 = dataCopy;
  callbackCopy = callback;
  block[4] = self;
  v8 = dataCopy;
  dispatch_async(queue, block);
}

- (void)_handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)callback eventData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (callback)
  {
    InterfaceName = WiFiDeviceClientGetInterfaceName();
    if (InterfaceName)
    {
      v8 = CFRetain(InterfaceName);
      Copy = CFStringCreateCopy(0, v8);
      CFRelease(v8);
      if (Copy)
      {
        v10 = [dataCopy objectForKeyedSubscript:@"LINK_CHANGED_NETWORK"];

        v11 = [objc_alloc(MEMORY[0x277D01430]) initWithWiFiNetwork:v10];
        accessPointForInterface = [(RTWiFiManager_MobileWiFi *)self accessPointForInterface];
        [accessPointForInterface setObject:v11 forKeyedSubscript:Copy];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = [dataCopy objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
          if ([v13 BOOLValue])
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v15 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = [RTWiFiManager linkStatusToString:v14];
              v23 = 138412802;
              callbackCopy2 = Copy;
              v25 = 2112;
              v26 = v16;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "link status for interface, %@, changed to status, %@, ap, %@", &v23, 0x20u);
            }
          }
        }

        accessPointForInterface2 = [(RTWiFiManager_MobileWiFi *)self accessPointForInterface];
        allValues = [accessPointForInterface2 allValues];
        [(RTWiFiManager *)self setAccessPoints:allValues];

        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        callbackCopy2 = callback;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "no interface name for device, %p", &v23, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      Copy = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(Copy, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        callbackCopy2 = callback;
        v19 = "no interface name for device, %p";
        v20 = Copy;
        v21 = 12;
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    Copy = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(Copy, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v19 = "NULL device object";
      v20 = Copy;
      v21 = 2;
LABEL_24:
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, v19, &v23, v21);
    }

LABEL_25:
  }
}

- (void)_pollAccessPoints
{
  v3 = objc_opt_new();
  devices = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__RTWiFiManager_MobileWiFi__pollAccessPoints__block_invoke;
  v6[3] = &unk_2788C4BA8;
  v7 = v3;
  v5 = v3;
  [devices enumerateObjectsUsingBlock:v6];

  [(RTWiFiManager *)self setAccessPoints:v5];
}

- (void)handleWiFiDeviceClientScanUpdateCallback:(__WiFiDeviceClient *)callback scanRequest:(id)request scanResults:(id)results error:(int)error
{
  resultsCopy = results;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanUpdateCallback_scanRequest_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v12 = resultsCopy;
  errorCopy = error;
  v10 = resultsCopy;
  dispatch_async(queue, block);
}

- (void)handleWiFiDeviceClientScanCallback:(__WiFiDeviceClient *)callback scanResults:(id)results error:(int)error
{
  resultsCopy = results;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanCallback_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v11 = resultsCopy;
  errorCopy = error;
  v9 = resultsCopy;
  dispatch_async(queue, block);
}

- (void)handleWiFiDeviceClientCacheScanCallback:(__WiFiDeviceClient *)callback scanResults:(id)results error:(int)error
{
  resultsCopy = results;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientCacheScanCallback_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v11 = resultsCopy;
  errorCopy = error;
  v9 = resultsCopy;
  dispatch_async(queue, block);
}

- (void)_handleScanResultsCallback:(id)callback attemptCacheFallback:(BOOL)fallback error:(int)error
{
  fallbackCopy = fallback;
  v8 = MEMORY[0x277CBEB18];
  callbackCopy = callback;
  v10 = [v8 arrayWithCapacity:{objc_msgSend(callbackCopy, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTWiFiManager_MobileWiFi__handleScanResultsCallback_attemptCacheFallback_error___block_invoke;
  v13[3] = &unk_2788C4BA8;
  v11 = v10;
  v14 = v11;
  [callbackCopy enumerateObjectsUsingBlock:v13];

  if (!error || (![v11 count] ? (v12 = !fallbackCopy) : (v12 = 1), v12))
  {
    [(RTWiFiManager *)self _notifyScanResults:v11];
  }

  else
  {
    [(RTWiFiManager_MobileWiFi *)self _scheduleScanWithCache];
  }
}

+ (id)defaultScanRequest
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"SCAN_MERGE";
  v4[1] = @"SCAN_TYPE";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = &unk_28459F288;
  v4[2] = @"SCAN_DWELL_TIME";
  v5[2] = &unk_28459F2A0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)activeScanRequest
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"SCAN_MERGE";
  v4[1] = @"SCAN_TYPE";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = &unk_28459F2B8;
  v4[2] = @"SCAN_DWELL_TIME";
  v5[2] = &unk_28459F2A0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)scanRequestWithType:(int64_t)type dwellTime:(int64_t)time channels:(id)channels lowPriority:(BOOL)priority merge:(BOOL)merge
{
  mergeCopy = merge;
  priorityCopy = priority;
  channelsCopy = channels;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:mergeCopy];
  [v12 setObject:v13 forKeyedSubscript:@"SCAN_MERGE"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v12 setObject:v14 forKeyedSubscript:@"SCAN_TYPE"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:time];
  [v12 setObject:v15 forKeyedSubscript:@"SCAN_DWELL_TIME"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:priorityCopy];
  [v12 setObject:v16 forKeyedSubscript:@"SCAN_LOW_PRIORITY"];

  if ([channelsCopy count])
  {
    v17 = objc_opt_new();
    [v12 setObject:v17 forKeyedSubscript:@"SCAN_CHANNELS"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__RTWiFiManager_MobileWiFi_scanRequestWithType_dwellTime_channels_lowPriority_merge___block_invoke;
    v20[3] = &unk_2788CFA20;
    v21 = v17;
    v18 = v17;
    [channelsCopy enumerateObjectsUsingBlock:v20];
  }

  return v12;
}

@end