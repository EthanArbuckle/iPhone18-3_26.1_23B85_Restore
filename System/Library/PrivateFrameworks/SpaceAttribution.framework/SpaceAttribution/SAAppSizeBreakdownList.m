@interface SAAppSizeBreakdownList
- (SAAppSizeBreakdownList)init;
- (id)generateDictionary;
- (void)addPluginSize:(unint64_t)a3 bundleIDs:(id)a4;
- (void)addTagSize:(unint64_t)a3 bundleIDs:(id)a4;
- (void)mergeBundleIDs:(id)a3 withBundleIDs:(id)a4 newBundleIDs:(id)a5;
- (void)updateBundleIDs:(id)a3 newIDs:(id)a4;
- (void)updatePath:(id)a3 cacheSize:(unint64_t)a4 bundleIDs:(id)a5;
- (void)updatePath:(id)a3 cloneSize:(unint64_t)a4 bundleIDs:(id)a5;
- (void)updateTagsWithCloneSize:(unint64_t)a3 bundleIDs:(id)a4;
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

- (void)addTagSize:(unint64_t)a3 bundleIDs:(id)a4
{
  v7 = a4;
  v6 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addTagSize:a3];
}

- (void)updatePath:(id)a3 cacheSize:(unint64_t)a4 bundleIDs:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v9 forKeyedSubscript:v8];
  }

  [v9 updatePath:v10 cacheSize:a4];
}

- (void)addPluginSize:(unint64_t)a3 bundleIDs:(id)a4
{
  v7 = a4;
  v6 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addPluginCacheSize:a3];
}

- (void)updateBundleIDs:(id)a3 newIDs:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:v10];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      [v8 mergeWithAppSizeBreakdown:v7];
    }

    else
    {
      [(NSMutableDictionary *)self->_appSizeBreakdownList setObject:v7 forKeyedSubscript:v6];
    }

    [(NSMutableDictionary *)self->_appSizeBreakdownList removeObjectForKey:v10];
  }
}

- (void)mergeBundleIDs:(id)a3 withBundleIDs:(id)a4 newBundleIDs:(id)a5
{
  appSizeBreakdownList = self->_appSizeBreakdownList;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [(NSMutableDictionary *)appSizeBreakdownList objectForKeyedSubscript:v11];
  v12 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:v10];
  [v13 mergeWithAppSizeBreakdown:v12];
  [(NSMutableDictionary *)self->_appSizeBreakdownList removeObjectForKey:v10];

  [(SAAppSizeBreakdownList *)self updateBundleIDs:v11 newIDs:v9];
}

- (void)updatePath:(id)a3 cloneSize:(unint64_t)a4 bundleIDs:(id)a5
{
  v10 = a3;
  v8 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:a5];
  v9 = v8;
  if (v8)
  {
    [v8 updatePath:v10 cloneSize:a4];
  }
}

- (void)updateTagsWithCloneSize:(unint64_t)a3 bundleIDs:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_appSizeBreakdownList objectForKeyedSubscript:a4];
  if (v5)
  {
    v6 = v5;
    [v5 addTagSize:a3];
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