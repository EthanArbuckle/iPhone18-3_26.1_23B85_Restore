@interface RTCompanionLinkManager
- (BOOL)companionLinkConnected;
- (RTCompanionLinkManager)initWithCompanionLinkClient:(id)a3 dailyBlueSkyMetrics:(id)a4 defaultsManager:(id)a5;
- (RTCompanionLinkManager)initWithDefaultsManager:(id)a3;
- (id)decodeEvent:(id)a3;
- (id)encodeEvent:(id)a3 identifier:(id)a4 error:(id *)a5;
- (void)_handleCompanionAwake;
- (void)_notifyIdentifier:(id)a3 event:(id)a4;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_registerForEventWithIdentifier:(id)a3 handler:(id)a4;
- (void)_sendEvent:(id)a3 identifier:(id)a4 handler:(id)a5;
- (void)_setup;
- (void)_updatePendingSyncMetrics:(id)a3;
- (void)_updateSyncCachedMetrics:(id)a3;
- (void)_updateSyncMetrics:(id)a3;
- (void)_updateSyncSuccessMetrics:(id)a3 waitRequired:(BOOL)a4;
- (void)onDailyMetricsNotification:(id)a3;
- (void)registerCompanionLinkEventHandler;
- (void)registerForEventWithIdentifier:(id)a3 handler:(id)a4;
- (void)sendEvent:(id)a3 identifier:(id)a4 handler:(id)a5;
@end

@implementation RTCompanionLinkManager

- (RTCompanionLinkManager)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D44160]);
    v6 = [[RTBlueSkyDailyMetrics alloc] initWithDefaultsManager:v4];
    self = [(RTCompanionLinkManager *)self initWithCompanionLinkClient:v5 dailyBlueSkyMetrics:v6 defaultsManager:v4];

    v7 = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (RTCompanionLinkManager)initWithCompanionLinkClient:(id)a3 dailyBlueSkyMetrics:(id)a4 defaultsManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(location[0]) = 0;
    v26 = "Invalid parameter not satisfying: companionLinkClient";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, location, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(location[0]) = 0;
    v26 = "Invalid parameter not satisfying: dailyBlueSkyMetrics";
    goto LABEL_13;
  }

  if (!v11)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v26 = "Invalid parameter not satisfying: defaultsManager";
      goto LABEL_13;
    }

LABEL_14:

    v24 = 0;
    goto LABEL_15;
  }

  v35.receiver = self;
  v35.super_class = RTCompanionLinkManager;
  v13 = [(RTNotifier *)&v35 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_client, a3);
    [(RPCompanionLinkClient *)v14->_client setControlFlags:32];
    v15 = [(RTNotifier *)v14 queue];
    [(RPCompanionLinkClient *)v14->_client setDispatchQueue:v15];

    v14->_companionAwake = 0;
    v16 = objc_opt_new();
    companionLinkEventHandlerDictionary = v14->_companionLinkEventHandlerDictionary;
    v14->_companionLinkEventHandlerDictionary = v16;

    objc_storeStrong(&v14->_dailyBlueSkyMetrics, a4);
    objc_storeStrong(&v14->_defaultsManager, a5);
    v18 = objc_opt_new();
    sleepCacheDictionary = v14->_sleepCacheDictionary;
    v14->_sleepCacheDictionary = v18;

    objc_initWeak(location, v14);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke;
    v32[3] = &unk_2788D3580;
    objc_copyWeak(&v33, location);
    v20 = [(RTCompanionLinkManager *)v14 client];
    [v20 setDeviceFoundHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke_30;
    v30[3] = &unk_2788D3580;
    objc_copyWeak(&v31, location);
    v21 = [(RTCompanionLinkManager *)v14 client];
    [v21 setDeviceLostHandler:v30];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke_31;
    v28[3] = &unk_2788D35A8;
    objc_copyWeak(&v29, location);
    v22 = [(RTCompanionLinkManager *)v14 client];
    [v22 setDeviceChangedHandler:v28];

    [(RTCompanionLinkManager *)v14 registerCompanionLinkEventHandler];
    v23 = [(RTCompanionLinkManager *)v14 client];
    [v23 activateWithCompletion:&__block_literal_global_157];

    [(RTService *)v14 setup];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  self = v14;
  v24 = self;
LABEL_15:

  return v24;
}

void __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 model];
  v6 = v5;
  v7 = @"Unknown Model";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 name];
  v10 = v9;
  v11 = @"Unknown Name";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  [WeakRetained setCompanionAwake:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v3 effectiveIdentifier];
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "onDeviceFound, id, %@, name, %@, model, %@", &v15, 0x20u);
    }
  }
}

void __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke_30(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 model];
  v6 = v5;
  v7 = @"Unknown Model";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 name];
  v10 = v9;
  v11 = @"Unknown Name";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  [WeakRetained setCompanionAwake:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v3 effectiveIdentifier];
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "onDeviceLost, id, %@, name, %@, model, %@", &v15, 0x20u);
    }
  }
}

void __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke_31(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 statusFlags];

  if ((v5 & 0x20) != 0)
  {
    [WeakRetained setCompanionAwake:0];
  }

  else
  {
    [WeakRetained setCompanionAwake:1];
    [WeakRetained _handleCompanionAwake];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [WeakRetained companionAwake];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "onDeviceChanged, updated to companionAwake: %@", &v9, 0xCu);
    }
  }
}

void __90__RTCompanionLinkManager_initWithCompanionLinkClient_dailyBlueSkyMetrics_defaultsManager___block_invoke_39(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "client activate, error, %@", &v4, 0xCu);
    }
  }
}

- (void)_setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTCompanionLinkManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onDailyMetricsNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v9, 0x16u);
    }
  }

  v8 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
  [v8 submit];
}

- (id)encodeEvent:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTCompanionLinkManager encodeEvent:identifier:error:]";
      v26 = 1024;
      LODWORD(v27) = 164;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  v10 = objc_opt_new();
  if (!v7)
  {
    v11 = 0;
LABEL_18:
    [v10 setObject:v8 forKeyedSubscript:@"payloadType"];
    v16 = v10;
    v13 = 0;
    goto LABEL_25;
  }

  if (([v8 isEqualToString:@"labeledVisit"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"POIUpdate") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"POIArrayUpdate") & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"vehicleEvent"))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "encoding unsupported eventId: %@", buf, 0xCu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"unsupported event identifier";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

    if (a5)
    {
      v21 = v13;
      v11 = 0;
      goto LABEL_15;
    }

    v11 = 0;
    goto LABEL_24;
  }

  v23 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v23];
  v12 = v23;
  if (!v12)
  {
    [v10 setObject:v11 forKeyedSubscript:@"payload"];
    goto LABEL_18;
  }

  v13 = v12;
  v14 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v25 = v13;
    v26 = 2112;
    v27 = v8;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "encoding error, %@ for eventId: %@", buf, 0x16u);
  }

  if (a5)
  {
    v15 = v13;
LABEL_15:
    v16 = 0;
    *a5 = v13;
    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
LABEL_25:

  return v16;
}

- (id)decodeEvent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTCompanionLinkManager decodeEvent:]";
      v21 = 1024;
      LODWORD(v22) = 201;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", buf, 0x12u);
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"payloadType"];
  v6 = [v3 objectForKeyedSubscript:@"payload"];
  if ([v5 isEqualToString:@"labeledVisit"])
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18];
    v8 = v18;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"POIUpdate"])
  {
    v17 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
    v8 = v17;
LABEL_9:
    v9 = v8;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (![v5 isEqualToString:@"POIArrayUpdate"])
  {
    if (![v5 isEqualToString:@"vehicleEvent"])
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "decoding error, unknown eventId type, %@", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_13;
    }

    v15 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
    v8 = v15;
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v16 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v14 fromData:v6 error:&v16];
  v9 = v16;

  if (v9)
  {
LABEL_10:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "decoding error, %@, for eventId type: %@", buf, 0x16u);
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)registerCompanionLinkEventHandler
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "registering companion link event handler", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  client = self->_client;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__RTCompanionLinkManager_registerCompanionLinkEventHandler__block_invoke;
  v5[3] = &unk_2788D35D0;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  [(RPCompanionLinkClient *)client registerEventID:@"com.apple.routined.rapport.companionLinkEventUpdate" options:0 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __59__RTCompanionLinkManager_registerCompanionLinkEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 objectForKeyedSubscript:@"payloadType"];
  v6 = [WeakRetained decodeEvent:v3];

  if (v5 == @"labeledVisit")
  {
    v7 = @"BlueSkyDailyNumVisitsReceived";
  }

  else
  {
    if (v5 != @"POIArrayUpdate")
    {
      goto LABEL_6;
    }

    v7 = @"BlueSkyDailyNumPlaceInferencesReceived";
  }

  v8 = [*(a1 + 32) dailyBlueSkyMetrics];
  [v8 increaseCountForKey:v7];

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412547;
      v12 = v5;
      v13 = 2117;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "received an event update from a nearby device. identifier, %@, event, %{sensitive}@", &v11, 0x16u);
    }
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "notify the event to registered clients", &v11, 2u);
      }
    }

    [WeakRetained _notifyIdentifier:v5 event:v6];
  }
}

- (BOOL)companionLinkConnected
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(RTCompanionLinkManager *)self client];
  v3 = [v2 activeDevices];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 statusFlags])
        {
          LOBYTE(v4) = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v4 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
            if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v14 = v7;
              _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "companion link connected device %@", buf, 0xCu);
            }

            LOBYTE(v4) = 1;
          }

          goto LABEL_14;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v4;
}

- (void)sendEvent:(id)a3 identifier:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__RTCompanionLinkManager_sendEvent_identifier_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_sendEvent:(id)a3 identifier:(id)a4 handler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_23;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: identifier";
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_10;
  }

  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: handler";
    goto LABEL_25;
  }

  if ([(RTCompanionLinkManager *)self companionLinkConnected])
  {
    v28 = 0;
    v12 = [(RTCompanionLinkManager *)self encodeEvent:v8 identifier:v9 error:&v28];
    v13 = v28;
    if (v12)
    {
      [(RTCompanionLinkManager *)self _updateSyncMetrics:v9];
      if ([(RTCompanionLinkManager *)self companionAwake])
      {
        v14 = [(RTCompanionLinkManager *)self client];
        v15 = *MEMORY[0x277D44230];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __56__RTCompanionLinkManager__sendEvent_identifier_handler___block_invoke;
        v24[3] = &unk_2788C4EC8;
        v25 = v9;
        v26 = self;
        v27 = v11;
        [v14 sendEventID:@"com.apple.routined.rapport.companionLinkEventUpdate" event:v12 destinationID:v15 options:0 completion:v24];
      }

      else
      {
        v20 = [v12 objectForKeyedSubscript:@"payload"];
        v21 = [(RTCompanionLinkManager *)self sleepCacheDictionary];
        [v21 setObject:v20 forKeyedSubscript:v9];

        [(RTCompanionLinkManager *)self _updateSyncCachedMetrics:v9];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v9;
            _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "send event identifier %@ to paired companion device, caching for future", buf, 0xCu);
          }
        }

        v11[2](v11, 1);
      }
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        v30 = v13;
        v31 = 2117;
        v32 = v8;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "encoding error %@, for event, %{sensitive}@", buf, 0x16u);
      }

      v11[2](v11, 0);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [(RPCompanionLinkClient *)self->_client activeDevices];
      *buf = 138412290;
      v30 = v23;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "no connected clients, %@", buf, 0xCu);
    }

    v11[2](v11, 0);
  }

LABEL_23:
}

void __56__RTCompanionLinkManager__sendEvent_identifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "send event identifier %@ to paired companion device, error, %@", &v6, 0x16u);
    }
  }

  if (!v3)
  {
    [*(a1 + 40) _updateSyncSuccessMetrics:*(a1 + 32) waitRequired:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)registerForEventWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTCompanionLinkManager_registerForEventWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_registerForEventWithIdentifier:(id)a3 handler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v20) = 0;
    v13 = "Invalid parameter not satisfying: identifier";
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v13, &v20, 2u);
    goto LABEL_15;
  }

  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v20) = 0;
    v13 = "Invalid parameter not satisfying: handler";
    goto LABEL_9;
  }

  v10 = [(NSMutableDictionary *)self->_companionLinkEventHandlerDictionary objectForKey:v7];
  if (v10)
  {
    v11 = v10;
    v12 = _Block_copy(v9);
    [v11 addObject:v12];
  }

  else
  {
    v14 = MEMORY[0x277CBEB18];
    v12 = _Block_copy(v9);
    v11 = [v14 arrayWithObject:v12];
  }

  [(NSMutableDictionary *)self->_companionLinkEventHandlerDictionary setObject:v11 forKey:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = [(NSMutableDictionary *)self->_companionLinkEventHandlerDictionary count];
      v20 = 138413058;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, number of events registered, %lu, for identifier %@", &v20, 0x2Au);
    }
  }

LABEL_15:
}

- (void)_notifyIdentifier:(id)a3 event:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_companionLinkEventHandlerDictionary objectForKey:v6];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v22 = [v8 count];
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "get interested clients, number of handlers, %lu", buf, 0xCu);
      }
    }

    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v8;
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            if (v14)
            {
              (*(v14 + 16))(v14, v7, 0);
            }

            else
            {
              v15 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v22 = v6;
                _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "failed to find valid handler for client identifier, %@", buf, 0xCu);
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }
  }
}

- (void)_handleCompanionAwake
{
  v3 = [(RTCompanionLinkManager *)self sleepCacheDictionary];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke;
  v4[3] = &unk_2788C5890;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v5 forKeyedSubscript:@"payloadType"];
  [v7 setObject:v6 forKeyedSubscript:@"payload"];
  objc_initWeak(&location, *(a1 + 32));
  v8 = [*(a1 + 32) client];
  v9 = *MEMORY[0x277D44230];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke_2;
  v12[3] = &unk_2788D35F8;
  objc_copyWeak(&v15, &location);
  v10 = v5;
  v11 = *(a1 + 32);
  v13 = v10;
  v14 = v11;
  [v8 sendEventID:@"com.apple.routined.rapport.companionLinkEventUpdate" event:v7 destinationID:v9 options:0 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke_3;
  v8[3] = &unk_2788CBEA8;
  v9 = *(a1 + 32);
  v10 = v3;
  v6 = *(a1 + 40);
  v11 = WeakRetained;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __47__RTCompanionLinkManager__handleCompanionAwake__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityCompanionLink);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "re-sending cached event identifier %@ to paired companion device, error, %@", &v6, 0x16u);
    }
  }

  v5 = [*(a1 + 48) sleepCacheDictionary];
  [v5 removeObjectForKey:*(a1 + 32)];

  if (!*(a1 + 40))
  {
    [*(a1 + 56) _updatePendingSyncMetrics:*(a1 + 32)];
  }
}

- (void)_updateSyncMetrics:(id)a3
{
  v4 = a3;
  if (v4 == @"labeledVisit")
  {
    v7 = v4;
    v5 = @"BlueSkyDailyQualifiedVisits";
  }

  else
  {
    if (v4 != @"POIArrayUpdate")
    {
      goto LABEL_6;
    }

    v7 = v4;
    v5 = @"BlueSkyDailyQualifiedPlaceInferences";
  }

  v6 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
  [v6 increaseCountForKey:v5];

  v4 = v7;
LABEL_6:
}

- (void)_updateSyncCachedMetrics:(id)a3
{
  v4 = a3;
  if (v4 == @"labeledVisit")
  {
    v6 = v4;
    v5 = [MEMORY[0x277CBEAA8] now];
    [(RTCompanionLinkManager *)self setLastVisitSyncAttemptDate:v5];
  }

  else
  {
    if (v4 != @"POIArrayUpdate")
    {
      goto LABEL_6;
    }

    v6 = v4;
    v5 = [MEMORY[0x277CBEAA8] now];
    [(RTCompanionLinkManager *)self setLastPlaceInferenceSyncAttemptDate:v5];
  }

  v4 = v6;
LABEL_6:
}

- (void)_updateSyncSuccessMetrics:(id)a3 waitRequired:(BOOL)a4
{
  v6 = a3;
  v11 = v6;
  if (v6 == @"labeledVisit")
  {
    v7 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
    v8 = v7;
    v9 = @"BlueSkyDailyQualifiedVisitsSent";
  }

  else
  {
    if (v6 != @"POIArrayUpdate")
    {
      goto LABEL_7;
    }

    v7 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
    v8 = v7;
    v9 = @"BlueSkyDailyQualifiedPlaceInferencesSent";
  }

  [v7 increaseCountForKey:v9];

  v6 = v11;
  if (!a4)
  {
    v10 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
    [v10 increaseCountForKey:@"BlueSkyDailyNumSyncsRequiringNoWait"];

    v6 = v11;
  }

LABEL_7:
}

- (void)_updatePendingSyncMetrics:(id)a3
{
  v5 = [MEMORY[0x277CBEAA8] now];
  if (a3 == @"labeledVisit")
  {
    v15 = v5;
    v8 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
    [v8 increaseCountForKey:@"BlueSkyDailyQualifiedVisitsSent"];

    v7 = [(RTCompanionLinkManager *)self lastVisitSyncAttemptDate];
    goto LABEL_5;
  }

  if (a3 == @"POIArrayUpdate")
  {
    v15 = v5;
    v6 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
    [v6 increaseCountForKey:@"BlueSkyDailyQualifiedPlaceInferencesSent"];

    v7 = [(RTCompanionLinkManager *)self lastPlaceInferenceSyncAttemptDate];
LABEL_5:
    v9 = v7;
    [v15 timeIntervalSinceDate:v7];
    v11 = v10;
    if (v10 >= 10.0)
    {
      if (v10 >= 20.0)
      {
        if (v10 >= 30.0)
        {
          if (v10 >= 60.0)
          {
            if (v10 >= 120.0)
            {
              v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
              v13 = v12;
              if (v11 >= 600.0)
              {
                v14 = @"BlueSkyDailyNumSyncsRequiring5MinPlusWait";
              }

              else
              {
                v14 = @"BlueSkyDailyNumSyncsRequiring5MinWait";
              }
            }

            else
            {
              v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
              v13 = v12;
              v14 = @"BlueSkyDailyNumSyncsRequiring2MinWait";
            }
          }

          else
          {
            v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
            v13 = v12;
            v14 = @"BlueSkyDailyNumSyncsRequiring1MinWait";
          }
        }

        else
        {
          v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
          v13 = v12;
          v14 = @"BlueSkyDailyNumSyncsRequiring30SecWait";
        }
      }

      else
      {
        v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
        v13 = v12;
        v14 = @"BlueSkyDailyNumSyncsRequiring20SecWait";
      }
    }

    else
    {
      v12 = [(RTCompanionLinkManager *)self dailyBlueSkyMetrics];
      v13 = v12;
      v14 = @"BlueSkyDailyNumSyncsRequiring10SecWait";
    }

    [v12 increaseCountForKey:v14];

    v5 = v15;
  }
}

@end