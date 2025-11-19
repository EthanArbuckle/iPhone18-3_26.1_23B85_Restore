@interface PRLikenessCache
+ (BOOL)_ensureExistenceOfDirectory:(id)a3;
+ (BOOL)_purgeOldCacheFilesInDirectory:(id)a3;
+ (BOOL)_removeImageAtURL:(id)a3;
+ (BOOL)_writeImage:(id)a3 toURL:(id)a4;
+ (id)_applicationCacheDirectory;
+ (id)_imageAtURL:(id)a3;
+ (id)_propertyValueForURL:(id)a3 forKey:(id)a4;
+ (id)_staticRepresentationCacheURL;
+ (id)sharedInstance;
- (PRLikenessCache)init;
- (id)_cacheKeyForLikeness:(id)a3 context:(id)a4;
- (id)_cacheURLForLikeness:(id)a3 context:(id)a4;
- (void)_fetchFromFilesystem:(id)a3 context:(id)a4 renderBlock:(id)a5 completion:(id)a6;
- (void)_fetchFromMemory:(id)a3 context:(id)a4 renderBlock:(id)a5 completion:(id)a6;
- (void)_fetchWithReadBlock:(id)a3 writeBlock:(id)a4 renderBlock:(id)a5 completion:(id)a6;
- (void)_renderImageForLikeness:(id)a3 context:(id)a4 completion:(id)a5;
- (void)imageForLikeness:(id)a3 context:(id)a4 completion:(id)a5;
@end

@implementation PRLikenessCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PRLikenessCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __33__PRLikenessCache_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)_applicationCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)_staticRepresentationCacheURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [a1 _applicationCacheDirectory];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@".persona" isDirectory:1 relativeToURL:v4];

  return v5;
}

+ (BOOL)_ensureExistenceOfDirectory:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v11];

  v7 = v11;
  v8 = (v7 == 0) & v6;
  if (!v8)
  {
    v9 = _PRGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "+[PRLikenessCache _ensureExistenceOfDirectory:]";
      v14 = 1024;
      v15 = 101;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25E435000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) @Failed to create cache directory: %@", buf, 0x1Cu);
    }
  }

  return v8;
}

- (PRLikenessCache)init
{
  v14.receiver = self;
  v14.super_class = PRLikenessCache;
  v2 = [(PRLikenessCache *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    inMemoryCache = v2->_inMemoryCache;
    v2->_inMemoryCache = v3;

    [(NSCache *)v2->_inMemoryCache setName:@"com.apple.persona.cache"];
    [(NSCache *)v2->_inMemoryCache setTotalCostLimit:2621440];
    v5 = [objc_opt_class() _staticRepresentationCacheURL];
    cacheDirectory = v2->_cacheDirectory;
    v2->_cacheDirectory = v5;

    [PRLikenessCache _ensureExistenceOfDirectory:v2->_cacheDirectory];
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.persona.cache", v7);
    cacheLookupQueue = v2->_cacheLookupQueue;
    v2->_cacheLookupQueue = v8;

    *&v2->_useMemory = 1;
    v2->_renderIfNeeded = 1;
    v10 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__PRLikenessCache_init__block_invoke;
    block[3] = &unk_279A1C148;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

- (id)_cacheKeyForLikeness:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 uniqueIdentifier];
  v8 = [v6 recipe];

  v9 = [v8 _cn_SHA1String];

  v10 = NSStringFromPRLikenessCacheSize([v5 cacheSize]);
  v11 = [v5 circular];

  v12 = @"sqr";
  if (v11)
  {
    v12 = @"cir";
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@_%@", v7, v9, v10, v12];

  return v13;
}

- (id)_cacheURLForLikeness:(id)a3 context:(id)a4
{
  v5 = [(PRLikenessCache *)self _cacheKeyForLikeness:a3 context:a4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, @"png"];
  v7 = [(NSURL *)self->_cacheDirectory URLByAppendingPathComponent:v6];

  return v7;
}

- (void)imageForLikeness:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke;
  v18[3] = &unk_279A1C170;
  v11 = v10;
  v19 = v11;
  v12 = MEMORY[0x25F8B3050](v18);
  v13 = [v8 uniqueIdentifier];

  if (v13)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_2;
    v15[3] = &unk_279A1C198;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    [(PRLikenessCache *)self _fetchFromMemory:v16 context:v17 renderBlock:v15 completion:v12];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9021];
    (v12)[2](v12, 0, v14);
  }
}

uint64_t __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_3;
  v8[3] = &unk_279A1C1E8;
  v8[4] = v5;
  v9 = v4;
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_4;
  v7[3] = &unk_279A1C198;
  v7[4] = v3;
  v8 = v2;
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_5;
  v5[3] = &unk_279A1C170;
  v6 = *(a1 + 56);
  [v3 _fetchFromFilesystem:v8 context:v4 renderBlock:v7 completion:v5];
}

void __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PRLikenessCache_imageForLikeness_context_completion___block_invoke_6;
  block[3] = &unk_279A1C1C0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)_fetchFromMemory:(id)a3 context:(id)a4 renderBlock:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PRLikenessCache *)self useMemory])
  {
    v14 = [(PRLikenessCache *)self _cacheKeyForLikeness:v10 context:v11];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__PRLikenessCache__fetchFromMemory_context_renderBlock_completion___block_invoke;
    v20[3] = &unk_279A1C210;
    v20[4] = self;
    v21 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__PRLikenessCache__fetchFromMemory_context_renderBlock_completion___block_invoke_2;
    v16[3] = &unk_279A1C238;
    v17 = v11;
    v18 = self;
    v19 = v21;
    v15 = v21;
    [(PRLikenessCache *)self _fetchWithReadBlock:v20 writeBlock:v16 renderBlock:v12 completion:v13];
  }

  else
  {
    v12[2](v12, v13);
  }
}

void __67__PRLikenessCache__fetchFromMemory_context_renderBlock_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [*(a1[5] + 8) setObject:v4 forKey:a1[6] cost:{PRLikenessCacheSizeGetCost(objc_msgSend(v3, "cacheSize"))}];
}

- (void)_fetchFromFilesystem:(id)a3 context:(id)a4 renderBlock:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PRLikenessCache *)self useFilesystem])
  {
    v14 = [(PRLikenessCache *)self _cacheURLForLikeness:v10 context:v11];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__PRLikenessCache__fetchFromFilesystem_context_renderBlock_completion___block_invoke;
    v18[3] = &unk_279A1C260;
    v19 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__PRLikenessCache__fetchFromFilesystem_context_renderBlock_completion___block_invoke_2;
    v16[3] = &unk_279A1C288;
    v17 = v19;
    v15 = v19;
    [(PRLikenessCache *)self _fetchWithReadBlock:v18 writeBlock:v16 renderBlock:v12 completion:v13];
  }

  else
  {
    v12[2](v12, v13);
  }
}

- (void)_renderImageForLikeness:(id)a3 context:(id)a4 completion:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PRLikenessCache *)self renderIfNeeded])
  {
    v11 = CGSizeFromPRLikenessCacheSize([v9 cacheSize]);
    v13 = v12;
    [v9 scale];
    v15 = v14;
    v22[0] = @"PRLikenessSnapshotOptionCircular";
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "circular")}];
    v23[0] = v16;
    v22[1] = @"PRLikenessSnapshotOptionForceDecode";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "forceDecode")}];
    v23[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v19 = [v8 snapshotWithSize:v18 scale:v11 options:{v13, v15}];

    if (v19)
    {
      v10[2](v10, v19, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9010];
      (v10)[2](v10, 0, v21);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9018];
    (v10)[2](v10, 0, v20);
  }
}

- (void)_fetchWithReadBlock:(id)a3 writeBlock:(id)a4 renderBlock:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = (*(a3 + 2))(a3);
  if (v12)
  {
    v11[2](v11, v12, 0);
  }

  else if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__PRLikenessCache__fetchWithReadBlock_writeBlock_renderBlock_completion___block_invoke;
    v14[3] = &unk_279A1C2B0;
    v15 = v9;
    v16 = v11;
    v10[2](v10, v14);
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9018];
    (v11)[2](v11, 0, v13);
  }
}

void __73__PRLikenessCache__fetchWithReadBlock_writeBlock_renderBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)_imageAtURL:(id)a3
{
  keys[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CD3668];
  keys[0] = *MEMORY[0x277CD3618];
  keys[1] = v4;
  v5 = *MEMORY[0x277CC2120];
  values[0] = *MEMORY[0x277CBED10];
  values[1] = v5;
  v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    v7 = v6;
    v8 = CGImageSourceCreateWithURL(v3, v6);
    if (v8)
    {
      v9 = v8;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);
      if (ImageAtIndex)
      {
        v11 = ImageAtIndex;
        v12 = [MEMORY[0x277D755B8] pr_imageWithCGImage:ImageAtIndex];
        CGImageRelease(v11);
      }

      else
      {
        v12 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_writeImage:(id)a3 toURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 pr_imageRef];
  if (!v6)
  {
    v12 = _PRGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[PRLikenessCache _writeImage:toURL:]";
      v17 = 1024;
      v18 = 321;
      v13 = "%s (%d) @Failed to get imageRef from PRImage!";
LABEL_12:
      _os_log_impl(&dword_25E435000, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x12u);
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = CGImageDestinationCreateWithURL(v5, *MEMORY[0x277CC2120], 0, 0);
  if (!v8)
  {
    v12 = _PRGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[PRLikenessCache _writeImage:toURL:]";
      v17 = 1024;
      v18 = 329;
      v13 = "%s (%d) @Failed to create imageDestinationRef!";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = v8;
  CGImageDestinationAddImage(v8, v7, 0);
  v10 = CGImageDestinationFinalize(v9);
  if (!v10)
  {
    v11 = _PRGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[PRLikenessCache _writeImage:toURL:]";
      v17 = 1024;
      v18 = 337;
      _os_log_impl(&dword_25E435000, v11, OS_LOG_TYPE_DEFAULT, "%s (%d) @Failed to finalize the image destination!", &v15, 0x12u);
    }
  }

  CFRelease(v9);
LABEL_14:

  return v10;
}

+ (BOOL)_removeImageAtURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v11];

  v7 = v11;
  v8 = (v7 == 0) & v6;
  if (!v8)
  {
    v9 = _PRGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "+[PRLikenessCache _removeImageAtURL:]";
      v14 = 1024;
      v15 = 355;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25E435000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) @Failed to remove image file: %@", buf, 0x1Cu);
    }
  }

  return v8;
}

+ (BOOL)_purgeOldCacheFilesInDirectory:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = *MEMORY[0x277CBE7A8];
  v38[0] = *MEMORY[0x277CBE7A8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v30 = 0;
  v8 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v7 options:1 error:&v30];
  v9 = v30;

  if (!v9)
  {
    v25 = v4;
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (!v13)
    {
      v11 = 1;
      goto LABEL_23;
    }

    v14 = v13;
    v15 = *v27;
    v11 = 1;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [a1 _propertyValueForURL:v17 forKey:v6];
        v19 = v18;
        if (!v18)
        {
          v20 = _PRGetLogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v33 = "+[PRLikenessCache _purgeOldCacheFilesInDirectory:]";
            v34 = 1024;
            v35 = 379;
            v36 = 2112;
            v37 = v17;
            v21 = v20;
            v22 = "%s (%d) @File did not contain a last access date: %@";
LABEL_17:
            _os_log_impl(&dword_25E435000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x1Cu);
          }

LABEL_18:

          v11 = 0;
          goto LABEL_19;
        }

        if ([v18 compare:v10] == -1 && (objc_msgSend(a1, "_removeImageAtURL:", v17) & 1) == 0)
        {
          v20 = _PRGetLogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v33 = "+[PRLikenessCache _purgeOldCacheFilesInDirectory:]";
            v34 = 1024;
            v35 = 386;
            v36 = 2112;
            v37 = v17;
            v21 = v20;
            v22 = "%s (%d) @Failed to remove image file: %@";
            goto LABEL_17;
          }

          goto LABEL_18;
        }

LABEL_19:
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (!v14)
      {
LABEL_23:

        v8 = v24;
        v4 = v25;
        v9 = 0;
        goto LABEL_24;
      }
    }
  }

  v10 = _PRGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v33 = "+[PRLikenessCache _purgeOldCacheFilesInDirectory:]";
    v34 = 1024;
    v35 = 368;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_25E435000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) @Failed to enumerate contents of directory: %@", buf, 0x1Cu);
  }

  v11 = 0;
LABEL_24:

  return v11 & 1;
}

+ (id)_propertyValueForURL:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0;
  [a3 getResourceValue:&v9 forKey:a4 error:&v8];
  v4 = v9;
  v5 = v8;
  if (v5)
  {
    v6 = _PRGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "+[PRLikenessCache _propertyValueForURL:forKey:]";
      v12 = 1024;
      v13 = 403;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_25E435000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) @Failed to get property for file: %@", buf, 0x1Cu);
    }
  }

  return v4;
}

@end