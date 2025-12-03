@interface RERelevanceProviderManager
+ (Class)_relevanceProviderClass;
+ (id)_features;
+ (id)providerManagerClasses;
+ (void)setProviderManagerClassesLoadingBlock:(id)block;
- (BOOL)_isValidProvider:(id)provider;
- (BOOL)containsProvider:(id)provider;
- (NSArray)allProviders;
- (RERelevanceProviderEnvironment)environment;
- (RERelevanceProviderManager)initWithQueue:(id)queue;
- (id)_engineLocationManager;
- (id)_engineVisitManager;
- (id)_valueForHistoricProvider:(id)provider feature:(id)feature;
- (id)_valueForProvider:(id)provider feature:(id)feature;
- (id)_valuesForProvider:(id)provider context:(id)context features:(id)features;
- (id)relevanceForProvider:(id)provider context:(id)context;
- (void)_accessQueue_appendCompletionHandlerForScheduledUpdate:(id)update;
- (void)_accessQueue_performImmediateUpdate:(id)update;
- (void)_accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded;
- (void)_accessQueue_performUpdate:(id)update;
- (void)_accessQueue_resetTimer;
- (void)_accessQueue_scheduleUpdate:(id)update;
- (void)_enumerateProviders:(id)providers;
- (void)_handleSignificantTimeChange;
- (void)_loadLoggingHeader;
- (void)_prepareForUpdateWithCompletion:(id)completion;
- (void)_relevanceQueue_openDataStores;
- (void)_removeAllPendingUpdates;
- (void)_scheduleUpdate:(id)update;
- (void)addProvider:(id)provider completion:(id)completion;
- (void)beginActivity:(id)activity;
- (void)dealloc;
- (void)endActivity:(id)activity;
- (void)enumerateInflectionFeatureValues:(id)values;
- (void)isProviderHistoric:(id)historic completion:(id)completion;
- (void)pauseWithCompletion:(id)completion;
- (void)relevanceForHistoricProvider:(id)provider completion:(id)completion;
- (void)relevanceForProvider:(id)provider completion:(id)completion;
- (void)removeProvider:(id)provider completion:(id)completion;
- (void)resumeWithCompletion:(id)completion;
- (void)setEnvironment:(id)environment;
- (void)setSupportedFeatures:(id)features;
@end

@implementation RERelevanceProviderManager

+ (void)setProviderManagerClassesLoadingBlock:(id)block
{
  REProviderManagerLoadingBlock = [block copy];

  MEMORY[0x2821F96F8]();
}

+ (id)providerManagerClasses
{
  if (providerManagerClasses_onceToken != -1)
  {
    +[RERelevanceProviderManager providerManagerClasses];
  }

  v3 = providerManagerClasses__providerManagersClasses;

  return v3;
}

void __52__RERelevanceProviderManager_providerManagerClasses__block_invoke()
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:17];
  v1 = providerManagerClasses__providerManagersClasses;
  providerManagerClasses__providerManagersClasses = v0;

  if (REProviderManagerLoadingBlock)
  {
    v9 = providerManagerClasses__providerManagersClasses;
    v10 = (*(REProviderManagerLoadingBlock + 16))(REProviderManagerLoadingBlock, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21);
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    v12 = providerManagerClasses__providerManagersClasses;
    providerManagerClasses__providerManagersClasses = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (RERelevanceProviderManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = RERelevanceProviderManager;
  v6 = [(RERelevanceProviderManager *)&v26 init];
  v7 = v6;
  if (v6)
  {
    [(RERelevanceProviderManager *)v6 _loadLoggingHeader];
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    providers = v7->_providers;
    v7->_providers = v8;

    v7->_dataStoresOpened = 0;
    objc_storeStrong(&v7->_accessQueue, queue);
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"com.apple.RelevanceEngine.%@", v12];

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create([v13 UTF8String], v14);
    relevanceQueue = v7->_relevanceQueue;
    v7->_relevanceQueue = v15;

    v17 = objc_opt_class();
    v7->_implementsPrepareForUpdate = RESubclassOverridesMethod(v7, v17, sel__prepareForUpdate);
    _wantsSeperateRelevanceQueue = [objc_opt_class() _wantsSeperateRelevanceQueue];
    v7->_hasSeperateRelevanceQueue = _wantsSeperateRelevanceQueue;
    if (_wantsSeperateRelevanceQueue)
    {
      if (initWithQueue__onceToken != -1)
      {
        [RERelevanceProviderManager initWithQueue:];
      }

      v19 = v7->_relevanceQueue;
      nextAvailableQueue = [initWithQueue__QueuePool nextAvailableQueue];
      dispatch_set_target_queue(v19, nextAvailableQueue);
    }

    else
    {
      dispatch_set_target_queue(v7->_relevanceQueue, v7->_accessQueue);
    }

    [(RERelevanceProviderManager *)v7 setSupportedFeatures:0];
    v21 = [[REPriorityQueue alloc] initWithComparator:&__block_literal_global_95];
    scheduledUpdates = v7->_scheduledUpdates;
    v7->_scheduledUpdates = v21;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = RESignificantTimeChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleSignificantTimeChange name:v24 object:0];
  }

  return v7;
}

uint64_t __44__RERelevanceProviderManager_initWithQueue___block_invoke()
{
  initWithQueue__QueuePool = [[REDispatchQueuePool alloc] initWithQueueCount:2 prefix:@"com.apple.RelevanceEngine.ProviderManager"];

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  if (self->_dataStoresOpened)
  {
    [(RERelevanceProviderManager *)self pause];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = RESignificantTimeChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = RERelevanceProviderManager;
  [(RERelevanceProviderManager *)&v5 dealloc];
}

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  [(RERelevanceProviderManager *)self _relevanceForProvider:provider, feature];
  v5 = v4;

  return [REFeatureValue featureValueWithDouble:v5];
}

- (id)_valuesForProvider:(id)provider context:(id)context features:(id)features
{
  v35 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  featuresCopy = features;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(featuresCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = featuresCopy;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v29 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [(RERelevanceProviderManager *)self _valueForProvider:providerCopy context:contextCopy feature:v17];
        if (!v18)
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          RERaiseInternalException(v29, @"%@ Unable to get feature value for relevance provider %@", v21, v22, v23, v24, v25, v26, v20);

          v18 = [REFeatureValue nullValueForFeature:v17];
        }

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_valueForHistoricProvider:(id)provider feature:(id)feature
{
  [(RERelevanceProviderManager *)self _relevanceForHistoricProvider:provider, feature];
  v5 = v4;

  return [REFeatureValue featureValueWithDouble:v5];
}

- (void)setSupportedFeatures:(id)features
{
  v43 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  supportedFeatures = self->_supportedFeatures;
  if (supportedFeatures != featuresCopy && ![(REFeatureSet *)supportedFeatures isEqual:featuresCopy])
  {
    v6 = [(REFeatureSet *)featuresCopy copy];
    v7 = self->_supportedFeatures;
    self->_supportedFeatures = v6;

    if (self->_supportedFeatures)
    {
      array = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      _features = [objc_opt_class() _features];
      v10 = [_features countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(_features);
            }

            v14 = *(*(&v37 + 1) + 8 * i);
            if ([(REFeatureSet *)self->_supportedFeatures containsFeature:v14])
            {
              [array addObject:v14];
            }
          }

          v11 = [_features countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v11);
      }

      v15 = [array copy];
      effectiveFeatures = self->_effectiveFeatures;
      self->_effectiveFeatures = v15;
    }

    else
    {
      _features2 = [objc_opt_class() _features];
      v18 = self->_effectiveFeatures;
      self->_effectiveFeatures = _features2;
    }

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    relevanceEngine = [WeakRetained relevanceEngine];
    inflectionFeatureValues = [relevanceEngine inflectionFeatureValues];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_effectiveFeatures, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = self->_effectiveFeatures;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * j);
          v29 = [inflectionFeatureValues objectForKeyedSubscript:{v28, v33}];
          if (v29)
          {
            [v22 setObject:v29 forKeyedSubscript:v28];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    v30 = [v22 copy];
    inflectionValues = self->_inflectionValues;
    self->_inflectionValues = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)addProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (![(RERelevanceProviderManager *)self _isValidProvider:providerCopy])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Provider %@ is not support by provider manager %@", providerCopy, self}];
  }

  [(NSHashTable *)self->_providers addObject:providerCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__RERelevanceProviderManager_addProvider_completion___block_invoke;
  v12[3] = &unk_2785F99C8;
  v12[4] = self;
  v8 = providerCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = MEMORY[0x22AABC5E0](v12);
  v11 = v10;
  if (self->_hasSeperateRelevanceQueue)
  {
    dispatch_async(self->_relevanceQueue, v10);
  }

  else
  {
    v10[2](v10);
  }
}

void __53__RERelevanceProviderManager_addProvider_completion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) _addedProvider:*(a1 + 40)];
  v3 = RELogForDomain(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__RERelevanceProviderManager_addProvider_completion___block_invoke_cold_1(v2, (v2 + 8));
  }

  v4 = [RERelevanceProviderManagerUpdate immediateUpdateForProvider:*(a1 + 40)];
  [v4 setCompletion:*(a1 + 48)];
  v5 = *(a1 + 32);
  if (v5[57] == 1)
  {
    [v5 _scheduleUpdate:v4];
  }

  else
  {
    [v5 _accessQueue_scheduleUpdate:v4];
  }
}

- (void)removeProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (![(NSHashTable *)self->_providers containsObject:providerCopy])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"No provider %@ was found by provider manager %@", providerCopy, self}];
  }

  [(NSHashTable *)self->_providers removeObject:providerCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RERelevanceProviderManager_removeProvider_completion___block_invoke;
  v12[3] = &unk_2785F99C8;
  v12[4] = self;
  v8 = providerCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = MEMORY[0x22AABC5E0](v12);
  v11 = v10;
  if (self->_hasSeperateRelevanceQueue)
  {
    dispatch_async(self->_relevanceQueue, v10);
  }

  else
  {
    v10[2](v10);
  }
}

uint64_t __56__RERelevanceProviderManager_removeProvider_completion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) _removeProvider:*(a1 + 40)];
  v3 = RELogForDomain(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__RERelevanceProviderManager_removeProvider_completion___block_invoke_cold_1(v2, (v2 + 8));
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)containsProvider:(id)provider
{
  selfCopy = self;
  accessQueue = self->_accessQueue;
  providerCopy = provider;
  dispatch_assert_queue_V2(accessQueue);
  LOBYTE(selfCopy) = [(NSHashTable *)selfCopy->_providers containsObject:providerCopy];

  return selfCopy;
}

- (void)relevanceForProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  relevanceQueue = self->_relevanceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RERelevanceProviderManager_relevanceForProvider_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = providerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = providerCopy;
  dispatch_async(relevanceQueue, block);
}

void __62__RERelevanceProviderManager_relevanceForProvider_completion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 effectiveFeatures];
  v5 = [v2 _valuesForProvider:v3 context:0 features:v4];

  v6 = RELogForDomain(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[5];
    v9 = *(a1[4] + 80);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_debug_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEBUG, "%@ calculated relevances %@ for relevance provider %@", &v10, 0x20u);
  }

  (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (id)relevanceForProvider:(id)provider context:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if (self->_hasSeperateRelevanceQueue)
  {
    relevanceQueue = self->_relevanceQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__RERelevanceProviderManager_relevanceForProvider_context___block_invoke;
    v14[3] = &unk_2785F99F0;
    v17 = &v18;
    v14[4] = self;
    v15 = providerCopy;
    v16 = contextCopy;
    dispatch_sync(relevanceQueue, v14);
  }

  else
  {
    dispatch_assert_queue_V2(self->_accessQueue);
    effectiveFeatures = [(RERelevanceProviderManager *)self effectiveFeatures];
    v10 = [(RERelevanceProviderManager *)self _valuesForProvider:providerCopy context:contextCopy features:effectiveFeatures];
    v11 = v19[5];
    v19[5] = v10;
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __59__RERelevanceProviderManager_relevanceForProvider_context___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = [v2 effectiveFeatures];
  v5 = [v2 _valuesForProvider:v3 context:v4 features:v8];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSArray)allProviders
{
  dispatch_assert_queue_V2(self->_accessQueue);
  providers = self->_providers;

  return [(NSHashTable *)providers allObjects];
}

- (void)isProviderHistoric:(id)historic completion:(id)completion
{
  historicCopy = historic;
  completionCopy = completion;
  relevanceQueue = self->_relevanceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RERelevanceProviderManager_isProviderHistoric_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = historicCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = historicCopy;
  dispatch_async(relevanceQueue, block);
}

uint64_t __60__RERelevanceProviderManager_isProviderHistoric_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isHistoricProvider:*(a1 + 40)];
  v3 = RELogForDomain(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = @"current";
    v8 = *(*(a1 + 32) + 80);
    if (v2)
    {
      v7 = @"historic";
    }

    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEBUG, "%@ relevance provider %@ is %@", &v9, 0x20u);
  }

  result = (*(*(a1 + 48) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)relevanceForHistoricProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  relevanceQueue = self->_relevanceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RERelevanceProviderManager_relevanceForHistoricProvider_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = providerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = providerCopy;
  dispatch_async(relevanceQueue, block);
}

void __70__RERelevanceProviderManager_relevanceForHistoricProvider_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = [*(a1 + 32) effectiveFeatures];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(a1 + 32) effectiveFeatures];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
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

        v10 = [*(a1 + 32) _valueForHistoricProvider:*(a1 + 40) feature:*(*(&v15 + 1) + 8 * v9)];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = RELogForDomain(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 80);
    *buf = 138412802;
    v20 = v14;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v13;
    _os_log_debug_impl(&dword_22859F000, v11, OS_LOG_TYPE_DEBUG, "%@ calculated historic relevances %@ for relevance provider %@", buf, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (RERelevanceProviderEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)setEnvironment:(id)environment
{
  objc_storeWeak(&self->_environment, environment);
  if (environment)
  {
    v5 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
    [(RERelevanceProviderManager *)self _scheduleUpdate:v5];
  }
}

- (id)_engineLocationManager
{
  environment = [(RERelevanceProviderManager *)self environment];
  relevanceEngine = [environment relevanceEngine];
  locationManager = [relevanceEngine locationManager];

  return locationManager;
}

- (id)_engineVisitManager
{
  environment = [(RERelevanceProviderManager *)self environment];
  relevanceEngine = [environment relevanceEngine];
  visitManager = [relevanceEngine visitManager];

  return visitManager;
}

- (void)beginActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  [WeakRetained beginActivity:activityCopy forObject:self];
}

- (void)endActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  [WeakRetained endActivity:activityCopy forObject:self];
}

- (void)enumerateInflectionFeatureValues:(id)values
{
  valuesCopy = values;
  v5 = valuesCopy;
  if (valuesCopy)
  {
    inflectionValues = self->_inflectionValues;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__RERelevanceProviderManager_enumerateInflectionFeatureValues___block_invoke;
    v7[3] = &unk_2785F9A18;
    v8 = valuesCopy;
    [(NSDictionary *)inflectionValues enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __63__RERelevanceProviderManager_enumerateInflectionFeatureValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEB68] null];
        v13 = [v12 isEqual:v11];

        if (v13)
        {

          v11 = 0;
        }

        (*(*(a1 + 32) + 16))();

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidProvider:(id)provider
{
  providerCopy = provider;
  [objc_opt_class() _relevanceProviderClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_enumerateProviders:(id)providers
{
  providersCopy = providers;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RERelevanceProviderManager__enumerateProviders___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = providersCopy;
  v6 = providersCopy;
  dispatch_async(accessQueue, v7);
}

void __50__RERelevanceProviderManager__enumerateProviders___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  relevanceQueue = self->_relevanceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RERelevanceProviderManager_resumeWithCompletion___block_invoke;
  block[3] = &unk_2785F9A68;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, block);
  dispatch_async(relevanceQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__RERelevanceProviderManager_resumeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[7] & 1) == 0)
    {
      [(dispatch_queue_t *)WeakRetained _relevanceQueue_openDataStores];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__RERelevanceProviderManager_resumeWithCompletion___block_invoke_2;
    v6[3] = &unk_2785F9A40;
    v6[4] = v3;
    v7 = *(a1 + 32);
    v4 = MEMORY[0x22AABC5E0](v6);
    v5 = v4;
    if (*(v3 + 57) == 1)
    {
      dispatch_async(v3[9], v4);
    }

    else
    {
      v4[2](v4);
    }
  }
}

uint64_t __51__RERelevanceProviderManager_resumeWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)pauseWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke;
  block[3] = &unk_2785F9A90;
  objc_copyWeak(&v12, &location);
  dispatch_async(accessQueue, block);
  relevanceQueue = self->_relevanceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke_2;
  v8[3] = &unk_2785F9A68;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(relevanceQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessQueue_resetTimer];
}

void __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[56] == 1)
  {
    [WeakRetained pause];
    v3[56] = 0;
    v4 = RELogForDomain(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke_2_cold_1(v3, v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

- (void)_handleSignificantTimeChange
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RERelevanceProviderManager__handleSignificantTimeChange__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_scheduleUpdate:(id)update
{
  updateCopy = update;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RERelevanceProviderManager__scheduleUpdate___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_removeAllPendingUpdates
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RERelevanceProviderManager__removeAllPendingUpdates__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_prepareForUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_implementsPrepareForUpdate)
  {
    relevanceQueue = self->_relevanceQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__RERelevanceProviderManager__prepareForUpdateWithCompletion___block_invoke;
    v7[3] = &unk_2785F9A40;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(relevanceQueue, v7);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __62__RERelevanceProviderManager__prepareForUpdateWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _prepareForUpdate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_relevanceQueue_openDataStores
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(self + 80);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "%@ opened data sources", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__RERelevanceProviderManager__relevanceQueue_openDataStores__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained immediateUpdateForRelevanceProviderManager:*(a1 + 32) completion:&__block_literal_global_125];
}

- (void)_accessQueue_appendCompletionHandlerForScheduledUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_accessQueue);
  completion = [updateCopy completion];

  if (completion)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    scheduledUpdates = self->_scheduledUpdates;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __85__RERelevanceProviderManager__accessQueue_appendCompletionHandlerForScheduledUpdate___block_invoke;
    v7[3] = &unk_2785F9B30;
    v9 = v10;
    v8 = updateCopy;
    [(REPriorityQueue *)scheduledUpdates enumerateObjects:v7];

    _Block_object_dispose(v10, 8);
  }
}

void __85__RERelevanceProviderManager__accessQueue_appendCompletionHandlerForScheduledUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && [v3 isEqual:*(a1 + 32)])
  {
    v5 = [*(a1 + 32) completion];

    if (v5)
    {
      v6 = [v4 completion];
      v7 = [*(a1 + 32) completion];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __85__RERelevanceProviderManager__accessQueue_appendCompletionHandlerForScheduledUpdate___block_invoke_2;
      v10[3] = &unk_2785F9B08;
      v11 = v6;
      v12 = v7;
      v8 = v7;
      v9 = v6;
      [v4 setCompletion:v10];
    }

    else
    {
      v9 = [*(a1 + 32) completion];
      [v4 setCompletion:v9];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __85__RERelevanceProviderManager__accessQueue_appendCompletionHandlerForScheduledUpdate___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_accessQueue_performImmediateUpdate:(id)update
{
  accessQueue = self->_accessQueue;
  updateCopy = update;
  dispatch_assert_queue_V2(accessQueue);
  [(RERelevanceProviderManager *)self _accessQueue_performUpdate:updateCopy];

  [(RERelevanceProviderManager *)self _accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded];
}

- (void)_accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  date = [MEMORY[0x277CBEAA8] date];
  minimumObject = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];
  if (minimumObject)
  {
    *&v5 = 138412290;
    v17 = v5;
    do
    {
      updateDate = [minimumObject updateDate];
      v7 = [updateDate compare:date] == 1;

      if (v7)
      {
        break;
      }

      v8 = RELogForDomain(3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        loggingHeader = self->_loggingHeader;
        *buf = v17;
        v21 = loggingHeader;
        _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "%@ performing scheduled update", buf, 0xCu);
      }

      [(RERelevanceProviderManager *)self _accessQueue_performUpdate:minimumObject];
      [(REPriorityQueue *)self->_scheduledUpdates removeMinimumObject];
      minimumObject2 = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];

      minimumObject = minimumObject2;
    }

    while (minimumObject2);
  }

  if ([(REPriorityQueue *)self->_scheduledUpdates count])
  {
    minimumObject3 = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];
    updateDate2 = [minimumObject3 updateDate];

    objc_initWeak(buf, self);
    accessQueue = self->_accessQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__RERelevanceProviderManager__accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded__block_invoke;
    v18[3] = &unk_2785F9B58;
    objc_copyWeak(&v19, buf);
    v14 = [REUpNextTimer timerWithFireDate:updateDate2 queue:accessQueue block:v18];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v14;

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    [(RERelevanceProviderManager *)self _accessQueue_resetTimer];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __88__RERelevanceProviderManager__accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded];
}

- (void)_accessQueue_performUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_accessQueue);
  allProviders = [updateCopy allProviders];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (allProviders)
  {
    completion = [updateCopy completion];
    [WeakRetained scheduleUpdateForRelevanceProviderManager:self completion:completion];
  }

  else
  {
    completion = [updateCopy provider];
    completion2 = [updateCopy completion];
    [WeakRetained scheduleUpdateForRelevanceProvider:completion completion:completion2];
  }
}

- (void)_accessQueue_resetTimer
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(REUpNextTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)_accessQueue_scheduleUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_accessQueue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RERelevanceProviderManager *)self _accessQueue_performImmediateUpdate:updateCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = updateCopy;
      if ([(REPriorityQueue *)self->_scheduledUpdates containsObject:v4])
      {
        [(RERelevanceProviderManager *)self _accessQueue_appendCompletionHandlerForScheduledUpdate:v4];
      }

      else
      {
        [(REPriorityQueue *)self->_scheduledUpdates insertObject:v4];
      }

      [(RERelevanceProviderManager *)self _accessQueue_performPendingUpdatesAndScheduleTimerIfNeeded];
    }
  }
}

- (void)_loadLoggingHeader
{
  _relevanceProviderClass = [objc_opt_class() _relevanceProviderClass];
  v4 = NSStringFromClass(_relevanceProviderClass);
  v9 = [v4 mutableCopy];

  [v9 replaceOccurrencesOfString:@"NTK" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"RelevanceProvider" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v9, "length")}];
  v5 = MEMORY[0x277CCACA8];
  lowercaseString = [v9 lowercaseString];
  v7 = [v5 stringWithFormat:@"[PM: %@]", lowercaseString];
  loggingHeader = self->_loggingHeader;
  self->_loggingHeader = v7;
}

+ (Class)_relevanceProviderClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return objc_opt_class();
}

+ (id)_features
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x277CBEBF8];
}

void __53__RERelevanceProviderManager_addProvider_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_22859F000, v2, v3, "%@ added relevance provider %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __56__RERelevanceProviderManager_removeProvider_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_22859F000, v2, v3, "%@ removed relevance provider %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __50__RERelevanceProviderManager_pauseWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "%@ closed data sources", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end