@interface VKCVisualSearchResult
- (VKCImageAnalysis)analysis;
- (VKCVisualSearchResult)initWithGatingResult:(id)a3;
- (void)setAnalysis:(id)a3;
- (void)setSearchResult:(id)a3;
@end

@implementation VKCVisualSearchResult

- (VKCVisualSearchResult)initWithGatingResult:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = VKCVisualSearchResult;
  v6 = [(VKCVisualSearchResult *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gatingResult, a3);
    v8 = [MEMORY[0x1E695DF70] array];
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
          v13 = [v12 domains];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = [[VKCVisualSearchResultItem alloc] initWithGatingResultItem:v12 domain:*(*(&v24 + 1) + 8 * j)];
                [(NSArray *)v8 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
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
    v21->_resultItems = v8;
  }

  return v7;
}

- (void)setAnalysis:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_analysis, v4);
  v5 = [(VKCVisualSearchResult *)self resultItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__VKCVisualSearchResult_setAnalysis___block_invoke;
  v7[3] = &unk_1E7BE6118;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)setSearchResult:(id)a3
{
  objc_storeStrong(&self->_searchResult, a3);
  v5 = a3;
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "VisualSearch: Request completed", v10, 2u);
  }

  v7 = [(MADVIVisualSearchResult *)self->_searchResult resultItems];
  v8 = [v7 vk_compactMap:&__block_literal_global_23];
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