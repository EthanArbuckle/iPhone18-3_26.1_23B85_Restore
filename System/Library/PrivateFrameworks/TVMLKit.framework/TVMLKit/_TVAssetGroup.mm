@interface _TVAssetGroup
+ (id)_humanReadableStringForGroupType:(int64_t)a3;
- (_TVAssetGroup)initWithGroupType:(int64_t)a3 baseCachePath:(id)a4 folderName:(id)a5 maxCacheSize:(unint64_t)a6 purgeOnLoad:(BOOL)a7;
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

@implementation _TVAssetGroup

- (_TVAssetGroup)initWithGroupType:(int64_t)a3 baseCachePath:(id)a4 folderName:(id)a5 maxCacheSize:(unint64_t)a6 purgeOnLoad:(BOOL)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v36.receiver = self;
  v36.super_class = _TVAssetGroup;
  v14 = [(_TVAssetGroup *)&v36 init];
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
    v35 = 0;
    [v23 fileExistsAtPath:v15->_cachePath isDirectory:&v35];
    v24 = a7 | v35 ^ 1;
    if (v24)
    {
      v25 = v15->_cachePath;
      v34 = 0;
      [v23 removeItemAtPath:v25 error:&v34];
      v26 = v34;
      if (v26)
      {
        v27 = [objc_opt_class() _humanReadableStringForGroupType:{-[_TVAssetGroup groupType](v15, "groupType")}];
        if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
        {
          [_TVAssetGroup initWithGroupType:baseCachePath:folderName:maxCacheSize:purgeOnLoad:];
        }
      }
    }

    v28 = v15->_cachePath;
    v33 = 0;
    [v23 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v33];
    v29 = v33;
    if (v29)
    {
      v30 = [objc_opt_class() _humanReadableStringForGroupType:{-[_TVAssetGroup groupType](v15, "groupType")}];
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
      {
        [_TVAssetGroup initWithGroupType:baseCachePath:folderName:maxCacheSize:purgeOnLoad:];
      }
    }

    if ((v24 & 1) == 0)
    {
      [(_TVAssetGroup *)v15 updateAssetsFromFiles];
    }

    v31 = TVMLKitImageLogObject;
    if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v15;
      _os_log_impl(&dword_26CD9A000, v31, OS_LOG_TYPE_DEFAULT, "Created a _TVAssetGroup : %@", buf, 0xCu);
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
  block[2] = __43___TVAssetGroup_setAssetInfo_forKey_queue___block_invoke;
  block[3] = &unk_279D70C48;
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

- (id)assetInfoForKey:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___TVAssetGroup_assetInfoForKey_queue___block_invoke;
  block[3] = &unk_279D70C70;
  objc_copyWeak(&v25, &location);
  v24 = &v27;
  v8 = v6;
  v23 = v8;
  dispatch_sync(v7, block);
  v9 = [v28[5] objectForKey:@"ATVAssetExpiryDate"];
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
      v19[2] = __39___TVAssetGroup_assetInfoForKey_queue___block_invoke_2;
      v19[3] = &unk_279D6E770;
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
    v16[2] = __39___TVAssetGroup_assetInfoForKey_queue___block_invoke_3;
    v16[3] = &unk_279D6E770;
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

- (void)removeAssetInfoForKey:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___TVAssetGroup_removeAssetInfoForKey_queue___block_invoke;
  block[3] = &unk_279D6E770;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v8 = v6;
  dispatch_barrier_sync(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)removeAllAssetsWithQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___TVAssetGroup_removeAllAssetsWithQueue___block_invoke;
  v5[3] = &unk_279D6E890;
  objc_copyWeak(&v6, &location);
  dispatch_barrier_sync(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)infoForAllAssetsWithQueue:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___TVAssetGroup_infoForAllAssetsWithQueue___block_invoke;
  block[3] = &unk_279D70C98;
  objc_copyWeak(&v8, &location);
  block[4] = &v10;
  dispatch_sync(v4, block);

  v5 = v11[5];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)infoForAllAssetsWithTags:(id)a3 queue:(id)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v7 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48___TVAssetGroup_infoForAllAssetsWithTags_queue___block_invoke;
  v11[3] = &unk_279D70CC0;
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

- (void)_removeAssetInfoForKey:(id)a3 removeFile:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_cacheRecords objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"ATVAssetPath"];
    v10 = [v8 objectForKey:@"ATVAssetSize"];

    if (v10)
    {
      v11 = [v8 objectForKey:@"ATVAssetSize"];
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
      v30 = 0;
      v15 = [v14 removeItemAtPath:v9 error:&v30];
      v16 = v30;

      if ((v15 & 1) == 0 && os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
      {
        [_TVAssetGroup _removeAssetInfoForKey:removeFile:];
      }
    }

    [(NSMutableDictionary *)self->_cacheRecords removeObjectForKey:v6];
    v17 = [v8 objectForKeyedSubscript:@"ATVAssetTags"];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          v23 = [(NSMutableDictionary *)self->_assetKeysByTag objectForKeyedSubscript:v22];
          [v23 removeObject:v6];
          if (![v23 count])
          {
            [(NSMutableDictionary *)self->_assetKeysByTag removeObjectForKey:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51___TVAssetGroup__removeAssetInfoForKey_removeFile___block_invoke;
    v24[3] = &unk_279D6E2F8;
    v24[4] = self;
    v25 = v6;
    [(_TVAssetGroup *)self _updateManifestWithChange:v24];
  }
}

- (void)updateAssetsFromFiles
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_ERROR, "Couldn't read manifest: %{public}@", &v2, 0xCu);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _TVAssetGroup;
  v4 = [(_TVAssetGroup *)&v8 description];
  v5 = [objc_opt_class() _humanReadableStringForGroupType:self->_groupType];
  v6 = [v3 stringWithFormat:@"%@ [Type: %@ MaxCacheSize: %lu Current Cache Size: %lu Current Free Space: %lu CachePath: %@]", v4, v5, self->_maxCacheSize, self->_currentCacheSize, self->_maxCacheSize - self->_currentCacheSize, self->_cachePath];

  return v6;
}

- (void)_updateManifestWithChange:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(_TVAssetGroup *)v5 manifest];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(_TVAssetGroup *)v5 setManifest:v7];
  }

  v4[2](v4);
  v8 = [(_TVAssetGroup *)v5 isManifestDirty];
  [(_TVAssetGroup *)v5 setManifestDirty:1];
  objc_sync_exit(v5);

  if (!v8)
  {
    objc_initWeak(&location, v5);
    v9 = dispatch_time(0, 60000000000);
    v10 = dispatch_get_global_queue(-32768, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43___TVAssetGroup__updateManifestWithChange___block_invoke;
    v11[3] = &unk_279D6E890;
    objc_copyWeak(&v12, &location);
    dispatch_after(v9, v10, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_saveManifest
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_ERROR, "Couldn't save manifest: %{public}@", &v2, 0xCu);
}

+ (id)_humanReadableStringForGroupType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D70D08[a3];
  }
}

- (id)_manifestFilePath
{
  v2 = [(_TVAssetGroup *)self cachePath];
  v3 = [v2 stringByAppendingPathComponent:@"manifest"];

  return v3;
}

@end