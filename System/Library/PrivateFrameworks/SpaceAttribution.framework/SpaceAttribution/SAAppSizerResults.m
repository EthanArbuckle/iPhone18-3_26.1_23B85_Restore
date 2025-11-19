@interface SAAppSizerResults
- (SAAppSize)systemApp;
- (SAAppSize)systemDataApp;
- (SAAppSizerResults)init;
- (SAAppSizerResults)initWithCoder:(id)a3;
- (id)mergeAppSet:(id)a3 withAppSet:(id)a4;
- (unint64_t)getPhySizeForAppSet:(id)a3;
- (unint64_t)postProcessFilteringWithAppPathList:(id)a3;
- (unsigned)initDiskUsedAndCapacity;
- (void)accountPurgeableTagsFor:(id)a3 purgeableTagsSize:(unint64_t)a4;
- (void)accountSUPurgeableFor:(id)a3 purgeableSize:(unint64_t)a4;
- (void)addToSystemDetails:(unint64_t)a3 key:(id)a4;
- (void)collectPathSizeInfo:(id)a3 info:(id)a4;
- (void)enableAppSizeBreakdown;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAppsDataUsingBlock:(id)a3;
- (void)initDiskUsedAndCapacity;
- (void)populateAppsData;
- (void)postProcessMerging;
- (void)print;
- (void)removeBundleIDs:(id)a3;
- (void)setBundleIDs:(id)a3 vendorName:(id)a4;
- (void)updateBundleIDs:(id)a3 fixedSize:(unint64_t)a4 dataSize:(unint64_t)a5 cloneSize:(unint64_t)a6 purgeableSize:(unint64_t)a7 cloneFixUpSize:(unint64_t)a8 physicalSize:(unint64_t)a9 appCacheSize:(unint64_t)a10 CDPluginSize:(unint64_t)a11;
- (void)updateBundleIDs:(id)a3 withAppSize:(id)a4;
- (void)updateBundleIDs:(id)a3 withDataSize:(unint64_t)a4;
- (void)updateHiddenApp:(id)a3 withPurgeableTagsSize:(unint64_t)a4;
- (void)updateHiddenApp:(id)a3 withSUPurgeableSize:(unint64_t)a4;
- (void)updateSystemDataDetailsWith:(id)a3 andSize:(unint64_t)a4;
- (void)zeroSizeAppsFiltering;
@end

@implementation SAAppSizerResults

- (SAAppSizerResults)init
{
  v25.receiver = self;
  v25.super_class = SAAppSizerResults;
  v2 = [(SAAppSizerResults *)&v25 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 18) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    *(v2 + 23) = 0;
    *(v2 + 24) = 0;
    *(v2 + 24) = xmmword_26B281550;
    v4 = objc_opt_new();
    appsDataInternal = v3->_appsDataInternal;
    v3->_appsDataInternal = v4;

    reportedTelemetry = v3->_reportedTelemetry;
    v3->_reportedTelemetry = 0;

    v7 = objc_opt_new();
    pathsList = v3->_pathsList;
    v3->_pathsList = v7;

    v9 = objc_opt_new();
    attributionTags = v3->_attributionTags;
    v3->_attributionTags = v9;

    v11 = objc_opt_new();
    clonesInfo = v3->_clonesInfo;
    v3->_clonesInfo = v11;

    v13 = objc_opt_new();
    systemDataDetails = v3->_systemDataDetails;
    v3->_systemDataDetails = v13;

    v15 = objc_opt_new();
    hiddenAppsData = v3->_hiddenAppsData;
    v3->_hiddenAppsData = v15;

    v17 = objc_opt_new();
    appsList = v3->_appsList;
    v3->_appsList = v17;

    v19 = objc_opt_new();
    zeroSizeApps = v3->_zeroSizeApps;
    v3->_zeroSizeApps = v19;

    v21 = objc_opt_new();
    systemDetails = v3->_systemDetails;
    v3->_systemDetails = v21;

    appSizeBreakdownList = v3->_appSizeBreakdownList;
    v3->_appSizeBreakdownList = 0;

    v3->_rawSystemDataSize = 0;
    v3->_APFSDiskUsed = 0;
  }

  return v3;
}

- (SAAppSize)systemDataApp
{
  v3 = [(NSMutableDictionary *)self->_appsDataInternal objectForKeyedSubscript:@"com.apple.fakeapp.SystemData"];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(NSMutableDictionary *)self->_appsDataInternal setObject:v4 forKeyedSubscript:@"com.apple.fakeapp.SystemData"];
  }

  appsDataInternal = self->_appsDataInternal;

  return [(NSMutableDictionary *)appsDataInternal objectForKeyedSubscript:@"com.apple.fakeapp.SystemData"];
}

- (SAAppSize)systemApp
{
  v3 = [(NSMutableDictionary *)self->_appsDataInternal objectForKeyedSubscript:@"com.apple.fakeapp.System"];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(NSMutableDictionary *)self->_appsDataInternal setObject:v4 forKeyedSubscript:@"com.apple.fakeapp.System"];
  }

  appsDataInternal = self->_appsDataInternal;

  return [(NSMutableDictionary *)appsDataInternal objectForKeyedSubscript:@"com.apple.fakeapp.System"];
}

- (void)enableAppSizeBreakdown
{
  v3 = objc_opt_new();
  appSizeBreakdownList = self->_appSizeBreakdownList;
  self->_appSizeBreakdownList = v3;

  MEMORY[0x2821F96F8]();
}

- (void)populateAppsData
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = objc_opt_new();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SAAppSizerResults_populateAppsData__block_invoke;
  v3[3] = &unk_279CD6ED0;
  v3[4] = self;
  v3[5] = &v4;
  [(SAAppSizerResults *)self enumerateAppsDataUsingBlock:v3];
  objc_storeStrong(&self->_appData, v5[5]);
  _Block_object_dispose(&v4, 8);
}

void __37__SAAppSizerResults_populateAppsData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 convertBundlesKeyToBundlesSet:a2];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v7];
}

- (void)updateBundleIDs:(id)a3 fixedSize:(unint64_t)a4 dataSize:(unint64_t)a5 cloneSize:(unint64_t)a6 purgeableSize:(unint64_t)a7 cloneFixUpSize:(unint64_t)a8 physicalSize:(unint64_t)a9 appCacheSize:(unint64_t)a10 CDPluginSize:(unint64_t)a11
{
  v21 = a3;
  v17 = self->_appsDataInternal;
  objc_sync_enter(v17);
  v18 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v21];
  v19 = v18;
  if (v18)
  {
    [v18 setFixedSize:{objc_msgSend(v18, "fixedSize") + a4}];
    [v19 setDataSize:{objc_msgSend(v19, "dataSize") + a5}];
    [v19 setCloneSize:{objc_msgSend(v19, "cloneSize") + a6}];
    [v19 setPurgeableSize:{objc_msgSend(v19, "purgeableSize") + a7}];
    [v19 setPhysicalSize:{objc_msgSend(v19, "physicalSize") + a9}];
    [v19 setCloneFixUpSize:{objc_msgSend(v19, "cloneFixUpSize") + a8}];
    [v19 setAppCacheSize:{objc_msgSend(v19, "appCacheSize") + a10}];
    [v19 setCacheDeletePluginSize:{objc_msgSend(v19, "cacheDeletePluginSize") + a11}];
  }

  else
  {
    v20 = [SAAppSize newWithFixedSize:a4 dataSize:a5 cloneSize:a6 purgeableSize:a7 cloneFixUpSize:a8 physicalSize:a9 appCacheSize:a10 CDPluginSize:a11];
    [(NSMutableDictionary *)self->_appsDataInternal setObject:v20 forKey:v21];
  }

  objc_sync_exit(v17);
}

- (void)setBundleIDs:(id)a3 vendorName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_appsDataInternal;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    [v9 setVendorName:v7];
  }

  else
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SAAppSizerResults setBundleIDs:vendorName:];
    }
  }

  objc_sync_exit(v8);
}

- (unint64_t)getPhySizeForAppSet:(id)a3
{
  v4 = a3;
  v5 = self->_appsDataInternal;
  objc_sync_enter(v5);
  v6 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v4];
  v7 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v6];
  v8 = [v7 physicalSize];

  objc_sync_exit(v5);
  return v8;
}

- (void)updateBundleIDs:(id)a3 withAppSize:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_appsDataInternal;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v9];
  if (v8)
  {
    [v8 setFixedSize:{objc_msgSend(v8, "fixedSize") + objc_msgSend(v6, "fixedSize")}];
    [v8 setDataSize:{objc_msgSend(v8, "dataSize") + objc_msgSend(v6, "dataSize")}];
    [v8 setCloneSize:{objc_msgSend(v8, "cloneSize") + objc_msgSend(v6, "cloneSize")}];
    [v8 setPurgeableSize:{objc_msgSend(v8, "purgeableSize") + objc_msgSend(v6, "purgeableSize")}];
    [v8 setPhysicalSize:{objc_msgSend(v8, "physicalSize") + objc_msgSend(v6, "physicalSize")}];
    [v8 setCloneFixUpSize:{objc_msgSend(v8, "cloneFixUpSize") + objc_msgSend(v6, "cloneFixUpSize")}];
    [v8 setAppCacheSize:{objc_msgSend(v8, "appCacheSize") + objc_msgSend(v6, "appCacheSize")}];
    [v8 setCacheDeletePluginSize:{objc_msgSend(v8, "cacheDeletePluginSize") + objc_msgSend(v6, "cacheDeletePluginSize")}];
  }

  else
  {
    [(NSMutableDictionary *)self->_appsDataInternal setObject:v6 forKey:v9];
  }

  objc_sync_exit(v7);
}

- (void)accountSUPurgeableFor:(id)a3 purgeableSize:(unint64_t)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:?];
  v7 = v6;
  if (v6)
  {
    [v6 setDataSize:{objc_msgSend(v6, "dataSize") + a4}];
    [v7 setPurgeableSize:{objc_msgSend(v7, "purgeableSize") - a4}];
  }

  else
  {
    [(SAAppSizerResults *)self updateHiddenApp:v8 withSUPurgeableSize:a4];
  }
}

- (void)accountPurgeableTagsFor:(id)a3 purgeableTagsSize:(unint64_t)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:?];
  v7 = v6;
  if (v6)
  {
    [v6 setDataSize:{objc_msgSend(v6, "dataSize") - a4}];
    [v7 setPurgeableSize:{objc_msgSend(v7, "purgeableSize") + a4}];
  }

  else
  {
    [(SAAppSizerResults *)self updateHiddenApp:v8 withPurgeableTagsSize:a4];
  }
}

- (void)updateHiddenApp:(id)a3 withSUPurgeableSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_hiddenAppsData objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setDataSize:{objc_msgSend(v7, "dataSize") + a4}];
    [v8 setPurgeableSize:{objc_msgSend(v8, "purgeableSize") - a4}];
  }

  else
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SAAppSizerResults updateHiddenApp:withSUPurgeableSize:];
    }
  }

  v10 = [(NSDictionary *)self->_systemDataDetails objectForKey:v6];
  systemDataDetails = self->_systemDataDetails;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") + a4}];
  [(NSDictionary *)systemDataDetails setValue:v12 forKey:v6];
}

- (void)updateHiddenApp:(id)a3 withPurgeableTagsSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_hiddenAppsData objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setDataSize:{objc_msgSend(v7, "dataSize") - a4}];
    [v8 setPurgeableSize:{objc_msgSend(v8, "purgeableSize") + a4}];
  }

  else
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SAAppSizerResults updateHiddenApp:withPurgeableTagsSize:];
    }
  }

  v10 = [(NSDictionary *)self->_systemDataDetails objectForKey:v6];
  systemDataDetails = self->_systemDataDetails;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") - a4}];
  [(NSDictionary *)systemDataDetails setValue:v12 forKey:v6];
}

- (id)mergeAppSet:(id)a3 withAppSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 allObjects];
  v19 = [v8 mutableCopy];

  v9 = [v6 allObjects];
  [v19 addObjectsFromArray:v9];

  v18 = [MEMORY[0x277CBEB98] setWithArray:v19];
  v16 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v7];

  v15 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v6];

  v17 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v18];
  v10 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v16];
  v11 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v15];
  v12 = +[SAAppSize newWithFixedSize:dataSize:cloneSize:purgeableSize:cloneFixUpSize:physicalSize:appCacheSize:CDPluginSize:](SAAppSize, "newWithFixedSize:dataSize:cloneSize:purgeableSize:cloneFixUpSize:physicalSize:appCacheSize:CDPluginSize:", [v11 fixedSize] + objc_msgSend(v10, "fixedSize"), objc_msgSend(v11, "dataSize") + objc_msgSend(v10, "dataSize"), objc_msgSend(v11, "cloneSize") + objc_msgSend(v10, "cloneSize"), objc_msgSend(v11, "purgeableSize") + objc_msgSend(v10, "purgeableSize"), objc_msgSend(v11, "cloneFixUpSize") + objc_msgSend(v10, "cloneFixUpSize"), objc_msgSend(v11, "physicalSize") + objc_msgSend(v10, "physicalSize"), objc_msgSend(v11, "appCacheSize") + objc_msgSend(v10, "appCacheSize"), objc_msgSend(v11, "cacheDeletePluginSize") + objc_msgSend(v10, "cacheDeletePluginSize"));
  v13 = [v10 vendorName];
  [v12 setVendorName:v13];

  [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v16];
  [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v15];
  [(NSMutableDictionary *)self->_appsDataInternal setObject:v12 forKey:v17];

  return v18;
}

- (void)updateSystemDataDetailsWith:(id)a3 andSize:(unint64_t)a4
{
  v10 = a3;
  v6 = self->_systemDataDetails;
  objc_sync_enter(v6);
  v7 = [(NSDictionary *)self->_systemDataDetails objectForKey:v10];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue") + a4}];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  }

  [(NSDictionary *)self->_systemDataDetails setValue:v9 forKey:v10];

  objc_sync_exit(v6);
}

- (void)enumerateAppsDataUsingBlock:(id)a3
{
  v4 = a3;
  appsDataInternal = self->_appsDataInternal;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SAAppSizerResults_enumerateAppsDataUsingBlock___block_invoke;
  v7[3] = &unk_279CD6EF8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)appsDataInternal enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)addToSystemDetails:(unint64_t)a3 key:(id)a4
{
  v11 = a4;
  v6 = [(SAAppSizerResults *)self systemDetails];
  objc_sync_enter(v6);
  v7 = [(SAAppSizerResults *)self systemDetails];
  v8 = [v7 objectForKey:v11];

  if (v8)
  {
    a3 += [v8 unsignedLongLongValue];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];

  v10 = [(SAAppSizerResults *)self systemDetails];
  [v10 setValue:v9 forKey:v11];

  objc_sync_exit(v6);
}

- (void)print
{
  v2 = self;
  v51[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v50 = 0;
  *(v51 + 6) = 0;
  v51[0] = 0;
  ctime_r(&self->_time, __s);
  __s[strlen(__s) - 1] = 0;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [@"time" UTF8String];
    v5 = [@"diskUsed" UTF8String];
    diskCapacity = v2->_diskCapacity;
    v7 = [@"diskUsed" UTF8String];
    diskUsed = v2->_diskUsed;
    *buf = 136316418;
    v38 = v4;
    v39 = 2080;
    v40 = __s;
    v41 = 2080;
    v42 = v5;
    v43 = 2048;
    v44 = diskCapacity;
    v45 = 2080;
    v46 = v7;
    v47 = 2048;
    v48 = diskUsed;
    _os_log_impl(&dword_26B26B000, v3, OS_LOG_TYPE_DEFAULT, "%s: %s\n%s: %llu\n%s: %llu\napps data:\n", buf, 0x3Eu);
  }

  appsDataInternal = v2->_appsDataInternal;
  if (appsDataInternal)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = appsDataInternal;
    v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v33;
      *&v11 = 136316418;
      v29 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [(SAAppSizerResults *)v2 convertBundlesSetToBundlesKey:v15, v29];
          v17 = [(NSMutableDictionary *)v2->_appsDataInternal objectForKeyedSubscript:v16];
          v18 = SALog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v15 count];
            v20 = "app";
            if (v19 > 1)
            {
              v20 = "apps";
            }

            v31 = v20;
            v21 = [v17 fixedSize];
            v22 = [v17 dataSize];
            v23 = v2;
            v24 = v12;
            v25 = v13;
            v26 = [v17 cloneSize];
            v27 = [v17 purgeableSize];
            *buf = v29;
            v38 = v31;
            v39 = 2112;
            v40 = v16;
            v41 = 2048;
            v42 = v21;
            v43 = 2048;
            v44 = v22;
            v45 = 2048;
            v46 = v26;
            v13 = v25;
            v12 = v24;
            v2 = v23;
            v47 = 2048;
            v48 = v27;
            _os_log_impl(&dword_26B26B000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@\nfixed size: %llu\ndata size: %llu\nclone size: %llu\npurgeable size: %llu\n\n", buf, 0x3Eu);
          }
        }

        v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateBundleIDs:(id)a3 withDataSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_appsDataInternal objectForKey:v6];
  v8 = SALog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      [SAAppSizerResults updateBundleIDs:withDataSize:];
    }
  }

  else
  {
    if (v9)
    {
      [SAAppSizerResults updateBundleIDs:withDataSize:];
    }

    v7 = objc_opt_new();
  }

  [v7 setDataSize:{objc_msgSend(v7, "dataSize") + a4}];
  [(NSMutableDictionary *)self->_appsDataInternal setObject:v7 forKey:v6];
}

- (void)removeBundleIDs:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:?];
  }
}

- (void)zeroSizeAppsFiltering
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_appsDataInternal allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(NSMutableDictionary *)self->_appsDataInternal objectForKeyedSubscript:v8];
        if (![v10 dataSize] && !objc_msgSend(v10, "fixedSize"))
        {
          v11 = SALog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v18 = v8;
            _os_log_debug_impl(&dword_26B26B000, v11, OS_LOG_TYPE_DEBUG, "Bundle set %@ totalSize is 0", buf, 0xCu);
          }

          [(NSMutableArray *)self->_zeroSizeApps addObject:v8];
          [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v8];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)postProcessFilteringWithAppPathList:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableDictionary *)self->_appsDataInternal allKeys];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v5 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v5)
  {
    v7 = v5;
    v44 = 0;
    v8 = *v53;
    *&v6 = 138412290;
    v39 = v6;
    v41 = v4;
    v45 = *v53;
    while (1)
    {
      v9 = 0;
      v46 = v7;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [(SAAppSizerResults *)self convertBundlesKeyToBundlesSet:v10];
        if ([v12 count] != 1)
        {
          goto LABEL_11;
        }

        v13 = [v12 anyObject];
        if (([v13 isEqual:@"com.apple.fakeapp.SystemData"] & 1) == 0 && (objc_msgSend(v13, "isEqual:", @"com.apple.fakeapp.System") & 1) == 0 && (objc_msgSend(v13, "isEqual:", @"com.apple.fakeapp.SoftwareUpdate") & 1) == 0)
        {

LABEL_11:
          v13 = [(NSMutableDictionary *)self->_appsDataInternal objectForKeyedSubscript:v10, v39];
          if (!v13)
          {
            goto LABEL_46;
          }

          if ([v12 count] < 2)
          {
            goto LABEL_25;
          }

          if ([v12 containsObject:@"com.apple.FileProvider.LocalStorage"])
          {
            v14 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.FileProvider.LocalStorage"];
            v15 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v14];
            v16 = SALog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v57 = v12;
              v58 = 2112;
              v59 = v14;
              _os_log_debug_impl(&dword_26B26B000, v16, OS_LOG_TYPE_DEBUG, "Assign to LocalStorage: bundleID set %@ belongs to %@", buf, 0x16u);
            }

            [(SAAppSizerResults *)self updateBundleIDs:v15 withAppSize:v13];
            [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v10];
            appSizeBreakdownList = self->_appSizeBreakdownList;
            if (appSizeBreakdownList)
            {
              [(SAAppSizeBreakdownList *)appSizeBreakdownList updateBundleIDs:v10 newIDs:v15];
            }

            v18 = v14;
            v19 = v18;
            goto LABEL_45;
          }

          if ([v12 containsObject:@"com.apple.Bridge"])
          {
            v20 = [MEMORY[0x277CBEB58] setWithSet:v12];
            [v20 removeObject:@"com.apple.Bridge"];
            v21 = [MEMORY[0x277CBEB98] setWithSet:v20];
            v22 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v21];
            v23 = SALog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v57 = v12;
              v58 = 2112;
              v59 = v21;
              _os_log_debug_impl(&dword_26B26B000, v23, OS_LOG_TYPE_DEBUG, "Remove watch from bundleID set %@ changed to %@", buf, 0x16u);
            }

            [(SAAppSizerResults *)self updateBundleIDs:v22 withAppSize:v13];
            [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v10];
            v24 = self->_appSizeBreakdownList;
            if (v24)
            {
              [(SAAppSizeBreakdownList *)v24 updateBundleIDs:v10 newIDs:v22];
            }

            v25 = v21;

            v47 = v25;
            v19 = v25;
            v4 = v41;
          }

          else
          {
LABEL_25:
            v47 = 0;
            v19 = v12;
          }

          v26 = [MEMORY[0x277CBEB58] setWithSet:v19];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __57__SAAppSizerResults_postProcessFilteringWithAppPathList___block_invoke;
          v49[3] = &unk_279CD6F20;
          v50 = v4;
          v15 = v26;
          v51 = v15;
          [v19 enumerateObjectsUsingBlock:v49];
          v27 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v19];
          if ([v15 count])
          {
            v28 = [v15 count];
            if (v28 == [v19 count])
            {
              v18 = v47;
LABEL_44:

              v12 = v50;
LABEL_45:
              v8 = v45;

              v12 = v19;
              v7 = v46;
              goto LABEL_46;
            }

            v33 = SALog();
            v18 = v47;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v57 = v19;
              v58 = 2112;
              v59 = v15;
              _os_log_debug_impl(&dword_26B26B000, v33, OS_LOG_TYPE_DEBUG, "Remove hidden: Replacing bundleID set %@ with %@", buf, 0x16u);
            }

            v30 = [(SAAppSizerResults *)self convertBundlesSetToBundlesKey:v15];
            [(SAAppSizerResults *)self updateBundleIDs:v30 withAppSize:v13];
            [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v27];
            v34 = self->_appSizeBreakdownList;
            if (v34)
            {
              [(SAAppSizeBreakdownList *)v34 updateBundleIDs:v27 newIDs:v30];
            }
          }

          else
          {
            v29 = [(NSMutableDictionary *)self->_appsDataInternal objectForKeyedSubscript:v27];
            v30 = v29;
            if (v29)
            {
              v43 = [v29 dataSize];
              v42 = [v30 fixedSize];
              -[SAAppSizerResults updateSystemDataDetailsWith:andSize:](self, "updateSystemDataDetailsWith:andSize:", v27, [v30 fixedSize] + objc_msgSend(v30, "dataSize"));
              v31 = SALog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v40 = [v30 dataSize];
                v36 = [v30 fixedSize];
                *buf = 134218498;
                v57 = v40;
                v58 = 2048;
                v59 = v36;
                v60 = 2112;
                v61 = v19;
                _os_log_debug_impl(&dword_26B26B000, v31, OS_LOG_TYPE_DEBUG, "Remove hidden: dataSize %llu and fixedSize %llu for bundleID set %@", buf, 0x20u);
              }

              v44 += v43 + v42;

              [(NSMutableDictionary *)self->_appsDataInternal removeObjectForKey:v27];
              [(NSMutableDictionary *)self->_hiddenAppsData setObject:v30 forKey:v27];
              v32 = self->_appSizeBreakdownList;
              if (v32)
              {
                [(SAAppSizeBreakdownList *)v32 removeBundleIDs:v10];
              }

              v4 = v41;
            }

            else
            {
              v35 = SALog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = v39;
                v57 = v19;
                _os_log_error_impl(&dword_26B26B000, v35, OS_LOG_TYPE_ERROR, "filteredData is nil for %@", buf, 0xCu);
              }
            }

            v18 = v47;
          }

          goto LABEL_44;
        }

LABEL_46:

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (!v7)
      {
        goto LABEL_50;
      }
    }
  }

  v44 = 0;
LABEL_50:

  v37 = *MEMORY[0x277D85DE8];
  return v44;
}

void __57__SAAppSizerResults_postProcessFilteringWithAppPathList___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) appPathList];
  v4 = [v3 objectForKeyedSubscript:v8];

  if (!v4 || ([*(a1 + 32) appPathList], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", v8), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUserVisible"), v6, v5, (v7 & 1) == 0))
  {
    [*(a1 + 40) removeObject:v8];
  }
}

- (void)postProcessMerging
{
  v2 = self;
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_appsDataInternal allKeys];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:100];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v25 = v2;
    v26 = v4;
    v27 = *v32;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [(NSMutableDictionary *)v2->_appsDataInternal objectForKeyedSubscript:v9];
        v12 = [(SAAppSizerResults *)v2 convertBundlesKeyToBundlesSet:v9];
        if ([v12 count] >= 2)
        {
          v13 = [v11 vendorName];
          if (v13)
          {
            v14 = [v4 objectForKeyedSubscript:v13];

            if (v14)
            {
              v28 = v10;
              v15 = [v4 objectForKeyedSubscript:v13];
              v16 = [SAAppSizerResults mergeAppSet:v2 withAppSet:"mergeAppSet:withAppSet:"];
              v17 = SALog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v36 = v12;
                _os_log_debug_impl(&dword_26B26B000, v17, OS_LOG_TYPE_DEBUG, "Merging %@", buf, 0xCu);
              }

              v18 = SALog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v36 = v15;
                _os_log_debug_impl(&dword_26B26B000, v18, OS_LOG_TYPE_DEBUG, "and %@", buf, 0xCu);
              }

              v19 = SALog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v36 = v16;
                _os_log_debug_impl(&dword_26B26B000, v19, OS_LOG_TYPE_DEBUG, "to %@", buf, 0xCu);
              }

              v20 = SALog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v36 = v13;
                _os_log_debug_impl(&dword_26B26B000, v20, OS_LOG_TYPE_DEBUG, "for vendor %@", buf, 0xCu);
              }

              [v4 setObject:v16 forKeyedSubscript:v13];
              appSizeBreakdownList = v2->_appSizeBreakdownList;
              if (appSizeBreakdownList)
              {
                v22 = [(SAAppSizerResults *)v2 convertBundlesSetToBundlesKey:v15];
                v23 = [(SAAppSizerResults *)v2 convertBundlesSetToBundlesKey:v16];
                [(SAAppSizeBreakdownList *)appSizeBreakdownList mergeBundleIDs:v9 withBundleIDs:v22 newBundleIDs:v23];

                v2 = v25;
                v4 = v26;
              }

              v7 = v27;
              v10 = v28;
            }

            else
            {
              [v4 setObject:v12 forKeyedSubscript:v13];
              v7 = v27;
            }
          }

          v6 = v29;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (unsigned)initDiskUsedAndCapacity
{
  self->_diskCapacity = +[SASupport getDiskCapacity];
  p_diskCapacity = &self->_diskCapacity;
  self->_diskUsed = +[SASupport getDiskUsed];
  p_diskUsed = &self->_diskUsed;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SAAppSizerResults *)p_diskUsed initDiskUsedAndCapacity];
  }

  return 5;
}

- (void)collectPathSizeInfo:(id)a3 info:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SAAppSizerResults *)self pathsList];
  objc_sync_enter(v7);
  v8 = [(SAAppSizerResults *)self pathsList];
  [v8 setObject:v6 forKey:v9];

  objc_sync_exit(v7);
}

- (void)encodeWithCoder:(id)a3
{
  time = self->_time;
  v5 = a3;
  [v5 encodeInteger:time forKey:@"time"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeInt64:self->_diskCapacity forKey:@"diskCapacity"];
  [v5 encodeInt64:self->_diskUsed forKey:@"diskUsed"];
  [v5 encodeInt64:self->_totalCDAvailable forKey:@"totalCDAvailable"];
  [v5 encodeInt64:self->_totalCDPluginsSize forKey:@"totalCDPluginsSize"];
  [v5 encodeInt64:self->_totalSAFPluginsSize forKey:@"totalSAFPluginsSize"];
  [v5 encodeInt64:self->_totalSAFAppsCacheSize forKey:@"totalSAFAppsCacheSize"];
  [v5 encodeInt64:self->_internalFlags forKey:@"internalFlags"];
  [v5 encodeInt64:self->_totalCDAppsCacheSize forKey:@"totalCDAppsCacheSize"];
  [v5 encodeInt64:self->_totalPurgeableClones forKey:@"totalPurgeableClones"];
  [v5 encodeInt64:self->_totalPurgeableDataSize forKey:@"totalPurgeableDataSize"];
  [v5 encodeInt64:self->_rawSystemDataSize forKey:@"rawSystemDataSize"];
  [v5 encodeInt64:self->_rawDiskedUsed forKey:@"rawDiskedUsed"];
  [v5 encodeInt64:self->_APFSDiskUsed forKey:@"APFSDiskUsed"];
  [v5 encodeObject:self->_appData forKey:@"appData"];
  [v5 encodeObject:self->_reportedTelemetry forKey:@"reportedTelemetry"];
  [v5 encodeObject:self->_pathsList forKey:@"pathsList"];
  [v5 encodeObject:self->_attributionTags forKey:@"attributionTags"];
  [v5 encodeObject:self->_clonesInfo forKey:@"clonesInfo"];
  [v5 encodeObject:self->_FSPurgeableData forKey:@"FSPurgeableData"];
  [v5 encodeObject:self->_systemDataDetails forKey:@"systemDataDetails"];
  [v5 encodeObject:self->_systemDetails forKey:@"systemDetails"];
  [v5 encodeObject:self->_hiddenAppsData forKey:@"hiddenAppsData"];
  [v5 encodeObject:self->_appsList forKey:@"appsList"];
  [v5 encodeObject:self->_zeroSizeApps forKey:@"zeroSizeApps"];
  [v5 encodeObject:self->_appsInfo forKey:@"appsInfo"];
}

- (SAAppSizerResults)initWithCoder:(id)a3
{
  v4 = a3;
  v86.receiver = self;
  v86.super_class = SAAppSizerResults;
  v5 = [(SAAppSizerResults *)&v86 init];
  if (v5)
  {
    v5->_time = [v4 decodeIntegerForKey:@"time"];
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_diskCapacity = [v4 decodeInt64ForKey:@"diskCapacity"];
    v5->_diskUsed = [v4 decodeInt64ForKey:@"diskUsed"];
    v5->_totalCDAvailable = [v4 decodeInt64ForKey:@"totalCDAvailable"];
    v5->_totalCDPluginsSize = [v4 decodeInt64ForKey:@"totalCDPluginsSize"];
    v5->_totalSAFPluginsSize = [v4 decodeInt64ForKey:@"totalSAFPluginsSize"];
    v5->_totalCDAppsCacheSize = [v4 decodeInt64ForKey:@"totalCDAppsCacheSize"];
    v5->_totalSAFAppsCacheSize = [v4 decodeInt64ForKey:@"totalSAFAppsCacheSize"];
    v5->_totalPurgeableClones = [v4 decodeInt64ForKey:@"totalPurgeableClones"];
    v5->_totalPurgeableDataSize = [v4 decodeInt64ForKey:@"totalPurgeableDataSize"];
    v5->_rawSystemDataSize = [v4 decodeInt64ForKey:@"rawSystemDataSize"];
    v5->_rawDiskedUsed = [v4 decodeInt64ForKey:@"rawDiskedUsed"];
    v5->_internalFlags = [v4 decodeInt64ForKey:@"internalFlags"];
    v5->_APFSDiskUsed = [v4 decodeInt64ForKey:@"APFSDiskUsed"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"appData"];
    appData = v5->_appData;
    v5->_appData = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"reportedTelemetry"];
    reportedTelemetry = v5->_reportedTelemetry;
    v5->_reportedTelemetry = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"pathsList"];
    pathsList = v5->_pathsList;
    v5->_pathsList = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v27 setWithObjects:{v28, v29, v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"attributionTags"];
    attributionTags = v5->_attributionTags;
    v5->_attributionTags = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v34 setWithObjects:{v35, v36, v37, v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"clonesInfo"];
    clonesInfo = v5->_clonesInfo;
    v5->_clonesInfo = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v42 setWithObjects:{v43, v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"FSPurgeableData"];
    FSPurgeableData = v5->_FSPurgeableData;
    v5->_FSPurgeableData = v46;

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
    v52 = [v4 decodeObjectOfClasses:v51 forKey:@"systemDataDetails"];
    systemDataDetails = v5->_systemDataDetails;
    v5->_systemDataDetails = v52;

    v54 = MEMORY[0x277CBEB98];
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = [v54 setWithObjects:{v55, v56, objc_opt_class(), 0}];
    v58 = [v4 decodeObjectOfClasses:v57 forKey:@"systemDetails"];
    systemDetails = v5->_systemDetails;
    v5->_systemDetails = v58;

    v60 = MEMORY[0x277CBEB98];
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = objc_opt_class();
    v64 = [v60 setWithObjects:{v61, v62, v63, objc_opt_class(), 0}];
    v65 = [v4 decodeObjectOfClasses:v64 forKey:@"hiddenAppsData"];
    hiddenAppsData = v5->_hiddenAppsData;
    v5->_hiddenAppsData = v65;

    v67 = MEMORY[0x277CBEB98];
    v68 = objc_opt_class();
    v69 = objc_opt_class();
    v70 = [v67 setWithObjects:{v68, v69, objc_opt_class(), 0}];
    v71 = [v4 decodeObjectOfClasses:v70 forKey:@"appsList"];
    appsList = v5->_appsList;
    v5->_appsList = v71;

    v73 = MEMORY[0x277CBEB98];
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = [v73 setWithObjects:{v74, v75, objc_opt_class(), 0}];
    v77 = [v4 decodeObjectOfClasses:v76 forKey:@"zeroSizeApps"];
    zeroSizeApps = v5->_zeroSizeApps;
    v5->_zeroSizeApps = v77;

    v79 = MEMORY[0x277CBEB98];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v82 = [v79 setWithObjects:{v80, v81, objc_opt_class(), 0}];
    v83 = [v4 decodeObjectOfClasses:v82 forKey:@"appsInfo"];
    appsInfo = v5->_appsInfo;
    v5->_appsInfo = v83;
  }

  return v5;
}

- (void)setBundleIDs:vendorName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateHiddenApp:withSUPurgeableSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateHiddenApp:withPurgeableTagsSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateBundleIDs:withDataSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateBundleIDs:withDataSize:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheSize:cacheIsPurgeable:bundleIDs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCacheSize:cacheIsPurgeable:bundleIDs:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initDiskUsedAndCapacity
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end