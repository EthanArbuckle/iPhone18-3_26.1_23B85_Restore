@interface REDataSourceManager
+ (BOOL)_isPrioritizedDataSourceClass:(Class)class;
+ (id)_prioritizedDataSourceClasses;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersionForDataSourceWithIdentifier:(SEL)identifier;
- (BOOL)_isApplicationRemovedOrRestrictedForIdentifier:(id)identifier;
- (NSSet)unrestirctedDataSourceIdentifiers;
- (REDataSourceManager)initWithRelevanceEngine:(id)engine dataSourceLoader:(id)loader withDelegate:(id)delegate;
- (REDataSourceManagerObserver)delegate;
- (id)elementGroupForIdentifier:(id)identifier;
- (void)_handleApplicationStateChange;
- (void)_queue_availableDataSourcesDidChange;
- (void)_queue_loadDataSourceWithIdentifier:(id)identifier;
- (void)_queue_unloadDataSourceWithIdentifier:(id)identifier;
- (void)_queue_updateAvailableDataSourceIdentifiers;
- (void)_updatePreferences;
- (void)dealloc;
- (void)enumerateElementDataSourceControllers:(id)controllers completion:(id)completion;
- (void)resume;
@end

@implementation REDataSourceManager

+ (id)_prioritizedDataSourceClasses
{
  if (_prioritizedDataSourceClasses_onceToken != -1)
  {
    +[REDataSourceManager _prioritizedDataSourceClasses];
  }

  v3 = _prioritizedDataSourceClasses_Classes;

  return v3;
}

void __52__REDataSourceManager__prioritizedDataSourceClasses__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__REDataSourceManager__prioritizedDataSourceClasses__block_invoke_2;
  v5[3] = &unk_2785FCA58;
  v6 = v0;
  v1 = v0;
  v2 = MEMORY[0x22AABC5E0](v5);
  (v2)[2](v2, @"RESiriSnippetDataSource");
  (v2)[2](v2, @"REBreatheDataSource");
  (v2)[2](v2, @"NTKUpNextNewsDataSource");
  (v2)[2](v2, @"NSREDataSource");
  v3 = [v1 copy];
  v4 = _prioritizedDataSourceClasses_Classes;
  _prioritizedDataSourceClasses_Classes = v3;
}

Class __52__REDataSourceManager__prioritizedDataSourceClasses__block_invoke_2(uint64_t a1, NSString *aClassName)
{
  result = NSClassFromString(aClassName);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return [v5 addObject:v4];
  }

  return result;
}

+ (BOOL)_isPrioritizedDataSourceClass:(Class)class
{
  _prioritizedDataSourceClasses = [self _prioritizedDataSourceClasses];
  LOBYTE(class) = [_prioritizedDataSourceClasses containsObject:class];

  return class;
}

- (REDataSourceManager)initWithRelevanceEngine:(id)engine dataSourceLoader:(id)loader withDelegate:(id)delegate
{
  engineCopy = engine;
  loaderCopy = loader;
  delegateCopy = delegate;
  v65.receiver = self;
  v65.super_class = REDataSourceManager;
  v11 = [(RERelevanceEngineSubsystem *)&v65 initWithRelevanceEngine:engineCopy];
  if (v11)
  {
    configuration = [engineCopy configuration];
    v11->_ignoreAppInstallation = [configuration ignoresInstalledApplications];

    configuration2 = [engineCopy configuration];
    v11->_disableAutomaticContentManagement = [configuration2 disableAutomaticContentManagement];

    array = [MEMORY[0x277CBEB18] array];
    dataSourceControllers = v11->_dataSourceControllers;
    v11->_dataSourceControllers = array;

    v16 = objc_opt_new();
    elementGroupMap = v11->_elementGroupMap;
    v11->_elementGroupMap = v16;

    v11->_dataSourceState = 1;
    v11->_locationAllowed = 0;
    v53 = loaderCopy;
    v18 = [MEMORY[0x277CBEB98] set];
    disabledDataSources = v11->_disabledDataSources;
    v11->_disabledDataSources = v18;

    v20 = [MEMORY[0x277CBEB98] set];
    [(REDataSourceManager *)v11 setAvailableDataSourceIdentifiers:v20];

    v21 = [MEMORY[0x277CBEB98] set];
    [(REDataSourceManager *)v11 setCurrentDataSourceIdentifiers:v21];

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_loader, loader);
    [(REDataSourceManager *)v11 _updatePreferences];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__updatePreferences name:@"RERelevanceEnginePreferencesDidUpdate" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel__handleApplicationStateChange name:@"REApplicationStateDidChange" object:0];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    loader = v11->_loader;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke;
    v61[3] = &unk_2785FCB90;
    v29 = dictionary;
    v62 = v29;
    v63 = dictionary2;
    v64 = dictionary3;
    v30 = dictionary3;
    v31 = dictionary2;
    [(REDataSourceLoader *)loader enumerateDataSourceClassesWithBlock:v61];
    v32 = v11->_loader;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_2;
    v58[3] = &unk_2785FCBB8;
    v59 = dictionary4;
    v60 = v29;
    v33 = v29;
    v34 = dictionary4;
    [(REDataSourceLoader *)v32 enumerateDataSourceObjectsWithBlock:v58];
    v35 = [v33 copy];
    identifierDataSourceMap = v11->_identifierDataSourceMap;
    v11->_identifierDataSourceMap = v35;

    v37 = [v31 copy];
    identifierApplicationIdentifierMap = v11->_identifierApplicationIdentifierMap;
    v11->_identifierApplicationIdentifierMap = v37;

    v39 = [v30 copy];
    identifierOperatingSystemVersionMap = v11->_identifierOperatingSystemVersionMap;
    v11->_identifierOperatingSystemVersionMap = v39;

    v41 = [v34 copy];
    unmanagedDataSourcesMap = v11->_unmanagedDataSourcesMap;
    v11->_unmanagedDataSourcesMap = v41;

    v43 = [MEMORY[0x277CBEB58] set];
    v44 = v11->_loader;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_3;
    v56[3] = &unk_2785FA8B0;
    v57 = v43;
    v45 = v43;
    [(REDataSourceLoader *)v44 enumerateBundleConfigurations:v56];
    v46 = [v45 copy];
    elementGroupSupportingConfigurations = v11->_elementGroupSupportingConfigurations;
    v11->_elementGroupSupportingConfigurations = v46;

    [(RERelevanceEngineSubsystem *)v11 beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v11];
    queue = [(RERelevanceEngineSubsystem *)v11 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_4;
    block[3] = &unk_2785F9AB8;
    v49 = v11;
    v55 = v49;
    dispatch_async(queue, block);

    logger = [engineCopy logger];
    v51 = v49;
    loaderCopy = v53;
    [logger addLoggable:v51];
  }

  return v11;
}

void __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke(id *a1, void *a2)
{
  v4 = [a2 bundleIdentifier];
  if ([v4 length])
  {
    if ([a1[4] objectForKeyedSubscript:v4])
    {
      v11 = *MEMORY[0x277CBE658];
      [a1[4] objectForKeyedSubscript:v4];
      RERaiseInternalException(v11, @"Data sources %@ and %@ have matching bundle identifiers %@. Skipping one...", v12, v13, v14, v15, v16, v17, a2);
    }

    else
    {
      [a1[4] setObject:a2 forKeyedSubscript:v4];
      v18 = [a2 applicationBundleIdentifier];
      [a1[5] setObject:v18 forKeyedSubscript:v4];

      memset(v20, 0, sizeof(v20));
      if (a2)
      {
        [a2 minimumSupportedSystemVersion];
      }

      v19 = [MEMORY[0x277CCAE60] value:v20 withObjCType:"{?=qqq}"];
      [a1[6] setObject:v19 forKeyedSubscript:v4];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Data source (%@) does not have a bundle identifier", v5, v6, v7, v8, v9, v10, a2);
  }
}

void __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [objc_opt_class() bundleIdentifier];
  if ([v3 length])
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v3];

    if (v10)
    {
      v11 = *MEMORY[0x277CBE658];
      [*(a1 + 40) objectForKeyedSubscript:v3];
      RERaiseInternalException(v11, @"Data source %@ and %@ have matching bundle identifiers %@. Skipping one...", v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      [*(a1 + 32) setObject:v18 forKeyedSubscript:v3];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Data source (%@) does not have a bundle identifier", v4, v5, v6, v7, v8, v9, v18);
  }
}

void __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (REBundleConfiguraitonSupportsElementGroups(v3))
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __77__REDataSourceManager_initWithRelevanceEngine_dataSourceLoader_withDelegate___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _queue_availableDataSourcesDidChange];
  v2 = *(a1 + 32);

  return [v2 endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  logger = [relevanceEngine logger];
  [logger removeLoggable:self];

  v6.receiver = self;
  v6.super_class = REDataSourceManager;
  [(RERelevanceEngineSubsystem *)&v6 dealloc];
}

- (void)_updatePreferences
{
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  effectivePreferences = [relevanceEngine effectivePreferences];

  if (effectivePreferences)
  {
    disabledDataSourceIdentifiers = [effectivePreferences disabledDataSourceIdentifiers];
    v6 = [effectivePreferences mode] & 1;
    v7 = ~([effectivePreferences mode] >> 1) & 1;
    queue = [(RERelevanceEngineSubsystem *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__REDataSourceManager__updatePreferences__block_invoke;
    v10[3] = &unk_2785FCC00;
    v11 = disabledDataSourceIdentifiers;
    v12 = v7;
    v13 = v6;
    v10[4] = self;
    v9 = disabledDataSourceIdentifiers;
    dispatch_async(queue, v10);
  }
}

void __41__REDataSourceManager__updatePreferences__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = *(a1 + 48);
  v5 = v3 != v4;
  if (v3 != v4)
  {
    *(v2 + 48) = v4;
    v2 = *(a1 + 32);
  }

  v6 = *(a1 + 56);
  if (*(v2 + 56) != v6)
  {
    *(v2 + 56) = v6;
    v2 = *(a1 + 32);
    v5 = 1;
  }

  v7 = [*(v2 + 64) isEqualToSet:*(a1 + 40)];
  if (v7)
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [*(a1 + 40) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    if (!v5)
    {
LABEL_7:
      if (v7)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__REDataSourceManager__updatePreferences__block_invoke_2;
  v12[3] = &__block_descriptor_41_e39_v16__0__REElementDataSourceController_8l;
  v12[4] = *(a1 + 48);
  v13 = *(a1 + 56);
  [v11 enumerateElementDataSourceControllers:v12];
  if (v7)
  {
    return;
  }

LABEL_8:
  [*(a1 + 32) _queue_availableDataSourcesDidChange];
}

void __41__REDataSourceManager__updatePreferences__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setState:v3];
  [v4 setAllowsLocationUse:*(a1 + 40)];
}

- (void)resume
{
  v3 = objc_alloc_init(REExpectation);
  [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  v4 = dispatch_group_create();
  dataSourceControllers = self->_dataSourceControllers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __29__REDataSourceManager_resume__block_invoke;
  v16[3] = &unk_2785FCC48;
  v16[4] = self;
  v6 = v4;
  v17 = v6;
  v18 = v3;
  v7 = v3;
  [(NSMutableArray *)dataSourceControllers enumerateObjectsUsingBlock:v16];
  queue = [(RERelevanceEngineSubsystem *)self queue];
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, &__block_literal_global_46_1);
  [(REExpectation *)v7 notifyOperationsCompleteOrPerformUsingQueue:queue block:v9];

  v10 = self->_dataSourceControllers;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__REDataSourceManager_resume__block_invoke_4;
  v14[3] = &unk_2785FCC70;
  v14[4] = self;
  v15 = v6;
  v11 = v6;
  [(NSMutableArray *)v10 enumerateObjectsUsingBlock:v14];
  queue2 = [(RERelevanceEngineSubsystem *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__REDataSourceManager_resume__block_invoke_6;
  v13[3] = &unk_2785F9AB8;
  v13[4] = self;
  dispatch_group_notify(v11, queue2, v13);
}

void __29__REDataSourceManager_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ([objc_opt_class() _isPrioritizedDataSourceClass:{objc_msgSend(v3, "dataSourceClass")}])
  {
    dispatch_group_enter(*(a1 + 40));
    [*(a1 + 48) beginOperation];
    [v3 resume];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __29__REDataSourceManager_resume__block_invoke_2;
    v9 = &unk_2785F9AE0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v5 = MEMORY[0x22AABC5E0](&v6);
    if (*(*(a1 + 32) + 121) == 1)
    {
      [v3 processPendingUpdatesWhilePause:{v5, v6, v7, v8, v9, v10}];
    }

    else
    {
      [v3 invalidateAndReloadWithCompletion:{v5, v6, v7, v8, v9, v10}];
    }
  }
}

void __29__REDataSourceManager_resume__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endOperation];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __29__REDataSourceManager_resume__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (([objc_opt_class() _isPrioritizedDataSourceClass:{objc_msgSend(v3, "dataSourceClass")}] & 1) == 0)
  {
    dispatch_group_enter(*(a1 + 40));
    [v3 resume];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__REDataSourceManager_resume__block_invoke_5;
    v6[3] = &unk_2785F9AB8;
    v7 = *(a1 + 40);
    v5 = MEMORY[0x22AABC5E0](v6);
    if (*(*(a1 + 32) + 121) == 1)
    {
      [v3 processPendingUpdatesWhilePause:v5];
    }

    else
    {
      [v3 invalidateAndReloadWithCompletion:v5];
    }
  }
}

- (void)enumerateElementDataSourceControllers:(id)controllers completion:(id)completion
{
  controllersCopy = controllers;
  completionCopy = completion;
  if (controllersCopy)
  {
    queue = [(RERelevanceEngineSubsystem *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__REDataSourceManager_enumerateElementDataSourceControllers_completion___block_invoke;
    block[3] = &unk_2785FB700;
    block[4] = self;
    v10 = controllersCopy;
    v11 = completionCopy;
    dispatch_async(queue, block);
  }
}

void __72__REDataSourceManager_enumerateElementDataSourceControllers_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__REDataSourceManager_enumerateElementDataSourceControllers_completion___block_invoke_2;
  v4[3] = &unk_2785FCC98;
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersionForDataSourceWithIdentifier:(SEL)identifier
{
  if (a4)
  {
    v5 = [self[3].var2 objectForKey:?];
    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = 0;
    if (v5)
    {
      v6 = v5;
      [v5 getValue:retstr];
      v5 = v6;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return self;
}

- (void)_queue_loadDataSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];

    if (relevanceEngine)
    {
      v5 = [(NSDictionary *)self->_identifierDataSourceMap objectForKeyedSubscript:identifierCopy];
      v6 = [(NSDictionary *)self->_unmanagedDataSourcesMap objectForKeyedSubscript:identifierCopy];
      v7 = [REElementDataSourceController alloc];
      relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
      if (v6)
      {
        v9 = [(REElementDataSourceController *)v7 initWithRelevanceEngine:relevanceEngine2 dataSource:v6];
      }

      else
      {
        v9 = [(REElementDataSourceController *)v7 initWithRelevanceEngine:relevanceEngine2 dataSourceClass:v5];
      }

      v10 = v9;

      isRunning = [(RERelevanceEngineSubsystem *)self isRunning];
      v12 = [objc_opt_class() _isPrioritizedDataSourceClass:v5];
      dataSourceControllers = self->_dataSourceControllers;
      if (v12)
      {
        [(NSMutableArray *)dataSourceControllers insertObject:v10 atIndex:0];
      }

      else
      {
        [(NSMutableArray *)dataSourceControllers addObject:v10];
      }

      [v10 setState:self->_dataSourceState];
      [v10 setAllowsLocationUse:self->_locationAllowed];
      currentDataSourceIdentifiers = [(REDataSourceManager *)self currentDataSourceIdentifiers];
      v15 = [currentDataSourceIdentifiers setByAddingObject:identifierCopy];

      v16 = [v15 copy];
      [(REDataSourceManager *)self setCurrentDataSourceIdentifiers:v16];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dataSourceManager:self didLoadDataSourceController:v10];

      if (isRunning)
      {
        [v10 resume];
        [v10 invalidateAndReloadWithCompletion:0];
      }
    }
  }
}

- (void)_queue_unloadDataSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    dataSourceControllers = self->_dataSourceControllers;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__REDataSourceManager__queue_unloadDataSourceWithIdentifier___block_invoke;
    v19[3] = &unk_2785FCCC0;
    v7 = identifierCopy;
    v20 = v7;
    v21 = &v22;
    [(NSMutableArray *)dataSourceControllers enumerateObjectsUsingBlock:v19];
    if (v23[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__20;
      v17 = __Block_byref_object_dispose__20;
      v18 = [(NSMutableArray *)self->_dataSourceControllers objectAtIndexedSubscript:?];
      [v14[5] pause];
      [v14[5] prepareToUnload];
      elementOperationQueue = [v14[5] elementOperationQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__REDataSourceManager__queue_unloadDataSourceWithIdentifier___block_invoke_48;
      v12[3] = &unk_2785FADE0;
      v12[4] = self;
      v12[5] = &v13;
      dispatch_async(elementOperationQueue, v12);

      currentDataSourceIdentifiers = [(REDataSourceManager *)self currentDataSourceIdentifiers];
      v10 = [currentDataSourceIdentifiers mutableCopy];

      [v10 removeObject:v7];
      v11 = [v10 copy];
      [(REDataSourceManager *)self setCurrentDataSourceIdentifiers:v11];

      [(NSMutableArray *)self->_dataSourceControllers removeObjectAtIndex:v23[3]];
      _Block_object_dispose(&v13, 8);
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __61__REDataSourceManager__queue_unloadDataSourceWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __61__REDataSourceManager__queue_unloadDataSourceWithIdentifier___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  [WeakRetained dataSourceManager:*(a1 + 32) willUnloadDataSourceController:*(*(*(a1 + 40) + 8) + 40)];
}

- (BOOL)_isApplicationRemovedOrRestrictedForIdentifier:(id)identifier
{
  if (self->_ignoreAppInstallation)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(NSDictionary *)self->_identifierApplicationIdentifierMap objectForKeyedSubscript:identifier];
    v5 = v4;
    if (v4)
    {
      if (!REApplicationIsRemote(v4) || (RELocalApplicationIdentifierForRemoteApplication(v5), v3 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v3) != 0))
      {
        if (REApplicationIsRestricted(v5))
        {
          LOBYTE(v3) = 1;
        }

        else
        {
          LOBYTE(v3) = REApplicationIsRemoved(v5);
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_queue_updateAvailableDataSourceIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSDictionary *)self->_identifierDataSourceMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![(REDataSourceManager *)self _isApplicationRemovedOrRestrictedForIdentifier:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  availableDataSourceIdentifiers = [(REDataSourceManager *)self availableDataSourceIdentifiers];
  if (([availableDataSourceIdentifiers isEqual:v3] & 1) == 0)
  {
    v11 = [v3 copy];
    [(REDataSourceManager *)self setAvailableDataSourceIdentifiers:v11];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_50_0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__REDataSourceManager__queue_updateAvailableDataSourceIdentifiers__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:REAvailableDataSourceIdentifiersDidChange object:0];
}

- (void)_handleApplicationStateChange
{
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__REDataSourceManager__handleApplicationStateChange__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_availableDataSourcesDidChange
{
  v55 = *MEMORY[0x277D85DE8];
  [RERelevanceEngineSubsystem beginActivity:"beginActivity:forObject:" forObject:?];
  v3 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = self->_dataSourceControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v47 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:bundleIdentifier];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v6);
  }

  [(REDataSourceManager *)self _queue_updateAvailableDataSourceIdentifiers];
  availableDataSourceIdentifiers = [(REDataSourceManager *)self availableDataSourceIdentifiers];
  v11 = [availableDataSourceIdentifiers mutableCopy];

  [v11 minusSet:self->_disabledDataSources];
  v12 = [v3 mutableCopy];
  [v12 minusSet:v11];
  v34 = v11;
  v13 = [v11 mutableCopy];
  [v13 minusSet:v3];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(REDataSourceManager *)self _queue_unloadDataSourceWithIdentifier:*(*(&v43 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(REDataSourceManager *)self _queue_loadDataSourceWithIdentifier:*(*(&v39 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v21);
  }

  v24 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = self->_dataSourceControllers;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        dataSource = [*(*(&v35 + 1) + 8 * m) dataSource];
        [v24 addObject:dataSource];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v27);
  }

  v31 = [v24 copy];
  [(REDataSourceManager *)self setCurrentDataSources:v31];

  if ([v14 count] || objc_msgSend(v19, "count"))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"REUpNextDataSourcesDidChangeNotification" object:0];
  }

  [(RERelevanceEngineSubsystem *)self endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];

  v33 = *MEMORY[0x277D85DE8];
}

- (NSSet)unrestirctedDataSourceIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_identifierDataSourceMap allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (REDataSourceManagerObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)elementGroupForIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(REConcurrentDictionary *)self->_elementGroupMap objectForKeyedSubscript:identifierCopy];
  if (v5)
  {
    v6 = v5;
    null = [MEMORY[0x277CBEB68] null];
    v8 = [null isEqual:v6];

    if (v8)
    {

      v6 = 0;
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = self->_elementGroupSupportingConfigurations;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = 112;
      selfCopy = self;
      v6 = 0;
      v12 = *v29;
      v13 = *MEMORY[0x277CBE660];
      do
      {
        v14 = 0;
        v15 = v6;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v6 = [*(*(&v28 + 1) + 8 * v14) elementGroupWithIdentifier:{identifierCopy, v26}];

          groupIdentifier = [v6 groupIdentifier];
          v17 = [groupIdentifier isEqualToString:identifierCopy];

          if (v17)
          {
            if (v6)
            {
              [*(&selfCopy->super.super.isa + v26) setObject:v6 forKeyedSubscript:identifierCopy];
              goto LABEL_17;
            }
          }

          else
          {
            RERaiseInternalException(v13, @"The group identifiers should match", v18, v19, v20, v21, v22, v23, v26);
          }

          ++v14;
          v15 = v6;
        }

        while (v11 != v14);
        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    else
    {
      v6 = 0;
    }

LABEL_17:
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

@end