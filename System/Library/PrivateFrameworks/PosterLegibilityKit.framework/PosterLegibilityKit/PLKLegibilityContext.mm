@interface PLKLegibilityContext
+ (PLKLegibilityContext)contextWithIdentifier:(id)a3 preferredCacheCapacity:(unint64_t)a4 displayScale:(double)a5 cacheProvider:(id)a6;
+ (PLKLegibilityContext)defaultContext;
- (PLKLegibilityContext)initWithCacheIdentifier:(id)a3 preferredCacheCapacity:(unint64_t)a4 displayScale:(double)a5 cacheProvider:(id)a6;
- (id)imageForKey:(id)a3 generatingIfNil:(id)a4;
- (void)_memoryWarningDidFire:(id)a3;
- (void)cancel;
@end

@implementation PLKLegibilityContext

+ (PLKLegibilityContext)contextWithIdentifier:(id)a3 preferredCacheCapacity:(unint64_t)a4 displayScale:(double)a5 cacheProvider:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__onceToken != -1)
  {
    +[PLKLegibilityContext contextWithIdentifier:preferredCacheCapacity:displayScale:cacheProvider:];
  }

  v11 = contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable;
  objc_sync_enter(v11);
  v12 = [contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable objectForKey:v9];
  if (!v12)
  {
    v12 = [[PLKLegibilityContext alloc] initWithCacheIdentifier:v9 preferredCacheCapacity:a4 displayScale:v10 cacheProvider:a5];
    [contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable setObject:v12 forKey:v9];
  }

  objc_sync_exit(v11);

  return v12;
}

uint64_t __96__PLKLegibilityContext_contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider___block_invoke()
{
  contextWithIdentifier_preferredCacheCapacity_displayScale_cacheProvider__cacheIdentifierToContextMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

+ (PLKLegibilityContext)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    +[PLKLegibilityContext defaultContext];
  }

  v3 = defaultContext_defaultContext;

  return v3;
}

void __38__PLKLegibilityContext_defaultContext__block_invoke()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v0 = [PLKLegibilityContext contextWithIdentifier:@"DEFAULT_CONTEXT" preferredCacheCapacity:200 displayScale:0 cacheProvider:?];
  v1 = defaultContext_defaultContext;
  defaultContext_defaultContext = v0;
}

- (id)imageForKey:(id)a3 generatingIfNil:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(PLKLRUCache *)v8->_LRUCache objectForKey:v6];
  if (v9)
  {
    v10 = v9;
LABEL_3:
    v11 = v10;
    goto LABEL_4;
  }

  if ([(NSMutableSet *)v8->_knownMappedImageCacheKeys containsObject:v6])
  {
    v13 = [(BSUIMappedImageCache *)v8->_mappedImageCache imageForKey:v6];
    if (v13)
    {
      [(PLKLRUCache *)v8->_LRUCache setObject:v13 forKey:v6];
      v10 = v13;
      goto LABEL_3;
    }
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  v14 = objc_autoreleasePoolPush();
  v11 = v7[2](v7, v6);
  if (v11)
  {
    [(PLKLRUCache *)v8->_LRUCache setObject:v11 forKey:v6];
    [(BSUIMappedImageCache *)v8->_mappedImageCache setImage:v11 forKey:v6];
    [(NSMutableSet *)v8->_knownMappedImageCacheKeys addObject:v6];
    v15 = v11;
  }

  objc_autoreleasePoolPop(v14);
  if (!v11)
  {
LABEL_14:
    v11 = 0;
  }

LABEL_4:

  objc_sync_exit(v8);

  return v11;
}

- (PLKLegibilityContext)initWithCacheIdentifier:(id)a3 preferredCacheCapacity:(unint64_t)a4 displayScale:(double)a5 cacheProvider:(id)a6
{
  v10 = a3;
  v11 = a6;
  v26.receiver = self;
  v26.super_class = PLKLegibilityContext;
  v12 = [(PLKLegibilityContext *)&v26 init];
  if (v12)
  {
    v13 = [v10 copy];
    cacheIdentifier = v12->_cacheIdentifier;
    v12->_cacheIdentifier = v13;

    v12->_preferredCacheCapacity = a4;
    v12->_displayScale = a5;
    v15 = [[PLKLRUCache alloc] initWithCapacity:v12->_preferredCacheCapacity];
    LRUCache = v12->_LRUCache;
    v12->_LRUCache = v15;

    if (v11)
    {
      v17 = [MEMORY[0x277CF0D70] optionsWithContainerPathProvider:v11];
      objc_storeStrong(&v12->_mappedImageCachePathProvider, a6);
      v18 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:v12->_cacheIdentifier options:v17];
      mappedImageCache = v12->_mappedImageCache;
      v12->_mappedImageCache = v18;

      v20 = MEMORY[0x277CBEB58];
      v21 = [(BSUIMappedImageCache *)v12->_mappedImageCache allKeys];
      v22 = [v20 setWithArray:v21];
      knownMappedImageCacheKeys = v12->_knownMappedImageCacheKeys;
      v12->_knownMappedImageCacheKeys = v22;
    }

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v12 selector:sel__memoryWarningDidFire_ name:*MEMORY[0x277D76670] object:0];
  }

  return v12;
}

- (void)_memoryWarningDidFire:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = PLKLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    cacheIdentifier = v5->_cacheIdentifier;
    v9 = 138412290;
    v10 = cacheIdentifier;
    _os_log_impl(&dword_21E5D5000, v6, OS_LOG_TYPE_DEFAULT, "Memory warning did fire for legibility context %@", &v9, 0xCu);
  }

  [(PLKLRUCache *)v5->_LRUCache removeAllObjects];
  objc_sync_exit(v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  [(PLKLRUCache *)obj->_LRUCache removeAllObjects];
  [(BSUIMappedImageCache *)obj->_mappedImageCache removeAllImagesWithCompletion:&__block_literal_global_14];
  objc_sync_exit(obj);
}

@end