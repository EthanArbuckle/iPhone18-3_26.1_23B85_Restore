@interface RTBluePOIWiFiScanner
- (RTBluePOIWiFiScanner)initWithDefaultsManager:(id)a3 wifiManager:(id)a4 bluePOIEnabler:(id)a5 bluePOIMetricManager:(id)a6;
- (void)_processWifiScanResults:(id)a3;
- (void)_triggerScan;
- (void)onLeechWifiScanResultsNotification:(id)a3;
@end

@implementation RTBluePOIWiFiScanner

- (void)_triggerScan
{
  v3 = [(RTBluePOIWiFiScanner *)self bluePOIEnabler];
  v4 = [v3 enabled];

  if (v4)
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
    v6 = [(RTBluePOIWiFiScanner *)self bluePOIMetricManager];
    v7 = [v6 dailyMetrics];
    [v7 increaseCountForKey:@"BluePOIDailyEventOpportunisticWiFiScanRequestCount"];

    v8 = [(RTBluePOIWiFiScanner *)self bluePOIMetricManager];
    v9 = [MEMORY[0x277CBEAA8] now];
    [v8 setObject:v9 forKey:@"BluePOIQueryEventLastActiveWiFiScanDate"];
  }
}

- (RTBluePOIWiFiScanner)initWithDefaultsManager:(id)a3 wifiManager:(id)a4 bluePOIEnabler:(id)a5 bluePOIMetricManager:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10)
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

  if (!v11)
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

  if (!v12)
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

  if (!v13)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v32 = "Invalid parameter not satisfying: bluePOIMetricManager";
      goto LABEL_26;
    }

LABEL_27:

    v30 = 0;
    goto LABEL_28;
  }

  v40.receiver = self;
  v40.super_class = RTBluePOIWiFiScanner;
  v15 = [(RTNotifier *)&v40 init];
  v16 = v15;
  if (v15)
  {
    v34 = v12;
    v35 = v11;
    objc_storeStrong(&v15->_wifiManager, a4);
    objc_storeStrong(&v16->_bluePOIEnabler, a5);
    objc_storeStrong(&v16->_bluePOIMetricManager, a6);
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
          v26 = [MEMORY[0x277CBEAA8] date];
          [(NSMutableDictionary *)v16->targettedChannelsLastSeenDates setObject:v26 forKeyedSubscript:v25];
        }

        v22 = [&unk_2845A12E0 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v22);
    }

    v27 = [MEMORY[0x277CBEAA8] date];
    lastTargettedScan = v16->lastTargettedScan;
    v16->lastTargettedScan = v27;

    v12 = v34;
    v11 = v35;
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
  v30 = self;
LABEL_28:

  return v30;
}

- (void)onLeechWifiScanResultsNotification:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "WiFiScanner, leech", buf, 2u);
    }
  }

  v6 = [(RTBluePOIWiFiScanner *)self bluePOIEnabler];
  v7 = [v6 enabled];

  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__RTBluePOIWiFiScanner_onLeechWifiScanResultsNotification___block_invoke;
    v9[3] = &unk_2788C4A70;
    v10 = v4;
    v11 = self;
    dispatch_async(v8, v9);
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

- (void)_processWifiScanResults:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v31 = v4;
  v6 = [v4 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
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
            [(NSMutableDictionary *)self->targettedChannelsLastSeenDates setObject:v5 forKeyedSubscript:v13];
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

  [v5 timeIntervalSinceDate:self->lastTargettedScan];
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
          [v5 timeIntervalSinceDate:v26];
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

            objc_storeStrong((&self->super.super.super.isa + v30), v5);
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