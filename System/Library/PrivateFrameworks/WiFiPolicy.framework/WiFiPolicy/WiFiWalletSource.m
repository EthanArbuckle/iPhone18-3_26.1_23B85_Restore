@interface WiFiWalletSource
- (WiFiWalletSource)initWithChangeHandler:(id)a3;
- (id)_createWiFiWalletPassFromPass:(id)a3;
- (id)_networksWithIdentifier:(id)a3;
- (id)candidateNetworks;
- (id)expiredWalletIDs;
- (id)relevantNetworks;
- (void)_addPass:(id)a3;
- (void)_handlePassLibraryChange:(id)a3;
- (void)_handleRelevantPassUpdate:(id)a3;
- (void)_initializeWiFiPasses;
- (void)_issueChangeCallbackWithPass:(id)a3 removedNetworks:(id)a4;
- (void)_issueRelevancyCallbackWithRelevantNetworks:(id)a3 notRelevantNetworks:(id)a4;
- (void)_issueRemovalCallbackWithPass:(id)a3;
- (void)_passDidBecomeRelevant:(id)a3;
- (void)_passLibraryDidBecomeRelevantNotification:(id)a3;
- (void)_passLibraryDidChange:(id)a3;
- (void)_removePass:(id)a3 withSerialNumber:(id)a4;
- (void)_removeRelevantPasses;
- (void)_replacePass:(id)a3;
- (void)dealloc;
@end

@implementation WiFiWalletSource

- (id)relevantNetworks
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = MEMORY[0x277CBEB98];
  v5 = [(WiFiWalletSource *)self relevantPassIdentifiers];
  v6 = [v4 setWithSet:v5];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(WiFiWalletSource *)self networks];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          v14 = [v13 allObjects];
          [v3 addObjectsFromArray:v14];
        }

        else
        {
          NSLog(&cfstr_SNoRelevantNet_0.isa, "[WiFiWalletSource relevantNetworks]", v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dealloc
{
  if (self->_passLibrary)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D386E0] object:0];
  }

  v4.receiver = self;
  v4.super_class = WiFiWalletSource;
  [(WiFiWalletSource *)&v4 dealloc];
}

- (void)_initializeWiFiPasses
{
  objc_initWeak(&location, self);
  v3 = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WiFiWalletSource__initializeWiFiPasses__block_invoke;
  block[3] = &unk_2789C7BA0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__WiFiWalletSource__initializeWiFiPasses__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained passLibrary];
  v4 = [v3 passesOfType:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_loadWeakRetained((a1 + 40));
        [v11 _addPass:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) passLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__WiFiWalletSource__initializeWiFiPasses__block_invoke_2;
  v14[3] = &unk_2789C8180;
  v14[4] = *(a1 + 32);
  [v12 fetchCurrentRelevantPassInfo:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __41__WiFiWalletSource__initializeWiFiPasses__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  NSLog(&cfstr_RelevantPasses.isa, v3);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _handleRelevantPassUpdate:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addPass:(id)a3
{
  v4 = a3;
  if (_WiFiWalletSourcePassContainsWiFiSemantics(v4))
  {
    v5 = [v4 uniqueID];
    v6 = [v4 serialNumber];
    NSLog(&cfstr_SAddingPassUni.isa, "[WiFiWalletSource _addPass:]", v4, v5, v6);

    v7 = [(WiFiWalletSource *)self _createWiFiWalletPassFromPass:v4];
    if (v7)
    {
      v8 = [(WiFiWalletSource *)self networks];
      v9 = [v4 uniqueID];
      [v8 setObject:v7 forKey:v9];

      v10 = [(WiFiWalletSource *)self changeHandler];

      if (v10)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __29__WiFiWalletSource__addPass___block_invoke;
        block[3] = &unk_2789C6608;
        block[4] = self;
        v7 = v7;
        v12 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      NSLog(&cfstr_SFailedToCreat_6.isa, "[WiFiWalletSource _addPass:]", v4);
    }
  }

  else
  {
    [WiFiWalletSource _addPass:v4];
    v7 = 0;
  }
}

void __29__WiFiWalletSource__addPass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)_removePass:(id)a3 withSerialNumber:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(WiFiWalletSource *)self networks];
  v8 = [v7 allKeys];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [(WiFiWalletSource *)self networks];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v14 anyObject];
        v16 = [v15 passTypeIdentifier];
        if ([v16 isEqualToString:v6])
        {
          [v15 serialNumber];
          v28 = v14;
          v17 = v9;
          v18 = v10;
          v19 = self;
          v21 = v20 = v6;
          v22 = [v21 isEqualToString:v26];

          v6 = v20;
          self = v19;
          v10 = v18;
          v9 = v17;
          v14 = v28;

          if (v22)
          {
            v23 = [(WiFiWalletSource *)self networks];
            v9 = [v23 objectForKey:v12];

            v24 = [(WiFiWalletSource *)self networks];
            [v24 removeObjectForKey:v12];

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

LABEL_12:

  [(WiFiWalletSource *)self _issueRemovalCallbackWithPass:v9];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_passLibraryDidBecomeRelevantNotification:(id)a3
{
  NSLog(&cfstr_S.isa, a2, "[WiFiWalletSource _passLibraryDidBecomeRelevantNotification:]", a3);
  v4 = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(v4, block);
}

void __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passLibrary];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke_2;
  v3[3] = &unk_2789C8180;
  v3[4] = *(a1 + 32);
  [v2 fetchCurrentRelevantPassInfo:v3];
}

void __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_RelevantPasses.isa, v3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) _handleRelevantPassUpdate:*(*(&v11 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    NSLog(&cfstr_SNoRelevantPas.isa, "[WiFiWalletSource _passLibraryDidBecomeRelevantNotification:]_block_invoke_2");
    [*(a1 + 32) _removeRelevantPasses];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_passLibraryDidChange:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_LibraryChanged.isa, v4);
  v5 = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WiFiWalletSource__passLibraryDidChange___block_invoke;
  block[3] = &unk_2789C6608;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __42__WiFiWalletSource__passLibraryDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _handlePassLibraryChange:v2];
}

- (void)_handleRelevantPassUpdate:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D38718]];
    if (v5)
    {
      v6 = v5;
      v7 = [(WiFiWalletSource *)self passLibrary];
      v8 = [v7 passWithUniqueID:v6];

      if (v8)
      {
        [(WiFiWalletSource *)self _passDidBecomeRelevant:v8];
      }

      else
      {
        NSLog(&cfstr_SUnableToFindP.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]", v6);
      }
    }

    else
    {
      NSLog(&cfstr_SMissingUnique.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]", v9);
    }
  }

  else
  {
    NSLog(&cfstr_SPassinfoIsNil.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]");
  }
}

- (void)_passDidBecomeRelevant:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    v5 = [v9 uniqueID];
    [v4 addObject:v5];

    v6 = [v9 uniqueID];
    NSLog(&cfstr_SPassIsNowRele.isa, "[WiFiWalletSource _passDidBecomeRelevant:]", v9, v6);

    v7 = [v9 uniqueID];
    v8 = [(WiFiWalletSource *)self _networksWithIdentifier:v7];

    if (v8)
    {
      [(WiFiWalletSource *)self _issueRelevancyCallbackWithRelevantNetworks:v8 notRelevantNetworks:0];
    }

    else
    {
      [WiFiWalletSource _passDidBecomeRelevant:v9];
    }
  }

  else
  {
    NSLog(&cfstr_SNoPassGivenFo.isa, "[WiFiWalletSource _passDidBecomeRelevant:]");
  }
}

- (void)_removeRelevantPasses
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiWalletSource *)self relevantPassIdentifiers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    NSLog(&cfstr_SRelevantPassI.isa, "[WiFiWalletSource _removeRelevantPasses]", v5);

    v6 = [MEMORY[0x277CBEB58] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(WiFiWalletSource *)self _networksWithIdentifier:v12];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 allObjects];
            [v6 addObjectsFromArray:v15];
          }

          else
          {
            NSLog(&cfstr_SNoNetworksFou.isa, "[WiFiWalletSource _removeRelevantPasses]", v12);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [(WiFiWalletSource *)self _issueRelevancyCallbackWithRelevantNetworks:0 notRelevantNetworks:v6];
    v16 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    [v16 removeAllObjects];
  }

  else
  {
    NSLog(&cfstr_SNoRelevantPas.isa, "[WiFiWalletSource _removeRelevantPasses]");
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_createWiFiWalletPassFromPass:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [v3 semantics];
  v4 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v56;
    v8 = *MEMORY[0x277D38788];
    v9 = *MEMORY[0x277D38830];
    v10 = *MEMORY[0x277D38828];
    v11 = *MEMORY[0x277D38840];
    v49 = *MEMORY[0x277D38840];
    v50 = *MEMORY[0x277D38838];
    v42 = *MEMORY[0x277D38788];
    v43 = *v56;
    while (2)
    {
      v12 = 0;
      v44 = v5;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * v12);
        if ([v13 isEqualToString:v8])
        {
          v47 = v12;
          v14 = [v3 localizedName];
          v15 = [v3 localizedDescription];
          NSLog(&cfstr_PassHasWifi.isa, v14, v15);

          v16 = [v3 semantics];
          v17 = [v16 objectForKey:v13];

          v18 = [v17 dictionariesValue];
          v19 = [v18 count];

          if (!v19)
          {
            NSLog(&cfstr_SPassHasAWifia.isa, "[WiFiWalletSource _createWiFiWalletPassFromPass:]", v3);

            v39 = 0;
            goto LABEL_27;
          }

          v48 = [MEMORY[0x277CBEB58] set];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v46 = v17;
          v20 = [v17 dictionariesValue];
          v21 = [v20 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v52;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v52 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v51 + 1) + 8 * i);
                v26 = objc_alloc_init(WiFiWalletPass);
                v27 = [v3 uniqueID];
                [(WiFiWalletPass *)v26 setUniqueIdentifier:v27];

                v28 = [v25 objectForKey:v9];
                [(WiFiWalletPass *)v26 setSSID:v28];

                v29 = [v25 objectForKey:v10];
                [(WiFiWalletPass *)v26 setPassword:v29];

                if (_os_feature_enabled_impl())
                {
                  v30 = [v25 objectForKey:v50];
                  [(WiFiWalletPass *)v26 setCaptiveToken:v30];

                  v31 = [v25 objectForKey:v49];
                  [(WiFiWalletPass *)v26 setCaptiveTokenAuthURL:v31];
                }

                v32 = [v3 serialNumber];
                [(WiFiWalletPass *)v26 setSerialNumber:v32];

                v33 = [v3 passTypeIdentifier];
                [(WiFiWalletPass *)v26 setPassTypeIdentifier:v33];

                v34 = [v3 relevantDate];
                [(WiFiWalletPass *)v26 setRelevantDate:v34];

                v35 = [v3 localizedDescription];
                [(WiFiWalletPass *)v26 setLocalizedDescription:v35];

                v36 = [(WiFiWalletPass *)v26 SSID];

                if (v36)
                {
                  v37 = [(WiFiWalletPass *)v26 SSID];
                  v38 = [v37 length];

                  if (v38)
                  {
                    [v48 addObject:v26];
                    NSLog(&cfstr_SAddedWifiinfo.isa, "[WiFiWalletSource _createWiFiWalletPassFromPass:]", v26);
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v22);
          }

          v12 = v47;
          v6 = v48;
          v8 = v42;
          v7 = v43;
          v5 = v44;
        }

        ++v12;
      }

      while (v12 != v5);
      v5 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v6 = v6;
  v39 = v6;
LABEL_27:

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_networksWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WiFiWalletSource *)self networks];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    NSLog(&cfstr_SRelevantNetwo.isa, "[WiFiWalletSource _networksWithIdentifier:]", v4);
  }

  return v6;
}

- (id)candidateNetworks
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(WiFiWalletSource *)self networks];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) allObjects];
        [v3 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)expiredWalletIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(WiFiWalletSource *)self passLibrary];
  v3 = [v2 passes];

  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isExpired])
        {
          v11 = [v10 serialNumber];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (WiFiWalletSource)initWithChangeHandler:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WiFiWalletSource;
  v5 = [(WiFiWalletSource *)&v19 init];
  if (!v5)
  {
    v17 = 0;
    goto LABEL_9;
  }

  if (v4)
  {
    v6 = MEMORY[0x23839E400](v4);
    changeHandler = v5->changeHandler;
    v5->changeHandler = v6;
  }

  v8 = dispatch_queue_create("com.apple.wifi.wallet-source", 0);
  queue = v5->_queue;
  v5->_queue = v8;

  if (!v5->_queue)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  networks = v5->_networks;
  v5->_networks = v10;

  if (!v5->_networks || (v12 = objc_alloc_init(MEMORY[0x277CBEB58]), relevantPassIdentifiers = v5->_relevantPassIdentifiers, v5->_relevantPassIdentifiers = v12, relevantPassIdentifiers, !v5->_relevantPassIdentifiers))
  {
LABEL_12:
    v17 = v5;
    v5 = 0;
    goto LABEL_9;
  }

  if (([MEMORY[0x277D37FC8] isPassLibraryAvailable] & 1) == 0)
  {
    NSLog(&cfstr_PkpasslibraryI.isa);
    goto LABEL_12;
  }

  v14 = objc_alloc_init(MEMORY[0x277D37FC8]);
  passLibrary = v5->_passLibrary;
  v5->_passLibrary = v14;

  [(WiFiWalletSource *)v5 _initializeWiFiPasses];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:v5 selector:sel__passLibraryDidChange_ name:*MEMORY[0x277D386E0] object:v5->_passLibrary];

  v17 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v17 addObserver:v5 selector:sel__passLibraryDidBecomeRelevantNotification_ name:*MEMORY[0x277D38728] object:0 suspensionBehavior:2];
LABEL_9:

  return v5;
}

- (void)_replacePass:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFiWalletSource *)self passLibrary];
  v6 = [v5 passesOfType:0];

  if (_WiFiWalletSourcePassContainsWiFiSemantics(v4))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v4 uniqueID];
          v14 = [v12 uniqueID];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v16 = [(WiFiWalletSource *)self _createWiFiWalletPassFromPass:v4];
            if (v16)
            {
              v17 = v16;
              v18 = [(WiFiWalletSource *)self networks];
              v19 = [v12 uniqueID];
              v20 = [v18 objectForKey:v19];

              v21 = [(WiFiWalletSource *)self networks];
              v22 = [v12 uniqueID];
              [v21 removeObjectForKey:v22];

              v23 = [(WiFiWalletSource *)self networks];
              v24 = [v4 uniqueID];
              [v23 setObject:v17 forKey:v24];

              [(WiFiWalletSource *)self _issueChangeCallbackWithPass:v17 removedNetworks:v20];
            }

            else
            {
              NSLog(&cfstr_SFailedToCreat_6.isa, "[WiFiWalletSource _replacePass:]", v4);
            }

            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v6 = v27;
  }

  else
  {
    v26 = [v4 localizedDescription];
    NSLog(&cfstr_SPassDoesnTCon.isa, "[WiFiWalletSource _replacePass:]", v4, v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handlePassLibraryChange:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D386C0]];
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(WiFiWalletSource *)self _addPass:*(*(&v35 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v8);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38740]];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(WiFiWalletSource *)self _replacePass:*(*(&v31 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v13);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v5 objectForKeyedSubscript:{*MEMORY[0x277D38730], 0}];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      v20 = *MEMORY[0x277D386F8];
      v21 = *MEMORY[0x277D38750];
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v27 + 1) + 8 * k);
          v24 = [v23 objectForKey:v20];
          v25 = [v23 objectForKey:v21];
          [(WiFiWalletSource *)self _removePass:v24 withSerialNumber:v25];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v18);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_issueRelevancyCallbackWithRelevantNetworks:(id)a3 notRelevantNetworks:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(WiFiWalletSource *)self relevancyHandler];

  if (v7)
  {
    if (v11 | v6)
    {
      v8 = [(WiFiWalletSource *)self relevancyHandler];
      v9 = OUTLINED_FUNCTION_0_6(v8);
      v10(v9);
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue.isa, "[WiFiWalletSource _issueRelevancyCallbackWithRelevantNetworks:notRelevantNetworks:]");
    }
  }
}

- (void)_issueRemovalCallbackWithPass:(id)a3
{
  v8 = a3;
  v4 = [(WiFiWalletSource *)self removalHandler];

  if (v4)
  {
    if (v8)
    {
      v5 = [(WiFiWalletSource *)self removalHandler];
      v6 = OUTLINED_FUNCTION_0_6(v5);
      v7(v6);
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue_0.isa, "[WiFiWalletSource _issueRemovalCallbackWithPass:]");
    }
  }
}

- (void)_issueChangeCallbackWithPass:(id)a3 removedNetworks:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(WiFiWalletSource *)self changeHandler];

  if (v7)
  {
    if (v11 && v6)
    {
      v8 = [(WiFiWalletSource *)self changeHandler];
      v9 = OUTLINED_FUNCTION_0_6(v8);
      v10(v9);
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue_1.isa, "[WiFiWalletSource _issueChangeCallbackWithPass:removedNetworks:]");
    }
  }
}

- (void)_addPass:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 localizedDescription];
  NSLog(&cfstr_SPassDoesnTCon.isa, "[WiFiWalletSource _addPass:]", a1, v2);
}

- (void)_passDidBecomeRelevant:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 uniqueID];
  NSLog(&cfstr_SNoRelevantNet.isa, "[WiFiWalletSource _passDidBecomeRelevant:]", a1, v2);
}

@end