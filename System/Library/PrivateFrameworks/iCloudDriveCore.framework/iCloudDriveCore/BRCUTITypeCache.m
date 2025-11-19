@interface BRCUTITypeCache
+ (id)defaultCache;
- (id)UTIForExtension:(id)a3;
- (id)_getLaunchServicesDatabaseGeneration;
- (id)_init;
- (id)_utiForExtension:(id)a3;
- (void)_invalidateCahceIfNeeded;
@end

@implementation BRCUTITypeCache

+ (id)defaultCache
{
  if (defaultCache_onceToken != -1)
  {
    +[BRCUTITypeCache defaultCache];
  }

  v3 = defaultCache_defaultCache;

  return v3;
}

uint64_t __31__BRCUTITypeCache_defaultCache__block_invoke()
{
  defaultCache_defaultCache = [[BRCUTITypeCache alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = BRCUTITypeCache;
  v2 = [(BRCUTITypeCache *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    utiCache = v2->_utiCache;
    v2->_utiCache = v3;

    v5 = [BRCUserDefaults defaultsForMangledID:0];
    -[NSCache setCountLimit:](v2->_utiCache, "setCountLimit:", [v5 utiCacheSize]);

    [(NSCache *)v2->_utiCache setEvictsObjectsWithDiscardedContent:1];
  }

  return v2;
}

- (id)_utiForExtension:(id)a3
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], a3, 0);

  return PreferredIdentifierForTag;
}

- (id)_getLaunchServicesDatabaseGeneration
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = 0;
  [v2 getKnowledgeUUID:0 andSequenceNumber:&v6];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (void)_invalidateCahceIfNeeded
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Invalidating UTI cache%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)UTIForExtension:(id)a3
{
  v4 = a3;
  [(BRCUTITypeCache *)self _invalidateCahceIfNeeded];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSCache *)v5->_utiCache objectForKey:v4];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];

    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    objc_sync_exit(v5);
  }

  else
  {
    objc_sync_exit(v5);

    v9 = [(BRCUTITypeCache *)v5 _utiForExtension:v4];
    v10 = v5;
    objc_sync_enter(v10);
    utiCache = v5->_utiCache;
    if (v9)
    {
      [(NSCache *)v5->_utiCache setObject:v9 forKey:v4];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB68] null];
      [(NSCache *)utiCache setObject:v12 forKey:v4];
    }

    objc_sync_exit(v10);

    v8 = v9;
    v6 = v8;
  }

  return v8;
}

@end