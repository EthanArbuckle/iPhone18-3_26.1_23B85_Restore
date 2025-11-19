@interface PowerUIWalletSignalMonitor
+ (PowerUIWalletSignalMonitor)monitorWithDelegate:(id)a3;
+ (id)wallet;
- (PowerUIWalletSignalMonitor)initWithDelegate:(id)a3;
- (id)detectedSignals;
- (id)requiredFullChargeDate;
- (void)sourceInformationChangedNotification:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PowerUIWalletSignalMonitor

+ (id)wallet
{
  v2 = wallet_wallet;
  if (!wallet_wallet)
  {
    v3 = objc_alloc_init(MEMORY[0x277D37FC0]);
    v4 = wallet_wallet;
    wallet_wallet = v3;

    v2 = wallet_wallet;
  }

  return v2;
}

- (PowerUIWalletSignalMonitor)initWithDelegate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PowerUIWalletSignalMonitor;
  v6 = [(PowerUIWalletSignalMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = os_log_create("com.apple.powerui.smartcharging", "signals");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

+ (PowerUIWalletSignalMonitor)monitorWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDelegate:v4];

  return v5;
}

- (void)startMonitoring
{
  v3 = +[PowerUIWalletSignalMonitor wallet];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_sourceInformationChangedNotification_ name:*MEMORY[0x277D386D8] object:0];
}

- (void)sourceInformationChangedNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    delegate = self->_delegate;
    *buf = 138412290;
    v18 = delegate;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Boarding pass has changed, set timer for %@", buf, 0xCu);
  }

  if (!self->_queue)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.powerui.walletMonitorQueue", v7);
    queue = self->_queue;
    self->_queue = v8;
  }

  waitForFinalChangeTimer = self->_waitForFinalChangeTimer;
  if (!waitForFinalChangeTimer)
  {
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v12 = self->_waitForFinalChangeTimer;
    self->_waitForFinalChangeTimer = v11;

    v13 = self->_waitForFinalChangeTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__PowerUIWalletSignalMonitor_sourceInformationChangedNotification___block_invoke;
    handler[3] = &unk_2782D3EA8;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    waitForFinalChangeTimer = self->_waitForFinalChangeTimer;
  }

  v14 = dispatch_walltime(0, 5000000000);
  dispatch_source_set_timer(waitForFinalChangeTimer, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_activate(self->_waitForFinalChangeTimer);

  v15 = *MEMORY[0x277D85DE8];
}

void __67__PowerUIWalletSignalMonitor_sourceInformationChangedNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Timer ran out, suggest new deadline for %@.", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) requiredFullChargeDate];
  [*(*(a1 + 32) + 8) monitor:*(a1 + 32) maySuggestNewFullChargeDeadline:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring
{
  waitForFinalChangeTimer = self->_waitForFinalChangeTimer;
  if (waitForFinalChangeTimer)
  {
    dispatch_source_set_timer(waitForFinalChangeTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D386D8] object:0];
}

- (id)requiredFullChargeDate
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = [PowerUISmartChargeUtilities dateForPreferenceKey:@"WMQDisabledUntil" inDomain:@"com.apple.smartcharging.topoffprotection"];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceNow];
    if (v6 >= 0.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "wallet monitor currently disabled", buf, 2u);
      }

      v13 = [MEMORY[0x277CBEAA8] distantFuture];
      goto LABEL_49;
    }

    [v5 timeIntervalSinceNow];
    if (v7 < 0.0)
    {
      v8 = self->_log;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "reset wallet monitor disablement", buf, 2u);
      }

      [PowerUISmartChargeUtilities setNumber:0 forPreferenceKey:@"WMQAttempts" inDomain:@"com.apple.smartcharging.topoffprotection"];
      [PowerUISmartChargeUtilities setNumber:0 forPreferenceKey:@"WMQSuccesses" inDomain:@"com.apple.smartcharging.topoffprotection"];
      [PowerUISmartChargeUtilities setDate:0 forPreferenceKey:@"WMQDisabledUntil" inDomain:@"com.apple.smartcharging.topoffprotection"];
    }
  }

  v9 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"WMQAttempts" inDomain:@"com.apple.smartcharging.topoffprotection"];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "unsignedIntValue") + 1}];
  }

  else
  {
    v11 = &unk_282D4E908;
  }

  [PowerUISmartChargeUtilities setNumber:v11 forPreferenceKey:@"WMQAttempts" inDomain:@"com.apple.smartcharging.topoffprotection"];
  v14 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"WMQSuccesses" inDomain:@"com.apple.smartcharging.topoffprotection"];
  v15 = [v11 unsignedIntValue];
  if (v14)
  {
    v16 = [v14 unsignedIntValue];
  }

  else
  {
    v16 = 0;
  }

  if ((v15 - v16) < 5)
  {
    v57 = v11;
    v58 = v5;
    v59 = v3;
    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Begining of walletMonitor requiredFullChargeDate"];
    v19 = +[PowerUIWalletSignalMonitor wallet];
    v20 = [v19 passesOfStyles:16];

    v53 = self;
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v20 count];
      *buf = 134217984;
      v69 = v23;
      _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Found %lu passes", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CBEAA8] date];
    v25 = [v24 dateByAddingTimeInterval:-10800.0];
    v56 = v24;
    v26 = [v24 dateByAddingTimeInterval:86400.0];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v27 = v20;
    v52 = [v27 countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v52)
    {
      v28 = *v65;
      v54 = v27;
      v55 = v14;
      v50 = *v65;
      do
      {
        v29 = 0;
        do
        {
          if (*v65 != v28)
          {
            objc_enumerationMutation(v27);
          }

          v30 = *(*(&v64 + 1) + 8 * v29);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v51 = v30;
          v31 = [v30 relevantDates];
          v32 = [v31 countByEnumeratingWithState:&v60 objects:v72 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v61;
            while (2)
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v61 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v60 + 1) + 8 * i);
                v37 = [v36 date];
                [v37 timeIntervalSinceDate:v25];
                if (v38 < 0.0)
                {
                }

                else
                {
                  v39 = [v36 date];
                  [v39 timeIntervalSinceDate:v26];
                  v41 = v40;

                  if (v41 <= 0.0)
                  {
                    v43 = v53->_log;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      v45 = v43;
                      v46 = [v51 localizedName];
                      v47 = [v36 date];
                      *buf = 138412546;
                      v69 = v46;
                      v70 = 2112;
                      v71 = v47;
                      _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "Found pass, forcing immediate charge: %@, %@", buf, 0x16u);
                    }

                    v13 = [MEMORY[0x277CBEAA8] distantPast];

                    v27 = v54;
                    v14 = v55;
                    goto LABEL_47;
                  }
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v60 objects:v72 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          ++v29;
          v27 = v54;
          v14 = v55;
          v28 = v50;
        }

        while (v29 != v52);
        v52 = [v54 countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v52);
    }

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of walletMonitor requiredFullChargeDate"];
    if (v14)
    {
      v42 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

      v14 = v42;
    }

    else
    {
      v14 = &unk_282D4E908;
    }

    [PowerUISmartChargeUtilities setNumber:v14 forPreferenceKey:@"WMQSuccesses" inDomain:@"com.apple.smartcharging.topoffprotection"];
    v13 = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_47:

    v5 = v58;
    v3 = v59;
    v11 = v57;
  }

  else
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "too many WMQ failures, temp disable", buf, 2u);
    }

    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:604800.0];
    [PowerUISmartChargeUtilities setDate:v18 forPreferenceKey:@"WMQDisabledUntil" inDomain:@"com.apple.smartcharging.topoffprotection"];

    v13 = [MEMORY[0x277CBEAA8] distantFuture];
  }

LABEL_49:
  v48 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)detectedSignals
{
  v2 = [(PowerUIWalletSignalMonitor *)self requiredFullChargeDate];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [v2 isEqualToDate:v3];

  if (v4)
  {
    [MEMORY[0x277CBEA60] array];
  }

  else
  {
    [MEMORY[0x277CBEA60] arrayWithObject:v2];
  }
  v5 = ;

  return v5;
}

@end