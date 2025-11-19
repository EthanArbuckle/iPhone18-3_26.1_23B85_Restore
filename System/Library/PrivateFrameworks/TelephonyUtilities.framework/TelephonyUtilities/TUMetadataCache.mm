@interface TUMetadataCache
+ (id)classIdentifier;
- (BOOL)isEmpty;
- (NSString)description;
- (TUMetadataCache)init;
- (TUMetadataCache)initWithDataProviders:(id)a3;
- (TUMetadataCache)initWithQueue:(id)a3 dataProviders:(id)a4;
- (id)metadataForDestinationID:(id)a3;
- (void)_updateCacheWithDestinationIDs:(id)a3 onlyEmptyProviders:(BOOL)a4 completion:(id)a5;
- (void)dataProvider:(id)a3 requestedRefreshWithDestinationIDs:(id)a4;
- (void)updateCacheForEmptyDataProvidersWithDestinationIDs:(id)a3 completion:(id)a4;
- (void)updateCacheWithDestinationIDs:(id)a3 completion:(id)a4;
@end

@implementation TUMetadataCache

+ (id)classIdentifier
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  v5 = [v4 bundleIdentifier];
  v6 = NSStringFromClass(v2);
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];

  return v7;
}

- (TUMetadataCache)init
{
  [(TUMetadataCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TUMetadataCache)initWithDataProviders:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [objc_opt_class() classIdentifier];
  v7 = NSStringFromSelector(sel_queue);
  v8 = [v4 stringWithFormat:@"%@.%@", v6, v7];

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

  v11 = dispatch_queue_create([v8 UTF8String], v10);
  v12 = [(TUMetadataCache *)self initWithQueue:v11 dataProviders:v5];

  return v12;
}

- (TUMetadataCache)initWithQueue:(id)a3 dataProviders:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = TUMetadataCache;
  v9 = [(TUMetadataCache *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [v8 copy];
    providers = v10->_providers;
    v10->_providers = v11;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v10->_providers;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * v17++) setDelegate:{v10, v20}];
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)metadataForDestinationID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(TUMetadataItem);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(TUMetadataCache *)self providers];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 metadataForDestinationID:v4];
        if (v12)
        {
          [(TUMetadataItem *)v5 setMetadata:v12 forProvider:objc_opt_class()];
        }

        v13 = [v11 metadataDictForDestinationID:v4];
        if (v13)
        {
          [(TUMetadataItem *)v5 setMetadataDict:v13 forProvider:objc_opt_class()];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)updateCacheWithDestinationIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__TUMetadataCache_updateCacheWithDestinationIDs_completion___block_invoke;
  v8[3] = &unk_1E74269B0;
  v9 = v6;
  v7 = v6;
  [(TUMetadataCache *)self _updateCacheWithDestinationIDs:a3 onlyEmptyProviders:0 completion:v8];
}

uint64_t __60__TUMetadataCache_updateCacheWithDestinationIDs_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCacheForEmptyDataProvidersWithDestinationIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__TUMetadataCache_updateCacheForEmptyDataProvidersWithDestinationIDs_completion___block_invoke;
  v8[3] = &unk_1E74269B0;
  v9 = v6;
  v7 = v6;
  [(TUMetadataCache *)self _updateCacheWithDestinationIDs:a3 onlyEmptyProviders:1 completion:v8];
}

uint64_t __81__TUMetadataCache_updateCacheForEmptyDataProvidersWithDestinationIDs_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateCacheWithDestinationIDs:(id)a3 onlyEmptyProviders:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v18 = v7;
  if ([v7 count])
  {
    v17 = v8;
    group = dispatch_group_create();
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [(TUMetadataCache *)self providers];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          if (!v6 || [*(*(&v27 + 1) + 8 * v13) isEmpty])
          {
            v15 = [(TUMetadataCache *)self queue:v17];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __80__TUMetadataCache__updateCacheWithDestinationIDs_onlyEmptyProviders_completion___block_invoke;
            block[3] = &unk_1E7426350;
            block[4] = v14;
            v25 = v9;
            v26 = v31;
            dispatch_group_async(group, v15, block);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v11);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__TUMetadataCache__updateCacheWithDestinationIDs_onlyEmptyProviders_completion___block_invoke_12;
    v21[3] = &unk_1E74269D8;
    v22 = v17;
    v23 = v31;
    v21[4] = self;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], v21);

    _Block_object_dispose(v31, 8);
    v8 = v17;
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __80__TUMetadataCache__updateCacheWithDestinationIDs_onlyEmptyProviders_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v3 = [*(a1 + 32) isEmpty];
  [*(a1 + 32) updateCacheWithDestinationIDs:*(a1 + 40) withGroup:v2];
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) cacheOnly])
    {
      v5 = 500;
    }

    else
    {
      v5 = 3000;
    }
  }

  else
  {
    v5 = 500;
  }

  v6 = dispatch_time(0, 1000000 * v5);
  if (dispatch_group_wait(v2, v6))
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138412546;
      v13 = v10;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "%@ did not complete before the %ld millisecond timeout.", &v12, 0x16u);
    }
  }

  if (v3 && ([*(a1 + 32) isEmpty] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __80__TUMetadataCache__updateCacheWithDestinationIDs_onlyEmptyProviders_completion___block_invoke_12(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 24));
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.telephonyutilities.TUMetadataCacheDidFinishUpdatingNotification" object:a1[4]];
}

- (BOOL)isEmpty
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(TUMetadataCache *)self providers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isEmpty])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v18.receiver = self;
  v18.super_class = TUMetadataCache;
  v4 = [(TUMetadataCache *)&v18 description];
  v5 = [v3 initWithFormat:@"%@", v4];

  if ([(TUMetadataCache *)self isEmpty])
  {
    [v5 appendFormat:@": <empty>"];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(TUMetadataCache *)self providers];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v11 isEmpty] & 1) == 0)
          {
            [v5 appendFormat:@"\n\t%@", v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)dataProvider:(id)a3 requestedRefreshWithDestinationIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMetadataCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUMetadataCache_dataProvider_requestedRefreshWithDestinationIDs___block_invoke;
  block[3] = &unk_1E7424FD8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __67__TUMetadataCache_dataProvider_requestedRefreshWithDestinationIDs___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  [*(a1 + 32) updateCacheWithDestinationIDs:*(a1 + 40) withGroup:v2];
  v3 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = 5;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Update (refresh) of data provider %@ did not complete before the %ld second timeout.", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUMetadataCache_dataProvider_requestedRefreshWithDestinationIDs___block_invoke_26;
  block[3] = &unk_1E7424950;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v6 = *MEMORY[0x1E69E9840];
}

void __67__TUMetadataCache_dataProvider_requestedRefreshWithDestinationIDs___block_invoke_26(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"com.apple.telephonyutilities.TUMetadataCacheDidFinishUpdatingNotification" object:*(a1 + 32)];
}

@end