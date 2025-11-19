@interface PLPhotoKitVariationCache
- (BOOL)_performChangesForAssetIdentifier:(id)a3 sourceType:(int64_t)a4 changesBlock:(id)a5;
- (BOOL)_removeCachesForURL:(id)a3;
- (BOOL)_writeInfo:(id)a3 atURL:(id)a4;
- (BOOL)deleteCacheForAssetIdentifier:(id)a3 sourceType:(int64_t)a4;
- (PLPhotoKitVariationCache)initWithCacheURL:(id)a3;
- (PLPhotoKitVariationCache)initWithPathManager:(id)a3;
- (id)_fileURLWithIdentifier:(id)a3 sourceType:(int64_t)a4 pathExtension:(id)a5;
- (id)_readInfoForURL:(id)a3;
- (id)analysisResultForAssetIdentifier:(id)a3 sourceType:(int64_t)a4;
- (id)gatingResultForVariationType:(int64_t)a3 assetIdentifier:(id)a4 sourceType:(int64_t)a5;
- (id)portraitEffectSettingsForAssetIdentifier:(id)a3 sourceType:(int64_t)a4;
- (unint64_t)evictIfNeeded;
- (unint64_t)purgeAll;
- (void)_saveToMemoryCache:(id)a3 forFileURL:(id)a4 fileSize:(unint64_t)a5;
- (void)saveAnalysisResult:(id)a3 assetIdentifier:(id)a4 sourceType:(int64_t)a5;
- (void)saveGatingResult:(id)a3 forVariationType:(int64_t)a4 assetIdentifier:(id)a5 sourceType:(int64_t)a6;
- (void)savePortraitEffectSettings:(id)a3 sourceType:(int64_t)a4 assetIdentifier:(id)a5;
@end

@implementation PLPhotoKitVariationCache

- (BOOL)_removeCachesForURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSCache *)self->_memoryCache removeObjectForKey:v4];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%@: could not delete file at %@ (%@)", buf, 0x20u);
    }
  }

  return v6;
}

- (void)_saveToMemoryCache:(id)a3 forFileURL:(id)a4 fileSize:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[_PHVariationInMemoryCachedValue alloc] initWithInfo:v9 fileURL:v8];

  [(NSCache *)self->_memoryCache setObject:v10 forKey:v8 cost:a5];
}

- (id)_readInfoForURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSCache *)self->_memoryCache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isValid])
    {
      v7 = [v6 info];
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [(NSCache *)self->_memoryCache removeObjectForKey:v4];
    }
  }

  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v12];
  v9 = v12;
  if (!v7)
  {
LABEL_10:
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "%@: could not read file at %@ (%@)", buf, 0x20u);
    }

    v7 = 0;
    goto LABEL_13;
  }

  -[PLPhotoKitVariationCache _saveToMemoryCache:forFileURL:fileSize:](self, "_saveToMemoryCache:forFileURL:fileSize:", v7, v4, [v8 length]);
LABEL_13:

LABEL_14:

  return v7;
}

- (BOOL)_writeInfo:(id)a3 atURL:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v8)
  {
    v16 = v9;
    v11 = [v8 writeToURL:v7 options:1073741825 error:&v16];
    v12 = v16;

    if (v11)
    {
      -[PLPhotoKitVariationCache _saveToMemoryCache:forFileURL:fileSize:](self, "_saveToMemoryCache:forFileURL:fileSize:", v6, v7, [v8 length]);
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v9;
  }

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "%@: could not write file at %@ (%@)", buf, 0x20u);
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)_fileURLWithIdentifier:(id)a3 sourceType:(int64_t)a4 pathExtension:(id)a5
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = self->_cacheURL;
    v9 = a5;
    v10 = [a3 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];
    v11 = v10;
    v12 = @"SpatialOverCapture";
    if (a4 != 1)
    {
      v12 = 0;
    }

    if (!a4)
    {
      v12 = @"Primary";
    }

    v20[0] = v10;
    v20[1] = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = v12;
    v15 = [v13 arrayWithObjects:v20 count:2];

    v16 = [v15 componentsJoinedByString:@"-"];

    v17 = [v16 stringByAppendingPathExtension:v9];

    v18 = [(NSURL *)v8 URLByAppendingPathComponent:v17 isDirectory:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)deleteCacheForAssetIdentifier:(id)a3 sourceType:(int64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  cacheQueue = self->_cacheQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PLPhotoKitVariationCache_deleteCacheForAssetIdentifier_sourceType___block_invoke;
  v10[3] = &unk_1E7576680;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_barrier_sync(cacheQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __69__PLPhotoKitVariationCache_deleteCacheForAssetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fileURLWithIdentifier:*(a1 + 40) sourceType:*(a1 + 56) pathExtension:@"plist"];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _removeCachesForURL:v2];
}

- (unint64_t)purgeAll
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cacheQueue = self->_cacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PLPhotoKitVariationCache_purgeAll__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cacheQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__PLPhotoKitVariationCache_purgeAll__block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *MEMORY[0x1E695DB50];
  v18[0] = *MEMORY[0x1E695DB50];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v5 = [v2 contentsOfDirectoryAtURL:*(*(a1 + 32) + 24) includingPropertiesForKeys:v4 options:4 error:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12 = 0;
        [v10 getResourceValue:&v12 forKey:v3 error:0];
        v11 = v12;
        if ([*(a1 + 32) _removeCachesForURL:v10])
        {
          *(*(*(a1 + 40) + 8) + 24) += [v11 integerValue];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (unint64_t)evictIfNeeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cacheQueue = self->_cacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PLPhotoKitVariationCache_evictIfNeeded__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(cacheQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__PLPhotoKitVariationCache_evictIfNeeded__block_invoke(uint64_t a1)
{
  v50[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *MEMORY[0x1E695DC30];
  v7 = *MEMORY[0x1E695DAA8];
  v50[0] = *MEMORY[0x1E695DC30];
  v50[1] = v7;
  v35 = v7;
  v34 = *MEMORY[0x1E695DB50];
  v50[2] = *MEMORY[0x1E695DB50];
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  v8 = [v5 contentsOfDirectoryAtURL:*(*(a1 + 32) + 24) includingPropertiesForKeys:? options:? error:?];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  obj = v10;
  if (!v11)
  {
LABEL_31:

    goto LABEL_32;
  }

  v12 = v11;
  v32 = v5;
  v33 = a1;
  v36 = 0;
  v13 = *v45;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v44 + 1) + 8 * i);
      v16 = [v15 resourceValuesForKeys:v38 error:{0, v32}];
      v17 = [v16 objectForKeyedSubscript:v6];
      v18 = [v17 pathExtension];
      v19 = [v18 isEqualToString:@"plist"];

      if (v19)
      {
        v20 = [v16 objectForKeyedSubscript:v35];
        v21 = v20;
        if (!v20 || ([v20 timeIntervalSinceReferenceDate], v4 - v22 < 1296000.0) || (objc_msgSend(*(v33 + 32), "_removeCachesForURL:", v15) & 1) == 0)
        {
          v23 = [v16 objectForKeyedSubscript:v34];
          v24 = v23;
          if (v23)
          {
            v36 += [v23 integerValue];
          }

          if ([v9 count])
          {
            [v9 insertObject:v15 atIndex:{objc_msgSend(v9, "indexOfObject:inSortedRange:options:usingComparator:", v15, 0, objc_msgSend(v9, "count"), 1024, &__block_literal_global_9037)}];
          }

          else
          {
            [v9 addObject:v15];
          }
        }
      }
    }

    v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  }

  while (v12);

  v25 = v36;
  v5 = v32;
  if (v36 >= 0xA00000)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v9;
    v26 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v10);
          }

          v30 = *(*(&v40 + 1) + 8 * j);
          v39 = 0;
          [v30 getResourceValue:&v39 forKey:v34 error:0];
          v31 = v39;
          if ([*(v33 + 32) _removeCachesForURL:v30])
          {
            v25 -= [v31 integerValue];
            *(*(*(v33 + 40) + 8) + 24) += [v31 integerValue];

            if (v25 <= 0x500000)
            {
              goto LABEL_31;
            }
          }

          else
          {
          }
        }

        v27 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v27);
    }

    goto LABEL_31;
  }

LABEL_32:
}

uint64_t __41__PLPhotoKitVariationCache_evictIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DAA8];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v6 compare:v9];
  return v7;
}

- (BOOL)_performChangesForAssetIdentifier:(id)a3 sourceType:(int64_t)a4 changesBlock:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [(PLPhotoKitVariationCache *)self _fileURLWithIdentifier:a3 sourceType:a4 pathExtension:@"plist"];
    v10 = [(PLPhotoKitVariationCache *)self _readInfoForURL:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v8[2](v8, v11);
    v12 = [(PLPhotoKitVariationCache *)self _writeInfo:v11 atURL:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)gatingResultForVariationType:(int64_t)a3 assetIdentifier:(id)a4 sourceType:(int64_t)a5
{
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9040;
  v22 = __Block_byref_object_dispose__9041;
  v23 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PLPhotoKitVariationCache_gatingResultForVariationType_assetIdentifier_sourceType___block_invoke;
  block[3] = &unk_1E7566520;
  block[4] = self;
  v14 = v8;
  v16 = a5;
  v17 = a3;
  v15 = &v18;
  v10 = v8;
  dispatch_sync(cacheQueue, block);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __84__PLPhotoKitVariationCache_gatingResultForVariationType_assetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _fileURLWithIdentifier:*(a1 + 40) sourceType:*(a1 + 56) pathExtension:@"plist"];
  v2 = [*(a1 + 32) _readInfoForURL:?];
  v3 = _gatingKeyForVariationType(*(a1 + 64));
  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)saveGatingResult:(id)a3 forVariationType:(int64_t)a4 assetIdentifier:(id)a5 sourceType:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PLPhotoKitVariationCache_saveGatingResult_forVariationType_assetIdentifier_sourceType___block_invoke;
  block[3] = &unk_1E7576428;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a6;
  v20 = a4;
  v12 = v11;
  v13 = v10;
  v14 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, -8, block);
  dispatch_barrier_async(self->_cacheQueue, v14);
}

void __89__PLPhotoKitVariationCache_saveGatingResult_forVariationType_assetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __89__PLPhotoKitVariationCache_saveGatingResult_forVariationType_assetIdentifier_sourceType___block_invoke_2;
    v5[3] = &unk_1E75664F8;
    v4 = *(a1 + 56);
    v7 = *(a1 + 64);
    v6 = *(a1 + 32);
    [v2 _performChangesForAssetIdentifier:v3 sourceType:v4 changesBlock:v5];
  }
}

void __89__PLPhotoKitVariationCache_saveGatingResult_forVariationType_assetIdentifier_sourceType___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = _gatingKeyForVariationType(*(a1 + 40));
  if (v3)
  {
    [v4 setObject:*(a1 + 32) forKeyedSubscript:v3];
  }
}

- (id)portraitEffectSettingsForAssetIdentifier:(id)a3 sourceType:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9040;
  v19 = __Block_byref_object_dispose__9041;
  v20 = 0;
  cacheQueue = self->_cacheQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PLPhotoKitVariationCache_portraitEffectSettingsForAssetIdentifier_sourceType___block_invoke;
  v11[3] = &unk_1E7576680;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(cacheQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __80__PLPhotoKitVariationCache_portraitEffectSettingsForAssetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _fileURLWithIdentifier:*(a1 + 40) sourceType:*(a1 + 56) pathExtension:@"plist"];
  v2 = [*(a1 + 32) _readInfoForURL:v6];
  v3 = [v2 objectForKeyedSubscript:@"PortraitEffectSettings"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)savePortraitEffectSettings:(id)a3 sourceType:(int64_t)a4 assetIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PLPhotoKitVariationCache_savePortraitEffectSettings_sourceType_assetIdentifier___block_invoke;
  v13[3] = &unk_1E7576168;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v10 = v9;
  v11 = v8;
  v12 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, -8, v13);
  dispatch_barrier_async(self->_cacheQueue, v12);
}

void __82__PLPhotoKitVariationCache_savePortraitEffectSettings_sourceType_assetIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __82__PLPhotoKitVariationCache_savePortraitEffectSettings_sourceType_assetIdentifier___block_invoke_2;
    v5[3] = &unk_1E75664D0;
    v6 = *(a1 + 32);
    [v2 _performChangesForAssetIdentifier:v3 sourceType:v4 changesBlock:v5];
  }
}

- (id)analysisResultForAssetIdentifier:(id)a3 sourceType:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9040;
  v19 = __Block_byref_object_dispose__9041;
  v20 = 0;
  cacheQueue = self->_cacheQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PLPhotoKitVariationCache_analysisResultForAssetIdentifier_sourceType___block_invoke;
  v11[3] = &unk_1E7576680;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(cacheQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __72__PLPhotoKitVariationCache_analysisResultForAssetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _fileURLWithIdentifier:*(a1 + 40) sourceType:*(a1 + 56) pathExtension:@"plist"];
  v2 = [*(a1 + 32) _readInfoForURL:v6];
  v3 = [v2 objectForKeyedSubscript:@"AnalysisResult"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)saveAnalysisResult:(id)a3 assetIdentifier:(id)a4 sourceType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PLPhotoKitVariationCache_saveAnalysisResult_assetIdentifier_sourceType___block_invoke;
  v13[3] = &unk_1E7576168;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a5;
  v10 = v9;
  v11 = v8;
  v12 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, -8, v13);
  dispatch_barrier_async(self->_cacheQueue, v12);
}

void __74__PLPhotoKitVariationCache_saveAnalysisResult_assetIdentifier_sourceType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__PLPhotoKitVariationCache_saveAnalysisResult_assetIdentifier_sourceType___block_invoke_2;
    v5[3] = &unk_1E75664D0;
    v6 = *(a1 + 32);
    [v2 _performChangesForAssetIdentifier:v3 sourceType:v4 changesBlock:v5];
  }
}

- (PLPhotoKitVariationCache)initWithCacheURL:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLPhotoKitVariationCache.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"cacheURL"}];
  }

  v15.receiver = self;
  v15.super_class = PLPhotoKitVariationCache;
  v7 = [(PLPhotoKitVariationCache *)&v15 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.PLPhotoKitVariationCache.cacheQueue", v8);
    cacheQueue = v7->_cacheQueue;
    v7->_cacheQueue = v9;

    objc_storeStrong(&v7->_cacheURL, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    memoryCache = v7->_memoryCache;
    v7->_memoryCache = v11;

    [(NSCache *)v7->_memoryCache setTotalCostLimit:0x200000];
  }

  return v7;
}

- (PLPhotoKitVariationCache)initWithPathManager:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a3 privateCacheDirectoryWithSubType:7 createIfNeeded:1 error:0];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v7 = [(PLPhotoKitVariationCache *)self initWithCacheURL:v6];
  return v7;
}

@end