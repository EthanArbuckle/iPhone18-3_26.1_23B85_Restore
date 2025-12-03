@interface TPSDiscoverabilityController
+ (id)contextualInfoMap;
+ (void)removeContextualInfoCache;
- (BOOL)_isConditionMet:(id)met hasUpdates:(BOOL *)updates forIdentifier:(id)identifier;
- (BOOL)_updateTriggerConditionForObserverIdentifiers:(id)identifiers;
- (BOOL)isContextualInfoExistForIdentifier:(id)identifier;
- (BOOL)updateDesiredOutcomeConditionForObserverIdentifiers:(id)identifiers;
- (NSDictionary)contextualInfoMap;
- (TPSDiscoverabilityController)initWithTipStatusController:(id)controller;
- (TPSDiscoverabilityControllerDelegate)delegate;
- (id)_matchingIdentifiersForConditionWithType:(unint64_t)type forObserverIdentifiers:(id)identifiers hasUpdates:(BOOL *)updates;
- (id)contextualInfoForIdentifier:(id)identifier;
- (id)contextualInfoIdentifiers;
- (void)_cleanupContextualInfoMap;
- (void)_removeCacheData;
- (void)_updateCacheData;
- (void)_updateContextualInfoMapCache;
- (void)addHintDisplayedForIdentifier:(id)identifier context:(id)context;
- (void)contextualEligibilityWithTipIdentifiers:(id)identifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap experimentCampChangesToAll:(BOOL)all;
- (void)dataProviderManager:(id)manager didFinishQueryWithResults:(id)results type:(int64_t)type;
- (void)dataProviderManager:(id)manager didReceiveCallbackWithResult:(id)result type:(int64_t)type;
- (void)markHintIneligibleForIdentifiers:(id)identifiers bundleID:(id)d context:(id)context reason:(int64_t)reason;
- (void)processEventProviderQueryResults:(id)results type:(int64_t)type;
- (void)queryCurrentEvents;
- (void)removeAllContextualInfos;
- (void)removeContextualInfoForIdentifiers:(id)identifiers;
- (void)restartTriggerTrackingIfNotDisplayedForIdentifier:(id)identifier updateCache:(BOOL)cache;
- (void)restartTriggerTrackingIfNotDisplayedForIdentifiers:(id)identifiers;
- (void)updateContentViewedForIdentifier:(id)identifier;
- (void)updateHintWouldHaveBeenDisplayedForIdentifier:(id)identifier context:(id)context;
- (void)updateIdentifier:(id)identifier withContextualInfo:(id)info;
@end

@implementation TPSDiscoverabilityController

+ (void)removeContextualInfoCache
{
  [MEMORY[0x277D717A8] archivedDataWithRootObject:0 forKey:@"DiscoverabilityDeliveryInfoMap"];

  +[TPSEventsHistoryController removeEventHistoryCache];
}

+ (id)contextualInfoMap
{
  v2 = MEMORY[0x277CBEB58];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = [MEMORY[0x277D717A8] unarchivedObjectOfClasses:v5 forKey:@"DiscoverabilityDeliveryInfoMap"];

  return v6;
}

- (TPSDiscoverabilityController)initWithTipStatusController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v24.receiver = self;
    v24.super_class = TPSDiscoverabilityController;
    v6 = [(TPSDiscoverabilityController *)&v24 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_tipStatusController, controller);
      defaultManager = [MEMORY[0x277D71750] defaultManager];
      eventsProviderManager = v7->_eventsProviderManager;
      v7->_eventsProviderManager = defaultManager;

      [(TPSEventsProviderManager *)v7->_eventsProviderManager setDelegate:v7];
      v10 = [[TPSEventsHistoryController alloc] initWithTipStatusController:controllerCopy];
      eventsHistoryController = v7->_eventsHistoryController;
      v7->_eventsHistoryController = v10;

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.tipsd.contextualInfoQueue", v12);
      contextualInfoQueue = v7->_contextualInfoQueue;
      v7->_contextualInfoQueue = v13;

      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("com.apple.tipsd.eventHistoryProcessingQueue", v15);
      eventResultsProcessingQueue = v7->_eventResultsProcessingQueue;
      v7->_eventResultsProcessingQueue = v16;

      v18 = +[TPSDiscoverabilityController contextualInfoMap];
      contextualInfoMap = v7->_contextualInfoMap;
      v7->_contextualInfoMap = v18;

      if (v7->_contextualInfoMap)
      {
        [(TPSDiscoverabilityController *)v7 _cleanupContextualInfoMap];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v22 = v7->_contextualInfoMap;
        v7->_contextualInfoMap = dictionary;
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)contextualInfoMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSDiscoverabilityController_contextualInfoMap__block_invoke;
  v6[3] = &unk_2789AFB50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(contextualInfoQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__TPSDiscoverabilityController_contextualInfoMap__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 24) copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)contextualInfoIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__TPSDiscoverabilityController_contextualInfoIdentifiers__block_invoke;
  v6[3] = &unk_2789B0140;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(contextualInfoQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __57__TPSDiscoverabilityController_contextualInfoIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)updateIdentifier:(id)identifier withContextualInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  objc_initWeak(&location, self);
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__TPSDiscoverabilityController_updateIdentifier_withContextualInfo___block_invoke;
  v11[3] = &unk_2789B1040;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = identifierCopy;
  dispatch_async(contextualInfoQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__TPSDiscoverabilityController_updateIdentifier_withContextualInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[3] setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
}

- (void)removeContextualInfoForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  objc_initWeak(&location, self);
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TPSDiscoverabilityController_removeContextualInfoForIdentifiers___block_invoke;
  block[3] = &unk_2789AFCE0;
  objc_copyWeak(&v9, &location);
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(contextualInfoQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__TPSDiscoverabilityController_removeContextualInfoForIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[3] removeObjectsForKeys:*(a1 + 32)];
}

- (void)removeAllContextualInfos
{
  objc_initWeak(&location, self);
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__TPSDiscoverabilityController_removeAllContextualInfos__block_invoke;
  v4[3] = &unk_2789B1130;
  objc_copyWeak(&v5, &location);
  dispatch_async(contextualInfoQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__TPSDiscoverabilityController_removeAllContextualInfos__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] removeAllObjects];
}

- (id)contextualInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TPSDiscoverabilityController_contextualInfoForIdentifier___block_invoke;
  block[3] = &unk_2789B0E10;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(contextualInfoQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__TPSDiscoverabilityController_contextualInfoForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_cleanupContextualInfoMap
{
  contextualInfoMap = [(TPSDiscoverabilityController *)self contextualInfoMap];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  array = [MEMORY[0x277CBEB18] array];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke;
  v4[3] = &unk_2789B12B0;
  v4[4] = self;
  v4[5] = &v5;
  [contextualInfoMap enumerateKeysAndObjectsUsingBlock:v4];
  if (v6[5])
  {
    [(TPSDiscoverabilityController *)self removeContextualInfoForIdentifiers:?];
    [(TPSEventsHistoryController *)self->_eventsHistoryController removeObserverIdentifiers:v6[5]];
    [(TPSDiscoverabilityController *)self _updateCacheData];
  }

  _Block_object_dispose(&v5, 8);
}

void __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (([v4 isPreconditionMatchedForIdentifier:v3] & 1) == 0)
  {
    v7 = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke_cold_1(v3, v7);
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    [*(a1 + 32) restartTriggerTrackingIfNotDisplayedForIdentifier:v3];
    v6 = 7;
    goto LABEL_9;
  }

  if ([v4 isContextualInfoLifetimeExpiredForIdentifier:v3])
  {
    v5 = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke_cold_2(v3, v5);
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    v6 = 9;
LABEL_9:
    v8 = [v4 lastDisplayContextForIdentifier:v3];
    v9 = *(a1 + 32);
    v12[0] = v3;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v9 markHintIneligibleForIdentifiers:v10 context:v8 reason:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restartTriggerTrackingIfNotDisplayedForIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        [(TPSDiscoverabilityController *)self restartTriggerTrackingIfNotDisplayedForIdentifier:*(*(&v10 + 1) + 8 * v8++) updateCache:0];
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(TPSDiscoverabilityController *)self _updateCacheData];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)restartTriggerTrackingIfNotDisplayedForIdentifier:(id)identifier updateCache:(BOOL)cache
{
  cacheCopy = cache;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (([(TPSTipStatusController *)self->_tipStatusController isHintDisplayedForIdentifier:identifierCopy]& 1) == 0)
  {
    v7 = [(TPSTipStatusController *)self->_tipStatusController hintWouldHaveBeenDisplayedDateForIdentifier:identifierCopy];
    if (v7)
    {
    }

    else
    {
      v8 = [(TPSTipStatusController *)self->_tipStatusController dateForTriggerRestartTrackingForIdentifier:identifierCopy];

      if (!v8)
      {
        [(TPSTipStatusController *)self->_tipStatusController updateHintEligibleDateForIdentifier:identifierCopy value:0];
        [(TPSTipStatusController *)self->_tipStatusController removeUserInfoForIdentifier:identifierCopy];
        date = [MEMORY[0x277CBEAA8] date];
        v10 = [date dateByAddingTimeInterval:fabs(-180.0)];

        [(TPSTipStatusController *)self->_tipStatusController updateDateForTriggerRestartTrackingForIdentifier:identifierCopy date:v10];
        v11 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:identifierCopy];
        [v11 restartTriggerTracking];
        discoverability = [MEMORY[0x277D71778] discoverability];
        if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = identifierCopy;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Restart trigger tracking for %@ on %@", &v14, 0x16u);
        }

        if (cacheCopy)
        {
          [(TPSDiscoverabilityController *)self _updateCacheData];
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)contextualEligibilityWithTipIdentifiers:(id)identifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap experimentCampChangesToAll:(BOOL)all
{
  allCopy = all;
  v74 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  mapCopy = map;
  infoMapCopy = infoMap;
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "process tip delivery json", buf, 2u);
  }

  [(TPSDiscoverabilityController *)self _cleanupContextualInfoMap];
  if (identifiersCopy)
  {
    v54 = mapCopy;
    v14 = MEMORY[0x277CBEB58];
    p_tipStatusController = &self->_tipStatusController;
    reenrollPreconditionChangeContent = [(TPSTipStatusController *)self->_tipStatusController reenrollPreconditionChangeContent];
    v52 = [v14 setWithSet:reenrollPreconditionChangeContent];

    if (allCopy)
    {
      reenrollHoldoutContent = [(TPSTipStatusController *)*p_tipStatusController reenrollHoldoutContent];
      [v52 unionSet:reenrollHoldoutContent];
    }

    discoverability2 = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(discoverability2, OS_LOG_TYPE_DEBUG))
    {
      [TPSDiscoverabilityController contextualEligibilityWithTipIdentifiers:? tipsDeliveryInfoMap:? deliveryInfoMap:? experimentCampChangesToAll:?];
    }

    tipStatusMap = [(TPSTipStatusController *)*p_tipStatusController tipStatusMap];
    [tipStatusMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9];

    v19 = [identifiersCopy count];
    if (v19)
    {
      v20 = v19;
      v21 = MEMORY[0x277CBEB58];
      contextualInfoIdentifiers = [(TPSDiscoverabilityController *)self contextualInfoIdentifiers];
      v49 = [v21 setWithArray:contextualInfoIdentifiers];

      v56 = [MEMORY[0x277CBEB58] setWithCapacity:v20];
      v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v50 = identifiersCopy;
      obj = identifiersCopy;
      v61 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (!v61)
      {
        v53 = 0;
        goto LABEL_71;
      }

      v53 = 0;
      v60 = *v65;
      selfCopy = self;
      v57 = infoMapCopy;
      while (1)
      {
        v23 = 0;
        do
        {
          if (*v65 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v64 + 1) + 8 * v23);
          v25 = [mapCopy objectForKeyedSubscript:{v24, v49}];
          v26 = [TPSContextualInfo contentDictionaryWithTipDeliveryInfoId:v25 deliveryInfoMap:infoMapCopy];

          if (v26)
          {
            v27 = [(TPSTipStatusController *)*p_tipStatusController isTriggerTrackingEligibleForIdentifier:v24];
            v28 = [(TPSTipStatusController *)*p_tipStatusController isDesiredOutcomeTrackingEligibleForIdentifier:v24];
            if (v27)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
          }

          if (!v28)
          {
            v27 = 0;
            goto LABEL_57;
          }

LABEL_20:
          v29 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:v24];
          v30 = [(TPSTipStatusController *)self->_tipStatusController dateForTriggerRestartTrackingForIdentifier:v24];
          if (v29)
          {
            if (![v29 hasChangesFromDictionary:v26])
            {
              if (!v30 && (([v52 containsObject:v24] ^ 1) & 1) != 0)
              {
                goto LABEL_45;
              }

              goto LABEL_26;
            }

            eventsHistoryController = self->_eventsHistoryController;
            v72 = v24;
            v53 = 1;
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
            [(TPSEventsHistoryController *)eventsHistoryController removeObserverIdentifiers:v32];

            mapCopy = v54;
            [(TPSDiscoverabilityController *)self updateIdentifier:v24 withContextualInfo:0];
          }

          v33 = [[TPSContextualInfo alloc] initWithDictionary:v26];

          v29 = v33;
LABEL_26:
          if (v29)
          {
            if (!v27)
            {
              goto LABEL_30;
            }

            triggerCondition = [v29 triggerCondition];

            if (triggerCondition)
            {
              v27 = 1;
LABEL_30:
              if (v28)
              {
LABEL_31:
                desiredOutcomeCondition = [v29 desiredOutcomeCondition];
                v28 = desiredOutcomeCondition != 0;
              }
            }

            else
            {
              v42 = [(TPSTipStatusController *)*p_tipStatusController hintEligibleDateForIdentifier:v24];

              if (!v42)
              {
                [v51 addObject:v24];
              }

              v27 = 0;
              if (v28)
              {
                goto LABEL_31;
              }
            }

            if (v27)
            {
              v36 = &v63;
            }

            else
            {
              v36 = 0;
            }

            if (v27)
            {
              v63 = 0;
            }

            if (v28)
            {
              v37 = &v62;
            }

            else
            {
              v37 = 0;
            }

            if (v28)
            {
              v62 = 0;
            }

            [TPSContextualInfo eventsInfoArrayForContextualInfoDictionary:v26 triggerEvents:v36 desiredOutcomeEvents:v37];
            if (v27)
            {
              v38 = v63;
              if (!v28)
              {
                goto LABEL_44;
              }

LABEL_47:
              v39 = v62;
            }

            else
            {
              v38 = 0;
              if (v28)
              {
                goto LABEL_47;
              }

LABEL_44:
              v39 = 0;
            }

            if ([v38 count] || objc_msgSend(v39, "count"))
            {
              if (v30)
              {
                [(TPSTipStatusController *)*p_tipStatusController updateHintIneligibleForIdentifier:v24 value:0];
                [(TPSTipStatusController *)*p_tipStatusController updateDateForTriggerRestartTrackingForIdentifier:v24 date:0];
                discoverability3 = [MEMORY[0x277D71778] discoverability];
                if (os_log_type_enabled(discoverability3, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v69 = v24;
                  v70 = 2112;
                  *v71 = v30;
                  _os_log_debug_impl(&dword_232D6F000, discoverability3, OS_LOG_TYPE_DEBUG, "Restarted trigger tracking for %@ on %@", buf, 0x16u);
                }
              }

              [(TPSDiscoverabilityController *)selfCopy updateIdentifier:v24 withContextualInfo:v29];
              [(TPSEventsHistoryController *)selfCopy->_eventsHistoryController addEventsFromTriggerEvents:v38 desiredOutcomeEvents:v39 contentIdentifier:v24 eventSinceDate:v30];
              [v56 addObject:v24];
              v53 = 1;
            }

            else
            {
              discoverability4 = [MEMORY[0x277D71778] discoverability];
              if (os_log_type_enabled(discoverability4, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v69 = v24;
                _os_log_impl(&dword_232D6F000, discoverability4, OS_LOG_TYPE_DEFAULT, "Tips %@ eligible for tracking but not events found in delivery info", buf, 0xCu);
              }
            }

            mapCopy = v54;
            self = selfCopy;
            goto LABEL_56;
          }

LABEL_45:
          [v56 addObject:v24];
LABEL_56:

          infoMapCopy = v57;
LABEL_57:
          discoverability5 = [MEMORY[0x277D71778] discoverability];
          if (os_log_type_enabled(discoverability5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v69 = v24;
            v70 = 1024;
            *v71 = v27;
            *&v71[4] = 1024;
            *&v71[6] = v28;
            _os_log_impl(&dword_232D6F000, discoverability5, OS_LOG_TYPE_DEFAULT, "Tips %@ is eligible for trigger tracking: %d, desired outcome tracking: %d", buf, 0x18u);
          }

          ++v23;
        }

        while (v61 != v23);
        v44 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
        v61 = v44;
        if (!v44)
        {
LABEL_71:

          v45 = v49;
          [v49 minusSet:v56];
          v46 = v53;
          if ([v49 count])
          {
            allObjects = [v49 allObjects];
            [(TPSEventsHistoryController *)self->_eventsHistoryController removeObserverIdentifiers:allObjects];
            [(TPSDiscoverabilityController *)self removeContextualInfoForIdentifiers:allObjects];

            v46 = 1;
          }

          identifiersCopy = v50;
          if ([v51 count])
          {
            [(TPSDiscoverabilityController *)self _updateTriggerConditionForObserverIdentifiers:v51];
          }

          if (v46)
          {
            [(TPSDiscoverabilityController *)self _updateCacheData];
          }

          break;
        }
      }
    }

    mapCopy = v54;
  }

  [(TPSDiscoverabilityController *)self queryCurrentEvents];

  v48 = *MEMORY[0x277D85DE8];
}

void __135__TPSDiscoverabilityController_contextualEligibilityWithTipIdentifiers_tipsDeliveryInfoMap_deliveryInfoMap_experimentCampChangesToAll___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __135__TPSDiscoverabilityController_contextualEligibilityWithTipIdentifiers_tipsDeliveryInfoMap_deliveryInfoMap_experimentCampChangesToAll___block_invoke_cold_1(v4, v5);
  }
}

- (void)queryCurrentEvents
{
  v16 = *MEMORY[0x277D85DE8];
  contextualEventsBySourceMap = [(TPSEventsHistoryController *)self->_eventsHistoryController contextualEventsBySourceMap];
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    allValues = [contextualEventsBySourceMap allValues];
    v6 = [allValues description];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Query events: %@", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(eventSinceDate = nil) || (eventSinceDate <= %@)", date];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__TPSDiscoverabilityController_queryCurrentEvents__block_invoke;
  v11[3] = &unk_2789B12F8;
  v12 = v8;
  selfCopy = self;
  v9 = v8;
  [contextualEventsBySourceMap enumerateKeysAndObjectsUsingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __50__TPSDiscoverabilityController_queryCurrentEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 filteredArrayUsingPredicate:*(a1 + 32)];
  v7 = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __50__TPSDiscoverabilityController_queryCurrentEvents__block_invoke_cold_1(v5, v6);
  }

  [*(*(a1 + 40) + 8) queryEvents:v6 type:{objc_msgSend(v5, "intValue")}];
}

- (void)processEventProviderQueryResults:(id)results type:(int64_t)type
{
  eventsHistoryController = self->_eventsHistoryController;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__TPSDiscoverabilityController_processEventProviderQueryResults_type___block_invoke;
  v5[3] = &unk_2789B1348;
  v5[4] = self;
  [(TPSEventsHistoryController *)eventsHistoryController processEventProviderQueryResults:results completionHandler:v5];
}

void __70__TPSDiscoverabilityController_processEventProviderQueryResults_type___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) markHintIneligibleForIdentifiers:v6 context:0 reason:8];
    [*(*(a1 + 32) + 16) removeObserverIdentifiers:v6];
    [*(a1 + 32) removeContextualInfoForIdentifiers:v6];
  }

  if ([v5 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__TPSDiscoverabilityController_processEventProviderQueryResults_type___block_invoke_2;
    v14[3] = &unk_2789B1320;
    v14[4] = *(a1 + 32);
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__TPSDiscoverabilityController_processEventProviderQueryResults_type___block_invoke_3;
    v13[3] = &unk_2789B1320;
    v13[4] = *(a1 + 32);
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:v13];
    v9 = [v5 filteredArrayUsingPredicate:v7];
    v10 = [*(a1 + 32) updateDesiredOutcomeConditionForObserverIdentifiers:v9];
    v11 = [v5 filteredArrayUsingPredicate:v8];
    v12 = [*(a1 + 32) _updateTriggerConditionForObserverIdentifiers:v11];

    if (v10 & 1) != 0 || (v12)
    {
      goto LABEL_7;
    }
  }

  if ([v6 count])
  {
LABEL_7:
    [*(a1 + 32) _updateCacheData];
  }
}

- (void)_updateCacheData
{
  [(TPSDiscoverabilityController *)self _updateContextualInfoMapCache];
  [(TPSTipStatusController *)self->_tipStatusController updateCacheData];
  eventsHistoryController = self->_eventsHistoryController;

  [(TPSEventsHistoryController *)eventsHistoryController updateCacheData];
}

- (void)_removeCacheData
{
  data = [MEMORY[0x277D71778] data];
  if (os_log_type_enabled(data, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDiscoverabilityController *)data _removeCacheData];
  }

  [(TPSDiscoverabilityController *)self removeAllContextualInfos];
  [(TPSDiscoverabilityController *)self _updateContextualInfoMapCache];
  [(TPSEventsHistoryController *)self->_eventsHistoryController removeCacheData];
}

- (void)_updateContextualInfoMapCache
{
  objc_initWeak(&location, self);
  contextualInfoQueue = [(TPSDiscoverabilityController *)self contextualInfoQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__TPSDiscoverabilityController__updateContextualInfoMapCache__block_invoke;
  v4[3] = &unk_2789B1130;
  objc_copyWeak(&v5, &location);
  dispatch_async(contextualInfoQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__TPSDiscoverabilityController__updateContextualInfoMapCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [MEMORY[0x277D717A8] archivedDataWithRootObject:WeakRetained[3] forKey:@"DiscoverabilityDeliveryInfoMap"];
}

- (BOOL)isContextualInfoExistForIdentifier:(id)identifier
{
  v3 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)markHintIneligibleForIdentifiers:(id)identifiers bundleID:(id)d context:(id)context reason:(int64_t)reason
{
  v35 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  contextCopy = context;
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277D715E8] ineligibleReasonStringForReason:reason];
    *buf = 138412546;
    v32 = identifiersCopy;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Marking content as ineligible for content identifiers: %@. Ineligible reason: %@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = identifiersCopy;
  v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [(TPSTipStatusController *)self->_tipStatusController displayTypeForIdentifier:v18];
        if (!contextCopy)
        {
          contextCopy = [(TPSTipStatusController *)self->_tipStatusController lastDisplayContextForIdentifier:v18];
        }

        v20 = MEMORY[0x277D71608];
        v21 = [(TPSTipStatusController *)self->_tipStatusController correlationIdentifierForIdentifier:v18];
        v22 = [v20 eventWithTipID:v18 correlationID:v21 bundleID:dCopy context:contextCopy displayType:v19 reason:reason date:0];
        [v22 log];

        [(TPSTipStatusController *)self->_tipStatusController updateHintIneligibleForIdentifier:v18 value:reason];
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [(TPSTipStatusController *)self->_tipStatusController updateCacheData];
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateDesiredOutcomeConditionForObserverIdentifiers:(id)identifiers
{
  selfCopy = self;
  v7 = 0;
  v4 = [(TPSDiscoverabilityController *)self _matchingIdentifiersForConditionWithType:1 forObserverIdentifiers:identifiers hasUpdates:&v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__TPSDiscoverabilityController_updateDesiredOutcomeConditionForObserverIdentifiers___block_invoke;
  v6[3] = &unk_2789B1370;
  v6[4] = selfCopy;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(selfCopy) = v7;

  return selfCopy;
}

void __84__TPSDiscoverabilityController_updateDesiredOutcomeConditionForObserverIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&dword_232D6F000, v7, OS_LOG_TYPE_DEFAULT, "Desired outcome condition met for %@", buf, 0xCu);
  }

  v8 = [v6 desiredOutcomeCondition];
  v9 = *(*(a1 + 32) + 48);
  v10 = [v8 matchedDate];
  [v9 addDesiredOutcomePerformedDateForIdentifier:v5 date:v10];

  v11 = [*(*(a1 + 32) + 48) isHintDisplayedForIdentifier:v5];
  v12 = [*(*(a1 + 32) + 48) hintWouldHaveBeenDisplayedDateForIdentifier:v5];

  v13 = [*(*(a1 + 32) + 48) contentViewedDateForIdentifier:v5];

  if ((v11 & 1) != 0 || v12 || v13)
  {
    v19 = [v8 eventIdentifiers];
    v20 = [MEMORY[0x277CBEAA8] date];
    v21 = [v20 dateByAddingTimeInterval:--180.0];

    [*(*(a1 + 32) + 16) restartTrackingForEventIdentifiers:v19 date:v21];
    [v6 restartDesiredOutcomeTracking];
  }

  else
  {
    if (([*(*(a1 + 32) + 48) isHintIneligibleForIdentifier:v5] & 1) == 0)
    {
      v14 = *(a1 + 32);
      v25 = v5;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v14 markHintIneligibleForIdentifiers:v15 context:0 reason:6];
    }

    v16 = *(a1 + 32);
    v24 = v5;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v16 removeContextualInfoForIdentifiers:v17];

    v18 = *(*(a1 + 32) + 16);
    v23 = v5;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v18 removeObserverIdentifiers:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateTriggerConditionForObserverIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = [(TPSDiscoverabilityController *)self _matchingIdentifiersForConditionWithType:0 forObserverIdentifiers:identifiers hasUpdates:&v15];
  if ([v4 count])
  {
    discoverability = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
    {
      allValues = [v4 allValues];
      v7 = [allValues debugDescription];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Trigger condition met for tips %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__TPSDiscoverabilityController__updateTriggerConditionForObserverIdentifiers___block_invoke;
    v13[3] = &unk_2789B1398;
    v13[4] = self;
    v8 = v4;
    v14 = v8;
    [v8 enumerateKeysAndObjectsUsingBlock:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__TPSDiscoverabilityController__updateTriggerConditionForObserverIdentifiers___block_invoke_2;
    v12[3] = &unk_2789B1370;
    v12[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  v9 = v15;

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void __78__TPSDiscoverabilityController__updateTriggerConditionForObserverIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 triggerEventIdentifiers];
  if (v4)
  {
    v8 = v4;
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v7 = [v5 allKeys];
    [v6 removeObserverIdentifiers:v7 fromEventIdentifiers:v8];

    v4 = v8;
  }
}

- (id)_matchingIdentifiersForConditionWithType:(unint64_t)type forObserverIdentifiers:(id)identifiers hasUpdates:(BOOL *)updates
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  }

  else
  {
    v8 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v25;
  do
  {
    v13 = 0;
    do
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      v15 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:v14];
      v16 = [v15 conditionForType:type];
      v17 = v16;
      if (!v16)
      {
        if (type)
        {
          goto LABEL_14;
        }

LABEL_13:
        [v8 setObject:v15 forKeyedSubscript:v14];
        goto LABEL_14;
      }

      matchedDate = [v16 matchedDate];
      if (matchedDate)
      {

        goto LABEL_14;
      }

      if ([(TPSDiscoverabilityController *)self _isConditionMet:v17 hasUpdates:updates forIdentifier:v14])
      {
        goto LABEL_13;
      }

LABEL_14:

      ++v13;
    }

    while (v11 != v13);
    v19 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v11 = v19;
  }

  while (v19);
LABEL_19:

  if ([v8 count])
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)_isConditionMet:(id)met hasUpdates:(BOOL *)updates forIdentifier:(id)identifier
{
  v63 = *MEMORY[0x277D85DE8];
  metCopy = met;
  identifierCopy = identifier;
  rules = [metCopy rules];
  v41 = metCopy;
  joinType = [metCopy joinType];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = rules;
  v10 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v58;
    v43 = *v58;
    v44 = joinType;
    while (2)
    {
      v15 = 0;
      v45 = v11;
      do
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v57 + 1) + 8 * v15);
        matchedDate = [v16 matchedDate];
        if (matchedDate)
        {
          v18 = matchedDate;

          ++v13;
          v12 = v18;
          if (joinType == 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v51 = v12;
          v52 = v13;
          v46 = v16;
          eventIdentifiers = [v16 eventIdentifiers];
          v19 = [(TPSEventsHistoryController *)self->_eventsHistoryController contextualEventsForIdentifiers:?];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = 0;
            v24 = 0;
            v25 = *v54;
LABEL_11:
            v26 = 0;
            v48 = v24 + v22;
            while (1)
            {
              if (*v54 != v25)
              {
                objc_enumerationMutation(v20);
              }

              matchedDate2 = [*(*(&v53 + 1) + 8 * v26) matchedDate];
              if (!matchedDate2)
              {
                break;
              }

              v28 = matchedDate2;
              if (!v23 || [matchedDate2 compare:v23] == 1)
              {
                v29 = v28;

                v23 = v29;
              }

              ++v24;
              *updates = 1;

              if (v22 == ++v26)
              {
                v22 = [v20 countByEnumeratingWithState:&v53 objects:v61 count:16];
                v24 = v48;
                if (v22)
                {
                  goto LABEL_11;
                }

                break;
              }
            }
          }

          else
          {
            v23 = 0;
            v24 = 0;
          }

          if (v24 == [v20 count] && objc_msgSend(eventIdentifiers, "count") == v24)
          {
            [v46 setMatchedDate:v23];
            v30 = MEMORY[0x277D71650];
            v31 = [(TPSTipStatusController *)self->_tipStatusController correlationIdentifierForIdentifier:identifierCopy];
            identifier = [v46 identifier];
            v33 = [v30 eventWithTipID:identifierCopy correlationID:v31 ruleID:identifier];
            [v33 log];

            v12 = v51;
            if (!v51 || [v23 compare:v51] == 1)
            {
              v34 = v23;

              v12 = v34;
            }

            joinType = v44;
            v13 = v52 + 1;
            if (v44 == 1)
            {
LABEL_35:

              v18 = v12;
              goto LABEL_36;
            }
          }

          else
          {
            joinType = v44;
            v12 = v51;
            v13 = v52;
            if (!v44)
            {
              goto LABEL_35;
            }
          }

          v14 = v43;
          v11 = v45;
        }

        ++v15;
      }

      while (v15 != v11);
      v11 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      v18 = v12;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
    v13 = 0;
  }

LABEL_36:

  v35 = [obj count];
  if (joinType == 1 && v13 || (v13 == v35 ? (v38 = joinType == 0) : (v38 = 0), v38 || !v35))
  {
    v36 = v41;
    [v41 setMatchedDate:v18];
    v37 = 1;
  }

  else
  {
    v37 = 0;
    v36 = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)updateContentViewedForIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "update content viewed for %@", &v7, 0xCu);
  }

  [(TPSTipStatusController *)self->_tipStatusController updateContentViewedForIdentifier:identifierCopy value:1];
  [(TPSTipStatusController *)self->_tipStatusController updateCacheData];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addHintDisplayedForIdentifier:(id)identifier context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = contextCopy;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "update hint displayed for %@, context %@", buf, 0x16u);
  }

  [(TPSTipStatusController *)self->_tipStatusController addHintDisplayedForIdentifier:identifierCopy context:contextCopy];
  [(TPSTipStatusController *)self->_tipStatusController updateCacheData];
  v9 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:identifierCopy];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained currentExperimentWithDiscoverabilityController:self];

    v12 = [(TPSTipStatusController *)self->_tipStatusController displayTypeForIdentifier:identifierCopy];
    v13 = [(TPSTipStatusController *)self->_tipStatusController usageFlagsForIdentifier:identifierCopy];
    v14 = [(TPSTipStatusController *)self->_tipStatusController isOverrideHoldoutForIdentifier:identifierCopy];
    v15 = MEMORY[0x277D71668];
    v16 = [(TPSTipStatusController *)self->_tipStatusController correlationIdentifierForIdentifier:identifierCopy];
    clientBundleIdentifier = [MEMORY[0x277D716E8] clientBundleIdentifier];
    LOBYTE(v20) = v14;
    v18 = [v15 eventWithTipID:identifierCopy correlationID:v16 bundleID:clientBundleIdentifier context:contextCopy displayType:v12 usageFlags:v13 experiment:v11 overrideHoldout:v20 date:0];
    [v18 log];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateHintWouldHaveBeenDisplayedForIdentifier:(id)identifier context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  discoverability = [MEMORY[0x277D71778] discoverability];
  if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = contextCopy;
    _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "update hint would have been displayed for %@, context %@", buf, 0x16u);
  }

  [(TPSTipStatusController *)self->_tipStatusController updateHintWouldHaveBeenDisplayedDateForIdentifier:identifierCopy value:1];
  [(TPSTipStatusController *)self->_tipStatusController updateCacheData];
  v9 = [(TPSDiscoverabilityController *)self contextualInfoForIdentifier:identifierCopy];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained currentExperimentWithDiscoverabilityController:self];

    v12 = [(TPSTipStatusController *)self->_tipStatusController displayTypeForIdentifier:identifierCopy];
    v13 = [(TPSTipStatusController *)self->_tipStatusController usageFlagsForIdentifier:identifierCopy];
    v14 = [(TPSTipStatusController *)self->_tipStatusController isOverrideHoldoutForIdentifier:identifierCopy];
    v15 = MEMORY[0x277D71668];
    v16 = [(TPSTipStatusController *)self->_tipStatusController correlationIdentifierForIdentifier:identifierCopy];
    clientBundleIdentifier = [MEMORY[0x277D716E8] clientBundleIdentifier];
    LOBYTE(v20) = v14;
    v18 = [v15 eventWithTipID:identifierCopy correlationID:v16 bundleID:clientBundleIdentifier context:contextCopy displayType:v12 usageFlags:v13 experiment:v11 overrideHoldout:v20 date:0];
    [v18 log];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dataProviderManager:(id)manager didFinishQueryWithResults:(id)results type:(int64_t)type
{
  resultsCopy = results;
  eventResultsProcessingQueue = self->_eventResultsProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__TPSDiscoverabilityController_dataProviderManager_didFinishQueryWithResults_type___block_invoke;
  block[3] = &unk_2789B0E88;
  block[4] = self;
  v11 = resultsCopy;
  typeCopy = type;
  v9 = resultsCopy;
  dispatch_async(eventResultsProcessingQueue, block);
}

- (void)dataProviderManager:(id)manager didReceiveCallbackWithResult:(id)result type:(int64_t)type
{
  managerCopy = manager;
  resultCopy = result;
  objc_initWeak(&location, self);
  contextualInfoMap = [(TPSDiscoverabilityController *)self contextualInfoMap];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__TPSDiscoverabilityController_dataProviderManager_didReceiveCallbackWithResult_type___block_invoke;
  v11[3] = &unk_2789B13C0;
  objc_copyWeak(&v13, &location);
  v10 = resultCopy;
  v12 = v10;
  [contextualInfoMap enumerateKeysAndObjectsUsingBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __86__TPSDiscoverabilityController_dataProviderManager_didReceiveCallbackWithResult_type___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 desiredOutcomeEventIdentifiers];

  v9 = [*(a1 + 32) identifier];
  LODWORD(v6) = [v8 containsObject:v9];

  if (v6)
  {
    v10 = [WeakRetained tipStatusController];
    v11 = [v10 isHintIneligibleForIdentifier:v5];

    if (v11)
    {
      v12 = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_232D6F000, v12, OS_LOG_TYPE_DEFAULT, "Hint already marked as ineligible for %@", &v16, 0xCu);
      }
    }

    else
    {
      v13 = [WeakRetained tipStatusController];
      v12 = [v13 lastDisplayContextForIdentifier:v5];

      v18[0] = v5;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [WeakRetained markHintIneligibleForIdentifiers:v14 context:v12 reason:4];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (TPSDiscoverabilityControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Content %@ became invalid due to precondition changed", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __57__TPSDiscoverabilityController__cleanupContextualInfoMap__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Content %@ became invalid due to delivery info lifetime expiration", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)contextualEligibilityWithTipIdentifiers:(id *)a1 tipsDeliveryInfoMap:deliveryInfoMap:experimentCampChangesToAll:.cold.1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 tipStatusMap];
  [v1 count];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __135__TPSDiscoverabilityController_contextualEligibilityWithTipIdentifiers_tipsDeliveryInfoMap_deliveryInfoMap_experimentCampChangesToAll___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 debugDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __50__TPSDiscoverabilityController_queryCurrentEvents__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 description];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end