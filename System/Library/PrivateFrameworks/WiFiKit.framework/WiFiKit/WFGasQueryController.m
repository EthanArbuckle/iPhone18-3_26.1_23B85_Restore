@interface WFGasQueryController
- (WFGasQueryController)init;
- (WFGasQueryController)initWithInterface:(id)a3;
- (WFGasQueryControllerDelegate)delegate;
- (id)_ANQPDictionaryFromScanResult:(id)a3;
- (id)_defaultANQPParameterForNetworks:(id)a3;
- (id)profileForNetwork:(id)a3;
- (void)_processANQPResults:(id)a3 scanRecords:(id)a4 error:(id)a5;
- (void)removeAllProfiles;
- (void)removeProfileForNetwork:(id)a3;
- (void)resolveProfileForNetwork:(id)a3 handler:(id)a4 force:(BOOL)a5;
- (void)resolveProfilesForNetworks:(id)a3;
@end

@implementation WFGasQueryController

- (WFGasQueryController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFGasQueryController init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (WFGasQueryController)initWithInterface:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFGasQueryController;
  v6 = [(WFGasQueryController *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    [WFGasQueryController initWithInterface:];
LABEL_5:

    v7 = 0;
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_cInterface, a3);
  v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:0];
  gasResponseCache = v7->_gasResponseCache;
  v7->_gasResponseCache = v8;

  if (!v7->_gasResponseCache)
  {
    goto LABEL_5;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  resolvedNetworks = v7->_resolvedNetworks;
  v7->_resolvedNetworks = v10;

  if (!v7->_resolvedNetworks)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)profileForNetwork:(id)a3
{
  v4 = a3;
  v5 = [(WFGasQueryController *)self gasResponseCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)resolveProfilesForNetworks:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(WFGasQueryController *)self resolvedNetworks];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v6 removeObject:*(*(&v23 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v11 = [v6 count]== 0;
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v15 = WFCurrentLogLevel() > 2 && v12 != 0;
    if (v11)
    {
      if (v15 && os_log_type_enabled(v12, v13))
      {
        *buf = 136315138;
        v29 = "[WFGasQueryController resolveProfilesForNetworks:]";
        _os_log_impl(&dword_273ECD000, v12, v13, "%s: no new HS20 networks to resolve", buf, 0xCu);
      }
    }

    else
    {
      if (v15 && os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&dword_273ECD000, v12, v13, "Starting GAS query for %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v16 = [(WFGasQueryController *)self _defaultANQPParameterForNetworks:v6];
      v17 = [(WFGasQueryController *)self cInterface];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke;
      v20[3] = &unk_279EBDB88;
      v20[4] = self;
      objc_copyWeak(&v22, buf);
      v6 = v6;
      v21 = v6;
      [v17 performANQPWithParameters:v16 reply:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v6 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v18))
    {
      *buf = 136315138;
      v29 = "[WFGasQueryController resolveProfilesForNetworks:]";
      _os_log_impl(&dword_273ECD000, v6, v18, "%s: nil networks", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke_3;
  v12[3] = &unk_279EBDB60;
  v12[4] = *(a1 + 32);
  v12[5] = &v13;
  [v6 enumerateObjectsUsingBlock:v12];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v9 = v14[5];
    *buf = 136315650;
    v20 = "[WFGasQueryController resolveProfilesForNetworks:]_block_invoke_2";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: responses %@ error %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processANQPResults:v14[5] scanRecords:*(a1 + 40) error:v5];

  _Block_object_dispose(&v13, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFANQPQueryResponse alloc];
  v5 = [*(a1 + 32) _ANQPDictionaryFromScanResult:v3];
  v6 = [(WFANQPQueryResponse *)v4 initWithScanResult:v3 ANQPResponse:v5];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

- (id)_ANQPDictionaryFromScanResult:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 cellularNetworkInfo];
  [v5 setValue:v6 forKey:@"ANQP_CELL_NETWORK_INFO"];

  v7 = [v4 roamingConsortiumList];
  [v5 setValue:v7 forKey:@"ANQP_ROAMING_CONSORTIUM_OI_LIST"];

  v8 = [v4 domainNameList];
  [v5 setValue:v8 forKey:@"ANQP_DOMAIN_NAME_LIST"];

  v9 = [v4 BSSID];
  [v5 setValue:v9 forKey:@"BSSID"];

  v10 = [v4 operatorFriendlyNameList];

  v11 = [v10 firstObject];
  [v5 setValue:v11 forKey:@"ANQP_OPERATOR_NAME"];

  return v5;
}

- (id)_defaultANQPParameterForNetworks:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D02AB8]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WFGasQueryController__defaultANQPParameterForNetworks___block_invoke;
  v7[3] = &unk_279EBDBB0;
  v7[4] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = [v9[5] allObjects];
  [v4 setScanResults:v5];

  [v4 setANQPElementIDList:&unk_288304F00];
  [v4 setMaximumCacheAge:0];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __57__WFGasQueryController__defaultANQPParameterForNetworks___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 mutableCopy];
  WiFiNetworkCreate();

  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [*(*(*(a1 + 32) + 8) + 40) addObject:CoreWiFiScanResult];
}

- (void)resolveProfileForNetwork:(id)a3 handler:(id)a4 force:(BOOL)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315138;
      v27 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: skipping cache, forcing resolution", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v12 = [(WFGasQueryController *)self gasResponseCache];
  v13 = [v12 objectForKey:v8];

  if (!v13)
  {
LABEL_14:
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
    {
      *buf = 136315394;
      v27 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_273ECD000, v16, v17, "%s: resolving profile for %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v19 = [(WFGasQueryController *)self _defaultANQPParameterForNetworks:v18];

    v20 = [(WFGasQueryController *)self cInterface];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke;
    v22[3] = &unk_279EBDC00;
    v22[4] = self;
    objc_copyWeak(&v25, buf);
    v23 = v8;
    v24 = v9;
    [v20 performANQPWithParameters:v19 reply:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
    v13 = 0;
    goto LABEL_19;
  }

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
  {
    *buf = 136315650;
    v27 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_273ECD000, v14, v15, "%s: found cached profile %@ for %@", buf, 0x20u);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, v13, 0);
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_2;
  v10[3] = &unk_279EBDBD8;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v16, (a1 + 56));
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v16);
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = [MEMORY[0x277CBEB58] set];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_3;
  v24[3] = &unk_279EBDB60;
  v2 = *(a1 + 32);
  v24[4] = *(a1 + 40);
  v24[5] = &v25;
  [v2 enumerateObjectsUsingBlock:v24];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v5 = v26[5];
    v6 = *(a1 + 48);
    *buf = 136315650;
    v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke_2";
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: responses %@ error %@", buf, 0x20u);
  }

  if ([v26[5] count] && !*(a1 + 48))
  {
    v8 = [v26[5] anyObject];
    v9 = [v8 scanResult];
    v10 = [v9 matchingKnownNetworkProfile];

    if (v10)
    {
      goto LABEL_10;
    }

    v11 = [*(a1 + 40) cInterface];
    v12 = [v8 scanResult];
    v10 = [v11 knownNetworkProfileMatchingScanResult:v12];

    if (v10)
    {
LABEL_10:
      v13 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v10];
      v7 = [[WFHotspotProfile alloc] initWithProfile:v13 anqpResponse:v8];
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v15 = [WeakRetained gasResponseCache];
      [v15 setObject:v7 forKey:*(a1 + 56)];
    }

    else
    {
      v10 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(1uLL);
      v7 = 0;
      if (!WFCurrentLogLevel() || !v10)
      {
        goto LABEL_12;
      }

      v13 = v10;
      if (os_log_type_enabled(&v13->super, v21))
      {
        v22 = *(a1 + 56);
        v23 = [v8 ssid];
        *buf = 136315650;
        v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke";
        v33 = 2112;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_273ECD000, &v13->super, v21, "%s: no existing profile for network %@ (response %@)", buf, 0x20u);
      }

      v7 = 0;
      v10 = v13;
    }

LABEL_12:
    goto LABEL_13;
  }

  v7 = 0;
LABEL_13:
  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
  {
    v18 = *(a1 + 48);
    *buf = 136315650;
    v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke";
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s: profile %@ error %@", buf, 0x20u);
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    (*(v19 + 16))(v19, v7, *(a1 + 48));
  }

  _Block_object_dispose(&v25, 8);

  v20 = *MEMORY[0x277D85DE8];
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFANQPQueryResponse alloc];
  v5 = [*(a1 + 32) _ANQPDictionaryFromScanResult:v3];
  v6 = [(WFANQPQueryResponse *)v4 initWithScanResult:v3 ANQPResponse:v5];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

- (void)_processANQPResults:(id)a3 scanRecords:(id)a4 error:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (!a5 && v10)
  {
    v38 = objc_opt_new();
    v40 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        v14 = 0;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = [v15 ssid];
          v17 = [v9 scanRecordWithSSID:v16];

          v18 = WFLogForCategory(0);
          if (v17)
          {
            v19 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v18 && os_log_type_enabled(v18, v19))
            {
              *buf = 136315394;
              v49 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
              v50 = 2112;
              v51 = v17;
              _os_log_impl(&dword_273ECD000, v18, v19, "%s: resolved %@", buf, 0x16u);
            }

            v20 = [(WFGasQueryController *)self resolvedNetworks];
            [v20 addObject:v17];

            v21 = [v15 scanResult];
            v18 = [v21 matchingKnownNetworkProfile];

            if (v18)
            {
              goto LABEL_15;
            }

            v22 = [(WFGasQueryController *)self cInterface];
            v23 = [v15 scanResult];
            v18 = [v22 knownNetworkProfileMatchingScanResult:v23];

            if (v18)
            {
LABEL_15:
              v24 = WFLogForCategory(0);
              v25 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v24 && os_log_type_enabled(v24, v25))
              {
                *buf = 136315650;
                v49 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
                v50 = 2112;
                v51 = v18;
                v52 = 2112;
                v53 = v17;
                _os_log_impl(&dword_273ECD000, v24, v25, "%s: resolved profile %@ for %@", buf, 0x20u);
              }

              v26 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v18];
              v27 = [[WFHotspotProfile alloc] initWithProfile:v26 anqpResponse:v15];
              v28 = [(WFGasQueryController *)self gasResponseCache];
              [v28 setObject:v27 forKey:v17];

              if (v26)
              {
                [v38 addObject:v26];
              }

              v29 = [v17 ssid];
              [v40 addObject:v29];
            }

            else
            {
              v18 = WFLogForCategory(0);
              v31 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v18)
              {
                v18 = v18;
                if (os_log_type_enabled(v18, v31))
                {
                  v32 = [v15 ssid];
                  *buf = 136315650;
                  v49 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
                  v50 = 2112;
                  v51 = v17;
                  v52 = 2112;
                  v53 = v32;
                  _os_log_impl(&dword_273ECD000, v18, v31, "%s: no existing profile for network %@ (response %@)", buf, 0x20u);
                }
              }
            }
          }

          else
          {
            v30 = OSLogForWFLogLevel(2uLL);
            if (WFCurrentLogLevel() >= 2 && v18 && os_log_type_enabled(v18, v30))
            {
              *buf = 138412290;
              v49 = v15;
              _os_log_impl(&dword_273ECD000, v18, v30, "Missing scanRecord for ANQP response %@", buf, 0xCu);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v33 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        v12 = v33;
      }

      while (v33);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__WFGasQueryController__processANQPResults_scanRecords_error___block_invoke;
    block[3] = &unk_279EBD268;
    block[4] = self;
    v42 = v38;
    v43 = v40;
    v34 = v40;
    v35 = v38;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v8 = v37;
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __62__WFGasQueryController__processANQPResults_scanRecords_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 gasQueryController:*(a1 + 32) didUpdateProfiles:*(a1 + 40) networkNames:*(a1 + 48)];
}

- (void)removeProfileForNetwork:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *v12 = 136315394;
    *&v12[4] = "[WFGasQueryController removeProfileForNetwork:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: removing profile for network %@", v12, 0x16u);
  }

  if (!v4)
  {
    [WFGasQueryController removeProfileForNetwork:v12];
LABEL_11:
    v10 = *v12;
    goto LABEL_8;
  }

  v7 = [(WFGasQueryController *)self resolvedNetworks];
  [v7 removeObject:v4];

  v8 = [(WFGasQueryController *)self gasResponseCache];
  v9 = [v8 objectForKey:v4];

  if (!v9)
  {
    [WFGasQueryController removeProfileForNetwork:v12];
    goto LABEL_11;
  }

  v10 = [(WFGasQueryController *)self gasResponseCache];
  [v10 removeObjectForKey:v4];
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeAllProfiles
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v6 = [(WFGasQueryController *)self gasResponseCache];
      v10 = 136315394;
      v11 = "[WFGasQueryController removeAllProfiles]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: removing profiles %@", &v10, 0x16u);
    }
  }

  v7 = [(WFGasQueryController *)self gasResponseCache];
  [v7 removeAllObjects];

  v8 = [(WFGasQueryController *)self resolvedNetworks];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (WFGasQueryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithInterface:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFGasQueryController initWithInterface:]";
    _os_log_impl(&dword_273ECD000, v0, v1, "%s: nil interface", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeProfileForNetwork:(NSObject *)a1 .cold.1(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: no existing profile for network", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeProfileForNetwork:(NSObject *)a1 .cold.2(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil network", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

@end