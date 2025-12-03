@interface BRCUTITypeCache
+ (id)defaultCache;
- (id)UTIForExtension:(id)extension;
- (id)_getLaunchServicesDatabaseGeneration;
- (id)_init;
- (id)_utiForExtension:(id)extension;
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

- (id)_utiForExtension:(id)extension
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], extension, 0);

  return PreferredIdentifierForTag;
}

- (id)_getLaunchServicesDatabaseGeneration
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = 0;
  [defaultWorkspace getKnowledgeUUID:0 andSequenceNumber:&v6];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (void)_invalidateCahceIfNeeded
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Invalidating UTI cache%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)UTIForExtension:(id)extension
{
  extensionCopy = extension;
  [(BRCUTITypeCache *)self _invalidateCahceIfNeeded];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSCache *)selfCopy->_utiCache objectForKey:extensionCopy];
  if (v6)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (v6 == null)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v9 = [(BRCUTITypeCache *)selfCopy _utiForExtension:extensionCopy];
    v10 = selfCopy;
    objc_sync_enter(v10);
    utiCache = selfCopy->_utiCache;
    if (v9)
    {
      [(NSCache *)selfCopy->_utiCache setObject:v9 forKey:extensionCopy];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [(NSCache *)utiCache setObject:null2 forKey:extensionCopy];
    }

    objc_sync_exit(v10);

    v8 = v9;
    v6 = v8;
  }

  return v8;
}

@end