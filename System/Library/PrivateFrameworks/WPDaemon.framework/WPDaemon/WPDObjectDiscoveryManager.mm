@interface WPDObjectDiscoveryManager
- (BOOL)advertOptionsChanged:(id)changed;
- (BOOL)changedScanOptions:(id)options Clients:(id)clients;
- (BOOL)updateAdvertisingOptionsWithError:(id *)error;
- (BOOL)updateScanRules;
- (NSUUID)advertClientUUID;
- (OS_dispatch_queue)serverQueue;
- (WPDObjectDiscoveryManager)initWithServer:(id)server;
- (id)addAdvertisingRequest:(id)request forClient:(id)client;
- (id)addScanRequest:(id)request forClient:(id)client;
- (id)generateStateDumpStrings;
- (id)getScanRequestsForClient:(id)client;
- (id)removeAdvertisingRequest:(id)request forClient:(id)client;
- (id)rulesFromTokens:(id)tokens;
- (id)updateAdvertiser;
- (void)activateADVBuffer;
- (void)addScanStopTimer;
- (void)cancelScanStopTimer;
- (void)centralManager:(id)manager didDiscoverMultiplePeripherals:(id)peripherals;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToScanWithError:(id)error;
- (void)cleanup;
- (void)deactivateADVBuffer;
- (void)forceReadADVBuffer:(id)buffer;
- (void)peripheralManager:(id)manager didStopAdvertisingWithError:(id)error;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)removeAdvertisingRequestsForClient:(id)client;
- (void)removeScanRequestsForClient:(id)client;
- (void)resetAdvertiser;
- (void)startAdvertiser;
- (void)stopAdvertiser;
- (void)update;
- (void)updateAdvertiser;
- (void)updateClientsWithReports:(id)reports;
- (void)updateNearbyTokens:(id)tokens;
- (void)updateReports:(id)reports Peripheral:(id)peripheral AdvertisementData:(id)data RSSI:(id)i;
- (void)updateReports:(id)reports fromReport:(id)report;
- (void)updateScanRules;
- (void)updateScanner;
@end

@implementation WPDObjectDiscoveryManager

- (void)updateScanner
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)updateScanRules
{
  v72 = *MEMORY[0x277D85DE8];
  scanRequests = [(WPDObjectDiscoveryManager *)self scanRequests];
  v4 = [scanRequests count];

  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    scanRequests2 = [(WPDObjectDiscoveryManager *)self scanRequests];
    v7 = [scanRequests2 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v59;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v59 != v9)
          {
            objc_enumerationMutation(scanRequests2);
          }

          v11 = *(*(&v58 + 1) + 8 * i);
          if (-[WPDManager testMode](self, "testMode") && (-[WPDManager server](self, "server"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isClientTestMode:v11], v12, (v13 & 1) == 0))
          {
            if (WPLogInitOnce != -1)
            {
              [WPDObjectDiscoveryManager updateScanRules];
            }

            v17 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v11;
              _os_log_debug_impl(&dword_272965000, v17, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer Not adding for non-test client UUID: %@ when in test mode", buf, 0xCu);
            }
          }

          else
          {
            scanRequests3 = [(WPDObjectDiscoveryManager *)self scanRequests];
            v15 = [scanRequests3 objectForKeyedSubscript:v11];

            if ([v15 clientType] == 18)
            {
              [array addObject:v11];
            }

            else
            {
              if (WPLogInitOnce != -1)
              {
                [WPDObjectDiscoveryManager updateScanRules];
              }

              v16 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
              {
                [(WPDObjectDiscoveryManager *)v69 updateScanRules:v16];
              }
            }
          }
        }

        v8 = [scanRequests2 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v8);
    }

    v18 = array;
    if (![array count])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager updateScanRules];
      }

      v38 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v38, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer No valid clients to scan for - Stopping Scan", buf, 2u);
      }

      v37 = [(WPDObjectDiscoveryManager *)self changedScanOptions:0 Clients:0];
      goto LABEL_101;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = array;
    v19 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v19)
    {
      v21 = v19;
      v52 = 0;
      v22 = *v55;
      *&v20 = 138412290;
      v49 = v20;
      v50 = 0xFFFF;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v54 + 1) + 8 * v23);
          scanRequests4 = [(WPDObjectDiscoveryManager *)self scanRequests];
          v26 = [scanRequests4 objectForKeyedSubscript:v24];

          if (v26)
          {
            [v26 scanningRates];
            v27 = v53;
          }

          else
          {
            v27 = 0;
            v53 = 0;
          }

          if (WPLogInitOnce != -1)
          {
            [WPDObjectDiscoveryManager updateScanRules];
          }

          v28 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v63 = v24;
            v64 = 2112;
            *v65 = v26;
            _os_log_debug_impl(&dword_272965000, v28, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer client %@ request %@", buf, 0x16u);
          }

          if (([v26 advBuffer] & 4) != 0)
          {
            if (([v26 advBuffer] & 3) != 0)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDObjectDiscoveryManager updateScanRules];
              }

              v30 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = v49;
                v63 = v24;
                _os_log_debug_impl(&dword_272965000, v30, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer activating for client %@", buf, 0xCu);
              }

              v52 |= [v26 advBuffer];
              if (v27)
              {
                v31 = v50;
                v32 = v50;
                if (v27 < v50)
                {
                  v32 = v27;
                }

                if (v27 != 0xFFFF)
                {
                  v31 = v32;
                }

                v50 = v31;
              }
            }

            else
            {
              if (WPLogInitOnce != -1)
              {
                [WPDObjectDiscoveryManager updateScanRules];
              }

              v33 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
              {
                *buf = v49;
                v63 = v24;
                _os_log_error_impl(&dword_272965000, v33, OS_LOG_TYPE_ERROR, "ObjectDiscovery ADV Buffer no-buffer no-op for client %@", buf, 0xCu);
              }
            }
          }

          else
          {
            if (v27 != 0xFFFF)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDObjectDiscoveryManager updateScanRules];
              }

              v18 = array;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                [WPDObjectDiscoveryManager updateScanRules];
              }

              goto LABEL_78;
            }

            if (WPLogInitOnce != -1)
            {
              [WPDObjectDiscoveryManager updateScanRules];
            }

            v29 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = v49;
              v63 = v24;
              _os_log_debug_impl(&dword_272965000, v29, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer no-op for client %@", buf, 0xCu);
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v34 = v52;
      v18 = array;
      v35 = v50;
      if (v52 == 4)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDObjectDiscoveryManager updateScanRules];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPDObjectDiscoveryManager updateScanRules];
        }

        goto LABEL_79;
      }
    }

    else
    {
LABEL_78:

LABEL_79:
      v34 = 0;
      v35 = -1;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateScanRules];
    }

    v39 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDObjectDiscoveryManager *)v35 updateScanRules];
      if ((v34 & 4) == 0)
      {
        goto LABEL_84;
      }
    }

    else if ((v34 & 4) == 0)
    {
LABEL_84:
      v40 = 0;
LABEL_94:
      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager updateScanRules];
      }

      v45 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v46 = "activate";
        *buf = 136446979;
        if (!v40)
        {
          v46 = "deactivate";
        }

        v63 = v46;
        v64 = 1025;
        *v65 = 18;
        *&v65[4] = 2114;
        *&v65[6] = v40;
        v66 = 2113;
        v67 = obj;
        _os_log_impl(&dword_272965000, v45, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer about to %{public}s for type %{private}d with options %{public}@ for clients %{private}@", buf, 0x26u);
      }

      v37 = [(WPDObjectDiscoveryManager *)self changedScanOptions:v40 Clients:obj];

LABEL_101:
      goto LABEL_102;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v42 = dictionary;
    if (v34)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDDC8]];
    }

    if ((v34 & 2) != 0)
    {
      [v42 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDDC0]];
    }

    v43 = *MEMORY[0x277CBDE58];
    if (v35 == 0xFFFF)
    {
      [v42 setObject:&unk_2882019B8 forKeyedSubscript:v43];
      [v42 setObject:&unk_2882019B8 forKeyedSubscript:*MEMORY[0x277CBDE38]];
    }

    else
    {
      [v42 setObject:&unk_2882019D0 forKeyedSubscript:v43];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v35];
      [v42 setObject:v44 forKeyedSubscript:*MEMORY[0x277CBDE38]];
    }

    v40 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v42];

    goto LABEL_94;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateScanRules];
  }

  v36 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v36, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer Nothing left to scan for - Stopping Scan", buf, 2u);
  }

  v37 = [(WPDObjectDiscoveryManager *)self changedScanOptions:0 Clients:0];
LABEL_102:
  v47 = *MEMORY[0x277D85DE8];
  return v37;
}

- (WPDObjectDiscoveryManager)initWithServer:(id)server
{
  v36[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v33.receiver = self;
  v33.super_class = WPDObjectDiscoveryManager;
  v5 = [(WPDManager *)&v33 initWithServer:serverCopy Name:@"ObjectDiscovery"];
  if (v5)
  {
    serverQueue = [serverCopy serverQueue];
    objc_storeWeak(&v5->_serverQueue, serverQueue);

    v5->_advertising = 0;
    advertRequest = v5->_advertRequest;
    v5->_advertRequest = 0;

    objc_storeWeak(&v5->_advertClientUUID, 0);
    advertOptions = v5->_advertOptions;
    v5->_advertOptions = 0;

    v5->_advAllowlisted = [(WPDManager *)v5 isAdvertisingAllowlistedForType:18];
    v5->_scanAllowlisted = [(WPDManager *)v5 isScanAllowlistedForType:18];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    scanRequests = v5->_scanRequests;
    v5->_scanRequests = dictionary;

    v5->_scanning = 0;
    scanOptions = v5->_scanOptions;
    v5->_scanOptions = 0;

    v12 = [MEMORY[0x277CBEB58] set];
    currentScanners = v5->_currentScanners;
    v5->_currentScanners = v12;

    scanStopTimer = v5->_scanStopTimer;
    v5->_scanStopTimer = 0;

    v5->_advBuffersToRead = 0;
    nearbyTokensRequest = v5->_nearbyTokensRequest;
    v5->_nearbyTokensRequest = 0;

    matchActionRules = v5->_matchActionRules;
    v5->_matchActionRules = 0;

    v35 = *MEMORY[0x277CBDF08];
    v36[0] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v18 = objc_alloc(MEMORY[0x277CBE068]);
    WeakRetained = objc_loadWeakRetained(&v5->_serverQueue);
    v20 = [v18 initWithDelegate:v5 queue:WeakRetained options:v17];
    peripheralManager = v5->_peripheralManager;
    v5->_peripheralManager = v20;

    v22 = objc_alloc(MEMORY[0x277CBDFF8]);
    v23 = objc_loadWeakRetained(&v5->_serverQueue);
    v24 = [v22 initWithDelegate:v5 queue:v23 options:v17];
    centralManager = v5->_centralManager;
    v5->_centralManager = v24;

    v26 = MEMORY[0x277CBEB98];
    v34[0] = v5->_peripheralManager;
    v34[1] = v5->_centralManager;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v28 = [v26 setWithArray:v27];
    [(WPDManager *)v5 setCbManagers:v28];

    wpdState = [serverCopy wpdState];
    [wpdState registerManager:v5->_centralManager];

    wpdState2 = [serverCopy wpdState];
    [wpdState2 registerManager:v5->_peripheralManager];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)generateStateDumpStrings
{
  selfCopy = self;
  v75 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v71.receiver = self;
  v71.super_class = WPDObjectDiscoveryManager;
  generateStateDumpStrings = [(WPDManager *)&v71 generateStateDumpStrings];
  v5 = [v3 arrayWithArray:generateStateDumpStrings];

  v6 = MEMORY[0x277CCACA8];
  if ([(WPDObjectDiscoveryManager *)selfCopy advertising])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  advertClientUUID = [(WPDObjectDiscoveryManager *)selfCopy advertClientUUID];
  advertRequest = [(WPDObjectDiscoveryManager *)selfCopy advertRequest];
  v10 = [v6 stringWithFormat:@"advertising: %s client:%@ request:%@\n", v7, advertClientUUID, advertRequest];
  [v5 addObject:v10];

  if ([(WPDManager *)selfCopy isInternalBuild])
  {
    if (selfCopy->_advAllowlisted)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"advertising allowlisted: %s\n", v11];
    [v5 addObject:v12];
  }

  v13 = MEMORY[0x277CCACA8];
  if ([(WPDObjectDiscoveryManager *)selfCopy scanning])
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  scanOptions = [(WPDObjectDiscoveryManager *)selfCopy scanOptions];
  v16 = [v13 stringWithFormat:@"scanning: %s options: %@\n", v14, scanOptions];
  [v5 addObject:v16];

  if ([(WPDManager *)selfCopy isInternalBuild])
  {
    if (selfCopy->_scanAllowlisted)
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"scan allowlisted: %s\n", v17];
    [v5 addObject:v18];
  }

  v57 = v5;
  array = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  scanRequests = [(WPDObjectDiscoveryManager *)selfCopy scanRequests];
  allKeys = [(__CFString *)scanRequests allKeys];

  v21 = [allKeys countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v68;
    scanRequests = @"    %@: %@\n";
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v68 != v23)
        {
          objc_enumerationMutation(allKeys);
        }

        v25 = *(*(&v67 + 1) + 8 * i);
        v26 = MEMORY[0x277CCACA8];
        scanRequests2 = [(WPDObjectDiscoveryManager *)selfCopy scanRequests];
        [scanRequests2 objectForKeyedSubscript:v25];
        v29 = v28 = selfCopy;
        v30 = [v26 stringWithFormat:@"    %@: %@\n", v25, v29];
        [array addObject:v30];

        selfCopy = v28;
      }

      v22 = [allKeys countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v22);
  }

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"scan requests: %d\n", objc_msgSend(array, "count")];
  [v57 addObject:v31];

  [v57 addObjectsFromArray:array];
  v32 = MEMORY[0x277CCACA8];
  nearbyTokensRequest = [(WPDObjectDiscoveryManager *)selfCopy nearbyTokensRequest];
  v34 = nearbyTokensRequest;
  if (nearbyTokensRequest)
  {
    scanRequests = [(WPDObjectDiscoveryManager *)selfCopy nearbyTokensRequest];
    nearbyTokensRequest = [(__CFString *)scanRequests count];
  }

  v35 = [v32 stringWithFormat:@"near owner tokens (%d):\n", nearbyTokensRequest];
  [v57 addObject:v35];

  if (v34)
  {
  }

  nearbyTokensRequest2 = [(WPDObjectDiscoveryManager *)selfCopy nearbyTokensRequest];

  if (nearbyTokensRequest2)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    nearbyTokensRequest3 = [(WPDObjectDiscoveryManager *)selfCopy nearbyTokensRequest];
    v38 = [nearbyTokensRequest3 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v64;
      scanRequests = @"    %@\n";
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v64 != v40)
          {
            objc_enumerationMutation(nearbyTokensRequest3);
          }

          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@\n", *(*(&v63 + 1) + 8 * j)];
          [v57 addObject:v42];
        }

        v39 = [nearbyTokensRequest3 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v39);
    }
  }

  v43 = MEMORY[0x277CCACA8];
  matchActionRules = [(WPDObjectDiscoveryManager *)selfCopy matchActionRules];
  v45 = matchActionRules;
  if (matchActionRules)
  {
    scanRequests = [(WPDObjectDiscoveryManager *)selfCopy matchActionRules];
    matchActionRules = [(__CFString *)scanRequests count];
  }

  v46 = [v43 stringWithFormat:@"match action rules (%d):\n", matchActionRules];
  [v57 addObject:v46];

  if (v45)
  {
  }

  matchActionRules2 = [(WPDObjectDiscoveryManager *)selfCopy matchActionRules];

  if (matchActionRules2)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    matchActionRules3 = [(WPDObjectDiscoveryManager *)selfCopy matchActionRules];
    v49 = [matchActionRules3 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v60;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(matchActionRules3);
          }

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@\n", *(*(&v59 + 1) + 8 * k)];
          [v57 addObject:v53];
        }

        v50 = [matchActionRules3 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v50);
    }
  }

  v54 = [MEMORY[0x277CBEA60] arrayWithArray:v57];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (void)cleanup
{
  advertClientUUID = [(WPDObjectDiscoveryManager *)self advertClientUUID];
  [(WPDObjectDiscoveryManager *)self removeAdvertisingRequestsForClient:advertClientUUID];

  peripheralManager = [(WPDObjectDiscoveryManager *)self peripheralManager];
  [peripheralManager setDelegate:0];

  [(WPDObjectDiscoveryManager *)self setPeripheralManager:0];
  scanRequests = [(WPDObjectDiscoveryManager *)self scanRequests];
  [scanRequests removeAllObjects];

  [(WPDObjectDiscoveryManager *)self updateScanner];
  [(WPDObjectDiscoveryManager *)self updateNearbyTokens:0];
  centralManager = [(WPDObjectDiscoveryManager *)self centralManager];
  [centralManager setDelegate:0];

  [(WPDObjectDiscoveryManager *)self setCentralManager:0];
  v7.receiver = self;
  v7.super_class = WPDObjectDiscoveryManager;
  [(WPDManager *)&v7 cleanup];
}

- (void)update
{
  state = [(WPDManager *)self state];
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager update];
      }

      v4 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v9 = 0;
      v5 = "ObjectDiscovery manager is resetting";
      v6 = &v9;
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager update];
      }

      v4 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v5 = "ObjectDiscovery manager is unknown";
      v6 = buf;
    }

LABEL_18:
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
LABEL_19:
    [(WPDObjectDiscoveryManager *)self resetAdvertiser];
    return;
  }

  if (state != 3)
  {
    if (state != 2)
    {
      return;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager update];
    }

    v4 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v11 = 0;
    v5 = "ObjectDiscovery manager is powered off, unauthorized or not supported";
    v6 = &v11;
    goto LABEL_18;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager update];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery manager is powered on", v8, 2u);
  }
}

- (BOOL)advertOptionsChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager advertOptionsChanged:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDObjectDiscoveryManager *)v5 advertOptionsChanged:?];
    if (!changedCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!changedCopy)
  {
    goto LABEL_9;
  }

  advertOptions = [(WPDObjectDiscoveryManager *)self advertOptions];

  if (advertOptions)
  {
    advertOptions2 = [(WPDObjectDiscoveryManager *)self advertOptions];
    v8 = [changedCopy isEqual:advertOptions2];

    if (v8)
    {
      v9 = 0;
      goto LABEL_14;
    }
  }

LABEL_9:
  [(WPDObjectDiscoveryManager *)self setAdvertOptions:changedCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager advertOptionsChanged:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    advertOptions3 = [(WPDObjectDiscoveryManager *)self advertOptions];
    v17 = 138477827;
    v18 = advertOptions3;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery updated advertising options: %{private}@", &v17, 0xCu);
  }

  v9 = 1;
LABEL_14:
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager advertOptionsChanged:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "NO";
    if (v9)
    {
      v14 = "YES";
    }

    v17 = 136315138;
    v18 = v14;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery advertising data has changed: %s", &v17, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateAdvertisingOptionsWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateAdvertisingOptionsWithError:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager updateAdvertisingOptionsWithError:];
  }

  advertRequest = [(WPDObjectDiscoveryManager *)self advertRequest];

  if (advertRequest)
  {
    advertRequest2 = [(WPDObjectDiscoveryManager *)self advertRequest];
    advertisingOptions = [advertRequest2 advertisingOptions];
    v8 = [advertisingOptions objectForKeyedSubscript:*MEMORY[0x277CBDCB0]];

    if ([advertRequest2 clientType] == 18)
    {
      if ([v8 length] == 6)
      {
        goto LABEL_19;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update advertising because the address is not 6 bytes (%@)", v8];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update advertising because wrong client type %d", objc_msgSend(advertRequest2, "clientType")];
    }
    v11 = ;
    v12 = v11;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
      }

      v10 = [(WPDObjectDiscoveryManager *)self advertOptionsChanged:0];
LABEL_24:

      goto LABEL_25;
    }

LABEL_19:
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateAdvertisingOptionsWithError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      clientType = [advertRequest2 clientType];
      advertisingData = [advertRequest2 advertisingData];
      *buf = 134284291;
      v26 = clientType;
      v27 = 2113;
      v28 = advertisingData;
      v29 = 2049;
      advertisingRate = [advertRequest2 advertisingRate];
      v31 = 2113;
      v32 = v8;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery adding data of type: %{private}ld, advData: %{private}@ advInterval: %{private}ld address: %{private}@", buf, 0x2Au);
    }

    v12 = objc_opt_new();
    [v12 addAdvertisingRequest:advertRequest2];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v19 = MEMORY[0x277CBEC38];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBDD00]];
    [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CBDCB8]];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CBDEF8]];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "advertRate")}];
    [dictionary setObject:v20 forKeyedSubscript:@"kCBAdvOptionUseFGInterval"];

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "advertRate")}];
    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277CBDF18]];

    getData = [v12 getData];
    [dictionary setObject:getData forKeyedSubscript:*MEMORY[0x277CBDCD0]];

    v10 = [(WPDObjectDiscoveryManager *)self advertOptionsChanged:dictionary];
    goto LABEL_24;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateAdvertisingOptionsWithError:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Nothing left to advertise - Stopping Advertising", buf, 2u);
  }

  v10 = [(WPDObjectDiscoveryManager *)self advertOptionsChanged:0];
LABEL_25:
  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)resetAdvertiser
{
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager resetAdvertiser];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery will reset (stop) advertising", v4, 2u);
  }

  [(WPDObjectDiscoveryManager *)self setAdvertOptions:0];
  [(WPDObjectDiscoveryManager *)self setAdvertising:0];
}

- (void)stopAdvertiser
{
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager stopAdvertiser];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery will stop advertising", v5, 2u);
  }

  peripheralManager = [(WPDObjectDiscoveryManager *)self peripheralManager];
  [peripheralManager stopAdvertising];
}

- (void)startAdvertiser
{
  v11 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager startAdvertiser];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    advertOptions = [(WPDObjectDiscoveryManager *)self advertOptions];
    v9 = 138477827;
    v10 = advertOptions;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery will start advertising with options %{private}@", &v9, 0xCu);
  }

  peripheralManager = [(WPDObjectDiscoveryManager *)self peripheralManager];
  advertOptions2 = [(WPDObjectDiscoveryManager *)self advertOptions];
  [peripheralManager startAdvertising:advertOptions2];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)updateAdvertiser
{
  v13[1] = *MEMORY[0x277D85DE8];
  advertRequest = [(WPDObjectDiscoveryManager *)self advertRequest];

  if (!advertRequest)
  {
    [(WPDObjectDiscoveryManager *)self advertOptionsChanged:0];
    [(WPDObjectDiscoveryManager *)self stopAdvertiser];
LABEL_10:
    v6 = 0;
    goto LABEL_19;
  }

  if (![(WPDObjectDiscoveryManager *)self advAllowlisted])
  {
    advertRequest = @"ObjectDiscovery advertising is denylisted or not allowlisted";
LABEL_13:
    [(WPDObjectDiscoveryManager *)self advertOptionsChanged:0];
    goto LABEL_14;
  }

  if ([(WPDManager *)self state]!= 3)
  {
    advertRequest = @"Trying to update advertiser but peripheral manager isn't powered on";
    goto LABEL_13;
  }

  v11 = 0;
  v4 = [(WPDObjectDiscoveryManager *)self updateAdvertisingOptionsWithError:&v11];
  advertRequest = v11;
  if (v4)
  {
    [(WPDObjectDiscoveryManager *)self stopAdvertiser];
    advertOptions = [(WPDObjectDiscoveryManager *)self advertOptions];

    if (advertOptions)
    {
      [(WPDObjectDiscoveryManager *)self startAdvertiser];
    }
  }

  if (!advertRequest)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateAdvertiser];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDObjectDiscoveryManager updateAdvertiser];
  }

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = advertRequest;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [v7 errorWithDomain:@"WPErrorDomain" code:26 userInfo:v8];

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)addAdvertisingRequest:(id)request forClient:(id)client
{
  requestCopy = request;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager addAdvertisingRequest:forClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager addAdvertisingRequest:forClient:];
  }

  server = [(WPDManager *)self server];
  statsManager = [server statsManager];
  [statsManager startActivity:1 forType:18];

  server2 = [(WPDManager *)self server];
  statsManager2 = [server2 statsManager];
  [statsManager2 resetActivity:1 forType:18];

  [(WPDObjectDiscoveryManager *)self setAdvertRequest:requestCopy];
  [(WPDObjectDiscoveryManager *)self setAdvertClientUUID:clientCopy];
  updateAdvertiser = [(WPDObjectDiscoveryManager *)self updateAdvertiser];

  return updateAdvertiser;
}

- (id)removeAdvertisingRequest:(id)request forClient:(id)client
{
  requestCopy = request;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager removeAdvertisingRequest:forClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager removeAdvertisingRequest:forClient:];
  }

  server = [(WPDManager *)self server];
  statsManager = [server statsManager];
  [statsManager stopActivity:1 forType:18];

  server2 = [(WPDManager *)self server];
  statsManager2 = [server2 statsManager];
  [statsManager2 resetActivity:1 forType:18];

  [(WPDObjectDiscoveryManager *)self setAdvertRequest:0];
  [(WPDObjectDiscoveryManager *)self setAdvertClientUUID:0];
  updateAdvertiser = [(WPDObjectDiscoveryManager *)self updateAdvertiser];

  return updateAdvertiser;
}

- (void)removeAdvertisingRequestsForClient:(id)client
{
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager removeAdvertisingRequestsForClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager removeAdvertisingRequestsForClient:];
  }

  advertClientUUID = [(WPDObjectDiscoveryManager *)self advertClientUUID];
  if (advertClientUUID != clientCopy)
  {
    goto LABEL_8;
  }

  advertRequest = [(WPDObjectDiscoveryManager *)self advertRequest];

  if (advertRequest)
  {
    advertClientUUID = [(WPDObjectDiscoveryManager *)self advertRequest];
    v7 = [(WPDObjectDiscoveryManager *)self removeAdvertisingRequest:advertClientUUID forClient:clientCopy];
LABEL_8:
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  advertisingCopy = advertising;
  errorCopy = error;
  if (errorCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:v8 error:errorCopy];
    }

    [(WPDObjectDiscoveryManager *)self setAdvertising:0];
    server = [(WPDManager *)self server];
    spObjectDiscoveryClient = [server spObjectDiscoveryClient];

    if (spObjectDiscoveryClient)
    {
      server2 = [(WPDManager *)self server];
      spObjectDiscoveryClient2 = [server2 spObjectDiscoveryClient];
      [spObjectDiscoveryClient2 advertisingFailedToStart:errorCopy ofType:18];
LABEL_14:

      goto LABEL_23;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Did start advertising", v16, 2u);
    }

    [(WPDObjectDiscoveryManager *)self setAdvertising:1];
    server3 = [(WPDManager *)self server];
    spObjectDiscoveryClient3 = [server3 spObjectDiscoveryClient];

    if (spObjectDiscoveryClient3)
    {
      server2 = [(WPDManager *)self server];
      spObjectDiscoveryClient2 = [server2 spObjectDiscoveryClient];
      [spObjectDiscoveryClient2 advertisingStartedOfType:18];
      goto LABEL_14;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryManager peripheralManagerDidStartAdvertising:error:];
    }
  }

LABEL_23:
}

- (void)peripheralManager:(id)manager didStopAdvertisingWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  if (errorCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManager:didStopAdvertisingWithError:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      localizedDescription = [errorCopy localizedDescription];
      v19 = 138412546;
      v20 = localizedDescription;
      v21 = 2048;
      code = [errorCopy code];
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Failed to stop advertising with error: %@ (%ld)", &v19, 0x16u);
    }
  }

  else
  {
    [(WPDObjectDiscoveryManager *)self setAdvertising:0];
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManager:didStopAdvertisingWithError:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Did stop advertising", &v19, 2u);
    }
  }

  server = [(WPDManager *)self server];
  statsManager = [server statsManager];
  [statsManager stopActivity:1 forType:18];

  server2 = [(WPDManager *)self server];
  spObjectDiscoveryClient = [server2 spObjectDiscoveryClient];

  if (spObjectDiscoveryClient)
  {
    server3 = [(WPDManager *)self server];
    spObjectDiscoveryClient2 = [server3 spObjectDiscoveryClient];
    [spObjectDiscoveryClient2 advertisingStoppedOfType:18 withError:errorCopy];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager peripheralManager:didStopAdvertisingWithError:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryManager peripheralManager:didStopAdvertisingWithError:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateReports:(id)reports fromReport:(id)report
{
  reportCopy = report;
  reportsCopy = reports;
  v10 = [reportCopy objectForKeyedSubscript:@"kCBMsgArgAdvertisementPeripheral"];
  v8 = [reportCopy objectForKeyedSubscript:@"kCBMsgArgRssi"];
  v9 = [reportCopy objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];

  [(WPDObjectDiscoveryManager *)self updateReports:reportsCopy Peripheral:v10 AdvertisementData:v9 RSSI:v8];
}

- (void)updateReports:(id)reports Peripheral:(id)peripheral AdvertisementData:(id)data RSSI:(id)i
{
  v48 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v13 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  bytes = [v13 bytes];
  v15 = [v13 length];
  if (v15 < 2 || *bytes != 76 || bytes[1])
  {
    goto LABEL_27;
  }

  v16 = v15;
  v33 = peripheralCopy;
  v34 = reportsCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v16 < 4)
  {
    goto LABEL_26;
  }

  v18 = &bytes[v16];
  v19 = bytes + 2;
  *&v17 = 134218242;
  v32 = v17;
  while (1)
  {
    v20 = *v19;
    v21 = v19 + 2;
    v22 = (v19[1] & 0x1F);
    v23 = v18 - (v19 + 2);
    if (v23 < v22)
    {
      break;
    }

    v24 = &v22[v21];
    if ((v20 - 28) <= 0xE4u)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager updateReports:Peripheral:AdvertisementData:RSSI:];
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        *buf = v32;
        v43 = v20;
        v44 = 2112;
        v45 = v13;
        _os_log_error_impl(&dword_272965000, v25, OS_LOG_TYPE_ERROR, "ObjectDiscovery ADV Buffer unsupported payload type %ld, data %@", buf, 0x16u);
      }

      goto LABEL_20;
    }

    if (v20 != 18)
    {
      goto LABEL_15;
    }

LABEL_19:
    v27 = [MEMORY[0x277CBEB28] dataWithBytes:bytes length:{2, v32}];
    [v27 appendBytes:v19 length:v22 + 2];
    v28 = [MEMORY[0x277CBEA90] dataWithData:v27];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
    [dictionary setObject:v28 forKey:v29];

LABEL_20:
    v19 = v24;
    if (v18 - v24 <= 1)
    {
      goto LABEL_26;
    }
  }

  if (v20 == 4)
  {
    v24 = &v21[v23];
    v22 = (v18 - (v19 + 2));
LABEL_15:
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateReports:Peripheral:AdvertisementData:RSSI:];
    }

    v26 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = v32;
      v43 = v20;
      v44 = 2112;
      v45 = v13;
      _os_log_debug_impl(&dword_272965000, v26, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer unexpected payload type %ld, data %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateReports:Peripheral:AdvertisementData:RSSI:];
  }

  v30 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218499;
    v43 = v20;
    v44 = 2048;
    v45 = v22;
    v46 = 2113;
    v47 = v13;
    _os_log_error_impl(&dword_272965000, v30, OS_LOG_TYPE_ERROR, "ObjectDiscovery ADV Buffer bad payload type %ld length %zu, data %{private}@", buf, 0x20u);
  }

LABEL_26:
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__WPDObjectDiscoveryManager_updateReports_Peripheral_AdvertisementData_RSSI___block_invoke_263;
  v36[3] = &unk_279E593F8;
  v37 = dataCopy;
  v38 = iCopy;
  peripheralCopy = v33;
  v39 = v33;
  v40 = v13;
  reportsCopy = v34;
  v41 = v34;
  [dictionary enumerateKeysAndObjectsUsingBlock:v36];

LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
}

void __77__WPDObjectDiscoveryManager_updateReports_Peripheral_AdvertisementData_RSSI___block_invoke_263(uint64_t a1, void *a2, void *a3)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CBDCE0]];
  v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CBDD40]];
  v18[0] = v6;
  v17[0] = @"kDeviceAdvertisingData";
  v17[1] = @"kDeviceAddress";
  v9 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x277CBEA90] data];
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v18[1] = v9;
  v18[2] = v11;
  v17[2] = @"kDeviceRSSI";
  v17[3] = @"kDevicePeripheralUUID";
  v12 = [v10 identifier];
  v13 = *(a1 + 56);
  v18[3] = v12;
  v18[4] = v13;
  v17[4] = @"kDeviceManufacturerData";
  v17[5] = @"kDeviceType";
  v18[5] = v5;
  v17[6] = @"kDeviceTime";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  }

  v18[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  if (!v8)
  {
  }

  if (!v7)
  {
  }

  [*(a1 + 64) addObject:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateClientsWithReports:(id)reports
{
  v22 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateClientsWithReports:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [reportsCopy count];
    currentScanners = [(WPDObjectDiscoveryManager *)self currentScanners];
    *buf = 134349314;
    v19 = v7;
    v20 = 2114;
    v21 = currentScanners;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer receiving %{public}lu reports for %{public}@ clients", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  serverQueue = [(WPDObjectDiscoveryManager *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267;
  block[3] = &unk_279E58EE8;
  objc_copyWeak(&v17, buf);
  dispatch_async(serverQueue, block);

  if (![reportsCopy count])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateClientsWithReports:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDObjectDiscoveryManager updateClientsWithReports:];
    }
  }

  currentScanners2 = [(WPDObjectDiscoveryManager *)self currentScanners];
  v11 = [currentScanners2 count] == 0;

  if (v11)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateClientsWithReports:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDObjectDiscoveryManager updateClientsWithReports:];
    }
  }

  else
  {
    currentScanners3 = [(WPDObjectDiscoveryManager *)self currentScanners];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279;
    v14[3] = &unk_279E59420;
    v14[4] = self;
    v15 = reportsCopy;
    [currentScanners3 enumerateObjectsUsingBlock:v14];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained scanStopTimer];

    if (v3)
    {
      [v2 setAdvBuffersToRead:{objc_msgSend(v2, "advBuffersToRead") - 1}];
      if (WPLogInitOnce != -1)
      {
        __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_1();
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_2(v4);
      }

      if ([v2 advBuffersToRead] <= 0)
      {
        if (WPLogInitOnce != -1)
        {
          __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_3();
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_4();
        }

        [v2 cancelScanStopTimer];
        [v2 deactivateADVBuffer];
        v5 = [v2 scanOptions];

        if (v5)
        {
          [v2 activateADVBuffer];
        }
      }
    }
  }
}

void __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) server];
  v5 = [v4 getClientForUUID:v3];

  if (v5)
  {
    if (WPLogInitOnce != -1)
    {
      __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279_cold_1();
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v10 = 138543618;
      v11 = v3;
      v12 = 2050;
      v13 = [v7 count];
      _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer telling client %{public}@ about %{public}lu reports", &v10, 0x16u);
    }

    [v5 discoveredDevices:*(a1 + 40)];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279_cold_2();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279_cold_3();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer UNEXPECTED didDiscoverPeripheral", v17, 2u);
  }

  v15 = objc_autoreleasePoolPush();
  v16 = objc_opt_new();
  [(WPDObjectDiscoveryManager *)self updateReports:v16 Peripheral:peripheralCopy AdvertisementData:dataCopy RSSI:iCopy];
  [(WPDObjectDiscoveryManager *)self updateClientsWithReports:v16];

  objc_autoreleasePoolPop(v15);
}

- (void)centralManager:(id)manager didDiscoverMultiplePeripherals:(id)peripherals
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralsCopy = peripherals;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager centralManager:didDiscoverMultiplePeripherals:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134349056;
    v24 = [peripheralsCopy count];
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer didDiscoverMultiplePeripherals %{public}lu peripherals", buf, 0xCu);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = peripheralsCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(WPDObjectDiscoveryManager *)self updateReports:v11 fromReport:*(*(&v18 + 1) + 8 * i), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [(WPDObjectDiscoveryManager *)self updateClientsWithReports:v11];
  objc_autoreleasePoolPop(v10);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)manager didFailToScanWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager centralManager:didFailToScanWithError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = errorCopy;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer didFailToScanWithError %{public}@", buf, 0xCu);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v10 = domain;
    if (domain == *MEMORY[0x277CBDEE8])
    {
      v11 = [errorCopy code] == 13;

      if (v11)
      {
        objc_initWeak(buf, self);
        serverQueue = [(WPDObjectDiscoveryManager *)self serverQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__WPDObjectDiscoveryManager_centralManager_didFailToScanWithError___block_invoke_296;
        block[3] = &unk_279E58EE8;
        objc_copyWeak(&v16, buf);
        dispatch_async(serverQueue, block);

        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager centralManager:didFailToScanWithError:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = errorCopy;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer UNEXPECTED didFailToScanWithError %{public}@", buf, 0xCu);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

void __67__WPDObjectDiscoveryManager_centralManager_didFailToScanWithError___block_invoke_296(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained scanStopTimer];

    if (v3)
    {
      if (WPLogInitOnce != -1)
      {
        __67__WPDObjectDiscoveryManager_centralManager_didFailToScanWithError___block_invoke_296_cold_1();
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "ObjectDiscovery ADV Buffer force-read failed", buf, 2u);
      }

      [v2 cancelScanStopTimer];
      [v2 deactivateADVBuffer];
      v5 = [v2 scanOptions];

      if (v5)
      {
        [v2 activateADVBuffer];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __67__WPDObjectDiscoveryManager_centralManager_didFailToScanWithError___block_invoke_296_cold_2();
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_INFO, "ObjectDiscovery ADV Buffer scan failed to start", v7, 2u);
      }

      [v2 setScanning:0];
    }
  }
}

- (id)rulesFromTokens:(id)tokens
{
  v16[2] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = tokensCopy;
  if (tokensCopy && [tokensCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") >> 1}];
    if ([v4 count])
    {
      v6 = 0;
      v7 = *MEMORY[0x277CBDD78];
      v8 = *MEMORY[0x277CBDD70];
      do
      {
        v15[0] = v7;
        v9 = [v4 objectAtIndexedSubscript:v6];
        v15[1] = v8;
        v16[0] = v9;
        v10 = [v4 objectAtIndexedSubscript:v6 + 1];
        v16[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
        [v5 addObject:v11];

        v6 += 2;
      }

      while ([v4 count] > v6);
    }

    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)updateNearbyTokens:(id)tokens
{
  v20 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateNearbyTokens:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Updating nearby tokens", &v18, 2u);
  }

  if (tokensCopy || ([(WPDObjectDiscoveryManager *)self nearbyTokensRequest], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    nearbyTokensRequest = [(WPDObjectDiscoveryManager *)self nearbyTokensRequest];
    v8 = [tokensCopy isEqual:nearbyTokensRequest] ^ 1;

    if (tokensCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateNearbyTokens:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager updateNearbyTokens:];
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
LABEL_15:
    [(WPDObjectDiscoveryManager *)self setNearbyTokensRequest:tokensCopy];
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateNearbyTokens:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDObjectDiscoveryManager updateNearbyTokens:v9];
    }

    v10 = [(WPDObjectDiscoveryManager *)self rulesFromTokens:tokensCopy];
    [(WPDObjectDiscoveryManager *)self setMatchActionRules:v10];

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateNearbyTokens:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      matchActionRules = [(WPDObjectDiscoveryManager *)self matchActionRules];
      v18 = 138412290;
      v19 = matchActionRules;
      _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Nearby tokens setMatchActionRules with rules: %@", &v18, 0xCu);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager updateNearbyTokens:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDObjectDiscoveryManager updateNearbyTokens:v14];
    }

    centralManager = [(WPDObjectDiscoveryManager *)self centralManager];
    matchActionRules2 = [(WPDObjectDiscoveryManager *)self matchActionRules];
    [centralManager setMatchActionRules:matchActionRules2];

    goto LABEL_33;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager updateNearbyTokens:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager updateNearbyTokens:];
  }

LABEL_33:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)changedScanOptions:(id)options Clients:(id)clients
{
  optionsCopy = options;
  clientsCopy = clients;
  scanOptions = [(WPDObjectDiscoveryManager *)self scanOptions];
  v9 = scanOptions;
  if (optionsCopy)
  {
    if (scanOptions)
    {
      scanOptions2 = [(WPDObjectDiscoveryManager *)self scanOptions];
      v11 = [optionsCopy isEqualToDictionary:scanOptions2] ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = scanOptions != 0;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager changedScanOptions:Clients:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager changedScanOptions:Clients:];
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else if (!v11)
  {
    goto LABEL_14;
  }

  [(WPDObjectDiscoveryManager *)self setScanOptions:optionsCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager changedScanOptions:Clients:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager changedScanOptions:Clients:];
  }

LABEL_14:
  currentScanners = [(WPDObjectDiscoveryManager *)self currentScanners];
  [currentScanners removeAllObjects];

  if (clientsCopy)
  {
    currentScanners2 = [(WPDObjectDiscoveryManager *)self currentScanners];
    [currentScanners2 addObjectsFromArray:clientsCopy];
  }

  return v11;
}

- (void)forceReadADVBuffer:(id)buffer
{
  bufferCopy = buffer;
  objc_initWeak(&location, self);
  serverQueue = [(WPDObjectDiscoveryManager *)self serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WPDObjectDiscoveryManager_forceReadADVBuffer___block_invoke;
  block[3] = &unk_279E590A0;
  objc_copyWeak(&v9, &location);
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_async(serverQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__WPDObjectDiscoveryManager_forceReadADVBuffer___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x277CBDDC8];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBDDC8]];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 objectForKeyedSubscript:v4];
      v8 = [v7 BOOLValue];

      v9 = v8 & 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x277CBDDC0];
    v11 = v3;
    v12 = [v11 objectForKeyedSubscript:v10];
    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:v10];
      v14 = [v13 BOOLValue];

      v15 = v14 & 1;
    }

    else
    {
      v15 = 0;
    }

    [WeakRetained setAdvBuffersToRead:(v15 + v9)];
    if (WPLogInitOnce != -1)
    {
      __48__WPDObjectDiscoveryManager_forceReadADVBuffer___block_invoke_cold_1();
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v20[0] = 67174913;
      v20[1] = 18;
      v21 = 1025;
      v22 = [WeakRetained advBuffersToRead];
      _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer force-read for type %{private}d buffers %{private}d", v20, 0xEu);
    }

    [WeakRetained addScanStopTimer];
    v18 = [WeakRetained centralManager];
    [v18 scanForPeripheralsWithServices:0 options:*(a1 + 32)];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)activateADVBuffer
{
  v12 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager activateADVBuffer];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    scanOptions = [(WPDObjectDiscoveryManager *)self scanOptions];
    v9[0] = 67174915;
    v9[1] = 18;
    v10 = 2113;
    v11 = scanOptions;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer activate for type %{private}d with options %{private}@", v9, 0x12u);
  }

  centralManager = [(WPDObjectDiscoveryManager *)self centralManager];
  scanOptions2 = [(WPDObjectDiscoveryManager *)self scanOptions];
  [centralManager scanForPeripheralsWithServices:0 options:scanOptions2];

  [(WPDObjectDiscoveryManager *)self setScanning:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deactivateADVBuffer
{
  v7 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager deactivateADVBuffer];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67174657;
    v6[1] = 18;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery ADV Buffer deactivate for type %{private}d", v6, 8u);
  }

  centralManager = [(WPDObjectDiscoveryManager *)self centralManager];
  [centralManager stopScan];

  [(WPDObjectDiscoveryManager *)self setScanning:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)addScanRequest:(id)request forClient:(id)client
{
  v28[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager addScanRequest:forClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager addScanRequest:forClient:];
  }

  if ([requestCopy clientType] == 18)
  {
    if ([(WPDManager *)self state]== 3)
    {
      scanRequests = [(WPDObjectDiscoveryManager *)self scanRequests];
      v9 = [scanRequests objectForKeyedSubscript:clientCopy];

      if (v9)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDObjectDiscoveryManager addScanRequest:forClient:];
        }

        v10 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [(WPDObjectDiscoveryManager *)clientCopy addScanRequest:v10 forClient:requestCopy];
        }
      }

      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager addScanRequest:forClient:];
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = requestCopy;
        v23 = 2114;
        v24 = clientCopy;
        _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Adding scan request %{public}@ for client %{public}@", &v21, 0x16u);
      }

      scanRequests2 = [(WPDObjectDiscoveryManager *)self scanRequests];
      [scanRequests2 setObject:requestCopy forKeyedSubscript:clientCopy];

      [(WPDObjectDiscoveryManager *)self updateScanner];
      v13 = 0;
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"CoreBluetooth is currently powered off";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v13 = [v16 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v17];

      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryManager addScanRequest:forClient:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDObjectDiscoveryManager addScanRequest:v18 forClient:?];
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"ObjectDiscoveryManager is not scanning for this client type";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [v14 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v15];

    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager addScanRequest:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryManager addScanRequest:forClient:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getScanRequestsForClient:(id)client
{
  v10[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  scanRequests = [(WPDObjectDiscoveryManager *)self scanRequests];
  v6 = [scanRequests objectForKeyedSubscript:clientCopy];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeScanRequestsForClient:(id)client
{
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryManager removeScanRequestsForClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryManager removeScanRequestsForClient:];
  }

  scanRequests = [(WPDObjectDiscoveryManager *)self scanRequests];
  v6 = [scanRequests objectForKeyedSubscript:clientCopy];

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager removeScanRequestsForClient:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = clientCopy;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Removing all scan requests for client %{public}@", &v11, 0xCu);
    }

    scanRequests2 = [(WPDObjectDiscoveryManager *)self scanRequests];
    [scanRequests2 removeObjectForKey:clientCopy];

    [(WPDObjectDiscoveryManager *)self updateScanner];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryManager removeScanRequestsForClient:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = clientCopy;
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_INFO, "ObjectDiscovery has no scan requests for client %{public}@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelScanStopTimer
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addScanStopTimer
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__WPDObjectDiscoveryManager_addScanStopTimer__block_invoke_425(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained scanning])
    {
      if (WPLogInitOnce != -1)
      {
        __45__WPDObjectDiscoveryManager_addScanStopTimer__block_invoke_425_cold_1();
      }

      v3 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_INFO, "ObjectDiscovery ADV Buffer force-read timed-out", v4, 2u);
      }

      [v2 deactivateADVBuffer];
    }

    [v2 setScanStopTimer:0];
  }
}

- (OS_dispatch_queue)serverQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_serverQueue);

  return WeakRetained;
}

- (NSUUID)advertClientUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_advertClientUUID);

  return WeakRetained;
}

- (void)advertOptionsChanged:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 advertOptions];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_8_0(&dword_272965000, v5, v6, "ObjectDiscovery advertising options old: %@ new: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingOptionsWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertiser
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisingRequest:forClient:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_2(&dword_272965000, v0, v1, "ObjectDiscovery Adding advertising request %@ for client: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeAdvertisingRequest:forClient:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_2(&dword_272965000, v0, v1, "ObjectDiscovery Removing advertising request %@ for client: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeAdvertisingRequestsForClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManagerDidStartAdvertising:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_9() localizedDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 code];
  _os_log_error_impl(&dword_272965000, v2, OS_LOG_TYPE_ERROR, "ObjectDiscovery Failed to start advertising with error: %@ (%ld)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManagerDidStartAdvertising:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)peripheralManagerDidStartAdvertising:error:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)peripheralManager:didStopAdvertisingWithError:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateClientsWithReports:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateClientsWithReports:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() advBuffersToRead];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_267_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__WPDObjectDiscoveryManager_updateClientsWithReports___block_invoke_279_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateNearbyTokens:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateNearbyTokens:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateNearbyTokens:(void *)a1 .cold.7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() nearbyTokensRequest];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateNearbyTokens:(void *)a1 .cold.10(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() matchActionRules];
  [v3 count];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)changedScanOptions:Clients:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)changedScanOptions:Clients:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateScanRules
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = a2;
  WORD6(v4) = 2048;
  HIWORD(v4) = self;
  OUTLINED_FUNCTION_3_2(&dword_272965000, a2, a3, "ObjectDiscovery ADV Buffer advBuffer:%ld scanInterval:%ld", v4, *(&v4 + 1));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addScanRequest:forClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addScanRequest:forClient:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addScanRequest:(void *)a1 forClient:.cold.6(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4[0] = 67240448;
  v4[1] = 18;
  v5 = 1026;
  v6 = [OUTLINED_FUNCTION_9() state];
  _os_log_error_impl(&dword_272965000, v1, OS_LOG_TYPE_ERROR, "ObjectDiscovery Failed to start a scan for type %{public}d - central is not powered on %{public}d", v4, 0xEu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addScanRequest:(void *)a3 forClient:.cold.8(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [a3 clientType];
  OUTLINED_FUNCTION_8_0(&dword_272965000, v5, v6, "ObjectDiscovery - %{public}@ is already scanning for type %{public}ld. Replacing scan request", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeScanRequestsForClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end