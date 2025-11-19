@interface VUIAssetGroup
+ (id)_humanReadableStringForGroupType:(int64_t)a3;
- (VUIAssetGroup)initWithGroupType:(int64_t)a3 baseCachePath:(id)a4 folderName:(id)a5 maxCacheSize:(unint64_t)a6 purgeOnLoad:(BOOL)a7;
- (id)_manifestFilePath;
- (id)assetInfoForKey:(id)a3 queue:(id)a4;
- (id)description;
- (id)infoForAllAssetsWithQueue:(id)a3;
- (id)infoForAllAssetsWithTags:(id)a3 queue:(id)a4;
- (void)_removeAssetInfoForKey:(id)a3 removeFile:(BOOL)a4;
- (void)_saveManifest;
- (void)_updateManifestWithChange:(id)a3;
- (void)removeAllAssetsWithQueue:(id)a3;
- (void)removeAssetInfoForKey:(id)a3 queue:(id)a4;
- (void)setAssetInfo:(id)a3 forKey:(id)a4 queue:(id)a5;
- (void)updateAssetsFromFiles;
@end

@implementation VUIAssetGroup

- (void)updateAssetsFromFiles
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_270E6E000, a2, OS_LOG_TYPE_ERROR, "Couldn't read manifest: %{public}@", &v2, 0xCu);
}

- (id)_manifestFilePath
{
  v2 = [(VUIAssetGroup *)self cachePath];
  v3 = [v2 stringByAppendingPathComponent:@"manifest"];

  return v3;
}

id __38__VUIAssetGroup_updateAssetsFromFiles__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v8 setObject:v9 forKeyedSubscript:@"VUIAssetSize"];

    v10 = [MEMORY[0x277CBEAA8] date];
    [v8 setObject:v10 forKeyedSubscript:@"VUIAssetLastAccessedDate"];

    v11 = [v8 objectForKeyedSubscript:@"VUIAssetTags"];

    if (v11)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = [v8 objectForKeyedSubscript:@"VUIAssetTags"];
      v14 = [v12 setWithArray:v13];
      [v8 setObject:v14 forKeyedSubscript:@"VUIAssetTags"];
    }

    v15 = [v8 copy];
  }

  else
  {
    v18[0] = @"VUIAssetSize";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v19[0] = v8;
    v19[1] = v5;
    v18[1] = @"VUIAssetPath";
    v18[2] = @"VUIAssetLastAccessedDate";
    v16 = [MEMORY[0x277CBEAA8] date];
    v19[2] = v16;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  return v15;
}

- (VUIAssetGroup)initWithGroupType:(int64_t)a3 baseCachePath:(id)a4 folderName:(id)a5 maxCacheSize:(unint64_t)a6 purgeOnLoad:(BOOL)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v38.receiver = self;
  v38.super_class = VUIAssetGroup;
  v14 = [(VUIAssetGroup *)&v38 init];
  v15 = v14;
  if (v14)
  {
    v14->_groupType = a3;
    v16 = [v12 stringByAppendingPathComponent:v13];
    cachePath = v15->_cachePath;
    v15->_cachePath = v16;

    v18 = a6 << 20;
    if (!a6)
    {
      v18 = 10485760;
    }

    v15->_maxCacheSize = v18;
    v15->_pruneCount = 10;
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cacheRecords = v15->_cacheRecords;
    v15->_cacheRecords = v19;

    v15->_currentCacheSize = 0;
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetKeysByTag = v15->_assetKeysByTag;
    v15->_assetKeysByTag = v21;

    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = 0;
    [v23 fileExistsAtPath:v15->_cachePath isDirectory:&v37];
    v24 = a7 | v37 ^ 1;
    if (v24)
    {
      v25 = v15->_cachePath;
      v36 = 0;
      [v23 removeItemAtPath:v25 error:&v36];
      v26 = v36;
      if (v26)
      {
        v27 = [objc_opt_class() _humanReadableStringForGroupType:{-[VUIAssetGroup groupType](v15, "groupType")}];
        v28 = VUICImageLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [VUIAssetGroup initWithGroupType:baseCachePath:folderName:maxCacheSize:purgeOnLoad:];
        }
      }
    }

    v29 = v15->_cachePath;
    v35 = 0;
    [v23 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:&v35];
    v30 = v35;
    if (v30)
    {
      v31 = [objc_opt_class() _humanReadableStringForGroupType:{-[VUIAssetGroup groupType](v15, "groupType")}];
      v32 = VUICImageLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [VUIAssetGroup initWithGroupType:baseCachePath:folderName:maxCacheSize:purgeOnLoad:];
      }
    }

    if ((v24 & 1) == 0)
    {
      [(VUIAssetGroup *)v15 updateAssetsFromFiles];
    }

    v33 = VUICImageLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v15;
      _os_log_impl(&dword_270E6E000, v33, OS_LOG_TYPE_DEFAULT, "Created a VUIAssetGroup : %@", buf, 0xCu);
    }
  }

  return v15;
}

- (void)setAssetInfo:(id)a3 forKey:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke;
  block[3] = &unk_279E21B58;
  objc_copyWeak(&v17, &location);
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_barrier_sync(v10, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v29 = [WeakRetained[7] objectForKeyedSubscript:*(a1 + 32)];
    if (v29)
    {
      [*(a1 + 40) _removeAssetInfoForKey:*(a1 + 32) removeFile:0];
    }

    v4 = [*(a1 + 48) objectForKey:@"VUIAssetSize"];

    if (v4)
    {
      v5 = [*(a1 + 48) objectForKey:@"VUIAssetSize"];
      v3[6] = v3[6] + [v5 unsignedLongLongValue];
    }

    [v3[7] setObject:*(a1 + 48) forKey:*(a1 + 32)];
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"VUIAssetTags"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [v3[8] objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = [MEMORY[0x277CBEB58] setWithCapacity:1];
            [v3[8] setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:*(a1 + 32)];
        }

        v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v8);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke_2;
    v35[3] = &unk_279E21980;
    v36 = *(a1 + 48);
    v27 = *(a1 + 32);
    v13 = v27.i64[0];
    v37 = vextq_s8(v27, v27, 8uLL);
    [v3 _updateManifestWithChange:v35];
    if (v3[6] > v3[4])
    {
      v14 = VUICImageLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270E6E000, v14, OS_LOG_TYPE_DEFAULT, "Current cache size exceeds maximum cache size.  Starting to prune.", buf, 2u);
      }

      v15 = [v3[7] allKeys];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke_19;
      v34[3] = &unk_279E214B0;
      v34[4] = v3;
      v28 = v15;
      [v15 sortedArrayUsingComparator:v34];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v33 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v3[7] objectForKeyedSubscript:v21];
            v23 = v22;
            if (v3[4] * 0.95 > v3[6])
            {

              goto LABEL_30;
            }

            v24 = [v22 objectForKey:@"VUIAssetPath"];
            if ([v24 length])
            {
              [*(a1 + 40) _removeAssetInfoForKey:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v25 = VUICImageLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_270E6E000, v25, OS_LOG_TYPE_DEFAULT, "Done freeing up cache space. %@", buf, 0xCu);
      }
    }
  }
}

void __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) mutableCopy];
  [v7 removeObjectForKey:@"VUIAsset"];
  [v7 removeObjectForKey:@"VUIAssetLastAccessedDate"];
  v2 = [v7 objectForKeyedSubscript:@"VUIAssetTags"];

  if (v2)
  {
    v3 = [v7 objectForKeyedSubscript:@"VUIAssetTags"];
    v4 = [v3 allObjects];
    [v7 setObject:v4 forKeyedSubscript:@"VUIAssetTags"];
  }

  v5 = [v7 copy];
  v6 = [*(a1 + 40) manifest];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 48)];
}

uint64_t __43__VUIAssetGroup_setAssetInfo_forKey_queue___block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 56);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 valueForKeyPath:@"VUIAssetLastAccessedDate"];

  v9 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v6];

  v10 = [v9 valueForKeyPath:@"VUIAssetLastAccessedDate"];

  v11 = [v8 compare:v10];
  return v11;
}

- (id)assetInfoForKey:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke;
  block[3] = &unk_279E21B80;
  objc_copyWeak(&v25, &location);
  v24 = &v27;
  v8 = v6;
  v23 = v8;
  dispatch_sync(v7, block);
  v9 = [v28[5] objectForKey:@"VUIVAssetExpiryDate"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 compare:v10];

    if (v11 == -1)
    {
      v12 = v28[5];
      v28[5] = 0;

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke_2;
      v19[3] = &unk_279E21BA8;
      objc_copyWeak(&v21, &location);
      v20 = v8;
      dispatch_barrier_async(v7, v19);

      objc_destroyWeak(&v21);
    }
  }

  v13 = v28[5];
  if (v13)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke_3;
    v16[3] = &unk_279E21BA8;
    objc_copyWeak(&v18, &location);
    v17 = v8;
    dispatch_barrier_async(v7, v16);

    objc_destroyWeak(&v18);
    v13 = v28[5];
  }

  v14 = v13;

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[7] objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

void __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAssetInfoForKey:*(a1 + 32)];
}

void __39__VUIAssetGroup_assetInfoForKey_queue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[7] objectForKey:*(a1 + 32)];

    WeakRetained = v8;
    if (v3)
    {
      v4 = MEMORY[0x277CBEB38];
      v5 = [v8[7] objectForKey:*(a1 + 32)];
      v6 = [v4 dictionaryWithDictionary:v5];

      v7 = [MEMORY[0x277CBEAA8] date];
      [v6 setObject:v7 forKey:@"VUIAssetLastAccessedDate"];

      [v8[7] setObject:v6 forKey:*(a1 + 32)];
      WeakRetained = v8;
    }
  }
}

- (void)removeAssetInfoForKey:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VUIAssetGroup_removeAssetInfoForKey_queue___block_invoke;
  block[3] = &unk_279E21BA8;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v8 = v6;
  dispatch_barrier_sync(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__VUIAssetGroup_removeAssetInfoForKey_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAssetInfoForKey:*(a1 + 32)];
}

- (void)removeAllAssetsWithQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__VUIAssetGroup_removeAllAssetsWithQueue___block_invoke;
  v5[3] = &unk_279E217C0;
  objc_copyWeak(&v6, &location);
  dispatch_barrier_sync(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__VUIAssetGroup_removeAllAssetsWithQueue___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[7] allKeys];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 _removeAssetInfoForKey:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)infoForAllAssetsWithQueue:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VUIAssetGroup_infoForAllAssetsWithQueue___block_invoke;
  block[3] = &unk_279E21BD0;
  objc_copyWeak(&v8, &location);
  block[4] = &v10;
  dispatch_sync(v4, block);

  v5 = v11[5];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __43__VUIAssetGroup_infoForAllAssetsWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[7] copy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

- (id)infoForAllAssetsWithTags:(id)a3 queue:(id)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v7 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__VUIAssetGroup_infoForAllAssetsWithTags_queue___block_invoke;
  v11[3] = &unk_279E21BF8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = &v16;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v17[5];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __48__VUIAssetGroup_infoForAllAssetsWithTags_queue___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [WeakRetained[8] objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
          v10 = v9;
          if (!v9)
          {

            v6 = 0;
LABEL_16:

            goto LABEL_18;
          }

          if (v6)
          {
            [v6 intersectSet:v9];
            if (![v6 count])
            {
              goto LABEL_16;
            }
          }

          else
          {
            v6 = [v9 mutableCopy];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_18:

    if ([v6 count])
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * j);
            v18 = [WeakRetained[7] objectForKeyedSubscript:{v17, v22}];
            [v11 setObject:v18 forKeyedSubscript:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);
      }

      v19 = [v11 copy];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }
}

- (void)_removeAssetInfoForKey:(id)a3 removeFile:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_cacheRecords objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"VUIAssetPath"];
    v10 = [v8 objectForKey:@"VUIAssetSize"];

    if (v10)
    {
      v11 = [v8 objectForKey:@"VUIAssetSize"];
      v12 = [v11 unsignedLongLongValue];

      self->_currentCacheSize -= v12;
    }

    if ([v9 length])
    {
      v13 = !v4;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = 0;
      v15 = [v14 removeItemAtPath:v9 error:&v31];
      v16 = v31;

      if ((v15 & 1) == 0)
      {
        v17 = VUICImageLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [VUIAssetGroup _removeAssetInfoForKey:removeFile:];
        }
      }
    }

    [(NSMutableDictionary *)self->_cacheRecords removeObjectForKey:v6];
    v18 = [v8 objectForKeyedSubscript:@"VUIAssetTags"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          v24 = [(NSMutableDictionary *)self->_assetKeysByTag objectForKeyedSubscript:v23];
          [v24 removeObject:v6];
          if (![v24 count])
          {
            [(NSMutableDictionary *)self->_assetKeysByTag removeObjectForKey:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__VUIAssetGroup__removeAssetInfoForKey_removeFile___block_invoke;
    v25[3] = &unk_279E218C8;
    v25[4] = self;
    v26 = v6;
    [(VUIAssetGroup *)self _updateManifestWithChange:v25];
  }
}

void __51__VUIAssetGroup__removeAssetInfoForKey_removeFile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manifest];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VUIAssetGroup;
  v4 = [(VUIAssetGroup *)&v8 description];
  v5 = [objc_opt_class() _humanReadableStringForGroupType:self->_groupType];
  v6 = [v3 stringWithFormat:@"%@ [Type: %@ MaxCacheSize: %lu Current Cache Size: %lu Current Free Space: %lu CachePath: %@]", v4, v5, self->_maxCacheSize, self->_currentCacheSize, self->_maxCacheSize - self->_currentCacheSize, self->_cachePath];

  return v6;
}

- (void)_updateManifestWithChange:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VUIAssetGroup *)v5 manifest];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(VUIAssetGroup *)v5 setManifest:v7];
  }

  v4[2](v4);
  v8 = [(VUIAssetGroup *)v5 isManifestDirty];
  [(VUIAssetGroup *)v5 setManifestDirty:1];
  objc_sync_exit(v5);

  if (!v8)
  {
    objc_initWeak(&location, v5);
    v9 = dispatch_time(0, 60000000000);
    v10 = dispatch_get_global_queue(-32768, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__VUIAssetGroup__updateManifestWithChange___block_invoke;
    v11[3] = &unk_279E217C0;
    objc_copyWeak(&v12, &location);
    dispatch_after(v9, v10, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __43__VUIAssetGroup__updateManifestWithChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveManifest];
    WeakRetained = v2;
  }
}

- (void)_saveManifest
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_270E6E000, a2, OS_LOG_TYPE_ERROR, "Couldn't save manifest: %{public}@", &v2, 0xCu);
}

+ (id)_humanReadableStringForGroupType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279E21C40[a3];
  }
}

@end