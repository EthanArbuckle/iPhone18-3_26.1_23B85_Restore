@interface ICQUsageStorageCache
- (ICQUsageStorageCache)init;
- (float)sizeForMediaQuery:(id)a3 withGroupingType:(int64_t)a4 storingInCache:(id)a5 withKey:(id)a6;
- (float)specialStorageUsageForBundleID:(id)a3;
- (id)checkAndFixUpVersion:(id)a3;
- (void)cancelUsageDataPopulation;
- (void)populateMediaCache;
- (void)populateUsageAppsCacheWithHandler:(id)a3;
- (void)populateUsageBundlesCacheWithHandler:(id)a3;
- (void)populateUsageDataWithProgressBlock:(id)a3;
@end

@implementation ICQUsageStorageCache

- (ICQUsageStorageCache)init
{
  v6.receiver = self;
  v6.super_class = ICQUsageStorageCache;
  v2 = [(ICQUsageStorageCache *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.preferences.usage_storage_monitor", 0);
    cache_operation_queue = v2->_cache_operation_queue;
    v2->_cache_operation_queue = v3;
  }

  return v2;
}

- (void)populateUsageDataWithProgressBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ICQUsageStorageCache populateUsageDataWithProgressBlock:];
  }

  v5 = v4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__7;
  v14[4] = __Block_byref_object_dispose__7;
  v15 = objc_opt_new();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__7;
  v12[4] = __Block_byref_object_dispose__7;
  v13 = objc_opt_new();
  cache_operation_queue = self->_cache_operation_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke;
  v8[3] = &unk_27A65BEE8;
  v10 = v14;
  v11 = v12;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(cache_operation_queue, v8);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
}

void __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke(void *a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_2;
  block[3] = &unk_27A65A820;
  block[4] = a1[4];
  dispatch_group_async(v2, v3, block);

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_3;
  v23[3] = &unk_27A65BE48;
  v4 = a1[6];
  v23[4] = a1[4];
  v23[5] = v4;
  dispatch_group_async(v2, v3, v23);

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_6;
  v22[3] = &unk_27A65BE48;
  v5 = a1[7];
  v22[4] = a1[4];
  v22[5] = v5;
  dispatch_group_async(v2, v3, v22);

  v6 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v2, v6))
  {
    v7 = MEMORY[0x277D85CD0];
    do
    {
      v8 = a1[4];
      if ((*(v8 + 48) & 1) == 0)
      {
        v9 = [*(v8 + 16) copy];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_9;
        v18[3] = &unk_27A65BE98;
        v10 = a1[5];
        v18[4] = a1[4];
        v11 = v10;
        v21 = *(a1 + 3);
        v19 = v9;
        v20 = v11;
        v12 = v9;
        dispatch_async(v7, v18);
      }

      v13 = dispatch_time(0, 3000000000);
    }

    while (dispatch_group_wait(v2, v13));
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_10;
  v15[3] = &unk_27A65BEC0;
  v14 = a1[5];
  v15[4] = a1[4];
  v16 = v14;
  v17 = *(a1 + 3);
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

uint64_t __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_4;
  v2[3] = &unk_27A65BE20;
  return [*(a1 + 32) populateUsageAppsCacheWithHandler:v2];
}

BOOL __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_5;
  v7[3] = &unk_27A65B320;
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  LOBYTE(a1) = *(*(a1 + 32) + 48);

  return (a1 & 1) == 0;
}

uint64_t __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_6(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_7;
  v2[3] = &unk_27A65BE70;
  return [*(a1 + 32) populateUsageBundlesCacheWithHandler:v2];
}

BOOL __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_8;
  v7[3] = &unk_27A65B320;
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  LOBYTE(a1) = *(*(a1 + 32) + 48);

  return (a1 & 1) == 0;
}

void __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_9(void *a1)
{
  if ((*(a1[4] + 48) & 1) == 0)
  {
    (*(a1[6] + 16))();
    v3 = objc_opt_new();
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = objc_opt_new();
    v7 = *(a1[8] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __59__ICQUsageStorageCache_populateUsageDataWithProgressBlock___block_invoke_10(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 48) & 1) == 0)
  {
    v3 = a1[5];
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(*(a1[7] + 8) + 40);
    v6 = [*(v2 + 16) copy];
    (*(v3 + 16))(v3, v4, v5, v6, 1);
  }
}

- (void)cancelUsageDataPopulation
{
  self->_cacheUpdateCancelled = 1;
  cache_operation_queue = self->_cache_operation_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICQUsageStorageCache_cancelUsageDataPopulation__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(cache_operation_queue, block);
}

- (void)populateUsageBundlesCacheWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_usageBundlesCache)
  {
    usageBundlesManager = self->_usageBundlesManager;
    if (!usageBundlesManager)
    {
      v6 = objc_alloc_init(MEMORY[0x277D3FB98]);
      v7 = self->_usageBundlesManager;
      self->_usageBundlesManager = v6;

      usageBundlesManager = self->_usageBundlesManager;
    }

    [(PSUsageBundleManager *)usageBundlesManager vendUsageBundleAppsWithHandler:v4];
    if (!self->_cacheUpdateCancelled)
    {
      v8 = [(PSUsageBundleManager *)self->_usageBundlesManager allUsageBundleApps];
      usageBundlesCache = self->_usageBundlesCache;
      self->_usageBundlesCache = v8;

      v10 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_usageBundlesCache;
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Populating usage bundles cache with %@", &v12, 0xCu);
      }
    }
  }
}

- (float)sizeForMediaQuery:(id)a3 withGroupingType:(int64_t)a4 storingInCache:(id)a5 withKey:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5790]];
  [v9 addFilterPredicate:v12];

  v13 = objc_opt_new();
  if (a4)
  {
    [v9 setGroupingType:a4];
    v14 = [v9 collections];
    if ([v14 count])
    {
      v43 = v13;
      v44 = v11;
      v45 = v10;
      v46 = v9;
      v15 = [MEMORY[0x277CBEB18] array];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v57;
        v19 = *MEMORY[0x277CD5748];
        v20 = 0.0;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v57 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v56 + 1) + 8 * i);
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v23 = [v22 items];
            v24 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v53;
              v27 = 0.0;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v53 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = [*(*(&v52 + 1) + 8 * j) valueForProperty:v19];
                  [v29 floatValue];
                  v27 = v27 + v30;
                }

                v25 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
              }

              while (v25);
            }

            else
            {
              v27 = 0.0;
            }

            v20 = v20 + v27;
            *&v31 = v27;
            v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
            [v15 addObject:v32];
          }

          v17 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v17);
      }

      else
      {
        v20 = 0.0;
      }

      v14 = obj;

      v13 = v43;
      [v43 setGrouped:1];
      [v43 setItems:obj];
      *&v40 = v20;
      [v43 setTotalSize:v40];
      [v43 setItemSizes:v15];

      v10 = v45;
      v9 = v46;
      v11 = v44;
      goto LABEL_34;
    }

LABEL_29:
    v20 = 0.0;
    goto LABEL_34;
  }

  v14 = [v9 items];
  if (![v14 count])
  {
    goto LABEL_29;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v14;
  v33 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    v36 = *MEMORY[0x277CD5748];
    v20 = 0.0;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v14);
        }

        v38 = [*(*(&v48 + 1) + 8 * k) valueForProperty:v36];
        [v38 floatValue];
        v20 = v20 + v39;
      }

      v34 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v34);
  }

  else
  {
    v20 = 0.0;
  }

  [v13 setItems:v14];
  *&v41 = v20;
  [v13 setTotalSize:v41];
LABEL_34:

  [v10 setObject:v13 forKey:v11];
  return v20;
}

- (void)populateMediaCache
{
  if (!self->_mediaCache)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mediaCache = self->_mediaCache;
    self->_mediaCache = v3;

    [MEMORY[0x277CD5E38] setFilteringDisabled:1];
    v5 = MEMORY[0x277CD5E10];
    v6 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    v7 = [v6 libraryDataProvider];
    [v5 reloadDynamicPropertiesForLibraryDataProvider:v7];

    v8 = [MEMORY[0x277CD5E38] ITunesUAudioQuery];
    [(ICQUsageStorageCache *)self sizeForMediaQuery:v8 withGroupingType:1 storingInCache:self->_mediaCache withKey:@"audiocourses"];

    if (self->_cacheUpdateCancelled)
    {
      v9 = self->_mediaCache;
      self->_mediaCache = 0;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CD5E38]);
      v11 = MEMORY[0x277CBEB98];
      v12 = MEMORY[0x277CD5E30];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:4096];
      v14 = *MEMORY[0x277CD57C8];
      v15 = [v12 predicateWithValue:v13 forProperty:*MEMORY[0x277CD57C8]];
      v16 = [v11 setWithObject:v15];
      v17 = [v10 initWithFilterPredicates:v16];

      [(ICQUsageStorageCache *)self sizeForMediaQuery:v17 withGroupingType:1 storingInCache:self->_mediaCache withKey:@"videocourses"];
      if (self->_cacheUpdateCancelled)
      {
        v18 = self->_mediaCache;
        self->_mediaCache = 0;
      }

      else
      {
        v19 = objc_alloc(MEMORY[0x277CD5E38]);
        v20 = MEMORY[0x277CBEB98];
        v21 = MEMORY[0x277CD5E30];
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:2];
        v23 = [v21 predicateWithValue:v22 forProperty:v14];
        v24 = [v20 setWithObject:v23];
        v25 = [v19 initWithFilterPredicates:v24];

        [(ICQUsageStorageCache *)self sizeForMediaQuery:v25 withGroupingType:7 storingInCache:self->_mediaCache withKey:@"audiopodcasts"];
        if (self->_cacheUpdateCancelled || ([MEMORY[0x277CD5E38] videoPodcastsQuery], v26 = objc_claimAutoreleasedReturnValue(), -[ICQUsageStorageCache sizeForMediaQuery:withGroupingType:storingInCache:withKey:](self, "sizeForMediaQuery:withGroupingType:storingInCache:withKey:", v26, 7, self->_mediaCache, @"videopodcasts"), v26, self->_cacheUpdateCancelled) || (objc_msgSend(MEMORY[0x277CD5E38], "audiobooksQuery"), v27 = objc_claimAutoreleasedReturnValue(), -[ICQUsageStorageCache sizeForMediaQuery:withGroupingType:storingInCache:withKey:](self, "sizeForMediaQuery:withGroupingType:storingInCache:withKey:", v27, 10, self->_mediaCache, @"audiobooks"), v27, self->_cacheUpdateCancelled))
        {
          v28 = self->_mediaCache;
          self->_mediaCache = 0;
        }

        else
        {
          v29 = dispatch_semaphore_create(0);
          v30 = dispatch_queue_create(0, 0);
          v32[0] = 0;
          v32[1] = v32;
          v32[2] = 0x2020000000;
          v32[3] = 0;
          v31 = v29;
          ALGetLibrarySizes();
          dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);

          _Block_object_dispose(v32, 8);
        }
      }
    }
  }
}

void __42__ICQUsageStorageCache_populateMediaCache__block_invoke(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = objc_alloc_init(ICQUsageMediaCollection);
    v7 = [MEMORY[0x277CBEA60] array];
    [(ICQUsageMediaCollection *)v6 setItems:v7];

    v8 = a2 - 1;
    if ((a2 - 1) >= 8 || ((0x8Bu >> v8) & 1) == 0)
    {
      __42__ICQUsageStorageCache_populateMediaCache__block_invoke_cold_1();
    }

    [*(a1[4] + 16) setObject:v6 forKey:off_27A65BF80[v8]];
    *&v9 = a3;
    [(ICQUsageMediaCollection *)v6 setTotalSize:v9];
  }

  *(*(a1[6] + 8) + 24) |= a2;
  if (*(*(a1[6] + 8) + 24) == 15)
  {
    v10 = a1[5];

    dispatch_semaphore_signal(v10);
  }
}

- (id)checkAndFixUpVersion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(__CFString *)v3 stringValue];
LABEL_6:

    v3 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(__CFString *)v3 length])
  {
    v4 = &stru_28844FC60;
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (float)specialStorageUsageForBundleID:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0.0;
  if (![v3 isEqualToString:*MEMORY[0x277D3FDE8]])
  {
    goto LABEL_43;
  }

  v43 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [v43 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];
  v6 = [v5 path];

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_28844FC60;
  }

  v11 = [v6 stringByAppendingPathComponent:v10];

  v41 = [v11 stringByAppendingPathComponent:@"iBooksSizingCache.plist"];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:?];
  v13 = v12;
  v42 = v11;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
  }

  v45 = v14;

  v15 = [MEMORY[0x277CBEB58] set];
  [v43 enumeratorAtPath:@"/var/mobile/Media/Books"];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = v53 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
  obj = v16;
  if (!v17)
  {
LABEL_31:
    v31 = v42;

    goto LABEL_33;
  }

  v18 = v17;
  v40 = v3;
  v19 = 0;
  v16 = 0;
  v20 = *v51;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v51 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v50 + 1) + 8 * i);
      v23 = [@"/var/mobile/Media/Books" stringByAppendingPathComponent:{v22, v40}];
      if (v16 && ([v22 hasPrefix:v16] & 1) == 0)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
        [v45 setObject:v24 forKey:v16];

        v19 = 0;
        v16 = 0;
      }

      v25 = [v22 pathExtension];
      if (([v25 isEqualToString:@"epub"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"ibooks"))
      {
        [v15 addObject:v22];
        v26 = [v45 objectForKey:v22];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [v26 unsignedLongLongValue];
          [obj skipDescendants];

          goto LABEL_27;
        }

        if (v16)
        {
          [ICQUsageStorageCache specialStorageUsageForBundleID:];
        }

        if (v19)
        {
          [ICQUsageStorageCache specialStorageUsageForBundleID:];
        }

        v16 = v22;
      }

      v28 = [v43 attributesOfItemAtPath:v23 error:0];
      v27 = [v28 fileSize];

      if (v16)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v19 += v29;
LABEL_27:
      v4 = v4 + v27;
    }

    v18 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  }

  while (v18);

  if (v16)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
    [v45 setObject:v30 forKey:v16];

    v3 = v40;
    goto LABEL_31;
  }

  v3 = v40;
  v31 = v42;
LABEL_33:
  v32 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = v45;
  v34 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v47;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v46 + 1) + 8 * j);
        if (([v15 containsObject:v38] & 1) == 0)
        {
          [v32 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v35);
  }

  [v33 removeObjectsForKeys:v32];
  [v33 writeToFile:v41 atomically:1];

LABEL_43:
  return v4;
}

- (void)populateUsageAppsCacheWithHandler:(id)a3
{
  v4 = a3;
  if (!self->_appsCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    appsCache = self->_appsCache;
    self->_appsCache = v5;

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D3FDE8], *MEMORY[0x277D3FDE0], 0}];
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__ICQUsageStorageCache_populateUsageAppsCacheWithHandler___block_invoke;
    v26[3] = &unk_27A65BF38;
    v10 = v8;
    v27 = v10;
    [v9 enumerateBundlesOfType:1 block:v26];

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v11 = [v10 count];
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ICQUsageStorageCache_populateUsageAppsCacheWithHandler___block_invoke_2;
    block[3] = &unk_27A65BF60;
    v21 = &v22;
    v13 = v10;
    v17 = v13;
    v14 = v7;
    v18 = v14;
    v19 = self;
    v20 = v4;
    dispatch_apply(v11, v12, block);

    if (*(v23 + 24) == 1)
    {
      v15 = self->_appsCache;
      self->_appsCache = 0;
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __58__ICQUsageStorageCache_populateUsageAppsCacheWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    return;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v7 = [v6 bundleIdentifier];
  v8 = [v6 applicationType];
  if ([v8 isEqualToString:*MEMORY[0x277CC1E40]])
  {

    goto LABEL_5;
  }

  v9 = [*(a1 + 40) containsObject:v7];

  if (v9)
  {
LABEL_5:
    v10 = objc_alloc_init(ICQUsageApp);
    [*(*(a1 + 48) + 24) addObject:v10];
    v11 = [v6 localizedNameForContext:0];
    v12 = MEMORY[0x277CCA8D8];
    v13 = [v6 bundleURL];
    v14 = [v12 bundleWithURL:v13];

    v15 = [v14 localizedInfoDictionary];
    v16 = [v15 objectForKey:*MEMORY[0x277CBEC50]];
    v17 = [*(a1 + 48) checkAndFixUpVersion:v16];

    v35 = v5;
    if (![v17 length])
    {
      v18 = [v6 shortVersionString];

      v17 = [*(a1 + 48) checkAndFixUpVersion:v18];

      if (![v17 length])
      {
        v19 = [v6 bundleVersion];

        v17 = [*(a1 + 48) checkAndFixUpVersion:v19];
      }
    }

    v20 = [v6 diskUsage];
    v21 = [v20 staticUsage];
    [v21 floatValue];
    v23 = v22;

    v24 = [v6 diskUsage];
    v25 = [v24 dynamicUsage];
    [v25 floatValue];
    v27 = v26;

    [*(a1 + 48) specialStorageUsageForBundleID:v7];
    v29 = v28;
    [(ICQUsageApp *)v10 setName:v11];
    [(ICQUsageApp *)v10 setBundleIdentifier:v7];
    [(ICQUsageApp *)v10 setBundleVersion:v17];
    LODWORD(v30) = v23;
    [(ICQUsageApp *)v10 setStaticSize:v30];
    LODWORD(v31) = v27;
    [(ICQUsageApp *)v10 setDynamicSize:v31];
    LODWORD(v32) = v29;
    [(ICQUsageApp *)v10 setSpecialSize:v32];
    v33 = [v6 applicationType];
    -[ICQUsageApp setSystemApp:](v10, "setSystemApp:", [v33 isEqualToString:*MEMORY[0x277CC1E30]]);

    v34 = *(a1 + 56);
    if (v34 && ((*(v34 + 16))(v34, v10) & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    v5 = v35;
  }

  objc_autoreleasePoolPop(v5);
}

@end