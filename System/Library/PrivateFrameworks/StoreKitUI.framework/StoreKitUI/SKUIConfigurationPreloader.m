@interface SKUIConfigurationPreloader
- (BOOL)hasExistingConfigurationCache;
- (SKUIConfigurationPreloader)init;
- (SKUIConfigurationPreloader)initWithConfigurationCachePath:(id)a3;
- (void)finishPreloadingConfiguration:(id)a3 error:(id)a4;
- (void)preloadConfigurationForPurpose:(int64_t)a3 withCompletionBlock:(id)a4;
@end

@implementation SKUIConfigurationPreloader

- (SKUIConfigurationPreloader)initWithConfigurationCachePath:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIConfigurationPreloader initWithConfigurationCachePath:];
  }

  v13.receiver = self;
  v13.super_class = SKUIConfigurationPreloader;
  v5 = [(SKUIConfigurationPreloader *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    configurationCachePath = v5->_configurationCachePath;
    v5->_configurationCachePath = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;

    [(NSOperationQueue *)v5->_workQueue setName:@"com.apple.storekit.configurationpreloader"];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v5->_completionBlocks;
    v5->_completionBlocks = v10;
  }

  return v5;
}

- (SKUIConfigurationPreloader)init
{
  v3 = +[SKUIReloadConfigurationOperation cachePath];
  v4 = [(SKUIConfigurationPreloader *)self initWithConfigurationCachePath:v3];

  return v4;
}

- (BOOL)hasExistingConfigurationCache
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(SKUIConfigurationPreloader *)self configurationCachePath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (void)preloadConfigurationForPurpose:(int64_t)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = [(SKUIConfigurationPreloader *)self loadedConfiguration];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__SKUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_3;
    v20[3] = &unk_2781F9B48;
    v20[4] = self;
    v21 = v6;
    [v8 addOperationWithBlock:v20];
  }

  else if (a3 || ![(SKUIConfigurationPreloader *)self hasExistingConfigurationCache])
  {
    v9 = [(SKUIConfigurationPreloader *)self completionBlocks];
    v10 = [v6 copy];
    v11 = _Block_copy(v10);
    [v9 addObject:v11];

    v12 = [(SKUIConfigurationPreloader *)self pendingReloadOperation];

    if (!v12)
    {
      v13 = [(SKUIConfigurationPreloader *)self newReloadConfigurationOperation];
      [(SKUIConfigurationPreloader *)self setPendingReloadOperation:v13];

      if (a3 == 2)
      {
        v14 = [MEMORY[0x277D69C90] contextWithBagType:0];
        v15 = SSVDefaultUserAgent();
        [v14 setValue:v15 forHTTPHeaderField:*MEMORY[0x277D6A130]];

        v16 = [(SSURLBag *)[SKUIURLBag alloc] initWithURLBagContext:v14];
        [(SKUIReloadConfigurationOperation *)self->_pendingReloadOperation setURLBag:v16];
      }

      objc_initWeak(&location, self);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __81__SKUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke;
      v22[3] = &unk_2781FA0F0;
      objc_copyWeak(&v23, &location);
      v17 = [(SKUIConfigurationPreloader *)self pendingReloadOperation];
      [v17 setOutputBlock:v22];

      v18 = [(SKUIConfigurationPreloader *)self workQueue];
      v19 = [(SKUIConfigurationPreloader *)self pendingReloadOperation];
      [v18 addOperation:v19];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    (*(v6 + 2))(v6, MEMORY[0x277CBEC10], 0);
  }
}

void __81__SKUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__SKUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_2;
    v9[3] = &unk_2781F8680;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    [v8 addOperationWithBlock:v9];
  }
}

void __81__SKUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loadedConfiguration];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)finishPreloadingConfiguration:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKUIConfigurationPreloader *)self setLoadedConfiguration:v6];
  [(SKUIConfigurationPreloader *)self setPendingReloadOperation:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(SKUIConfigurationPreloader *)self completionBlocks];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [(SKUIConfigurationPreloader *)self completionBlocks];
  [v13 removeAllObjects];
}

- (void)initWithConfigurationCachePath:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIConfigurationPreloader initWithConfigurationCachePath:]";
}

@end