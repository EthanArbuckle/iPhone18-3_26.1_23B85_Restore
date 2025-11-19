@interface PPLocalSocialHighlightStore
+ (id)defaultStore;
- (BOOL)feedbackForAttribution:(id)a3 type:(unint64_t)a4 client:(id)a5 variant:(id)a6 error:(id *)a7;
- (BOOL)feedbackForHighlight:(id)a3 type:(unint64_t)a4 client:(id)a5 variant:(id)a6 error:(id *)a7;
- (PPLocalSocialHighlightStore)init;
- (PPLocalSocialHighlightStore)initWithStorage:(id)a3;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3;
@end

@implementation PPLocalSocialHighlightStore

+ (id)defaultStore
{
  if (defaultStore__pasOnceToken2_18193 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken2_18193, &__block_literal_global_18194);
  }

  v3 = defaultStore__pasExprOnceResult_18195;

  return v3;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D3A698];
  v6 = [v4 bundleIdentifier];
  LODWORD(v5) = [v5 isEqual:v6];

  if (v5)
  {
    v7 = *MEMORY[0x277D3A640];
    v27[0] = *MEMORY[0x277D3A628];
    v27[1] = v7;
    [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          storage = self->_storage;
          v15 = objc_alloc(MEMORY[0x277D41E40]);
          v16 = [v15 initWithBundleIdentifier:{v13, v22}];
          [(PPSocialHighlightStorage *)storage deleteDataDerivedFromContentMatchingRequest:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v17 = *MEMORY[0x277D3A658];
    v18 = [v4 bundleIdentifier];
    LODWORD(v17) = [v17 isEqual:v18];

    if (v17)
    {
      [(PPSocialHighlightStorage *)self->_storage deleteDataDerivedFromContentMatchingRequest:v4];
    }
  }

  v19 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:{0, v22}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)feedbackForAttribution:(id)a3 type:(unint64_t)a4 client:(id)a5 variant:(id)a6 error:(id *)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = v11;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_INFO, "PPLocalSocialHighlightStore: feedbackForAttribution: %@ type: %lu client: '%@' variant: '%@'", &v17, 0x2Au);
  }

  [PPSocialHighlightMetrics logFeedbackForAttribution:v11 type:a4 client:v12];
  [(PPSocialHighlightStorage *)self->_storage saveAttributionFeedbackForAttributionIdentifier:v11 feedbackType:a4 client:v12 variant:v13];

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)feedbackForHighlight:(id)a3 type:(unint64_t)a4 client:(id)a5 variant:(id)a6 error:(id *)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = v11;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_INFO, "PPLocalSocialHighlightStore: feedbackForHighlight: %@ type: %lu client: '%@' variant: '%@'", &v17, 0x2Au);
  }

  [PPSocialHighlightMetrics logFeedbackForHighlight:v11 type:a4 client:v12];
  [(PPSocialHighlightStorage *)self->_storage saveFeedbackForHighlightIdentifier:v11 feedbackType:a4 client:v12 variant:v13];

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (PPLocalSocialHighlightStore)init
{
  v3 = objc_opt_new();
  if (v3)
  {
    self = [(PPLocalSocialHighlightStore *)self initWithStorage:v3];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PPLocalSocialHighlightStore)initWithStorage:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PPLocalSocialHighlightStore;
  v6 = [(PPLocalSocialHighlightStore *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D41DE8] defaultCoordinator];
    [v7 registerMessagesConsumer:v6 levelOfService:1];

    v8 = [MEMORY[0x277D41DE8] defaultCoordinator];
    [v8 registerSafariConsumer:v6 levelOfService:1];

    objc_storeStrong(&v6->_storage, a3);
  }

  return v6;
}

void __43__PPLocalSocialHighlightStore_defaultStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultStore__pasExprOnceResult_18195;
  defaultStore__pasExprOnceResult_18195 = v1;

  objc_autoreleasePoolPop(v0);
}

@end