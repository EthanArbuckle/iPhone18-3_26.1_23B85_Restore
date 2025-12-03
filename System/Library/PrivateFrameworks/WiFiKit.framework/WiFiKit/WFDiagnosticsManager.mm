@interface WFDiagnosticsManager
- (NSArray)noInternetTestRequests;
- (WFDiagnosticsManager)init;
- (WFDiagnosticsManager)initWithCustomTests:(id)tests;
- (id)_joinFailureDiagnosticsResultFromW5Results:(id)results;
- (id)_noInternetDiagnosticsResultFromW5Results:(id)results;
- (id)joinFailureTestRequestsFor:(id)for;
- (void)runCustomDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
- (void)runJoinFailureDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
- (void)runNoInternetDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
@end

@implementation WFDiagnosticsManager

- (WFDiagnosticsManager)init
{
  v7.receiver = self;
  v7.super_class = WFDiagnosticsManager;
  v2 = [(WFDiagnosticsManager *)&v7 init];
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getW5ClientClass_softClass_0;
    v12 = getW5ClientClass_softClass_0;
    if (!getW5ClientClass_softClass_0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getW5ClientClass_block_invoke_0;
      v8[3] = &unk_279EBCD88;
      v8[4] = &v9;
      __getW5ClientClass_block_invoke_0(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    sharedClient = [v3 sharedClient];
    [(WFDiagnosticsManager *)v2 setClient:sharedClient];
  }

  return v2;
}

- (WFDiagnosticsManager)initWithCustomTests:(id)tests
{
  v20 = *MEMORY[0x277D85DE8];
  testsCopy = tests;
  v5 = [(WFDiagnosticsManager *)self init];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = testsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [getW5DiagnosticsTestRequestClass() requestWithTestID:objc_msgSend(*(*(&v15 + 1) + 8 * v11) configuration:{"intValue", v15), 0}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(WFDiagnosticsManager *)v5 setCustomTestRequests:v6];
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)joinFailureTestRequestsFor:(id)for
{
  v11[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = [getW5DiagnosticsTestRequestClass() requestWithTestID:24 configuration:0];
  if (forCopy)
  {
    v5 = objc_opt_new();
    [v5 setObject:forCopy forKeyedSubscript:@"NetworkName"];
    v6 = [getW5DiagnosticsTestRequestClass() requestWithTestID:24 configuration:v5];

    v4 = v6;
  }

  v7 = [getW5DiagnosticsTestRequestClass() requestWithTestID:19 configuration:0];
  v11[0] = v7;
  v11[1] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSArray)noInternetTestRequests
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:5];
  [v2 setObject:v3 forKeyedSubscript:@"Timeout"];

  v4 = [getW5DiagnosticsTestRequestClass() requestWithTestID:11 configuration:v2];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_joinFailureDiagnosticsResultFromW5Results:(id)results
{
  resultsCopy = results;
  v4 = [[WFDiagnosticsResultItemBT alloc] initWithResults:resultsCopy];
  v5 = v4;
  if (v4 && ![(WFDiagnosticsResultItemBT *)v4 didPassTest])
  {
    v9 = v5;
    v8 = v9;
  }

  else
  {
    v6 = [[WFDiagnosticsResultItemCongestion alloc] initWithResults:resultsCopy];
    v7 = v6;
    if (v6 && ![(WFDiagnosticsResultItemCongestion *)v6 didPassTest])
    {
      v9 = v7;
      v8 = v9;
    }

    else
    {
      v8 = [[WFDiagnosticsResultItemTestPass alloc] initWithResults:resultsCopy];
      v9 = 0;
    }
  }

  return v8;
}

- (id)_noInternetDiagnosticsResultFromW5Results:(id)results
{
  resultsCopy = results;
  v4 = [[WFDiagnosticsResultItemNoInternet alloc] initWithResults:resultsCopy];

  return v4;
}

- (void)runCustomDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v30 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  customTestRequests = [(WFDiagnosticsManager *)self customTestRequests];
  v12 = [customTestRequests count] == 0;

  v13 = WFLogForCategory(0);
  if (v12)
  {
    v18 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v13, v18, "No test requests to run.", buf, 2u);
    }
  }

  else
  {
    v14 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
    {
      *buf = 136315394;
      v27 = "[WFDiagnosticsManager runCustomDiagnosticsFor:withUpdate:result:]";
      v28 = 2112;
      v29 = forCopy;
      _os_log_impl(&dword_273ECD000, v13, v14, "%s: Running a Custom test for %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    client = self->_client;
    customTestRequests = self->_customTestRequests;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke;
    v24[3] = &unk_279EBE1F8;
    v25 = updateCopy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_3;
    v20[3] = &unk_279EBE248;
    v21 = forCopy;
    objc_copyWeak(&v23, buf);
    v22 = resultCopy;
    v17 = [(W5Client *)client runDiagnostics:customTestRequests configuration:0 update:v24 reply:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = a1[4];
      *buf = 138412546;
      v47 = v10;
      v48 = 2048;
      v49 = [v6 count];
      _os_log_impl(&dword_273ECD000, v9, v8, "Custom test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = [WeakRetained _joinFailureDiagnosticsResultFromW5Results:v6];

  if (!v12 || [v12 didPassTest])
  {
    v13 = objc_loadWeakRetained(a1 + 6);
    v14 = [v13 _noInternetDiagnosticsResultFromW5Results:v6];

    v12 = v14;
  }

  v15 = objc_loadWeakRetained(a1 + 6);

  if (v15 && v12)
  {
    v16 = +[WFMetricsManager sharedManager];
    v17 = [WFDiagnosticsEvent alloc];
    v18 = [v12 didPassTest];
    v19 = [v12 failedTests];
    v20 = [(WFDiagnosticsEvent *)v17 initWithDiagnosticsEventType:2 didPassTest:v18 failedTests:v19];
    [v16 processEvent:v20];

LABEL_33:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_21;
    block[3] = &unk_279EBE220;
    v40 = a1[5];
    v37 = v5;
    v38 = v12;
    v39 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v32 = v40;
    goto LABEL_34;
  }

  v21 = objc_loadWeakRetained(a1 + 6);

  if (v21)
  {
    if (v12)
    {
      goto LABEL_33;
    }

    v35 = v5;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      v26 = &stru_2882E4AD8;
      do
      {
        v27 = 0;
        v28 = v26;
        do
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [v28 stringByAppendingFormat:@"\n%@", *(*(&v41 + 1) + 8 * v27)];

          ++v27;
          v28 = v26;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = &stru_2882E4AD8;
    }

    v30 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v31))
    {
      *buf = 138412290;
      v47 = v26;
      _os_log_impl(&dword_273ECD000, v30, v31, "Custom diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v35;
  }

  else
  {
    v26 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v26 && os_log_type_enabled(v26, v29))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v26, v29, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v12)
  {
    goto LABEL_33;
  }

  v32 = WFLogForCategory(0);
  v34 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v32 && os_log_type_enabled(v32, v34))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v32, v34, "Empty custom diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_34:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)runJoinFailureDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  v11 = [(WFDiagnosticsManager *)self joinFailureTestRequestsFor:forCopy];
  objc_initWeak(&location, self);
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
  {
    *buf = 136315394;
    v28 = "[WFDiagnosticsManager runJoinFailureDiagnosticsFor:withUpdate:result:]";
    v29 = 2112;
    v30 = forCopy;
    _os_log_impl(&dword_273ECD000, v12, v13, "%s: Running a Join Failure test for %@", buf, 0x16u);
  }

  client = [(WFDiagnosticsManager *)self client];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke;
  v24[3] = &unk_279EBE1F8;
  v15 = updateCopy;
  v25 = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_3;
  v20[3] = &unk_279EBE248;
  v16 = forCopy;
  v21 = v16;
  objc_copyWeak(&v23, &location);
  v17 = resultCopy;
  v22 = v17;
  v18 = [client runDiagnostics:v11 configuration:0 update:v24 reply:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = a1[4];
      *buf = 138412546;
      v45 = v10;
      v46 = 2048;
      v47 = [v6 count];
      _os_log_impl(&dword_273ECD000, v9, v8, "Join Failure test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = [WeakRetained _joinFailureDiagnosticsResultFromW5Results:v6];

  v13 = objc_loadWeakRetained(a1 + 6);
  if (v13 && v12)
  {
    v14 = +[WFMetricsManager sharedManager];
    v15 = [WFDiagnosticsEvent alloc];
    v16 = [v12 didPassTest];
    v17 = [v12 failedTests];
    v18 = [(WFDiagnosticsEvent *)v15 initWithDiagnosticsEventType:0 didPassTest:v16 failedTests:v17];
    [v14 processEvent:v18];

LABEL_30:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_23;
    block[3] = &unk_279EBE220;
    v38 = a1[5];
    v35 = v5;
    v36 = v12;
    v37 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v30 = v38;
    goto LABEL_31;
  }

  v19 = objc_loadWeakRetained(a1 + 6);

  if (v19)
  {
    if (v12)
    {
      goto LABEL_30;
    }

    v33 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      v24 = &stru_2882E4AD8;
      do
      {
        v25 = 0;
        v26 = v24;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v26 stringByAppendingFormat:@"\n%@", *(*(&v39 + 1) + 8 * v25)];

          ++v25;
          v26 = v24;
        }

        while (v22 != v25);
        v22 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = &stru_2882E4AD8;
    }

    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v28 && os_log_type_enabled(v28, v29))
    {
      *buf = 138412290;
      v45 = v24;
      _os_log_impl(&dword_273ECD000, v28, v29, "Join Failure diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v33;
  }

  else
  {
    v24 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v24 && os_log_type_enabled(v24, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v24, v27, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v12)
  {
    goto LABEL_30;
  }

  v30 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v32))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v30, v32, "Empty join failure diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)runNoInternetDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  objc_initWeak(&location, self);
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    *buf = 136315394;
    v28 = "[WFDiagnosticsManager runNoInternetDiagnosticsFor:withUpdate:result:]";
    v29 = 2112;
    v30 = forCopy;
    _os_log_impl(&dword_273ECD000, v11, v12, "%s: Running a No Internet test for %@", buf, 0x16u);
  }

  client = [(WFDiagnosticsManager *)self client];
  noInternetTestRequests = [(WFDiagnosticsManager *)self noInternetTestRequests];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke;
  v24[3] = &unk_279EBE1F8;
  v15 = updateCopy;
  v25 = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_3;
  v20[3] = &unk_279EBE248;
  v16 = forCopy;
  v21 = v16;
  objc_copyWeak(&v23, &location);
  v17 = resultCopy;
  v22 = v17;
  v18 = [client runDiagnostics:noInternetTestRequests configuration:0 update:v24 reply:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = a1[4];
      *buf = 138412546;
      v45 = v10;
      v46 = 2048;
      v47 = [v6 count];
      _os_log_impl(&dword_273ECD000, v9, v8, "No Internet test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = [WeakRetained _noInternetDiagnosticsResultFromW5Results:v6];

  v13 = objc_loadWeakRetained(a1 + 6);
  if (v13 && v12)
  {
    v14 = +[WFMetricsManager sharedManager];
    v15 = [WFDiagnosticsEvent alloc];
    v16 = [v12 didPassTest];
    v17 = [v12 failedTests];
    v18 = [(WFDiagnosticsEvent *)v15 initWithDiagnosticsEventType:1 didPassTest:v16 failedTests:v17];
    [v14 processEvent:v18];

LABEL_30:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_24;
    block[3] = &unk_279EBE220;
    v38 = a1[5];
    v35 = v5;
    v36 = v12;
    v37 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v30 = v38;
    goto LABEL_31;
  }

  v19 = objc_loadWeakRetained(a1 + 6);

  if (v19)
  {
    if (v12)
    {
      goto LABEL_30;
    }

    v33 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      v24 = &stru_2882E4AD8;
      do
      {
        v25 = 0;
        v26 = v24;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v26 stringByAppendingFormat:@"\n%@", *(*(&v39 + 1) + 8 * v25)];

          ++v25;
          v26 = v24;
        }

        while (v22 != v25);
        v22 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = &stru_2882E4AD8;
    }

    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v28 && os_log_type_enabled(v28, v29))
    {
      *buf = 138412290;
      v45 = v24;
      _os_log_impl(&dword_273ECD000, v28, v29, "No Internet diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v33;
  }

  else
  {
    v24 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v24 && os_log_type_enabled(v24, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v24, v27, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v12)
  {
    goto LABEL_30;
  }

  v30 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v32))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v30, v32, "Empty no internet diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
}

@end