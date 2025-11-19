@interface TPSTipsAssetPrefetchingManager
- (TPSTipsAssetPrefetchingManager)init;
- (void)addFetchOperationWithAssetConfiguration:(id)a3 type:(int64_t)a4 operationName:(id)a5;
- (void)appendAssetsOperationsForTip:(id)a3;
- (void)cancel;
- (void)cancelFetch;
- (void)dealloc;
- (void)prefetchAssetsFromTip:(id)a3 tips:(id)a4 assetUserInterfaceStyle:(int64_t)a5;
@end

@implementation TPSTipsAssetPrefetchingManager

- (void)dealloc
{
  [(TPSTipsAssetPrefetchingManager *)self cancelFetch];
  v3.receiver = self;
  v3.super_class = TPSTipsAssetPrefetchingManager;
  [(TPSTipsAssetPrefetchingManager *)&v3 dealloc];
}

- (TPSTipsAssetPrefetchingManager)init
{
  v11.receiver = self;
  v11.super_class = TPSTipsAssetPrefetchingManager;
  v2 = [(TPSTipsAssetPrefetchingManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.tips.AssetPrefetchingManager", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    sessionItems = v2->_sessionItems;
    v2->_sessionItems = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v8;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:9];
  }

  return v2;
}

- (void)cancel
{
  objc_initWeak(&location, self);
  v3 = [(TPSTipsAssetPrefetchingManager *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TPSTipsAssetPrefetchingManager_cancel__block_invoke;
  v4[3] = &unk_278451458;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__TPSTipsAssetPrefetchingManager_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelFetch];
}

- (void)cancelFetch
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(TPSTipsAssetPrefetchingManager *)self sessionItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MEMORY[0x277D71778] data];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_220B31000, v5, OS_LOG_TYPE_INFO, "Prefetching cancelled", buf, 2u);
    }
  }

  v6 = [(TPSTipsAssetPrefetchingManager *)self operationQueue];
  [v6 cancelAllOperations];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(TPSTipsAssetPrefetchingManager *)self sessionItems];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [MEMORY[0x277D717E0] defaultManager];
        [v13 cancelSessionItem:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)prefetchAssetsFromTip:(id)a3 tips:(id)a4 assetUserInterfaceStyle:(int64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 identifier];
  v11 = [(TPSTipsAssetPrefetchingManager *)self currentTip];
  v12 = [v11 identifier];
  v13 = [v10 isEqualToString:v12];

  if (!v13 || [(TPSTipsAssetPrefetchingManager *)self assetUserInterface]!= a5)
  {
    [(TPSTipsAssetPrefetchingManager *)self cancel];
    [(TPSTipsAssetPrefetchingManager *)self setCurrentTip:v8];
    [(TPSTipsAssetPrefetchingManager *)self setAssetUserInterface:a5];
    v14 = [v9 count];
    v15 = [v9 indexOfObject:v8];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
      if (v16 < v14 - 1)
      {
        v18 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
        v19 = [v9 objectsAtIndexes:v18];

        [v17 addObjectsFromArray:v19];
      }

      if (v16)
      {
        v20 = [v9 subarrayWithRange:{0, v16}];
        v21 = [v20 reverseObjectEnumerator];
        v22 = [v21 allObjects];

        v23 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v22, "count") != 0}];
        v24 = [v22 objectsAtIndexes:v23];

        [v17 addObjectsFromArray:v24];
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v31;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [(TPSTipsAssetPrefetchingManager *)self appendAssetsOperationsForTip:*(*(&v30 + 1) + 8 * i), v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v27);
      }
    }
  }
}

- (void)appendAssetsOperationsForTip:(id)a3
{
  v4 = MEMORY[0x277D71698];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v5 fullContentAssets];
  v8 = [v5 language];
  v9 = [(TPSTipsAssetPrefetchingManager *)self assetUserInterface];
  v10 = [v5 assetFileInfoManager];

  v11 = [v6 assetConfigurationForAssets:v7 language:v8 userInterfaceStyle:v9 assetFileInfoManager:v10];

  [(TPSTipsAssetPrefetchingManager *)self addFetchOperationWithAssetConfiguration:v11 type:0 operationName:@"image-prefetch"];
  [(TPSTipsAssetPrefetchingManager *)self addFetchOperationWithAssetConfiguration:v11 type:1 operationName:@"video-prefetch"];
}

- (void)addFetchOperationWithAssetConfiguration:(id)a3 type:(int64_t)a4 operationName:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 cacheIdentifierForType:a4];
  v11 = [MEMORY[0x277D71708] assetPathFromAssetConfiguration:v8 type:a4];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      if (!a4 || ([MEMORY[0x277D716A0] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "dataCacheForIdentifier:", v10), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
      {
        v15 = [MEMORY[0x277D71778] data];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v28 = v10;
          v29 = 2112;
          v30 = v12;
          _os_log_impl(&dword_220B31000, v15, OS_LOG_TYPE_INFO, "Prefetching needed for video with identifier: %@ path %@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v16 = objc_alloc(MEMORY[0x277D716B8]);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke;
        v23[3] = &unk_2784514F8;
        objc_copyWeak(v26, buf);
        v24 = v10;
        v25 = v12;
        v26[1] = a4;
        v17 = [v16 initWithAsyncBlock:v23];
        [v17 setName:v9];
        v18 = [(TPSTipsAssetPrefetchingManager *)self serialQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_5;
        v20[3] = &unk_2784511E8;
        objc_copyWeak(&v22, buf);
        v21 = v17;
        v19 = v17;
        dispatch_async(v18, v20);

        objc_destroyWeak(&v22);
        objc_destroyWeak(v26);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16;
  aBlock[3] = &unk_2784514A8;
  v32 = *(a1 + 32);
  v33 = *(a1 + 40);
  v34 = WeakRetained;
  v36 = &v37;
  v5 = v3;
  v35 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (*(a1 + 56))
  {
    v8 = [MEMORY[0x277D716A0] sharedInstance];
    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v12 = *MEMORY[0x277CCA790];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_3;
    v27[3] = &unk_2784514D0;
    v28 = v7;
    LODWORD(v13) = v12;
    v14 = [v8 formattedDataForPath:v10 identifier:v9 attributionIdentifier:0 priority:v27 completionHandler:v13];
    v15 = v38[5];
    v38[5] = v14;

    v16 = *MEMORY[0x277CCA7A0];
  }

  else
  {
    v19 = a1 + 32;
    v17 = *(a1 + 32);
    v18 = *(v19 + 8);
    v16 = *MEMORY[0x277CCA7A0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_2;
    v29[3] = &unk_2784514D0;
    v30 = v6;
    LODWORD(v20) = v16;
    v21 = [TPSImageAssetController formattedDataForPath:v18 identifier:v17 priority:v29 completionHandler:v20];
    v22 = v38[5];
    v38[5] = v21;
  }

  v23 = [v38[5] sessionTask];
  LODWORD(v24) = v16;
  [v23 setPriority:v24];

  if (v38[5])
  {
    v25 = [WeakRetained serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_4;
    block[3] = &unk_278451480;
    block[4] = WeakRetained;
    block[5] = &v37;
    dispatch_async(v25, block);
  }

  _Block_object_dispose(&v37, 8);
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71778] data];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16_cold_1(a1, v4);
  }

  if (v3)
  {
    v5 = [MEMORY[0x277D71778] data];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16_cold_2(v3, v5);
    }
  }

  v6 = [*(a1 + 48) serialQueue];

  if (v6)
  {
    v7 = [*(a1 + 48) serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_17;
    v9[3] = &unk_278451480;
    v8 = *(a1 + 64);
    v9[4] = *(a1 + 48);
    v9[5] = v8;
    dispatch_async(v7, v9);
  }

  (*(*(a1 + 56) + 16))();
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionItems];
  [v2 removeObject:*(*(*(a1 + 40) + 8) + 40)];
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionItems];
  [v2 addObject:*(*(*(a1 + 40) + 8) + 40)];
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained operationQueue];
  [v2 addOperation:*(a1 + 32)];
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_220B31000, a2, OS_LOG_TYPE_DEBUG, "Prefetched image with identifier: %@ path %@", &v4, 0x16u);
}

void __93__TPSTipsAssetPrefetchingManager_addFetchOperationWithAssetConfiguration_type_operationName___block_invoke_16_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_220B31000, a2, OS_LOG_TYPE_DEBUG, "error %@", &v2, 0xCu);
}

@end