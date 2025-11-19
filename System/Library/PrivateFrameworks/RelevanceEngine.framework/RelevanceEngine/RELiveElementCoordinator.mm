@interface RELiveElementCoordinator
- (BOOL)elementDataSourceController:(id)a3 isElementVisible:(id)a4;
- (RELiveElementCoordinator)initWithRelevanceEngine:(id)a3;
- (double)_mostRecentRequestForAttention:(id)a3;
- (float)rankingScoreForElement:(id)a3;
- (id)_predictionForElement:(id)a3;
- (id)createdDateForElement:(id)a3;
- (id)elementForElementId:(id)a3;
- (id)featureProviderForElement:(id)a3;
- (id)featureProviderForElementAtPath:(id)a3;
- (id)predictionForElementAtPath:(id)a3;
- (id)rankingStartDateForElement:(id)a3;
- (id)rankingTierForElement:(id)a3;
- (void)_enumerateSectionsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)_queue_addElement:(id)a3 toSection:(id)a4;
- (void)_queue_refreshElement:(id)a3;
- (void)_queue_reload;
- (void)_queue_reloadElement:(id)a3;
- (void)_queue_removeElement:(id)a3;
- (void)_queue_scheduleContentUpdate:(BOOL)a3;
- (void)addElement:(id)a3 toSection:(id)a4;
- (void)dataSource:(id)a3 didBeginActivity:(id)a4;
- (void)dataSource:(id)a3 didFinishActivity:(id)a4;
- (void)dataSourceManager:(id)a3 didLoadDataSourceController:(id)a4;
- (void)dataSourceManager:(id)a3 willUnloadDataSourceController:(id)a4;
- (void)elementDataSourceController:(id)a3 didAddElement:(id)a4 toSection:(id)a5;
- (void)elementDataSourceController:(id)a3 didRefreshElement:(id)a4;
- (void)elementDataSourceController:(id)a3 didReloadElement:(id)a4;
- (void)elementDataSourceController:(id)a3 didRemoveElement:(id)a4;
- (void)elementDataSourceController:(id)a3 performBatchUpdates:(id)a4;
- (void)relevanceEngine:(id)a3 didInsertElement:(id)a4 atPath:(id)a5;
- (void)relevanceEngine:(id)a3 didMoveElement:(id)a4 fromPath:(id)a5 toPath:(id)a6;
- (void)relevanceEngine:(id)a3 didRemoveElement:(id)a4 atPath:(id)a5;
- (void)relevanceEngine:(id)a3 didUpdateRelevanceOfElement:(id)a4;
- (void)removeElement:(id)a3;
@end

@implementation RELiveElementCoordinator

- (RELiveElementCoordinator)initWithRelevanceEngine:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = RELiveElementCoordinator;
  v5 = [(REElementCoordinator *)&v39 initWithRelevanceEngine:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(RERelevanceEngineSubsystem *)v5 queue];
    controllerQueue = v6->_controllerQueue;
    v6->_controllerQueue = v7;

    v9 = [v4 configuration];
    v10 = [v9 observerQueue];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      callbackQueue = v6->_callbackQueue;
      v6->_callbackQueue = v12;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
      callbackQueue = v6->_callbackQueue;
      v6->_callbackQueue = v14;
    }

    v16 = [MEMORY[0x277CCA940] set];
    remainingInsertOperations = v6->_remainingInsertOperations;
    v6->_remainingInsertOperations = v16;

    v18 = [MEMORY[0x277CCA940] set];
    remainingRemoveOperations = v6->_remainingRemoveOperations;
    v6->_remainingRemoveOperations = v18;

    v6->_currentReloadTryCount = 0;
    v20 = [MEMORY[0x277CBEB58] set];
    refreshedElements = v6->_refreshedElements;
    v6->_refreshedElements = v20;

    v6->_reloadImmediately = 1;
    v22 = [MEMORY[0x277CBEB38] dictionary];
    elementIdElementMap = v6->_elementIdElementMap;
    v6->_elementIdElementMap = v22;

    v24 = [MEMORY[0x277CBEB38] dictionary];
    elementIdDateRelevantMap = v6->_elementIdDateRelevantMap;
    v6->_elementIdDateRelevantMap = v24;

    v26 = [[REElementRelevanceEngine alloc] initWithRelevanceEngine:v4];
    relevanceEngine = v6->_relevanceEngine;
    v6->_relevanceEngine = v26;

    [(REElementRelevanceEngine *)v6->_relevanceEngine setDelegate:v6];
    v28 = [v4 logger];
    [v28 addLoggable:v6->_relevanceEngine];

    v29 = [v4 configuration];
    v30 = [v29 wantsImmutableContent];

    objc_initWeak(&location, v6);
    v31 = v6->_controllerQueue;
    if (v30)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 0.2;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __52__RELiveElementCoordinator_initWithRelevanceEngine___block_invoke;
    v36[3] = &unk_2785F9A90;
    objc_copyWeak(&v37, &location);
    v33 = [REUpNextScheduler schedulerWithQueue:v31 delay:v36 updateBlock:v32];
    scheduler = v6->_scheduler;
    v6->_scheduler = v33;

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __52__RELiveElementCoordinator_initWithRelevanceEngine___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_reload];
    WeakRetained = v3;
    if (v3[15])
    {
      v2 = 0;
      do
      {
        [v3 endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v3];
        WeakRetained = v3;
        ++v2;
      }

      while (v2 < v3[15]);
    }

    WeakRetained[15] = 0;
  }
}

- (void)_enumerateSectionsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__RELiveElementCoordinator__enumerateSectionsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_2785FCCE8;
  v10 = v6;
  v8 = v6;
  [v7 enumerateSectionDescriptorsWithOptions:a3 includeHistoric:1 usingBlock:v9];
}

void __69__RELiveElementCoordinator__enumerateSectionsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  (*(v2 + 16))(v2, v3);
}

- (void)dataSourceManager:(id)a3 didLoadDataSourceController:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  v6 = [v5 dataSource];
  [(RERelevanceEngineSubsystem *)self trackObject:v6];

  v7 = [v5 dataSource];

  [v7 setActivityDelegate:self];
}

- (void)dataSourceManager:(id)a3 willUnloadDataSourceController:(id)a4
{
  v5 = a4;
  v6 = [v5 elementOperationQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __77__RELiveElementCoordinator_dataSourceManager_willUnloadDataSourceController___block_invoke;
  v13 = &unk_2785F9AE0;
  v14 = v5;
  v15 = self;
  v7 = v5;
  dispatch_async(v6, &v10);

  v8 = [v7 dataSource];
  [v8 setActivityDelegate:0];

  v9 = [v7 dataSource];
  [(RERelevanceEngineSubsystem *)self withdrawObject:v9];
}

void __77__RELiveElementCoordinator_dataSourceManager_willUnloadDataSourceController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allElements];
  v3 = [v2 copy];

  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__RELiveElementCoordinator_dataSourceManager_willUnloadDataSourceController___block_invoke_2;
  v6[3] = &unk_2785F9AE0;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 _onqueue_async:v6];
}

void __77__RELiveElementCoordinator_dataSourceManager_willUnloadDataSourceController___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) elementDataSourceController:0 didRemoveElement:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addElement:(id)a3 toSection:(id)a4
{
  controllerQueue = self->_controllerQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_addElement:v8 toSection:v7];
}

- (void)removeElement:(id)a3
{
  controllerQueue = self->_controllerQueue;
  v5 = a3;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_removeElement:v5];
}

- (id)predictionForElementAtPath:(id)a3
{
  v4 = [(REElementCoordinator *)self elementAtPath:a3];
  v5 = [(RELiveElementCoordinator *)self _predictionForElement:v4];

  return v5;
}

- (double)_mostRecentRequestForAttention:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [a3 relevanceProviders];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 feature];
          v12 = [v11 name];
          v13 = [v12 isEqual:@"smartStackLiveActivityUpdateDate"];

          if (v13)
          {
            v14 = [v10 value];
            v7 = fmax(v7, REDoubleValueForTaggedPointer(v14, v15));
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (float)rankingScoreForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  controllerQueue = self->_controllerQueue;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke;
  block[3] = &unk_2785F9F58;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[6];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = *(*(a1 + 32) + 96);
    v6 = [*(a1 + 40) identifier];
    [v5 setObject:v4 forKeyedSubscript:v6];

    v7 = RELogForDomain(22);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _mostRecentRequestForAttention:*(a1 + 40)];
  if (v8 <= 0.0)
  {
    v9 = v4;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];

    v10 = *(*(a1 + 32) + 96);
    v11 = [*(a1 + 40) identifier];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v12 = RELogForDomain(22);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_2();
    }
  }

  v13 = [*(*(a1 + 32) + 80) updatedRankingDateForElement:*(a1 + 40)];
  v14 = v13;
  if (v13)
  {
    v15 = v13;

    v16 = *(*(a1 + 32) + 96);
    v17 = [*(a1 + 40) identifier];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = RELogForDomain(22);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_3();
    }
  }

  else
  {
    v15 = v9;
  }

  v19 = RELogForDomain(22);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_4();
  }

  [*(*(a1 + 32) + 80) rankingScoreForElement:*(a1 + 40) createdAt:v15];
  *(*(*(a1 + 48) + 8) + 24) = v20;
}

- (id)rankingTierForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  controllerQueue = self->_controllerQueue;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RELiveElementCoordinator_rankingTierForElement___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__RELiveElementCoordinator_rankingTierForElement___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) rankingTierForElement:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = RELogForDomain(22);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __50__RELiveElementCoordinator_rankingTierForElement___block_invoke_cold_1();
  }
}

- (id)createdDateForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  controllerQueue = self->_controllerQueue;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RELiveElementCoordinator_createdDateForElement___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__RELiveElementCoordinator_createdDateForElement___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v6 = [*(a1 + 40) identifier];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)rankingStartDateForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  controllerQueue = self->_controllerQueue;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RELiveElementCoordinator_rankingStartDateForElement___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__RELiveElementCoordinator_rankingStartDateForElement___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) rankingStartDateForElement:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = RELogForDomain(22);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__RELiveElementCoordinator_rankingStartDateForElement___block_invoke_cold_1();
  }
}

- (id)featureProviderForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  controllerQueue = self->_controllerQueue;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RELiveElementCoordinator_featureProviderForElement___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __54__RELiveElementCoordinator_featureProviderForElement___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) featureProviderForElement:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)featureProviderForElementAtPath:(id)a3
{
  v4 = [(REElementCoordinator *)self elementAtPath:a3];
  v5 = [(RELiveElementCoordinator *)self featureProviderForElement:v4];

  return v5;
}

- (id)_predictionForElement:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  controllerQueue = self->_controllerQueue;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RELiveElementCoordinator__predictionForElement___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(controllerQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __50__RELiveElementCoordinator__predictionForElement___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) predictionForElement:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)elementDataSourceController:(id)a3 performBatchUpdates:(id)a4
{
  v6 = a3;
  v7 = a4;
  controllerQueue = self->_controllerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__RELiveElementCoordinator_elementDataSourceController_performBatchUpdates___block_invoke;
  v11[3] = &unk_2785F9A40;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(controllerQueue, v11);
}

void __76__RELiveElementCoordinator_elementDataSourceController_performBatchUpdates___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__RELiveElementCoordinator_elementDataSourceController_performBatchUpdates___block_invoke_2;
  v2[3] = &unk_2785F9A40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  _os_activity_initiate(&dword_22859F000, "[LEC]: Batch element updates", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __76__RELiveElementCoordinator_elementDataSourceController_performBatchUpdates___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "[LEC]: Start processing batch updates for data source controller %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v4 = RELogForDomain(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "[LEC]: Finish processing batch updates for data source controller %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)elementDataSourceController:(id)a3 didAddElement:(id)a4 toSection:(id)a5
{
  controllerQueue = self->_controllerQueue;
  v8 = a5;
  v9 = a4;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_addElement:v9 toSection:v8];
}

- (void)elementDataSourceController:(id)a3 didReloadElement:(id)a4
{
  controllerQueue = self->_controllerQueue;
  v6 = a4;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_reloadElement:v6];
}

- (void)elementDataSourceController:(id)a3 didRemoveElement:(id)a4
{
  controllerQueue = self->_controllerQueue;
  v6 = a4;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_removeElement:v6];
}

- (void)elementDataSourceController:(id)a3 didRefreshElement:(id)a4
{
  controllerQueue = self->_controllerQueue;
  v6 = a4;
  dispatch_assert_queue_V2(controllerQueue);
  [(RELiveElementCoordinator *)self _queue_refreshElement:v6];
}

- (BOOL)elementDataSourceController:(id)a3 isElementVisible:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REElementCoordinator *)self pathForElement:v7];
  v9 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__RELiveElementCoordinator_elementDataSourceController_isElementVisible___block_invoke;
  v13[3] = &unk_2785FCD10;
  v10 = v9;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  v16 = &v17;
  [(REElementCoordinator *)self enumerateObservers:v13];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

uint64_t __73__RELiveElementCoordinator_elementDataSourceController_isElementVisible___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 relevanceEngine:a1[4] isElementAtPathVisible:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)dataSource:(id)a3 didBeginActivity:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RELogForDomain(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "[LEC]: Start processing %{public}@ activity from data source %{public}@", &v10, 0x16u);
  }

  [(RERelevanceEngineSubsystem *)self beginActivity:v7 forObject:v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataSource:(id)a3 didFinishActivity:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(RERelevanceEngineSubsystem *)self endActivity:v7 forObject:v6];
  v8 = RELogForDomain(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "[LEC]: Finish processing %{public}@ activity from data source %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addElement:(id)a3 toSection:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_controllerQueue);
  if (_fetchedInternalBuildOnceToken_6 != -1)
  {
    [RELiveElementCoordinator _queue_addElement:toSection:];
  }

  if (_isInternalDevice_6 == 1)
  {
    v8 = [v6 identifier];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Reproduced rdar://107396589: Attempted to add element to section %@ without an identifier: %@", v7, v6}];
    }
  }

  v19 = @"elementId";
  v9 = [v6 identifier];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [RESignposts traceEvent:1 withMetadata:v10];

  v11 = RELogForDomain(7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [RELiveElementCoordinator _queue_addElement:v6 toSection:?];
  }

  refreshedElements = self->_refreshedElements;
  v13 = [v6 identifier];
  [(NSMutableSet *)refreshedElements removeObject:v13];

  remainingInsertOperations = self->_remainingInsertOperations;
  v15 = [v6 identifier];
  [(NSCountedSet *)remainingInsertOperations addObject:v15];

  elementIdElementMap = self->_elementIdElementMap;
  v17 = [v6 identifier];
  [(NSMutableDictionary *)elementIdElementMap setObject:v6 forKey:v17];

  [(REElementRelevanceEngine *)self->_relevanceEngine addElement:v6 section:v7];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __56__RELiveElementCoordinator__queue_addElement_toSection___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_6 = result;
  return result;
}

- (void)_queue_reloadElement:(id)a3
{
  v4 = a3;
  elementIdElementMap = self->_elementIdElementMap;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)elementIdElementMap objectForKeyedSubscript:v6];

  dispatch_assert_queue_V2(self->_controllerQueue);
  if (v7)
  {
    if (_fetchedInternalBuildOnceToken_6 != -1)
    {
      [RELiveElementCoordinator _queue_reloadElement:];
    }

    if (_isInternalDevice_6 == 1)
    {
      v8 = [v4 identifier];

      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Reproduced rdar://107396589: Attempted to reload element without an identifier: %@", v4}];
      }
    }

    v9 = RELogForDomain(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator _queue_reloadElement:v4];
    }

    v10 = self->_elementIdElementMap;
    v11 = [v4 identifier];
    [(NSMutableDictionary *)v10 setObject:v4 forKey:v11];

    v12 = MEMORY[0x277CBEB98];
    v13 = [v7 relevanceProviders];
    v14 = [v12 setWithArray:v13];

    v15 = MEMORY[0x277CBEB98];
    v16 = [v4 relevanceProviders];
    v17 = [v15 setWithArray:v16];

    if (([v14 isEqualToSet:v17]& 1) == 0)
    {
      [(REElementRelevanceEngine *)self->_relevanceEngine reloadElement:v7 withElement:v4];
    }

    relevanceEngine = self->_relevanceEngine;
    v19 = [v4 identifier];
    v20 = [(REElementRelevanceEngine *)relevanceEngine pathForElement:v19];

    if (v20)
    {
      refreshedElements = self->_refreshedElements;
      v22 = [v4 identifier];
      [(NSMutableSet *)refreshedElements removeObject:v22];

      [(RELiveElementCoordinator *)self _queue_scheduleContentUpdate:1];
    }

    else
    {
      v23 = RELogForDomain(7);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [RELiveElementCoordinator _queue_reloadElement:v4];
      }
    }
  }

  else
  {
    v14 = RELogForDomain(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [RELiveElementCoordinator _queue_reloadElement:v14];
    }
  }
}

uint64_t __49__RELiveElementCoordinator__queue_reloadElement___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_6 = result;
  return result;
}

- (void)_queue_refreshElement:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_controllerQueue);
  if (_fetchedInternalBuildOnceToken_6 != -1)
  {
    [RELiveElementCoordinator _queue_refreshElement:];
  }

  if (_isInternalDevice_6 == 1)
  {
    v5 = [v4 identifier];

    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Reproduced rdar://107396589: Attempted to refresh element without an identifier: %@", v4}];
    }
  }

  elementIdElementMap = self->_elementIdElementMap;
  v7 = [v4 identifier];
  [(NSMutableDictionary *)elementIdElementMap setObject:v4 forKey:v7];

  relevanceEngine = self->_relevanceEngine;
  v9 = [v4 identifier];
  v10 = [(REElementRelevanceEngine *)relevanceEngine pathForElement:v9];

  if (v10)
  {
    refreshedElements = self->_refreshedElements;
    v12 = [v4 identifier];
    [(NSMutableSet *)refreshedElements addObject:v12];

    [(RELiveElementCoordinator *)self _queue_scheduleContentUpdate:0];
  }

  else
  {
    v13 = RELogForDomain(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator _queue_refreshElement:v4];
    }
  }
}

uint64_t __50__RELiveElementCoordinator__queue_refreshElement___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_6 = result;
  return result;
}

- (void)_queue_removeElement:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_controllerQueue);
  if (_fetchedInternalBuildOnceToken_6 != -1)
  {
    [RELiveElementCoordinator _queue_removeElement:];
  }

  if (_isInternalDevice_6 == 1)
  {
    v5 = [v4 identifier];

    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Reproduced rdar://107396589: Attempted to remove element without an identifier: %@", v4}];
    }
  }

  v18 = @"elementId";
  v6 = [v4 identifier];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [RESignposts traceEvent:2 withMetadata:v7];

  v8 = RELogForDomain(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RELiveElementCoordinator _queue_removeElement:v4];
  }

  refreshedElements = self->_refreshedElements;
  v10 = [v4 identifier];
  [(NSMutableSet *)refreshedElements removeObject:v10];

  remainingRemoveOperations = self->_remainingRemoveOperations;
  v12 = [v4 identifier];
  [(NSCountedSet *)remainingRemoveOperations removeObject:v12];

  relevanceEngine = self->_relevanceEngine;
  v14 = [v4 identifier];
  [(REElementRelevanceEngine *)relevanceEngine removeElement:v14];

  elementIdElementMap = self->_elementIdElementMap;
  v16 = [v4 identifier];
  [(NSMutableDictionary *)elementIdElementMap removeObjectForKey:v16];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __49__RELiveElementCoordinator__queue_removeElement___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_6 = result;
  return result;
}

- (void)_queue_reload
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_controllerQueue);
  if (self->_reloadImmediately || ![(NSCountedSet *)self->_remainingRemoveOperations count]&& ![(NSCountedSet *)self->_remainingInsertOperations count])
  {
LABEL_11:
    self->_currentReloadTryCount = 0;
    self->_reloadImmediately = 0;
    v6 = [(NSMutableSet *)self->_refreshedElements copy];
    [(NSMutableSet *)self->_refreshedElements removeAllObjects];
    v7 = [(REElementRelevanceEngine *)self->_relevanceEngine sections];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__RELiveElementCoordinator__queue_reload__block_invoke;
    v20[3] = &unk_2785FCD38;
    v20[4] = self;
    v9 = v8;
    v21 = v9;
    [(RELiveElementCoordinator *)self _enumerateSectionsUsingBlock:v20];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__RELiveElementCoordinator__queue_reload__block_invoke_2;
    block[3] = &unk_2785FB070;
    block[4] = self;
    v18 = v9;
    v19 = v6;
    v11 = v6;
    v12 = v9;
    dispatch_async(callbackQueue, block);

    goto LABEL_12;
  }

  currentReloadTryCount = self->_currentReloadTryCount;
  v4 = RELogForDomain(7);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (currentReloadTryCount > 2)
  {
    if (v5)
    {
      [(RELiveElementCoordinator *)v4 _queue_reload];
    }

    goto LABEL_11;
  }

  if (v5)
  {
    v14 = [(NSCountedSet *)self->_remainingRemoveOperations count];
    v15 = [(NSCountedSet *)self->_remainingInsertOperations count];
    v16 = self->_currentReloadTryCount;
    *buf = 134218496;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_debug_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEBUG, "[LEC] Delaying reload with pending removes %lu, inserts %lu, retry count %lu", buf, 0x20u);
  }

  ++self->_currentReloadTryCount;
  [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  ++self->_scheduleCount;
  [(REUpNextScheduler *)self->_scheduler schedule];
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

void __41__RELiveElementCoordinator__queue_reload__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(*(a1 + 32) + 80) numberOfElementsInSection:?];
  v4 = [MEMORY[0x277CBEB18] array];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [RESectionPath sectionPathWithSectionName:v10 element:i];
      v7 = [*(*(a1 + 32) + 80) elementAtPath:v6];
      v8 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v7];
      if (v8)
      {
        [v4 addObject:v8];
      }
    }
  }

  v9 = [v4 copy];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
}

void __41__RELiveElementCoordinator__queue_reload__block_invoke_2(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] relevanceEngine];
  if (_fetchedInternalBuildOnceToken_6 != -1)
  {
    __41__RELiveElementCoordinator__queue_reload__block_invoke_2_cold_1();
  }

  if (_isInternalDevice_6)
  {
    DisplayDebugProbabilities = __RE_Cached_Get__DisplayDebugProbabilities(v2);

    if (DisplayDebugProbabilities)
    {
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v31 = 0u;
      obj = a1[5];
      v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v22)
      {
        v21 = *v32;
        do
        {
          v4 = 0;
          do
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = v4;
            v5 = *(*(&v31 + 1) + 8 * v4);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v6 = [a1[5] objectForKeyedSubscript:v5];
            v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v7)
            {
              v8 = v7;
              v9 = *v28;
              do
              {
                for (i = 0; i != v8; ++i)
                {
                  if (*v28 != v9)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v11 = *(*(&v27 + 1) + 8 * i);
                  v12 = [a1[4] _predictionForElement:v11];
                  v13 = MEMORY[0x277CCACA8];
                  [v12 probability];
                  v15 = [v13 stringWithFormat:@"%f", v14];
                  v16 = [v11 content];
                  if ([v16 style] != 3 || objc_msgSend(v16, "style"))
                  {
                    [v16 setStyle:0];
                  }

                  [v16 setDescription2Text:0];
                  v17 = [RESimpleTextContentProvider textContentProviderWithText:v15];
                  [v16 setDescription2TextContentProvider:v17];
                }

                v8 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v8);
            }

            v4 = v23 + 1;
          }

          while (v23 + 1 != v22);
          v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v22);
      }
    }
  }

  else
  {
  }

  v18 = a1[4];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__RELiveElementCoordinator__queue_reload__block_invoke_3;
  v24[3] = &unk_2785FB070;
  v24[4] = v18;
  v25 = a1[5];
  v26 = a1[6];
  [v18 performBatchUpdateBlock:v24];

  v19 = *MEMORY[0x277D85DE8];
}

void __41__RELiveElementCoordinator__queue_reload__block_invoke_3(id *a1)
{
  v2 = [a1[4] displayElements];
  v3 = [a1[4] relevanceEngine];
  if (_fetchedInternalBuildOnceToken_6 != -1)
  {
    __41__RELiveElementCoordinator__queue_reload__block_invoke_2_cold_1();
  }

  if (_isInternalDevice_6 == 1)
  {
    DisplayDebugProbabilities = __RE_Cached_Get__DisplayDebugProbabilities(v3);
  }

  else
  {
    DisplayDebugProbabilities = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__RELiveElementCoordinator__queue_reload__block_invoke_4;
  v9[3] = &unk_2785FCDE8;
  v10 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v14 = DisplayDebugProbabilities;
  v7 = a1[4];
  v11 = v6;
  v12 = v7;
  v13 = a1[6];
  v8 = v2;
  [v5 _enumerateSectionsUsingBlock:v9];
}

void __41__RELiveElementCoordinator__queue_reload__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v7 = [v6 copy];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__RELiveElementCoordinator__queue_reload__block_invoke_7;
  v21[3] = &__block_descriptor_33_e33_B24__0__REElement_8__REElement_16l;
  v22 = *(a1 + 64);
  v8 = MEMORY[0x22AABC5E0](v21);
  v9 = [REArrayDiff diffFromElements:v5 toElements:v7 equalComparator:&__block_literal_global_45_2 hashGenerator:&__block_literal_global_48_0 changeComparator:v8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__RELiveElementCoordinator__queue_reload__block_invoke_8;
  v17 = &unk_2785FCDC0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v18 = v3;
  v19 = v10;
  v20 = v11;
  v12 = v3;
  v13 = MEMORY[0x22AABC5E0](&v14);
  [v9 enumerateOperationsUsingBlock:{v13, v14, v15, v16, v17}];
}

uint64_t __41__RELiveElementCoordinator__queue_reload__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __41__RELiveElementCoordinator__queue_reload__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 hash];

  return v3;
}

uint64_t __41__RELiveElementCoordinator__queue_reload__block_invoke_7(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:{v2, v3}] ^ 1;
  }
}

void __41__RELiveElementCoordinator__queue_reload__block_invoke_8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v9 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a4];
  v10 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a5];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      [*(a1 + 40) removeElement:v14 atPath:v10];
    }

    else if (a2 == 3)
    {
      [*(a1 + 40) moveElement:v14 fromPath:v10 toPath:v9];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      [*(a1 + 40) insertElement:v14 atPath:v9];
    }
  }

  else
  {
    v11 = [v14 identifier];
    v12 = [*(a1 + 48) containsObject:v11];
    v13 = *(a1 + 40);
    if (v12)
    {
      [v13 refreshElement:v14 atPath:v9];
    }

    else
    {
      [v13 reloadElement:v14 atPath:v9];
    }
  }
}

- (void)_queue_scheduleContentUpdate:(BOOL)a3
{
  [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  ++self->_scheduleCount;
  [(REUpNextScheduler *)self->_scheduler schedule];
  if (a3 || RETrainingSimulationIsCurrentlyActive())
  {
    self->_reloadImmediately = 1;
    scheduler = self->_scheduler;

    [(REUpNextScheduler *)scheduler performImmediately];
  }
}

- (void)relevanceEngine:(id)a3 didInsertElement:(id)a4 atPath:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_controllerQueue);
  v7 = [(NSMutableDictionary *)self->_elementIdElementMap objectForKey:v6];
  v8 = RELogForDomain(7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[RELiveElementCoordinator relevanceEngine:didInsertElement:atPath:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_DEFAULT, "[LEC]: %s: %@", &v15, 0x16u);
    }

    elementIdDateRelevantMap = self->_elementIdDateRelevantMap;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = REElementByRemovingNamespacedIdentifier(v7);
    v13 = [v12 identifier];
    [(NSMutableDictionary *)elementIdDateRelevantMap setObject:v11 forKey:v13];

    [(RELiveElementCoordinator *)self _queue_scheduleContentUpdate:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator relevanceEngine:didInsertElement:atPath:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:(id)a3 didRemoveElement:(id)a4 atPath:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_controllerQueue);
  v7 = [(NSMutableDictionary *)self->_elementIdElementMap objectForKey:v6];
  v8 = RELogForDomain(7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[RELiveElementCoordinator relevanceEngine:didRemoveElement:atPath:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22859F000, v9, OS_LOG_TYPE_DEFAULT, "[LEC]: %s: %@", &v14, 0x16u);
    }

    elementIdDateRelevantMap = self->_elementIdDateRelevantMap;
    v11 = REElementByRemovingNamespacedIdentifier(v7);
    v12 = [v11 identifier];
    [(NSMutableDictionary *)elementIdDateRelevantMap removeObjectForKey:v12];

    [(RELiveElementCoordinator *)self _queue_scheduleContentUpdate:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator relevanceEngine:didRemoveElement:atPath:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:(id)a3 didMoveElement:(id)a4 fromPath:(id)a5 toPath:(id)a6
{
  v7 = a4;
  dispatch_assert_queue_V2(self->_controllerQueue);
  v8 = [(NSMutableDictionary *)self->_elementIdElementMap objectForKey:v7];
  if (v8)
  {
    [(RELiveElementCoordinator *)self _queue_scheduleContentUpdate:0];
  }

  else
  {
    v9 = RELogForDomain(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator relevanceEngine:didMoveElement:fromPath:toPath:];
    }
  }
}

- (void)relevanceEngine:(id)a3 didUpdateRelevanceOfElement:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_controllerQueue);
  v6 = [(NSMutableDictionary *)self->_elementIdElementMap objectForKey:v5];
  if (v6)
  {
    v7 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__RELiveElementCoordinator_relevanceEngine_didUpdateRelevanceOfElement___block_invoke;
    block[3] = &unk_2785FB070;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    v9 = v7;
    dispatch_async(callbackQueue, block);
  }

  else
  {
    v9 = RELogForDomain(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [RELiveElementCoordinator relevanceEngine:didUpdateRelevanceOfElement:];
    }
  }
}

void __72__RELiveElementCoordinator_relevanceEngine_didUpdateRelevanceOfElement___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__RELiveElementCoordinator_relevanceEngine_didUpdateRelevanceOfElement___block_invoke_2;
  v3[3] = &unk_2785FCE10;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObservers:v3];
}

- (id)elementForElementId:(id)a3
{
  controllerQueue = self->_controllerQueue;
  v5 = a3;
  dispatch_assert_queue_V2(controllerQueue);
  v6 = [(NSMutableDictionary *)self->_elementIdElementMap objectForKeyedSubscript:v5];

  return v6;
}

void __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(v1) identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(v1) identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(v1) identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__RELiveElementCoordinator_rankingScoreForElement___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_4_0();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(v1) identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __50__RELiveElementCoordinator_rankingTierForElement___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_3_0(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__RELiveElementCoordinator_rankingStartDateForElement___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_3_0(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addElement:(void *)a1 toSection:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_reloadElement:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_reloadElement:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_reloadElement:(NSObject *)a1 .cold.4(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [0 identifier];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_22859F000, a1, OS_LOG_TYPE_ERROR, "previousElement is nil. Identifier is %@", v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_refreshElement:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeElement:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:didInsertElement:atPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v0, v1, "Unable to find element for id %@ (insert)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:didRemoveElement:atPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v0, v1, "Unable to find element for id %@ (remove)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:didMoveElement:fromPath:toPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v0, v1, "Unable to find element for id %@ (move)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:didUpdateRelevanceOfElement:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_22859F000, v0, v1, "Unable to find element for id %@ (relevance update)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end