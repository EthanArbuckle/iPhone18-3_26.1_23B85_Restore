@interface VKCVisualSearchResult
- (VKCImageAnalysis)analysis;
- (VKCVisualSearchResult)initWithGatingResult:(id)result;
- (void)setAnalysis:(id)analysis;
- (void)setSearchResult:(id)result;
@end

@implementation VKCVisualSearchResult

- (VKCVisualSearchResult)initWithGatingResult:(id)result
{
  v35 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v32.receiver = self;
  v32.super_class = VKCVisualSearchResult;
  v6 = [(VKCVisualSearchResult *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gatingResult, result);
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v7;
    obj = [(MADVIVisualSearchGatingResult *)v7->_gatingResult resultItems];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          domains = [v12 domains];
          v14 = [domains countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(domains);
                }

                v18 = [[VKCVisualSearchResultItem alloc] initWithGatingResultItem:v12 domain:*(*(&v24 + 1) + 8 * j)];
                [(NSArray *)array addObject:v18];
              }

              v15 = [domains countByEnumeratingWithState:&v24 objects:v33 count:16];
            }

            while (v15);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    v7 = v21;
    resultItems = v21->_resultItems;
    v21->_resultItems = array;
  }

  return v7;
}

- (void)setAnalysis:(id)analysis
{
  analysisCopy = analysis;
  objc_storeWeak(&self->_analysis, analysisCopy);
  resultItems = [(VKCVisualSearchResult *)self resultItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__VKCVisualSearchResult_setAnalysis___block_invoke;
  v7[3] = &unk_1E7BE6118;
  v8 = analysisCopy;
  v6 = analysisCopy;
  [resultItems enumerateObjectsUsingBlock:v7];
}

- (void)setSearchResult:(id)result
{
  objc_storeStrong(&self->_searchResult, result);
  resultCopy = result;
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "VisualSearch: Request completed", v10, 2u);
  }

  resultItems = [(MADVIVisualSearchResult *)self->_searchResult resultItems];
  v8 = [resultItems vk_compactMap:&__block_literal_global_23];
  resultItems = self->_resultItems;
  self->_resultItems = v8;
}

VKCVisualSearchResultItem *__41__VKCVisualSearchResult_setSearchResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[VKCVisualSearchResultItem alloc] initWithSearchResultItem:v2];

  return v3;
}

- (VKCImageAnalysis)analysis
{
  WeakRetained = objc_loadWeakRetained(&self->_analysis);

  return WeakRetained;
}

@end