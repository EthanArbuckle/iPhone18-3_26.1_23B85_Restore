@interface REElementRelevanceEngine
- (BOOL)_elementIsFullyLoaded:(id)loaded;
- (BOOL)modelManager:(id)manager loadDataStoreFromURL:(id)l error:(id *)error;
- (BOOL)modelManager:(id)manager saveDataStoreToURL:(id)l error:(id *)error;
- (REElementRelevanceEngine)initWithRelevanceEngine:(id)engine;
- (REElementRelevanceEngineDelegate)delegate;
- (float)rankingScoreForElement:(id)element createdAt:(id)at;
- (id)_allCurrentElements;
- (id)_generateFeatureMapForElement:(id)element;
- (id)_queue_featureMapForElement:(id)element trainingContext:(id)context;
- (id)_queue_featureMapForElementWithId:(id)id trainingContext:(id)context;
- (id)elementAtPath:(id)path;
- (id)elementEvaluatorForConditionEvaluator:(id)evaluator;
- (id)elementRankerForComparator:(id)comparator;
- (id)elementRankerForSection:(id)section;
- (id)featureMapForElement:(id)element trainingContext:(id)context;
- (id)featureMapForPredictedElement:(id)element trainingContext:(id)context;
- (id)featureProviderForElement:(id)element;
- (id)pathForElement:(id)element;
- (id)predictionForElement:(id)element;
- (id)rankingStartDateForElement:(id)element;
- (id)rankingTierForElement:(id)element;
- (id)section:(id)section groupForIdentifier:(id)identifier;
- (id)sectionForElement:(id)element;
- (id)updatedRankingDateForElement:(id)element;
- (unint64_t)numberOfElementsInSection:(id)section;
- (void)_checkPreferences;
- (void)_enumerateAndGenerateSectionComparators:(id)comparators;
- (void)_performUpdatesToDelegate:(id)delegate;
- (void)_queue_scheduleRelevanceUpdateForElement:(id)element;
- (void)_queue_unregisterProvidersForElement:(id)element;
- (void)_queue_updateElementRelevance;
- (void)_updateStateBasedOnPredictor;
- (void)addElement:(id)element section:(id)section;
- (void)dealloc;
- (void)modelManagerDidUpdateModel:(id)model;
- (void)predictor:(id)predictor didFinishActivity:(id)activity;
- (void)predictorDidUpdate:(id)update;
- (void)relevanceEnvironment:(id)environment didUpdateRelevanceProvider:(id)provider;
- (void)reloadElement:(id)element withElement:(id)withElement;
- (void)removeElement:(id)element;
- (void)sectionDidUpdateContentOrder:(id)order;
@end

@implementation REElementRelevanceEngine

- (REElementRelevanceEngine)initWithRelevanceEngine:(id)engine
{
  v106 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v103.receiver = self;
  v103.super_class = REElementRelevanceEngine;
  v5 = [(RERelevanceEngineSubsystem *)&v103 initWithRelevanceEngine:engineCopy];
  v6 = v5;
  if (v5)
  {
    queue = [(RERelevanceEngineSubsystem *)v5 queue];
    queue = v6->_queue;
    v6->_queue = queue;

    configuration = [engineCopy configuration];
    wantsImmutableContent = [configuration wantsImmutableContent];

    if (wantsImmutableContent)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 0.05;
    }

    objc_initWeak(&location, v6);
    v12 = v6->_queue;
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke;
    v100[3] = &unk_2785F9A90;
    objc_copyWeak(&v101, &location);
    v13 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.relevance-update" queue:v12 delay:v100 updateBlock:v11];
    if (wantsImmutableContent)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 0.5;
    }

    scheduler = v6->_scheduler;
    v6->_scheduler = v13;

    v16 = v6->_queue;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_2;
    v98[3] = &unk_2785F9A90;
    objc_copyWeak(&v99, &location);
    v17 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.predictor-update" queue:v16 delay:v98 updateBlock:v14];
    predictorUpdatedScheduler = v6->_predictorUpdatedScheduler;
    v6->_predictorUpdatedScheduler = v17;

    configuration2 = [engineCopy configuration];
    v6->_ignoreDeviceLockState = [configuration2 ignoreDeviceLockState];

    v20 = [MEMORY[0x277CBEB58] set];
    elementsNeedingRelevanceUpdate = v6->_elementsNeedingRelevanceUpdate;
    v6->_elementsNeedingRelevanceUpdate = v20;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sections = v6->_sections;
    v6->_sections = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    predictedElements = v6->_predictedElements;
    v6->_predictedElements = dictionary2;

    v26 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    relevanceProviderElementMap = v6->_relevanceProviderElementMap;
    v6->_relevanceProviderElementMap = v26;

    v28 = objc_opt_new();
    reloadingElementIdentifiers = v6->_reloadingElementIdentifiers;
    v6->_reloadingElementIdentifiers = v28;

    v30 = objc_opt_new();
    identifierToCachedFeatureMapMap = v6->_identifierToCachedFeatureMapMap;
    v6->_identifierToCachedFeatureMapMap = v30;

    v32 = [[RERelevanceProviderEnvironment alloc] initWithRelevanceEngine:engineCopy];
    providerEnvironment = v6->_providerEnvironment;
    v6->_providerEnvironment = v32;

    [(RERelevanceProviderEnvironment *)v6->_providerEnvironment setDelegate:v6];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_3;
    v96[3] = &unk_2785FC7C8;
    v34 = v6;
    v97 = v34;
    [(REElementRelevanceEngine *)v34 _enumerateAndGenerateSectionComparators:v96];
    configuration3 = [engineCopy configuration];
    predictorManager = [configuration3 predictorManager];
    predictorManager = v34->_predictorManager;
    v75 = v34;
    v34->_predictorManager = predictorManager;

    v38 = v34->_predictorManager;
    if (!v38)
    {
      rootFeatures = [engineCopy rootFeatures];
      v40 = [REPredictor systemPredictorsSupportingFeatureSet:rootFeatures relevanceEngine:engineCopy];
      v41 = v34->_predictorManager;
      v34->_predictorManager = v40;

      v38 = v34->_predictorManager;
    }

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_4;
    v94[3] = &unk_2785FC7F0;
    v42 = v34;
    v95 = v42;
    [(REPredictorManager *)v38 enumeratePredictors:v94];
    featureTransmuter = [engineCopy featureTransmuter];
    featureTransmuter = v42->_featureTransmuter;
    v42->_featureTransmuter = featureTransmuter;

    if (!v42->_featureTransmuter)
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature transmuter should not be nil!", v45, v46, v47, v48, v49, v50, v73);
    }

    v51 = +[(REFeatureSet *)REMutableFeatureSet];
    v52 = +[(REFeatureSet *)REMutableFeatureSet];
    v88 = 0;
    v89 = &v88;
    v90 = 0x3042000000;
    v91 = __Block_byref_object_copy__18;
    v92 = __Block_byref_object_dispose__18;
    v93 = 0;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_17;
    v84[3] = &unk_2785FC818;
    v53 = v51;
    v85 = v53;
    v74 = v52;
    v86 = v74;
    v87 = &v88;
    v54 = MEMORY[0x22AABC5E0](v84);
    objc_storeWeak(v89 + 5, v54);
    v55 = engineCopy;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    outputFeatures = [(REFeatureTransmuter *)v42->_featureTransmuter outputFeatures];
    v57 = [outputFeatures countByEnumeratingWithState:&v80 objects:v105 count:16];
    if (v57)
    {
      v58 = *v81;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v81 != v58)
          {
            objc_enumerationMutation(outputFeatures);
          }

          v54[2](v54, *(*(&v80 + 1) + 8 * i));
        }

        v57 = [outputFeatures countByEnumeratingWithState:&v80 objects:v105 count:16];
      }

      while (v57);
    }

    engineCopy = v55;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v60 = v53;
    v61 = [v60 countByEnumeratingWithState:&v76 objects:v104 count:16];
    if (v61)
    {
      v62 = *v77;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v77 != v62)
          {
            objc_enumerationMutation(v60);
          }

          transformer = [*(*(&v76 + 1) + 8 * j) transformer];
          [transformer setInvalidationDelegate:v42];
        }

        v61 = [v60 countByEnumeratingWithState:&v76 objects:v104 count:16];
      }

      while (v61);
    }

    v65 = [v74 copy];
    persistenceFeatures = v42->_persistenceFeatures;
    v42->_persistenceFeatures = v65;

    v42->_deviceIsLocked = 0;
    [(REElementRelevanceEngine *)v42 _checkPreferences];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v42 selector:sel__checkPreferences name:@"RERelevanceEnginePreferencesDidUpdate" object:0];

    relevanceEngine = [(RERelevanceEngineSubsystem *)v42 relevanceEngine];
    modelManager = [relevanceEngine modelManager];
    [modelManager addObserver:v42];

    [(REPredictorManager *)v75->_predictorManager addObserver:v42];
    modelManager2 = [v55 modelManager];
    [modelManager2 addDataStore:v42];

    _Block_object_dispose(&v88, 8);
    objc_destroyWeak(&v93);

    objc_destroyWeak(&v99);
    objc_destroyWeak(&v101);
    objc_destroyWeak(&location);
  }

  v71 = *MEMORY[0x277D85DE8];
  return v6;
}

void __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateElementRelevance];
}

void __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStateBasedOnPredictor];
}

void __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [[RESection alloc] initWithSectionDescriptor:v6 comparator:v5];

  [(RESection *)v9 setDelegate:*(a1 + 32)];
  v7 = *(*(a1 + 32) + 48);
  v8 = [v6 name];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

void __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 outstandingActivities];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 countForObject:v9];
        if (v10)
        {
          v11 = v10;
          do
          {
            [*(a1 + 32) beginActivity:v9 forObject:v3];
            --v11;
          }

          while (v11);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__REElementRelevanceEngine_initWithRelevanceEngine___block_invoke_17(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transformer];
    v5 = [objc_opt_class() supportsInvalidation];

    if (v5)
    {
      [*(a1 + 32) addFeature:v3];
    }

    v6 = [v3 transformer];
    v7 = [objc_opt_class() supportsPersistence];

    if (v7)
    {
      [*(a1 + 40) addFeature:v3];
    }
  }

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (WeakRetained)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v3 _dependentFeatures];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          WeakRetained[2](WeakRetained, *(*(&v15 + 1) + 8 * v13++));
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(REElementRelevanceEngine *)self pause];
  [(REPredictorManager *)self->_predictorManager removeObserver:self];
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  modelManager = [relevanceEngine modelManager];
  [modelManager removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"RERelevanceEnginePreferencesDidUpdate" object:0];

  relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  modelManager2 = [relevanceEngine2 modelManager];
  [modelManager2 addDataStore:self];

  v8.receiver = self;
  v8.super_class = REElementRelevanceEngine;
  [(RERelevanceEngineSubsystem *)&v8 dealloc];
}

- (unint64_t)numberOfElementsInSection:(id)section
{
  v3 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:section];
  visibleCount = [v3 visibleCount];

  return visibleCount;
}

- (id)elementAtPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  sectionName = [pathCopy sectionName];
  v6 = [(NSMutableDictionary *)sections objectForKeyedSubscript:sectionName];

  element = [pathCopy element];
  v8 = [v6 elementIdAtIndex:element];

  return v8;
}

- (BOOL)modelManager:(id)manager loadDataStoreFromURL:(id)l error:(id *)error
{
  errorCopy = error;
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_persistenceFeatures;
  v7 = [(REFeatureSet *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        name = [v11 name];
        v13 = [lCopy URLByAppendingPathComponent:name];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [v13 path];
        v16 = [defaultManager fileExistsAtPath:path];

        if (v16)
        {
          transformer = [v11 transformer];
          [transformer readFromURL:v13 error:errorCopy];
        }
      }

      v8 = [(REFeatureSet *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)modelManager:(id)manager saveDataStoreToURL:(id)l error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_persistenceFeatures;
  v8 = [(REFeatureSet *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        name = [v12 name];
        v14 = [lCopy URLByAppendingPathComponent:name];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [v14 path];
        [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

        transformer = [v12 transformer];
        [transformer writeToURL:v14 error:error];
      }

      v9 = [(REFeatureSet *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_enumerateAndGenerateSectionComparators:(id)comparators
{
  comparatorsCopy = comparators;
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  modelManager = [relevanceEngine modelManager];

  if (modelManager)
  {
    relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__REElementRelevanceEngine__enumerateAndGenerateSectionComparators___block_invoke;
    v8[3] = &unk_2785FB598;
    v9 = modelManager;
    v10 = comparatorsCopy;
    [relevanceEngine2 enumerateSectionDescriptorsWithOptions:0 includeHistoric:1 usingBlock:v8];
  }
}

void __68__REElementRelevanceEngine__enumerateAndGenerateSectionComparators___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 rules];
  v6 = [v3 comparatorWithRules:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)modelManagerDidUpdateModel:(id)model
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__REElementRelevanceEngine_modelManagerDidUpdateModel___block_invoke;
  v3[3] = &unk_2785F9AB8;
  v3[4] = self;
  [(REElementRelevanceEngine *)self _onqueue_async:v3];
}

uint64_t __55__REElementRelevanceEngine_modelManagerDidUpdateModel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__REElementRelevanceEngine_modelManagerDidUpdateModel___block_invoke_2;
  v3[3] = &unk_2785FC7C8;
  v3[4] = v1;
  return [v1 _enumerateAndGenerateSectionComparators:v3];
}

void __55__REElementRelevanceEngine_modelManagerDidUpdateModel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 48);
  v5 = a3;
  v6 = [a2 name];
  v7 = [v4 objectForKeyedSubscript:v6];

  [v7 setComparator:v5];
}

- (void)addElement:(id)element section:(id)section
{
  v46 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v25 = elementCopy;
  v31 = [REPredictionElement predictionElementFromElement:elementCopy];
  [v31 setSection:sectionCopy];
  predictedElements = self->_predictedElements;
  identifier = [v25 identifier];
  [(NSMutableDictionary *)predictedElements setObject:v31 forKeyedSubscript:identifier];

  identifier2 = [v25 identifier];
  v26 = ElementIdentifierByRemovingNamespacedIdentifier(v31);
  if (([(NSMutableSet *)self->_reloadingElementIdentifiers containsObject:identifier2]& 1) == 0 && v26)
  {
    v9 = RELogForDomain(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v42 = identifier2;
      _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_INFO, "addElement creating feature map for element %{public}@", buf, 0xCu);
    }

    v10 = [(REElementRelevanceEngine *)self _queue_featureMapForElementWithId:identifier2 trainingContext:0];
    [(NSMutableDictionary *)self->_identifierToCachedFeatureMapMap setObject:v10 forKeyedSubscript:v26];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v31 relevanceProviders];
  v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    identifier3 = 0;
    v30 = *v36;
    v28 = *MEMORY[0x277CBE660];
    do
    {
      v13 = 0;
      v14 = identifier3;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * v13);
        [(NSMapTable *)self->_relevanceProviderElementMap setObject:v31 forKey:v15];
        objc_initWeak(&location, self);
        [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v15];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __47__REElementRelevanceEngine_addElement_section___block_invoke;
        v32[3] = &unk_2785FA2B8;
        objc_copyWeak(&v33, &location);
        v32[4] = v15;
        v16 = MEMORY[0x22AABC5E0](v32);
        IsInternalBuildDebug150813772 = _REGetIsInternalBuildDebug150813772();
        providerEnvironment = self->_providerEnvironment;
        if (IsInternalBuildDebug150813772)
        {
          if ([(RERelevanceProviderEnvironment *)providerEnvironment addRelevanceProviderDidTriggerException:v15 completion:v16])
          {
            v19 = RELogForDomain(3);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v42 = identifier2;
              v43 = 2112;
              v44 = v26;
              _os_log_error_impl(&dword_22859F000, v19, OS_LOG_TYPE_ERROR, "Encountered rdar://150813772 - Item already in disjoint set. Element: %@, predictedElement: %@", buf, 0x16u);
            }

            v20 = RELogForDomain(3);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v15 description];
              [(REElementRelevanceEngine *)v21 addElement:v39 section:&v40, v20];
            }

            [MEMORY[0x277CBEAD8] raise:v28 format:@"Item already in disjoint set - see rdar://150813772"];
          }
        }

        else
        {
          [(RERelevanceProviderEnvironment *)providerEnvironment addRelevanceProvider:v15 completion:v16];
        }

        if (v14)
        {
          [(RERelevanceProviderEnvironment *)self->_providerEnvironment relateRelevanceProvider:v14 toRelevanceProvider:v15];
        }

        identifier3 = v15;

        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
        ++v13;
        v14 = identifier3;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v11);
  }

  else
  {

    identifier3 = [v25 identifier];
    [(REElementRelevanceEngine *)self _queue_scheduleRelevanceUpdateForElement:identifier3];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __47__REElementRelevanceEngine_addElement_section___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)reloadElement:(id)element withElement:(id)withElement
{
  queue = self->_queue;
  withElementCopy = withElement;
  elementCopy = element;
  dispatch_assert_queue_V2(queue);
  reloadingElementIdentifiers = self->_reloadingElementIdentifiers;
  identifier = [elementCopy identifier];
  [(NSMutableSet *)reloadingElementIdentifiers addObject:identifier];

  identifier2 = [elementCopy identifier];
  v13 = [(REElementRelevanceEngine *)self sectionForElement:identifier2];

  identifier3 = [elementCopy identifier];

  [(REElementRelevanceEngine *)self _queue_unregisterProvidersForElement:identifier3];
  [(REElementRelevanceEngine *)self addElement:withElementCopy section:v13];
}

- (void)_queue_unregisterProvidersForElement:(id)element
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_predictedElements objectForKeyedSubscript:element];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  relevanceProviders = [v4 relevanceProviders];
  v6 = [relevanceProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(relevanceProviders);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(RERelevanceProviderEnvironment *)self->_providerEnvironment removeRelevanceProvider:v10 completion:0];
        [(NSMapTable *)self->_relevanceProviderElementMap removeObjectForKey:v10];
      }

      v7 = [relevanceProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeElement:(id)element
{
  elementCopy = element;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_predictedElements objectForKeyedSubscript:elementCopy];
  [(REElementRelevanceEngine *)self _queue_unregisterProvidersForElement:elementCopy];
  section = [v5 section];
  v7 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:section];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__REElementRelevanceEngine_removeElement___block_invoke;
  v12[3] = &unk_2785FC840;
  v13 = v7;
  v14 = elementCopy;
  v15 = section;
  v16 = v5;
  selfCopy = self;
  v8 = v5;
  v9 = section;
  v10 = elementCopy;
  v11 = v7;
  [(REElementRelevanceEngine *)self _performUpdatesToDelegate:v12];
}

void __42__REElementRelevanceEngine_removeElement___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(a1 + 32) containsElementWithId:*(a1 + 40)])
  {
    [*(a1 + 32) removeElementWithId:*(a1 + 40)];
  }

  else
  {
    v3 = RELogForDomain(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __42__REElementRelevanceEngine_removeElement___block_invoke_cold_1(v2, a1, v3);
    }
  }

  v4 = ElementIdentifierByRemovingNamespacedIdentifier(*(a1 + 56));
  if (v4)
  {
    [*(*(a1 + 64) + 72) removeObjectForKey:v4];
  }

  [*(*(a1 + 64) + 56) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 64) + 64) removeObject:*(a1 + 40)];
  [*(*(a1 + 64) + 40) removeObject:*(a1 + 40)];
}

- (id)pathForElement:(id)element
{
  queue = self->_queue;
  elementCopy = element;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_predictedElements objectForKeyedSubscript:elementCopy];
  section = [v6 section];
  v8 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:section];
  v9 = [v8 indexOfElementWithId:elementCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [RESectionPath sectionPathWithSectionName:section element:v9];
  }

  return v10;
}

- (id)sectionForElement:(id)element
{
  queue = self->_queue;
  elementCopy = element;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_predictedElements objectForKeyedSubscript:elementCopy];

  section = [v6 section];

  return section;
}

- (void)_checkPreferences
{
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  effectivePreferences = [relevanceEngine effectivePreferences];

  -[RERelevanceProviderEnvironment setAllowsLocationUse:](self->_providerEnvironment, "setAllowsLocationUse:", [effectivePreferences mode] & 1);
}

- (void)_updateStateBasedOnPredictor
{
  v3 = RELogForDomain(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Update engine state based on scheduled predictor update.", buf, 2u);
  }

  [(REElementRelevanceEngine *)self modelManagerDidUpdateModel:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__REElementRelevanceEngine__updateStateBasedOnPredictor__block_invoke;
  v4[3] = &unk_2785F9AB8;
  v4[4] = self;
  [(REElementRelevanceEngine *)self _onqueue_async:v4];
}

void __56__REElementRelevanceEngine__updateStateBasedOnPredictor__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _queue_scheduleRelevanceUpdateForElement:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)predictor:(id)predictor didFinishActivity:(id)activity
{
  predictorCopy = predictor;
  activityCopy = activity;
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__REElementRelevanceEngine_predictor_didFinishActivity___block_invoke;
  block[3] = &unk_2785FB070;
  block[4] = self;
  v12 = activityCopy;
  v13 = predictorCopy;
  v9 = predictorCopy;
  v10 = activityCopy;
  dispatch_async(queue, block);
}

- (void)predictorDidUpdate:(id)update
{
  v9 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = RELogForDomain(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = updateCopy;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "Predictor did update: %@", &v7, 0xCu);
  }

  [(REUpNextScheduler *)self->_predictorUpdatedScheduler schedule];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEnvironment:(id)environment didUpdateRelevanceProvider:(id)provider
{
  queue = self->_queue;
  providerCopy = provider;
  dispatch_assert_queue_V2(queue);
  v8 = [(NSMapTable *)self->_relevanceProviderElementMap objectForKey:providerCopy];

  identifier = [v8 identifier];
  if (identifier && [(REElementRelevanceEngine *)self _elementIsFullyLoaded:v8])
  {
    [(REElementRelevanceEngine *)self _queue_scheduleRelevanceUpdateForElement:identifier];
  }
}

- (BOOL)_elementIsFullyLoaded:(id)loaded
{
  v17 = *MEMORY[0x277D85DE8];
  if (loaded)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    relevanceProviders = [loaded relevanceProviders];
    v5 = [relevanceProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(relevanceProviders);
          }

          if (![(RERelevanceProviderEnvironment *)self->_providerEnvironment isRelevanceProviderLoaded:*(*(&v12 + 1) + 8 * i)])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [relevanceProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_queue_scheduleRelevanceUpdateForElement:(id)element
{
  elementCopy = element;
  if (([(NSMutableSet *)self->_elementsNeedingRelevanceUpdate containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_elementsNeedingRelevanceUpdate addObject:elementCopy];
    [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
    [(REUpNextScheduler *)self->_scheduler schedule];
  }

  if (RETrainingSimulationIsCurrentlyActive())
  {
    [(REUpNextScheduler *)self->_scheduler performImmediately];
  }
}

- (void)_queue_updateElementRelevance
{
  v118 = *MEMORY[0x277D85DE8];
  v3 = RELogForDomain(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableSet *)self->_elementsNeedingRelevanceUpdate count];
    *buf = 134217984;
    v114 = v4;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Update element relevance for %lu elements.", buf, 0xCu);
  }

  v70 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = self->_elementsNeedingRelevanceUpdate;
  v73 = [(NSMutableSet *)obj countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (v73)
  {
    v72 = *v105;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v105 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v104 + 1) + 8 * i);
        v77 = [(NSMutableDictionary *)self->_predictedElements objectForKeyedSubscript:?];
        deviceIsLocked = self->_deviceIsLocked;
        privacyBehavior = [v77 privacyBehavior];
        privacyBehavior2 = [v77 privacyBehavior];
        v8 = [v77 privacyBehavior] != 0;
        v9 = privacyBehavior2 == 1;
        if (!deviceIsLocked)
        {
          v9 = privacyBehavior == 2;
        }

        v74 = v9;
        ignoreDeviceLockState = self->_ignoreDeviceLockState;
        v11 = [(NSMutableSet *)self->_reloadingElementIdentifiers containsObject:v76];
        v12 = v8 & ~ignoreDeviceLockState;
        if ([(REElementRelevanceEngine *)self _elementIsFullyLoaded:v77])
        {
          v71 = v12;
          if (v11)
          {
            [(NSMutableSet *)self->_reloadingElementIdentifiers removeObject:v76];
            v13 = RELogForDomain(3);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              relevanceProviders = [v77 relevanceProviders];
              *buf = 138543618;
              v114 = v76;
              v115 = 2114;
              v116 = relevanceProviders;
              _os_log_impl(&dword_22859F000, v13, OS_LOG_TYPE_DEFAULT, "updateElementRelevance: finished reloading %{public}@ %{public}@", buf, 0x16u);
            }
          }

          array = [MEMORY[0x277CBEB18] array];
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          relevanceProviders2 = [v77 relevanceProviders];
          v17 = [relevanceProviders2 countByEnumeratingWithState:&v100 objects:v112 count:16];
          if (v17)
          {
            v18 = *v101;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v101 != v18)
                {
                  objc_enumerationMutation(relevanceProviders2);
                }

                v20 = *(*(&v100 + 1) + 8 * j);
                if ([(RERelevanceProviderEnvironment *)self->_providerEnvironment isRelevanceProviderHistoric:v20])
                {
                  [array addObject:v20];
                }
              }

              v17 = [relevanceProviders2 countByEnumeratingWithState:&v100 objects:v112 count:16];
            }

            while (v17);
          }

          if ([array count])
          {
            v21 = [MEMORY[0x277CCA940] set];
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            relevanceProviders3 = [v77 relevanceProviders];
            v23 = [relevanceProviders3 countByEnumeratingWithState:&v96 objects:v111 count:16];
            if (v23)
            {
              v24 = *v97;
              do
              {
                for (k = 0; k != v23; ++k)
                {
                  if (*v97 != v24)
                  {
                    objc_enumerationMutation(relevanceProviders3);
                  }

                  v26 = *(*(&v96 + 1) + 8 * k);
                  [v21 addObject:objc_opt_class()];
                }

                v23 = [relevanceProviders3 countByEnumeratingWithState:&v96 objects:v111 count:16];
              }

              while (v23);
            }

            v27 = [MEMORY[0x277CCA940] set];
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v28 = array;
            v29 = [v28 countByEnumeratingWithState:&v92 objects:v110 count:16];
            if (v29)
            {
              v30 = *v93;
              do
              {
                for (m = 0; m != v29; ++m)
                {
                  if (*v93 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v32 = *(*(&v92 + 1) + 8 * m);
                  [v27 addObject:objc_opt_class()];
                }

                v29 = [v28 countByEnumeratingWithState:&v92 objects:v110 count:16];
              }

              while (v29);
            }

            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v33 = v27;
            v34 = 0;
            v35 = [v33 countByEnumeratingWithState:&v88 objects:v109 count:16];
            if (v35)
            {
              v36 = *v89;
              do
              {
                for (n = 0; n != v35; ++n)
                {
                  if (*v89 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v88 + 1) + 8 * n);
                  v39 = [v33 countForObject:v38];
                  v34 |= v39 == [v21 countForObject:v38];
                }

                v35 = [v33 countByEnumeratingWithState:&v88 objects:v109 count:16];
              }

              while (v35);
            }
          }

          else
          {
            v34 = 0;
          }

          section = [v77 section];
          v45 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:section];
          relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
          name = [v45 name];
          v48 = [relevanceEngine isSectionWithNameHistoric:name];

          if (v34 & 1 | ((v48 & 1) == 0))
          {
            if (!(v48 & 1 | ((v34 & 1) == 0)))
            {
              relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
              v50 = [relevanceEngine2 historicSectionForSection:section];
              goto LABEL_60;
            }

            goto LABEL_61;
          }

          relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
          v50 = [relevanceEngine2 sectionForHistoricSection:section];
LABEL_60:
          v51 = v50;

          if (!v51)
          {
LABEL_61:
            v51 = section;
          }

          v52 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:v51];
          v53 = v52 == 0;

          if (v53)
          {
            name2 = [v45 name];

            v51 = name2;
          }

          [v77 setSection:v51];
          v55 = ElementIdentifierByRemovingNamespacedIdentifier(v77);
          v56 = [(REElementRelevanceEngine *)self _queue_featureMapForElementWithId:v76 trainingContext:0];
          [(NSMutableDictionary *)self->_identifierToCachedFeatureMapMap setObject:v56 forKeyedSubscript:v55];
          [v70 addObject:v76];
          [dictionary setObject:v51 forKeyedSubscript:v76];
          v57 = [MEMORY[0x277CCABB0] numberWithBool:v71 & v74];
          [dictionary2 setObject:v57 forKeyedSubscript:v76];

          goto LABEL_65;
        }

        if (v11)
        {
          array = ElementIdentifierByRemovingNamespacedIdentifier(v77);
          v40 = [(NSMutableDictionary *)self->_identifierToCachedFeatureMapMap objectForKey:array];
          if (!v40)
          {
            v41 = RELogForDomain(3);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v114 = v76;
              _os_log_impl(&dword_22859F000, v41, OS_LOG_TYPE_DEFAULT, "updateElementRelevance: reloading without cached feature map for %{public}@", buf, 0xCu);
            }
          }

          [v70 addObject:v76];
          section2 = [v77 section];
          [dictionary setObject:section2 forKeyedSubscript:v76];

          v43 = [MEMORY[0x277CCABB0] numberWithBool:v12 & v74];
          [dictionary2 setObject:v43 forKeyedSubscript:v76];
        }

        else
        {
          array = RELogForDomain(3);
          if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v114 = v76;
            _os_log_impl(&dword_22859F000, array, OS_LOG_TYPE_DEFAULT, "updateElementRelevance: not loaded %{public}@", buf, 0xCu);
          }
        }

LABEL_65:
      }

      v73 = [(NSMutableSet *)obj countByEnumeratingWithState:&v104 objects:v117 count:16];
    }

    while (v73);
  }

  objc_initWeak(buf, self);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __57__REElementRelevanceEngine__queue_updateElementRelevance__block_invoke;
  v83[3] = &unk_2785FC890;
  v83[4] = self;
  objc_copyWeak(&v87, buf);
  v78 = dictionary;
  v84 = v78;
  v58 = dictionary2;
  v85 = v58;
  v59 = v70;
  v86 = v59;
  [(REElementRelevanceEngine *)self _performUpdatesToDelegate:v83];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v60 = self->_elementsNeedingRelevanceUpdate;
  v61 = [(NSMutableSet *)v60 countByEnumeratingWithState:&v79 objects:v108 count:16];
  if (v61)
  {
    v62 = *v80;
    do
    {
      for (ii = 0; ii != v61; ++ii)
      {
        if (*v80 != v62)
        {
          objc_enumerationMutation(v60);
        }

        v64 = *(*(&v79 + 1) + 8 * ii);
        delegate = [(REElementRelevanceEngine *)self delegate];
        [delegate relevanceEngine:self didUpdateRelevanceOfElement:v64];

        [(RERelevanceEngineSubsystem *)self endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
      }

      v61 = [(NSMutableSet *)v60 countByEnumeratingWithState:&v79 objects:v108 count:16];
    }

    while (v61);
  }

  [(NSMutableSet *)self->_elementsNeedingRelevanceUpdate removeAllObjects];
  objc_destroyWeak(&v87);
  objc_destroyWeak(buf);

  v66 = *MEMORY[0x277D85DE8];
}

void __57__REElementRelevanceEngine__queue_updateElementRelevance__block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [*(a1[4] + 6) allValues];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = *v25;
    do
    {
      v5 = 0;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v24 + 1) + 8 * v5);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __57__REElementRelevanceEngine__queue_updateElementRelevance__block_invoke_2;
        v18[3] = &unk_2785FC868;
        objc_copyWeak(&v23, a1 + 8);
        v19 = a1[5];
        v20 = a1[6];
        v21 = v6;
        v22 = a1[7];
        [v6 performBatchUpdates:v18];

        objc_destroyWeak(&v23);
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = a1[7];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [a1[4] delegate];
        [v12 relevanceEngine:a1[4] elementWasAdded:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__REElementRelevanceEngine__queue_updateElementRelevance__block_invoke_2(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [a1[4] allKeys];
  v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v19)
  {
    v18 = *v21;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * i);
        v5 = [WeakRetained[7] objectForKeyedSubscript:v4];
        v6 = ElementIdentifierByRemovingNamespacedIdentifier(v5);
        v7 = [WeakRetained[9] objectForKeyedSubscript:v6];
        v8 = [a1[5] objectForKeyedSubscript:v4];
        v9 = [v8 BOOLValue];

        v10 = WeakRetained[6];
        v11 = [a1[4] objectForKeyedSubscript:v4];
        v12 = [v10 objectForKeyedSubscript:v11];

        v13 = [a1[6] containsElementWithId:v4];
        v14 = a1[6];
        if (v13)
        {
          if (v12 == v14)
          {
            [v14 updateElementWithId:v4 withNewFeatureSet:v7 forceHidden:v9];
          }

          else
          {
            [v14 removeElementWithId:v4];
          }

          [a1[7] removeObject:v4];
        }

        else if (v12 == v14)
        {
          v15 = [[REMLElement alloc] initWithIdentifier:v4 featureMap:v7];
          [a1[6] addElement:v15 forceHidden:v9];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performUpdatesToDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    _allCurrentElements = [(REElementRelevanceEngine *)self _allCurrentElements];
    delegateCopy[2](delegateCopy);

    _allCurrentElements2 = [(REElementRelevanceEngine *)self _allCurrentElements];
    delegate = [(REElementRelevanceEngine *)self delegate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__REElementRelevanceEngine__performUpdatesToDelegate___block_invoke;
    v10[3] = &unk_2785FB070;
    v10[4] = self;
    v11 = _allCurrentElements;
    v12 = _allCurrentElements2;
    v8 = _allCurrentElements2;
    v9 = _allCurrentElements;
    [delegate relevanceEngine:self performedBatchUpdates:v10];
  }
}

void __54__REElementRelevanceEngine__performUpdatesToDelegate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(*(a1 + 32) + 48) allKeys];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v8 = [*(a1 + 48) objectForKeyedSubscript:v6];
        v9 = [REArrayDiff diffFromElements:v7 toElements:v8 equalComparator:&__block_literal_global_46 hashGenerator:&__block_literal_global_45_1 changeComparator:&__block_literal_global_47];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__REElementRelevanceEngine__performUpdatesToDelegate___block_invoke_5;
        v13[3] = &unk_2785FC8F8;
        v10 = *(a1 + 32);
        v13[4] = v6;
        v13[5] = v10;
        [v9 enumerateOperationsUsingBlock:v13];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__REElementRelevanceEngine__performUpdatesToDelegate___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a3;
  v9 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a4];
  v10 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a5];
  switch(a2)
  {
    case 3:
      v11 = [*(a1 + 40) delegate];
      [v11 relevanceEngine:*(a1 + 40) didMoveElement:v12 fromPath:v10 toPath:v9];
      break;
    case 2:
      v11 = [*(a1 + 40) delegate];
      [v11 relevanceEngine:*(a1 + 40) didRemoveElement:v12 atPath:v10];
      break;
    case 1:
      v11 = [*(a1 + 40) delegate];
      [v11 relevanceEngine:*(a1 + 40) didInsertElement:v12 atPath:v9];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (id)_allCurrentElements
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_sections, "count")}];
  sections = self->_sections;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__REElementRelevanceEngine__allCurrentElements__block_invoke;
  v8[3] = &unk_2785FC920;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)sections enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __47__REElementRelevanceEngine__allCurrentElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "visibleCount")}];
  if ([v5 visibleCount] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [v5 elementIdAtIndex:v7];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [v5 visibleCount]);
  }

  v9 = [v6 copy];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (void)sectionDidUpdateContentOrder:(id)order
{
  orderCopy = order;
  v4 = RELogForDomain(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [REElementRelevanceEngine sectionDidUpdateContentOrder:orderCopy];
  }
}

- (id)section:(id)section groupForIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  identifierCopy = identifier;
  if (_fetchedInternalBuildOnceToken_3 != -1)
  {
    [REElementRelevanceEngine section:groupForIdentifier:];
  }

  if (_isInternalDevice_3 != 1)
  {
    goto LABEL_15;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____RE_Cached_Get__ShowAllElements_block_invoke;
  block[3] = &unk_2785F9AB8;
  v23 = 0;
  if (__RE_Cached_Get__ShowAllElements_onceToken != -1)
  {
    dispatch_once(&__RE_Cached_Get__ShowAllElements_onceToken, block);
  }

  os_unfair_lock_lock(&__RE_Cached_lock__ShowAllElements);
  if ((__RE_Cached_hasValue__ShowAllElements & 1) == 0)
  {
    v21 = 0;
    if (RelevanceEngineLibraryCore_0())
    {
      globalDefaults = [soft__REEngineDefaults() globalDefaults];
    }

    else
    {
      globalDefaults = 0;
    }

    v9 = [globalDefaults _BOOLValueForKey:@"ShowAllElements" set:&v21];
    v10 = v21 & v9;
    v11 = RELogForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 & 1];
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key ShowAllElements: %@", buf, 0xCu);
    }

    __RE_Cached__ShowAllElements = v21 & v10 & 1;
    __RE_Cached_hasValue__ShowAllElements = 1;
  }

  os_unfair_lock_unlock(&__RE_Cached_lock__ShowAllElements);
  v13 = __RE_Cached__ShowAllElements;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
LABEL_15:
    dataSourceManager = self->_dataSourceManager;
    if (!dataSourceManager)
    {
      relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
      dataSourceManager = [relevanceEngine dataSourceManager];
      v18 = self->_dataSourceManager;
      self->_dataSourceManager = dataSourceManager;

      dataSourceManager = self->_dataSourceManager;
    }

    v14 = [(REDataSourceManager *)dataSourceManager elementGroupForIdentifier:identifierCopy];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_queue_featureMapForElementWithId:(id)id trainingContext:(id)context
{
  predictedElements = self->_predictedElements;
  contextCopy = context;
  v8 = [(NSMutableDictionary *)predictedElements objectForKeyedSubscript:id];
  v9 = [(REElementRelevanceEngine *)self _queue_featureMapForElement:v8 trainingContext:contextCopy];

  return v9;
}

- (id)_queue_featureMapForElement:(id)element trainingContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v8 = RELogForDomain(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [REElementRelevanceEngine _queue_featureMapForElement:elementCopy trainingContext:?];
  }

  context = objc_autoreleasePoolPush();
  v30 = elementCopy;
  relevanceProviders = [elementCopy relevanceProviders];
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  newInputFeatureMap = [relevanceEngine newInputFeatureMap];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = relevanceProviders;
  v34 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v34)
  {
    v32 = *v38;
    v33 = contextCopy;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [(RERelevanceProviderEnvironment *)self->_providerEnvironment featuresForRelevanceProvider:v13];
        providerEnvironment = self->_providerEnvironment;
        if (contextCopy)
        {
          [(RERelevanceProviderEnvironment *)providerEnvironment relevancesForRelevanceProvider:v13 usingContext:contextCopy];
        }

        else
        {
          [(RERelevanceProviderEnvironment *)providerEnvironment relevancesForRelevanceProvider:v13];
        }
        v16 = ;
        v17 = [v14 count];
        v18 = [v16 count];
        if (v17 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          for (j = 0; j != v19; ++j)
          {
            v21 = [v14 objectAtIndexedSubscript:j];
            v22 = [v16 featureValueAtIndex:j];
            if ([newInputFeatureMap hasValueForFeature:v21])
            {
              v23 = [newInputFeatureMap valueForFeature:v21];
              if (RECompareFeatureValues(v22, v23) != 1)
              {
                v22 = v23;
              }
            }

            [newInputFeatureMap setValue:v22 forFeature:v21];
          }
        }

        contextCopy = v33;
      }

      v34 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v34);
  }

  predictorManager = self->_predictorManager;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __72__REElementRelevanceEngine__queue_featureMapForElement_trainingContext___block_invoke;
  v35[3] = &unk_2785F9CF8;
  v36 = newInputFeatureMap;
  v25 = newInputFeatureMap;
  [(REPredictorManager *)predictorManager enumerateValuesForElement:v30 trainingContext:contextCopy usingBlock:v35];
  v26 = [(REFeatureTransmuter *)self->_featureTransmuter transformFeatureMaps:v25];

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __72__REElementRelevanceEngine__queue_featureMapForElement_trainingContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = RECreateFeatureValueTaggedPointer(a3);
  [*(a1 + 32) setValue:v6 forFeature:v5];

  REReleaseFeatureValueTaggedPointer(v6);
}

- (id)featureMapForElement:(id)element trainingContext:(id)context
{
  queue = self->_queue;
  contextCopy = context;
  elementCopy = element;
  dispatch_assert_queue_V2(queue);
  v9 = [(REElementRelevanceEngine *)self _queue_featureMapForElementWithId:elementCopy trainingContext:contextCopy];

  return v9;
}

- (id)_generateFeatureMapForElement:(id)element
{
  elementCopy = element;
  dispatch_assert_queue_V2(self->_queue);
  predictedElements = self->_predictedElements;
  identifier = [elementCopy identifier];
  v7 = [(NSMutableDictionary *)predictedElements objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v7 = [REPredictionElement predictionElementFromElement:elementCopy];
    [v7 setSection:@"defaultSectionIdentifier"];
  }

  v8 = [(REElementRelevanceEngine *)self _queue_featureMapForElement:v7 trainingContext:0];

  return v8;
}

- (id)featureProviderForElement:(id)element
{
  v3 = [(REElementRelevanceEngine *)self _generateFeatureMapForElement:element];
  v4 = [[_REFeatureMapWrapper alloc] initWithFeatureMap:v3];

  return v4;
}

- (id)predictionForElement:(id)element
{
  elementCopy = element;
  v5 = [(REElementRelevanceEngine *)self _generateFeatureMapForElement:elementCopy];
  v6 = [REMLElement alloc];
  identifier = [elementCopy identifier];

  v8 = [(REMLElement *)v6 initWithIdentifier:identifier featureMap:v5];
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  modelManager = [relevanceEngine modelManager];
  v11 = [modelManager predictionForLogicalElement:v8];

  return v11;
}

- (id)rankingStartDateForElement:(id)element
{
  elementCopy = element;
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  rankingManager = [relevanceEngine rankingManager];
  v7 = [rankingManager rankingStartDateForElement:elementCopy];

  return v7;
}

- (id)updatedRankingDateForElement:(id)element
{
  elementCopy = element;
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  rankingManager = [relevanceEngine rankingManager];
  v7 = [rankingManager updatedRankingDateForElement:elementCopy];

  return v7;
}

- (float)rankingScoreForElement:(id)element createdAt:(id)at
{
  atCopy = at;
  elementCopy = element;
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  rankingManager = [relevanceEngine rankingManager];
  [rankingManager rankingScoreForElement:elementCopy createdAt:atCopy];
  v11 = v10;

  return v11;
}

- (id)rankingTierForElement:(id)element
{
  elementCopy = element;
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  rankingManager = [relevanceEngine rankingManager];
  v7 = [rankingManager rankingTierForElement:elementCopy];

  return v7;
}

- (id)elementRankerForSection:(id)section
{
  sectionCopy = section;
  v5 = objc_alloc_init(_REElementRankerWrapper);
  v6 = [(NSMutableDictionary *)self->_sections objectForKeyedSubscript:sectionCopy];
  comparator = [v6 comparator];
  [(_REElementRankerWrapper *)v5 setComparator:comparator];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__REElementRelevanceEngine_elementRankerForSection___block_invoke;
  v9[3] = &unk_2785FC948;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(_REElementRankerWrapper *)v5 setFeatureMapGenerator:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

id __52__REElementRelevanceEngine_elementRankerForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 9);
    v7 = [v3 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = RELogForDomain(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __52__REElementRelevanceEngine_elementRankerForSection___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v8 = [*(a1 + 32) _generateFeatureMapForElement:v3];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)elementRankerForComparator:(id)comparator
{
  comparatorCopy = comparator;
  v5 = objc_alloc_init(_REElementRankerWrapper);
  [(_REElementRankerWrapper *)v5 setComparator:comparatorCopy];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__REElementRelevanceEngine_elementRankerForComparator___block_invoke;
  v7[3] = &unk_2785FC948;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [(_REElementRankerWrapper *)v5 setFeatureMapGenerator:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __55__REElementRelevanceEngine_elementRankerForComparator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 9);
    v7 = [v3 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = RELogForDomain(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __55__REElementRelevanceEngine_elementRankerForComparator___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v8 = [*(a1 + 32) _generateFeatureMapForElement:v3];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)elementEvaluatorForConditionEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = objc_alloc_init(_REConditionEvaluatorWrapper);
  [(_REConditionEvaluatorWrapper *)v5 setEvaluator:evaluatorCopy];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__REElementRelevanceEngine_elementEvaluatorForConditionEvaluator___block_invoke;
  v7[3] = &unk_2785FC948;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [(_REConditionEvaluatorWrapper *)v5 setFeatureMapGenerator:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __66__REElementRelevanceEngine_elementEvaluatorForConditionEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 9);
    v7 = [v3 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = RELogForDomain(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __66__REElementRelevanceEngine_elementEvaluatorForConditionEvaluator___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v8 = [*(a1 + 32) _generateFeatureMapForElement:v3];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (REElementRelevanceEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)featureMapForPredictedElement:(id)element trainingContext:(id)context
{
  queue = self->_queue;
  contextCopy = context;
  elementCopy = element;
  dispatch_assert_queue_V2(queue);
  v9 = [(REElementRelevanceEngine *)self _queue_featureMapForElement:elementCopy trainingContext:contextCopy];

  return v9;
}

- (void)addElement:(void *)a3 section:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Attempted to add provider %@", buf, 0xCu);
}

void __42__REElementRelevanceEngine_removeElement___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 48);
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_22859F000, log, OS_LOG_TYPE_DEBUG, "No element %@ with found in section %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sectionDidUpdateContentOrder:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_featureMapForElement:(void *)a1 trainingContext:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 identifier];
  v9 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__REElementRelevanceEngine_elementRankerForSection___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__REElementRelevanceEngine_elementRankerForComparator___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__REElementRelevanceEngine_elementEvaluatorForConditionEvaluator___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end