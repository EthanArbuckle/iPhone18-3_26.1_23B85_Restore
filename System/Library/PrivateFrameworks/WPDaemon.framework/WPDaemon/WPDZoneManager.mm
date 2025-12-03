@interface WPDZoneManager
- (BOOL)updateScanner;
- (WPDZoneManager)initWithServer:(id)server;
- (id)addZoneTrackingRequest:(id)request forClient:(id)client;
- (id)generateStateDumpStrings;
- (id)getAllZones;
- (void)addSingleZoneTrackingRequest:(id)request forClient:(id)client;
- (void)cancelExitTimer;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didLoseZone:(id)zone mask:(id)mask;
- (void)cleanup;
- (void)exitTimerFired;
- (void)printTrackedZones;
- (void)startExitTimer;
- (void)unregisterAllZones;
- (void)unregisterZones:(id)zones forClient:(id)client;
- (void)unregisterZonesForClient:(id)client updateScanner:(BOOL)scanner;
- (void)update;
- (void)updateScanner;
@end

@implementation WPDZoneManager

- (WPDZoneManager)initWithServer:(id)server
{
  v27[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v25.receiver = self;
  v25.super_class = WPDZoneManager;
  v5 = [(WPDManager *)&v25 initWithServer:serverCopy Name:@"Zone Central"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBDFF8]);
    serverQueue = [serverCopy serverQueue];
    v26 = *MEMORY[0x277CBDF08];
    v27[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [v6 initWithDelegate:v5 queue:serverQueue options:v8];
    centralManager = v5->_centralManager;
    v5->_centralManager = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackedZones = v5->_trackedZones;
    v5->_trackedZones = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    trackRequests = v5->_trackRequests;
    v5->_trackRequests = dictionary2;

    zoneExitTimeout = v5->_zoneExitTimeout;
    v5->_zoneExitTimeout = &unk_2882019E8;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
    v18 = [v17 objectForKeyedSubscript:@"WIPROX"];

    v19 = [v18 objectForKeyedSubscript:@"ZoneTrackerTimeout"];
    if (v19)
    {
      objc_storeStrong(&v5->_zoneExitTimeout, v19);
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager initWithServer:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDZoneManager initWithServer:?];
      }
    }

    exitTimer = v5->_exitTimer;
    v5->_exitTimer = 0;

    v5->_scanAllowlisted = [(WPDManager *)v5 isScanAllowlistedForType:2];
    v21 = [MEMORY[0x277CBEB98] setWithObject:v5->_centralManager];
    [(WPDManager *)v5 setCbManagers:v21];

    wpdState = [serverCopy wpdState];
    [wpdState registerManager:v5->_centralManager];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)cleanup
{
  [(WPDZoneManager *)self cancelExitTimer];
  [(WPDZoneManager *)self unregisterAllZones];
  v3.receiver = self;
  v3.super_class = WPDZoneManager;
  [(WPDManager *)&v3 cleanup];
}

- (id)generateStateDumpStrings
{
  v3 = MEMORY[0x277CBEB18];
  v22.receiver = self;
  v22.super_class = WPDZoneManager;
  generateStateDumpStrings = [(WPDManager *)&v22 generateStateDumpStrings];
  v5 = [v3 arrayWithArray:generateStateDumpStrings];

  if ([(WPDManager *)self isInternalBuild])
  {
    v6 = MEMORY[0x277CCACA8];
    scanAllowlisted = [(WPDZoneManager *)self scanAllowlisted];
    v8 = "no";
    if (scanAllowlisted)
    {
      v8 = "yes";
    }

    v9 = [v6 stringWithFormat:@"scan allowlisted: %s\n", v8];
    [v5 addObject:v9];
  }

  v10 = MEMORY[0x277CCACA8];
  trackRequests = [(WPDZoneManager *)self trackRequests];
  v12 = [v10 stringWithFormat:@"trackRequests (%ld):\n", objc_msgSend(trackRequests, "count")];
  [v5 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v15 = [v13 stringWithFormat:@"trackedZones (%ld):\n", objc_msgSend(trackedZones, "count")];
  [v5 addObject:v15];

  trackedZones2 = [(WPDZoneManager *)self trackedZones];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__WPDZoneManager_generateStateDumpStrings__block_invoke;
  v20[3] = &unk_279E59448;
  v21 = v5;
  v17 = v5;
  [trackedZones2 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v17];

  return v18;
}

void __42__WPDZoneManager_generateStateDumpStrings__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"zone %@: %@\n", a2, a3];
  [v3 addObject:v4];
}

- (void)update
{
  v11 = *MEMORY[0x277D85DE8];
  state = [(WPDManager *)self state];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDZoneManager update];
        }

        v4 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10[0]) = 0;
          v5 = "Zone Central manager is resetting";
LABEL_18:
          _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, v5, v10, 2u);
          goto LABEL_19;
        }
      }

      goto LABEL_19;
    }

LABEL_10:
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager update];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      centralManager = [(WPDZoneManager *)self centralManager];
      v10[0] = 67109120;
      v10[1] = [centralManager state];
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Zone Central manager is  unknown, powered off, unauthorized or not supported (%d)", v10, 8u);
    }

    goto LABEL_19;
  }

  if (state != 3)
  {
    if (state != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager update];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    v5 = "Zone Central manager is powered on";
    goto LABEL_18;
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v36 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  iCopy = i;
  v11 = [data objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  v12 = v11;
  if (v11)
  {
    if ([v11 length] > 3)
    {
      bytes = [v12 bytes];
      if (*bytes == 76 && !bytes[1] && bytes[2] == 2)
      {
        v16 = bytes + 4;
        v17 = [v12 length] - 4;
        if ([iCopy integerValue] < -87 || objc_msgSend(iCopy, "integerValue") == 127)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
          }

          v18 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            v14 = v18;
            intValue = [iCopy intValue];
            v20 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v17];
            *buf = 67109378;
            *v33 = intValue;
            *&v33[4] = 2112;
            *&v33[6] = v20;
            _os_log_debug_impl(&dword_272965000, v14, OS_LOG_TYPE_DEBUG, "RSSI invalid for zone entry (%d dBm - %@)", buf, 0x12u);

            goto LABEL_7;
          }
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
          }

          v21 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            v24 = v21;
            name = [peripheralCopy name];
            v26 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v17];
            *buf = 138412802;
            *v33 = name;
            *&v33[8] = 2112;
            *&v33[10] = v26;
            v34 = 2048;
            v35 = v17;
            _os_log_debug_impl(&dword_272965000, v24, OS_LOG_TYPE_DEBUG, "Discovered a zone peripheral %@ with data (%@) of length (%lu)", buf, 0x20u);
          }

          trackedZones = [(WPDZoneManager *)self trackedZones];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181;
          v27[3] = &unk_279E59470;
          v30 = v17;
          v31 = v16;
          v28 = peripheralCopy;
          selfCopy = self;
          [trackedZones enumerateKeysAndObjectsUsingBlock:v27];
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        *buf = 134218242;
        *v33 = [v12 length];
        *&v33[8] = 2112;
        *&v33[10] = v12;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_INFO, "Zones: Expected minimum advertisement data length: 4, received: %lu, with content: %@", buf, 0x16u);
LABEL_7:
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"kData"];
  v8 = *(a1 + 48);
  if (v8 >= [v7 length] && !memcmp(*(a1 + 56), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length")))
  {
    if (WPLogInitOnce != -1)
    {
      __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_1();
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_2(a1, v9);
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    [v6 setObject:v10 forKeyedSubscript:@"kLastSeen"];

    v11 = [v6 objectForKeyedSubscript:@"kInZone"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"kPendingExit"];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        if (WPLogInitOnce != -1)
        {
          __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_4();
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_5();
        }

        [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kPendingExit"];
      }
    }

    else
    {
      v26 = v5;
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kInZone"];
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 56) length:*(a1 + 48)];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = [v6 objectForKeyedSubscript:@"kWPClientUUIDs"];
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [*(a1 + 40) server];
            v23 = [v22 getClientForUUID:v21];
            [v23 enteredZone:v7 manufacturerData:v15];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v18);
      }

      if (WPLogInitOnce != -1)
      {
        __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_3();
      }

      v5 = v26;
      v24 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = v7;
        v33 = 2114;
        v34 = v15;
        _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_DEFAULT, "Entered zone: %{public}@, manufacturer data: %{public}@", buf, 0x16u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didLoseZone:(id)zone mask:(id)mask
{
  zoneCopy = zone;
  maskCopy = mask;
  bytes = [maskCopy bytes];
  bytes2 = [zoneCopy bytes];
  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager centralManager:didLoseZone:mask:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDZoneManager centralManager:v11 didLoseZone:zoneCopy mask:?];
  }

  trackedZones = [(WPDZoneManager *)self trackedZones];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194;
  v15[3] = &unk_279E59498;
  v19 = bytes;
  v20 = bytes2;
  v16 = maskCopy;
  selfCopy = self;
  v18 = zoneCopy;
  v13 = zoneCopy;
  v14 = maskCopy;
  [trackedZones enumerateKeysAndObjectsUsingBlock:v15];

  [(WPDZoneManager *)self printTrackedZones];
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kData"];
  v6 = malloc_type_calloc([*(a1 + 32) length], 1uLL, 0x100004077774924uLL);
  memcpy(v6, [v5 bytes], objc_msgSend(v5, "length"));
  if (WPLogInitOnce != -1)
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_2();
  }

  if ([*(a1 + 32) length])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ([v5 length] < v7 && *(*(a1 + 56) + v7) == 255 || v6[v7] != *(*(a1 + 64) + v7))
      {
        v8 = 0;
      }

      ++v7;
    }

    while ([*(a1 + 32) length] > v7);
    free(v6);
    if ((v8 & 1) == 0)
    {
      if (WPLogInitOnce != -1)
      {
        __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_3();
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_4();
      }

      goto LABEL_39;
    }
  }

  else
  {
    free(v6);
  }

  if (WPLogInitOnce != -1)
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_5();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_6();
  }

  v9 = [v4 objectForKeyedSubscript:@"kInZone"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_9();
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Exited zone: %{public}@", buf, 0xCu);
    }

    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kInZone"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v4 objectForKeyedSubscript:{@"kWPClientUUIDs", 0}];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [*(a1 + 40) server];
          v19 = [v18 getClientForUUID:v17];
          [v19 exitedZone:v5];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_7();
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_8(a1, v4, v20);
    }
  }

LABEL_39:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)printTrackedZones
{
  trackedZones = [(WPDZoneManager *)self trackedZones];
  [trackedZones enumerateKeysAndObjectsUsingBlock:&__block_literal_global_210_0];
}

void __35__WPDZoneManager_printTrackedZones__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (WPLogInitOnce != -1)
  {
    __35__WPDZoneManager_printTrackedZones__block_invoke_cold_1();
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __35__WPDZoneManager_printTrackedZones__block_invoke_cold_2(v4, v6, v5);
  }
}

- (BOOL)updateScanner
{
  v67 = *MEMORY[0x277D85DE8];
  if ([(WPDManager *)self state]!= 3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v27 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      centralManager = [(WPDZoneManager *)self centralManager];
      *buf = 67109120;
      LODWORD(v60) = [centralManager state];
      _os_log_impl(&dword_272965000, v28, OS_LOG_TYPE_DEFAULT, "Zones: updateScanner - central is not powered on: %d", buf, 8u);
    }

    goto LABEL_47;
  }

  if (![(WPDZoneManager *)self scanAllowlisted])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v30 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v60 = 2;
      _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "Zones: not tracking for client type (%ld) when denylisted or not allowlisted", buf, 0xCu);
    }

    goto LABEL_47;
  }

  centralManager2 = [(WPDZoneManager *)self centralManager];
  [centralManager2 stopScan];

  trackedZones = [(WPDZoneManager *)self trackedZones];
  v5 = [trackedZones count];

  if (!v5)
  {
    [(WPDZoneManager *)self cancelExitTimer];
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDZoneManager updateScanner];
    }

LABEL_47:
    v31 = 0;
    goto LABEL_48;
  }

  array = [MEMORY[0x277CBEB18] array];
  trackedZones2 = [(WPDZoneManager *)self trackedZones];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __31__WPDZoneManager_updateScanner__block_invoke_227;
  v57[3] = &unk_279E59448;
  v8 = array;
  v58 = v8;
  [trackedZones2 enumerateKeysAndObjectsUsingBlock:v57];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  trackRequests = [(WPDZoneManager *)self trackRequests];
  allValues = [trackRequests allValues];

  v43 = [allValues countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (!v43)
  {

    goto LABEL_50;
  }

  v40 = v8;
  obj = allValues;
  v42 = *v54;
  v11 = 0xFFFFLL;
  v12 = 0xFFFFLL;
  do
  {
    v13 = 0;
    do
    {
      if (*v54 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = v13;
      v14 = *(*(&v53 + 1) + 8 * v13);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      allValues2 = [v14 allValues];
      v16 = [allValues2 countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v50;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v50 != v18)
            {
              objc_enumerationMutation(allValues2);
            }

            v20 = *(*(&v49 + 1) + 8 * i);
            server = [(WPDManager *)self server];
            if ([server screenOff])
            {
              v22 = &v47;
              if (!v20)
              {
                goto LABEL_22;
              }

              [v20 scanningRates];
              v23 = v48;
            }

            else
            {
              v22 = &v46;
              if (!v20)
              {
LABEL_22:
                *v22 = 0;
                v22[1] = 0;
                v22[2] = 0;

                v24 = 0;
                v12 &= v12 >> 63;
                v45 = 0;
                goto LABEL_23;
              }

              [v20 scanningRates];
              v23 = v46;
            }

            if (v23 < v12)
            {
              v12 = v23;
            }

            [v20 scanningRates];
            v24 = v45;
LABEL_23:
            if (v24 < v11)
            {
              v11 = v24;
            }
          }

          v17 = [allValues2 countByEnumeratingWithState:&v49 objects:v65 count:16];
        }

        while (v17);
      }

      v13 = v44 + 1;
    }

    while (v44 + 1 != v43);
    v43 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
  }

  while (v43);

  v8 = v40;
  if (v12 >= 0xFFFF)
  {
LABEL_50:
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "Scanning rate is too high or not set - not scanning";
LABEL_54:
      _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    }

LABEL_55:
    v31 = 0;
    goto LABEL_56;
  }

  if (v11 >= 0xFFFF)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "Scanning window is too high or not set - not scanning";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  centralManager3 = [(WPDZoneManager *)self centralManager];
  v35 = *MEMORY[0x277CBDEF8];
  v63[0] = *MEMORY[0x277CBDE70];
  v63[1] = v35;
  v64[0] = v40;
  v64[1] = MEMORY[0x277CBEC38];
  v63[2] = *MEMORY[0x277CBDE58];
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v64[2] = v36;
  v63[3] = *MEMORY[0x277CBDE38];
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v64[3] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];
  [centralManager3 scanForPeripheralsWithServices:0 options:v38];

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager updateScanner];
  }

  v39 = WiProxLog;
  v8 = v40;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v60 = v11;
    v61 = 2048;
    v62 = v12;
    _os_log_impl(&dword_272965000, v39, OS_LOG_TYPE_DEFAULT, "Started scan for zones %ld (Window) %ld (Interval)", buf, 0x16u);
  }

  [(WPDZoneManager *)self startExitTimer];
  v31 = 1;
LABEL_56:

LABEL_48:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void __31__WPDZoneManager_updateScanner__block_invoke_227(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"kData"];
  [*(a1 + 32) addObject:?];
  v4 = -1;
  do
  {
    ++v4;
  }

  while ([v5 length] > v4);
}

- (void)startExitTimer
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  lastTimeScannerStarted = [a2 lastTimeScannerStarted];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_272965000, selfCopy, OS_LOG_TYPE_ERROR, "startExitTimer failed to start: (%@)", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __32__WPDZoneManager_startExitTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained exitTimerFired];
    [v2 setExitTimer:0];
    WeakRetained = v2;
  }
}

- (void)cancelExitTimer
{
  exitTimer = [(WPDZoneManager *)self exitTimer];

  if (exitTimer)
  {
    exitTimer2 = [(WPDZoneManager *)self exitTimer];
    v5 = dispatch_source_testcancel(exitTimer2);

    if (!v5)
    {
      exitTimer3 = [(WPDZoneManager *)self exitTimer];
      dispatch_source_cancel(exitTimer3);
    }

    [(WPDZoneManager *)self setExitTimer:0];
  }
}

- (void)exitTimerFired
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  lastTimeScannerStarted = [a3 lastTimeScannerStarted];
  [self timeIntervalSinceDate:lastTimeScannerStarted];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __32__WPDZoneManager_exitTimerFired__block_invoke_244(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kInZone"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kLastSeen"];
    v8 = [*(a1 + 32) lastTimeScannerStarted];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 < 0.0)
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kInZone"];
      v11 = [v4 objectForKeyedSubscript:@"kData"];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [v4 objectForKeyedSubscript:{@"kWPClientUUIDs", 0}];
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [*(a1 + 32) server];
            v19 = [v18 getClientForUUID:v17];
            [v19 exitedZone:v11];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);
      }

      if (WPLogInitOnce != -1)
      {
        __32__WPDZoneManager_exitTimerFired__block_invoke_244_cold_1();
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v27 = v7;
        v28 = 2114;
        v29 = v11;
        _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "Too long since last seen (%{public}@). Exiting zone: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addSingleZoneTrackingRequest:(id)request forClient:(id)client
{
  v45 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  zones = [requestCopy zones];
  anyObject = [zones anyObject];
  v10 = [anyObject description];

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v10;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Adding zone %@", buf, 0xCu);
  }

  trackRequests = [(WPDZoneManager *)self trackRequests];
  dictionary = [trackRequests objectForKeyedSubscript:clientCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackRequests2 = [(WPDZoneManager *)self trackRequests];
    [trackRequests2 setObject:dictionary forKey:clientCopy];
  }

  [dictionary setObject:requestCopy forKey:v10];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v16 = [trackedZones objectForKeyedSubscript:v10];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"kWPClientUUIDs"];
    [v17 addObject:clientCopy];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      trackedZones2 = [(WPDZoneManager *)self trackedZones];
      v21 = [trackedZones2 count];
      trackedZones3 = [(WPDZoneManager *)self trackedZones];
      *buf = 138413058;
      v38 = clientCopy;
      v39 = 2114;
      v40 = v10;
      v41 = 2048;
      v42 = v21;
      v43 = 2114;
      v44 = trackedZones3;
      _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Added client %@ to zone %{public}@. Currently tracking %ld zones %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v23 = [MEMORY[0x277CBEB58] setWithObject:clientCopy];
    v24 = MEMORY[0x277CBEB38];
    zones2 = [requestCopy zones];
    anyObject2 = [zones2 anyObject];
    v36[0] = anyObject2;
    v36[1] = MEMORY[0x277CBEC28];
    v35[1] = @"kInZone";
    v35[2] = @"kWPClientUUIDs";
    v36[2] = v23;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v16 = [v24 dictionaryWithDictionary:v27];

    trackedZones4 = [(WPDZoneManager *)self trackedZones];
    [trackedZones4 setObject:v16 forKey:v10];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
    }

    v29 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      trackedZones5 = [(WPDZoneManager *)self trackedZones];
      v32 = [trackedZones5 count];
      trackedZones6 = [(WPDZoneManager *)self trackedZones];
      *buf = 138544130;
      v38 = v10;
      v39 = 2112;
      v40 = clientCopy;
      v41 = 2048;
      v42 = v32;
      v43 = 2114;
      v44 = trackedZones6;
      _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "Added zone %{public}@ for client %@. Currently tracking %ld zones %{public}@", buf, 0x2Au);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)addZoneTrackingRequest:(id)request forClient:(id)client
{
  v77[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  if ([(WPDManager *)self state]== 3)
  {
    selfCopy = self;
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    zones = [requestCopy zones];
    v10 = [v8 initWithCapacity:{objc_msgSend(zones, "count")}];

    zones2 = [requestCopy zones];
    v12 = [zones2 count];

    v13 = v10;
    if (v12 == 1)
    {
      [v10 addObject:requestCopy];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager addZoneTrackingRequest:forClient:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        zones3 = [requestCopy zones];
        *buf = 134217984;
        *&buf[4] = [zones3 count];
        _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Multiple zones in one request, breaking down into %ld one-zone-per-request", buf, 0xCu);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      zones4 = [requestCopy zones];
      v22 = [zones4 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v66;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v66 != v24)
            {
              objc_enumerationMutation(zones4);
            }

            v26 = *(*(&v65 + 1) + 8 * i);
            v27 = objc_opt_new();
            [v27 setClientType:{objc_msgSend(requestCopy, "clientType")}];
            if (requestCopy)
            {
              [requestCopy scanningRates];
            }

            else
            {
              v63 = 0uLL;
              v64 = 0;
            }

            *buf = v63;
            *&buf[16] = v64;
            [v27 setScanningRates:buf];
            v28 = [MEMORY[0x277CBEB58] setWithObject:v26];
            [v27 setZones:v28];

            [v10 addObject:v27];
          }

          v23 = [zones4 countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v23);
      }

      clientCopy = v53;
    }

    trackedZones = [(WPDZoneManager *)selfCopy trackedZones];
    allKeys = [trackedZones allKeys];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    zones5 = [requestCopy zones];
    v32 = [zones5 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v60;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v60 != v35)
          {
            objc_enumerationMutation(zones5);
          }

          v37 = [*(*(&v59 + 1) + 8 * j) description];
          v34 += [allKeys containsObject:v37] ^ 1;
        }

        v33 = [zones5 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    trackedZones2 = [(WPDZoneManager *)selfCopy trackedZones];
    v39 = 30 - [trackedZones2 count];

    if (v39 >= v34)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v42 = v13;
      v46 = v13;
      v47 = [v46 countByEnumeratingWithState:&v55 objects:v69 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v56;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v56 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [(WPDZoneManager *)selfCopy addSingleZoneTrackingRequest:*(*(&v55 + 1) + 8 * k) forClient:clientCopy];
          }

          v48 = [v46 countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v48);
      }

      [(WPDZoneManager *)selfCopy updateScanner];
      v16 = 0;
    }

    else
    {
      v40 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA450];
      v73 = @"Tracking the maximum number of zones available within the chips";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v16 = [v40 errorWithDomain:@"WPErrorDomain" code:4 userInfo:v41];

      v42 = v13;
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager addZoneTrackingRequest:forClient:];
      }

      v43 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        zones6 = [requestCopy zones];
        *buf = 138543874;
        *&buf[4] = zones6;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        *&buf[22] = 2048;
        v71 = v39;
        _os_log_impl(&dword_272965000, v44, OS_LOG_TYPE_DEFAULT, "Could not add zones (%{public}@): asked to add %ld, can only add %ld new zones", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v76 = *MEMORY[0x277CCA450];
    v77[0] = @"CoreBluetooth is currently powered off";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v15];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addZoneTrackingRequest:forClient:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDZoneManager addZoneTrackingRequest:v17 forClient:self];
    }
  }

  v51 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)unregisterZones:(id)zones forClient:(id)client
{
  v67 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  clientCopy = client;
  if (zonesCopy && [zonesCopy count])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZones:forClient:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v58 = zonesCopy;
      v59 = 2112;
      v60 = clientCopy;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering zones: %{public}@ for client %@", buf, 0x16u);
    }

    trackRequests = [(WPDZoneManager *)self trackRequests];
    v9 = [trackRequests objectForKeyedSubscript:clientCopy];

    if (v9)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = zonesCopy;
      v11 = [v10 countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v54;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v54 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v53 + 1) + 8 * i) description];
            [v9 removeObjectForKey:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v12);
      }

      if (![v9 count])
      {
        trackRequests2 = [(WPDZoneManager *)self trackRequests];
        [trackRequests2 removeObjectForKey:clientCopy];
      }
    }

    v44 = v9;
    v45 = zonesCopy;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = zonesCopy;
    v17 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      v46 = *v50;
      do
      {
        v20 = 0;
        do
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v49 + 1) + 8 * v20) description];
          trackedZones = [(WPDZoneManager *)self trackedZones];
          v23 = [trackedZones objectForKeyedSubscript:v21];

          if (v23)
          {
            v24 = [v23 objectForKeyedSubscript:@"kWPClientUUIDs"];
            v25 = v24;
            if (!v24)
            {
              goto LABEL_29;
            }

            [v24 removeObject:clientCopy];
            if (WPLogInitOnce != -1)
            {
              [WPDZoneManager unregisterZones:forClient:];
            }

            v26 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              trackedZones2 = [(WPDZoneManager *)self trackedZones];
              v29 = [trackedZones2 count];
              trackedZones3 = [(WPDZoneManager *)self trackedZones];
              *buf = 138413058;
              v58 = clientCopy;
              v59 = 2114;
              v60 = v21;
              v61 = 2048;
              v62 = v29;
              v19 = v46;
              v63 = 2114;
              v64 = trackedZones3;
              _os_log_impl(&dword_272965000, v27, OS_LOG_TYPE_DEFAULT, "Removed client %@ from zone (%{public}@), currently tracking %ld zones %{public}@ ", buf, 0x2Au);
            }

            if (![v25 count])
            {
LABEL_29:
              trackedZones4 = [(WPDZoneManager *)self trackedZones];
              [trackedZones4 removeObjectForKey:v21];

              if (WPLogInitOnce != -1)
              {
                [WPDZoneManager unregisterZones:forClient:];
              }

              v32 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                v33 = v32;
                trackedZones5 = [(WPDZoneManager *)self trackedZones];
                v35 = [trackedZones5 count];
                trackedZones6 = [(WPDZoneManager *)self trackedZones];
                *buf = 138543874;
                v58 = v21;
                v59 = 2048;
                v60 = v35;
                v19 = v46;
                v61 = 2114;
                v62 = trackedZones6;
                _os_log_impl(&dword_272965000, v33, OS_LOG_TYPE_DEFAULT, "Removed zone (%{public}@), currently tracking %ld zones %{public}@ ", buf, 0x20u);
              }
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
      }

      while (v18);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZones:forClient:];
    }

    v37 = v44;
    zonesCopy = v45;
    v38 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      trackedZones7 = [(WPDZoneManager *)self trackedZones];
      v41 = [trackedZones7 count];
      trackedZones8 = [(WPDZoneManager *)self trackedZones];
      *buf = 134218242;
      v58 = v41;
      v59 = 2114;
      v60 = trackedZones8;
      _os_log_impl(&dword_272965000, v39, OS_LOG_TYPE_DEFAULT, "Now tracking %ld zones: %{public}@", buf, 0x16u);
    }

    [(WPDZoneManager *)self updateScanner:v44];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)unregisterZonesForClient:(id)client updateScanner:(BOOL)scanner
{
  scannerCopy = scanner;
  v41 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager unregisterZonesForClient:updateScanner:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDZoneManager unregisterZonesForClient:updateScanner:];
  }

  trackRequests = [(WPDZoneManager *)self trackRequests];
  v6 = [trackRequests count] == 0;

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }
  }

  else
  {
    trackRequests2 = [(WPDZoneManager *)self trackRequests];
    [trackRequests2 removeObjectForKey:clientCopy];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__1;
    v34 = __Block_byref_object_dispose__1;
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trackedZones = [(WPDZoneManager *)self trackedZones];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288;
    v27[3] = &unk_279E59508;
    v28 = clientCopy;
    v29 = &v30;
    [trackedZones enumerateKeysAndObjectsUsingBlock:v27];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v31[5];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v40 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          trackedZones2 = [(WPDZoneManager *)self trackedZones];
          [trackedZones2 removeObjectForKey:v13];

          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager unregisterZonesForClient:updateScanner:];
          }

          v15 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v37 = v13;
            _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Removed zone (%{public}@)", buf, 0xCu);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v40 count:16];
      }

      while (v10);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      trackedZones3 = [(WPDZoneManager *)self trackedZones];
      v18 = [trackedZones3 count];
      trackedZones4 = [(WPDZoneManager *)self trackedZones];
      *buf = 134218242;
      v37 = v18;
      v38 = 2114;
      v39 = trackedZones4;
      _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Now tracking %ld zones: %{public}@", buf, 0x16u);
    }

    if (scannerCopy)
    {
      [(WPDZoneManager *)self updateScanner];
    }

    _Block_object_dispose(&v30, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"kWPClientUUIDs"];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  [v6 removeObject:*(a1 + 32)];
  if (WPLogInitOnce != -1)
  {
    __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288_cold_1();
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412546;
    v12 = v9;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Removed client %@ from zone %{public}@", &v11, 0x16u);
  }

  if (![v7 count])
  {
LABEL_7:
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getAllZones
{
  v2 = MEMORY[0x277CBEAC0];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v4 = [v2 dictionaryWithDictionary:trackedZones];

  return v4;
}

- (void)unregisterAllZones
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(void *)a1 didLoseZone:(void *)a2 mask:.cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Exiting a zone we're not meant to be in:\n%@\n%@)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __35__WPDZoneManager_printTrackedZones__block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"kInZone"];
  if ([v6 BOOLValue])
  {
    v7 = @"IN";
  }

  else
  {
    v7 = @"OUT";
  }

  v8 = [a3 objectForKeyedSubscript:@"kLastSeen"];
  v10 = 138412802;
  v11 = a1;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_272965000, v5, OS_LOG_TYPE_DEBUG, "\t%@: %@ last:%@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateScanner
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addZoneTrackingRequest:(void *)a1 forClient:(void *)a2 .cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109120;
  v5[1] = [a2 state];
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Failed to start tracking a zone - central is not powered on %d", v5, 8u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unregisterZonesForClient:updateScanner:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterZonesForClient:updateScanner:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end