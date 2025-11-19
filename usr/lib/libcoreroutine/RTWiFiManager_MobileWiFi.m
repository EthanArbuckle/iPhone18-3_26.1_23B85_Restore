@interface RTWiFiManager_MobileWiFi
+ (id)activeScanRequest;
+ (id)cacheScanRequest;
+ (id)defaultScanRequest;
+ (id)scanRequestWithType:(int64_t)a3 dwellTime:(int64_t)a4 channels:(id)a5 lowPriority:(BOOL)a6 merge:(BOOL)a7;
- (void)_cancelScan;
- (void)_destroyConnectionToWiFiManager;
- (void)_establishConnectionToWiFiManager;
- (void)_handleScanResultsCallback:(id)a3 attemptCacheFallback:(BOOL)a4 error:(int)a5;
- (void)_handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)a3 eventData:(id)a4;
- (void)_handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)a3;
- (void)_pollAccessPoints;
- (void)_pollManagerPowerStatus;
- (void)_scheduleActiveScan;
- (void)_scheduleScan;
- (void)_scheduleScanWithCache;
- (void)_scheduleScanWithChannels:(id)a3;
- (void)_setRegisteredForExtendedLinkCallbacks:(BOOL)a3;
- (void)_setRegisteredForPowerCallbacks:(BOOL)a3;
- (void)_setRegisteredForScanUpdateCallbacks:(BOOL)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)handleWiFiDeviceClientCacheScanCallback:(__WiFiDeviceClient *)a3 scanResults:(id)a4 error:(int)a5;
- (void)handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)a3 eventData:(id)a4;
- (void)handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)a3;
- (void)handleWiFiDeviceClientScanCallback:(__WiFiDeviceClient *)a3 scanResults:(id)a4 error:(int)a5;
- (void)handleWiFiDeviceClientScanUpdateCallback:(__WiFiDeviceClient *)a3 scanRequest:(id)a4 scanResults:(id)a5 error:(int)a6;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
@end

@implementation RTWiFiManager_MobileWiFi

- (void)_scheduleScanWithCache
{
  v3 = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [objc_opt_class() cacheScanRequest];
    v6 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTWiFiManager_MobileWiFi__scheduleScanWithCache__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = v5;
    v10 = self;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v8];
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

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(RTWiFiManager_MobileWiFi *)self _destroyConnectionToWiFiManager];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)_scheduleScan
{
  v3 = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [objc_opt_class() defaultScanRequest];
    v6 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__RTWiFiManager_MobileWiFi__scheduleScan__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = v5;
    v10 = self;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

- (void)_scheduleActiveScan
{
  v3 = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [objc_opt_class() activeScanRequest];
    v6 = [(RTWiFiManager_MobileWiFi *)self devices];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTWiFiManager_MobileWiFi__scheduleActiveScan__block_invoke;
    v8[3] = &unk_2788C4A48;
    v9 = v5;
    v10 = self;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

- (void)_scheduleScanWithChannels:(id)a3
{
  v4 = a3;
  v5 = [(RTWiFiManager_MobileWiFi *)self devices];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [objc_opt_class() scanRequestWithType:2 dwellTime:110 channels:v4 lowPriority:1 merge:1];
    v8 = [(RTWiFiManager_MobileWiFi *)self devices];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__RTWiFiManager_MobileWiFi__scheduleScanWithChannels___block_invoke;
    v10[3] = &unk_2788C4A48;
    v11 = v7;
    v12 = self;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v10];
  }
}

- (void)_cancelScan
{
  v2 = [(RTWiFiManager_MobileWiFi *)self devices];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_116];
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = RTWiFiManager_MobileWiFi;
  [(RTWiFiManager *)&v9 internalAddObserver:a3 name:v6];
  v7 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  v8 = [v6 isEqualToString:v7];

  if (v8 && [(RTNotifier *)self getNumberOfObservers:v6]== 1)
  {
    [(RTWiFiManager_MobileWiFi *)self _setRegisteredForScanUpdateCallbacks:1];
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = RTWiFiManager_MobileWiFi;
  [(RTWiFiManager *)&v9 internalRemoveObserver:a3 name:v6];
  v7 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  v8 = [v6 isEqualToString:v7];

  if (v8 && ![(RTNotifier *)self getNumberOfObservers:v6])
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
        v5 = [(RTWiFiManager_MobileWiFi *)self devices];
        v6 = 134217984;
        v7 = [v5 count];
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "created WiFiManagerClient with %lu devices", &v6, 0xCu);
      }
    }
  }
}

- (void)_destroyConnectionToWiFiManager
{
  v3 = [(RTWiFiManager_MobileWiFi *)self devices];
  v4 = [v3 count];

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
    v6 = [(RTWiFiManager_MobileWiFi *)self wifiManager];
    [(RTWiFiManager_MobileWiFi *)self setWifiManager:0];
    Main = CFRunLoopGetMain();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RTWiFiManager_MobileWiFi__destroyConnectionToWiFiManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v6;
    CFRunLoopPerformBlock(Main, v5, block);
  }
}

- (void)_setRegisteredForExtendedLinkCallbacks:(BOOL)a3
{
  if (a3)
  {
    [(RTWiFiManager_MobileWiFi *)self _pollAccessPoints];
  }

  v5 = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__RTWiFiManager_MobileWiFi__setRegisteredForExtendedLinkCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  v7 = a3;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

  if (!a3)
  {
    [(RTWiFiManager *)self setAccessPoints:0];
  }
}

- (void)_setRegisteredForPowerCallbacks:(BOOL)a3
{
  if (a3)
  {
    [(RTWiFiManager_MobileWiFi *)self _pollManagerPowerStatus];
  }

  v5 = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__RTWiFiManager_MobileWiFi__setRegisteredForPowerCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  v7 = a3;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

  if (!a3)
  {
    [(RTWiFiManager *)self setPowerStatus:0];
  }
}

- (void)_setRegisteredForScanUpdateCallbacks:(BOOL)a3
{
  v5 = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__RTWiFiManager_MobileWiFi__setRegisteredForScanUpdateCallbacks___block_invoke;
  v6[3] = &unk_2788CF9F8;
  v7 = a3;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

- (void)handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)a3
{
  v5 = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientPowerCallback___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_handleWiFiDeviceClientPowerCallback:(__WiFiDeviceClient *)a3
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

- (void)handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)a3 eventData:(id)a4
{
  v6 = a4;
  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientExtendedLinkCallback_eventData___block_invoke;
  block[3] = &unk_2788C5020;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_handleWiFiDeviceClientExtendedLinkCallback:(__WiFiDeviceClient *)a3 eventData:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
  {
    InterfaceName = WiFiDeviceClientGetInterfaceName();
    if (InterfaceName)
    {
      v8 = CFRetain(InterfaceName);
      Copy = CFStringCreateCopy(0, v8);
      CFRelease(v8);
      if (Copy)
      {
        v10 = [v6 objectForKeyedSubscript:@"LINK_CHANGED_NETWORK"];

        v11 = [objc_alloc(MEMORY[0x277D01430]) initWithWiFiNetwork:v10];
        v12 = [(RTWiFiManager_MobileWiFi *)self accessPointForInterface];
        [v12 setObject:v11 forKeyedSubscript:Copy];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = [v6 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
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
              v24 = Copy;
              v25 = 2112;
              v26 = v16;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "link status for interface, %@, changed to status, %@, ap, %@", &v23, 0x20u);
            }
          }
        }

        v17 = [(RTWiFiManager_MobileWiFi *)self accessPointForInterface];
        v18 = [v17 allValues];
        [(RTWiFiManager *)self setAccessPoints:v18];

        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        v24 = a3;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "no interface name for device, %p", &v23, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      Copy = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(Copy, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        v24 = a3;
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
  v4 = [(RTWiFiManager_MobileWiFi *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__RTWiFiManager_MobileWiFi__pollAccessPoints__block_invoke;
  v6[3] = &unk_2788C4BA8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];

  [(RTWiFiManager *)self setAccessPoints:v5];
}

- (void)handleWiFiDeviceClientScanUpdateCallback:(__WiFiDeviceClient *)a3 scanRequest:(id)a4 scanResults:(id)a5 error:(int)a6
{
  v8 = a5;
  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanUpdateCallback_scanRequest_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v12 = v8;
  v13 = a6;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)handleWiFiDeviceClientScanCallback:(__WiFiDeviceClient *)a3 scanResults:(id)a4 error:(int)a5
{
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanCallback_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)handleWiFiDeviceClientCacheScanCallback:(__WiFiDeviceClient *)a3 scanResults:(id)a4 error:(int)a5
{
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientCacheScanCallback_scanResults_error___block_invoke;
  block[3] = &unk_2788C9A80;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)_handleScanResultsCallback:(id)a3 attemptCacheFallback:(BOOL)a4 error:(int)a5
{
  v6 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTWiFiManager_MobileWiFi__handleScanResultsCallback_attemptCacheFallback_error___block_invoke;
  v13[3] = &unk_2788C4BA8;
  v11 = v10;
  v14 = v11;
  [v9 enumerateObjectsUsingBlock:v13];

  if (!a5 || (![v11 count] ? (v12 = !v6) : (v12 = 1), v12))
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

+ (id)scanRequestWithType:(int64_t)a3 dwellTime:(int64_t)a4 channels:(id)a5 lowPriority:(BOOL)a6 merge:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v12 setObject:v13 forKeyedSubscript:@"SCAN_MERGE"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v12 setObject:v14 forKeyedSubscript:@"SCAN_TYPE"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v12 setObject:v15 forKeyedSubscript:@"SCAN_DWELL_TIME"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v12 setObject:v16 forKeyedSubscript:@"SCAN_LOW_PRIORITY"];

  if ([v11 count])
  {
    v17 = objc_opt_new();
    [v12 setObject:v17 forKeyedSubscript:@"SCAN_CHANNELS"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__RTWiFiManager_MobileWiFi_scanRequestWithType_dwellTime_channels_lowPriority_merge___block_invoke;
    v20[3] = &unk_2788CFA20;
    v21 = v17;
    v18 = v17;
    [v11 enumerateObjectsUsingBlock:v20];
  }

  return v12;
}

@end