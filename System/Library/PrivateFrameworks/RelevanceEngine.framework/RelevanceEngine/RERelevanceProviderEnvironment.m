@interface RERelevanceProviderEnvironment
- (BOOL)addRelevanceProviderDidTriggerException:(id)a3 completion:(id)a4;
- (BOOL)containsRelevanceProvider:(id)a3;
- (BOOL)isRelevanceProviderHistoric:(id)a3;
- (BOOL)isRelevanceProviderLoaded:(id)a3;
- (BOOL)isSupportedRelevanceProvider:(id)a3;
- (NSDictionary)allProviderValues;
- (RERelevanceProviderEnvironment)initWithRelevanceEngine:(id)a3;
- (RERelevanceProviderEnvironmentDelegate)delegate;
- (id)_histogramForFeature:(id)a3;
- (id)_histogramForProvider:(id)a3;
- (id)_providerManagerForProvider:(id)a3;
- (id)_relevaneProviderWithType:(id)a3 withOptions:(id)a4;
- (id)createRelevaneProviderWithType:(id)a3 withOptions:(id)a4;
- (id)encodeRelevaneProvider:(id)a3;
- (id)featuresForRelevanceProvider:(id)a3;
- (id)relevancesForRelevanceProvider:(id)a3;
- (id)relevancesForRelevanceProvider:(id)a3 usingContext:(id)a4;
- (void)_addRelevanceValue:(id)a3 forProvider:(id)a4;
- (void)_queue_performUpdate:(id)a3;
- (void)_removeRelevanceValueForProvider:(id)a3;
- (void)_scaleRelevanceProviderValues:(id)a3 values:(id)a4;
- (void)_setupRelevanceProviderManagers;
- (void)accessHistogramForFeature:(id)a3 usingBlock:(id)a4;
- (void)addRelevanceProvider:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)immediateUpdateForRelevanceProviderManager:(id)a3 completion:(id)a4;
- (void)pause;
- (void)relateRelevanceProvider:(id)a3 toRelevanceProvider:(id)a4;
- (void)removeRelevanceProvider:(id)a3 completion:(id)a4;
- (void)resume;
- (void)scheduleUpdateForRelevanceProvider:(id)a3 completion:(id)a4;
- (void)scheduleUpdateForRelevanceProviderManager:(id)a3 completion:(id)a4;
- (void)setAllowsLocationUse:(BOOL)a3;
@end

@implementation RERelevanceProviderEnvironment

- (RERelevanceProviderEnvironment)initWithRelevanceEngine:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = RERelevanceProviderEnvironment;
  v5 = [(RERelevanceEngineSubsystem *)&v41 initWithRelevanceEngine:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    relevanceManagers = v5->_relevanceManagers;
    v5->_relevanceManagers = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    relevanceClassManagerMap = v5->_relevanceClassManagerMap;
    v5->_relevanceClassManagerMap = v8;

    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    relevanceHistogramMap = v5->_relevanceHistogramMap;
    v5->_relevanceHistogramMap = v10;

    v12 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    relevanceValues = v5->_relevanceValues;
    v5->_relevanceValues = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    customProviders = v5->_customProviders;
    v5->_customProviders = v14;

    v16 = objc_opt_new();
    relevanceValuesLock = v5->_relevanceValuesLock;
    v5->_relevanceValuesLock = v16;

    v18 = [v4 rootFeatures];
    v19 = [v18 copy];
    supportedFeatures = v5->_supportedFeatures;
    v5->_supportedFeatures = v19;

    v21 = objc_alloc_init(REUpNextDisjointSet);
    relevanceProviderSet = v5->_relevanceProviderSet;
    v5->_relevanceProviderSet = v21;

    v23 = objc_alloc_init(REDependencyGraph);
    dependencyGraph = v5->_dependencyGraph;
    v5->_dependencyGraph = v23;

    v25 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    providersToUpdate = v5->_providersToUpdate;
    v5->_providersToUpdate = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    providerManagersToUpdate = v5->_providerManagersToUpdate;
    v5->_providerManagersToUpdate = v27;

    v29 = [MEMORY[0x277CBEB18] array];
    updateCompletionBlocks = v5->_updateCompletionBlocks;
    v5->_updateCompletionBlocks = v29;

    v31 = [v4 configuration];
    v5->_createDefaultRelevanceProviders = [v31 createDefaultRelevanceProviders];

    v32 = [v4 logger];
    [v32 addLoggable:v5];

    v33 = [v4 configuration];
    LOBYTE(v32) = [v33 wantsImmutableContent];

    objc_initWeak(&location, v5);
    v34 = [(RERelevanceEngineSubsystem *)v5 queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke;
    v36[3] = &unk_2785FC5F8;
    v37 = v5;
    v39 = v32;
    objc_copyWeak(&v38, &location);
    dispatch_sync(v34, v36);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupRelevanceProviderManagers];
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 0.05;
  }

  v3 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke_2;
  v7[3] = &unk_2785F9A90;
  objc_copyWeak(&v8, (a1 + 40));
  v4 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.relevanceprovidermanager-update" queue:v3 delay:v7 updateBlock:v2];
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = v4;

  objc_destroyWeak(&v8);
}

void __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performUpdate:0];
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_relevanceManagers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
        v10 = [v9 logger];
        [v10 removeLoggable:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v12 = [v11 logger];
  [v12 removeLoggable:self];

  v14.receiver = self;
  v14.super_class = RERelevanceProviderEnvironment;
  [(RERelevanceEngineSubsystem *)&v14 dealloc];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_relevanceManagers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v6++) pauseWithCompletion:{&__block_literal_global_43, v8}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_relevanceManagers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (![objc_opt_class() _requiresLocationServices] || self->_allowsLocationUse)
        {
          [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v8];
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __40__RERelevanceProviderEnvironment_resume__block_invoke;
          v10[3] = &unk_2785F9AE0;
          v10[4] = self;
          v10[5] = v8;
          [v8 resumeWithCompletion:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setAllowsLocationUse:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_allowsLocationUse != a3)
  {
    v3 = a3;
    self->_allowsLocationUse = a3;
    if ([(RERelevanceEngineSubsystem *)self isRunning])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = self->_relevanceManagers;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            if ([objc_opt_class() _requiresLocationServices])
            {
              if (v3)
              {
                [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v10];
                v12[0] = MEMORY[0x277D85DD0];
                v12[1] = 3221225472;
                v12[2] = __55__RERelevanceProviderEnvironment_setAllowsLocationUse___block_invoke;
                v12[3] = &unk_2785F9AE0;
                v12[4] = self;
                v12[5] = v10;
                [v10 resumeWithCompletion:v12];
              }

              else
              {
                [v10 pauseWithCompletion:&__block_literal_global_46_0];
              }
            }
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupRelevanceProviderManagers
{
  v55 = *MEMORY[0x277D85DE8];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __65__RERelevanceProviderEnvironment__setupRelevanceProviderManagers__block_invoke;
  v50[3] = &unk_2785FC620;
  v50[4] = self;
  v3 = MEMORY[0x22AABC5E0](v50, a2);
  if (self->_createDefaultRelevanceProviders)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = +[RERelevanceProviderManager providerManagerClasses];
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v47;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(v3 + 16))(v3, *(*(&v46 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v6);
    }
  }

  v9 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v10 = [v9 configuration];
  v11 = [v10 relevanceProviderManagerLoader];

  v29 = v11;
  v30 = v3;
  [v11 enumerationDataSourceClassesWithBlock:v3];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = 40;
  obj = self->_relevanceManagers;
  v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v33)
  {
    v32 = *v43;
    do
    {
      v12 = 0;
      do
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v14 = [objc_opt_class() _dependencyClasses];
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v39;
          do
          {
            v18 = 0;
            do
            {
              if (*v39 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = -[NSMapTable objectForKey:](self->_relevanceClassManagerMap, "objectForKey:", [*(*(&v38 + 1) + 8 * v18) _relevanceProviderClass]);
              if (v19)
              {
                [(REDependencyGraph *)self->_dependencyGraph markItem:v13 dependentOnItem:v19];
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v38 objects:v52 count:16];
          }

          while (v16);
        }

        ++v12;
      }

      while (v12 != v33);
      v33 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v33);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = *(&self->super.super.isa + v28);
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        v26 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
        [v25 _scheduleUpdate:v26];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __65__RERelevanceProviderEnvironment__setupRelevanceProviderManagers__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _features];
  v14 = [(REFeatureSet *)REMutableFeatureSet featureSetWithFeatures:v4];

  if ([*(*(a1 + 32) + 104) intersectsFeatureSet:v14])
  {
    v5 = [a2 alloc];
    v6 = [*(a1 + 32) queue];
    v7 = [v5 initWithQueue:v6];

    [v7 setEnvironment:*(a1 + 32)];
    [v14 intersetFeatureSet:*(*(a1 + 32) + 104)];
    [v7 setSupportedFeatures:v14];
    [*(*(a1 + 32) + 40) addObject:v7];
    [*(*(a1 + 32) + 48) setObject:v7 forKey:{objc_msgSend(objc_opt_class(), "_relevanceProviderClass")}];
    [*(*(a1 + 32) + 72) addItem:v7];
    v8 = [*(a1 + 32) relevanceEngine];
    v9 = [v8 logger];
    [v9 addLoggable:v7];

    v10 = *(a1 + 32);
    v11 = [a2 _features];
    v12 = [v11 firstObject];
    v13 = [v10 _histogramForFeature:v12];
  }
}

- (void)_queue_performUpdate:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke;
  v42[3] = &unk_2785F9AB8;
  v42[4] = self;
  v5 = MEMORY[0x22AABC5E0](v42);
  if ([(NSHashTable *)self->_providersToUpdate count]|| [(NSMutableSet *)self->_providerManagersToUpdate count])
  {
    v24 = v5;
    v25 = v4;
    v6 = [(NSMutableSet *)self->_providerManagersToUpdate mutableCopy];
    [(NSMutableSet *)self->_providerManagersToUpdate removeAllObjects];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = [v6 copy];
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          if ([(REDependencyGraph *)self->_dependencyGraph containsItem:v12])
          {
            dependencyGraph = self->_dependencyGraph;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2;
            v36[3] = &unk_2785FC648;
            v37 = v6;
            [(REDependencyGraph *)dependencyGraph enumerateDependenciesOfItem:v12 usingBlock:v36];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    v14 = objc_alloc_init(REExpectation);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * j);
          [(REExpectation *)v14 beginOperation];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3;
          v30[3] = &unk_2785F9AB8;
          v31 = v14;
          [v20 _prepareForUpdateWithCompletion:v30];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v17);
    }

    v21 = [(RERelevanceEngineSubsystem *)self queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4;
    v26[3] = &unk_2785FC710;
    v26[4] = self;
    v27 = v15;
    v5 = v24;
    v28 = v24;
    v4 = v25;
    v29 = v25;
    v22 = v15;
    [(REExpectation *)v14 notifyOperationsCompleteOrPerformUsingQueue:v21 block:v26];
  }

  else
  {
    v5[2](v5);
    if (v4)
    {
      v4[2](v4);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
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

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 144) removeAllObjects];
  result = [*(a1 + 32) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:*(a1 + 32)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) copy];
  [*(*(a1 + 32) + 128) removeAllObjects];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v4)
  {
    v5 = *v65;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v65 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v64 + 1) + 8 * i);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v8 = [v7 allProviders];
        v9 = [v8 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v9)
        {
          v10 = *v61;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [v2 addObject:*(*(&v60 + 1) + 8 * j)];
            }

            v9 = [v8 countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v9);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v4);
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2810000000;
  v58 = &unk_2286CA6BA;
  v59 = 0;
  v30 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
  v12 = objc_alloc_init(REExpectation);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v14)
  {
    v15 = *v52;
    v28 = v45;
    v29 = v39;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v51 + 1) + 8 * k);
        v18 = [v31[4] _providerManagerForProvider:{v17, v28, v29}];
        v19 = v18;
        if (v18)
        {
          if ([v18 containsProvider:v17])
          {
            [(REExpectation *)v12 beginOperation];
            if ([objc_opt_class() supportsHistoricProviders])
            {
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v45[0] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_54;
              v45[1] = &unk_2785FC698;
              v20 = v19;
              v46 = v20;
              v47 = v17;
              v50 = &v55;
              v48 = v30;
              v49 = v12;
              [v20 isProviderHistoric:v17 completion:v44];

              v21 = v46;
            }

            else
            {
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v39[0] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4_61;
              v39[1] = &unk_2785FC6C0;
              v43 = &v55;
              v40 = v30;
              v41 = v17;
              v42 = v12;
              [v19 relevanceForProvider:v17 completion:v38];

              v21 = v40;
            }
          }

          else
          {
            v21 = RELogForDomain(3);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = v17;
              v69 = 2112;
              v70 = v19;
              _os_log_impl(&dword_22859F000, v21, OS_LOG_TYPE_INFO, "Can't find provider %@ in manager %@", buf, 0x16u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_30;
          }

          v21 = v17;
          *buf = [v21 value];
          os_unfair_lock_lock(v56 + 8);
          v22 = [RERelevanceValue alloc];
          v23 = [[RETaggedFeatureValueArray alloc] initWithValues:buf count:1];
          v24 = [(RERelevanceValue *)v22 initWithValues:v23 isHistoric:0];
          [v30 setObject:v24 forKey:v21];

          os_unfair_lock_unlock(v56 + 8);
        }

LABEL_30:
      }

      v14 = [v13 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v14);
  }

  v25 = [v31[4] queue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_5;
  v32[3] = &unk_2785FC6E8;
  v32[4] = v31[4];
  v37 = &v55;
  v26 = v30;
  v33 = v26;
  v34 = v31[5];
  v35 = v31[6];
  v36 = v31[7];
  [(REExpectation *)v12 notifyOperationsCompleteOrPerformUsingQueue:v25 block:v32];

  _Block_object_dispose(&v55, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_54(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2_55;
    v22[3] = &unk_2785FC670;
    v6 = &v23;
    v7 = &v24;
    v8 = *(a1 + 64);
    v9 = *(a1 + 48);
    v25 = v2;
    *&v10 = v9;
    *(&v10 + 1) = *(a1 + 40);
    v16 = v10;
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = v8;
    v23 = v16;
    v24 = v11;
    [v4 relevanceForHistoricProvider:v5 completion:v22];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3_59;
    v18[3] = &unk_2785FC670;
    v6 = &v19;
    v7 = &v20;
    v12 = *(a1 + 64);
    v13 = *(a1 + 48);
    v21 = v2;
    *&v14 = v13;
    *(&v14 + 1) = *(a1 + 40);
    v17 = v14;
    *&v15 = *(a1 + 56);
    *(&v15 + 1) = v12;
    v19 = v17;
    v20 = v15;
    [v4 relevanceForProvider:v5 completion:v18];
  }
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2_55(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = *(a1 + 32);
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:*(a1 + 64)];
  [v5 setObject:v8 forKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v9 = *(a1 + 48);

  return [v9 endOperation];
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3_59(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = *(a1 + 32);
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:*(a1 + 64)];
  [v5 setObject:v8 forKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v9 = *(a1 + 48);

  return [v9 endOperation];
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4_61(void *a1, void *a2)
{
  v3 = *(a1[7] + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = a1[4];
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:0];
  [v5 setObject:v8 forKey:a1[5]];

  os_unfair_lock_unlock((*(a1[7] + 8) + 32));
  v9 = a1[6];

  return [v9 endOperation];
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_5(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 96) lock];
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  v2 = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 80) objectForKey:v8];
        [*(a1 + 32) _removeRelevanceValueForProvider:v8];
        v10 = [*(a1 + 40) objectForKey:v8];
        [*(a1 + 32) _addRelevanceValue:v10 forProvider:v8];
        if (v9 != v10 && ([v9 isEqual:v10] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
  [*(*(a1 + 32) + 96) unlock];
  v11 = RELogForDomain(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) count];
    v13 = [v2 count];
    v14 = [*(a1 + 48) count];
    *buf = 134218496;
    v46 = v12;
    v47 = 2048;
    v48 = v13;
    v49 = 2048;
    v50 = v14;
    _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_DEFAULT, "Performing update. %lu computed relevances. %lu changed providers. %lu managers to update.", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        v21 = [*(a1 + 32) delegate];
        [v21 relevanceEnvironment:*(a1 + 32) didUpdateRelevanceProvider:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = *(a1 + 48);
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * k);
        if ([objc_opt_class() _wantsDelayedUpdate] && objc_msgSend(*(a1 + 48), "count") >= 2)
        {
          v28 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
          [v27 _scheduleUpdate:v28];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v24);
  }

  (*(*(a1 + 56) + 16))();
  v29 = *(a1 + 64);
  if (v29)
  {
    (*(v29 + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_removeRelevanceValueForProvider:(id)a3
{
  v9 = a3;
  v4 = [(NSMapTable *)self->_relevanceValues objectForKey:?];
  v5 = v4;
  if (v4 && ([v4 isHistoric] & 1) == 0)
  {
    v6 = [v5 values];
    v7 = [v6 firstFeatureValue];
    v8 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:v9];
    [v8 removeValue:v7];
  }

  [(NSMapTable *)self->_relevanceValues removeObjectForKey:v9];
}

- (void)_addRelevanceValue:(id)a3 forProvider:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (([v10 isHistoric] & 1) == 0)
  {
    v7 = [v10 values];
    v8 = [v7 firstFeatureValue];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:v6];
    [v9 addValue:v8];
  }

  [(NSMapTable *)self->_relevanceValues setObject:v10 forKey:v6];
}

- (id)_providerManagerForProvider:(id)a3
{
  relevanceClassManagerMap = self->_relevanceClassManagerMap;
  v4 = objc_opt_class();

  return [(NSMapTable *)relevanceClassManagerMap objectForKey:v4];
}

- (id)_histogramForProvider:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 effectiveFeatures];
    v8 = [v7 firstObject];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:v8];

LABEL_5:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 feature];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)_histogramForFeature:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_relevanceHistogramMap objectForKey:v4];
  if (!v5)
  {
    v5 = [[REHistogram alloc] initWithFeature:v4];
    [(NSMapTable *)self->_relevanceHistogramMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (BOOL)addRelevanceProviderDidTriggerException:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [v6 setEnvironment:self];
    v8 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v6];
    v9 = v8;
    if (v8)
    {
      [v8 addProvider:v6 completion:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders addObject:v6];
        v17 = [(RERelevanceProviderEnvironment *)self delegate];
        [v17 relevanceEnvironment:self didUpdateRelevanceProvider:v6];

        if (v7)
        {
          v7[2](v7);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v11, v12, v13, v14, v15, v16, v6);
      }
    }

    v10 = [(REUpNextDisjointSet *)self->_relevanceProviderSet addItemDidTriggerException:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addRelevanceProvider:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v16)
  {
    [v16 setEnvironment:self];
    v7 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v16];
    v8 = v7;
    if (v7)
    {
      [v7 addProvider:v16 completion:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders addObject:v16];
        v15 = [(RERelevanceProviderEnvironment *)self delegate];
        [v15 relevanceEnvironment:self didUpdateRelevanceProvider:v16];

        if (v6)
        {
          v6[2](v6);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v9, v10, v11, v12, v13, v14, v16);
      }
    }

    [(REUpNextDisjointSet *)self->_relevanceProviderSet addItem:v16];
  }
}

- (void)removeRelevanceProvider:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v15)
  {
    [v15 setEnvironment:0];
    v7 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v15];
    v8 = v7;
    if (v7)
    {
      [v7 removeProvider:v15 completion:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders removeObject:v15];
        if (v6)
        {
          v6[2](v6);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v9, v10, v11, v12, v13, v14, v15);
      }
    }

    [(REUpNextDisjointSet *)self->_relevanceProviderSet removeItem:v15];
    [(NSLock *)self->_relevanceValuesLock lock];
    [(RERelevanceProviderEnvironment *)self _removeRelevanceValueForProvider:v15];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }
}

- (BOOL)containsRelevanceProvider:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 environment];
  v5 = v4 == self;

  return v5;
}

- (BOOL)isRelevanceProviderLoaded:(id)a3
{
  v4 = a3;
  if ([(RERelevanceProviderEnvironment *)self containsRelevanceProvider:v4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      [(NSLock *)self->_relevanceValuesLock lock];
      v6 = [(NSMapTable *)self->_relevanceValues objectForKey:v4];
      v5 = v6 != 0;

      [(NSLock *)self->_relevanceValuesLock unlock];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)relateRelevanceProvider:(id)a3 toRelevanceProvider:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [REUpNextDisjointSet connectItem:"connectItem:withItem:" withItem:?];
    }
  }
}

- (BOOL)isRelevanceProviderHistoric:(id)a3
{
  relevanceValuesLock = self->_relevanceValuesLock;
  v5 = a3;
  [(NSLock *)relevanceValuesLock lock];
  v6 = [(NSMapTable *)self->_relevanceValues objectForKey:v5];

  if (v6)
  {
    v7 = [v6 isHistoric];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_relevanceValuesLock unlock];

  return v7;
}

- (id)relevancesForRelevanceProvider:(id)a3 usingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [(RERelevanceProviderEnvironment *)self relevancesForRelevanceProvider:v6];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 value];
    v8 = [[RETaggedFeatureValueArray alloc] initWithValues:&v13 count:1];
LABEL_5:
    v9 = v8;
    goto LABEL_9;
  }

  v10 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v6];
  v11 = [v10 relevanceForProvider:v6 context:v7];
  v9 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v11];
  if ([v6 relevancePriority] != 2)
  {
    [(NSLock *)self->_relevanceValuesLock lock];
    [(RERelevanceProviderEnvironment *)self _scaleRelevanceProviderValues:v6 values:v9];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }

LABEL_9:

  return v9;
}

- (id)relevancesForRelevanceProvider:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 value];
    v5 = [[RETaggedFeatureValueArray alloc] initWithValues:&v9 count:1];
  }

  else
  {
    [(NSLock *)self->_relevanceValuesLock lock];
    v6 = [(NSMapTable *)self->_relevanceValues objectForKey:v4];
    v7 = [v6 values];
    v5 = [v7 copy];

    [(RERelevanceProviderEnvironment *)self _scaleRelevanceProviderValues:v4 values:v5];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }

  return v5;
}

- (void)_scaleRelevanceProviderValues:(id)a3 values:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(RERelevanceProviderEnvironment *)self featuresForRelevanceProvider:v24];
  v8 = [v7 firstObject];
  v9 = [v8 featureType];

  if (v9 == 2)
  {
    v10 = [v6 firstFeatureValue];
    if (REFeatureValueTypeForTaggedPointer(v10) == 1)
    {
      v12 = REIntegerValueForTaggedPointer(v10);
    }

    else
    {
      v12 = REDoubleValueForTaggedPointer(v10, v11);
    }

    v13 = [v24 relevancePriority];
    if (v13 == 3)
    {
      v14 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:v24];
      v18 = [v14 mean];
      if (REFeatureValueTypeForTaggedPointer(v18) == 1)
      {
        v20 = REIntegerValueForTaggedPointer(v18);
      }

      else
      {
        v20 = REDoubleValueForTaggedPointer(v18, v19);
      }

      REReleaseFeatureValueTaggedPointer(v18);
      v21 = v20 * 0.5;
    }

    else
    {
      if (v13 != 1)
      {
        if (!v13)
        {
          v12 = 0.0;
        }

        goto LABEL_19;
      }

      v14 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:v24];
      v15 = [v14 mean];
      if (REFeatureValueTypeForTaggedPointer(v15) == 1)
      {
        v17 = REIntegerValueForTaggedPointer(v15);
      }

      else
      {
        v17 = REDoubleValueForTaggedPointer(v15, v16);
      }

      REReleaseFeatureValueTaggedPointer(v15);
      v21 = (v17 + 1.0) * 0.5;
    }

    v12 = __71__RERelevanceProviderEnvironment__scaleRelevanceProviderValues_values___block_invoke(v12, v21);

LABEL_19:
    if (REFeatureValueTypeForTaggedPointer(v10) == 1)
    {
      v22 = RECreateIntegerFeatureValueTaggedPointer(v12);
    }

    else
    {
      v22 = RECreateDoubleFeatureValueTaggedPointer();
    }

    v23 = v22;
    if ([v6 count] == 1)
    {
      [v6 removeAllFeatureValues];
      [v6 addFeatureValue:v23];
    }

    else
    {
      [v6 removeFeatureValueAtIndex:0];
      [v6 insertFeatureValue:v23 atIndex:0];
    }

    REReleaseFeatureValueTaggedPointer(v23);
  }
}

float __71__RERelevanceProviderEnvironment__scaleRelevanceProviderValues_values___block_invoke(float a1, float a2)
{
  v2 = fmaxf(a2, 0.00000011921);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = (v2 * -2.0 + 1.0) / ((v2 + -1.0 + v2 + -1.0) * v2);
  v4 = ((1.0 - v3) * a1) + v3 * (a1 * a1);
  v5 = fmax(v4, 0.0);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v5;
  return (v6 + a1) * 0.5;
}

- (id)featuresForRelevanceProvider:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 effectiveFeatures];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v4 feature];
      v20[0] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v20;
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v8, v9, v10, v11, v12, v13, v4);
      v14 = [REFeature featureWithName:&stru_283B97458 featureType:0];
      v19 = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = &v19;
    }

    v7 = [v15 arrayWithObjects:v16 count:1];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_relevaneProviderWithType:(id)a3 withOptions:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_relevanceManagers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [objc_msgSend(objc_opt_class() "_relevanceProviderClass")];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          v21 = [objc_opt_class() _relevanceProviderClass];
LABEL_20:
          v16 = [[v21 alloc] initWithDictionary:v7];
          goto LABEL_21;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_supportedFeatures;
  v16 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = *v25;
    while (2)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = [*(*(&v24 + 1) + 8 * j) name];
        v20 = [v19 isEqualToString:v6];

        if (v20)
        {
          v21 = RECustomRelevanceProvider;
          goto LABEL_20;
        }
      }

      v16 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)encodeRelevaneProvider:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v4];
  if (v5)
  {
    v6 = [v4 dictionaryEncoding];
    v7 = [objc_opt_class() relevanceSimulatorID];
    v8 = v7;
    if (v6 && [v7 length])
    {
      v18 = v8;
      v19[0] = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
      v11 = [v10 feature];
      v12 = [v11 name];

      v13 = [v10 dictionaryEncoding];

      v16 = v12;
      v17 = v13;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createRelevaneProviderWithType:(id)a3 withOptions:(id)a4
{
  v5 = [(RERelevanceProviderEnvironment *)self _relevaneProviderWithType:a3 withOptions:a4];
  if (v5 && [(RERelevanceProviderEnvironment *)self isSupportedRelevanceProvider:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)allProviderValues
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(NSLock *)self->_relevanceValuesLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMapTable *)self->_relevanceValues keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_relevanceValues objectForKey:v9];
        v11 = [v10 copy];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_relevanceValuesLock unlock];
  v12 = [v3 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (RERelevanceProviderEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)immediateUpdateForRelevanceProviderManager:(id)a3 completion:(id)a4
{
  providerManagersToUpdate = self->_providerManagersToUpdate;
  v7 = a4;
  [(NSMutableSet *)providerManagersToUpdate addObject:a3];
  [(RERelevanceProviderEnvironment *)self _queue_performUpdate:v7];
}

- (void)scheduleUpdateForRelevanceProvider:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RELogForDomain(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling imminent update for relevance provider %{public}@", &v12, 0xCu);
  }

  if (v7)
  {
    updateCompletionBlocks = self->_updateCompletionBlocks;
    v10 = MEMORY[0x22AABC5E0](v7);
    [(NSMutableArray *)updateCompletionBlocks addObject:v10];
  }

  [(NSHashTable *)self->_providersToUpdate addObject:v6];
  [(REUpNextScheduler *)self->_scheduler schedule];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scheduleUpdateForRelevanceProviderManager:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RELogForDomain(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling imminent update for relevance provider manager %{public}@", &v12, 0xCu);
  }

  if (v7)
  {
    updateCompletionBlocks = self->_updateCompletionBlocks;
    v10 = MEMORY[0x22AABC5E0](v7);
    [(NSMutableArray *)updateCompletionBlocks addObject:v10];
  }

  [(NSMutableSet *)self->_providerManagersToUpdate addObject:v6];
  [(REUpNextScheduler *)self->_scheduler schedule];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)accessHistogramForFeature:(id)a3 usingBlock:(id)a4
{
  v9 = a4;
  relevanceValuesLock = self->_relevanceValuesLock;
  v7 = a3;
  [(NSLock *)relevanceValuesLock lock];
  v8 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:v7];

  if (v9 && v8)
  {
    v9[2](v9, v8);
  }

  [(NSLock *)self->_relevanceValuesLock unlock];
}

- (BOOL)isSupportedRelevanceProvider:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 feature];
      v6 = [(REFeatureSet *)self->_supportedFeatures containsFeature:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end