@interface WiFiViabilityMonitor
- (BOOL)_isCellFallbackAdminDisabled;
- (BOOL)_isCellOutrankStateMachineInOutrank;
- (WiFiViabilityMonitor)initWithQueue:(id)queue;
- (id)getState;
- (int64_t)_currentRNFAdvice;
- (unsigned)currentWiFiViabilityFlags;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)possiblySignificantWiFiChange;
@end

@implementation WiFiViabilityMonitor

- (id)getState
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  prevWiFiViability = self->_prevWiFiViability;
  v6 = (prevWiFiViability >> 2) & 7;
  if (v6 == 7)
  {
    v7 = "Invalid-WiFi-usability";
  }

  else
  {
    v7 = off_27898EFE8[v6];
  }

  currentWiFiViabilityFlags = [(WiFiViabilityMonitor *)self currentWiFiViabilityFlags];
  v9 = ([(WiFiViabilityMonitor *)self currentWiFiViabilityFlags]>> 2) & 7;
  if (v9 == 7)
  {
    v10 = "Invalid-WiFi-usability";
  }

  else
  {
    v10 = off_27898EFE8[v9];
  }

  v11 = [v4 stringWithFormat:@"WiFiViabilityMonitor reported 0x%x (%s) current 0x%x (%s)", prevWiFiViability, v7, currentWiFiViabilityFlags, v10];
  [v3 addObject:v11];

  return v3;
}

- (int64_t)_currentRNFAdvice
{
  v2 = +[CellFallbackHandler sharedInstance];
  v3 = v2;
  if (v2)
  {
    fallbackAdvice = [v2 fallbackAdvice];
  }

  else
  {
    fallbackAdvice = 0;
  }

  return fallbackAdvice;
}

- (BOOL)_isCellOutrankStateMachineInOutrank
{
  v2 = +[CellOutrankHandler sharedInstance];
  v3 = v2;
  if (v2)
  {
    cellOutranksWiFi = [v2 cellOutranksWiFi];
  }

  else
  {
    cellOutranksWiFi = 0;
  }

  return cellOutranksWiFi;
}

- (unsigned)currentWiFiViabilityFlags
{
  if (![(NetworkStateRelay *)self->_wifiRelay primary])
  {
    return 8;
  }

  if ([(WiFiViabilityMonitor *)self _isCellFallbackAdminDisabled])
  {
    return 4;
  }

  if ([(WiFiViabilityMonitor *)self _isCellOutrankStateMachineInOutrank])
  {
    return 24;
  }

  if ([(WiFiViabilityMonitor *)self _currentRNFAdvice])
  {
    return 8;
  }

  return 12;
}

- (BOOL)_isCellFallbackAdminDisabled
{
  v2 = +[CellFallbackHandler sharedInstance];
  v3 = v2;
  if (v2)
  {
    adminDisabled = [v2 adminDisabled];
  }

  else
  {
    adminDisabled = 1;
  }

  return adminDisabled;
}

- (void)possiblySignificantWiFiChange
{
  v11 = *MEMORY[0x277D85DE8];
  currentWiFiViabilityFlags = [(WiFiViabilityMonitor *)self currentWiFiViabilityFlags];
  if (self->_prevWiFiViability != currentWiFiViabilityFlags)
  {
    v4 = currentWiFiViabilityFlags;
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (v4 >> 2) & 7;
      if (v6 == 7)
      {
        v7 = "Invalid-WiFi-usability";
      }

      else
      {
        v7 = off_27898EFE8[v6];
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "possiblySignificantWiFiChange results in %s", &v9, 0xCu);
    }

    self->_prevWiFiViability = v4;
    [NetworkAnalyticsEngine relayWiFiViability:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"primary"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"cellOutranksWiFi"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__WiFiViabilityMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (WiFiViabilityMonitor)initWithQueue:(id)queue
{
  v37 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = WiFiViabilityMonitor;
  v6 = [(WiFiViabilityMonitor *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [NetworkStateRelay getStateRelayFor:3];
    wifiRelay = v7->_wifiRelay;
    v7->_wifiRelay = v8;

    v10 = v7->_wifiRelay;
    if (v10)
    {
      [(NetworkStateRelay *)v10 addObserver:v7 forKeyPath:@"primary" options:7 context:0];
    }

    else
    {
      v11 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "WiFiViabilityMonitor failed to procure Wi-Fi state relay", buf, 2u);
      }
    }

    v12 = +[CellOutrankHandler sharedInstance];
    outrankRelay = v7->_outrankRelay;
    v7->_outrankRelay = v12;

    [(CellOutrankHandler *)v7->_outrankRelay addObserver:v7 forKeyPath:@"cellOutranksWiFi" options:7 context:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __38__WiFiViabilityMonitor_initWithQueue___block_invoke;
    v32[3] = &unk_27898A690;
    v15 = v7;
    v33 = v15;
    v16 = [defaultCenter addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:v32];
    cellFallbackObserver = v15->_cellFallbackObserver;
    v15->_cellFallbackObserver = v16;

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __38__WiFiViabilityMonitor_initWithQueue___block_invoke_10;
    v30 = &unk_27898A690;
    v18 = v15;
    v31 = v18;
    v19 = [defaultCenter addObserverForName:@"adminEnablementChange" object:0 queue:0 usingBlock:&v27];
    cellFallbackAdminObserver = v18->_cellFallbackAdminObserver;
    v18->_cellFallbackAdminObserver = v19;

    v21 = [(WiFiViabilityMonitor *)v18 currentWiFiViabilityFlags:v27];
    v22 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (v21 >> 2) & 7;
      if (v23 == 7)
      {
        v24 = "Invalid-WiFi-usability";
      }

      else
      {
        v24 = off_27898EFE8[v23];
      }

      *buf = 136315138;
      v36 = v24;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "WiFiViability startup results in %s", buf, 0xCu);
    }

    [NetworkAnalyticsEngine relayWiFiViability:v21];
    v18->_prevWiFiViability = v21;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

void __38__WiFiViabilityMonitor_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiViabilityMonitor_initWithQueue___block_invoke_2;
  v7[3] = &unk_27898A7D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __38__WiFiViabilityMonitor_initWithQueue___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFi Viability Monitor receives fallback recommendation: %{public}@", &v8, 0xCu);
  }

  result = [*(a1 + 40) possiblySignificantWiFiChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __38__WiFiViabilityMonitor_initWithQueue___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiViabilityMonitor_initWithQueue___block_invoke_2_11;
  v7[3] = &unk_27898A7D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __38__WiFiViabilityMonitor_initWithQueue___block_invoke_2_11(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFi Viability Monitor receives admin change notification: %{public}@", &v8, 0xCu);
  }

  result = [*(a1 + 40) possiblySignificantWiFiChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_cellFallbackObserver];
  cellFallbackObserver = self->_cellFallbackObserver;
  self->_cellFallbackObserver = 0;

  [defaultCenter removeObserver:self->_cellFallbackAdminObserver];
  cellFallbackAdminObserver = self->_cellFallbackAdminObserver;
  self->_cellFallbackAdminObserver = 0;

  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"primary"];
  wifiRelay = self->_wifiRelay;
  self->_wifiRelay = 0;

  [(CellOutrankHandler *)self->_outrankRelay removeObserver:self forKeyPath:@"cellOutranksWiFi"];
  outrankRelay = self->_outrankRelay;
  self->_outrankRelay = 0;

  queue = self->_queue;
  self->_queue = 0;

  v9.receiver = self;
  v9.super_class = WiFiViabilityMonitor;
  [(WiFiViabilityMonitor *)&v9 dealloc];
}

@end