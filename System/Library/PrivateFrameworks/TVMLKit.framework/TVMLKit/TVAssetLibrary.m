@interface TVAssetLibrary
+ (void)_initializeAssetLibraryWithCachePath:(id)a3 screensaverCache:(BOOL)a4 purgeCacheOnLoad:(BOOL)a5;
+ (void)initializeAssetLibraryWithCachePath:(id)a3;
+ (void)initializeAssetLibraryWithCachePath:(id)a3 purgeCacheOnLoad:(BOOL)a4;
+ (void)intializeScreensaverSharedAssetLibrary;
- (TVAssetLibrary)initWithCachePath:(id)a3 screensaverCache:(BOOL)a4 purgeCacheOnLoad:(BOOL)a5;
- (id)assetExpiryDateForKey:(id)a3 inGroupOfType:(int64_t)a4;
- (id)assetForKey:(id)a3 inGroupOfType:(int64_t)a4;
- (id)assetPathForKey:(id)a3 inGroupOfType:(int64_t)a4;
- (id)assetPathsForGroupOfType:(int64_t)a3;
- (id)cachePathForGroupOfType:(int64_t)a3;
- (id)groupWithGroupType:(int64_t)a3;
- (id)keyForAssetWithTags:(id)a3 inGroupOfType:(int64_t)a4;
- (void)_setImageAsset:(id)a3 forKey:(id)a4 inGroupOfType:(int64_t)a5 expiryDate:(id)a6 overWrite:(BOOL)a7 tags:(id)a8;
- (void)purgeAssetsInGroupOfType:(int64_t)a3;
- (void)removeAssetForKey:(id)a3 inGroupOfType:(int64_t)a4;
- (void)setImageAssetFromPath:(id)a3 forKey:(id)a4 inGroupOfType:(int64_t)a5 expiryDate:(id)a6 tags:(id)a7;
- (void)unRegisterGroup:(int64_t)a3;
- (void)updateAssetsInGroupOfType:(int64_t)a3;
@end

@implementation TVAssetLibrary

+ (void)initializeAssetLibraryWithCachePath:(id)a3
{
  v3 = a3;
  [objc_opt_class() initializeAssetLibraryWithCachePath:v3 purgeCacheOnLoad:0];
}

+ (void)initializeAssetLibraryWithCachePath:(id)a3 purgeCacheOnLoad:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [objc_opt_class() _initializeAssetLibraryWithCachePath:v5 screensaverCache:0 purgeCacheOnLoad:v4];
}

+ (void)intializeScreensaverSharedAssetLibrary
{
  v2 = [@"/var/mobile/Library/Caches" stringByAppendingPathComponent:@"com.apple.AppleTV"];
  [objc_opt_class() _initializeAssetLibraryWithCachePath:v2 screensaverCache:1 purgeCacheOnLoad:0];
}

+ (void)_initializeAssetLibraryWithCachePath:(id)a3 screensaverCache:(BOOL)a4 purgeCacheOnLoad:(BOOL)a5
{
  v7 = a3;
  if ([v7 length])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__TVAssetLibrary__initializeAssetLibraryWithCachePath_screensaverCache_purgeCacheOnLoad___block_invoke;
    v8[3] = &unk_279D6E9A0;
    v9 = v7;
    v10 = a4;
    v11 = a5;
    if (_initializeAssetLibraryWithCachePath_screensaverCache_purgeCacheOnLoad__onceToken != -1)
    {
      dispatch_once(&_initializeAssetLibraryWithCachePath_screensaverCache_purgeCacheOnLoad__onceToken, v8);
    }
  }
}

uint64_t __89__TVAssetLibrary__initializeAssetLibraryWithCachePath_screensaverCache_purgeCacheOnLoad___block_invoke(uint64_t a1)
{
  v1 = [[TVAssetLibrary alloc] initWithCachePath:*(a1 + 32) screensaverCache:*(a1 + 40) purgeCacheOnLoad:*(a1 + 41)];
  v2 = sSharedInstance;
  sSharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (TVAssetLibrary)initWithCachePath:(id)a3 screensaverCache:(BOOL)a4 purgeCacheOnLoad:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v28.receiver = self;
  v28.super_class = TVAssetLibrary;
  v9 = [(TVAssetLibrary *)&v28 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.ATVAssetLibrary.writeQueue", 0);
    assetWriteQueue = v9->assetWriteQueue;
    v9->assetWriteQueue = v10;

    v12 = dispatch_queue_create("com.apple.ATVAssetLibrary.accessQueue", MEMORY[0x277D85CD8]);
    assetAccessQueue = v9->assetAccessQueue;
    v9->assetAccessQueue = v12;

    v14 = [v8 copy];
    cachePath = v9->_cachePath;
    v9->_cachePath = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredGroups = v9->_registeredGroups;
    v9->_registeredGroups = v16;

    keyExistsAndHasValidFormat = 0;
    v18 = CFPreferencesGetAppBooleanValue(@"PurgeImageCache", @"com.apple.TVMLKit", &keyExistsAndHasValidFormat) != 0;
    if (keyExistsAndHasValidFormat)
    {
      v19 = v18;
    }

    else
    {
      v19 = v5;
    }

    v20 = [[_TVAssetGroup alloc] initWithGroupType:0 baseCachePath:v9->_cachePath folderName:@"SharedImageCache" maxCacheSize:512 purgeOnLoad:v19];
    [(TVAssetLibrary *)v9 registerGroup:v20];
    v21 = [[_TVAssetGroup alloc] initWithGroupType:1 baseCachePath:v9->_cachePath folderName:@"LSMImageCache" maxCacheSize:512 purgeOnLoad:v19];
    [(TVAssetLibrary *)v9 registerGroup:v21];
    v22 = [[_TVAssetGroup alloc] initWithGroupType:3 baseCachePath:v9->_cachePath folderName:@"TrickPlay" maxCacheSize:50 purgeOnLoad:1];
    [(TVAssetLibrary *)v9 registerGroup:v22];
    v23 = [[_TVAssetGroup alloc] initWithGroupType:4 baseCachePath:v9->_cachePath folderName:@"PhotostreamImages" maxCacheSize:280 purgeOnLoad:0];
    [(TVAssetLibrary *)v9 registerGroup:v23];
    v24 = [[_TVAssetGroup alloc] initWithGroupType:5 baseCachePath:v9->_cachePath folderName:@"ARFileCache" maxCacheSize:256 purgeOnLoad:v19];
    [(TVAssetLibrary *)v9 registerGroup:v24];
    if (v6)
    {
      v25 = [[_TVAssetGroup alloc] initWithGroupType:2 baseCachePath:v9->_cachePath folderName:@"ScreenSaverImages" maxCacheSize:250 purgeOnLoad:0];
      [(TVAssetLibrary *)v9 registerGroup:v25];
    }
  }

  return v9;
}

- (id)assetForKey:(id)a3 inGroupOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:a4];
  v8 = [v7 assetInfoForKey:v6 queue:self->assetAccessQueue];
  v9 = [v8 objectForKey:@"ATVAssetPath"];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v12 = [TVImage imageWithPath:v9];
LABEL_6:
      v14 = v12;
      goto LABEL_9;
    }

    [(TVAssetLibrary *)self removeAssetForKey:v6 inGroupOfType:a4];
  }

  else
  {
    v13 = [v8 objectForKey:@"ATVAsset"];

    if (v13)
    {
      v12 = [v8 objectForKey:@"ATVAsset"];
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)assetPathForKey:(id)a3 inGroupOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:a4];
  v8 = [v7 assetInfoForKey:v6 queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"ATVAssetPath"];

  return v9;
}

- (id)assetExpiryDateForKey:(id)a3 inGroupOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:a4];
  v8 = [v7 assetInfoForKey:v6 queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"ATVAssetExpiryDate"];

  return v9;
}

- (id)keyForAssetWithTags:(id)a3 inGroupOfType:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:a4];
  v8 = [v7 infoForAllAssetsWithTags:v6 queue:self->assetAccessQueue];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v8 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v19 = v6;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"ATVAssetPath"];

        if (v16)
        {
          v17 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_11:
    v6 = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)removeAssetForKey:(id)a3 inGroupOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:a4];
  [v7 removeAssetInfoForKey:v6 queue:self->assetAccessQueue];
}

- (void)setImageAssetFromPath:(id)a3 forKey:(id)a4 inGroupOfType:(int64_t)a5 expiryDate:(id)a6 tags:(id)a7
{
  v39[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([v13 length])
  {
    v16 = v13;
    v17 = [(TVAssetLibrary *)self groupWithGroupType:a5];
    v18 = [v17 cachePath];
    v19 = [v18 stringByAppendingPathComponent:v16];

    v37 = 0;
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v20 fileExistsAtPath:v19 isDirectory:&v37];

    if (!v21 && ([MEMORY[0x277CCAA00] defaultManager], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "moveItemAtPath:toPath:error:", v12, v19, 0), v22, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "fileExistsAtPath:isDirectory:", v19, &v37), v23, !v24) || (v37 & 1) != 0 || (v36 = 0, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "tv_onDiskSizeOfFileAtPath:status:", v19, &v36), v25, v36) || !v26)
    {
      if (v37 != 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke_2;
        v31[3] = &unk_279D6E7F8;
        v32 = v16;
        dispatch_async(MEMORY[0x277D85CD0], v31);
        v27 = v32;
LABEL_17:

        goto LABEL_18;
      }

      v26 = 0;
    }

    v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    [v27 setObject:v19 forKeyedSubscript:@"ATVAssetPath"];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
    [v27 setObject:v28 forKeyedSubscript:@"ATVAssetSize"];

    v29 = [MEMORY[0x277CBEAA8] date];
    [v27 setObject:v29 forKeyedSubscript:@"ATVAssetLastAccessedDate"];

    if (v14)
    {
      [v27 setObject:v14 forKeyedSubscript:@"ATVAssetExpiryDate"];
    }

    if (v15)
    {
      [v27 setObject:v15 forKeyedSubscript:@"ATVAssetTags"];
    }

    [v17 setAssetInfo:v27 forKey:v16 queue:{self->assetAccessQueue, v12}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke;
    block[3] = &unk_279D6E2F8;
    v34 = v16;
    v35 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_17;
  }

  v30 = TVMLKitImageLogObject;
  if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
  {
    [TVAssetLibrary setImageAssetFromPath:v30 forKey:? inGroupOfType:? expiryDate:? tags:?];
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v38 = @"ATVAssetDidWriteNotificationErrorKey";
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:6 userInfo:0];
  v39[0] = v17;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  [v16 postNotificationName:@"ATVAssetDidWriteNotification" object:v13 userInfo:v19];
LABEL_18:
}

void __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"ATVAssetDidWriteNotificationAssetPathKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ATVAssetDidWriteNotification" object:v4 userInfo:v5];
}

void __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"ATVAssetDidWriteNotificationErrorKey";
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-36 userInfo:0];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ATVAssetDidWriteNotification" object:v3 userInfo:v5];
}

- (void)purgeAssetsInGroupOfType:(int64_t)a3
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:a3];
  [v4 removeAllAssetsWithQueue:self->assetAccessQueue];
}

- (void)updateAssetsInGroupOfType:(int64_t)a3
{
  v3 = [(TVAssetLibrary *)self groupWithGroupType:a3];
  [v3 updateAssetsFromFiles];
}

- (id)assetPathsForGroupOfType:(int64_t)a3
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:a3];
  v5 = [v4 infoForAllAssetsWithQueue:self->assetAccessQueue];
  v6 = [v5 allValues];
  v7 = [v6 tv_arrayByMappingObjectsUsingBlock:&__block_literal_global_12];

  return v7;
}

- (id)cachePathForGroupOfType:(int64_t)a3
{
  v3 = [(TVAssetLibrary *)self groupWithGroupType:a3];
  v4 = [v3 cachePath];

  return v4;
}

- (void)unRegisterGroup:(int64_t)a3
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:a3];
  [(NSMutableArray *)self->_registeredGroups removeObject:v4];
}

- (id)groupWithGroupType:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_registeredGroups;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 groupType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_setImageAsset:(id)a3 forKey:(id)a4 inGroupOfType:(int64_t)a5 expiryDate:(id)a6 overWrite:(BOOL)a7 tags:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = [(TVAssetLibrary *)self groupWithGroupType:a5];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v19 setObject:v14 forKeyedSubscript:@"ATVAsset"];
  v20 = [MEMORY[0x277CBEAA8] date];
  [v19 setObject:v20 forKeyedSubscript:@"ATVAssetLastAccessedDate"];

  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:@"ATVAssetExpiryDate"];
  }

  [v18 setAssetInfo:v19 forKey:v15 queue:self->assetAccessQueue];
  objc_initWeak(&location, self);
  assetWriteQueue = self->assetWriteQueue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke;
  v27[3] = &unk_279D6ED78;
  v28 = v15;
  v29 = v18;
  v34 = a7;
  v30 = v14;
  v22 = v14;
  v23 = v18;
  v24 = v15;
  objc_copyWeak(&v33, &location);
  v31 = v16;
  v32 = v17;
  v25 = v17;
  v26 = v16;
  dispatch_async(assetWriteQueue, v27);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cachePath];
  v4 = [v3 stringByAppendingPathComponent:v2];

  if ((*(a1 + 80) & 1) == 0)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      *buf = 0;
      v7 = MEMORY[0x277CCAA00];
      goto LABEL_6;
    }
  }

  if ([0 length])
  {
    [0 writeToFile:v4 atomically:0];
    *buf = 0;
    v7 = MEMORY[0x277CCAA00];
LABEL_6:
    v8 = [v7 defaultManager];
    v9 = [v8 tv_onDiskSizeOfFileAtPath:v4 status:buf];

    if (*buf)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_9;
  }

  v20 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  if (v20)
  {
    v21 = v20;
    v22 = [*(a1 + 48) imageType];
    v23 = CGImageDestinationCreateWithURL(v21, v22, 1uLL, 0);
    if (v23)
    {
      v24 = v23;
      CGImageDestinationAddImage(v23, [*(a1 + 48) image], 0);
      if (CGImageDestinationFinalize(v24))
      {
        *buf = 0;
        v25 = [MEMORY[0x277CCAA00] defaultManager];
        v26 = [v25 tv_onDiskSizeOfFileAtPath:v4 status:buf];

        if (*buf)
        {
          v10 = 0;
        }

        else
        {
          v10 = v26;
        }
      }

      else
      {
        v27 = TVMLKitImageLogObject;
        if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&dword_26CD9A000, v27, OS_LOG_TYPE_DEFAULT, "CGImageDestinationFinalize failed to save image to: %@", buf, 0xCu);
        }

        v10 = 0;
      }

      CFRelease(v24);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v21);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = *(WeakRetained + 2);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v10)
  {
    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    [v15 setObject:v4 forKeyedSubscript:@"ATVAssetPath"];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    [v15 setObject:v16 forKeyedSubscript:@"ATVAssetSize"];

    v17 = [MEMORY[0x277CBEAA8] date];
    [v15 setObject:v17 forKeyedSubscript:@"ATVAssetLastAccessedDate"];

    v18 = *(a1 + 56);
    if (v18)
    {
      [v15 setObject:v18 forKeyedSubscript:@"ATVAssetExpiryDate"];
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      [v15 setObject:v19 forKeyedSubscript:@"ATVAssetTags"];
    }

    [*(a1 + 40) setAssetInfo:v15 forKey:*(a1 + 32) queue:v14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_51;
    block[3] = &unk_279D6E2F8;
    v31 = *(a1 + 32);
    v32 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 40) removeAssetInfoForKey:*(a1 + 32) queue:v14];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_2;
    v28[3] = &unk_279D6E7F8;
    v29 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v28);
    v15 = v29;
  }
}

void __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_51(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"ATVAssetDidWriteNotificationAssetPathKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ATVAssetDidWriteNotification" object:v4 userInfo:v5];
}

void __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"ATVAssetDidWriteNotificationErrorKey";
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-36 userInfo:0];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ATVAssetDidWriteNotification" object:v3 userInfo:v5];
}

@end