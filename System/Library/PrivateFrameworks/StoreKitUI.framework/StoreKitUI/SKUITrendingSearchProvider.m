@interface SKUITrendingSearchProvider
- (SKUIClientContext)clientContext;
- (SKUITrendingSearchProvider)initWithClientContext:(id)a3;
- (id)requestOperationWithPageURL:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)requestTrendingSearchPageWithURL:(id)a3;
- (void)trendingSearchPageWithURL:(id)a3 completionBlock:(id)a4;
@end

@implementation SKUITrendingSearchProvider

- (SKUITrendingSearchProvider)initWithClientContext:(id)a3
{
  objc_initWeak(&location, a3);
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchProvider initWithClientContext:];
  }

  v14.receiver = self;
  v14.super_class = SKUITrendingSearchProvider;
  v4 = [(SKUITrendingSearchProvider *)&v14 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_clientContext, v5);

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v6;

    [(NSOperationQueue *)v4->_operationQueue setName:@"com.apple.StoreKitUI.SKUITrendingSearchProvider.operationQueue"];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingCompletionBlocks = v4->_pendingCompletionBlocks;
    v4->_pendingCompletionBlocks = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = MEMORY[0x277D76620];
    [v10 addObserver:v4 selector:sel_clearCache name:*MEMORY[0x277D76660] object:*MEMORY[0x277D76620]];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v4 selector:sel_clearCache name:*MEMORY[0x277D76670] object:*v11];
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SKUITrendingSearchProvider;
  [(SKUITrendingSearchProvider *)&v4 dealloc];
}

- (id)requestOperationWithPageURL:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SKUILoadTrendingSearchPageOperation alloc];
  v9 = [(SKUITrendingSearchProvider *)self clientContext];
  v10 = [(SKUILoadTrendingSearchPageOperation *)v8 initWithClientContext:v9 pageURL:v7 outputBlock:v6];

  return v10;
}

- (void)requestTrendingSearchPageWithURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SKUITrendingSearchProvider_requestTrendingSearchPageWithURL___block_invoke;
  v7[3] = &unk_2781FF1B8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = [(SKUITrendingSearchProvider *)self requestOperationWithPageURL:v4 completionBlock:v7];
  v6 = [(SKUITrendingSearchProvider *)self operationQueue];
  [v6 addOperation:v5];

  [(SKUITrendingSearchProvider *)self setRunningRequestOperation:v5];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__SKUITrendingSearchProvider_requestTrendingSearchPageWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SKUITrendingSearchProvider_requestTrendingSearchPageWithURL___block_invoke_2;
    v12[3] = &unk_2781F96E8;
    v10 = v5;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    v15 = v8;
    v16 = v6;
    [v9 addOperationWithBlock:v12];
  }
}

void __63__SKUITrendingSearchProvider_requestTrendingSearchPageWithURL___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setCachedSearchPage:?];
  }

  v2 = [*(a1 + 48) pendingCompletionBlocks];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [v2 removeAllObjects];
  [*(a1 + 48) setRunningRequestOperation:0];
}

- (void)trendingSearchPageWithURL:(id)a3 completionBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SKUITrendingSearchProvider *)self cachedSearchPage];

  if (v7)
  {
    v8 = [(SKUITrendingSearchProvider *)self cachedSearchPage];
    v6[2](v6, v8, 0);
  }

  else
  {
    v9 = [(SKUITrendingSearchProvider *)self pendingCompletionBlocks];
    v10 = [v6 copy];

    v11 = _Block_copy(v10);
    [v9 addObject:v11];

    v12 = [(SKUITrendingSearchProvider *)self runningRequestOperation];

    if (!v12)
    {
      [(SKUITrendingSearchProvider *)self requestTrendingSearchPageWithURL:v13];
    }
  }
}

- (SKUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_clientContext);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchProvider initWithClientContext:]";
}

@end