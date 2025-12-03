@interface SAAppSizeBreakdownList
- (SAAppSizeBreakdownList)init;
- (id)generateDictionary;
- (void)addPluginSize:(unint64_t)size bundleIDs:(id)ds;
- (void)addTagSize:(unint64_t)size bundleIDs:(id)ds;
- (void)mergeBundleIDs:(id)ds withBundleIDs:(id)iDs newBundleIDs:(id)bundleIDs;
- (void)updateBundleIDs:(id)ds newIDs:(id)iDs;
- (void)updatePath:(id)path cacheSize:(unint64_t)size bundleIDs:(id)ds;
- (void)updatePath:(id)path cloneSize:(unint64_t)size bundleIDs:(id)ds;
- (void)updateTagsWithCloneSize:(unint64_t)size bundleIDs:(id)ds;
@end

@implementation SAAppSizeBreakdownList

- (SAAppSizeBreakdownList)init
{
  v6.receiver = self;
  v6.super_class = SAAppSizeBreakdownList;
  v2 = [(SAAppSizeBreakdownList *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    appSizeBreakdownList = v2->_appSizeBreakdownList;
    v2->_appSizeBreakdownList = v3;
  }

  return v2;
}

- (void)addTagSize:(unint64_t)size bundleIDs:(id)ds
{
  dsCopy = ds;
  v6 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v6 forKeyedSubscript:dsCopy];
  }

  [v6 addTagSize:size];
}

- (void)updatePath:(id)path cacheSize:(unint64_t)size bundleIDs:(id)ds
{
  pathCopy = path;
  dsCopy = ds;
  v9 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:dsCopy];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v9 forKeyedSubscript:dsCopy];
  }

  [v9 updatePath:pathCopy cacheSize:size];
}

- (void)addPluginSize:(unint64_t)size bundleIDs:(id)ds
{
  dsCopy = ds;
  v6 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v6 forKeyedSubscript:dsCopy];
  }

  [v6 addPluginCacheSize:size];
}

- (void)updateBundleIDs:(id)ds newIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v7 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:dsCopy];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:iDsCopy];
    v9 = v8;
    if (v8)
    {
      [v8 mergeWithAppSizeBreakdown:v7];
    }

    else
    {
      [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v7 forKeyedSubscript:iDsCopy];
    }

    [(NSMutableDictionary *)self->_appSizeBreakdownList removeObjectForKey:dsCopy];
  }
}

- (void)mergeBundleIDs:(id)ds withBundleIDs:(id)iDs newBundleIDs:(id)bundleIDs
{
  appSizeBreakdownList = self->_appSizeBreakdownList;
  bundleIDsCopy = bundleIDs;
  iDsCopy = iDs;
  dsCopy = ds;
  v13 = [(NSMutableDictionary *)appSizeBreakdownList objectForKeyedSubscript:dsCopy];
  v12 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:iDsCopy];
  [v13 mergeWithAppSizeBreakdown:v12];
  [(NSMutableDictionary *)self->_appSizeBreakdownList removeObjectForKey:iDsCopy];

  [(SAAppSizeBreakdownList *)self updateBundleIDs:dsCopy newIDs:bundleIDsCopy];
}

- (void)updatePath:(id)path cloneSize:(unint64_t)size bundleIDs:(id)ds
{
  pathCopy = path;
  v8 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:ds];
  v9 = v8;
  if (v8)
  {
    [v8 updatePath:pathCopy cloneSize:size];
  }
}

- (void)updateTagsWithCloneSize:(unint64_t)size bundleIDs:(id)ds
{
  v5 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:ds];
  if (v5)
  {
    v6 = v5;
    [v5 addTagSize:size];
    v5 = v6;
  }
}

- (id)generateDictionary
{
  v3 = objc_opt_new();
  appSizeBreakdownList = self->_appSizeBreakdownList;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SAAppSizeBreakdownList_generateDictionary__block_invoke;
  v7[3] = &unk_279CD6C58;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)appSizeBreakdownList enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __44__SAAppSizeBreakdownList_generateDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 generateDictionary];
  [v4 setObject:v6 forKey:v5];
}

@end