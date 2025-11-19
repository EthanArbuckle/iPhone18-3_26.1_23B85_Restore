@interface WiFiAvailabilityEngine
- (WiFiAvailabilityEngine)initWithProviders:(id)a3 sources:(id)a4;
- (WiFiLocationProvider)locationProvider;
- (WiFiScanProvider)scanProvider;
- (id)_createAvailabilityMatchForCandidate:(id)a3 scannedNetwork:(id)a4;
- (id)_findExistingAvailabilityMatchForScannedNetwork:(id)a3;
- (id)_findRelevantNetworkMatchForScannedNetwork:(id)a3;
- (id)findRecommendationForScannedNetwork:(id)a3;
- (id)findRecommendationsForScannedNetwork:(id)a3;
- (void)_findAvailabilityMatchesInSourcesForBSSIDS:(id)a3;
- (void)_handle3BarsRelevancyAdded:(id)a3 removed:(id)a4;
- (void)_handleCandidateMatches:(id)a3;
- (void)_handleScanResultCallback:(id)a3 error:(id)a4;
- (void)_handleWalletChange:(id)a3 removed:(id)a4;
- (void)_handleWalletRelevancyAdded:(id)a3 removed:(id)a4;
- (void)_handleWalletRemoval:(id)a3;
- (void)_removeStaleMatches;
- (void)_setupProviderCallbacks:(id)a3;
- (void)_setupSourceCallbacks:(id)a3;
- (void)setAvailabilityMatchMaximumAge:(double)a3;
@end

@implementation WiFiAvailabilityEngine

- (void)_removeStaleMatches
{
  v30 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEAA8] date];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(WiFiAvailabilityEngine *)self availableNetworks];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 matchedAt];
        [v4 timeIntervalSinceDate:v12];
        v14 = v13;
        [(WiFiAvailabilityEngine *)self availabilityMatchMaximumAge];
        v16 = v15;

        if (v14 > v16)
        {
          [v3 addObject:v11];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "[WiFiAvailabilityEngine _removeStaleMatches]";
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: expired match %@", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v17 = [(WiFiAvailabilityEngine *)self availableNetworks];
    v18 = [v17 mutableCopy];

    [v18 minusSet:v3];
    [(WiFiAvailabilityEngine *)self setAvailableNetworks:v18];
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x277D85DE8];
}

- (WiFiAvailabilityEngine)initWithProviders:(id)a3 sources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 count] && objc_msgSend(v8, "count") && (v24.receiver = self, v24.super_class = WiFiAvailabilityEngine, (self = -[WiFiAvailabilityEngine init](&v24, sel_init)) != 0))
    {
      v10 = [v6 copy];
      providers = self->_providers;
      self->_providers = v10;

      v12 = [v8 copy];
      sources = self->_sources;
      self->_sources = v12;

      v14 = [MEMORY[0x277CBEB98] set];
      availableNetworks = self->_availableNetworks;
      self->_availableNetworks = v14;

      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__WiFiAvailabilityEngine_initWithProviders_sources___block_invoke;
      block[3] = &unk_2789C6630;
      v17 = self;
      v23 = v17;
      dispatch_async(v16, block);

      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("com.apple.WiFiPolicy.availability-engine", v18);
      queue = v17->_queue;
      v17->_queue = v19;

      v17->_availabilityMatchMaximumAge = 600.0;
      [(WiFiAvailabilityEngine *)v17 _setupProviderCallbacks:self->_providers];
      [(WiFiAvailabilityEngine *)v17 _setupSourceCallbacks:self->_sources];
      self = v17;

      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __52__WiFiAvailabilityEngine_initWithProviders_sources___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(WiFiLexicon);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_setupProviderCallbacks:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v6)
  {
    v8 = *v18;
    v9 = MEMORY[0x277D86220];
    *&v7 = 136315394;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v23 = "[WiFiAvailabilityEngine _setupProviderCallbacks:]";
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: provider %@", buf, 0x16u);
        }

        if ([v11 conformsToProtocol:{&unk_2848EA318, v14}])
        {
          v12 = objc_storeWeak(&self->_scanProvider, v11);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __50__WiFiAvailabilityEngine__setupProviderCallbacks___block_invoke;
          v15[3] = &unk_2789C69C8;
          objc_copyWeak(&v16, &location);
          [v11 addScanResultsCallback:v15];

          objc_destroyWeak(&v16);
        }

        else if ([v11 conformsToProtocol:&unk_2848EA378])
        {
          objc_storeWeak(&self->_locationProvider, v11);
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
  v13 = *MEMORY[0x277D85DE8];
}

void __50__WiFiAvailabilityEngine__setupProviderCallbacks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScanResultCallback:v6 error:v5];
}

- (void)_setupSourceCallbacks:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v3)
  {
    v16 = *v27;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[WiFiAvailabilityEngine _setupSourceCallbacks:]";
          v32 = 2112;
          v33 = v5;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: source %@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Wftwalletsourc.isa), (objc_opt_isKindOfClass()))
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke;
          v24[3] = &unk_2789C8450;
          objc_copyWeak(&v25, buf);
          [v5 setRelevancyHandler:v24];
          v6 = [v5 relevantNetworks];
          v7 = [v6 count];

          if (v7)
          {
            WeakRetained = objc_loadWeakRetained(buf);
            v9 = [v5 relevantNetworks];
            [WeakRetained _handleWalletRelevancyAdded:v9 removed:0];
          }

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_2;
          v22[3] = &unk_2789C8478;
          objc_copyWeak(&v23, buf);
          [v5 setRemovalHandler:v22];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_3;
          v20[3] = &unk_2789C8450;
          objc_copyWeak(&v21, buf);
          [v5 setChangeHandler:v20];
          objc_destroyWeak(&v21);
          objc_destroyWeak(&v23);
          objc_destroyWeak(&v25);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Wft3barssource.isa), (objc_opt_isKindOfClass()))
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_4;
          v18[3] = &unk_2789C8450;
          objc_copyWeak(&v19, buf);
          [v5 setRelevancyHandler:v18];
          v10 = [v5 relevantNetworks];
          v11 = [v10 count];

          if (v11)
          {
            v12 = objc_loadWeakRetained(buf);
            v13 = [v5 relevantNetworks];
            [v12 _handle3BarsRelevancyAdded:v13 removed:0];
          }

          objc_destroyWeak(&v19);
        }

        objc_destroyWeak(buf);
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletRelevancyAdded:v6 removed:v5];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletRemoval:v3];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletChange:v6 removed:v5];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handle3BarsRelevancyAdded:v6 removed:v5];
}

- (void)setAvailabilityMatchMaximumAge:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_availabilityMatchMaximumAge = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    availabilityMatchMaximumAge = self->_availabilityMatchMaximumAge;
    v6 = 136315394;
    v7 = "[WiFiAvailabilityEngine setAvailabilityMatchMaximumAge:]";
    v8 = 2048;
    v9 = availabilityMatchMaximumAge;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting new max age %f", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleCandidateMatches:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__10;
  v37 = __Block_byref_object_dispose__10;
  v38 = 0;
  v27 = v4;
  v5 = [MEMORY[0x277CBEB58] setWithSet:v4];
  v6 = [MEMORY[0x277CBEAA8] date];
  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [(WiFiAvailabilityEngine *)self availableNetworks];
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v8)
    {
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v11 matchedAt];
          [v6 timeIntervalSinceDate:v12];
          v14 = v13;
          [(WiFiAvailabilityEngine *)self availabilityMatchMaximumAge];
          v16 = v14 < v15;

          if (v16)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v8);
    }

    v17 = [v5 mutableCopy];
    v18 = v34[5];
    v34[5] = v17;

    v19 = v34[5];
    v20 = [(WiFiAvailabilityEngine *)self availableNetworks];
    [v19 minusSet:v20];

    v21 = [MEMORY[0x277CBEB98] setWithSet:v5];
    [(WiFiAvailabilityEngine *)self setAvailableNetworks:v21];

    v22 = [(WiFiAvailabilityEngine *)self availabilityChangedCallback];
    v23 = v22 == 0;

    if (v23)
    {
      [WiFiAvailabilityEngine _handleCandidateMatches:];
    }

    else if ([v34[5] count])
    {
      v24 = [(WiFiAvailabilityEngine *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__WiFiAvailabilityEngine__handleCandidateMatches___block_invoke;
      block[3] = &unk_2789C73A8;
      block[4] = self;
      block[5] = &v33;
      dispatch_async(v24, block);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no change to available networks", buf, 0xCu);
    }
  }

  else
  {
    [WiFiAvailabilityEngine _handleCandidateMatches:];
  }

  _Block_object_dispose(&v33, 8);
  objc_autoreleasePoolPop(context);

  v25 = *MEMORY[0x277D85DE8];
}

void __50__WiFiAvailabilityEngine__handleCandidateMatches___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityChangedCallback];
  v2[2](v2, *(*(*(a1 + 40) + 8) + 40));

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_findExistingAvailabilityMatchForScannedNetwork:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WiFiAvailabilityEngine *)self availableNetworks];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isEqualToScannedNetwork:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_findRelevantNetworkMatchForScannedNetwork:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(WiFiAvailabilityEngine *)self sources];
  v32 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v32)
  {
    v33 = 0;
    v31 = *v39;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v7 = [v6 relevantNetworks];
        v8 = [v7 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v35;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v35 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v34 + 1) + 8 * j);
              v13 = [v12 SSID];
              v14 = [v4 SSID];
              v15 = [v13 isEqualToString:v14];

              if (v15)
              {
                goto LABEL_19;
              }

              v16 = [v4 BSSID];

              if (v16)
              {
                v17 = MEMORY[0x277CBEB98];
                v18 = [v4 BSSID];
                v19 = [v17 setWithObjects:{v18, 0}];
                v20 = [v12 containsAccessPointMatchingBSSIDs:v19];

                if (v20)
                {
                  goto LABEL_19;
                }
              }

              v21 = [v4 essMembers];

              if (v21)
              {
                v22 = MEMORY[0x277CBEB98];
                v23 = [v4 essMembers];
                v24 = [v22 setWithArray:v23];
                v25 = [v12 containsAccessPointMatchingBSSIDs:v24];

                if (v25)
                {
LABEL_19:
                  v26 = v12;

                  v27 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v43 = "[WiFiAvailabilityEngine _findRelevantNetworkMatchForScannedNetwork:]";
                    v44 = 2112;
                    v45 = v26;
                    v46 = 2112;
                    v47 = v4;
                    _os_log_impl(&dword_2332D7000, v27, OS_LOG_TYPE_DEFAULT, "%s: relevant network %@ matched with scanned network %@", buf, 0x20u);
                  }

                  v33 = v26;
                  goto LABEL_22;
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v34 objects:v48 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v32 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v32);
  }

  else
  {
    v33 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)_findAvailabilityMatchesInSourcesForBSSIDS:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(WiFiAvailabilityEngine *)self sources];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = objc_autoreleasePoolPush();
          v11 = MEMORY[0x277CBEB98];
          v12 = [v4 allKeys];
          v13 = [v11 setWithArray:v12];

          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __69__WiFiAvailabilityEngine__findAvailabilityMatchesInSourcesForBSSIDS___block_invoke;
          v16[3] = &unk_2789C84A0;
          v17 = v4;
          v18 = self;
          v19 = v9;
          [v9 fetchCandidateNetworksMatchingBSSIDs:v13 completionHandler:v16];

          objc_autoreleasePoolPop(v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__WiFiAvailabilityEngine__findAvailabilityMatchesInSourcesForBSSIDS___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v25 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetched matches %@", buf, 0x16u);
    }

    v28 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v5;
    v7 = v5;
    v30 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v30)
    {
      v8 = *v32;
      v9 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v7 objectForKey:v11];
          v14 = [*(a1 + 32) objectForKey:v11];
          if (v14)
          {
            v15 = [WiFiAvailabilityMatch matchWithNetwork:v13 scannedNetwork:v14];
            if (v15)
            {
              v29 = v12;
              v16 = [*(a1 + 40) wifiLexicon];
              if (v16)
              {
                v17 = [*(a1 + 40) wifiLexicon];
                [v15 SSID];
                v18 = a1;
                v19 = v7;
                v21 = v20 = v8;
                [v15 setUnwantedNetworkName:{objc_msgSend(v17, "stringContainsUnwantedWords:", v21)}];

                v8 = v20;
                v7 = v19;
                a1 = v18;
                v9 = MEMORY[0x277D86220];
              }

              else
              {
                [v15 setUnwantedNetworkName:0];
              }

              [v28 addObject:v15];
              v22 = *(a1 + 48);
              objc_opt_class();
              v12 = v29;
              if (objc_opt_isKindOfClass())
              {
                v23 = [v14 SSID];
                [v13 setSSID:v23];

                v12 = v29;
              }
            }

            else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315651;
              v36 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
              v37 = 2113;
              v38 = v13;
              v39 = 2113;
              v40 = v14;
              _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: failed to create match for candidate %{private}@, scanned %{private}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315907;
            v36 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
            v37 = 2160;
            v38 = 1752392040;
            v39 = 2112;
            v40 = v11;
            v41 = 2113;
            v42 = v13;
            _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: missing scan match for bssid %{mask.hash}@, candidate %{private}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v12);
        }

        v30 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v30);
    }

    [*(a1 + 40) _handleCandidateMatches:v28];
    v6 = v26;
    v5 = v27;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_createAvailabilityMatchForCandidate:(id)a3 scannedNetwork:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [WiFiAvailabilityMatch matchWithNetwork:v6 scannedNetwork:v7];
  if (v8 && [v6 source] == 2)
  {
    v9 = [(WiFiAvailabilityEngine *)self wifiLexicon];
    if (v9)
    {
      v10 = [(WiFiAvailabilityEngine *)self wifiLexicon];
      v11 = [v8 SSID];
      [v8 setUnwantedNetworkName:{objc_msgSend(v10, "stringContainsUnwantedWords:", v11)}];
    }

    else
    {
      [v8 setUnwantedNetworkName:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 SSID];
      v15 = 136315906;
      v16 = "[WiFiAvailabilityEngine _createAvailabilityMatchForCandidate:scannedNetwork:]";
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unwanted network name %@ for candidate %@ scanned %@", &v15, 0x2Au);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_handleWalletRelevancyAdded:(id)a3 removed:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WiFiAvailabilityEngine _handleWalletRelevancyAdded:removed:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks became relevant: %@", &v8, 0x16u);
  }

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WiFiAvailabilityEngine _handleWalletRelevancyAdded:removed:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks no longer relevant: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleWalletRemoval:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[WiFiAvailabilityEngine _handleWalletRemoval:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks that have been removed: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleWalletChange:(id)a3 removed:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[WiFiAvailabilityEngine _handleWalletChange:removed:]";
    v9 = 2112;
    v10 = a4;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: removed wallet networks: %@, added wallet networks: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handle3BarsRelevancyAdded:(id)a3 removed:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WiFiAvailabilityEngine _handle3BarsRelevancyAdded:removed:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 3bars networks became relevant: %@", &v8, 0x16u);
  }

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WiFiAvailabilityEngine _handle3BarsRelevancyAdded:removed:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 3bars networks no longer relevant: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)findRecommendationForScannedNetwork:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFiAvailabilityEngine *)self findRecommendationsForScannedNetwork:v4];
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[WiFiAvailabilityEngine findRecommendationForScannedNetwork:]";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: matches %@, for network %@", buf, 0x20u);
    }

    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_16];
    v12 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];
    v9 = [v8 firstObject];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[WiFiAvailabilityEngine findRecommendationForScannedNetwork:]";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: top match %@ for network %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __62__WiFiAvailabilityEngine_findRecommendationForScannedNetwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 network];
  v6 = [v5 source];

  v7 = [v4 network];

  v8 = [v7 source];
  if (v6 == v8)
  {
    return 0;
  }

  if (v6 == 3 || v8 == 3)
  {
    if (v6 == 3)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v6 == 1)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }
}

- (WiFiScanProvider)scanProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_scanProvider);

  return WeakRetained;
}

- (WiFiLocationProvider)locationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_locationProvider);

  return WeakRetained;
}

- (void)_handleScanResultCallback:(id)a3 error:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v32)
  {
    v9 = *v38;
    v28 = v7;
    v29 = self;
    v30 = *v38;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 SSID];
        if (v13)
        {
          v14 = v13;
          v15 = [v11 SSID];
          v16 = [v15 length];

          if (v16)
          {
            v17 = [(WiFiAvailabilityEngine *)self _findExistingAvailabilityMatchForScannedNetwork:v11];
            if (v17)
            {
              v18 = [MEMORY[0x277CBEAA8] date];
              [v17 setMatchedAt:v18];

              [v7 addObject:v17];
            }

            v19 = [(WiFiAvailabilityEngine *)self _findRelevantNetworkMatchForScannedNetwork:v11];
            if (v19)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v43 = "[WiFiAvailabilityEngine _handleScanResultCallback:error:]";
                v44 = 2112;
                v45 = v19;
                v46 = 2112;
                v47 = v11;
                _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: found relevant network match (%@) for scanned network %@", buf, 0x20u);
              }

              v20 = [(WiFiAvailabilityEngine *)self _createAvailabilityMatchForCandidate:v19 scannedNetwork:v11];

              [v7 addObject:v20];
              v17 = v20;
            }

            else if (v17)
            {
              [v7 addObject:v17];
            }

            else
            {
              v17 = [v11 BSSID];
              if (v17)
              {
                [v8 setObject:v11 forKey:v17];
              }

              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v21 = [v11 essMembers];
              v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v34;
                do
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v34 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    [v8 setObject:v11 forKey:*(*(&v33 + 1) + 8 * j)];
                  }

                  v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
                }

                while (v23);
              }

              v7 = v28;
              self = v29;
            }

            v9 = v30;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v32 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v32);
  }

  if ([v8 count])
  {
    [(WiFiAvailabilityEngine *)self _findAvailabilityMatchesInSourcesForBSSIDS:v8];
  }

  if ([v7 count])
  {
    [(WiFiAvailabilityEngine *)self _handleCandidateMatches:v7];
  }

  [(WiFiAvailabilityEngine *)self _removeStaleMatches];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)findRecommendationsForScannedNetwork:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFiAvailabilityEngine *)self availableNetworks];

  if (v5)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(WiFiAvailabilityEngine *)self availableNetworks];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 isEqualToScannedNetwork:v4])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  if ([v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_handleCandidateMatches:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no availability callback provided", &v1, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)_handleCandidateMatches:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no candidates", &v1, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end