@interface WCRBloomFilter
+ (BOOL)_shouldBlock:(id)block withBloomFilter:(id)filter useCipherML:(BOOL)l;
+ (id)_matchingStringsForDomain:(id)domain;
+ (id)_matchingStringsForURL:(id)l;
+ (id)_nameOfNewestFile:(id)file;
+ (void)reportAnalyticsBloomFilterVersion:(id)version withAppleAllowListVersion:(id)listVersion;
- (BOOL)shouldBlock:(id)block;
- (WCRBloomFilter)init;
- (id)initFromFile:(id)file;
- (void)_loadFilterResourcesFromLocalFallback;
- (void)_loadFilterResourcesFromMobileAsset;
- (void)_loadFilterResourcesFromMobileAsset:(id)asset;
- (void)_loadFilterResourcesWithMobileAssetPath:(id)path;
@end

@implementation WCRBloomFilter

- (WCRBloomFilter)init
{
  v13.receiver = self;
  v13.super_class = WCRBloomFilter;
  v2 = [(WCRBloomFilter *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create([@"com.apple.WebContentRestrictions.reloadAssetsQueue" UTF8String], 0);
    reloadAssetQueue = v2->_reloadAssetQueue;
    v2->_reloadAssetQueue = v3;

    v2->_useCipherML = 1;
    v5 = objc_opt_new();
    autoAsset = v2->_autoAsset;
    v2->_autoAsset = v5;

    [(WCRBloomFilter *)v2 _loadFilterResourcesWithMobileAssetPath:0];
    [(WCRBloomFilter *)v2 _loadFilterResourcesFromMobileAsset];
    [(WCRAutoAssetClient *)v2->_autoAsset createInterestInAsset];
    objc_initWeak(&location, v2);
    v7 = v2->_autoAsset;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __22__WCRBloomFilter_init__block_invoke;
    v9[3] = &unk_279E7F1E0;
    v10 = v2;
    objc_copyWeak(&v11, &location);
    [(WCRAutoAssetClient *)v7 registerForAssetChangedNotificationsWithBlock:v9];
    if (v2->_useCipherML)
    {
      +[WCRCipherMLClient activateCipherML];
    }

    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__WCRBloomFilter_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reloadAssetQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __22__WCRBloomFilter_init__block_invoke_2;
  v3[3] = &unk_279E7F1B8;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);

  objc_destroyWeak(&v5);
}

uint64_t __22__WCRBloomFilter_init__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"--- Received Download Notification ---"];
  [WCRLogging log:v2 withType:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained autoAsset];
  [v4 stopUsingLocalAsset];

  v5 = *(a1 + 32);

  return [v5 _loadFilterResourcesFromMobileAsset];
}

- (id)initFromFile:(id)file
{
  fileCopy = file;
  v12.receiver = self;
  v12.super_class = WCRBloomFilter;
  v6 = [(WCRBloomFilter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localPath, file);
    v8 = [[_TtC22WebContentRestrictions15BloomFilterShim alloc] initWithPath:v7->_localPath];
    bloomFilter = v7->_bloomFilter;
    v7->_bloomFilter = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initializing bloom filter from file %@", v7->_localPath];
    [WCRLogging log:v10 withType:0];
  }

  return v7;
}

- (void)_loadFilterResourcesFromMobileAsset
{
  autoAsset = [(WCRBloomFilter *)self autoAsset];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__WCRBloomFilter__loadFilterResourcesFromMobileAsset__block_invoke;
  v4[3] = &unk_279E7F230;
  v4[4] = self;
  [autoAsset startUsingLocalAsset:v4];
}

void __53__WCRBloomFilter__loadFilterResourcesFromMobileAsset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) reloadAssetQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__WCRBloomFilter__loadFilterResourcesFromMobileAsset__block_invoke_2;
  v6[3] = &unk_279E7F208;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_loadFilterResourcesWithMobileAssetPath:(id)path
{
  if (path)
  {
    [(WCRBloomFilter *)self _loadFilterResourcesFromMobileAsset:?];
  }

  [(WCRBloomFilter *)self _loadFilterResourcesFromLocalFallback];
  v4 = objc_opt_class();
  localPath = [(WCRBloomFilter *)self localPath];
  lastPathComponent = [localPath lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  appleAllowList = [(WCRBloomFilter *)self appleAllowList];
  localPath2 = [appleAllowList localPath];
  lastPathComponent2 = [localPath2 lastPathComponent];
  stringByDeletingPathExtension2 = [lastPathComponent2 stringByDeletingPathExtension];
  [v4 reportAnalyticsBloomFilterVersion:stringByDeletingPathExtension withAppleAllowListVersion:stringByDeletingPathExtension2];
}

- (void)_loadFilterResourcesFromLocalFallback
{
  bloomFilter = [(WCRBloomFilter *)self bloomFilter];

  if (!bloomFilter)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading fallback filter %@", @"WCRFilter-2025-04-07.plist"];
    [WCRLogging log:v4 withType:0];

    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentRestrictions.framework"];
    stringByDeletingPathExtension = [@"WCRFilter-2025-04-07.plist" stringByDeletingPathExtension];
    pathExtension = [@"WCRFilter-2025-04-07.plist" pathExtension];
    v8 = [v5 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

    [(WCRBloomFilter *)self setLocalPath:v8];
    v9 = [_TtC22WebContentRestrictions15BloomFilterShim alloc];
    localPath = [(WCRBloomFilter *)self localPath];
    v11 = [(BloomFilterShim *)v9 initWithPath:localPath];
    [(WCRBloomFilter *)self setBloomFilter:v11];

    bloomFilter2 = [(WCRBloomFilter *)self bloomFilter];

    if (bloomFilter2)
    {
      v13 = MEMORY[0x277CCACA8];
      localPath2 = [(WCRBloomFilter *)self localPath];
      v15 = [v13 stringWithFormat:@"Loaded fallback filter at path %@", localPath2];
      [WCRLogging log:v15 withType:0];
    }
  }

  appleAllowList = [(WCRBloomFilter *)self appleAllowList];

  if (!appleAllowList)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading fallback Apple allow list %@", @"WCRAppleAllowList-2025-04-07.plist"];
    [WCRLogging log:v17 withType:0];

    v18 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentRestrictions.framework"];
    stringByDeletingPathExtension2 = [@"WCRAppleAllowList-2025-04-07.plist" stringByDeletingPathExtension];
    pathExtension2 = [@"WCRAppleAllowList-2025-04-07.plist" pathExtension];
    v24 = [v18 pathForResource:stringByDeletingPathExtension2 ofType:pathExtension2];

    v21 = [[WCRAppleAllowList alloc] initFromFile:v24];
    [(WCRBloomFilter *)self setAppleAllowList:v21];

    appleAllowList2 = [(WCRBloomFilter *)self appleAllowList];

    if (appleAllowList2)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loaded fallback Apple allow list at path %@", v24];
      [WCRLogging log:v23 withType:0];
    }
  }
}

- (void)_loadFilterResourcesFromMobileAsset:(id)asset
{
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:assetCopy])
  {
    assetCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Will use MobileAsset bundle path: %@", assetCopy];
    [WCRLogging log:assetCopy withType:2];

    assetCopy2 = [assetCopy stringByAppendingPathComponent:@"Bloom Filters"];
    v7 = [defaultManager contentsOfDirectoryAtPath:assetCopy2 error:0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content of bloom filters dir: %@", v7];
    [WCRLogging log:v8 withType:2];

    v23 = v7;
    v9 = [objc_opt_class() _nameOfNewestFile:v7];
    v10 = [assetCopy2 stringByAppendingPathComponent:v9];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading bloom filter from MobileAsset bundle: %@", v10];
    [WCRLogging log:v11 withType:2];

    [(WCRBloomFilter *)self setLocalPath:v10];
    v12 = [[_TtC22WebContentRestrictions15BloomFilterShim alloc] initWithPath:v10];
    [(WCRBloomFilter *)self setBloomFilter:v12];

    bloomFilter = [(WCRBloomFilter *)self bloomFilter];

    if (bloomFilter)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loaded bloom filter at path %@", v10];
      [WCRLogging log:v14 withType:0];
    }

    v15 = [assetCopy stringByAppendingPathComponent:@"Apple Allow Lists"];
    v16 = [defaultManager contentsOfDirectoryAtPath:v15 error:0];
    v17 = [objc_opt_class() _nameOfNewestFile:v16];
    v18 = [v15 stringByAppendingPathComponent:v17];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading Apple allow list from MobileAsset bundle: %@", v18];
    [WCRLogging log:v19 withType:2];

    v20 = [[WCRAppleAllowList alloc] initFromFile:v18];
    [(WCRBloomFilter *)self setAppleAllowList:v20];

    appleAllowList = [(WCRBloomFilter *)self appleAllowList];

    if (appleAllowList)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loaded Apple allow list at path %@", v18];
      [WCRLogging log:v22 withType:0];
    }
  }

  else
  {
    assetCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"MobileAsset bundle doesn't exist at path: %@", assetCopy];
    [WCRLogging log:assetCopy2 withType:1];
  }
}

+ (id)_nameOfNewestFile:(id)file
{
  fileCopy = file;
  v4 = fileCopy;
  if (fileCopy && [fileCopy count])
  {
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global];
    lastObject = [v5 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (BOOL)shouldBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  bloomFilter = [(WCRBloomFilter *)self bloomFilter];
  LOBYTE(self) = [v5 _shouldBlock:blockCopy withBloomFilter:bloomFilter useCipherML:{-[WCRBloomFilter useCipherML](self, "useCipherML")}];

  return self;
}

+ (BOOL)_shouldBlock:(id)block withBloomFilter:(id)filter useCipherML:(BOOL)l
{
  lCopy = l;
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  filterCopy = filter;
  v9 = [objc_opt_class() _matchingStringsForURL:blockCopy];
  v10 = v9;
  if (v9)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v12)
    {
      v31 = lCopy;
      v32 = v10;
      v33 = blockCopy;
      v13 = *v36;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        v16 = [filterCopy contains:v15];
        v17 = __WCRDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138740227;
          v18 = @"Allowed";
          if (v16)
          {
            v18 = @"Blocked";
          }

          v40 = v15;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&dword_272D8F000, v17, OS_LOG_TYPE_DEFAULT, "%{sensitive}@ -> %@", buf, 0x16u);
        }

        if (v16)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          v19 = 0;
          blockCopy = v33;
          goto LABEL_29;
        }
      }

      v12 = v15;
      [objc_opt_class() reportAnalyticsBloomFilterBlocked];

      if (!v31)
      {
        v19 = 1;
        v10 = v32;
        blockCopy = v33;
        goto LABEL_31;
      }

      v34 = 0;
      v20 = [WCRCipherMLClient categoryForString:v12 withError:&v34];
      v21 = v34;
      v11 = v21;
      v22 = MEMORY[0x277CCACA8];
      blockCopy = v33;
      if (v20 || !v21)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"CipherML response: %@", v20];
        [WCRLogging log:v28 withType:0];

        v19 = [v20 integerValue] == 301 || objc_msgSend(v20, "integerValue") == 303 || objc_msgSend(v20, "integerValue") == 1505 || objc_msgSend(v20, "integerValue") == 501;
      }

      else
      {
        v23 = [v21 description];
        v24 = [v22 stringWithFormat:@"CipherML error: %s. Falling back to local filter verdict.", objc_msgSend(v23, "UTF8String")];
        v19 = 1;
        [WCRLogging log:v24 withType:1];
      }

LABEL_29:
      v10 = v32;
    }

    else
    {
      v19 = 0;
    }

LABEL_31:
  }

  else
  {
    scheme = [blockCopy scheme];

    v26 = @"Unknown format";
    if (!scheme)
    {
      v26 = @"Missing a scheme (e.g. https://)";
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to parse URL: %@", v26];
    [WCRLogging log:v27 withType:1];

    v19 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)_matchingStringsForDomain:(id)domain
{
  if (domain)
  {
    v3 = [domain componentsSeparatedByString:@"."];
    v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
    if ([v3 count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [v3 subarrayWithRange:{v6, objc_msgSend(v3, "count") + v5}];
        v8 = [v7 componentsJoinedByString:@"."];
        [v4 addObject:v8];

        ++v6;
        --v5;
      }

      while ([v3 count] > v6);
    }

    v9 = [v4 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_matchingStringsForURL:(id)l
{
  v56 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v5 = MEMORY[0x277CBEB58];
    pathComponents = [lCopy pathComponents];
    v7 = [v5 setWithCapacity:{objc_msgSend(pathComponents, "count")}];

    host = [v4 host];

    if (host)
    {
      v9 = objc_opt_class();
      host2 = [v4 host];
      v11 = [v9 _matchingStringsForDomain:host2];

      allObjects = [v11 allObjects];
      [v7 addObjectsFromArray:allObjects];

      host3 = [v4 host];
      v14 = [host3 hasPrefix:@"www."];
      host4 = [v4 host];
      v16 = host4;
      if (v14)
      {
        v17 = [host4 stringByReplacingOccurrencesOfString:@"www." withString:&stru_288271F70];

        v16 = v17;
      }

      if (v16)
      {
        v50 = v11;
        [v7 addObject:v16];
        v49 = v16;
        v18 = v16;
        host5 = [v4 host];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        pathComponents2 = [v4 pathComponents];
        v21 = [pathComponents2 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v52;
          do
          {
            v24 = 0;
            v25 = v18;
            v26 = host5;
            do
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(pathComponents2);
              }

              v27 = *(*(&v51 + 1) + 8 * v24);
              v18 = [v25 stringByAppendingPathComponent:v27];

              host5 = [v26 stringByAppendingPathComponent:v27];

              v28 = [v18 copy];
              [v7 addObject:v28];

              v29 = [host5 copy];
              [v7 addObject:v29];

              ++v24;
              v25 = v18;
              v26 = host5;
            }

            while (v22 != v24);
            v22 = [pathComponents2 countByEnumeratingWithState:&v51 objects:v55 count:16];
          }

          while (v22);
        }

        query = [v4 query];

        if (query)
        {
          v31 = MEMORY[0x277CCACA8];
          query2 = [v4 query];
          v33 = [v31 stringWithFormat:@"?%@", query2];

          v34 = [v18 stringByAppendingString:v33];

          v35 = [host5 stringByAppendingString:v33];

          v36 = [v34 copy];
          [v7 addObject:v36];

          v37 = [v35 copy];
          [v7 addObject:v37];

          v18 = v34;
          host5 = v35;
        }

        fragment = [v4 fragment];

        v16 = v49;
        if (fragment)
        {
          v39 = MEMORY[0x277CCACA8];
          fragment2 = [v4 fragment];
          v41 = [v39 stringWithFormat:@"#%@", fragment2];

          v42 = [v18 stringByAppendingString:v41];

          v43 = [host5 stringByAppendingString:v41];

          v44 = [v42 copy];
          [v7 addObject:v44];

          v45 = [v43 copy];
          [v7 addObject:v45];

          v18 = v42;
          host5 = v43;
        }

        v11 = v50;
        v46 = [v7 copy];
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

+ (void)reportAnalyticsBloomFilterVersion:(id)version withAppleAllowListVersion:(id)listVersion
{
  versionCopy = version;
  listVersionCopy = listVersion;
  v7 = listVersionCopy;
  if (versionCopy && listVersionCopy)
  {
    v9 = versionCopy;
    v10 = v7;
    AnalyticsSendEventLazy();
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Analytics: Filter versions were nil!"];
    [WCRLogging log:v8 withType:1];
  }
}

id __78__WCRBloomFilter_reportAnalyticsBloomFilterVersion_withAppleAllowListVersion___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"bloom_filter_version";
  v5[1] = @"apple_allowlist_version";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __51__WCRBloomFilter_reportAnalyticsBloomFilterBlocked__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"bloom_filter_verdict";
  v4[0] = @"Blocked";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

@end