@interface PPLocalSocialHighlightStore
+ (id)defaultStore;
- (BOOL)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant error:(id *)error;
- (BOOL)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant error:(id *)error;
- (PPLocalSocialHighlightStore)init;
- (PPLocalSocialHighlightStore)initWithStorage:(id)storage;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)request;
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

- (id)deleteDataDerivedFromContentMatchingRequest:(id)request
{
  v27[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D3A698];
  bundleIdentifier = [requestCopy bundleIdentifier];
  LODWORD(v5) = [v5 isEqual:bundleIdentifier];

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
    bundleIdentifier2 = [requestCopy bundleIdentifier];
    LODWORD(v17) = [v17 isEqual:bundleIdentifier2];

    if (v17)
    {
      [(PPSocialHighlightStorage *)self->_storage deleteDataDerivedFromContentMatchingRequest:requestCopy];
    }
  }

  v19 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:{0, v22}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  clientCopy = client;
  variantCopy = variant;
  v14 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = attributionCopy;
    v19 = 2048;
    typeCopy = type;
    v21 = 2112;
    v22 = clientCopy;
    v23 = 2112;
    v24 = variantCopy;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_INFO, "PPLocalSocialHighlightStore: feedbackForAttribution: %@ type: %lu client: '%@' variant: '%@'", &v17, 0x2Au);
  }

  [PPSocialHighlightMetrics logFeedbackForAttribution:attributionCopy type:type client:clientCopy];
  [(PPSocialHighlightStorage *)self->_storage saveAttributionFeedbackForAttributionIdentifier:attributionCopy feedbackType:type client:clientCopy variant:variantCopy];

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  clientCopy = client;
  variantCopy = variant;
  v14 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = highlightCopy;
    v19 = 2048;
    typeCopy = type;
    v21 = 2112;
    v22 = clientCopy;
    v23 = 2112;
    v24 = variantCopy;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_INFO, "PPLocalSocialHighlightStore: feedbackForHighlight: %@ type: %lu client: '%@' variant: '%@'", &v17, 0x2Au);
  }

  [PPSocialHighlightMetrics logFeedbackForHighlight:highlightCopy type:type client:clientCopy];
  [(PPSocialHighlightStorage *)self->_storage saveFeedbackForHighlightIdentifier:highlightCopy feedbackType:type client:clientCopy variant:variantCopy];

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (PPLocalSocialHighlightStore)init
{
  v3 = objc_opt_new();
  if (v3)
  {
    self = [(PPLocalSocialHighlightStore *)self initWithStorage:v3];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocalSocialHighlightStore)initWithStorage:(id)storage
{
  storageCopy = storage;
  v10.receiver = self;
  v10.super_class = PPLocalSocialHighlightStore;
  v6 = [(PPLocalSocialHighlightStore *)&v10 init];
  if (v6)
  {
    defaultCoordinator = [MEMORY[0x277D41DE8] defaultCoordinator];
    [defaultCoordinator registerMessagesConsumer:v6 levelOfService:1];

    defaultCoordinator2 = [MEMORY[0x277D41DE8] defaultCoordinator];
    [defaultCoordinator2 registerSafariConsumer:v6 levelOfService:1];

    objc_storeStrong(&v6->_storage, storage);
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