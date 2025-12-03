@interface RTWiFiManager
+ (BOOL)supportsNotificationName:(id)name;
+ (RTWiFiManager)allocWithZone:(_NSZone *)zone;
+ (id)linkStatusToString:(unint64_t)string;
+ (id)powerStatusToString:(unint64_t)string;
- (RTWiFiManager)init;
- (void)_notifyLeechScanResults:(id)results;
- (void)_notifyScanResults:(id)results;
- (void)cancelScan;
- (void)fetchLinkStatus:(id)status;
- (void)fetchPowerStatus:(id)status;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)scheduleActiveScan;
- (void)scheduleScan;
- (void)scheduleScanWithChannels:(id)channels;
- (void)setAccessPoints:(id)points;
- (void)setPowerStatus:(unint64_t)status;
@end

@implementation RTWiFiManager

void __21__RTWiFiManager_init__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "leech scan results: %@", &v6, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyLeechScanResults:v3];
}

+ (RTWiFiManager)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTWiFiManager_MobileWiFi allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTWiFiManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (RTWiFiManager)init
{
  v12.receiver = self;
  v12.super_class = RTWiFiManager;
  v2 = [(RTNotifier *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_linkStatus = 0;
    v2->_powerStatus = 0;
    accessPoints = v2->_accessPoints;
    v2->_accessPoints = 0;

    [(RTService *)v3 setup];
    if (_os_feature_enabled_impl())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(location[0]) = 0;
          _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Configure WiFi leeching", location, 2u);
        }
      }

      objc_initWeak(location, v3);
      v6 = +[_TtC14libcoreroutine22RTAonWiFiLeechProvider shared];
      queue = [(RTNotifier *)v3 queue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __21__RTWiFiManager_init__block_invoke;
      v9[3] = &unk_2788CCC48;
      objc_copyWeak(&v10, location);
      [v6 registerWithQueue:queue callback:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }
  }

  return v3;
}

- (void)scheduleScan
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTWiFiManager_scheduleScan__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)scheduleScanWithChannels:(id)channels
{
  channelsCopy = channels;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTWiFiManager_scheduleScanWithChannels___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = channelsCopy;
  v6 = channelsCopy;
  dispatch_async(queue, v7);
}

- (void)scheduleActiveScan
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RTWiFiManager_scheduleActiveScan__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelScan
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RTWiFiManager_cancelScan__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fetchPowerStatus:(id)status
{
  v14 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (!statusCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTWiFiManager fetchPowerStatus:]";
      v12 = 1024;
      v13 = 142;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__RTWiFiManager_fetchPowerStatus___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(queue, v8);
}

uint64_t __34__RTWiFiManager_fetchPowerStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) powerStatus];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)fetchLinkStatus:(id)status
{
  v14 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (!statusCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTWiFiManager fetchLinkStatus:]";
      v12 = 1024;
      v13 = 151;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__RTWiFiManager_fetchLinkStatus___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(queue, v8);
}

void __33__RTWiFiManager_fetchLinkStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) linkStatus];
  v4 = [*(a1 + 32) accessPoints];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  if ([nameCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTWiFiManagerNotificationLinkStatusChanged];
    if ([nameCopy isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[(RTNotification *)RTWiFiManagerNotificationPowerStatusChanged];
      v5 = [nameCopy isEqualToString:v7];
    }
  }

  return v5;
}

- (void)setPowerStatus:(unint64_t)status
{
  v13 = *MEMORY[0x277D85DE8];
  powerStatus = self->_powerStatus;
  if (powerStatus != status)
  {
    self->_powerStatus = status;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTWiFiManager powerStatusToString:powerStatus];
        v7 = [RTWiFiManager powerStatusToString:self->_powerStatus];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "power status changed from, %@, to, %@", &v9, 0x16u);
      }
    }

    v8 = [[RTWiFiManagerNotificationPowerStatusChanged alloc] initWithPowerStatus:self->_powerStatus];
    [(RTNotifier *)self postNotification:v8];
  }
}

- (void)setAccessPoints:(id)points
{
  v20 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v6 = pointsCopy;
  if (pointsCopy)
  {
    v7 = [pointsCopy count];
    v8 = 1;
    if (v7)
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  linkStatus = self->_linkStatus;
  if (v8 != linkStatus)
  {
    self->_linkStatus = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [RTWiFiManager linkStatusToString:linkStatus];
        v12 = [RTWiFiManager linkStatusToString:self->_linkStatus];
        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "link status changed from, %@, to, %@", &v16, 0x16u);
      }
    }
  }

  objc_storeStrong(&self->_accessPoints, points);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(NSArray *)self->_accessPoints componentsJoinedByString:@", "];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "access points changed to, %@", &v16, 0xCu);
    }
  }

  v15 = [[RTWiFiManagerNotificationLinkStatusChanged alloc] initWithLinkStatus:self->_linkStatus accessPoints:self->_accessPoints];
  [(RTNotifier *)self postNotification:v15];
}

- (void)_notifyScanResults:(id)results
{
  resultsCopy = results;
  v5 = [[RTWiFiManagerNotificationScanResults alloc] initWithScanResults:resultsCopy];

  [(RTNotifier *)self postNotification:v5];
}

- (void)_notifyLeechScanResults:(id)results
{
  resultsCopy = results;
  v5 = [[RTWiFiManagerNotificationLeechScanResults alloc] initWithScanResults:resultsCopy];

  [(RTNotifier *)self postNotification:v5];
}

+ (id)powerStatusToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Unexpected Value";
  }

  else
  {
    return off_2788CCC68[string];
  }
}

+ (id)linkStatusToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Unexpected Value";
  }

  else
  {
    return off_2788CCC80[string];
  }
}

uint64_t __67__RTWiFiManager_MobileWiFi__setRegisteredForExtendedLinkCallbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = RTWiFiManager_WiFiDeviceClientExtendedLinkCallback;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x282187698](a2, v3, *(a1 + 32));
}

uint64_t __60__RTWiFiManager_MobileWiFi__setRegisteredForPowerCallbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = RTWiFiManager_WiFiDeviceClientPowerCallback;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x2821876B0](a2, v3, *(a1 + 32));
}

uint64_t __65__RTWiFiManager_MobileWiFi__setRegisteredForScanUpdateCallbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = RTWiFiManager_WiFiDeviceClientScanUpdateCallback;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x2821876B8](a2, v3, 0, *(a1 + 32));
}

void __45__RTWiFiManager_MobileWiFi__pollAccessPoints__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = WiFiDeviceClientCopyCurrentNetwork();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277D01430]) initWithWiFiNetwork:v6];
    if (v8)
    {
      [*(a1 + 32) addObject:v8];
    }

    CFRelease(v7);
    *a4 = 1;
  }
}

uint64_t __99__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanUpdateCallback_scanRequest_scanResults_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleScanResultsCallback:*(a1 + 40) attemptCacheFallback:0 error:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) count];

  return [RTWiFiScanMetrics submitWiFiScanMetricsWithErrorCode:v2 accessPointsscanResultsCount:v3 isScanIssuedByOtherClient:1 isCacheQuery:0];
}

uint64_t __81__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientScanCallback_scanResults_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleScanResultsCallback:*(a1 + 40) attemptCacheFallback:1 error:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) count];

  return [RTWiFiScanMetrics submitWiFiScanMetricsWithErrorCode:v2 accessPointsscanResultsCount:v3 isScanIssuedByOtherClient:0 isCacheQuery:0];
}

uint64_t __86__RTWiFiManager_MobileWiFi_handleWiFiDeviceClientCacheScanCallback_scanResults_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleScanResultsCallback:*(a1 + 40) attemptCacheFallback:0 error:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) count];

  return [RTWiFiScanMetrics submitWiFiScanMetricsWithErrorCode:v2 accessPointsscanResultsCount:v3 isScanIssuedByOtherClient:0 isCacheQuery:1];
}

void __82__RTWiFiManager_MobileWiFi__handleScanResultsCallback_attemptCacheFallback_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01430];
  v4 = a2;
  v6 = [[v3 alloc] initWithWiFiNetwork:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

void __85__RTWiFiManager_MobileWiFi_scanRequestWithType_dwellTime_channels_lowPriority_merge___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setObject:v3 forKeyedSubscript:@"CHANNEL"];

  [v4 setObject:&unk_28459F2D0 forKeyedSubscript:@"CHANNEL_FLAGS"];
  [*(a1 + 32) addObject:v4];
}

@end