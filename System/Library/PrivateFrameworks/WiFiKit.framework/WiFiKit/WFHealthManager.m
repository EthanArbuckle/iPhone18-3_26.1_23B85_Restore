@interface WFHealthManager
- (BOOL)currentNetworkHasNoInternetConnection;
- (WFHealthManager)initWithInterface:(id)a3;
- (void)_updateCurrentNetworkIssues;
- (void)currentNetworkDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)runNoInternetDiagnostics;
- (void)runNoInternetDiagnosticsAfter:(int64_t)a3;
- (void)setNetwork:(id)a3;
@end

@implementation WFHealthManager

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(WFHealthManager *)self evaluator];
  [v4 removeObserver:self forKeyPath:@"path"];

  v5.receiver = self;
  v5.super_class = WFHealthManager;
  [(WFHealthManager *)&v5 dealloc];
}

- (void)setNetwork:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 isEqual:self->_network];
  v7 = WFLogForCategory(0);
  if (v6)
  {
    v8 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, v8))
      {
        v10 = [v5 networkName];
        v16 = 136315394;
        v17 = "[WFHealthManager setNetwork:]";
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_273ECD000, v9, v8, "%s-No change to network, current network: %@", &v16, 0x16u);
      }
    }
  }

  else
  {
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v11))
    {
      v16 = 136315394;
      v17 = "[WFHealthManager setNetwork:]";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_273ECD000, v7, v11, "%s- %@", &v16, 0x16u);
    }

    [(WFHealthManager *)self setFailNoInternetDiagnosticsTests:0];
    if (!v5)
    {
      v12 = [(WFHealthManager *)self noInternetTestQueue];
      [v12 cancelAllOperations];
    }

    objc_storeStrong(&self->_network, a3);
    self->_failNoInternetDiagnosticsTests = 0;
    currentNetworkIssues = self->_currentNetworkIssues;
    self->_currentNetworkIssues = 0;

    failedTestsIDs = self->_failedTestsIDs;
    self->_failedTestsIDs = MEMORY[0x277CBEBF8];

    [(WFHealthManager *)self _updateCurrentNetworkIssues];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)runNoInternetDiagnosticsAfter:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(WFHealthManager *)self noInternetTestQueue];
  v6 = [v5 operationCount];

  if (!v6)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
    {
      *buf = 136315394;
      v19 = "[WFHealthManager runNoInternetDiagnosticsAfter:]";
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_273ECD000, v7, v8, "%s: queuing no internet test after %lusecs", buf, 0x16u);
    }

    [(WFHealthManager *)self forceUpdateNetworkIssues];
    v9 = objc_alloc_init(MEMORY[0x277CCA8C8]);
    objc_initWeak(buf, self);
    objc_initWeak(&location, v9);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__WFHealthManager_runNoInternetDiagnosticsAfter___block_invoke;
    v14 = &unk_279EBDDB0;
    v16[1] = a3;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(v16, buf);
    [v9 addExecutionBlock:&v11];
    [(NSOperationQueue *)self->_noInternetTestQueue addOperation:v9, v11, v12, v13, v14];
    objc_destroyWeak(v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__WFHealthManager_runNoInternetDiagnosticsAfter___block_invoke(uint64_t a1)
{
  sleep(*(a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v4, v5, "no internet test cancelled", buf, 2u);
    }
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 runNoInternetDiagnostics];
  }
}

- (void)runNoInternetDiagnostics
{
  v3 = [(WFHealthManager *)self interface];
  v4 = [v3 isReadyForConnectionVelocityTest];

  if (v4)
  {
    v5 = [(WFHealthManager *)self interface];
    v6 = [v5 currentNetwork];
    v7 = [v6 ssid];

    if (!v7)
    {
      v8 = [(WFHealthManager *)self network];
      v7 = [v8 networkName];
    }

    [(WFHealthManager *)self setFailNoInternetDiagnosticsTests:0];
    v9 = [(WFHealthManager *)self network];
    v10 = [v9 isCarPlay];

    if ((v10 & 1) == 0)
    {
      if (v7)
      {
        objc_initWeak(location, self);
        v11 = [(WFHealthManager *)self diagnosticsManager];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43__WFHealthManager_runNoInternetDiagnostics__block_invoke_21;
        v16[3] = &unk_279EBDDD8;
        objc_copyWeak(&v17, location);
        [v11 runNoInternetDiagnosticsFor:v7 withUpdate:&__block_literal_global_4 result:v16];

        objc_destroyWeak(&v17);
        objc_destroyWeak(location);
      }

      else
      {
        v14 = WFLogForCategory(0);
        v15 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_273ECD000, v14, v15, "Not running no internet test because ssid is nil!", location, 2u);
        }

        [(WFHealthManager *)self forceUpdateNetworkIssues];
      }
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_273ECD000, v12, v13, "Not ready for velocity test, updating other health issues.", location, 2u);
    }

    [(WFHealthManager *)self forceUpdateNetworkIssues];
  }
}

void __43__WFHealthManager_runNoInternetDiagnostics__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_273ECD000, v3, v4, "Diagnostics event received: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__WFHealthManager_runNoInternetDiagnostics__block_invoke_21(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (!v7)
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() < 3 || !v16 || !os_log_type_enabled(v16, v17))
    {
      goto LABEL_20;
    }

    v22 = 0;
    v18 = "Not connected to a network, canceling following tests...";
    v19 = &v22;
    goto LABEL_19;
  }

  v10 = [WeakRetained network];
  v11 = [v10 networkName];
  v12 = [v7 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v16 || !os_log_type_enabled(v16, v17))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Network has changed before no internet test result comes back! Discarding test results...";
    v19 = buf;
LABEL_19:
    _os_log_impl(&dword_273ECD000, v16, v17, v18, v19, 2u);
LABEL_20:

    goto LABEL_21;
  }

  if (v6 && ([v6 didPassTest] & 1) == 0)
  {
    [v9 setFailNoInternetDiagnosticsTests:1];
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
    {
      *v20 = 0;
      _os_log_impl(&dword_273ECD000, v13, v14, "Velocity no internet failed, reschedule another one after 10 second!", v20, 2u);
    }

    [v9 runNoInternetDiagnosticsAfter:10];
    [v9 setCompletedVelocityTestTimes:{objc_msgSend(v9, "completedVelocityTestTimes") + 1}];
    [v9 setShouldFileNewMetrics:1];
    v15 = [v6 failedTests];
    [v9 setFailedTestsIDs:v15];
  }

  [v9 _updateCurrentNetworkIssues];
LABEL_21:
}

- (void)currentNetworkDidChange:(id)a3
{
  v6 = [(WFHealthManager *)self interface];
  v4 = [v6 currentNetwork];
  v5 = [v4 scanResult];
  [(WFHealthManager *)self setNetwork:v5];
}

void __46__WFHealthManager__updateCurrentNetworkIssues__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFHealthManagerHealthIssuesDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)currentNetworkHasNoInternetConnection
{
  v43 = *MEMORY[0x277D85DE8];
  if (![(WFHealthManager *)self failNoInternetDiagnosticsTests])
  {
    v12 = [(WFHealthManager *)self interface];
    if ([v12 ipv4SelfAssigned])
    {
      v11 = 1;
    }

    else
    {
      v13 = [(WFHealthManager *)self interface];
      v11 = [v13 hasNoGatewayIP];
    }

    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v14 && os_log_type_enabled(v14, v15))
    {
      v16 = "yes";
      if (v11)
      {
        v16 = "no";
      }

      v37 = 136315394;
      v38 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v39 = 2080;
      v40 = v16;
      _os_log_impl(&dword_273ECD000, v14, v15, "%s using ipv4 state internet connection -> %s", &v37, 0x16u);
    }

    if ((v11 & 1) == 0)
    {
      v17 = [(WFHealthManager *)self network];
      v18 = [v17 carPlayNetworkType];

      if (v18 != 2)
      {
        LOBYTE(v11) = 0;
        goto LABEL_38;
      }
    }

    v19 = [(WFHealthManager *)self evaluator];
    v20 = [v19 path];

    v21 = [v20 status];
    if (v21 == 2)
    {
      v25 = +[WFMetricsManager sharedManager];
      v26 = [(WFHealthManager *)self completedVelocityTestTimes];
      v27 = [(WFHealthManager *)self network];
      v28 = [v27 networkName];
      LOBYTE(v11) = 1;
      v29 = [WFHealthUIEvent noInternetEventWithTestTimes:v26 didPassTest:1 failedVelocityTests:MEMORY[0x277CBEBF8] ssid:v28];
      [v25 processEvent:v29];

      v23 = WFLogForCategory(0);
      v30 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v23 || !os_log_type_enabled(v23, v30))
      {
        goto LABEL_37;
      }

      v37 = 136315650;
      v38 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v39 = 2048;
      v40 = 2;
      v41 = 2112;
      v42 = v20;
      v31 = "%s NWPathEvalutaor state unsatisfied - %lu (path: %@)";
      v32 = v23;
      v33 = v30;
    }

    else
    {
      v22 = v21;
      if (v21 == 1)
      {
        v23 = WFLogForCategory(0);
        v24 = OSLogForWFLogLevel(3uLL);
        LOBYTE(v11) = 0;
        if (WFCurrentLogLevel() >= 3 && v23)
        {
          if (os_log_type_enabled(v23, v24))
          {
            v37 = 136315138;
            v38 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
            _os_log_impl(&dword_273ECD000, v23, v24, "%s falling back to NWPathEvaluator for internet connection -> YES", &v37, 0xCu);
          }

          LOBYTE(v11) = 0;
        }

        goto LABEL_37;
      }

      v23 = WFLogForCategory(0);
      v34 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v23 || !os_log_type_enabled(v23, v34))
      {
LABEL_37:

        goto LABEL_38;
      }

      v37 = 136315650;
      v38 = "[WFHealthManager currentNetworkHasNoInternetConnection]";
      v39 = 2048;
      v40 = v22;
      v41 = 2112;
      v42 = v20;
      v31 = "%s NWPathEvalutaor state invalid - %lu (path: %@)";
      v32 = v23;
      v33 = v34;
    }

    _os_log_impl(&dword_273ECD000, v32, v33, v31, &v37, 0x20u);
    goto LABEL_37;
  }

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "No internet warning generated becuase Velocity tests failed", &v37, 2u);
  }

  if ([(WFHealthManager *)self shouldFileNewMetrics])
  {
    v5 = +[WFMetricsManager sharedManager];
    v6 = [(WFHealthManager *)self completedVelocityTestTimes];
    v7 = [(WFHealthManager *)self failedTestsIDs];
    v8 = [(WFHealthManager *)self network];
    v9 = [v8 networkName];
    v10 = [WFHealthUIEvent noInternetEventWithTestTimes:v6 didPassTest:0 failedVelocityTests:v7 ssid:v9];
    [v5 processEvent:v10];
  }

  [(WFHealthManager *)self setShouldFileNewMetrics:0];
  LOBYTE(v11) = 1;
LABEL_38:
  v35 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a6 == &kWFHealthManagerContext)
  {
    if ([a3 isEqualToString:@"path"])
    {
      v11 = [v10 valueForKey:*MEMORY[0x277CCA300]];
      v12 = [v10 valueForKey:*MEMORY[0x277CCA2F0]];
      v13 = [v11 status];
      if (v13 != [v12 status])
      {
        v14 = WFLogForCategory(0);
        v15 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v14)
        {
          v16 = v14;
          if (os_log_type_enabled(v16, v15))
          {
            *buf = 134218240;
            v21 = [v11 status];
            v22 = 2048;
            v23 = [v12 status];
            _os_log_impl(&dword_273ECD000, v16, v15, "Network Evaluator Path Changed: oldValue.status %ld, newValue.status %ld", buf, 0x16u);
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__WFHealthManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_279EBCFE0;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = WFHealthManager;
    [(WFHealthManager *)&v19 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (WFHealthManager)initWithInterface:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = WFHealthManager;
  v6 = [(WFHealthManager *)&v26 init];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_interface, a3);
  interface = v7->_interface;
  if (!interface)
  {
    v11 = 0;
LABEL_10:
    v24 = v7;
    v7 = 0;
    goto LABEL_7;
  }

  v9 = [(WFInterface *)interface currentNetwork];
  v10 = [v9 scanResult];
  [(WFHealthManager *)v7 setNetwork:v10];

  v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = objc_alloc(MEMORY[0x277CD91D8]);
  v13 = [(WFInterface *)v7->_interface interfaceName];
  v14 = [v12 initWithInterfaceName:v13];
  [v11 setRequiredInterface:v14];

  v15 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v11];
  evaluator = v7->_evaluator;
  v7->_evaluator = v15;

  v17 = v7->_evaluator;
  if (!v17)
  {
    goto LABEL_10;
  }

  [(NWPathEvaluator *)v17 addObserver:v7 forKeyPath:@"path" options:3 context:kWFHealthManagerContext];
  v18 = objc_alloc_init(MEMORY[0x277CCABD8]);
  noInternetTestQueue = v7->_noInternetTestQueue;
  v7->_noInternetTestQueue = v18;

  v20 = v7->_noInternetTestQueue;
  if (!v20)
  {
    goto LABEL_10;
  }

  [(NSOperationQueue *)v20 setMaxConcurrentOperationCount:1];
  v7->_completedVelocityTestTimes = 0;
  v21 = objc_alloc_init(WFDiagnosticsManager);
  diagnosticsManager = v7->_diagnosticsManager;
  v7->_diagnosticsManager = v21;

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:v7 selector:sel_currentNetworkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:v7->_interface];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 addObserver:v7 selector:sel_linkQualityDidChange_ name:@"WFInterfaceLinkQualityNotification" object:v7->_interface];
LABEL_7:

  return v7;
}

- (void)_updateCurrentNetworkIssues
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(WFHealthManager *)self interface];
  v4 = [v3 currentNetwork];
  v5 = [v4 matchingKnownNetworkProfile];

  v6 = [(WFHealthManager *)self network];

  if (!v6)
  {
LABEL_48:
    v9 = 0;
    currentNetworkIssues = self->_currentNetworkIssues;
    if (!currentNetworkIssues)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  v7 = [(WFHealthManager *)self network];
  v8 = [v7 supportsWiFiHealth];

  if (!v8)
  {
    if ([0 count])
    {
      goto LABEL_48;
    }

    v9 = 0;
    goto LABEL_47;
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [(WFHealthManager *)self network];
  v11 = [v10 configurationIssues];

  if ([v11 count])
  {
    [v11 allObjects];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObjectsFromArray:?];
  }

  if ([(WFHealthManager *)self currentNetworkHasNoInternetConnection])
  {
    [MEMORY[0x277D7B9C0] issueWithType:1];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObject:?];
  }

  v12 = [v5 acceptedEAPTypes];
  if ([v12 count] == 1)
  {
    v13 = [v5 acceptedEAPTypes];
    v14 = [v13 containsObject:&unk_288304A08];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(WFHealthManager *)self network];
  if (![v15 isEAP] || !v5 || objc_msgSend(v5, "addReason") != 10)
  {
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = [v5 TLSTrustedServerNames];

    if (!v15)
    {
      [MEMORY[0x277D7B9C0] issueWithType:0x40000];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() addObject:?];
LABEL_18:
    }
  }

  v16 = [(WFHealthManager *)self interface];
  v17 = [v16 currentNetwork];
  v18 = [v17 matchingKnownNetworkProfile];
  v19 = [v18 isStandalone6G];

  if (v19)
  {
    if ([(WFHealthManager *)self isChinaDevice])
    {
      [MEMORY[0x277D7B9D0] limitedNetwork_CH];
    }

    else
    {
      [MEMORY[0x277D7B9D0] limitedNetwork];
    }

    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_5() addObject:?];
  }

  v20 = [(WFHealthManager *)self interface];
  if ([v20 currentNetworkIsDirected])
  {

    goto LABEL_29;
  }

  v21 = [(WFHealthManager *)self network];
  v22 = [v21 isHidden];

  if (v22)
  {
    goto LABEL_29;
  }

  v23 = [(WFHealthManager *)self interface];
  v24 = [v23 currentNetwork];
  v25 = [v24 matchingKnownNetworkProfile];

  if (v25)
  {
    v20 = [(WFHealthManager *)self interface];
    v26 = [v20 currentNetwork];
    v27 = [v26 matchingKnownNetworkProfile];
    v28 = [v27 hiddenState];

    if (v28 == 1)
    {
LABEL_29:
      [MEMORY[0x277D7B9C0] issueWithType:8];
      objc_claimAutoreleasedReturnValue();
      v29 = [OUTLINED_FUNCTION_0_5() containsObject:?];

      if (v29)
      {
        [MEMORY[0x277D7B9C0] issueWithType:64];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_5() addObject:?];

        v30 = MEMORY[0x277D7B9C0];
        v31 = 8;
      }

      else
      {
        [MEMORY[0x277D7B9C0] issueWithType:2];
        objc_claimAutoreleasedReturnValue();
        v32 = [OUTLINED_FUNCTION_0_5() containsObject:?];

        if (v32)
        {
          [MEMORY[0x277D7B9C0] issueWithType:256];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_5() addObject:?];

          v30 = MEMORY[0x277D7B9C0];
          v31 = 2;
        }

        else
        {
          [MEMORY[0x277D7B9C0] issueWithType:4];
          objc_claimAutoreleasedReturnValue();
          v33 = [OUTLINED_FUNCTION_0_5() containsObject:?];

          if (v33)
          {
            [MEMORY[0x277D7B9C0] issueWithType:128];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_0_5() addObject:?];

            v30 = MEMORY[0x277D7B9C0];
            v31 = 4;
          }

          else
          {
            [MEMORY[0x277D7B9C0] issueWithType:2048];
            objc_claimAutoreleasedReturnValue();
            v34 = [OUTLINED_FUNCTION_0_5() containsObject:?];

            if (!v34)
            {
              [MEMORY[0x277D7B9C0] issueWithType:0x4000];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_0_5() addObject:?];
              goto LABEL_38;
            }

            [MEMORY[0x277D7B9C0] issueWithType:4096];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_0_5() addObject:?];

            v30 = MEMORY[0x277D7B9C0];
            v31 = 2048;
          }
        }
      }

      [v30 issueWithType:v31];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() removeObject:?];
LABEL_38:
    }
  }

  v35 = [(WFHealthManager *)self interface];
  v36 = [v35 currentNetwork];
  v37 = [v36 matchingKnownNetworkProfile];
  v38 = [v37 deploymentIssues];

  if (v38)
  {
    if (v38)
    {
      v39 = [MEMORY[0x277D7B9C0] issueWithType:0x100000];
      [v9 addObject:v39];
    }

    if ((v38 & 4) != 0)
    {
      [MEMORY[0x277D7B9C0] issueWithType:0x400000];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_5() addObject:?];
    }
  }

  if (![v9 count])
  {
LABEL_47:

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_48;
  }

  currentNetworkIssues = self->_currentNetworkIssues;
LABEL_49:
  if (([v9 isEqualToSet:currentNetworkIssues] & 1) == 0)
  {
    v41 = WFLogForCategory(0);
    v42 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v41 && os_log_type_enabled(v41, v42))
    {
      *buf = 136315394;
      v48 = "[WFHealthManager _updateCurrentNetworkIssues]";
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&dword_273ECD000, v41, v42, "%s- change to health issues %@", buf, 0x16u);
    }

    v43 = [v9 count];
    if (v43)
    {
      v43 = v9;
    }

    v44 = self->_currentNetworkIssues;
    self->_currentNetworkIssues = v43;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WFHealthManager__updateCurrentNetworkIssues__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_57:

  v45 = *MEMORY[0x277D85DE8];
}

@end