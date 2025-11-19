@interface WBSForYouTopicManager
- (WBSForYouTopicManager)initWithHistory:(id)a3 contextClient:(id)a4;
- (void)_createInternalQueueIfNecessary;
- (void)contextKitTopicsWithCompletionHandler:(id)a3;
- (void)portraitNamedEntitiesWithCompletionHandler:(id)a3;
@end

@implementation WBSForYouTopicManager

- (WBSForYouTopicManager)initWithHistory:(id)a3 contextClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSForYouTopicManager;
  v9 = [(WBSForYouTopicManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_history, a3);
    objc_storeStrong(&v10->_contextClient, a4);
    v11 = [MEMORY[0x1E695DF00] distantPast];
    lastContextKitRequestDate = v10->_lastContextKitRequestDate;
    v10->_lastContextKitRequestDate = v11;

    v13 = v10;
  }

  return v10;
}

- (void)contextKitTopicsWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSDate *)self->_lastContextKitRequestDate timeIntervalSinceNow];
  v6 = v5;
  if (v5 >= -20.0)
  {
    v4[2](v4, self->_mostRecentUserVisibleTopics);
    v12 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v6 + 20.0;
      _os_log_impl(&dword_1C6968000, v12, OS_LOG_TYPE_INFO, "Using cached ContextKit topics (and will for +%fs)", buf, 0xCu);
    }
  }

  else
  {
    if (!self->_historyTopicTagController)
    {
      v7 = [[WBSRecentHistoryTopicTagController alloc] initWithHistory:self->_history];
      historyTopicTagController = self->_historyTopicTagController;
      self->_historyTopicTagController = v7;

      [(WBSRecentHistoryTopicTagController *)self->_historyTopicTagController setMaximumNumberOfTopics:10];
    }

    v9 = [MEMORY[0x1E695DF00] date];
    lastContextKitRequestDate = self->_lastContextKitRequestDate;
    self->_lastContextKitRequestDate = v9;

    v11 = self->_historyTopicTagController;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E8282F48;
    v13[4] = self;
    v14 = v4;
    [(WBSRecentHistoryTopicTagController *)v11 loadTopicsWithCompletionHandler:v13];
  }
}

void __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v25 = a3;
  v26 = v6;
  if ([v6 count])
  {
    v24 = a1;
    v7 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v11 historyItems];
          v13 = [v12 firstObject];

          v14 = [WBSForYouTopic alloc];
          v15 = [v11 title];
          v16 = [v11 identifier];
          v17 = [v13 lastVisitedDate];
          v18 = v17;
          if (!v17)
          {
            v3 = [MEMORY[0x1E695DF00] distantPast];
            v18 = v3;
          }

          v19 = [(WBSForYouTopic *)v14 initWithTitle:v15 identifier:v16 relevancyDate:v18 source:1];
          if (!v17)
          {
          }

          [v7 addObject:v19];
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_7;
    block[3] = &unk_1E8283450;
    v20 = *(v24 + 40);
    block[4] = *(v24 + 32);
    v29 = v7;
    v30 = v20;
    v21 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v25)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v25 safari_privacyPreservingDescription];
        __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_cold_1(v23, buf, v22);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)portraitNamedEntitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(WBSForYouTopicManager *)self _createInternalQueueIfNecessary];
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69BDCA8]);
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-5400.0];
  [v5 setFromDate:v6];

  [v5 setLimit:3];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F466D040];
  [v5 setMatchingCategories:v7];

  v8 = *(*(a1 + 32) + 16);
  v16 = 0;
  v9 = [v8 rankedNamedEntitiesWithQuery:v5 error:&v16];
  v10 = v16;
  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 safari_privacyPreservingDescription];
      __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_cold_1(v12, buf, v11);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }

  else
  {
    v14 = [v9 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_15];
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v14);
    }
  }
}

WBSForYouTopic *__68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = [a2 item];
  v3 = [v2 name];

  if ([v3 length] >= 5)
  {
    v5 = [WBSForYouTopic alloc];
    v6 = [MEMORY[0x1E695DF00] distantPast];
    v4 = [(WBSForYouTopic *)v5 initWithTitle:v3 identifier:v3 relevancyDate:v6 source:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v4 = dispatch_queue_create("com.apple.Safari.ForYouTopicManager.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v4;
  }
}

void __63__WBSForYouTopicManager_contextKitTopicsWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Could not load ContextKit topics with error: %{public}@", buf, 0xCu);
}

void __68__WBSForYouTopicManager_portraitNamedEntitiesWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to get Portrait named entities: %{public}@", buf, 0xCu);
}

@end