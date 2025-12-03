@interface RTBluePOIWiFiScanner
- (RTBluePOIWiFiScanner)initWithDefaultsManager:(id)manager wifiManager:(id)wifiManager bluePOIEnabler:(id)enabler bluePOIMetricManager:(id)metricManager;
- (void)_processWifiScanResults:(id)results;
- (void)_triggerScan;
- (void)onLeechWifiScanResultsNotification:(id)notification;
@end

@implementation RTBluePOIWiFiScanner

- (void)_triggerScan
{
  bluePOIEnabler = [(RTBluePOIWiFiScanner *)self bluePOIEnabler];
  enabled = [bluePOIEnabler enabled];

  if (enabled)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "WifiScanner Trigger a scan for channels 2, 5, and 9", v10, 2u);
      }
    }

    [(RTWiFiManager *)self->_wifiManager scheduleScanWithChannels:&unk_2845A12E0];
    bluePOIMetricManager = [(RTBluePOIWiFiScanner *)self bluePOIMetricManager];
    dailyMetrics = [bluePOIMetricManager dailyMetrics];
    [dailyMetrics increaseCountForKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];

    bluePOIMetricManager2 = [(RTBluePOIWiFiScanner *)self bluePOIMetricManager];
    v9 = [MEMORY[0x277CBEAA8] now];
    [bluePOIMetricManager2 setObject:v9 forKey:@"BluePOIQueryEventLastActiveWiFiScanDate"];
  }
}

- (RTBluePOIWiFiScanner)initWithDefaultsManager:(id)manager wifiManager:(id)wifiManager bluePOIEnabler:(id)enabler bluePOIMetricManager:(id)metricManager
{
  v43 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  wifiManagerCopy = wifiManager;
  enablerCopy = enabler;
  metricManagerCopy = metricManager;
  v14 = metricManagerCopy;
  if (!managerCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: defaultsManager";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_27;
  }

  if (!wifiManagerCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: wifiManager";
    goto LABEL_26;
  }

  if (!enablerCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: bluePOIEnabler";
    goto LABEL_26;
  }

  if (!metricManagerCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v32 = "Invalid parameter not satisfying: bluePOIMetricManager";
      goto LABEL_26;
    }

LABEL_27:

    selfCopy = 0;
    goto LABEL_28;
  }

  v40.receiver = self;
  v40.super_class = RTBluePOIWiFiScanner;
  v15 = [(RTNotifier *)&v40 init];
  v16 = v15;
  if (v15)
  {
    v34 = enablerCopy;
    v35 = wifiManagerCopy;
    objc_storeStrong(&v15->_wifiManager, wifiManager);
    objc_storeStrong(&v16->_bluePOIEnabler, enabler);
    objc_storeStrong(&v16->_bluePOIMetricManager, metricManager);
    wifiManager = v16->_wifiManager;
    v18 = +[(RTNotification *)RTWiFiManagerNotificationLeechScanResults];
    [(RTNotifier *)wifiManager addObserver:v16 selector:sel_onLeechWifiScanResultsNotification_ name:v18];

    v19 = objc_opt_new();
    targettedChannelsLastSeenDates = v16->targettedChannelsLastSeenDates;
    v16->targettedChannelsLastSeenDates = v19;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = [&unk_2845A12E0 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(&unk_2845A12E0);
          }

          v25 = *(*(&v36 + 1) + 8 * i);
          date = [MEMORY[0x277CBEAA8] date];
          [(NSMutableDictionary *)v16->targettedChannelsLastSeenDates setObject:date forKeyedSubscript:v25];
        }

        v22 = [&unk_2845A12E0 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v22);
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    lastTargettedScan = v16->lastTargettedScan;
    v16->lastTargettedScan = date2;

    enablerCopy = v34;
    wifiManagerCopy = v35;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "initialized RTBluePOIWiFiScanner", buf, 2u);
      }
    }
  }

  self = v16;
  selfCopy = self;
LABEL_28:

  return selfCopy;
}

- (void)onLeechWifiScanResultsNotification:(id)notification
{
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "WiFiScanner, leech", buf, 2u);
    }
  }

  bluePOIEnabler = [(RTBluePOIWiFiScanner *)self bluePOIEnabler];
  enabled = [bluePOIEnabler enabled];

  if (enabled)
  {
    queue = [(RTNotifier *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__RTBluePOIWiFiScanner_onLeechWifiScanResultsNotification___block_invoke;
    v9[3] = &unk_2788C4A70;
    v10 = notificationCopy;
    selfCopy = self;
    dispatch_async(queue, v9);
  }
}

void __59__RTBluePOIWiFiScanner_onLeechWifiScanResultsNotification___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) scanResults];
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v3 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = 134217984;
          v5 = [v2 count];
          _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "WiFiScanner, leech, count %lu", &v4, 0xCu);
        }
      }

      [*(a1 + 40) _processWifiScanResults:v2];
    }
  }
}

- (void)_processWifiScanResults:(id)results
{
  v47 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  date = [MEMORY[0x277CBEAA8] date];
  v31 = resultsCopy;
  reverseObjectEnumerator = [resultsCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = allObjects;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    v29 = 138412290;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v37 + 1) + 8 * i), "channel", v29)}];
        if ([&unk_2845A12E0 containsObject:v13])
        {
          if (([v8 containsObject:v13] & 1) == 0)
          {
            [(NSMutableDictionary *)self->targettedChannelsLastSeenDates setObject:date forKeyedSubscript:v13];
            [v8 addObject:v13];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = v29;
                v42 = v13;
                _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "WifiScanner channel %@ found in scan", buf, 0xCu);
              }
            }
          }
        }

        v15 = [v8 count];
        if (v15 == [&unk_2845A12E0 count])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "WifiScanner all channels found in the scan", buf, 2u);
            }
          }

          goto LABEL_21;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  [date timeIntervalSinceDate:self->lastTargettedScan];
  if (v17 > 120.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        lastTargettedScan = self->lastTargettedScan;
        *buf = 138412290;
        v42 = lastTargettedScan;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "WifiScanner timer expired %@", buf, 0xCu);
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = self->targettedChannelsLastSeenDates;
    v21 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v30 = 40;
      v23 = *v34;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          v26 = [(NSMutableDictionary *)self->targettedChannelsLastSeenDates objectForKeyedSubscript:v25, v30];
          [date timeIntervalSinceDate:v26];
          if (v27 > 120.0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v28 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v42 = v25;
                v43 = 2112;
                v44 = v26;
                _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "WifiScanner channel %@ expired %@", buf, 0x16u);
              }
            }

            objc_storeStrong((&self->super.super.super.isa + v30), date);
            [(RTBluePOIWiFiScanner *)self _triggerScan];
            goto LABEL_40;
          }
        }

        v22 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_40:
}

@end