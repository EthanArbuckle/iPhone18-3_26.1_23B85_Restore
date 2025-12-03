@interface WiFi3BarsSource
- (WiFi3BarsSource)initWithChangeHandler:(id)handler localStoreType:(unint64_t)type;
- (id)_descriptorForType:(unint64_t)type;
- (id)_matchSearchBSSIDs:(id)ds toResponse:(id)response;
- (void)_handleRemoteFetchResponse:(id)response;
- (void)fetch3BarsNetworksForLocation:(id)location forceRemote:(BOOL)remote trigger:(unint64_t)trigger completionHandler:(id)handler;
- (void)fetch3BarsNetworksPredictedForLocation:(id)location duration:(double)duration maxLocations:(unint64_t)locations completionHandler:(id)handler;
- (void)fetchCandidateNetworksMatchingBSSIDs:(id)ds completionHandler:(id)handler;
- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler;
- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler;
- (void)setCacheExpirationInDays:(unint64_t)days;
- (void)submitCacheAnalyticsEvent;
@end

@implementation WiFi3BarsSource

- (WiFi3BarsSource)initWithChangeHandler:(id)handler localStoreType:(unint64_t)type
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = WiFi3BarsSource;
  v7 = [(WiFi3BarsSource *)&v27 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  if (handlerCopy)
  {
    v8 = MEMORY[0x23839E400](handlerCopy);
    changeHandler = v7->changeHandler;
    v7->changeHandler = v8;
  }

  v10 = dispatch_queue_create("com.apple.wifi.3bars-source", MEMORY[0x277D85CD8]);
  queue = v7->_queue;
  v7->_queue = v10;

  if (!v7->_queue || (v12 = objc_alloc_init(MEMORY[0x277CBEB38]), networks = v7->_networks, v7->_networks = v12, networks, !v7->_networks))
  {
LABEL_15:
    v15 = 0;
LABEL_17:

    v7 = 0;
    goto LABEL_14;
  }

  v14 = [(WiFi3BarsSource *)v7 _descriptorForType:type];
  if (!v14)
  {
    [WiFi3BarsSource initWithChangeHandler:buf localStoreType:?];
    v15 = *buf;
    goto LABEL_17;
  }

  v15 = v14;
  storeURL = [v14 storeURL];
  v17 = [storeURL copy];
  storeURL = v7->_storeURL;
  v7->_storeURL = v17;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v7->_storeURL;
    *buf = 136315394;
    *&buf[4] = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: source initialized with storeURL %@", buf, 0x16u);
  }

  v20 = [[TBDataSourceMediator alloc] initWithLocalStoreDescriptor:v15];
  sourceMediator = v7->_sourceMediator;
  v7->_sourceMediator = v20;

  if (!v7->_sourceMediator)
  {
    goto LABEL_17;
  }

  if (![v15 type])
  {
    v22 = [[WiFi3BarsTileFetcher alloc] initWithDataSourceMediator:v7->_sourceMediator];
    tileFetcher = v7->_tileFetcher;
    v7->_tileFetcher = v22;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v7->_tileFetcher;
      *buf = 136315394;
      *&buf[4] = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: created tile fetcher %@ for server", buf, 0x16u);
    }
  }

  v7->_cacheExpirationInDays = 7;
LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)fetch3BarsNetworksForLocation:(id)location forceRemote:(BOOL)remote trigger:(unint64_t)trigger completionHandler:(id)handler
{
  remoteCopy = remote;
  v40 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[WiFi3BarsSource fetch3BarsNetworksForLocation:forceRemote:trigger:completionHandler:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v13 = [date dateByAddingDays:{--[WiFi3BarsSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

  v14 = [TBLocationFetchRequestDescriptor alloc];
  [locationCopy coordinate];
  v16 = v15;
  [locationCopy coordinate];
  v18 = v17;
  if (trigger == 1)
  {
    +[TBDefaults nearbyTileSearchRadius];
    v20 = [(TBLocationFetchRequestDescriptor *)v14 initWithLatitude:v13 longitude:v16 radius:v18 maxCacheAge:v19];
  }

  else
  {
    v20 = [(TBLocationFetchRequestDescriptor *)v14 initWithLatitude:v13 longitude:v16 maxCacheAge:v17];
  }

  v21 = v20;
  if (remoteCopy)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  v23 = [TBLocationFetchRequest fetchRequestWithDescriptor:v20 sourcePolicy:v22 cacheable:1];
  v36[0] = @"trigger";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:trigger];
  v36[1] = @"tileKey";
  v37[0] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v21, "primaryTileKey")}];
  v37[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v23 setUserInfo:v26];

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __87__WiFi3BarsSource_fetch3BarsNetworksForLocation_forceRemote_trigger_completionHandler___block_invoke;
  v33 = &unk_2789C8200;
  selfCopy = self;
  v35 = handlerCopy;
  v27 = handlerCopy;
  [v23 setResultsHandler:&v30];
  v28 = [(WiFi3BarsSource *)self sourceMediator:v30];
  [v28 executeFetchRequest:v23];

  v29 = *MEMORY[0x277D85DE8];
}

void __87__WiFi3BarsSource_fetch3BarsNetworksForLocation_forceRemote_trigger_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v10 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  [*(a1 + 32) _handleRemoteFetchResponse:v10];
  if (a4)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

- (void)_handleRemoteFetchResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    tiles = [responseCopy tiles];
    v8 = [tiles count];

    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      tiles2 = [responseCopy tiles];
      v13 = 136315394;
      v14 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
      v15 = 2048;
      uTF8String = [tiles2 count];
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Fetched %lu tiles";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      tiles2 = [responseCopy results];
      v13 = 136315394;
      v14 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
      v15 = 2048;
      uTF8String = [tiles2 count];
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Fetched %lu results";
    }

    _os_log_impl(&dword_2332D7000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x16u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    tiles2 = [responseCopy error];
    v6 = [tiles2 description];
    v13 = 136315394;
    v14 = "[WiFi3BarsSource _handleRemoteFetchResponse:]";
    v15 = 2080;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Failed fetch with error %s\n", &v13, 0x16u);

LABEL_10:
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetch3BarsNetworksPredictedForLocation:(id)location duration:(double)duration maxLocations:(unint64_t)locations completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(WiFi3BarsSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke;
  block[3] = &unk_2789C8278;
  block[4] = self;
  v16 = locationCopy;
  durationCopy = duration;
  v17 = handlerCopy;
  locationsCopy = locations;
  v13 = handlerCopy;
  v14 = locationCopy;
  dispatch_async(queue, block);
}

void __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  objc_initWeak(&location, *(a1 + 32));
  dispatch_group_enter(v2);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_2;
  v16[3] = &unk_2789C8250;
  v18[1] = *(a1 + 56);
  v3 = v2;
  v17 = v3;
  objc_copyWeak(v18, &location);
  v4 = MEMORY[0x23839E400](v16);
  v5 = [MEMORY[0x277D01288] defaultManager];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEAA8] date];
  [v5 fetchNextPredictedLocationsOfInterestFromLocation:v6 startDate:v7 timeInterval:v4 withHandler:*(a1 + 64)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Querying current location", buf, 2u);
  }

  dispatch_group_enter(v3);
  v8 = objc_loadWeakRetained(&location);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_19;
  v13[3] = &unk_2789C8228;
  v10 = v3;
  v14 = v10;
  [v8 fetch3BarsNetworksForLocation:v9 forceRemote:0 trigger:2 completionHandler:v13];

  v11 = dispatch_time(0, 3600000000000);
  dispatch_group_wait(v10, v11);
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v27 = [v5 count];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36[0] = v27;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[predictedLocationsOfInterest count] <%ld>", buf, 0xCu);
  }

  if (!v6 && v27)
  {
    v26 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v32;
      v28 = v7;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          if (v10 < *(a1 + 48))
          {
            [v13 confidence];
            if (v15 >= 0.5)
            {
              dispatch_group_enter(*(a1 + 32));
              v16 = [v13 locationOfInterest];
              v17 = objc_alloc(MEMORY[0x277CE41F0]);
              v18 = [v16 location];
              [v18 latitude];
              v20 = v19;
              v21 = [v16 location];
              [v21 longitude];
              v23 = [v17 initWithLatitude:v20 longitude:v22];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                LODWORD(v36[0]) = v10 + 1;
                WORD2(v36[0]) = 2048;
                *(v36 + 6) = v27;
                _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Querying predicted location %d/%ld", buf, 0x12u);
              }

              WeakRetained = objc_loadWeakRetained((a1 + 40));
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v29[2] = __98__WiFi3BarsSource_fetch3BarsNetworksPredictedForLocation_duration_maxLocations_completionHandler___block_invoke_15;
              v29[3] = &unk_2789C8228;
              v30 = *(a1 + 32);
              [WeakRetained fetch3BarsNetworksForLocation:v23 forceRemote:0 trigger:3 completionHandler:v29];

              ++v10;
              v7 = v28;
            }
          }

          objc_autoreleasePoolPop(v14);
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    v6 = 0;
    v5 = v26;
  }

  dispatch_group_leave(*(a1 + 32));

  v25 = *MEMORY[0x277D85DE8];
}

- (void)prune3BarsNetworks:(unint64_t)networks completionHandler:(id)handler
{
  handlerCopy = handler;
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  [sourceMediator prune3BarsNetworks:networks completionHandler:handlerCopy];
}

- (void)fetchCandidateNetworksMatchingBSSIDs:(id)ds completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WiFi3BarsSource fetchCandidateNetworksMatchingBSSIDs:completionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = [dsCopy count];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetching candidates for %lu BSSIDS", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = os_transaction_create();
  v8 = [[TBNetworkFetchRequestDescriptor alloc] initWithBSSIDs:dsCopy];
  v9 = [TBNetworkFetchRequest fetchRequestWithDescriptor:v8 sourcePolicy:1];
  [v9 setUserInfo:&unk_2848BB100];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __74__WiFi3BarsSource_fetchCandidateNetworksMatchingBSSIDs_completionHandler___block_invoke;
  v17 = &unk_2789C82A0;
  selfCopy = self;
  v10 = dsCopy;
  v19 = v10;
  v11 = handlerCopy;
  v20 = v11;
  v21 = buf;
  [v9 setResultsHandler:&v14];
  v12 = [(WiFi3BarsSource *)self sourceMediator:v14];
  [v12 executeFetchRequest:v9];

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __74__WiFi3BarsSource_fetchCandidateNetworksMatchingBSSIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      v12 = 136315394;
      v13 = "[WiFi3BarsSource fetchCandidateNetworksMatchingBSSIDs:completionHandler:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetch error %@", &v12, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _matchSearchBSSIDs:*(a1 + 40) toResponse:v3];
  }

  v7 = *(a1 + 48);
  v8 = [v3 error];
  (*(v7 + 16))(v7, v6, v8);

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_matchSearchBSSIDs:(id)ds toResponse:(id)response
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  responseCopy = response;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (objc_opt_respondsToSelector())
  {
    resultsByBSSID = [responseCopy resultsByBSSID];
    v8 = [resultsByBSSID count];

    if (v8)
    {
      resultsByBSSID2 = [responseCopy resultsByBSSID];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __49__WiFi3BarsSource__matchSearchBSSIDs_toResponse___block_invoke;
      v53[3] = &unk_2789C82C8;
      v54 = v30;
      [resultsByBSSID2 enumerateKeysAndObjectsUsingBlock:v53];

      goto LABEL_35;
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = dsCopy;
  v35 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v35)
  {
    goto LABEL_34;
  }

  v29 = dsCopy;
  v32 = responseCopy;
  v33 = *v50;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v50 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v49 + 1) + 8 * i);
      reformatBSSID = [v11 reformatBSSID];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      results = [responseCopy results];
      v39 = [(WiFi3BarsNetwork *)results countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (!v39)
      {
        v26 = 0;
        goto LABEL_29;
      }

      v34 = v11;
      v36 = i;
      v37 = results;
      v40 = 0;
      v38 = *v46;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v37);
          }

          v15 = *(*(&v45 + 1) + 8 * j);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          accessPoints = [v15 accessPoints];
          v17 = [accessPoints countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v42;
            while (2)
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(accessPoints);
                }

                v21 = *(*(&v41 + 1) + 8 * k);
                v22 = objc_autoreleasePoolPush();
                bSSID = [v21 BSSID];
                v24 = [bSSID isEqualToString:reformatBSSID];

                if (v24)
                {
                  v25 = v15;

                  objc_autoreleasePoolPop(v22);
                  v40 = v25;
                  goto LABEL_24;
                }

                objc_autoreleasePoolPop(v22);
              }

              v18 = [accessPoints countByEnumeratingWithState:&v41 objects:v55 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v39 = [(WiFi3BarsNetwork *)v37 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v39);

      v26 = v40;
      if (v40)
      {
        results = [[WiFi3BarsNetwork alloc] initWithNetwork:v40];
        [v30 setObject:results forKey:v34];
        responseCopy = v32;
        i = v36;
LABEL_29:

        goto LABEL_31;
      }

      responseCopy = v32;
      i = v36;
LABEL_31:
    }

    v35 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  }

  while (v35);
  dsCopy = v29;
LABEL_34:

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];

  return v30;
}

void __49__WiFi3BarsSource__matchSearchBSSIDs_toResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[WiFi3BarsNetwork alloc] initWithNetwork:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[WiFi3BarsSource forceFetch3BarsNetworkMatchingBSSID:completionHandler:]";
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetching 3bars network for %{mask.hash}@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{dCopy, 0}];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [date dateByAddingDays:{--[WiFi3BarsSource cacheExpirationInDays](self, "cacheExpirationInDays")}];

  v11 = [[TBNetworkFetchRequestDescriptor alloc] initWithBSSIDs:v8 maxCacheAge:v10];
  v12 = [TBNetworkFetchRequest fetchRequestWithDescriptor:v11 sourcePolicy:3 cacheable:1];
  [v12 setUserInfo:&unk_2848BB128];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__WiFi3BarsSource_forceFetch3BarsNetworkMatchingBSSID_completionHandler___block_invoke;
  v17[3] = &unk_2789C82F0;
  v17[4] = self;
  v18 = v8;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = v8;
  [v12 setResultsHandler:v17];
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  [sourceMediator executeFetchRequest:v12];

  v16 = *MEMORY[0x277D85DE8];
}

void __73__WiFi3BarsSource_forceFetch3BarsNetworkMatchingBSSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 error];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 error];
      v11 = 136315394;
      v12 = "[WiFi3BarsSource forceFetch3BarsNetworkMatchingBSSID:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetch error %@", &v11, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _matchSearchBSSIDs:*(a1 + 40) toResponse:v3];
  }

  [v4 setResults:v7];
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [v3 error];
    (*(v8 + 16))(v8, v4, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)submitCacheAnalyticsEvent
{
  v25 = *MEMORY[0x277D85DE8];
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  local = [sourceMediator local];
  context = [local context];

  if (context)
  {
    v5 = +[TBTileMO fetchRequest];
    [v5 setIncludesSubentities:0];
    v6 = +[TBTileMO fetchRequest];
    [v6 setIncludesSubentities:0];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [date dateByAddingDays:-1];

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"created > %@", v8];
    [v6 setPredicate:v9];

    v18 = 0;
    v10 = [context countForFetchRequest:v5 error:&v18];
    v11 = v18;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error fetching all tiles %@", buf, 0x16u);
      }
    }

    else
    {
      v17 = 0;
      v12 = [context countForFetchRequest:v6 error:&v17];
      v13 = v17;
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v14)
        {
          *buf = 136315394;
          v20 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error fetching last day tiles %@", buf, 0x16u);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 136315650;
          v20 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: allCount: %lu lastDayCount: %lu", buf, 0x20u);
        }

        v15 = [TBCacheAnalyticsEvent cacheEventWithTotalCount:v10 last24HoursCount:v12];
        [TBAnalytics captureEvent:v15];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WiFi3BarsSource submitCacheAnalyticsEvent]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unable to get moc", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setCacheExpirationInDays:(unint64_t)days
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WiFi3BarsSource setCacheExpirationInDays:]";
    v10 = 2048;
    daysCopy = days;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting new cache expiration %lu", &v8, 0x16u);
  }

  self->_cacheExpirationInDays = days;
  sourceMediator = [(WiFi3BarsSource *)self sourceMediator];
  local = [sourceMediator local];
  [local setCacheExpirationInDays:days];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_descriptorForType:(unint64_t)type
{
  v3 = 0;
  if (type > 1)
  {
    if (type == 3)
    {
      v3 = +[TBCoreDataStoreDescriptor tempStoreDescriptor];
    }

    else if (type == 2)
    {
      v3 = +[TBCoreDataStoreDescriptor clientStoreDescriptor];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v3 = +[TBCoreDataStoreDescriptor directStoreDescriptor];
    }
  }

  else
  {
    v3 = +[TBCoreDataStoreDescriptor serverStoreDescriptor];
  }

  return v3;
}

- (void)initWithChangeHandler:(void *)a1 localStoreType:.cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[WiFi3BarsSource initWithChangeHandler:localStoreType:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: store descriptor is nil", &v3, 0xCu);
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

@end