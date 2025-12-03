@interface VUICloudClient
+ (id)sharedInstance;
- (VUICloudClient)init;
- (void)loadArtworkURLsForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
@end

@implementation VUICloudClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[VUICloudClient sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

void __32__VUICloudClient_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUICloudClient);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;
}

- (VUICloudClient)init
{
  v6.receiver = self;
  v6.super_class = VUICloudClient;
  v2 = [(VUICloudClient *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    artworkMap = v2->_artworkMap;
    v2->_artworkMap = v3;
  }

  return v2;
}

- (void)loadArtworkURLsForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  v58 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v38 = objc_alloc_init(MEMORY[0x1E69E43C8]);
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke;
  v54[3] = &unk_1E8731B00;
  v54[4] = self;
  v10 = v8;
  v55 = v10;
  v11 = v9;
  v56 = v11;
  [dsCopy enumerateObjectsUsingBlock:v54];
  v12 = [v11 count];
  v13 = [v10 count];
  v14 = v13;
  if (v12)
  {
    handlerCopy[2](handlerCopy, v11, v13 == 0);
  }

  if (v14)
  {
    val = self;
    v36 = handlerCopy;
    v37 = dsCopy;
    v34 = [handlerCopy copy];
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
    array = [MEMORY[0x1E695DF70] array];
    v17 = [v10 count];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      do
      {
        if (v18 >= 0x1F4)
        {
          v20 = 500;
        }

        else
        {
          v20 = v18;
        }

        v21 = [v10 subarrayWithRange:{v19, v20}];
        [array addObject:v21];
        v18 -= v20;
        v19 += v20;
      }

      while (v18);
    }

    v22 = dispatch_group_create();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8731B28;
    v33 = v15;
    v53 = v33;
    v23 = _Block_copy(aBlock);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = array;
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          dispatch_group_enter(v22);
          v30 = [v29 copy];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_3;
          v45[3] = &unk_1E8731B50;
          v47 = v23;
          v46 = v22;
          [v38 loadArtworkInfoForPurchaseHistoryIDs:v30 completionHandler:v45];
        }

        v26 = [v24 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v26);
    }

    objc_initWeak(&location, val);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_4;
    block[3] = &unk_1E872DFB8;
    objc_copyWeak(&v43, &location);
    v40 = v38;
    v41 = v33;
    v42 = v34;
    v31 = v34;
    v32 = v33;
    dispatch_group_notify(v22, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);

    handlerCopy = v36;
    dsCopy = v37;
  }
}

void __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v4];
  }

  else
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = a1;
  v18 = *(a1 + 32);
  objc_sync_enter(v18);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v30 = *v33;
    v29 = *MEMORY[0x1E69E40A8];
    v28 = *MEMORY[0x1E69E40E8];
    v27 = *MEMORY[0x1E69E40C0];
    v26 = *MEMORY[0x1E69E40E0];
    v25 = *MEMORY[0x1E69E40B8];
    v24 = *MEMORY[0x1E69E40B0];
    v22 = *MEMORY[0x1E69E40C8];
    v23 = *MEMORY[0x1E69E40D8];
    do
    {
      v31 = v4;
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:v29];
        v8 = [v6 objectForKeyedSubscript:v28];
        v9 = [v7 objectForKeyedSubscript:v27];
        v10 = [v7 objectForKeyedSubscript:v26];
        v11 = [v7 objectForKeyedSubscript:v25];
        v12 = [v7 objectForKeyedSubscript:v24];
        v13 = [v7 objectForKeyedSubscript:v23];
        v14 = [v7 objectForKeyedSubscript:v22];
        v15 = v14;
        if (v8 && (v9 || v10 || v14))
        {
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = v16;
          if (v10)
          {
            [v16 setObject:v10 forKeyedSubscript:@"template-url"];
          }

          if (v15)
          {
            [v17 setObject:v15 forKeyedSubscript:@"tv-cover-art-url"];
          }

          if (v9)
          {
            [v17 setObject:v9 forKeyedSubscript:@"full-url"];
          }

          if (v11)
          {
            [v17 setObject:v11 forKeyedSubscript:@"full-token"];
          }

          if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
            [v17 setObject:v19 forKeyedSubscript:@"supports-layered-image"];
          }

          if (v12)
          {
            [v17 setObject:v12 forKeyedSubscript:@"cover-art-url"];
          }

          [*(v20 + 32) setObject:v17 forKeyedSubscript:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v18);
}

void __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __73__VUICloudClient_loadArtworkURLsForPurchaseHistoryIDs_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v3 = [WeakRetained artworkMap];
    [v3 addEntriesFromDictionary:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

@end