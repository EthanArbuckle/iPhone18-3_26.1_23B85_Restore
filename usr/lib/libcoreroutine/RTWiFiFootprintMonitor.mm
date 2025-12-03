@interface RTWiFiFootprintMonitor
+ (id)footprintStateToString:(int64_t)string;
- (RTWiFiFootprintMonitor)initWithWiFiManager:(id)manager;
- (int64_t)_footprintStateForScanResults:(id)results;
- (void)_checkFootprint;
- (void)_processScanResults:(id)results;
- (void)_pruneScanResults;
- (void)_shutdownWithHandler:(id)handler;
- (void)_start;
- (void)_stop;
- (void)fetchConstantFootprintStatusForScanResults:(id)results withHandler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onWiFiManagerNotificationPowerStatusChanged:(id)changed;
- (void)onWiFiManagerNotificationScanResults:(id)results;
- (void)setFootprintState:(int64_t)state;
@end

@implementation RTWiFiFootprintMonitor

- (RTWiFiFootprintMonitor)initWithWiFiManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = RTWiFiFootprintMonitor;
  v6 = [(RTNotifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wifiManager, manager);
    v7->_footprintState = -1;
    v8 = objc_opt_new();
    scanResults = v7->_scanResults;
    v7->_scanResults = v8;
  }

  return v7;
}

- (void)_start
{
  wifiManager = self->_wifiManager;
  v4 = +[(RTNotification *)RTWiFiManagerNotificationScanResults];
  [(RTNotifier *)wifiManager addObserver:self selector:sel_onWiFiManagerNotificationScanResults_ name:v4];

  v5 = self->_wifiManager;
  v6 = +[(RTNotification *)RTWiFiManagerNotificationPowerStatusChanged];
  [(RTNotifier *)v5 addObserver:self selector:sel_onWiFiManagerNotificationPowerStatusChanged_ name:v6];

  v7 = +[(RTNotification *)RTWiFiFootprintStateNotification];
  v8 = MEMORY[0x277CCACA8];
  defaultsDomain = [MEMORY[0x277CCAA00] defaultsDomain];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v8 stringWithFormat:@"%@-%@-%@", defaultsDomain, v11, v7];

  v13 = [RTPersistentTimer alloc];
  date = [MEMORY[0x277CBEAA8] date];
  queue = [(RTNotifier *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__RTWiFiFootprintMonitor__start__block_invoke;
  v17[3] = &unk_2788C4EA0;
  v17[4] = self;
  v16 = [(RTPersistentTimer *)v13 initWithFireDate:date interval:v12 serviceIdentifier:queue queue:v17 handler:30.0];
  [(RTWiFiFootprintMonitor *)self setScanTimer:v16];
}

- (void)_stop
{
  [(RTNotifier *)self->_wifiManager removeObserver:self];
  [(RTWiFiManager *)self->_wifiManager cancelScan];
  scanTimer = [(RTWiFiFootprintMonitor *)self scanTimer];
  [scanTimer invalidate];

  [(RTWiFiFootprintMonitor *)self setScanTimer:0];

  [(RTWiFiFootprintMonitor *)self setFootprintState:-1];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTWiFiFootprintMonitor *)self _stop];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTWiFiFootprintStateNotification];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      [(RTWiFiFootprintMonitor *)self _start];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v9, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTWiFiFootprintStateNotification];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
    {
      [(RTWiFiFootprintMonitor *)self _stop];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v9, 0xCu);
    }
  }
}

- (void)onWiFiManagerNotificationScanResults:(id)results
{
  resultsCopy = results;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTWiFiFootprintMonitor_onWiFiManagerNotificationScanResults___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = resultsCopy;
  v6 = resultsCopy;
  dispatch_async(queue, v7);
}

void __63__RTWiFiFootprintMonitor_onWiFiManagerNotificationScanResults___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) scanResults];
  [v1 _processScanResults:v2];
}

- (void)onWiFiManagerNotificationPowerStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTWiFiFootprintMonitor_onWiFiManagerNotificationPowerStatusChanged___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

uint64_t __70__RTWiFiFootprintMonitor_onWiFiManagerNotificationPowerStatusChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) powerStatus];

  return [v1 _handlePowerStatusChanged:v2];
}

- (void)setFootprintState:(int64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  footprintState = self->_footprintState;
  if (footprintState != state)
  {
    self->_footprintState = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTWiFiFootprintMonitor footprintStateToString:footprintState];
        v7 = [RTWiFiFootprintMonitor footprintStateToString:self->_footprintState];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "footprint state changed from, %@, to, %@.", &v9, 0x16u);
      }
    }

    v8 = [[RTWiFiFootprintStateNotification alloc] initWithFootprintState:self->_footprintState];
    [(RTNotifier *)self postNotification:v8];
  }
}

- (void)fetchConstantFootprintStatusForScanResults:(id)results withHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__RTWiFiFootprintMonitor_fetchConstantFootprintStatusForScanResults_withHandler___block_invoke;
    block[3] = &unk_2788C6210;
    v11 = handlerCopy;
    block[4] = self;
    v10 = resultsCopy;
    dispatch_async(queue, block);
  }
}

uint64_t __81__RTWiFiFootprintMonitor_fetchConstantFootprintStatusForScanResults_withHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _footprintStateForScanResults:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (int64_t)_footprintStateForScanResults:(id)results
{
  v39 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-125.0];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke;
  v33[3] = &unk_2788CA728;
  v6 = v5;
  v34 = v6;
  v35 = v36;
  [resultsCopy enumerateObjectsWithOptions:2 usingBlock:v33];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_2;
  v28[3] = &unk_2788CA778;
  v30 = v32;
  v31 = v36;
  v7 = v4;
  v29 = v7;
  [resultsCopy enumerateObjectsWithOptions:2 usingBlock:v28];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_4;
  v15[3] = &unk_2788CA7C8;
  v15[4] = &v20;
  v15[5] = &v16;
  v15[6] = v36;
  v15[7] = &v24;
  [v7 enumerateKeysAndObjectsUsingBlock:v15];
  v8 = v21[3];
  v9 = v17[3] + v8;
  if (v9)
  {
    v10 = v8 / v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v38 = v10;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "access point results, overall Duty Cycle, %f", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  v13 = v10 > 0.4 && v25[3] > 1;
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v36, 8);

  return v13;
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__67;
  v14 = __Block_byref_object_dispose__67;
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3153600000.0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_24;
  v9[3] = &unk_2788CA700;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = [v11[5] laterDate:*(a1 + 32)];
  v8 = [v7 isEqualToDate:v11[5]];

  if (v8)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v10, 8);
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_24(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v11 date];
  v5 = [v3 laterDate:v4];
  v6 = [v11 date];
  v7 = [v5 isEqualToDate:v6];

  if (v7)
  {
    v8 = [v11 date];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == *(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_3;
    v7[3] = &unk_2788CA750;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v13 = v3;
  v5 = [v3 mac];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "rssi")}];
    [v6 setObject:v7 atIndexedSubscript:*(*(a1[5] + 8) + 24)];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (*(*(a1[6] + 8) + 24))
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:500];
        [v7 addObject:v9];

        ++v8;
      }

      while (v8 < *(*(a1[6] + 8) + 24));
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "rssi")}];
    [v7 setObject:v10 atIndexedSubscript:*(*(a1[5] + 8) + 24)];

    v11 = a1[4];
    v12 = [v13 mac];
    [v11 setObject:v7 forKeyedSubscript:v12];
  }
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_4(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_5;
  v15[3] = &unk_2788CA7A0;
  v15[4] = &v28;
  v15[5] = &v24;
  v15[6] = &v20;
  v15[7] = &v16;
  [v6 enumerateObjectsUsingBlock:v15];
  v7 = v21;
  *(*(a1[4] + 8) + 24) += v21[3];
  *(*(a1[5] + 8) + 24) += v17[3];
  v8 = v7[3];
  if (v8 >= 1)
  {
    v9 = v29[3] / v8;
    v10 = sqrt(v25[3] / v8 - v9 * v9);
    v11 = v8 / *(*(a1[6] + 8) + 24);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = v21[3];
        v14 = v17[3];
        *buf = 138413570;
        v33 = v5;
        v34 = 2048;
        v35 = v9;
        v36 = 2048;
        v37 = v10;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v14;
        v42 = 2048;
        v43 = v11;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "access point results, mac, %@, exp, %f, std, %f, valid Samples, %d, invalid Samples, %d, settled Feature, %.2f", buf, 0x36u);
      }
    }

    if (v9 >= -75.0 && v11 >= 0.7 && v21[3] >= 3 && v10 < 5.0)
    {
      ++*(*(a1[7] + 8) + 24);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __56__RTWiFiFootprintMonitor__footprintStateForScanResults___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 integerValue] > 499)
  {
    v4 = 56;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) += [v5 integerValue];
    v3 = [v5 integerValue];
    *(*(*(a1 + 40) + 8) + 24) += [v5 integerValue] * v3;
    v4 = 48;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
}

- (void)_checkFootprint
{
  scanResults = [(RTWiFiFootprintMonitor *)self scanResults];
  [(RTWiFiFootprintMonitor *)self setFootprintState:[(RTWiFiFootprintMonitor *)self _footprintStateForScanResults:scanResults]];

  [(RTWiFiFootprintMonitor *)self _pruneScanResults];
}

- (void)_processScanResults:(id)results
{
  v13 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = [resultsCopy count];
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "process %lu scan results", buf, 0xCu);
    }
  }

  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__RTWiFiFootprintMonitor__processScanResults___block_invoke;
  v9[3] = &unk_2788CA7F0;
  v7 = v6;
  v10 = v7;
  [resultsCopy enumerateObjectsUsingBlock:v9];
  if ([v7 count])
  {
    scanResults = [(RTWiFiFootprintMonitor *)self scanResults];
    [scanResults addObject:v7];
  }

  [(RTWiFiFootprintMonitor *)self _checkFootprint];
}

void __46__RTWiFiFootprintMonitor__processScanResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWiFi);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218242;
      v9 = a3 + 1;
      v10 = 2112;
      v11 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%lu, %@", &v8, 0x16u);
    }
  }

  if ([v5 rssi] >= -84)
  {
    [v5 age];
    if (v7 < 5.0)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (void)_pruneScanResults
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-125.0];
  v4 = objc_opt_new();
  scanResults = [(RTWiFiFootprintMonitor *)self scanResults];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__RTWiFiFootprintMonitor__pruneScanResults__block_invoke;
  v12 = &unk_2788C4A48;
  v13 = v3;
  v14 = v4;
  v6 = v4;
  v7 = v3;
  [scanResults enumerateObjectsUsingBlock:&v9];

  v8 = [(RTWiFiFootprintMonitor *)self scanResults:v9];
  [v8 removeObjectsInArray:v6];
}

void __43__RTWiFiFootprintMonitor__pruneScanResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __43__RTWiFiFootprintMonitor__pruneScanResults__block_invoke_2;
  v9 = &unk_2788C4A48;
  v10 = *(a1 + 32);
  v5 = v4;
  v11 = v5;
  [v3 enumerateObjectsUsingBlock:&v6];
  [v3 removeObjectsInArray:{v5, v6, v7, v8, v9}];
  if (![v3 count])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __43__RTWiFiFootprintMonitor__pruneScanResults__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 date];
  v4 = [v3 earlierDate:*(a1 + 32)];
  v5 = [v7 date];
  v6 = [v4 isEqualToDate:v5];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

+ (id)footprintStateToString:(int64_t)string
{
  if ((string + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CA810[string + 1];
  }
}

@end