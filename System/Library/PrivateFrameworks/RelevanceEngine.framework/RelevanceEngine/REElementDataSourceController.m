@interface REElementDataSourceController
- (BOOL)_containsElementIdentifier:(id)a3;
- (BOOL)_isWhitelisted;
- (BOOL)_supportsContentRelevanceProviderForElement:(id)a3;
- (BOOL)_validElement:(id)a3;
- (BOOL)hasElementWithId:(id)a3 inSectionWithIdentifier:(id)a4;
- (NSArray)allElements;
- (NSArray)allProvidedElements;
- (NSString)name;
- (REElementDataSourceController)initWithRelevanceEngine:(id)a3 dataSource:(id)a4;
- (REElementDataSourceControllerDelegate)delegate;
- (id)_dataSourceIdentifierFromIdentifier:(id)a3;
- (id)_elementForIdentifier:(id)a3;
- (id)_elementsByRemovingInvalidElements:(id)a3;
- (id)_groupElements:(id)a3 bySections:(id)a4;
- (id)_initWithRelevanceEngine:(id)a3 dataSourceClass:(Class)a4 dataSource:(id)a5;
- (id)_queue_elementsForIds:(id)a3;
- (id)_sectionForElementWithIdentifier:(id)a3;
- (id)_shallowCopiedElements:(id)a3;
- (id)_updateRelevanceProvidersForElement:(id)a3;
- (unsigned)_defaultDataSourceQOS;
- (void)_addElementIdentifier:(id)a3;
- (void)_handleDeviceLockStateChange:(id)a3;
- (void)_loadLoggingHeader;
- (void)_namespaceElementIdentifier:(id)a3 section:(id)a4;
- (void)_performOrEnqueueUpdateBlock:(id)a3;
- (void)_queue_invalidateSections:(id)a3 completion:(id)a4;
- (void)_queue_pause;
- (void)_queue_performContentInvalidateWithElement:(id)a3 expectation:(id)a4 sections:(id)a5;
- (void)_queue_performUpdates;
- (void)_queue_processPendingUpdatesWhilePause:(id)a3;
- (void)_queue_processUpdates:(id)a3 forSection:(id)a4;
- (void)_queue_purgeContentWithCompletion:(id)a3;
- (void)_queue_reloadWithQOS:(unsigned int)a3 qosOffset:(int)a4 forceReload:(BOOL)a5 operations:(id)a6 completion:(id)a7;
- (void)_queue_resume;
- (void)_queue_scheduleUpdate:(id)a3;
- (void)_queue_updateDataSourceLocationUse;
- (void)_removeElementForIdentifier:(id)a3;
- (void)_removeElementIdentifier:(id)a3;
- (void)_setSection:(id)a3 forElementWithIdentifier:(id)a4;
- (void)_storeElement:(id)a3;
- (void)addElements:(id)a3 toSectionWithIdentifier:(id)a4;
- (void)dealloc;
- (void)elementDidBecomeHidden:(id)a3;
- (void)elementWillBecomeVisible:(id)a3;
- (void)fetchElementWithIdentifierVisible:(id)a3 withHandler:(id)a4;
- (void)invalidateAndReloadWithCompletion:(id)a3;
- (void)invalidateElements;
- (void)invalidateElementsInSection:(id)a3;
- (void)invalidateElementsInSections:(id)a3 completion:(id)a4;
- (void)pause;
- (void)pauseIfNeeded;
- (void)prepareToUnload;
- (void)processPendingUpdatesWhilePause:(id)a3;
- (void)refreshElement:(id)a3;
- (void)reloadElement:(id)a3;
- (void)removeElementsWithIds:(id)a3;
- (void)resume;
- (void)setAllowsLocationUse:(BOOL)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation REElementDataSourceController

- (REElementDataSourceController)initWithRelevanceEngine:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REElementDataSourceController *)self _initWithRelevanceEngine:v7 dataSourceClass:objc_opt_class() dataSource:v6];

  return v8;
}

- (id)_initWithRelevanceEngine:(id)a3 dataSourceClass:(Class)a4 dataSource:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v72 = a5;
  v82.receiver = self;
  v82.super_class = REElementDataSourceController;
  v9 = [(REElementDataSourceController *)&v82 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 1;
    v9->_isPerformingReload = 0;
    v11 = [MEMORY[0x277CBEB18] array];
    enqueuedBlocks = v10->_enqueuedBlocks;
    v10->_enqueuedBlocks = v11;

    *&v10->_willUnload = 0;
    v10->_wantsReloadWhilePaused = 0;
    objc_storeWeak(&v10->_relevanceEngine, v8);
    v13 = [v8 configuration];
    v10->_disableAutomaticContentManagement = [v13 disableAutomaticContentManagement];

    objc_storeStrong(&v10->_dataSourceClass, a4);
    [(REElementDataSourceController *)v10 _loadLoggingHeader];
    v14 = [MEMORY[0x277CBEB58] set];
    dataSourceElements = v10->_dataSourceElements;
    v10->_dataSourceElements = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    dataSourceElementIdentifierMap = v10->_dataSourceElementIdentifierMap;
    v10->_dataSourceElementIdentifierMap = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    dataSourceElementSectionMap = v10->_dataSourceElementSectionMap;
    v10->_dataSourceElementSectionMap = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    updates = v10->_updates;
    v10->_updates = v20;

    v10->_contentMode = [(objc_class *)a4 elementContentMode];
    v22 = [(REElementDataSourceController *)v10 _defaultDataSourceQOS];
    v23 = MEMORY[0x277CCACA8];
    v70 = NSStringFromClass(a4);
    v24 = [v23 stringWithFormat:@"com.apple.relevanceengine.%@Controller"];

    attr = dispatch_queue_attr_make_with_qos_class(0, v22, 0);
    v25 = v24;
    v26 = dispatch_queue_create([v24 UTF8String], attr);
    queue = v10->_queue;
    v10->_queue = v26;

    if (([(objc_class *)a4 wantsPrivateQueue]& 1) == 0)
    {
      if (_initWithRelevanceEngine_dataSourceClass_dataSource__onceToken != -1)
      {
        [REElementDataSourceController _initWithRelevanceEngine:dataSourceClass:dataSource:];
      }

      v28 = v10->_queue;
      v29 = [_initWithRelevanceEngine_dataSourceClass_dataSource__QueuePool nextAvailableQueue];
      dispatch_set_target_queue(v28, v29);
    }

    if ([v8 wantsImmutableContent])
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 0.1;
    }

    objc_initWeak(&location, v10);
    v31 = v10->_queue;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_2;
    v79[3] = &unk_2785F9A90;
    objc_copyWeak(&v80, &location);
    v32 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.element-update" queue:v31 delay:v79 updateBlock:v30];
    updateScheduler = v10->_updateScheduler;
    v10->_updateScheduler = v32;

    v34 = v10->_queue;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_3;
    v76[3] = &unk_2785FA3A8;
    objc_copyWeak(&v77, &location);
    v78 = v22;
    v35 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.element-invalidation" queue:v34 delay:v76 updateBlock:v30];
    reloadScheduler = v10->_reloadScheduler;
    v10->_reloadScheduler = v35;

    if ([(objc_class *)a4 wantsReloadForSignificantTimeChange])
    {
      v37 = RELogForDomain(2);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        loggingHeader = v10->_loggingHeader;
        *buf = 138412290;
        v84 = loggingHeader;
        _os_log_impl(&dword_22859F000, v37, OS_LOG_TYPE_DEFAULT, "%@ wantsReloadForSignificantTimeChange", buf, 0xCu);
      }

      v39 = [MEMORY[0x277CCAB98] defaultCenter];
      v40 = RESignificantTimeChangeNotification();
      [v39 addObserver:v10 selector:sel__handleSignifiantTimeChange_ name:v40 object:0];
    }

    v10->_hasDataAvailable = 1;
    v41 = [MEMORY[0x277CCAB98] defaultCenter];
    [v41 addObserver:v10 selector:sel__handleDeviceLockStateChange_ name:@"REDeviceLockStateChangedNotification" object:0];

    if (v72)
    {
      v42 = v72;
    }

    else
    {
      v42 = objc_opt_new();
    }

    dataSource = v10->_dataSource;
    v10->_dataSource = v42;

    [(REElementDataSource *)v10->_dataSource setDelegate:v10];
    [(REElementDataSource *)v10->_dataSource setUnlockedSinceBoot:REDeviceUnlockedSinceBoot()];
    v44 = [MEMORY[0x277CBEB58] set];
    v45 = MEMORY[0x277CBEB98];
    v46 = [(REElementDataSource *)v10->_dataSource supportedSections];
    v47 = [v45 setWithArray:v46];

    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_56;
    v73[3] = &unk_2785FA3D0;
    v48 = v47;
    v74 = v48;
    v49 = v44;
    v75 = v49;
    [v8 enumerateSectionDescriptorsWithOptions:0 includeHistoric:0 usingBlock:v73];
    v50 = [v49 copy];
    supportedSections = v10->_supportedSections;
    v10->_supportedSections = v50;

    v52 = [v8 coordinator];
    v53 = [v52 elementRelevanceEngine];
    v54 = [v53 relevanceProviderEnvironment];
    providerEnvironment = v10->_providerEnvironment;
    v10->_providerEnvironment = v54;

    v62 = v10->_providerEnvironment;
    if (!v62)
    {
      RERaiseInternalException(*MEMORY[0x277CBE658], @"Provider environment should't be nil", v56, v57, v58, v59, v60, v61, v70);
      v62 = v10->_providerEnvironment;
    }

    v63 = [[REContentRelevanceProvider alloc] initWithContent:&stru_283B97458];
    v10->_supportsContentRelevance = [(RERelevanceProviderEnvironment *)v62 isSupportedRelevanceProvider:v63];

    v64 = [(objc_class *)a4 contentAttributes];
    contentAttributes = v10->_contentAttributes;
    v10->_contentAttributes = v64;

    if (![(NSArray *)v10->_contentAttributes count])
    {
      v10->_supportsContentRelevance = 0;
    }

    v66 = [v8 logger];
    [v66 addLoggable:v10];

    v67 = [v8 logger];
    [v67 addLoggable:v10->_dataSource];

    objc_destroyWeak(&v77);
    objc_destroyWeak(&v80);
    objc_destroyWeak(&location);
  }

  v68 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke()
{
  v0 = [[REDispatchQueuePool alloc] initWithQueueCount:2 prefix:@"com.apple.RelevanceEngine.DataSourceController"];
  v1 = _initWithRelevanceEngine_dataSourceClass_dataSource__QueuePool;
  _initWithRelevanceEngine_dataSourceClass_dataSource__QueuePool = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performUpdates];
}

void __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_reloadWithQOS:*(a1 + 40) qosOffset:0 forceReload:0 completion:0];
}

void __85__REElementDataSourceController__initWithRelevanceEngine_dataSourceClass_dataSource___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (unsigned)_defaultDataSourceQOS
{
  if ([(objc_class *)self->_dataSourceClass drivenByUserInteraction])
  {
    return 25;
  }

  else
  {
    return 17;
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  v4 = [WeakRetained logger];
  [v4 removeLoggable:self->_dataSource];

  dataSource = self->_dataSource;
  self->_dataSource = 0;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7 = objc_loadWeakRetained(&self->_relevanceEngine);
  v8 = [v7 logger];
  [v8 removeLoggable:self];

  v9.receiver = self;
  v9.super_class = REElementDataSourceController;
  [(REElementDataSourceController *)&v9 dealloc];
}

- (void)_handleDeviceLockStateChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__REElementDataSourceController__handleDeviceLockStateChange___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __62__REElementDataSourceController__handleDeviceLockStateChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = REDeviceUnlockedSinceBoot();
  result = [*(*(a1 + 32) + 176) hasUnlockedSinceBoot];
  if (v2 != result)
  {
    [*(*(a1 + 32) + 176) setUnlockedSinceBoot:v2];
    v4 = *(*(a1 + 32) + 176);
    result = [objc_opt_class() wantsReloadForFirstDeviceUnlock];
    if (result)
    {
      v5 = RELogForDomain(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 8);
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "%@ reloading for device unlock after reboot", &v10, 0xCu);
      }

      if ([*(*(a1 + 32) + 176) isRunning])
      {
        v7 = RELogForDomain(2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(a1 + 32) + 8);
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEFAULT, "%@ reinitializing data source", &v10, 0xCu);
        }

        [*(a1 + 32) pause];
        [*(a1 + 32) resume];
      }

      result = [*(a1 + 32) invalidateElements];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_elementsByRemovingInvalidElements:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CCAB58] indexSet];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__REElementDataSourceController__elementsByRemovingInvalidElements___block_invoke;
    v14 = &unk_2785FA3F8;
    v15 = self;
    v7 = v6;
    v16 = v7;
    [v5 enumerateObjectsUsingBlock:&v11];
    if ([v7 count])
    {
      v8 = [v5 mutableCopy];
      [v8 removeObjectsAtIndexes:v7];
      v9 = [v8 copy];
    }

    else
    {
      v9 = [v5 copy];
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

uint64_t __68__REElementDataSourceController__elementsByRemovingInvalidElements___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) _validElement:a2];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (id)_shallowCopiedElements:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
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

          v11 = [*(*(&v15 + 1) + 8 * i) shallowCopy];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_namespaceElementIdentifier:(id)a3 section:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [REIdentifier alloc];
  v8 = [(REElementDataSourceController *)self bundleIdentifier];
  v9 = [v16 identifier];
  v10 = [(REIdentifier *)v7 initWithDataSource:v8 section:v6 identifier:v9];

  v11 = [v16 bundleIdentifier];

  if (!v11)
  {
    v12 = [(REElementDataSourceController *)self bundleIdentifier];
    [v16 setBundleIdentifier:v12];
  }

  v13 = [v16 applicationBundleIdentifier];

  if (!v13)
  {
    v14 = [(REElementDataSourceController *)self applicationBundleIdentifier];
    if (v14)
    {
      [v16 setApplicationBundleIdentifier:v14];
    }

    else
    {
      v15 = [v16 bundleIdentifier];
      [v16 setApplicationBundleIdentifier:v15];
    }
  }

  [v16 _updateIdentifier:v10];
  [v16 _updateNamespacedIdentifier:v10];
}

- (BOOL)_validElement:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 relevanceProviders];
  v41 = [v5 setWithArray:v6];

  v7 = [v41 count];
  v8 = [v4 relevanceProviders];
  v9 = [v8 count];

  if (v7 != v9)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Duplicate relevance providers in %@", v10, v11, v12, v13, v14, v15, v4);
    v31 = 0;
    goto LABEL_20;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [v4 relevanceProviders];
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v17)
  {
    v31 = 1;
    goto LABEL_19;
  }

  v18 = 0;
  v19 = *v43;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v43 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v42 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_18;
      }

      v22 = [v4 identifier];
      v23 = v22 == 0;

      if (v23)
      {
        goto LABEL_18;
      }

      if (![(RERelevanceProviderEnvironment *)self->_providerEnvironment isSupportedRelevanceProvider:v21])
      {
        v32 = NSStringFromClass(self->_dataSourceClass);
        RERaiseInternalException(*MEMORY[0x277CBE660], @"Relevance Engine (from data source %@) isn't configured to handle the relevance provider: %@", v33, v34, v35, v36, v37, v38, v32);

LABEL_18:
        v31 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass & v18)
      {
        RERaiseInternalException(*MEMORY[0x277CBE660], @"Element cannot be added to multiple groups: %@", v25, v26, v27, v28, v29, v30, v4);
        goto LABEL_18;
      }

      v18 |= isKindOfClass;
    }

    v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    v31 = 1;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_20:
  v39 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)_supportsContentRelevanceProviderForElement:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_supportsContentRelevance)
  {
    contentMode = self->_contentMode;
    if (contentMode == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v4 relevanceProviders];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7 = 0;
              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v7 = 1;
LABEL_15:
    }

    else
    {
      v7 = contentMode == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_updateRelevanceProvidersForElement:(id)a3
{
  v4 = a3;
  if (![(REElementDataSourceController *)self _supportsContentRelevanceProviderForElement:v4])
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCAB68] string];
  contentAttributes = self->_contentAttributes;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__REElementDataSourceController__updateRelevanceProvidersForElement___block_invoke;
  v14[3] = &unk_2785FA420;
  v7 = v5;
  v15 = v7;
  REEnumerateContentAttributesOfElement(contentAttributes, v4, v14);
  v8 = [[REContentRelevanceProvider alloc] initWithContent:v7];
  v9 = [(REContentRelevanceProvider *)v8 keywords];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 relevanceProviders];
    v12 = [v11 arrayByAddingObject:v8];

    v9 = [v4 copyElementWithUpdatedRelevanceProviders:v12];
  }

  if (!v10)
  {
LABEL_5:
    v9 = v4;
  }

  return v9;
}

uint64_t __69__REElementDataSourceController__updateRelevanceProvidersForElement___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = *(a1 + 32);

  return [v3 appendString:@"\n"];
}

- (void)_addElementIdentifier:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v4, v5, v6, v7, v8, v9, v10);
  }

  [(NSMutableSet *)self->_dataSourceElements addObject:v11];
}

- (void)_removeElementIdentifier:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v4, v5, v6, v7, v8, v9, v10);
  }

  [(NSMutableSet *)self->_dataSourceElements removeObject:v11];
}

- (BOOL)_containsElementIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = [(NSMutableSet *)self->_dataSourceElements containsObject:v4];

  return v11;
}

- (void)_setSection:(id)a3 forElementWithIdentifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v7, v8, v9, v10, v11, v12, v13);
  }

  [(NSMutableDictionary *)self->_dataSourceElementSectionMap setObject:v14 forKeyedSubscript:v6];
}

- (id)_sectionForElementWithIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = [(NSMutableDictionary *)self->_dataSourceElementSectionMap objectForKeyedSubscript:v4];

  return v11;
}

- (void)_storeElement:(id)a3
{
  v12 = a3;
  v4 = [v12 identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v5, v6, v7, v8, v9, v10, v11);
  }

  [(NSMutableDictionary *)self->_dataSourceElementIdentifierMap setObject:v12 forKeyedSubscript:v4];
}

- (void)_removeElementForIdentifier:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v4, v5, v6, v7, v8, v9, v10);
  }

  [(NSMutableDictionary *)self->_dataSourceElementIdentifierMap setObject:0 forKeyedSubscript:v11];
}

- (id)_elementForIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = [(NSMutableDictionary *)self->_dataSourceElementIdentifierMap objectForKeyedSubscript:v4];

  return v11;
}

- (id)_dataSourceIdentifierFromIdentifier:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v3 identifier];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE658], @"Wrong type of identifier being used", v4, v5, v6, v7, v8, v9, v13);
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

- (BOOL)_isWhitelisted
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  v4 = [WeakRetained configuration];
  v5 = [v4 whitelistedDataSourceClassNames];

  if ([v5 count])
  {
    dataSource = self->_dataSource;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 containsObject:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)resume
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__REElementDataSourceController_resume__block_invoke;
  v2[3] = &unk_2785F9AB8;
  v2[4] = self;
  [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v2];
}

void __39__REElementDataSourceController_resume__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) _isWhitelisted])
  {
    v2 = *v1;

    [v2 _queue_resume];
  }

  else
  {
    v3 = RELogForDomain(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __39__REElementDataSourceController_resume__block_invoke_cold_1(v1);
    }
  }
}

- (void)_queue_resume
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v2, v3, "%@ did open data source", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processPendingUpdatesWhilePause:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__REElementDataSourceController_processPendingUpdatesWhilePause___block_invoke;
  v6[3] = &unk_2785F9A40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v6];
}

- (void)_queue_processPendingUpdatesWhilePause:(id)a3
{
  v4 = a3;
  v5 = v4;
  sectionsToReloadWhilePaused = self->_sectionsToReloadWhilePaused;
  if (sectionsToReloadWhilePaused)
  {
    v8 = v4;
    [(REElementDataSourceController *)self _queue_invalidateSections:sectionsToReloadWhilePaused completion:v4];
    v7 = self->_sectionsToReloadWhilePaused;
    self->_sectionsToReloadWhilePaused = 0;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v8 = v4;
    v4 = v4[2](v4);
  }

  v5 = v8;
LABEL_6:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)pause
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__REElementDataSourceController_pause__block_invoke;
  v2[3] = &unk_2785F9AB8;
  v2[4] = self;
  [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v2];
}

void __38__REElementDataSourceController_pause__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) _isWhitelisted])
  {
    v2 = *v1;

    [v2 _queue_pause];
  }

  else
  {
    v3 = RELogForDomain(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __38__REElementDataSourceController_pause__block_invoke_cold_1(v1);
    }
  }
}

- (void)pauseIfNeeded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__REElementDataSourceController_pauseIfNeeded__block_invoke;
  v2[3] = &unk_2785F9AB8;
  v2[4] = self;
  [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v2];
}

uint64_t __46__REElementDataSourceController_pauseIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isWhitelisted];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_pause];
  }

  return result;
}

- (void)_queue_pause
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v2, v3, "%@ did close data source", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__REElementDataSourceController__queue_pause__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "%@ finished purging content because content management is disabled", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAllowsLocationUse:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__REElementDataSourceController_setAllowsLocationUse___block_invoke;
  v4[3] = &unk_2785FA448;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

uint64_t __54__REElementDataSourceController_setAllowsLocationUse___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 145) != v2)
  {
    *(v1 + 145) = v2;
    return [*(result + 32) _queue_updateDataSourceLocationUse];
  }

  return result;
}

- (void)_queue_updateDataSourceLocationUse
{
  allowsLocationUse = self->_allowsLocationUse;
  dataSource = self->_dataSource;
  if (allowsLocationUse)
  {
    v5 = [(REElementDataSource *)dataSource isRunning];
    if (v5 == [(REElementDataSource *)self->_dataSource allowsLocationUse])
    {
      return;
    }
  }

  else
  {
    if (![(REElementDataSource *)dataSource allowsLocationUse])
    {
      return;
    }

    v5 = 0;
  }

  v6 = self->_dataSource;

  [(REElementDataSource *)v6 setAllowsLocationUse:v5];
}

- (void)prepareToUnload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__REElementDataSourceController_prepareToUnload__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __48__REElementDataSourceController_prepareToUnload__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  [*(*(a1 + 32) + 64) performImmediately];
  v2 = *(*(a1 + 32) + 56);

  return [v2 performImmediately];
}

- (void)invalidateAndReloadWithCompletion:(id)a3
{
  v4 = a3;
  dataSource = self->_dataSource;
  v6 = [objc_opt_class() wantsAutomaticFetching];
  v7 = v6;
  if (v6)
  {
    [(REElementDataSource *)self->_dataSource beginFetchingData];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__REElementDataSourceController_invalidateAndReloadWithCompletion___block_invoke;
  block[3] = &unk_2785FA498;
  block[4] = self;
  v12 = v4;
  v13 = v7;
  v9 = v4;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, block);
  dispatch_async(queue, v10);
}

void __67__REElementDataSourceController_invalidateAndReloadWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__REElementDataSourceController_invalidateAndReloadWithCompletion___block_invoke_2;
  v4[3] = &unk_2785FA470;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _queue_reloadWithQOS:25 qosOffset:0xFFFFFFFFLL forceReload:1 completion:v4];
}

uint64_t __67__REElementDataSourceController_invalidateAndReloadWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(*(a1 + 32) + 176);

    return [v3 finishFetchingData];
  }

  return result;
}

- (void)invalidateElementsInSections:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__REElementDataSourceController_invalidateElementsInSections_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __73__REElementDataSourceController_invalidateElementsInSections_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 176) isRunning];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 32) _queue_invalidateSections:*(a1 + 40) completion:*(a1 + 48)];
    v4 = RELogForDomain(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 8);
      v17 = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_INFO, "%{public}@ Asked to invalidate elements in section %@.", &v17, 0x16u);
    }

LABEL_12:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *(v3 + 80);
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;
  }

  else
  {
    v12 = v8;
    v11 = *(v3 + 80);
    *(v3 + 80) = v12;
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = *(v13 + 16);
  v15 = *MEMORY[0x277D85DE8];

  v14();
}

- (void)invalidateElements
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__REElementDataSourceController_invalidateElements__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__REElementDataSourceController_invalidateElements__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 176) isRunning];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 64) schedule];
    v4 = RELogForDomain(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 8);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_INFO, "%{public}@ Asked to invalidate elements.", &v7, 0xCu);
    }
  }

  else
  {
    *(v3 + 72) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidateElementsInSection:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(REElementDataSourceController *)self invalidateElementsInSections:v6 completion:0, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addElements:(id)a3 toSectionWithIdentifier:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(NSSet *)self->_supportedSections containsObject:v7])
  {
    v9 = RELogForDomain(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [REElementDataSourceController addElements:toSectionWithIdentifier:];
    }

    goto LABEL_14;
  }

  v8 = [(REElementDataSourceController *)self _elementsByRemovingInvalidElements:v6];

  if (v8 && [v8 count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(REElementDataSourceController *)self _updateRelevanceProvidersForElement:*(*(&v25 + 1) + 8 * v14)];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    v17 = [(REElementDataSourceController *)self _shallowCopiedElements:v16];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__REElementDataSourceController_addElements_toSectionWithIdentifier___block_invoke;
    v20[3] = &unk_2785FA4C0;
    v21 = v17;
    v22 = self;
    v23 = v7;
    v6 = v10;
    v24 = v6;
    v18 = v17;
    [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v20];

LABEL_14:
    v8 = v6;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __69__REElementDataSourceController_addElements_toSectionWithIdentifier___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([*(a1 + 40) _containsElementIdentifier:v10])
        {
          [v2 addObject:v10];
        }

        else
        {
          [v3 addObject:v9];
          [*(a1 + 40) _addElementIdentifier:v10];
          [*(a1 + 40) _setSection:*(a1 + 48) forElementWithIdentifier:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v6);
  }

  if ([v2 count])
  {
    v11 = RELogForDomain(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__REElementDataSourceController_addElements_toSectionWithIdentifier___block_invoke_cold_1(v2);
    }
  }

  if ([v3 count])
  {
    v29 = v3;
    v30 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * j);
          [*(a1 + 40) _storeElement:{v17, v29, v30}];
          [*(a1 + 40) _namespaceElementIdentifier:v17 section:*(a1 + 48)];
          v18 = RELogForDomain(2);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(*(a1 + 40) + 8);
            v22 = [v17 identifier];
            v23 = *(a1 + 48);
            *buf = 138413058;
            v40 = v21;
            v41 = 2112;
            v42 = v22;
            v43 = 2112;
            v44 = v23;
            v45 = 2112;
            v46 = v17;
            _os_log_debug_impl(&dword_22859F000, v18, OS_LOG_TYPE_DEBUG, "%@ added element %@ in section %@\n%@", buf, 0x2Au);
          }

          v19 = *(a1 + 40);
          v20 = [REElementDataSourceUpdate insertElement:v17 inSection:*(a1 + 48)];
          [v19 _queue_scheduleUpdate:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v47 count:16];
      }

      while (v14);
    }

    v3 = v29;
    v2 = v30;
  }

  v24 = RELogForDomain(2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 40) + 8);
    v26 = REElementsLoggableString(*(a1 + 56));
    v27 = *(a1 + 48);
    *buf = 138543874;
    v40 = v25;
    v41 = 2114;
    v42 = v26;
    v43 = 2114;
    v44 = v27;
    _os_log_impl(&dword_22859F000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ adding elements %{public}@ to section %{public}@", buf, 0x20u);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)reloadElement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = RELogForDomain(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [REElementDataSourceController reloadElement:v7];
    }

    v5 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  if ([(REElementDataSourceController *)self _validElement:v4])
  {
    v6 = [(REElementDataSourceController *)self _updateRelevanceProvidersForElement:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__REElementDataSourceController_reloadElement___block_invoke;
    v8[3] = &unk_2785F9AE0;
    v5 = v6;
    v9 = v5;
    v10 = self;
    [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v8];
    v7 = v9;
LABEL_7:
  }
}

void __47__REElementDataSourceController_reloadElement___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) _sectionForElementWithIdentifier:v2];
  if ([*(a1 + 40) _containsElementIdentifier:v2])
  {
    v4 = [*(a1 + 40) _elementForIdentifier:v2];
    v5 = [v4 relevanceProviders];
    v6 = [*(a1 + 32) relevanceProviders];
    v7 = [v5 isEqualToArray:v6];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v4 relevanceProviders];
      v10 = [v8 copyElementWithUpdatedRelevanceProviders:v9];

      [*(a1 + 40) _storeElement:v10];
      [*(a1 + 40) _namespaceElementIdentifier:v10 section:v3];
      v11 = *(a1 + 40);
      [REElementDataSourceUpdate reloadElement:v10 inSection:v3];
    }

    else
    {
      v10 = [*(a1 + 32) shallowCopy];
      [*(a1 + 40) _storeElement:v10];
      [*(a1 + 40) _namespaceElementIdentifier:v10 section:v3];
      v12 = *(a1 + 40);
      v13 = [REElementDataSourceUpdate removeElement:v4 inSection:v3];
      [v12 _queue_scheduleUpdate:v13];

      v11 = *(a1 + 40);
      [REElementDataSourceUpdate insertElement:v10 inSection:v3];
    }
    v14 = ;
    [v11 _queue_scheduleUpdate:v14];

    v15 = RELogForDomain(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = *(*(a1 + 40) + 8);
      v21 = 138413058;
      v22 = v20;
      v23 = 2112;
      v24 = v2;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v19;
      _os_log_debug_impl(&dword_22859F000, v15, OS_LOG_TYPE_DEBUG, "%@ updated element %@ in section %@\n%@", &v21, 0x2Au);
    }
  }

  else
  {
    v4 = RELogForDomain(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__REElementDataSourceController_reloadElement___block_invoke_cold_1();
    }
  }

  v16 = RELogForDomain(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 40) + 8);
    v21 = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&dword_22859F000, v16, OS_LOG_TYPE_DEFAULT, "%@ updating element %@\n", &v21, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)refreshElement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = RELogForDomain(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [REElementDataSourceController refreshElement:v7];
    }

    v5 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  if ([(REElementDataSourceController *)self _validElement:v4])
  {
    v6 = [(REElementDataSourceController *)self _updateRelevanceProvidersForElement:v5];

    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __48__REElementDataSourceController_refreshElement___block_invoke;
    v11 = &unk_2785F9AE0;
    v5 = v6;
    v12 = v5;
    v13 = self;
    [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:&v8];
    [(REUpNextScheduler *)self->_reloadScheduler performImmediately:v8];
    v7 = v12;
LABEL_7:
  }
}

void __48__REElementDataSourceController_refreshElement___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) _sectionForElementWithIdentifier:v2];
  if ([*(a1 + 40) _containsElementIdentifier:v2])
  {
    v4 = [*(a1 + 40) _elementForIdentifier:v2];
    v5 = [v4 relevanceProviders];
    v6 = [*(a1 + 32) relevanceProviders];
    v7 = [v5 isEqualToArray:v6];

    if (!v7)
    {
      v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Don't refresh with new relevance providers userInfo:{did you mean to use reloadElement?", 0}];
      objc_exception_throw(v19);
    }

    v8 = *(a1 + 32);
    v9 = [v4 relevanceProviders];
    v10 = [v8 copyElementWithUpdatedRelevanceProviders:v9];

    [*(a1 + 40) _storeElement:v10];
    [*(a1 + 40) _namespaceElementIdentifier:v10 section:v3];
    v11 = *(a1 + 40);
    v12 = [REElementDataSourceUpdate refreshElement:v10 inSection:v3];
    [v11 _queue_scheduleUpdate:v12];

    [*(*(a1 + 40) + 56) performImmediately];
    v13 = RELogForDomain(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = *(*(a1 + 40) + 8);
      v20 = 138413058;
      v21 = v18;
      v22 = 2112;
      v23 = v2;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v17;
      _os_log_debug_impl(&dword_22859F000, v13, OS_LOG_TYPE_DEBUG, "%@ refreshed element %@ in section %@\n%@", &v20, 0x2Au);
    }
  }

  else
  {
    v4 = RELogForDomain(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__REElementDataSourceController_refreshElement___block_invoke_cold_1();
    }
  }

  v14 = RELogForDomain(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 40) + 8);
    v20 = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v2;
    _os_log_impl(&dword_22859F000, v14, OS_LOG_TYPE_DEFAULT, "%@ refreshing element %@", &v20, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeElementsWithIds:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__REElementDataSourceController_removeElementsWithIds___block_invoke;
    v6[3] = &unk_2785F9AE0;
    v7 = v5;
    v8 = self;
    [(REElementDataSourceController *)self _performOrEnqueueUpdateBlock:v6];
  }
}

void __55__REElementDataSourceController_removeElementsWithIds___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v3 = [*(a1 + 40) _allDataSourceElements];
  v4 = [v2 isSubsetOfSet:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [v2 mutableCopy];
    v6 = [*(a1 + 40) _allDataSourceElements];
    [v5 minusSet:v6];

    v7 = [v2 mutableCopy];
    [v7 minusSet:v5];
    v8 = RELogForDomain(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__REElementDataSourceController_removeElementsWithIds___block_invoke_cold_1(v5);
    }

    v2 = v7;
  }

  if ([v2 count])
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v45 = v2;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v60;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v59 + 1) + 8 * i);
          v16 = [*(a1 + 40) _elementForIdentifier:v15];
          if (v16)
          {
            [v9 addObject:v16];
            v17 = RELogForDomain(2);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = *(*(a1 + 40) + 8);
              *buf = 138412802;
              v67 = v18;
              v68 = 2112;
              v69 = v15;
              v70 = 2112;
              v71 = v16;
              _os_log_debug_impl(&dword_22859F000, v17, OS_LOG_TYPE_DEBUG, "%@ removed element %@\n%@", buf, 0x20u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v12);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v56;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v56 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(a1 + 40) _removeElementIdentifier:*(*(&v55 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v21);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v9;
    v24 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v52;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v52 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v51 + 1) + 8 * k);
          v29 = *(a1 + 40);
          v30 = [v28 identifier];
          v31 = [v29 _dataSourceIdentifierFromIdentifier:v30];

          v32 = [*(a1 + 40) _sectionForElementWithIdentifier:v31];
          v33 = *(a1 + 40);
          v34 = [REElementDataSourceUpdate removeElement:v28 inSection:v32];
          [v33 _queue_scheduleUpdate:v34];
        }

        v25 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v25);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v19;
    v36 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v47 + 1) + 8 * m);
          [*(a1 + 40) _removeElementForIdentifier:v40];
          [*(a1 + 40) _setSection:0 forElementWithIdentifier:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v37);
    }

    v2 = v45;
  }

  v41 = RELogForDomain(2);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(*(a1 + 40) + 8);
    v43 = REElementsIdsLoggableString(*(a1 + 32));
    *buf = 138412546;
    v67 = v42;
    v68 = 2112;
    v69 = v43;
    _os_log_impl(&dword_22859F000, v41, OS_LOG_TYPE_DEFAULT, "%@ removing elements %@", buf, 0x16u);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_performOrEnqueueUpdateBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__REElementDataSourceController__performOrEnqueueUpdateBlock___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__REElementDataSourceController__performOrEnqueueUpdateBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 144) & 1) == 0)
  {
    if (*(v2 + 104) == 1)
    {
      v3 = *(v2 + 112);
      v5 = MEMORY[0x22AABC5E0](*(a1 + 40));
      [v3 addObject:v5];
    }

    else
    {
      v4 = *(*(a1 + 40) + 16);

      v4();
    }
  }
}

- (void)_queue_invalidateSections:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REElementDataSourceController *)self _defaultDataSourceQOS];
  v9 = [MEMORY[0x277CBEB58] setWithArray:v7];

  [v9 intersectSet:self->_supportedSections];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__REElementDataSourceController__queue_invalidateSections_completion___block_invoke;
  v11[3] = &unk_2785F9A40;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(REElementDataSourceController *)self _queue_reloadWithQOS:v8 qosOffset:0 forceReload:0 sections:v9 completion:v11];
}

void __70__REElementDataSourceController__queue_invalidateSections_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) performImmediately];
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2)
    {
      v4 = v3[2];
      v5 = *(a1 + 40);

      v4(v5);
    }

    else
    {
      v6 = *(*(a1 + 32) + 40);

      dispatch_async(v6, v3);
    }
  }
}

- (void)_queue_purgeContentWithCompletion:(id)a3
{
  v4 = a3;
  [(REElementDataSourceController *)self _queue_reloadWithQOS:[(REElementDataSourceController *)self _defaultDataSourceQOS] qosOffset:0 forceReload:0 operations:&__block_literal_global_96 completion:v4];
}

- (void)_queue_reloadWithQOS:(unsigned int)a3 qosOffset:(int)a4 forceReload:(BOOL)a5 operations:(id)a6 completion:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = v13;
  if (self->_willUnload)
  {
    if (v13)
    {
      v13[2](v13);
    }
  }

  else if ([(REElementDataSource *)self->_dataSource isRunning])
  {
    if (self->_isPerformingReload)
    {
      v15 = RELogForDomain(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        loggingHeader = self->_loggingHeader;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = loggingHeader;
        _os_log_impl(&dword_22859F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Already performing a reload. Postponing the reload", &buf, 0xCu);
      }

      objc_initWeak(&buf, self->_reloadScheduler);
      enqueuedBlocks = self->_enqueuedBlocks;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke;
      v40[3] = &unk_2785F9A90;
      objc_copyWeak(&v41, &buf);
      v18 = MEMORY[0x22AABC5E0](v40);
      [(NSMutableArray *)enqueuedBlocks addObject:v18];

      if (v14)
      {
        v14[2](v14);
      }

      objc_destroyWeak(&v41);
      objc_destroyWeak(&buf);
    }

    else
    {
      dataSource = self->_dataSource;
      v22 = [objc_opt_class() wantsAutomaticFetching];
      v23 = v22;
      self->_isPerformingReload = 1;
      if (v22)
      {
        [(REElementDataSource *)self->_dataSource beginFetchingData];
      }

      v24 = RELogForDomain(2);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_loggingHeader;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_22859F000, v24, OS_LOG_TYPE_DEFAULT, "%@ request elements", &buf, 0xCu);
      }

      v26 = objc_alloc_init(REExpectation);
      v27 = [MEMORY[0x277CBEB38] dictionary];
      if (v12)
      {
        v12[2](v12, v27, v26);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v43 = 0x2020000000;
      v44 = a5;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_98;
      v33[3] = &unk_2785FA5A8;
      v33[4] = self;
      v28 = v27;
      v39 = v23;
      v34 = v28;
      p_buf = &buf;
      v37 = a3;
      v38 = a4;
      v35 = v14;
      v29 = MEMORY[0x22AABC5E0](v33);
      if ([(REExpectation *)v26 outstandingOperations])
      {
        queue = self->_queue;
        v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, a4, v29);
        [(REExpectation *)v26 notifyOperationsCompleteOnQueue:queue block:v31];
      }

      else
      {
        *(*(&buf + 1) + 24) = 1;
        v29[2](v29);
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v19 = RELogForDomain(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_loggingHeader;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_22859F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Trying to reload while paused. Postponing the reload", &buf, 0xCu);
    }

    self->_wantsReloadWhilePaused = 1;
    if (v14)
    {
      v14[2](v14);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained schedule];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_98(uint64_t a1)
{
  v1 = a1;
  v80 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v2 = *(v1 + 32);
  v3 = [v2[2] allObjects];
  v4 = [v2 _groupElements:v3 bySections:*(*(v1 + 32) + 24)];

  [*(*(v1 + 32) + 16) removeAllObjects];
  [*(*(v1 + 32) + 24) removeAllObjects];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_2;
  v71[3] = &unk_2785FA530;
  v5 = *(v1 + 40);
  v71[4] = *(v1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v71];
  v6 = *(v1 + 32);
  v7 = [v6[2] allObjects];
  v8 = [v6 _groupElements:v7 bySections:*(*(v1 + 32) + 24)];

  if ([v8 count] || objc_msgSend(v4, "count"))
  {
    v49 = v8;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_100;
    v68[3] = &unk_2785FA558;
    v10 = v9;
    v11 = *(v1 + 32);
    v48 = v10;
    v69 = v10;
    v70 = v11;
    v50 = v4;
    [v4 enumerateKeysAndObjectsUsingBlock:v68];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(v1 + 32) + 32), "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v13 = [*(v1 + 32) allElements];
    v14 = [v13 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v65;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v64 + 1) + 8 * i);
          v19 = [v18 identifier];
          [v12 addObject:v19];

          v20 = RELogForDomain(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = v1;
            v22 = *(*(v1 + 32) + 8);
            v23 = [v18 identifier];
            *buf = 138412802;
            v74 = v22;
            v1 = v21;
            v75 = 2112;
            v76 = v23;
            v77 = 2112;
            v78 = v18;
            _os_log_debug_impl(&dword_22859F000, v20, OS_LOG_TYPE_DEBUG, "%@ removed element %@\n%@", buf, 0x20u);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v15);
    }

    v24 = RELogForDomain(2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(v1 + 32) + 8);
      v26 = REElementsIdsLoggableString(v12);
      *buf = 138412546;
      v74 = v25;
      v75 = 2112;
      v76 = v26;
      _os_log_impl(&dword_22859F000, v24, OS_LOG_TYPE_DEFAULT, "%@ removing elements due to reload %@", buf, 0x16u);
    }

    [*(*(v1 + 32) + 32) removeAllObjects];
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v1 + 40), "count")}];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_102;
    v62[3] = &unk_2785FA580;
    v28 = *(v1 + 40);
    v62[4] = *(v1 + 32);
    v29 = v27;
    v63 = v29;
    [v28 enumerateKeysAndObjectsUsingBlock:v62];
    v30 = RELogForDomain(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(v1 + 32) + 8);
      v32 = REElementsIdsLoggableString(v29);
      *buf = 138412546;
      v74 = v31;
      v75 = 2112;
      v76 = v32;
      _os_log_impl(&dword_22859F000, v30, OS_LOG_TYPE_DEFAULT, "%@ inserting elements due to reload %@", buf, 0x16u);
    }

    v33 = [MEMORY[0x277CBEB38] dictionary];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_103;
    v59[3] = &unk_2785FA558;
    v34 = *(v1 + 32);
    v60 = v33;
    v61 = v34;
    v35 = v33;
    v8 = v49;
    [v49 enumerateKeysAndObjectsUsingBlock:v59];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_2_104;
    v58[3] = &unk_2785FA530;
    v58[4] = *(v1 + 32);
    [v48 enumerateKeysAndObjectsUsingBlock:v58];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_3;
    v57[3] = &unk_2785FA530;
    v57[4] = *(v1 + 32);
    [v35 enumerateKeysAndObjectsUsingBlock:v57];

    v4 = v50;
  }

  if (*(v1 + 72) == 1)
  {
    [*(*(v1 + 32) + 176) finishFetchingData];
  }

  *(*(v1 + 32) + 104) = 0;
  v36 = [*(*(v1 + 32) + 112) copy];
  [*(*(v1 + 32) + 112) removeAllObjects];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v53 objects:v72 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v54;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(v37);
        }

        (*(*(*(&v53 + 1) + 8 * j) + 16))();
      }

      v39 = [v37 countByEnumeratingWithState:&v53 objects:v72 count:16];
    }

    while (v39);
  }

  if (*(*(*(v1 + 56) + 8) + 24) == 1 && ([*(*(v1 + 32) + 56) performImmediately] & 1) == 0)
  {
    v43 = *(*(v1 + 32) + 40);
    v44 = *(v1 + 64);
    v45 = *(v1 + 68);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_4;
    block[3] = &unk_2785FA040;
    v52 = *(v1 + 48);
    v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v44, v45, block);
    dispatch_async(v43, v46);
  }

  else
  {
    v42 = *(v1 + 48);
    if (v42)
    {
      (*(v42 + 16))();
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) identifier];
        [*(a1 + 32) _addElementIdentifier:v11];
        [*(a1 + 32) _setSection:v5 forElementWithIdentifier:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }

  v12 = RELogForDomain(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 8);
    v14 = REElementsLoggableString(v6);
    *buf = 138412802;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_22859F000, v12, OS_LOG_TYPE_DEFAULT, "%@ received elements %@ for section %@", buf, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_100(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _queue_elementsForIds:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138413058;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        [*(a1 + 32) _storeElement:{v11, v18}];
        v12 = *(a1 + 40);
        v13 = [v11 identifier];
        [v12 addObject:v13];

        [*(a1 + 32) _namespaceElementIdentifier:v11 section:v5];
        v14 = RELogForDomain(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(a1 + 32) + 8);
          v16 = [v11 identifier];
          *buf = v18;
          v25 = v15;
          v26 = 2112;
          v27 = v16;
          v28 = 2112;
          v29 = v11;
          v30 = 2112;
          v31 = v5;
          _os_log_impl(&dword_22859F000, v14, OS_LOG_TYPE_DEFAULT, "%@ added element %@ to section %@\n%@", buf, 0x2Au);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_103(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _queue_elementsForIds:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_2_104(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [REElementDataSourceUpdate removeElement:*(*(&v14 + 1) + 8 * v10) inSection:v5];
        [v11 _queue_scheduleUpdate:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [REElementDataSourceUpdate insertElement:*(*(&v14 + 1) + 8 * v10) inSection:v5];
        [v11 _queue_scheduleUpdate:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __98__REElementDataSourceController__queue_reloadWithQOS_qosOffset_forceReload_operations_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_performContentInvalidateWithElement:(id)a3 expectation:(id)a4 sections:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v8 = a4;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2810000000;
  v45[3] = &unk_2286CA6BA;
  v46 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a5;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v27 = *v42;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        [v8 beginOperation];
        v12 = [REBlockSentinel alloc];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke;
        v39[3] = &unk_2785F9AE0;
        v39[4] = self;
        v13 = v8;
        v40 = v13;
        v14 = [(REBlockSentinel *)v12 initWithFailureBlock:v39];
        v15 = NSStringFromClass(self->_dataSourceClass);
        v29 = v13;
        v16 = v14;
        v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
        queue = self->_queue;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_2;
        v37[3] = &unk_2785FA5D0;
        v19 = v15;
        v38 = v19;
        v20 = [REUpNextTimer timerWithFireDate:v17 queue:queue block:v37];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_3;
        v30[3] = &unk_2785FA620;
        v30[4] = self;
        v36 = v45;
        v31 = v28;
        v32 = v11;
        v21 = v16;
        v33 = v21;
        v22 = v20;
        v34 = v22;
        v35 = v29;
        v23 = MEMORY[0x22AABC5E0](v30);
        v24 = [(REElementDataSourceController *)self dataSource];
        [v24 getElementsInSection:v11 withHandler:v23];

        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(v45, 8);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBE648];
  v3 = NSStringFromSelector(sel_getElementsInSection_withHandler_);
  v12 = *(*(a1 + 32) + 168);
  RERaiseInternalException(v2, @"%@ handler of data source %@ was never called", v4, v5, v6, v7, v8, v9, v3);

  v10 = *(a1 + 40);

  return [v10 endOperation];
}

void __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isValid])
  {
    v3 = *MEMORY[0x277CBE648];
    v11 = NSStringFromSelector(sel_getElementsInSection_withHandler_);
    v10 = *(a1 + 32);
    RERaiseInternalException(v3, @"%@ handler of data source %@ timed out", v4, v5, v6, v7, v8, v9, v11);
  }
}

void __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_4;
  block[3] = &unk_2785FA5F8;
  v18 = *(a1 + 80);
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  v6 = v11.i64[1];
  v7.i64[0] = v10;
  v7.i64[1] = v5;
  v8 = vextq_s8(v7, v11, 8uLL);
  v7.i64[1] = v11.i64[1];
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 64);
  v16 = v3;
  v17 = *(a1 + 72);
  v9 = v3;
  dispatch_async(v4, block);
}

void __97__REElementDataSourceController__queue_performContentInvalidateWithElement_expectation_sections___block_invoke_4(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = *MEMORY[0x277CCA5B0];
    v4 = NSStringFromSelector(sel_getElementsInSection_withHandler_);
    v27 = *(*(a1 + 48) + 168);
    v28 = v4;
    RERaiseInternalException(v3, @"%@ handler of data source %@ cannot be called multiple times", v5, v6, v7, v8, v9, v10, v4);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [*(a1 + 56) complete];
    [*(a1 + 64) invalidate];
    v12 = [*(a1 + 48) _elementsByRemovingInvalidElements:*(a1 + 72)];
    v13 = v12;
    v14 = MEMORY[0x277CBEBF8];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(a1 + 48) _updateRelevanceProvidersForElement:*(*(&v29 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    v23 = *(a1 + 48);
    v24 = [v16 copy];
    v25 = [v23 _shallowCopiedElements:v24];

    [*(a1 + 32) setObject:v25 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 80) endOperation];
    os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));

    v26 = *MEMORY[0x277D85DE8];
  }
}

- (id)_groupElements:(id)a3 bySections:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = *MEMORY[0x277CBE658];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v21 = [v6 objectForKeyedSubscript:v14];
        if (v21)
        {
          v22 = [v7 objectForKeyedSubscript:v21];

          if (!v22)
          {
            v23 = [MEMORY[0x277CBEB18] array];
            [v7 setObject:v23 forKeyedSubscript:v21];
          }

          v24 = [v7 objectForKeyedSubscript:v21];
          [v24 addObject:v14];
        }

        else
        {
          RERaiseInternalException(v12, @"Cannot find section for element %@.\n%@", v15, v16, v17, v18, v19, v20, v14);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = [v7 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_queue_scheduleUpdate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_updates addObject:v4];
  [(REUpNextScheduler *)self->_updateScheduler schedule];
  v5 = RELogForDomain(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(REElementDataSourceController *)self _queue_scheduleUpdate:v4, v5];
  }
}

- (void)_queue_performUpdates
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_willUnload)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = self->_updates;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 section];
          v11 = [v3 objectForKeyedSubscript:v10];

          if (!v11)
          {
            v12 = [MEMORY[0x277CBEB18] array];
            [v3 setObject:v12 forKeyedSubscript:v10];
          }

          v13 = [v3 objectForKeyedSubscript:v10];
          [v13 addObject:v9];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_updates removeAllObjects];
    [(REElementDataSource *)self->_dataSource beginFetchingData];
    v14 = [(REElementDataSourceController *)self delegate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__REElementDataSourceController__queue_performUpdates__block_invoke;
    v17[3] = &unk_2785F9AE0;
    v18 = v3;
    v19 = self;
    v15 = v3;
    [v14 elementDataSourceController:self performBatchUpdates:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __54__REElementDataSourceController__queue_performUpdates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__REElementDataSourceController__queue_performUpdates__block_invoke_2;
  v4[3] = &unk_2785FA648;
  v4[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  return [*(*(a1 + 40) + 176) finishFetchingData];
}

- (void)_queue_processUpdates:(id)a3 forSection:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v7;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    v34 = v8;
    v35 = v6;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        v15 = [v14 type];
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v16 = [v14 element];
            v17 = [v16 identifier];
            v22 = [v9 objectForKeyedSubscript:v17];

            if (v22)
            {
              v16 = v16;
              v23 = v9;
              v24 = [v9 objectForKeyedSubscript:v17];
              v25 = [v24 relevanceProviders];
              v26 = [v16 relevanceProviders];
              v27 = [v25 isEqualToArray:v26];

              v28 = v16;
              if (v27)
              {
                v29 = [v24 relevanceProviders];
                v28 = [v16 copyElementWithUpdatedRelevanceProviders:v29];
              }

              v9 = v23;
              [v23 removeObjectForKey:v17];
              v8 = v34;
              [v34 setObject:v28 forKeyedSubscript:v17];

              v6 = v35;
              goto LABEL_24;
            }

            v19 = v6;
          }

          else
          {
            if (v15 != 4)
            {
              continue;
            }

            v16 = [v14 element];
            v17 = [v16 identifier];
            v19 = v36;
          }

          goto LABEL_23;
        }

        if (!v15)
        {
          v16 = [v14 element];
          v17 = [v16 identifier];
          v20 = [v6 objectForKeyedSubscript:v17];

          v19 = v6;
          if (!v20)
          {
            v21 = [v36 objectForKeyedSubscript:v17];

            v19 = v8;
            if (v21)
            {
              [v36 removeObjectForKey:v17];
              v19 = v8;
            }
          }

          goto LABEL_23;
        }

        if (v15 != 1)
        {
          continue;
        }

        v16 = [v14 element];
        v17 = [v16 identifier];
        [v8 removeObjectForKey:v17];
        [v36 removeObjectForKey:v17];
        v18 = [v6 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = v9;
LABEL_23:
          [v19 setObject:v16 forKeyedSubscript:v17];
          goto LABEL_24;
        }

        [v6 removeObjectForKey:v17];
LABEL_24:
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v11);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke;
  v42[3] = &unk_2785FA670;
  v42[4] = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_2;
  v40[3] = &unk_2785FA698;
  v40[4] = self;
  v41 = v32;
  v30 = v32;
  [v6 enumerateKeysAndObjectsUsingBlock:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_3;
  v39[3] = &unk_2785FA670;
  v39[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v39];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_4;
  v38[3] = &unk_2785FA670;
  v38[4] = self;
  [v36 enumerateKeysAndObjectsUsingBlock:v38];

  v31 = *MEMORY[0x277D85DE8];
}

void __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegate];
  [v6 elementDataSourceController:*(a1 + 32) didRemoveElement:v5];
}

void __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegate];
  [v6 elementDataSourceController:*(a1 + 32) didAddElement:v5 toSection:*(a1 + 40)];
}

void __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegate];
  [v6 elementDataSourceController:*(a1 + 32) didReloadElement:v5];
}

void __66__REElementDataSourceController__queue_processUpdates_forSection___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegate];
  [v6 elementDataSourceController:*(a1 + 32) didRefreshElement:v5];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    v8[8] = v3;
    v8[9] = v4;
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__REElementDataSourceController_setState___block_invoke;
    v8[3] = &unk_2785F9C80;
    v8[4] = self;
    v8[5] = a3;
    dispatch_async(queue, v8);
    self->_state = a3;
  }
}

void __42__REElementDataSourceController_setState___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) _isWhitelisted] & 1) == 0 && !*(a1 + 40))
  {
    [*v2 _queue_resume];
  }

  [*(*(a1 + 32) + 176) setState:*(a1 + 40)];
  v3 = RELogForDomain(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__REElementDataSourceController_setState___block_invoke_cold_1(v2);
  }
}

- (void)elementWillBecomeVisible:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__REElementDataSourceController_elementWillBecomeVisible___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__REElementDataSourceController_elementWillBecomeVisible___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _dataSourceIdentifierFromIdentifier:v3];

  [*(*(a1 + 32) + 176) elementWithIdentifierWillBecomeVisible:v4];
  v5 = RELogForDomain(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "%@ will become visible: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)elementDidBecomeHidden:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__REElementDataSourceController_elementDidBecomeHidden___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __56__REElementDataSourceController_elementDidBecomeHidden___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _dataSourceIdentifierFromIdentifier:v3];

  [*(*v1 + 176) elementWithIdentifierDidBecomeHidden:v4];
  v5 = RELogForDomain(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __56__REElementDataSourceController_elementDidBecomeHidden___block_invoke_cold_1(v1);
  }
}

- (BOOL)hasElementWithId:(id)a3 inSectionWithIdentifier:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(REElementDataSourceController *)self _sectionForElementWithIdentifier:v8];

  LOBYTE(v8) = [v9 isEqualToString:v7];
  return v8;
}

- (void)fetchElementWithIdentifierVisible:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__REElementDataSourceController_fetchElementWithIdentifierVisible_withHandler___block_invoke;
    block[3] = &unk_2785F99C8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __79__REElementDataSourceController_fetchElementWithIdentifierVisible_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _elementForIdentifier:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v4 = [WeakRetained configuration];
  v5 = [v4 observerQueue];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__REElementDataSourceController_fetchElementWithIdentifierVisible_withHandler___block_invoke_2;
  block[3] = &unk_2785F99C8;
  block[4] = *(a1 + 32);
  v11 = v2;
  v12 = *(a1 + 48);
  v9 = v2;
  dispatch_async(v7, block);
}

uint64_t __79__REElementDataSourceController_fetchElementWithIdentifierVisible_withHandler___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 192));
  [WeakRetained elementDataSourceController:a1[4] isElementVisible:a1[5]];

  v3 = *(a1[6] + 16);

  return v3();
}

- (id)_queue_elementsForIds:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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

        v11 = [(REElementDataSourceController *)self _elementForIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)allElements
{
  v2 = [(NSMutableDictionary *)self->_dataSourceElementIdentifierMap allValues];
  v3 = [v2 copy];

  return v3;
}

- (void)_loadLoggingHeader
{
  v3 = NSStringFromClass(self->_dataSourceClass);
  v8 = [v3 mutableCopy];

  [v8 replaceOccurrencesOfString:@"RE" withString:&stru_283B97458 options:0 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"NTK" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"UpNext" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"DataSource" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"Watch" withString:&stru_283B97458 options:1 range:{0, objc_msgSend(v8, "length")}];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v8 lowercaseString];
  v6 = [v4 stringWithFormat:@"[DSC: %@]", v5];
  loggingHeader = self->_loggingHeader;
  self->_loggingHeader = v6;
}

- (REElementDataSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)name
{
  v2 = NSStringFromClass(self->_dataSourceClass);
  v3 = [v2 stringByAppendingString:@"Controller"];

  return v3;
}

- (NSArray)allProvidedElements
{
  v2 = [(NSMutableDictionary *)self->_dataSourceElementIdentifierMap allValues];
  v3 = [v2 copy];

  return v3;
}

void __39__REElementDataSourceController_resume__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v1, v2, "%@ SKIPPING open data source", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __38__REElementDataSourceController_pause__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v1, v2, "%@ SKIPPING close data source", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addElements:toSectionWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_22859F000, v0, OS_LOG_TYPE_ERROR, "Trying to add element to unsupported section %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __69__REElementDataSourceController_addElements_toSectionWithIdentifier___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = REElementsIdsLoggableString(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_22859F000, v2, v3, "Trying to add already existing elements with ids %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__REElementDataSourceController_reloadElement___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __48__REElementDataSourceController_refreshElement___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __55__REElementDataSourceController_removeElementsWithIds___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 allObjects];
  v2 = REElementsIdsLoggableString(v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_22859F000, v3, v4, "Trying to remove nonexistant elements with ids %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleUpdate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = REStringForUpdateType([a2 type]);
  v7 = [a2 element];
  v8 = [a2 section];
  v12 = 138413058;
  v13 = v5;
  OUTLINED_FUNCTION_5();
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v17 = 2048;
  v18 = v10;
  _os_log_debug_impl(&dword_22859F000, a3, OS_LOG_TYPE_DEBUG, "%@ scheduled update %@ of element %@ in section %lu", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

void __42__REElementDataSourceController_setState___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __56__REElementDataSourceController_elementDidBecomeHidden___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end