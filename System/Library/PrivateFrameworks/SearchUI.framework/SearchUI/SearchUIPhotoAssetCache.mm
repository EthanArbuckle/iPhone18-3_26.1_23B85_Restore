@interface SearchUIPhotoAssetCache
+ (id)sharedCache;
- (id)assetForImage:(id)a3;
- (id)assetsForImages:(id)a3;
- (id)itemsToBatchPreFetchForRowModel:(id)a3;
- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIPhotoAssetCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SearchUIPhotoAssetCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedCache_onceToken_1 != -1)
  {
    dispatch_once(&sharedCache_onceToken_1, block);
  }

  v2 = sharedCache_sharedCache;

  return v2;
}

uint64_t __38__SearchUIPhotoAssetCache_sharedCache__block_invoke()
{
  objc_opt_class();
  sharedCache_sharedCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [SearchUIPhotosUtilities fetchAssetsForImages:a3];
  (*(a4 + 2))(v6, v7);
}

- (id)assetForImage:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TLKAsyncCache *)self getCachedObjectIfAvailableForKey:v4];
  if (!v5)
  {
    v5 = [v4 photoIdentifier];

    if (v5)
    {
      v6 = [v4 photoIdentifier];
      v10[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      v8 = +[SearchUIPhotosUtilities fetchResultForPhotoIdentifiers:isSyndicated:](SearchUIPhotosUtilities, "fetchResultForPhotoIdentifiers:isSyndicated:", v7, [v4 isSyndicated]);
      v5 = [v8 firstObject];
    }
  }

  return v5;
}

- (id)assetsForImages:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [(TLKAsyncCache *)self getCachedObjectIfAvailableForKey:v12];
        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v12];
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v14 = [SearchUIPhotosUtilities fetchAssetsForImages:v6];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __43__SearchUIPhotoAssetCache_assetsForImages___block_invoke;
    v29[3] = &unk_1E85B46A0;
    v30 = v5;
    v31 = v14;
    v15 = v14;
    [v6 enumerateObjectsUsingBlock:v29];
  }

  v16 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [v5 objectForKeyedSubscript:{*(*(&v25 + 1) + 8 * j), v25}];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = [v16 copy];

  return v23;
}

void __43__SearchUIPhotoAssetCache_assetsForImages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)itemsToBatchPreFetchForRowModel:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 cardSection];
    v7 = [v6 thumbnail];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = [v6 thumbnail];
      v12[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end