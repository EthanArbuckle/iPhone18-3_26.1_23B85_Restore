@interface WBSForYouCloudTabsDataSource
- (WBSForYouCloudTabsDataSource)initWithTabStore:(id)store;
- (void)_createInternalQueueIfNecessary;
- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler;
@end

@implementation WBSForYouCloudTabsDataSource

- (WBSForYouCloudTabsDataSource)initWithTabStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = WBSForYouCloudTabsDataSource;
  v6 = [(WBSForYouCloudTabsDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabsStore, store);
    v8 = v7;
  }

  return v7;
}

- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = WBSForYouCloudTabsDataSource;
  [(WBSForYouRecommendationMediatorDataSource *)&v11 emitStartRetrievingRecommendationsPerformanceMarker];
  if (handlerCopy)
  {
    [(WBSForYouCloudTabsDataSource *)self _createInternalQueueIfNecessary];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__WBSForYouCloudTabsDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke;
    block[3] = &unk_1E8283058;
    block[4] = self;
    v9 = topicCopy;
    v10 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __91__WBSForYouCloudTabsDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) syncedCloudTabDevices];
  v3 = [v2 copy];

  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WBSForYouCloudTabsDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E8283058;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void __91__WBSForYouCloudTabsDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v25 = *v35;
    do
    {
      v2 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v2;
        v3 = *(*(&v34 + 1) + 8 * v2);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = v3;
        v4 = [v3 tabs];
        v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v31;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v31 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v30 + 1) + 8 * i);
              v10 = [v9 title];
              v11 = [*(a1 + 40) title];
              v12 = [v10 localizedCaseInsensitiveContainsString:v11];

              if (v12)
              {
                v13 = [WBSForYouLinkRecommendation alloc];
                v14 = [v9 url];
                v15 = [MEMORY[0x1E695DF00] distantPast];
                v16 = -[WBSForYouLinkRecommendation initWithTitle:url:lastSeenDate:source:topicSource:](v13, "initWithTitle:url:lastSeenDate:source:topicSource:", v10, v14, v15, 4, [*(a1 + 40) source]);

                v17 = MEMORY[0x1E695DFD8];
                v18 = [*(a1 + 40) title];
                v19 = [v17 setWithObject:v18];
                [(WBSForYouLinkRecommendation *)v16 addOriginalQueries:v19];

                v20 = MEMORY[0x1E696AEC0];
                v21 = _WBSLocalizedString();
                v22 = [v29 disambiguatedName];
                v23 = [v20 stringWithFormat:v21, v22];
                [(WBSForYouLinkRecommendation *)v16 setFootnote:v23];

                [v28 addObject:v16];
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v6);
        }

        v2 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v3 = dispatch_queue_create("com.apple.Safari.WBSForYouCloudTabsDataSource.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v3;
  }
}

@end