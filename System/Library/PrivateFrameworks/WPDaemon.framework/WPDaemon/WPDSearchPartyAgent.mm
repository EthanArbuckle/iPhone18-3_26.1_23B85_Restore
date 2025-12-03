@interface WPDSearchPartyAgent
+ (id)spBeaconKeyFromTestKey:(id)key;
- (BOOL)beaconState;
- (NSArray)beaconKeys;
- (NSArray)nearbyTokens;
- (NSData)beaconReserved;
- (NSDate)beaconKeysUpdated;
- (NSDate)nearbyTokensUpdated;
- (OS_dispatch_queue)queue;
- (WPDSearchPartyAgent)initWithQueue:(id)queue beaconChange:(id)change tokensChange:(id)tokensChange;
- (unsigned)beaconStatus;
- (void)dealloc;
- (void)generateStateDump;
- (void)initSPObjects;
- (void)rollKeysWithRequestID:(unint64_t)d;
- (void)rollKeys_async_completion:(id)keys_async_completion;
- (void)rollTokensWithRequestID:(unint64_t)d;
- (void)rollTokens_async_completion:(id)tokens_async_completion;
- (void)startTest;
- (void)stopTest;
- (void)updateTestBeaconExtended:(id)extended;
- (void)updateTestBeaconKeys:(id)keys;
- (void)updateTestBeaconState:(id)state;
- (void)updateTestBeaconStatus:(id)status;
- (void)updateTestNearOwnerTokens:(id)tokens;
@end

@implementation WPDSearchPartyAgent

- (WPDSearchPartyAgent)initWithQueue:(id)queue beaconChange:(id)change tokensChange:(id)tokensChange
{
  queueCopy = queue;
  changeCopy = change;
  tokensChangeCopy = tokensChange;
  v41.receiver = self;
  v41.super_class = WPDSearchPartyAgent;
  v11 = [(WPDSearchPartyAgent *)&v41 init];
  v12 = v11;
  if (v11)
  {
    beaconKey = v11->_beaconKey;
    v11->_beaconKey = 0;

    *&v12->_isTestMode = 0;
    spBeaconReserved = v12->_spBeaconReserved;
    v12->_spBeaconReserved = 0;

    *&v12->_testBeaconState = 0;
    testBeaconReserved = v12->_testBeaconReserved;
    v12->_testBeaconReserved = 0;

    spBeaconKeys = v12->_spBeaconKeys;
    v12->_spBeaconKeys = 0;

    spNearbyTokens = v12->_spNearbyTokens;
    v12->_spNearbyTokens = 0;

    spNearbyTokensUpdated = v12->_spNearbyTokensUpdated;
    v12->_spNearbyTokensUpdated = 0;

    spBeaconKeysUpdated = v12->_spBeaconKeysUpdated;
    v12->_spBeaconKeysUpdated = 0;

    testNearbyTokens = v12->_testNearbyTokens;
    v12->_testNearbyTokens = 0;

    testBeaconKeys = v12->_testBeaconKeys;
    v12->_testBeaconKeys = 0;

    testNearbyTokensUpdated = v12->_testNearbyTokensUpdated;
    v12->_testNearbyTokensUpdated = 0;

    testBeaconKeysUpdated = v12->_testBeaconKeysUpdated;
    v12->_testBeaconKeysUpdated = 0;

    beaconStateChangedBlock = v12->_beaconStateChangedBlock;
    v12->_beaconStateChangedBlock = 0;

    beaconKeysChangedBlock = v12->_beaconKeysChangedBlock;
    v12->_beaconKeysChangedBlock = 0;

    beaconStatusChangedBlock = v12->_beaconStatusChangedBlock;
    v12->_beaconStatusChangedBlock = 0;

    nearbyTokensChangedBlock = v12->_nearbyTokensChangedBlock;
    v12->_nearbyTokensChangedBlock = 0;

    v12->_continueAdvOnFail = 0;
    objc_storeWeak(&v12->_queue, queueCopy);
    v28 = MEMORY[0x2743D14E0](changeCopy);
    beaconChange = v12->_beaconChange;
    v12->_beaconChange = v28;

    v30 = MEMORY[0x2743D14E0](tokensChangeCopy);
    tokensChange = v12->_tokensChange;
    v12->_tokensChange = v30;

    v32 = [[WPDPendingCompletions alloc] initWithName:@"beaconing key"];
    pendingKeyCompletions = v12->_pendingKeyCompletions;
    v12->_pendingKeyCompletions = v32;

    v34 = [[WPDPendingCompletions alloc] initWithName:@"near owner tokens"];
    pendingTokenCompletions = v12->_pendingTokenCompletions;
    v12->_pendingTokenCompletions = v34;

    objc_initWeak(&location, v12);
    WeakRetained = objc_loadWeakRetained(&v12->_queue);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__WPDSearchPartyAgent_initWithQueue_beaconChange_tokensChange___block_invoke;
    v38[3] = &unk_279E58EE8;
    objc_copyWeak(&v39, &location);
    dispatch_async(WeakRetained, v38);

    if (WPLogInitOnce != -1)
    {
      [WPDSearchPartyAgent initWithQueue:beaconChange:tokensChange:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDSearchPartyAgent initWithQueue:beaconChange:tokensChange:];
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __63__WPDSearchPartyAgent_initWithQueue_beaconChange_tokensChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained initSPObjects];
    WeakRetained = v2;
  }
}

- (BOOL)beaconState
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {

    return [(WPDSearchPartyAgent *)self testBeaconState];
  }

  else
  {

    return [(WPDSearchPartyAgent *)self spBeaconState];
  }
}

- (unsigned)beaconStatus
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {

    return [(WPDSearchPartyAgent *)self testBeaconStatus];
  }

  else
  {

    return [(WPDSearchPartyAgent *)self spBeaconStatus];
  }
}

- (NSData)beaconReserved
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {
    [(WPDSearchPartyAgent *)self testBeaconReserved];
  }

  else
  {
    [(WPDSearchPartyAgent *)self spBeaconReserved];
  }
  v3 = ;

  return v3;
}

- (NSArray)nearbyTokens
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {
    [(WPDSearchPartyAgent *)self testNearbyTokens];
  }

  else
  {
    [(WPDSearchPartyAgent *)self spNearbyTokens];
  }
  v3 = ;

  return v3;
}

- (NSDate)nearbyTokensUpdated
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {
    [(WPDSearchPartyAgent *)self testNearbyTokensUpdated];
  }

  else
  {
    [(WPDSearchPartyAgent *)self spNearbyTokensUpdated];
  }
  v3 = ;

  return v3;
}

- (NSArray)beaconKeys
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {
    [(WPDSearchPartyAgent *)self testBeaconKeys];
  }

  else
  {
    [(WPDSearchPartyAgent *)self spBeaconKeys];
  }
  v3 = ;

  return v3;
}

- (NSDate)beaconKeysUpdated
{
  if ([(WPDSearchPartyAgent *)self isTestMode])
  {
    [(WPDSearchPartyAgent *)self testBeaconKeysUpdated];
  }

  else
  {
    [(WPDSearchPartyAgent *)self spBeaconKeysUpdated];
  }
  v3 = ;

  return v3;
}

- (void)dealloc
{
  [(WPDSearchPartyAgent *)self setBeaconManager:0];
  [(WPDSearchPartyAgent *)self setBeaconStateChangedBlock:0];
  [(WPDSearchPartyAgent *)self setBeaconKeysChangedBlock:0];
  [(WPDSearchPartyAgent *)self setBeaconStatusChangedBlock:0];
  [(WPDSearchPartyAgent *)self setNearbyTokensChangedBlock:0];
  [(WPDSearchPartyAgent *)self setBeaconChange:0];
  [(WPDSearchPartyAgent *)self setTokensChange:0];
  objc_storeWeak(&self->_queue, 0);
  [(WPDSearchPartyAgent *)self setPendingKeyCompletions:0];
  [(WPDSearchPartyAgent *)self setPendingTokenCompletions:0];
  v3.receiver = self;
  v3.super_class = WPDSearchPartyAgent;
  [(WPDSearchPartyAgent *)&v3 dealloc];
}

- (void)generateStateDump
{
  v61 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    isTestMode = [(WPDSearchPartyAgent *)self isTestMode];
    v7 = "no";
    if (isTestMode)
    {
      v7 = "yes";
    }

    *buf = 136315138;
    *v54 = v7;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: testMode: %s", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    continueAdvOnFail = [(WPDSearchPartyAgent *)self continueAdvOnFail];
    v11 = "no";
    if (continueAdvOnFail)
    {
      v11 = "yes";
    }

    *buf = 136315138;
    *v54 = v11;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: continue adv on fail: %s", buf, 0xCu);
  }

  obj = self;
  objc_sync_enter(obj);
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v12 = WiProxLog;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ([(WPDSearchPartyAgent *)obj beaconState])
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    spBeaconState = [(WPDSearchPartyAgent *)obj spBeaconState];
    isTestMode2 = [(WPDSearchPartyAgent *)obj isTestMode];
    beaconKey = [(WPDSearchPartyAgent *)obj beaconKey];
    beaconStatus = [(WPDSearchPartyAgent *)obj beaconStatus];
    beaconReserved = [(WPDSearchPartyAgent *)obj beaconReserved];
    *buf = 136316418;
    *v54 = v13;
    *&v54[8] = 1024;
    *&v54[10] = spBeaconState;
    *&v54[14] = 1024;
    *&v54[16] = isTestMode2;
    v55 = 2112;
    v56 = beaconKey;
    v57 = 1024;
    v58 = beaconStatus;
    v59 = 2112;
    v60 = beaconReserved;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: beaconing: %s (SP:%d || Test:%d) key %@ status: 0x%02x reserved: %@", buf, 0x32u);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    beaconKeys = [(WPDSearchPartyAgent *)obj beaconKeys];
    if (beaconKeys)
    {
      spBeaconState = [(WPDSearchPartyAgent *)obj beaconKeys];
      v20 = [spBeaconState count];
    }

    else
    {
      v20 = 0;
    }

    beaconKeysUpdated = [(WPDSearchPartyAgent *)obj beaconKeysUpdated];
    *buf = 67109378;
    *v54 = v20;
    *&v54[4] = 2112;
    *&v54[6] = beaconKeysUpdated;
    _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: beaconing keys (%d) updated: %@", buf, 0x12u);

    if (beaconKeys)
    {
    }
  }

  beaconKeys2 = [(WPDSearchPartyAgent *)obj beaconKeys];

  if (beaconKeys2)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    beaconKeys3 = [(WPDSearchPartyAgent *)obj beaconKeys];
    v24 = [beaconKeys3 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v24)
    {
      v25 = *v49;
      spBeaconState = &dword_272965000;
      do
      {
        v26 = 0;
        do
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(beaconKeys3);
          }

          v27 = *(*(&v48 + 1) + 8 * v26);
          if (WPLogInitOnce != -1)
          {
            [WPDSearchPartyAgent generateStateDump];
          }

          v28 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v54 = v27;
            _os_log_impl(&dword_272965000, v28, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump:     %@", buf, 0xCu);
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [beaconKeys3 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v24);
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v29 = WiProxLog;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    nearbyTokens = [(WPDSearchPartyAgent *)obj nearbyTokens];
    if (nearbyTokens)
    {
      spBeaconState = [(WPDSearchPartyAgent *)obj nearbyTokens];
      v31 = [spBeaconState count] >> 1;
    }

    else
    {
      LODWORD(v31) = 0;
    }

    nearbyTokensUpdated = [(WPDSearchPartyAgent *)obj nearbyTokensUpdated];
    *buf = 67109378;
    *v54 = v31;
    *&v54[4] = 2112;
    *&v54[6] = nearbyTokensUpdated;
    _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: near owner tokens (%d) updated: %@", buf, 0x12u);

    if (nearbyTokens)
    {
    }
  }

  nearbyTokens2 = [(WPDSearchPartyAgent *)obj nearbyTokens];

  if (nearbyTokens2)
  {
    for (i = 0; ; i += 2)
    {
      nearbyTokens3 = [(WPDSearchPartyAgent *)obj nearbyTokens];
      v36 = [nearbyTokens3 count] > (i + 1);

      if (!v36)
      {
        break;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDSearchPartyAgent generateStateDump];
      }

      v37 = WiProxLog;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        nearbyTokens4 = [(WPDSearchPartyAgent *)obj nearbyTokens];
        v39 = [nearbyTokens4 objectAtIndexedSubscript:i + 1];
        nearbyTokens5 = [(WPDSearchPartyAgent *)obj nearbyTokens];
        v41 = [nearbyTokens5 objectAtIndexedSubscript:i];
        *buf = 138412546;
        *v54 = v39;
        *&v54[8] = 2112;
        *&v54[10] = v41;
        _os_log_impl(&dword_272965000, v37, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump:     token: %@ address: %@", buf, 0x16u);
      }
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v42 = WiProxLog;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    pendingTokenCompletions = [(WPDSearchPartyAgent *)obj pendingTokenCompletions];
    *buf = 138412290;
    *v54 = pendingTokenCompletions;
    _os_log_impl(&dword_272965000, v42, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent generateStateDump];
  }

  v44 = WiProxLog;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    pendingKeyCompletions = [(WPDSearchPartyAgent *)obj pendingKeyCompletions];
    *buf = 138412290;
    *v54 = pendingKeyCompletions;
    _os_log_impl(&dword_272965000, v44, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
  }

  objc_sync_exit(obj);
  v46 = *MEMORY[0x277D85DE8];
}

- (void)initSPObjects
{
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__WPDSearchPartyAgent_initSPObjects__block_invoke;
  v21[3] = &unk_279E58F10;
  objc_copyWeak(&v22, &location);
  [(WPDSearchPartyAgent *)self setBeaconStateChangedBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217;
  v19[3] = &unk_279E58F38;
  objc_copyWeak(&v20, &location);
  [(WPDSearchPartyAgent *)self setBeaconKeysChangedBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __36__WPDSearchPartyAgent_initSPObjects__block_invoke_225;
  v17[3] = &unk_279E58F60;
  objc_copyWeak(&v18, &location);
  [(WPDSearchPartyAgent *)self setBeaconStatusChangedBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230;
  v15[3] = &unk_279E58F38;
  objc_copyWeak(&v16, &location);
  [(WPDSearchPartyAgent *)self setNearbyTokensChangedBlock:v15];
  v3 = objc_opt_new();
  if (v3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDSearchPartyAgent initSPObjects];
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "WPDSearchPartyAgent registered with beaconManager", v14, 2u);
    }

    [(WPDSearchPartyAgent *)self setBeaconManager:v3];
    beaconStateChangedBlock = [(WPDSearchPartyAgent *)self beaconStateChangedBlock];
    beaconManager = [(WPDSearchPartyAgent *)self beaconManager];
    [beaconManager setStateChangedBlockWithCompletion:beaconStateChangedBlock];

    beaconKeysChangedBlock = [(WPDSearchPartyAgent *)self beaconKeysChangedBlock];
    beaconManager2 = [(WPDSearchPartyAgent *)self beaconManager];
    [beaconManager2 setBeaconingKeyChangedBlockWithCompletion:beaconKeysChangedBlock];

    beaconStatusChangedBlock = [(WPDSearchPartyAgent *)self beaconStatusChangedBlock];
    beaconManager3 = [(WPDSearchPartyAgent *)self beaconManager];
    [beaconManager3 setStatusChangedBlockWithCompletion:beaconStatusChangedBlock];

    nearbyTokensChangedBlock = [(WPDSearchPartyAgent *)self nearbyTokensChangedBlock];
    beaconManager4 = [(WPDSearchPartyAgent *)self beaconManager];
    [beaconManager4 setNearbyTokensChangedBlockWithCompletion:nearbyTokensChangedBlock];

    beaconManager5 = [(WPDSearchPartyAgent *)self beaconManager];
    [beaconManager5 start];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDSearchPartyAgent initSPObjects];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDSearchPartyAgent initSPObjects];
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_cold_1();
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (a2)
      {
        v8 = "YES";
      }

      v12 = 136315138;
      v13 = v8;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beaconManager state changed to %s", &v12, 0xCu);
    }

    v9 = WeakRetained;
    objc_sync_enter(v9);
    [v9 setSpBeaconState:a2];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v9 setSpBeaconKeysUpdated:v10];

    objc_sync_exit(v9);
    if (([v9 isTestMode] & 1) == 0)
    {
      [v9 rollKeys_async_completion:v5];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217_cold_1();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v13 = 134217984;
      v14 = [v5 count];
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beaconManager keys updated: %lu keys", &v13, 0xCu);
    }

    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217_cold_2();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217_cold_3();
    }

    v10 = WeakRetained;
    objc_sync_enter(v10);
    [v10 setSpBeaconKeys:v5];
    v11 = [MEMORY[0x277CBEAA8] date];
    [v10 setSpBeaconKeysUpdated:v11];

    objc_sync_exit(v10);
    if (([v10 isTestMode] & 1) == 0)
    {
      [v10 rollKeys_async_completion:v6];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_225(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_225_cold_1();
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = a2;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beaconManager status changed to 0x%02x", v11, 8u);
    }

    v8 = WeakRetained;
    objc_sync_enter(v8);
    [v8 setSpBeaconStatus:a2];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v8 setSpBeaconKeysUpdated:v9];

    objc_sync_exit(v8);
    if (([v8 isTestMode] & 1) == 0)
    {
      [v8 rollKeys_async_completion:v5];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230_cold_1();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 134217984;
      v21 = [v5 count];
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beaconManager nearbyTokensChangeBlock with %lu tokens", buf, 0xCu);
    }

    v10 = objc_autoreleasePoolPush();
    if (v5)
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(v5, "count")}];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __36__WPDSearchPartyAgent_initSPObjects__block_invoke_234;
      v18[3] = &unk_279E58F88;
      v12 = v11;
      v19 = v12;
      [v5 enumerateObjectsUsingBlock:v18];
      v13 = WeakRetained;
      objc_sync_enter(v13);
      v14 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
      objc_sync_exit(v13);
    }

    else
    {
      v14 = 0;
    }

    if (WPLogInitOnce != -1)
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230_cold_2();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230_cold_3();
    }

    v15 = WeakRetained;
    objc_sync_enter(v15);
    [v15 setSpNearbyTokens:v14];
    v16 = [MEMORY[0x277CBEAA8] date];
    [v15 setSpNearbyTokensUpdated:v16];

    objc_sync_exit(v15);
    objc_autoreleasePoolPop(v10);
    if (([v15 isTestMode] & 1) == 0)
    {
      [v15 rollTokens_async_completion:v6];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_234(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEA90];
  v6 = a2;
  v7 = [v6 address];
  v8 = [v5 dataWithData:v7];
  [*(a1 + 32) setObject:v8 atIndexedSubscript:2 * a3];

  v9 = MEMORY[0x277CBEA90];
  v11 = [v6 nearbyToken];

  v10 = [v9 dataWithData:v11];
  [*(a1 + 32) setObject:v10 atIndexedSubscript:(2 * a3) | 1];
}

- (void)rollKeys_async_completion:(id)keys_async_completion
{
  keys_async_completionCopy = keys_async_completion;
  objc_initWeak(&location, self);
  queue = [(WPDSearchPartyAgent *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WPDSearchPartyAgent_rollKeys_async_completion___block_invoke;
  block[3] = &unk_279E58FB0;
  objc_copyWeak(&v9, &location);
  v8 = keys_async_completionCopy;
  v6 = keys_async_completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__WPDSearchPartyAgent_rollKeys_async_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained pendingKeyCompletions];
    v4 = MEMORY[0x2743D14E0](*(a1 + 32));
    [v5 rollKeysWithRequestID:{objc_msgSend(v3, "addCompletion:", v4)}];

    WeakRetained = v5;
  }
}

- (void)rollKeysWithRequestID:(unint64_t)d
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(WPDSearchPartyAgent *)self beaconState])
  {
    *v27 = 0;
    v28 = v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v5 = objc_opt_new();
    if (WPLogInitOnce != -1)
    {
      [WPDSearchPartyAgent rollKeysWithRequestID:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      beaconKeys = [(WPDSearchPartyAgent *)self beaconKeys];
      v20 = [beaconKeys count];
      *buf = 134217984;
      v34 = v20;
      _os_log_debug_impl(&dword_272965000, v6, OS_LOG_TYPE_DEBUG, "WPDSearchPartyAgent has %lu beacon keys", buf, 0xCu);
    }

    beaconKeys2 = [(WPDSearchPartyAgent *)self beaconKeys];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250;
    v24 = &unk_279E58FD8;
    v8 = v5;
    v25 = v8;
    v26 = v27;
    [beaconKeys2 enumerateObjectsUsingBlock:&v21];

    if (*(v28 + 5))
    {
      v9 = [(WPDSearchPartyAgent *)self beaconKey:v21];
      if (!v9 || (v10 = *(v28 + 5), -[WPDSearchPartyAgent beaconKey](self, "beaconKey"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = [v10 isEqualToData:v11], v11, v9, (v10 & 1) == 0))
      {
        v12 = [MEMORY[0x277CBEA90] dataWithData:*(v28 + 5)];
        [(WPDSearchPartyAgent *)self setBeaconKey:v12];

        if (WPLogInitOnce != -1)
        {
          [WPDSearchPartyAgent rollKeysWithRequestID:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          beaconKey = [(WPDSearchPartyAgent *)self beaconKey];
          *buf = 138543362;
          v34 = beaconKey;
          _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beacon key updated to %{public}@", buf, 0xCu);
        }
      }
    }

    else if ([(WPDSearchPartyAgent *)self continueAdvOnFail:v21])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDSearchPartyAgent rollKeysWithRequestID:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDSearchPartyAgent rollKeysWithRequestID:];
      }
    }

    else
    {
      [(WPDSearchPartyAgent *)self setBeaconKey:0];
      if (WPLogInitOnce != -1)
      {
        [WPDSearchPartyAgent rollKeysWithRequestID:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDSearchPartyAgent rollKeysWithRequestID:];
      }
    }

    _Block_object_dispose(v27, 8);
  }

  else
  {
    [(WPDSearchPartyAgent *)self setBeaconKey:0];
    if (WPLogInitOnce != -1)
    {
      [WPDSearchPartyAgent rollKeysWithRequestID:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent beaconing was turned off", v27, 2u);
    }
  }

  beaconChange = [(WPDSearchPartyAgent *)self beaconChange];

  if (beaconChange)
  {
    beaconChange2 = [(WPDSearchPartyAgent *)self beaconChange];
    beaconChange2[2](beaconChange2, d);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (WPLogInitOnce != -1)
  {
    __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_2();
  }

  v7 = [v6 dateInterval];
  v8 = [v7 containsDate:*(a1 + 32)];

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_3();
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_4(v9, v6);
    }

    v10 = [v6 key];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (void)rollTokens_async_completion:(id)tokens_async_completion
{
  tokens_async_completionCopy = tokens_async_completion;
  objc_initWeak(&location, self);
  queue = [(WPDSearchPartyAgent *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WPDSearchPartyAgent_rollTokens_async_completion___block_invoke;
  block[3] = &unk_279E58FB0;
  objc_copyWeak(&v9, &location);
  v8 = tokens_async_completionCopy;
  v6 = tokens_async_completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__WPDSearchPartyAgent_rollTokens_async_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained pendingTokenCompletions];
    v4 = MEMORY[0x2743D14E0](*(a1 + 32));
    [v5 rollTokensWithRequestID:{objc_msgSend(v3, "addCompletion:", v4)}];

    WeakRetained = v5;
  }
}

- (void)rollTokensWithRequestID:(unint64_t)d
{
  v14 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent rollTokensWithRequestID:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    nearbyTokens = [(WPDSearchPartyAgent *)self nearbyTokens];
    v12 = 134217984;
    v13 = [nearbyTokens count];
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "WPDSearchPartyAgent has %lu nearby tokens", &v12, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setSpNearbyTokensUpdated:date];

  tokensChange = [(WPDSearchPartyAgent *)self tokensChange];

  if (tokensChange)
  {
    tokensChange2 = [(WPDSearchPartyAgent *)self tokensChange];
    tokensChange2[2](tokensChange2, d);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startTest
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stopTest
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateTestNearOwnerTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent updateTestNearOwnerTokens:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDSearchPartyAgent updateTestNearOwnerTokens:];
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithArray:tokensCopy];
  [(WPDSearchPartyAgent *)self setTestNearbyTokens:v6];

  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setTestNearbyTokensUpdated:date];

  objc_autoreleasePoolPop(v5);
  [(WPDSearchPartyAgent *)self rollTokens_async];
}

- (void)updateTestBeaconKeys:(id)keys
{
  keysCopy = keys;
  v5 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent updateTestBeaconKeys:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDSearchPartyAgent updateTestBeaconKeys:];
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__WPDSearchPartyAgent_updateTestBeaconKeys___block_invoke_280;
  v10[3] = &unk_279E59000;
  v11 = v6;
  v7 = v6;
  [keysCopy enumerateObjectsUsingBlock:v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  [(WPDSearchPartyAgent *)self setTestBeaconKeys:v8];

  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setTestBeaconKeysUpdated:date];

  objc_autoreleasePoolPop(v5);
  [(WPDSearchPartyAgent *)self rollKeys_async];
}

void __44__WPDSearchPartyAgent_updateTestBeaconKeys___block_invoke_280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [WPDSearchPartyAgent spBeaconKeyFromTestKey:a2];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

- (void)updateTestBeaconStatus:(id)status
{
  statusCopy = status;
  v5 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent updateTestBeaconStatus:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDSearchPartyAgent *)v6 updateTestBeaconStatus:statusCopy];
  }

  -[WPDSearchPartyAgent setTestBeaconStatus:](self, "setTestBeaconStatus:", [statusCopy unsignedCharValue]);
  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setTestBeaconKeysUpdated:date];

  objc_autoreleasePoolPop(v5);
  [(WPDSearchPartyAgent *)self rollKeys_async];
}

- (void)updateTestBeaconExtended:(id)extended
{
  extendedCopy = extended;
  v5 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent updateTestBeaconExtended:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDSearchPartyAgent updateTestBeaconExtended:];
  }

  [(WPDSearchPartyAgent *)self setTestBeaconReserved:extendedCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setTestBeaconKeysUpdated:date];

  objc_autoreleasePoolPop(v5);
  [(WPDSearchPartyAgent *)self rollKeys_async];
}

- (void)updateTestBeaconState:(id)state
{
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  if (WPLogInitOnce != -1)
  {
    [WPDSearchPartyAgent updateTestBeaconState:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDSearchPartyAgent *)v6 updateTestBeaconState:stateCopy];
  }

  -[WPDSearchPartyAgent setTestBeaconState:](self, "setTestBeaconState:", [stateCopy BOOLValue]);
  date = [MEMORY[0x277CBEAA8] date];
  [(WPDSearchPartyAgent *)self setTestBeaconKeysUpdated:date];

  objc_autoreleasePoolPop(v5);
  [(WPDSearchPartyAgent *)self rollKeys_async];
}

+ (id)spBeaconKeyFromTestKey:(id)key
{
  keyCopy = key;
  v4 = objc_autoreleasePoolPush();
  v5 = [keyCopy objectForKeyedSubscript:@"kStartTime"];
  v6 = [keyCopy objectForKeyedSubscript:@"kEndTime"];
  v7 = [keyCopy objectForKeyedSubscript:@"kBeaconKey"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    [v5 doubleValue];
    v10 = v9;
    [v6 doubleValue];
    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
    v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 duration:v12 - v10];
    v15 = [objc_alloc(MEMORY[0x277D49650]) initWithDateInterval:v14 key:v8];
    if (WPLogInitOnce != -1)
    {
      +[WPDSearchPartyAgent spBeaconKeyFromTestKey:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDSearchPartyAgent spBeaconKeyFromTestKey:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDSearchPartyAgent spBeaconKeyFromTestKey:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDSearchPartyAgent spBeaconKeyFromTestKey:];
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v15;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

- (void)initWithQueue:beaconChange:tokensChange:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_217_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__WPDSearchPartyAgent_initSPObjects__block_invoke_230_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__WPDSearchPartyAgent_rollKeysWithRequestID___block_invoke_250_cold_4(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 dateInterval];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateTestNearOwnerTokens:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateTestBeaconKeys:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateTestBeaconStatus:(void *)a1 .cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 unsignedCharValue];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateTestBeaconExtended:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateTestBeaconState:(void *)a1 .cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 BOOLValue];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)spBeaconKeyFromTestKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)spBeaconKeyFromTestKey:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end