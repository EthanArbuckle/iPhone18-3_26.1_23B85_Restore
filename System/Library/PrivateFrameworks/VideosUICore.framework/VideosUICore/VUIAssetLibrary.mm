@interface VUIAssetLibrary
+ (BOOL)cacheHasBeenPurgedForHeic:(id)heic;
+ (BOOL)markCachePurgedForHeic:(id)heic;
+ (void)_initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load;
+ (void)initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load;
- (VUIAssetLibrary)initWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load;
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

@implementation VUIAssetLibrary

+ (void)initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load
{
  loadCopy = load;
  pathCopy = path;
  [objc_opt_class() _initializeAssetLibraryWithCachePath:pathCopy purgeCacheOnLoad:loadCopy];
}

+ (void)_initializeAssetLibraryWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__VUIAssetLibrary__initializeAssetLibraryWithCachePath_purgeCacheOnLoad___block_invoke;
    v6[3] = &unk_279E21FC8;
    v7 = pathCopy;
    loadCopy = load;
    if (_initializeAssetLibraryWithCachePath_purgeCacheOnLoad__onceToken != -1)
    {
      dispatch_once(&_initializeAssetLibraryWithCachePath_purgeCacheOnLoad__onceToken, v6);
    }
  }
}

uint64_t __73__VUIAssetLibrary__initializeAssetLibraryWithCachePath_purgeCacheOnLoad___block_invoke(uint64_t a1)
{
  sSharedInstance = [[VUIAssetLibrary alloc] initWithCachePath:*(a1 + 32) purgeCacheOnLoad:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)cacheHasBeenPurgedForHeic:(id)heic
{
  heicCopy = heic;
  if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && +[VUICoreUtilities isHeicFormatAllowed])
  {
    v4 = [heicCopy stringByAppendingPathComponent:@"menkaure.enabled"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)markCachePurgedForHeic:(id)heic
{
  heicCopy = heic;
  if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && +[VUICoreUtilities isHeicFormatAllowed])
  {
    v4 = [heicCopy stringByAppendingPathComponent:@"menkaure.enabled"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager createFileAtPath:v4 contents:0 attributes:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VUIAssetLibrary)initWithCachePath:(id)path purgeCacheOnLoad:(BOOL)load
{
  LODWORD(v4) = load;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = VUIAssetLibrary;
  v7 = [(VUIAssetLibrary *)&v28 init];
  if (v7)
  {
    v8 = dispatch_queue_create("com.apple.VUIAssetLibrary.writeQueue", 0);
    assetWriteQueue = v7->assetWriteQueue;
    v7->assetWriteQueue = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.VUIAssetLibrary.accessQueue", v10);
    assetAccessQueue = v7->assetAccessQueue;
    v7->assetAccessQueue = v11;

    v13 = [pathCopy copy];
    cachePath = v7->_cachePath;
    v7->_cachePath = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredGroups = v7->_registeredGroups;
    v7->_registeredGroups = v15;

    keyExistsAndHasValidFormat = 0;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PurgeImageCache", [mainBundle bundleIdentifier], &keyExistsAndHasValidFormat);

    if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && +[VUICoreUtilities isHeicFormatAllowed])
    {
      v19 = [VUIAssetLibrary cacheHasBeenPurgedForHeic:pathCopy];
      if (keyExistsAndHasValidFormat)
      {
        v4 = AppBooleanValue != 0;
      }

      else
      {
        v4 = v4;
      }

      if (!v19)
      {
        v20 = VUICImageLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_270E6E000, v20, OS_LOG_TYPE_DEFAULT, "Purging asset library caches since menkaure is enabled AND cache not purged before", v26, 2u);
        }

        [VUIAssetLibrary markCachePurgedForHeic:pathCopy];
        v4 = 1;
      }
    }

    else if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue != 0;
    }

    else
    {
      v4 = v4;
    }

    v21 = [[VUIAssetGroup alloc] initWithGroupType:0 baseCachePath:v7->_cachePath folderName:@"SharedImageCache" maxCacheSize:512 purgeOnLoad:v4];
    [(VUIAssetLibrary *)v7 registerGroup:v21];
    v22 = [[VUIAssetGroup alloc] initWithGroupType:1 baseCachePath:v7->_cachePath folderName:@"LSMImageCache" maxCacheSize:512 purgeOnLoad:v4];
    [(VUIAssetLibrary *)v7 registerGroup:v22];
    v23 = [[VUIAssetGroup alloc] initWithGroupType:2 baseCachePath:v7->_cachePath folderName:@"TrickPlay" maxCacheSize:50 purgeOnLoad:1];
    [(VUIAssetLibrary *)v7 registerGroup:v23];
    v24 = [[VUIAssetGroup alloc] initWithGroupType:3 baseCachePath:v7->_cachePath folderName:@"ARFileCache" maxCacheSize:256 purgeOnLoad:v4];
    [(VUIAssetLibrary *)v7 registerGroup:v24];
  }

  return v7;
}

- (id)assetForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];
  v9 = [v8 objectForKey:@"VUIAssetPath"];
  if (v9)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v9];

    if (v11)
    {
      v12 = [VUIImage imageWithPath:v9];
LABEL_6:
      v14 = v12;
      goto LABEL_9;
    }

    [(VUIAssetLibrary *)self removeAssetForKey:keyCopy inGroupOfType:type];
  }

  else
  {
    v13 = [v8 objectForKey:@"VUIAsset"];

    if (v13)
    {
      v12 = [v8 objectForKey:@"VUIAsset"];
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
  v7 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"VUIAssetPath"];

  return v9;
}

- (id)assetExpiryDateForKey:(id)key inGroupOfType:(int64_t)type
{
  keyCopy = key;
  v7 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  v8 = [v7 assetInfoForKey:keyCopy queue:self->assetAccessQueue];

  v9 = [v8 objectForKey:@"VUIVAssetExpiryDate"];

  return v9;
}

- (id)keyForAssetWithTags:(id)tags inGroupOfType:(int64_t)type
{
  v25 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v7 = [(VUIAssetLibrary *)self groupWithGroupType:type];
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
        v16 = [v15 objectForKeyedSubscript:@"VUIAssetPath"];

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
  v7 = [(VUIAssetLibrary *)self groupWithGroupType:type];
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
    v17 = [(VUIAssetLibrary *)self groupWithGroupType:type];
    cachePath = [v17 cachePath];
    v19 = [cachePath stringByAppendingPathComponent:defaultCenter];

    v37 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [defaultManager fileExistsAtPath:v19 isDirectory:&v37];

    if (!v21 && ([MEMORY[0x277CCAA00] defaultManager], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "moveItemAtPath:toPath:error:", pathCopy, v19, 0), v22, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "fileExistsAtPath:isDirectory:", v19, &v37), v23, !v24) || (v37 & 1) != 0 || (v36 = 0, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "vui_onDiskSizeOfFileAtPath:status:", v19, &v36), v25, v36) || !v26)
    {
      if (v37 != 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __78__VUIAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke_2;
        v31[3] = &unk_279E21798;
        v32 = defaultCenter;
        dispatch_async(MEMORY[0x277D85CD0], v31);
        v27 = v32;
LABEL_17:

        goto LABEL_18;
      }

      v26 = 0;
    }

    v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    [v27 setObject:v19 forKeyedSubscript:@"VUIAssetPath"];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
    [v27 setObject:v28 forKeyedSubscript:@"VUIAssetSize"];

    date = [MEMORY[0x277CBEAA8] date];
    [v27 setObject:date forKeyedSubscript:@"VUIAssetLastAccessedDate"];

    if (dateCopy)
    {
      [v27 setObject:dateCopy forKeyedSubscript:@"VUIVAssetExpiryDate"];
    }

    if (tagsCopy)
    {
      [v27 setObject:tagsCopy forKeyedSubscript:@"VUIAssetTags"];
    }

    [v17 setAssetInfo:v27 forKey:defaultCenter queue:{self->assetAccessQueue, pathCopy}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__VUIAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke;
    block[3] = &unk_279E218C8;
    v34 = defaultCenter;
    v35 = pathCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_17;
  }

  v30 = VUICImageLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [VUIAssetLibrary setImageAssetFromPath:v30 forKey:? inGroupOfType:? expiryDate:? tags:?];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v38 = @"VUIAssetDidWriteNotificationErrorKey";
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VideosUICoreErrorDomain" code:104 userInfo:0];
  v39[0] = v17;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  [defaultCenter postNotificationName:@"VUIAssetDidWriteNotification" object:keyCopy userInfo:v19];
LABEL_18:
}

void __78__VUIAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"VUIAssetDidWriteNotificationAssetPathKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VUIAssetDidWriteNotification" object:v4 userInfo:v5];
}

void __78__VUIAssetLibrary_setImageAssetFromPath_forKey_inGroupOfType_expiryDate_tags___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"VUIAssetDidWriteNotificationErrorKey";
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-36 userInfo:0];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VUIAssetDidWriteNotification" object:v3 userInfo:v5];
}

- (void)purgeAssetsInGroupOfType:(int64_t)type
{
  v4 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  [v4 removeAllAssetsWithQueue:self->assetAccessQueue];
}

- (void)updateAssetsInGroupOfType:(int64_t)type
{
  v3 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  [v3 updateAssetsFromFiles];
}

- (id)assetPathsForGroupOfType:(int64_t)type
{
  v4 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  v5 = [v4 infoForAllAssetsWithQueue:self->assetAccessQueue];
  allValues = [v5 allValues];
  v7 = [allValues vui_arrayByMappingObjectsUsingBlock:&__block_literal_global_20];

  return v7;
}

- (id)cachePathForGroupOfType:(int64_t)type
{
  v3 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  cachePath = [v3 cachePath];

  return cachePath;
}

- (void)unRegisterGroup:(int64_t)group
{
  v4 = [(VUIAssetLibrary *)self groupWithGroupType:group];
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
  v18 = [(VUIAssetLibrary *)self groupWithGroupType:type];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v19 setObject:assetCopy forKeyedSubscript:@"VUIAsset"];
  date = [MEMORY[0x277CBEAA8] date];
  [v19 setObject:date forKeyedSubscript:@"VUIAssetLastAccessedDate"];

  if (dateCopy)
  {
    [v19 setObject:dateCopy forKeyedSubscript:@"VUIVAssetExpiryDate"];
  }

  [v18 setAssetInfo:v19 forKey:keyCopy queue:self->assetAccessQueue];
  objc_initWeak(&location, self);
  assetWriteQueue = self->assetWriteQueue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke;
  v27[3] = &unk_279E22010;
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

void __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke(uint64_t a1)
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
    v9 = [v8 vui_onDiskSizeOfFileAtPath:v4 status:buf];

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
        v26 = [v25 vui_onDiskSizeOfFileAtPath:v4 status:buf];

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
        v27 = VUICImageLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&dword_270E6E000, v27, OS_LOG_TYPE_DEFAULT, "CGImageDestinationFinalize failed to save image to: %@", buf, 0xCu);
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
    [v15 setObject:v4 forKeyedSubscript:@"VUIAssetPath"];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    [v15 setObject:v16 forKeyedSubscript:@"VUIAssetSize"];

    v17 = [MEMORY[0x277CBEAA8] date];
    [v15 setObject:v17 forKeyedSubscript:@"VUIAssetLastAccessedDate"];

    v18 = *(a1 + 56);
    if (v18)
    {
      [v15 setObject:v18 forKeyedSubscript:@"VUIVAssetExpiryDate"];
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      [v15 setObject:v19 forKeyedSubscript:@"VUIAssetTags"];
    }

    [*(a1 + 40) setAssetInfo:v15 forKey:*(a1 + 32) queue:v14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_47;
    block[3] = &unk_279E218C8;
    v31 = *(a1 + 32);
    v32 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 40) removeAssetInfoForKey:*(a1 + 32) queue:v14];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_2;
    v28[3] = &unk_279E21798;
    v29 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v28);
    v15 = v29;
  }
}

void __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_47(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"VUIAssetDidWriteNotificationAssetPathKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VUIAssetDidWriteNotification" object:v4 userInfo:v5];
}

void __81__VUIAssetLibrary__setImageAsset_forKey_inGroupOfType_expiryDate_overWrite_tags___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"VUIAssetDidWriteNotificationErrorKey";
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-36 userInfo:0];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VUIAssetDidWriteNotification" object:v3 userInfo:v5];
}

@end