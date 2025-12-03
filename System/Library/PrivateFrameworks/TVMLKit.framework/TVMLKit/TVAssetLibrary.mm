@interface TVAssetLibrary
+ (void)_initializeAssetLibraryWithCachePath:(id)path screensaverCache:(BOOL)cache purgeCacheOnLoad:(BOOL)load;
+ (void)initializeAssetLibraryWithCachePath:(id)path;
+ (void)initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load;
+ (void)intializeScreensaverSharedAssetLibrary;
- (TVAssetLibrary)initWithCachePath:(id)path screensaverCache:(BOOL)cache purgeCacheOnLoad:(BOOL)load;
- (id)assetExpiryDateForKey:(id)key inGroupOfType:(int64_t)type;
- (id)assetForKey:(id)key inGroupOfType:(int64_t)type;
- (id)assetPathForKey:(id)key inGroupOfType:(int64_t)type;
- (id)assetPathsForGroupOfType:(int64_t)type;
- (id)cachePathForGroupOfType:(int64_t)type;
- (id)groupWithGroupType:(int64_t)type;
- (id)keyForAssetWithTags:(id)tags inGroupOfType:(int64_t)type;
- (void)_setImageAsset:(id)asset forKey:(id)key inGroupOfType:(int64_t)type expiryDate:(id)date overWrite:(BOOL)write tags:(id)tags;
- (void)purgeAssetsInGroupOfType:(int64_t)type;
- (void)removeAssetForKey:(id)key inGroupOfType:(int64_t)type;
- (void)setImageAssetFromPath:(id)path forKey:(id)key inGroupOfType:(int64_t)type expiryDate:(id)date tags:(id)tags;
- (void)unRegisterGroup:(int64_t)group;
- (void)updateAssetsInGroupOfType:(int64_t)type;
@end

@implementation TVAssetLibrary

+ (void)initializeAssetLibraryWithCachePath:(id)path
{
  pathCopy = path;
  [objc_opt_class() initializeAssetLibraryWithCachePath:pathCopy purgeCacheOnLoad:0];
}

+ (void)initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load
{
  loadCopy = load;
  pathCopy = path;
  [objc_opt_class() _initializeAssetLibraryWithCachePath:pathCopy screensaverCache:0 purgeCacheOnLoad:loadCopy];
}

+ (void)intializeScreensaverSharedAssetLibrary
{
  v2 = [@"/var/mobile/Library/Caches" stringByAppendingPathComponent:@"com.apple.AppleTV"];
  [objc_opt_class() _initializeAssetLibraryWithCachePath:v2 screensaverCache:1 purgeCacheOnLoad:0];
}

+ (void)_initializeAssetLibraryWithCachePath:(id)path screensaverCache:(BOOL)cache purgeCacheOnLoad:(BOOL)load
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__TVAssetLibrary__initializeAssetLibraryWithCachePath_screensaverCache_purgeCacheOnLoad___block_invoke;
    v8[3] = &unk_279D6E9A0;
    v9 = pathCopy;
    cacheCopy = cache;
    loadCopy = load;
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

- (TVAssetLibrary)initWithCachePath:(id)path screensaverCache:(BOOL)cache purgeCacheOnLoad:(BOOL)load
{
  loadCopy = load;
  cacheCopy = cache;
  pathCopy = path;
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

    v14 = [pathCopy copy];
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
      v19 = loadCopy;
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
    if (cacheCopy)
    {
      v25 = [[_TVAssetGroup alloc] initWithGroupType:2 baseCachePath:v9->_cachePath folderName:@"ScreenSaverImages" maxCacheSize:250 purgeOnLoad:0];
      [(TVAssetLibrary *)v9 registerGroup:v25];
    }
  }

  return v9;
}

- (id)assetForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];
  v9 = [v8 objectForKey:@"ATVAssetPath"];
  if (v9)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v9];

    if (v11)
    {
      v12 = [TVImage imageWithPath:v9];
LABEL_6:
      v14 = v12;
      goto LABEL_9;
    }

    [(TVAssetLibrary *)self removeAssetForKey:keyCopy inGroupOfType:type];
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

- (id)assetPathForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"ATVAssetPath"];

  return v9;
}

- (id)assetExpiryDateForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"ATVAssetExpiryDate"];

  return v9;
}

- (id)keyForAssetWithTags:(id)tags inGroupOfType:(int64_t)type
{
  v25 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 infoForAllAssetsWithTags:tagsCopy queue:self->assetAccessQueue];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v19 = tagsCopy;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allKeys);
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

      v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_11:
    tagsCopy = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)removeAssetForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(TVAssetLibrary *)self groupWithGroupType:type];
  [v7 removeAssetInfoForKey:keyCopy queue:self->assetAccessQueue];
}

- (void)setImageAssetFromPath:(id)path forKey:(id)key inGroupOfType:(int64_t)type expiryDate:(id)date tags:(id)tags
{
  v39[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  if ([keyCopy length])
  {
    defaultCenter = keyCopy;
    v17 = [(TVAssetLibrary *)self groupWithGroupType:type];
    cachePath = [v17 cachePath];
    v19 = [cachePath stringByAppendingPathComponent:defaultCenter];

    v37 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [defaultManager fileExistsAtPath:v19 isDirectory:&v37];

    if (!v21 && ([MEMORY[0x277CCAA00] defaultManager], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "moveItemAtPath:toPath:error:", pathCopy, v19, 0), v22, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "fileExistsAtPath:isDirectory:", v19, &v37), v23, !v24) || (v37 & 1) != 0 || (v36 = 0, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "tv_onDiskSizeOfFileAtPath:status:", v19, &v36), v25, v36) || !v26)
    {
      if (v37 != 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke_2;
        v31[3] = &unk_279D6E7F8;
        v32 = defaultCenter;
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

    date = [MEMORY[0x277CBEAA8] date];
    [v27 setObject:date forKeyedSubscript:@"ATVAssetLastAccessedDate"];

    if (dateCopy)
    {
      [v27 setObject:dateCopy forKeyedSubscript:@"ATVAssetExpiryDate"];
    }

    if (tagsCopy)
    {
      [v27 setObject:tagsCopy forKeyedSubscript:@"ATVAssetTags"];
    }

    [v17 setAssetInfo:v27 forKey:defaultCenter queue:{self->assetAccessQueue, pathCopy}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TVAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke;
    block[3] = &unk_279D6E2F8;
    v34 = defaultCenter;
    v35 = pathCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_17;
  }

  v30 = TVMLKitImageLogObject;
  if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
  {
    [TVAssetLibrary setImageAssetFromPath:v30 forKey:? inGroupOfType:? expiryDate:? tags:?];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v38 = @"ATVAssetDidWriteNotificationErrorKey";
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:6 userInfo:0];
  v39[0] = v17;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  [defaultCenter postNotificationName:@"ATVAssetDidWriteNotification" object:keyCopy userInfo:v19];
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

- (void)purgeAssetsInGroupOfType:(int64_t)type
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:type];
  [v4 removeAllAssetsWithQueue:self->assetAccessQueue];
}

- (void)updateAssetsInGroupOfType:(int64_t)type
{
  v3 = [(TVAssetLibrary *)self groupWithGroupType:type];
  [v3 updateAssetsFromFiles];
}

- (id)assetPathsForGroupOfType:(int64_t)type
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v5 = [v4 infoForAllAssetsWithQueue:self->assetAccessQueue];
  allValues = [v5 allValues];
  v7 = [allValues tv_arrayByMappingObjectsUsingBlock:&__block_literal_global_12];

  return v7;
}

- (id)cachePathForGroupOfType:(int64_t)type
{
  v3 = [(TVAssetLibrary *)self groupWithGroupType:type];
  cachePath = [v3 cachePath];

  return cachePath;
}

- (void)unRegisterGroup:(int64_t)group
{
  v4 = [(TVAssetLibrary *)self groupWithGroupType:group];
  [(NSMutableArray *)self->_registeredGroups removeObject:v4];
}

- (id)groupWithGroupType:(int64_t)type
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
        if ([v9 groupType] == type)
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

- (void)_setImageAsset:(id)asset forKey:(id)key inGroupOfType:(int64_t)type expiryDate:(id)date overWrite:(BOOL)write tags:(id)tags
{
  assetCopy = asset;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  v18 = [(TVAssetLibrary *)self groupWithGroupType:type];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v19 setObject:assetCopy forKeyedSubscript:@"ATVAsset"];
  date = [MEMORY[0x277CBEAA8] date];
  [v19 setObject:date forKeyedSubscript:@"ATVAssetLastAccessedDate"];

  if (dateCopy)
  {
    [v19 setObject:dateCopy forKeyedSubscript:@"ATVAssetExpiryDate"];
  }

  [v18 setAssetInfo:v19 forKey:keyCopy queue:self->assetAccessQueue];
  objc_initWeak(&location, self);
  assetWriteQueue = self->assetWriteQueue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80__TVAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke;
  v27[3] = &unk_279D6ED78;
  v28 = keyCopy;
  v29 = v18;
  writeCopy = write;
  v30 = assetCopy;
  v22 = assetCopy;
  v23 = v18;
  v24 = keyCopy;
  objc_copyWeak(&v33, &location);
  v31 = dateCopy;
  v32 = tagsCopy;
  v25 = tagsCopy;
  v26 = dateCopy;
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