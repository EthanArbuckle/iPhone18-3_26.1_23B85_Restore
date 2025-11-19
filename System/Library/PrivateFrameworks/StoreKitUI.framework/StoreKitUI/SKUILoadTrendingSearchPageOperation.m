@interface SKUILoadTrendingSearchPageOperation
- (SKUILoadTrendingSearchPageOperation)initWithClientContext:(id)a3 pageURL:(id)a4 outputBlock:(id)a5;
- (void)main;
@end

@implementation SKUILoadTrendingSearchPageOperation

- (SKUILoadTrendingSearchPageOperation)initWithClientContext:(id)a3 pageURL:(id)a4 outputBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadTrendingSearchPageOperation initWithClientContext:pageURL:outputBlock:];
  }

  v17.receiver = self;
  v17.super_class = SKUILoadTrendingSearchPageOperation;
  v12 = [(SKUILoadTrendingSearchPageOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientContext, a3);
    objc_storeStrong(&v13->_pageURL, a4);
    v14 = [v11 copy];
    outputBlock = v13->_outputBlock;
    v13->_outputBlock = v14;
  }

  return v13;
}

- (void)main
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__72;
  v24[4] = __Block_byref_object_dispose__72;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__72;
  v22 = __Block_byref_object_dispose__72;
  v23 = [(SKUILoadTrendingSearchPageOperation *)self pageURL];
  if (!v19[5])
  {
    v3 = [(SKUIClientContext *)self->_clientContext URLBag];

    if (v3)
    {
      v4 = dispatch_semaphore_create(0);
      v5 = [(SKUIClientContext *)self->_clientContext URLBag];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__SKUILoadTrendingSearchPageOperation_main__block_invoke;
      v14[3] = &unk_2781FEDC8;
      v16 = &v18;
      v17 = v24;
      v6 = v4;
      v15 = v6;
      [v5 loadValueForKey:@"trending-searches" completionBlock:v14];

      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__72;
  v12[4] = __Block_byref_object_dispose__72;
  v13 = 0;
  if (v19[5])
  {
    v7 = objc_alloc(MEMORY[0x277D69CD8]);
    v8 = [v7 initWithURL:v19[5]];
    v9 = +[(SSVURLDataConsumer *)SKUITrendingSearchPageConsumer];
    [v8 setDataConsumer:v9];

    v10 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v8 setStoreFrontSuffix:v10];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__SKUILoadTrendingSearchPageOperation_main__block_invoke_2;
    v11[3] = &unk_2781FEDF0;
    v11[4] = v12;
    v11[5] = v24;
    [v8 setOutputBlock:v11];
    [v8 main];
  }

  (*(self->_outputBlock + 2))();
  _Block_object_dispose(v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);
}

void __43__SKUILoadTrendingSearchPageOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __43__SKUILoadTrendingSearchPageOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)initWithClientContext:pageURL:outputBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadTrendingSearchPageOperation initWithClientContext:pageURL:outputBlock:]";
}

@end