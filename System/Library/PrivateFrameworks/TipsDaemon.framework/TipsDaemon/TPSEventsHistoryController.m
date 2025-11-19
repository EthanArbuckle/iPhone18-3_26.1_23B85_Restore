@interface TPSEventsHistoryController
- (NSDictionary)contextualEventsForIdentifiers;
- (TPSEventsHistoryController)initWithTipStatusController:(id)a3;
- (id)_contextualEventForIdentifier:(id)a3;
- (id)allContextualEvents;
- (id)contextualEventsBySourceMap;
- (id)contextualEventsForIdentifiers:(id)a3;
- (id)debugDescription;
- (void)_addEvents:(id)a3 contentIdentifier:(id)a4 eventSinceDate:(id)a5 minObservationCount:(unint64_t)a6;
- (void)_persistUserInfo:(id)a3 forObserverIdentifiers:(id)a4;
- (void)_setContextualEvent:(id)a3 forIdentifier:(id)a4;
- (void)addEventsFromTriggerEvents:(id)a3 desiredOutcomeEvents:(id)a4 contentIdentifier:(id)a5 eventSinceDate:(id)a6;
- (void)processEventProviderQueryResults:(id)a3 completionHandler:(id)a4;
- (void)removeCacheData;
- (void)removeObserverIdentifiers:(id)a3;
- (void)removeObserverIdentifiers:(id)a3 fromEventIdentifiers:(id)a4;
- (void)restartTrackingForEventIdentifiers:(id)a3 date:(id)a4;
- (void)updateCacheData;
@end

@implementation TPSEventsHistoryController

- (TPSEventsHistoryController)initWithTipStatusController:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = TPSEventsHistoryController;
  v6 = [(TPSEventsHistoryController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tipStatusController, a3);
    v8 = MEMORY[0x277CBEB58];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [MEMORY[0x277D717A8] unarchivedObjectOfClasses:v11 forKey:@"DeliveryEventIdentifierToDeliveryEventMap"];
    contextualEventIdentifierToContextualEventMap = v7->_contextualEventIdentifierToContextualEventMap;
    v7->_contextualEventIdentifierToContextualEventMap = v12;

    if (!v7->_contextualEventIdentifierToContextualEventMap)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v15 = v7->_contextualEventIdentifierToContextualEventMap;
      v7->_contextualEventIdentifierToContextualEventMap = v14;
    }

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.tips.TPSEventsHistoryController.eventQueue", v16);
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v17;
  }

  return v7;
}

- (NSDictionary)contextualEventsForIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v3 = [(TPSEventsHistoryController *)self eventQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__TPSEventsHistoryController_contextualEventsForIdentifiers__block_invoke;
  v6[3] = &unk_2789B0140;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__TPSEventsHistoryController_contextualEventsForIdentifiers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) contextualEventIdentifierToContextualEventMap];
  v3 = [v5 count];
  if (v3)
  {
    v1 = [*(a1 + 32) contextualEventIdentifierToContextualEventMap];
    v4 = [v1 copy];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }
}

- (id)contextualEventsBySourceMap
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__14;
  v7[4] = __Block_byref_object_dispose__14;
  v8 = 0;
  v3 = [(TPSEventsHistoryController *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TPSEventsHistoryController_contextualEventsBySourceMap__block_invoke;
  block[3] = &unk_2789B1018;
  block[4] = self;
  block[5] = v7;
  block[6] = &v9;
  dispatch_sync(v3, block);

  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __57__TPSEventsHistoryController_contextualEventsBySourceMap__block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 32) allValues];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(*(a1[5] + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 matchedDate];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 status];

          if (v13)
          {
            continue;
          }
        }

        v14 = [v10 type];
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        v16 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = [MEMORY[0x277CBEB18] array];
          v17 = *(*(a1[6] + 8) + 40);
          if (!v17)
          {
            v18 = [MEMORY[0x277CBEB38] dictionary];
            v19 = *(a1[6] + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;

            v17 = *(*(a1[6] + 8) + 40);
          }

          [v17 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)allContextualEvents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v3 = [(TPSEventsHistoryController *)self eventQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSEventsHistoryController_allContextualEvents__block_invoke;
  v6[3] = &unk_2789B0140;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__TPSEventsHistoryController_allContextualEvents__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)contextualEventsForIdentifiers:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(TPSEventsHistoryController *)self _contextualEventForIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_contextualEventForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  v5 = [(TPSEventsHistoryController *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TPSEventsHistoryController__contextualEventForIdentifier___block_invoke;
  block[3] = &unk_2789B0E10;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__TPSEventsHistoryController__contextualEventForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_setContextualEvent:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(TPSEventsHistoryController *)self eventQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__TPSEventsHistoryController__setContextualEvent_forIdentifier___block_invoke;
  v11[3] = &unk_2789B1040;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__TPSEventsHistoryController__setContextualEvent_forIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  v3 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

- (void)_addEvents:(id)a3 contentIdentifier:(id)a4 eventSinceDate:(id)a5 minObservationCount:(unint64_t)a6
{
  v23 = a6;
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v12 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = [MEMORY[0x277D71730] identifierFromEventInfoDictionary:{v16, v23}];
        v18 = [(TPSEventsHistoryController *)self _contextualEventForIdentifier:v17];
        if (v18)
        {
          if (!v11)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v18 setEventSinceDate:v11];
          [v18 setMatchedDate:0];
          [v18 removeAllObservations];
          goto LABEL_9;
        }

        v19 = [[TPSContextualEventBuilder alloc] initWithDictionary:v16];
        v20 = [(TPSContextualEventBuilder *)v19 contextualEvent];
        v18 = v20;
        if (v20)
        {
          if (v23 != 0x7FFFFFFFFFFFFFFFLL && [v20 status] == 1)
          {
            [v18 setMinObservationCount:v23];
          }

          [(TPSEventsHistoryController *)self _setContextualEvent:v18 forIdentifier:v17];
        }

        if (v11)
        {
          goto LABEL_8;
        }

LABEL_9:
        [v18 addObserverIdentifier:v10];

        ++v15;
      }

      while (v13 != v15);
      v21 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v13 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addEventsFromTriggerEvents:(id)a3 desiredOutcomeEvents:(id)a4 contentIdentifier:(id)a5 eventSinceDate:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v15)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if ([MEMORY[0x277D716E8] isInternalDevice])
    {
      v14 = [MEMORY[0x277D71740] triggerMinObservationCount];
      if ((v14 - 1) < 0x7FFFFFFFFFFFFFFELL)
      {
        v13 = v14;
      }
    }

    [(TPSEventsHistoryController *)self _addEvents:v15 contentIdentifier:v11 eventSinceDate:v12 minObservationCount:v13];
  }

  if (v10)
  {
    [(TPSEventsHistoryController *)self _addEvents:v10 contentIdentifier:v11 eventSinceDate:v12 minObservationCount:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)processEventProviderQueryResults:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__14;
    v21 = __Block_byref_object_dispose__14;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__14;
    v15 = __Block_byref_object_dispose__14;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke;
    v10[3] = &unk_2789B1090;
    v10[4] = self;
    v10[5] = &v17;
    v10[6] = &v11;
    [v6 enumerateObjectsUsingBlock:v10];
    [v18[5] minusSet:v12[5]];
    v8 = [v18[5] allObjects];
    v9 = [v12[5] allObjects];
    v7[2](v7, v8, v9);

    [(TPSEventsHistoryController *)self updateCacheData];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7[2](v7, 0, 0);
  }
}

void __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) _contextualEventForIdentifier:v4];
  if (v5)
  {
    v6 = [v3 resultDate];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] date];
    }

    v9 = v8;

    v10 = [v5 eventSinceDate];
    if (v10)
    {
      v11 = v10;
      v12 = [v5 eventSinceDate];
      v13 = [v12 compare:v9];

      if (v13 == 1)
      {
        v14 = [MEMORY[0x277D71778] discoverability];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v5 eventSinceDate];
          *buf = 138412546;
          v48 = v15;
          v49 = 2112;
          v50 = v9;
          _os_log_impl(&dword_232D6F000, v14, OS_LOG_TYPE_DEFAULT, "Event since date (%@) for delivery event is later in time than result date (%@). Skipping result...", buf, 0x16u);
        }

        goto LABEL_30;
      }
    }

    v16 = [v9 dateByAddingTimeInterval:-180.0];
    [v5 setEventSinceDate:v16];

    v17 = [v3 bookmark];
    [v5 setBookmark:v17];

    v18 = [v3 bookmark];

    if (v18)
    {
      v19 = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_cold_1(v3);
      }
    }

    v20 = [v3 observationMap];
    v21 = [v5 observedWithResults:v20];

    v22 = [v5 observerIdentifiers];
    v23 = [v22 allObjects];

    v24 = [v5 observationMap];

    if (v24)
    {
      v25 = [v5 observationMap];
      v26 = [v25 allValues];

      v27 = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v3 identifier];
        *buf = 138412802;
        v48 = v39;
        v49 = 2048;
        v50 = [v26 count];
        v51 = 1024;
        v52 = [v5 minObservationCount];
        _os_log_impl(&dword_232D6F000, v27, OS_LOG_TYPE_DEFAULT, "Event %@, current observation count: %zd. Expected observation count: %d ", buf, 0x1Cu);
      }

      v28 = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_cold_2(v5);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_15;
    aBlock[3] = &unk_2789B1068;
    v46 = *(a1 + 40);
    v29 = v5;
    v41 = v29;
    v42 = v9;
    v14 = v23;
    v30 = *(a1 + 32);
    v43 = v14;
    v44 = v30;
    v45 = v3;
    v31 = _Block_copy(aBlock);
    if ([v29 status] == 1)
    {
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    else if (v21)
    {
      v32 = *(*(*(a1 + 48) + 8) + 40);
      if (!v32)
      {
        v33 = [MEMORY[0x277CBEB58] set];
        v34 = *(*(a1 + 48) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        v32 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v32 addObjectsFromArray:v14];
      v36 = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v29 identifier];
        *buf = 138412290;
        v48 = v37;
        _os_log_impl(&dword_232D6F000, v36, OS_LOG_TYPE_DEFAULT, "Event %@ invalidated due to absent event observed.", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v31[2](v31, v29);
LABEL_29:

LABEL_30:
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [*(a1 + 32) setMatchedDate:*(a1 + 40)];
  [*(a1 + 32) setBookmark:0];
  if (*(a1 + 48))
  {
    [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:?];
    v7 = *(a1 + 56);
    v8 = [*(a1 + 64) userInfo];
    [v7 _persistUserInfo:v8 forObserverIdentifiers:*(a1 + 48)];
  }

  v9 = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = [*(a1 + 32) matchedDate];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_DEFAULT, "Event %@, matched at %@.", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_persistUserInfo:(id)a3 forObserverIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__TPSEventsHistoryController__persistUserInfo_forObserverIdentifiers___block_invoke;
    v8[3] = &unk_2789B0AF8;
    v9 = v6;
    v10 = self;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __70__TPSEventsHistoryController__persistUserInfo_forObserverIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TPSEventsHistoryController__persistUserInfo_forObserverIdentifiers___block_invoke_2;
  v6[3] = &unk_2789B10B8;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __70__TPSEventsHistoryController__persistUserInfo_forObserverIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 tipStatusController];
  [v8 updateUserInfoForIdentifier:*(a1 + 40) key:v7 value:v6];

  v9 = [*(a1 + 32) tipStatusController];
  [v9 updateCacheData];
}

- (void)removeObserverIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v6 = [(TPSEventsHistoryController *)self eventQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__TPSEventsHistoryController_removeObserverIdentifiers___block_invoke;
  v9[3] = &unk_2789B1040;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __56__TPSEventsHistoryController_removeObserverIdentifiers___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __56__TPSEventsHistoryController_removeObserverIdentifiers___block_invoke_2;
  v8 = &unk_2789B10E0;
  v9 = a1[4];
  v10 = a1[5];
  [v3 enumerateKeysAndObjectsUsingBlock:&v5];

  v4 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  [v4 removeObjectsForKeys:a1[5]];
}

void __56__TPSEventsHistoryController_removeObserverIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v6 removeObserverIdentifiers:*(a1 + 32)];
  if ([v6 canBeRemoved])
  {
    [*(a1 + 40) addObject:v5];
    v7 = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_232D6F000, v7, OS_LOG_TYPE_DEFAULT, "Remove unused contextualEvent: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeObserverIdentifiers:(id)a3 fromEventIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(TPSEventsHistoryController *)self eventQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__TPSEventsHistoryController_removeObserverIdentifiers_fromEventIdentifiers___block_invoke;
  v11[3] = &unk_2789B1040;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __77__TPSEventsHistoryController_removeObserverIdentifiers_fromEventIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__TPSEventsHistoryController_removeObserverIdentifiers_fromEventIdentifiers___block_invoke_2;
  v7[3] = &unk_2789B1108;
  v7[4] = WeakRetained;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
  v6 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  [v6 removeObjectsForKeys:v5];
}

void __77__TPSEventsHistoryController_removeObserverIdentifiers_fromEventIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) contextualEventIdentifierToContextualEventMap];
  v5 = [v4 objectForKeyedSubscript:v3];

  [v5 removeObserverIdentifiers:*(a1 + 40)];
  if ([v5 canBeRemoved])
  {
    [*(a1 + 48) addObject:v3];
    v6 = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 debugDescription];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_232D6F000, v6, OS_LOG_TYPE_DEFAULT, "Remove unused contextualEvent: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)restartTrackingForEventIdentifiers:(id)a3 date:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TPSEventsHistoryController *)self contextualEventsForIdentifiers:v6];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
  }

  v10 = v9;
  v11 = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_232D6F000, v11, OS_LOG_TYPE_DEFAULT, "Restart tracking for event identifiers: %@ on %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        [v17 setMatchedDate:{0, v19}];
        [v17 removeAllObservations];
        [v17 setEventSinceDate:v10];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheData
{
  objc_initWeak(&location, self);
  v3 = [(TPSEventsHistoryController *)self eventQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TPSEventsHistoryController_updateCacheData__block_invoke;
  v4[3] = &unk_2789B1130;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__TPSEventsHistoryController_updateCacheData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = MEMORY[0x277D717A8];
  v2 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  [v1 archivedDataWithRootObject:v2 forKey:@"DeliveryEventIdentifierToDeliveryEventMap"];
}

- (void)removeCacheData
{
  v3 = [MEMORY[0x277D71778] data];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(TPSEventsHistoryController *)v3 removeCacheData];
  }

  objc_initWeak(&location, self);
  v4 = [(TPSEventsHistoryController *)self eventQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__TPSEventsHistoryController_removeCacheData__block_invoke;
  v5[3] = &unk_2789B1130;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__TPSEventsHistoryController_removeCacheData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contextualEventIdentifierToContextualEventMap];
  [v1 removeAllObjects];

  [WeakRetained updateCacheData];
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%@", self];
  [v3 appendFormat:@"%@ = %@\n", @"DeliveryEventIdentifierToDeliveryEventMap", self->_contextualEventIdentifierToContextualEventMap];

  return v3;
}

void __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 bookmark];
  OUTLINED_FUNCTION_0_4(&dword_232D6F000, v2, v3, "Bookmark: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__TPSEventsHistoryController_processEventProviderQueryResults_completionHandler___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 observationMap];
  OUTLINED_FUNCTION_0_4(&dword_232D6F000, v2, v3, "Dates: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end