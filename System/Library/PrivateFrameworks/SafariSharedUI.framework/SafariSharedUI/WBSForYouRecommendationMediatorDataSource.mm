@interface WBSForYouRecommendationMediatorDataSource
- (void)emitStartRetrievingRecommendationsPerformanceMarker;
- (void)notifyContentsDidChangeFromSource:(unint64_t)source;
- (void)notifyImageWasUpdatedForRecommendation:(id)recommendation;
- (void)recommendationsWithTopics:(id)topics withCompletionHandler:(id)handler;
- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler;
@end

@implementation WBSForYouRecommendationMediatorDataSource

- (void)recommendationsWithTopics:(id)topics withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = topicsCopy;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __93__WBSForYouRecommendationMediatorDataSource_recommendationsWithTopics_withCompletionHandler___block_invoke;
        v21[3] = &unk_1E8285518;
        v22 = dictionary;
        selfCopy = self;
        v24 = v7;
        [(WBSForYouRecommendationMediatorDataSource *)self retrieveRecommendationsMatchingTopic:v13 withCompletionHandler:v21];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__WBSForYouRecommendationMediatorDataSource_recommendationsWithTopics_withCompletionHandler___block_invoke_1;
  block[3] = &unk_1E8284830;
  v19 = dictionary;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = dictionary;
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
}

void __93__WBSForYouRecommendationMediatorDataSource_recommendationsWithTopics_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = *(a1 + 32);
          v10 = [v8 pageURL];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (v11)
          {
            v12 = [v8 originalQueries];
            [v11 addOriginalQueries:v12];
          }

          else
          {
            v13 = *(a1 + 32);
            v12 = [v8 pageURL];
            [v13 setObject:v8 forKeyedSubscript:v12];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    objc_sync_exit(obj);
  }

  v14 = WBS_LOG_CHANNEL_PREFIXStartPage();
  v15 = os_signpost_id_make_with_pointer(v14, *(a1 + 40));
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6968000, v14, OS_SIGNPOST_INTERVAL_END, v16, "RetrieveRecommendations", " enableTelemetry=YES ", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __93__WBSForYouRecommendationMediatorDataSource_recommendationsWithTopics_withCompletionHandler___block_invoke_1(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) allValues];
    (*(v2 + 16))(v2, v3);
  }

  objc_sync_exit(obj);
}

- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)notifyContentsDidChangeFromSource:(unint64_t)source
{
  v10[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69C92E0];
  v9 = *MEMORY[0x1E69C92E8];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:v6 object:self userInfo:v8];
}

- (void)notifyImageWasUpdatedForRecommendation:(id)recommendation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD88];
  recommendationCopy = recommendation;
  defaultCenter = [v4 defaultCenter];
  v7 = *MEMORY[0x1E69C92F0];
  v9 = *MEMORY[0x1E69C92F8];
  v10[0] = recommendationCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [defaultCenter postNotificationName:v7 object:self userInfo:v8];
}

- (void)emitStartRetrievingRecommendationsPerformanceMarker
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXStartPage();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C6968000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "RetrieveRecommendations", "%@", &v8, 0xCu);
    }
  }
}

@end