@interface PowerUIBatteryMitigationManager
+ (id)managerWithDefaultsDomain:(id)domain;
+ (id)sharedManager;
- (BOOL)fetchCurrentMitigationState;
- (PowerUIBatteryMitigationManager)initWithDefaultsDomain:(id)domain;
- (id)getGaugingMitigationDict;
- (void)submitGaugingAnalytics:(id)analytics;
@end

@implementation PowerUIBatteryMitigationManager

- (PowerUIBatteryMitigationManager)initWithDefaultsDomain:(id)domain
{
  domainCopy = domain;
  v13.receiver = self;
  v13.super_class = PowerUIBatteryMitigationManager;
  v6 = [(PowerUIBatteryMitigationManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsDomain, domain);
    v8 = +[PowerUIAnalyticsManager sharedInstance];
    analyticsManager = v7->_analyticsManager;
    v7->_analyticsManager = v8;

    v10 = os_log_create("com.apple.powerui.smartcharging", "ocvmitigation");
    log = v7->_log;
    v7->_log = v10;

    [(PowerUIBatteryMitigationManager *)v7 fetchCurrentMitigationState];
  }

  return v7;
}

+ (id)managerWithDefaultsDomain:(id)domain
{
  domainCopy = domain;
  v4 = [[PowerUIBatteryMitigationManager alloc] initWithDefaultsDomain:domainCopy];

  return v4;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PowerUIBatteryMitigationManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __48__PowerUIBatteryMitigationManager_sharedManager__block_invoke()
{
  sharedManager_manager = [[PowerUIBatteryMitigationManager alloc] initWithDefaultsDomain:@"com.apple.smartcharging.topoffprotection"];

  return MEMORY[0x2821F96F8]();
}

- (id)getGaugingMitigationDict
{
  v29 = *MEMORY[0x277D85DE8];
  cf = 0;
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  State = IOPSGaugingMitigationGetState();
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (State)
  {
    if (v6)
    {
      *buf = 67109120;
      LODWORD(v25) = State;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Gauging mitigation state error received: %d", buf, 8u);
    }

    v7 = dictionary;
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Gauging dict:", buf, 2u);
    }

    v7 = cf;

    CFRelease(cf);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = self->_log;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = v13;
            v16 = [v7 objectForKeyedSubscript:v14];
            *buf = 138412546;
            v25 = v14;
            v26 = 2112;
            v27 = v16;
            _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "\t%@: %@", buf, 0x16u);
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)fetchCurrentMitigationState
{
  v18 = *MEMORY[0x277D85DE8];
  mitigationsCurrentlyEnabled = self->_mitigationsCurrentlyEnabled;
  out_token = 0;
  if (notify_register_check("com.apple.system.powersources.chargingtofulloverride", &out_token))
  {
    log = self->_log;
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(PowerUIBatteryMitigationManager *)log fetchCurrentMitigationState];
LABEL_8:
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v14 = 0;
    if (notify_get_state(out_token, &v14))
    {
      v6 = self->_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(PowerUIBatteryMitigationManager *)v6 fetchCurrentMitigationState];
      }

      notify_cancel(out_token);
      goto LABEL_8;
    }

    notify_cancel(out_token);
    v8 = v14 & 1;
    self->_mitigationsCurrentlyEnabled = v8;
    v9 = self->_log;
    if (mitigationsCurrentlyEnabled == v8)
    {
      v5 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (!v5)
      {
        goto LABEL_9;
      }

      v10 = self->_mitigationsCurrentlyEnabled;
      *buf = 67109120;
      v17 = v10;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_INFO, "Current mitigation state unchanged: %d", buf, 8u);
      goto LABEL_8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_mitigationsCurrentlyEnabled;
      *buf = 67109120;
      v17 = v11;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Current mitigation state changed to: %d", buf, 8u);
    }

    getGaugingMitigationDict = [(PowerUIBatteryMitigationManager *)self getGaugingMitigationDict];
    [(PowerUIBatteryMitigationManager *)self submitGaugingAnalytics:getGaugingMitigationDict];

    LOBYTE(v5) = 1;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)submitGaugingAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [analyticsCopy objectForKeyedSubscript:@"lastQMaxUpdate"];
  if (v5)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = (v6 / 86400.0);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [analyticsCopy objectForKeyedSubscript:@"lastDOD0Update"];
  if (v8)
  {
    [v4 timeIntervalSinceDate:v8];
    v10 = (v9 / 86400.0);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = [analyticsCopy objectForKeyedSubscript:@"lastFullChargeDate"];
  if (v11)
  {
    [v4 timeIntervalSinceDate:v11];
    v13 = (v12 / 86400.0);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  analyticsManager = self->_analyticsManager;
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  [(PowerUIAnalyticsManager *)analyticsManager submitGaugingEventWithUpdateType:1 qmaxState:0 daysSinceQMax:v15 ocvState:0 daysSinceOCV:v16 fullChargeState:0 daysSinceFullChargeAttempt:v17];
}

@end