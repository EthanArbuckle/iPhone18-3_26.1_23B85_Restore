@interface STStorageDataManager
+ (id)applicationRecords;
+ (id)computeBundleRemappings:(id)remappings;
+ (id)computeCategoriesForApps:(id)apps;
+ (id)getLocalAppId:(id)id foreignAppId:(id)appId;
+ (id)overridesFor:(id)for;
+ (id)sharedContainersFor:(id)for;
+ (id)updateAppsWithPrevious:(id)previous usageBundles:(id)bundles skipAppRecordBlock:(id)block;
+ (void)fixClonesInPhotosAndMessages:(id)messages;
@end

@implementation STStorageDataManager

+ (id)applicationRecords
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  allObjects = [v3 allObjects];
  [v2 addObjectsFromArray:allObjects];

  v5 = [MEMORY[0x277CC1E70] enumeratorWithOptions:64];
  allObjects2 = [v5 allObjects];
  [v2 addObjectsFromArray:allObjects2];

  return v2;
}

+ (id)sharedContainersFor:(id)for
{
  v32 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = forCopy;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        groupContainerURLs = [v6 groupContainerURLs];
        allKeys = [groupContainerURLs allKeys];
        bundleIdentifier = [v6 bundleIdentifier];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = allKeys;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [groupContainerURLs objectForKey:*(*(&v22 + 1) + 8 * j)];
              path = [v15 path];
              if ([path length])
              {
                AddToMultiDict(dictionary, path, bundleIdentifier);
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)computeCategoriesForApps:(id)apps
{
  v30 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v4 = objc_alloc_init(STMutableSizeDict);
  v24 = STKeyForCategory(0);
  v23 = STKeyForCategory(7u);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = appsCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        internalSizes = [v9 internalSizes];
        externalSizes = [v9 externalSizes];
        userVisible = [v9 userVisible];
        v13 = v24;
        if ((userVisible & 1) == 0)
        {
          v14 = v23;

          v13 = v14;
        }

        [(STMutableSizeDict *)v4 addSize:internalSizes toKey:v13];
        if (externalSizes)
        {
          v15 = [self overridesFor:v9];
          category = [v15 category];

          if ((category != 0) | userVisible & 1)
          {
            v17 = STKeyForCategory(category);
          }

          else
          {
            v17 = v23;
          }

          v18 = v17;
          [(STMutableSizeDict *)v4 addSize:externalSizes toKey:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)computeBundleRemappings:(id)remappings
{
  v33 = *MEMORY[0x277D85DE8];
  remappingsCopy = remappings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = remappingsCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        bundleIdentifier = [v8 bundleIdentifier];
        bundleIdentifier2 = [v8 bundleIdentifier];
        [dictionary setObject:bundleIdentifier forKeyedSubscript:bundleIdentifier2];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        counterpartIdentifiers = [v8 counterpartIdentifiers];
        v12 = [counterpartIdentifiers countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(counterpartIdentifiers);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              v17 = [dictionary objectForKeyedSubscript:v16];

              if (!v17)
              {
                bundleIdentifier3 = [v8 bundleIdentifier];
                [dictionary setObject:bundleIdentifier3 forKeyedSubscript:v16];
              }
            }

            v13 = [counterpartIdentifiers countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)overridesFor:(id)for
{
  forCopy = for;
  bundleIdentifier = [forCopy bundleIdentifier];
  v5 = [STAppOverrides overridesFor:bundleIdentifier];

  if (v5)
  {
    appRecord = v5;
  }

  else
  {
    appRecord = [forCopy appRecord];

    if (appRecord)
    {
      appRecord2 = [forCopy appRecord];
      appRecord = [STAppOverrides overridesForApplication:appRecord2];
    }
  }

  return appRecord;
}

+ (id)getLocalAppId:(id)id foreignAppId:(id)appId
{
  appIdCopy = appId;
  v6 = [id objectForKeyedSubscript:appIdCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = appIdCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)updateAppsWithPrevious:(id)previous usageBundles:(id)bundles skipAppRecordBlock:(id)block
{
  v288 = *MEMORY[0x277D85DE8];
  previousCopy = previous;
  bundlesCopy = bundles;
  blockCopy = block;
  v238 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v239 = previousCopy;
  if (previousCopy)
  {
    v249 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(previousCopy, "count")}];
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v9 = previousCopy;
    v10 = [v9 countByEnumeratingWithState:&v279 objects:v287 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v280;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v280 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v279 + 1) + 8 * i);
          bundleIdentifier = [v14 bundleIdentifier];
          [v249 setObject:v14 forKey:bundleIdentifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v279 objects:v287 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v249 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  applicationRecords = [objc_opt_class() applicationRecords];
  v17 = [STStorageDataManager computeBundleRemappings:applicationRecords];
  v247 = objc_opt_new();
  v237 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v275 = 0u;
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  allAppsWithUsageBundles = [bundlesCopy allAppsWithUsageBundles];
  v19 = [allAppsWithUsageBundles countByEnumeratingWithState:&v275 objects:v286 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v276;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v276 != v21)
        {
          objc_enumerationMutation(allAppsWithUsageBundles);
        }

        v23 = *(*(&v275 + 1) + 8 * j);
        v24 = [bundlesCopy usageBundleForIdentifier:v23];
        v25 = [STStorageDataManager getLocalAppId:v17 foreignAppId:v23];
        [v247 setObject:v24 forKeyedSubscript:v25];
      }

      v20 = [allAppsWithUsageBundles countByEnumeratingWithState:&v275 objects:v286 count:16];
    }

    while (v20);
  }

  v240 = v17;
  v241 = bundlesCopy;

  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  obj = applicationRecords;
  v26 = [obj countByEnumeratingWithState:&v271 objects:v285 count:16];
  v27 = blockCopy;
  if (v26)
  {
    v28 = v26;
    v29 = *v272;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v272 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v271 + 1) + 8 * k);
        if (!v27 || (v27[2](v27, *(*(&v271 + 1) + 8 * k)) & 1) == 0)
        {
          bundleIdentifier2 = [v31 bundleIdentifier];
          STLog(1, @"Listing app : %@", v33, v34, v35, v36, v37, v38, bundleIdentifier2);

          bundleIdentifier3 = [v31 bundleIdentifier];
          v40 = [v249 objectForKey:bundleIdentifier3];
          v41 = v40;
          if (!v40)
          {
            v42 = [STStorageApp alloc];
            v43 = [v247 objectForKey:bundleIdentifier3];
            v41 = [(STStorageApp *)v42 initWithAppRecord:v31 usageBundle:v43];

            v27 = blockCopy;
            v44 = [self overridesFor:v41];
            -[STStorageApp setForceVisible:](v41, "setForceVisible:", [v44 forceVisible]);
            -[STStorageApp setForceHidden:](v41, "setForceHidden:", [v44 forceHidden]);
          }

          [dictionary setObject:v41 forKey:bundleIdentifier3];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v271 objects:v285 count:16];
    }

    while (v28);
  }

  v45 = [v249 objectForKey:@"com.apple.fakeapp.System"];
  if (!v45)
  {
    v46 = [STStorageApp alloc];
    v47 = STNameForCategoryKey(@"CAT_SYSTEM");
    v45 = [(STStorageApp *)v46 initWithBundleIdentifier:@"com.apple.fakeapp.System" name:v47 vendorName:@"Apple Inc."];

    [(STStorageApp *)v45 setAppKind:1];
    [(STStorageApp *)v45 setForceHidden:1];
    v48 = [STSizeVector fixed:STSizeOfSystemVolume()];
    [(STStorageApp *)v45 setExternalSizes:v48];
  }

  appIdentifier = [(STStorageApp *)v45 appIdentifier];
  v236 = v45;
  [dictionary setObject:v45 forKey:appIdentifier];

  v231 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v50 = +[STStorageApp sizeOfPluginKitContainers];
  if (v50)
  {
    v51 = [v249 objectForKey:@"com.apple.fakeapp.PluginKit.hidden"];
    if (!v51)
    {
      v52 = [STStorageApp alloc];
      v53 = STStorageDataLocStr(@"App Plugins");
      v51 = [(STStorageApp *)v52 initWithBundleIdentifier:@"com.apple.fakeapp.PluginKit.hidden" name:v53 vendorName:@"Apple Inc."];

      [(STStorageApp *)v51 setAppKind:3];
      [(STStorageApp *)v51 setForceHidden:1];
    }

    [(STStorageApp *)v51 setExternalSizes:v50];
    appIdentifier2 = [(STStorageApp *)v51 appIdentifier];
    [dictionary setObject:v51 forKey:appIdentifier2];
  }

  v229 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [dictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_10];
  v55 = STGetCurrentMediaUsage();
  v56 = objc_alloc_init(STMutableSizeDict);
  v57 = +[STAppOverrides overrides];
  v233 = v55;
  v58 = STSelectMediaUsage(v55, v57);

  [(STMutableSizeDict *)v56 plusEquals:v58];
  v59 = +[STAppOverrides overrides];
  v60 = STComputeFSOverrides(v59);

  [(STMutableSizeDict *)v56 plusEquals:v60];
  v61 = +[STAppOverrides overrides];
  v62 = STComputeCacheDeleteOverrides(v61);

  [(STMutableSizeDict *)v56 plusEquals:v62];
  v63 = +[STAppOverrides overrides];
  v64 = STComputeUsageBundleData(v241, v63);

  v230 = v64;
  [(STMutableSizeDict *)v56 plusEquals:v64];
  v65 = STMessagesExternalDataSize();
  [(STMutableSizeDict *)v56 addSize:v65 toKey:@"com.apple.MobileSMS"];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LODWORD(v62) = [mEMORY[0x277D262A0] isiCloudDriveAllowed];

  if (!v62)
  {
    goto LABEL_50;
  }

  v67 = +[STStorageCacheDelete sharedMonitor];
  cacheDeleteDict = [v67 cacheDeleteDict];

  v69 = [cacheDeleteDict objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v70 = [cacheDeleteDict objectForKeyedSubscript:@"com.apple.bird.cache-delete"];
  v71 = [v69 objectForKeyedSubscript:@"com.apple.bird.cache-delete"];
  if (v70 | v71)
  {
    if (v70 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      STLog(3, @"'com.apple.bird.cache-delete' value must be an NSNumber.\ncacheDeleteDict value: %@", v72, v73, v74, v75, v76, v77, cacheDeleteDict);
      v78 = 1;
      if (!v71)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v78 = 0;
      if (!v71)
      {
LABEL_44:
        if ((v78 & 1) == 0)
        {
          v234 = cacheDeleteDict;
          v85 = [v249 objectForKey:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
          if (!v85)
          {
            v86 = [STStorageApp alloc];
            v87 = STStorageDataLocStr(@"ICLOUD_DRIVE");
            v85 = [(STStorageApp *)v86 initWithBundleIdentifier:@"com.apple.CloudDocs.iCloudDriveFileProvider" name:v87 vendorName:0];

            [(STStorageApp *)v85 setAppKind:3];
          }

          v88 = +[STSizeVector docsAndData:purgeable:](STSizeVector, "docsAndData:purgeable:", [v71 longLongValue], objc_msgSend(v70, "longLongValue"));
          [(STStorageApp *)v85 setExternalSizes:v88];

          STLog(1, @"Listing app container : %@", v89, v90, v91, v92, v93, v94, @"com.apple.CloudDocs.iCloudDriveFileProvider");
          [dictionary setObject:v85 forKey:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

          cacheDeleteDict = v234;
        }

        goto LABEL_49;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_44;
    }

    STLog(3, @"'com.apple.bird.cache-delete' value must be an NSNumber.\nCACHE_DELETE_ITEMIZED_NONPURGEABLE value: %@", v79, v80, v81, v82, v83, v84, v69);
  }

LABEL_49:

LABEL_50:
  v235 = v50;
  v95 = +[STFileProviderMonitor sharedMonitor];
  fpDomains = [v95 fpDomains];

  v97 = +[STAppOverrides overrides];
  v98 = STFileProviderExternalDataSize(fpDomains);
  [(STMutableSizeDict *)v56 plusEquals:v98];

  v232 = v56;
  v99 = [(STSizeDict *)v56 remapKeys:v240 removeMissing:0];
  v269[0] = MEMORY[0x277D85DD0];
  v269[1] = 3221225472;
  v269[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_2;
  v269[3] = &unk_279D1D480;
  v100 = dictionary;
  v270 = v100;
  [v247 enumerateKeysAndObjectsUsingBlock:v269];
  v246 = v99;
  dictionary2 = [v99 dictionary];
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_3;
  v266[3] = &unk_279D1D4A8;
  v102 = v100;
  v267 = v102;
  v248 = v247;
  v268 = v248;
  [dictionary2 enumerateKeysAndObjectsUsingBlock:v266];

  v228 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v262 = 0u;
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v103 = fpDomains;
  v104 = [v103 countByEnumeratingWithState:&v262 objects:v284 count:16];
  if (!v104)
  {
    goto LABEL_69;
  }

  v105 = v104;
  v106 = *v263;
  do
  {
    v107 = 0;
    do
    {
      if (*v263 != v106)
      {
        objc_enumerationMutation(v103);
      }

      v108 = *(*(&v262 + 1) + 8 * v107);
      topLevelBundleIdentifier = [v108 topLevelBundleIdentifier];
      v110 = topLevelBundleIdentifier;
      if (topLevelBundleIdentifier)
      {
        providerID = topLevelBundleIdentifier;
      }

      else
      {
        providerID = [v108 providerID];
      }

      v112 = providerID;

      v113 = [v102 objectForKey:v112];
      v114 = v113;
      if (v113)
      {
        [v113 setFpDomain:v108];
        if ([v112 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
        {
          v115 = v114;
          v116 = 5;
LABEL_61:
          [v115 setAppKind:v116];
          goto LABEL_65;
        }

        appRecord = [v114 appRecord];
        if (appRecord)
        {
        }

        else
        {
          usageBundle = [v114 usageBundle];

          if (!usageBundle)
          {
            providerDisplayName = [v108 providerDisplayName];
            [v114 setName:providerDisplayName];

            v115 = v114;
            v116 = 4;
            goto LABEL_61;
          }
        }
      }

LABEL_65:

      ++v107;
    }

    while (v105 != v107);
    v120 = [v103 countByEnumeratingWithState:&v262 objects:v284 count:16];
    v105 = v120;
  }

  while (v120);
LABEL_69:

  v226 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v121 = +[STUpdateMonitor sharedMonitor];
  currentUpdateSize = [v121 currentUpdateSize];
  STLog(1, @"Current update size (%lld)", v123, v124, v125, v126, v127, v128, currentUpdateSize);
  if (currentUpdateSize)
  {
    bundleIdentifier4 = [v121 bundleIdentifier];
    v130 = [v249 objectForKey:bundleIdentifier4];
    if (!v130)
    {
      v131 = [STStorageApp alloc];
      v132 = STStorageDataLocStr(@"SOFTWARE_UPDATE");
      v130 = [(STStorageApp *)v131 initWithBundleIdentifier:bundleIdentifier4 name:v132 vendorName:0];

      [(STStorageApp *)v130 setAppKind:3];
      v133 = [v241 usageBundleForIdentifier:@"com.apple.Preferences"];
      [(STStorageApp *)v130 setUsageBundle:v133];
    }

    currentUpdateName = [v121 currentUpdateName];
    [(STStorageApp *)v130 setName:currentUpdateName];

    v135 = [STSizeVector docsAndData:currentUpdateSize];
    [(STStorageApp *)v130 setExternalSizes:v135];

    STLog(1, @"Listing app container : %@", v136, v137, v138, v139, v140, v141, bundleIdentifier4);
    [v102 setObject:v130 forKey:bundleIdentifier4];
  }

  v227 = v121;
  v223 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v225 = [objc_opt_class() sharedContainersFor:obj];
  v224 = [STMSizer containersWithClass:7];
  allValues = [v224 allValues];
  v143 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v144 = allValues;
  v145 = [v144 countByEnumeratingWithState:&v258 objects:v283 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v259;
    do
    {
      for (m = 0; m != v146; ++m)
      {
        if (*v259 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = *(*(&v258 + 1) + 8 * m);
        v150 = [v149 url];
        path = [v150 path];
        [v143 setObject:v149 forKey:path];
      }

      v146 = [v144 countByEnumeratingWithState:&v258 objects:v283 count:16];
    }

    while (v146);
  }

  v152 = objc_opt_new();
  v253[0] = MEMORY[0x277D85DD0];
  v253[1] = 3221225472;
  v253[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_4;
  v253[3] = &unk_279D1D4D0;
  v254 = v143;
  v153 = v102;
  v255 = v153;
  v256 = v152;
  v257 = v249;
  v250 = v249;
  v221 = v152;
  v222 = v143;
  [v225 enumerateKeysAndObjectsUsingBlock:v253];
  v154 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v251[0] = MEMORY[0x277D85DD0];
  v251[1] = 3221225472;
  v251[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_5;
  v251[3] = &unk_279D1D4F8;
  v252 = v153;
  v155 = v153;
  [v221 enumerateKeysAndObjectsUsingBlock:v251];
  v156 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [self fixClonesInPhotosAndMessages:v155];
  v157 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load app records", v158, v159, v160, v161, v162, v163, COERCE__INT64((v237 - v238) / 1000000000.0));
  STLog(1, @"%0.3f secs: build app objects", v164, v165, v166, v167, v168, v169, COERCE__INT64((v231 - v237) / 1000000000.0));
  STLog(1, @"%0.3f secs: add pluginkit sizes", v170, v171, v172, v173, v174, v175, COERCE__INT64((v229 - v231) / 1000000000.0));
  STLog(1, @"%0.3f secs: size apps", v176, v177, v178, v179, v180, v181, COERCE__INT64((v228 - v229) / 1000000000.0));
  STLog(1, @"%0.3f secs: size extern data", v182, v183, v184, v185, v186, v187, COERCE__INT64((v226 - v228) / 1000000000.0));
  STLog(1, @"%0.3f secs: add file providers", v188, v189, v190, v191, v192, v193, COERCE__INT64((v223 - v226) / 1000000000.0));
  STLog(1, @"%0.3f secs: add system updates", v194, v195, v196, v197, v198, v199, COERCE__INT64((v154 - v223) / 1000000000.0));
  STLog(1, @"%0.3f secs: add pseudo apps", v200, v201, v202, v203, v204, v205, COERCE__INT64((v156 - v154) / 1000000000.0));
  STLog(1, @"%0.3f secs: apply fixes", v206, v207, v208, v209, v210, v211, COERCE__INT64((v157 - v156) / 1000000000.0));
  STLog(1, @"%0.3f secs: load apps total", v212, v213, v214, v215, v216, v217, COERCE__INT64((v157 - v238) / 1000000000.0));
  allValues2 = [v155 allValues];

  v219 = *MEMORY[0x277D85DE8];

  return allValues2;
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [v4 setAssetPurgeableSize:STMSizeOfPurgeableAssets(a2)];
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = getOrCreateApp(v4, v7, v8);

  [v9 setExternalSizes:v6];
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v82 = [*(a1 + 32) objectForKey:v5];
  if (v82)
  {
    if ([v6 count])
    {
      v7 = [v82 identifier];
      v8 = [v7 isEqualToString:@"group.com.apple.FileProvider.LocalStorage"];

      if ((v8 & 1) == 0)
      {
        v78 = v5;
        v81 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        v80 = v79 = v6;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v87 objects:v93 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v88;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v88 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v87 + 1) + 8 * i);
              v15 = [*(a1 + 40) objectForKey:v14];
              if (v15)
              {
                v16 = a1;
                v17 = [STAppOverrides overridesFor:v14];
                v18 = [v17 includeContainers];

                v19 = [v82 identifier];
                v20 = [v18 containsObject:v19];

                if (v20)
                {
                  v31 = [v82 identifier];
                  STLog(1, @"Overriding association between container %@ and app %@", v32, v33, v34, v35, v36, v37, v31);

                  AddToMultiDict(*(v16 + 48), v14, v82);
                  goto LABEL_21;
                }

                [v81 addObject:v15];
                if ([v15 userVisible])
                {
                  [v80 addObject:v15];
                }

                a1 = v16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v87 objects:v93 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v21 = [v80 count];
        if (v21 == 1)
        {
          v39 = [v82 identifier];
          v40 = [v80 firstObject];
          v76 = [v40 bundleIdentifier];
          STLog(1, @"Associating container %@ to %@", v41, v42, v43, v44, v45, v46, v39);

          v47 = *(a1 + 48);
          v9 = [v80 firstObject];
          v15 = [v9 bundleIdentifier];
          AddToMultiDict(v47, v15, v82);
LABEL_21:
          v5 = v78;
        }

        else
        {
          if (!v21)
          {
            v5 = v78;
            v6 = v79;
            if (![v81 count])
            {
LABEL_24:

              goto LABEL_25;
            }

            v22 = [v82 identifier];
            v23 = [v81 firstObject];
            v75 = [v23 bundleIdentifier];
            STLog(1, @"No visible apps claim the container %@, associating to %@", v24, v25, v26, v27, v28, v29, v22);

            v30 = *(a1 + 48);
            v9 = [v81 firstObject];
            v15 = [v9 bundleIdentifier];
            AddToMultiDict(v30, v15, v82);
LABEL_23:

            goto LABEL_24;
          }

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v48 = v80;
          v49 = [v48 countByEnumeratingWithState:&v83 objects:v92 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v84;
            while (2)
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v84 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v83 + 1) + 8 * j);
                v54 = [v82 identifier];
                v55 = [v53 bundleIdentifier];
                v56 = [v54 hasSuffix:v55];

                if (v56)
                {
                  v58 = [v82 identifier];
                  v77 = [v53 bundleIdentifier];
                  STLog(1, @"Force associating container %@ to %@", v59, v60, v61, v62, v63, v64, v58);

                  v65 = *(a1 + 48);
                  v15 = [v53 bundleIdentifier];
                  AddToMultiDict(v65, v15, v82);
                  v9 = v48;
                  goto LABEL_21;
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v83 objects:v92 count:16];
              if (v50)
              {
                continue;
              }

              break;
            }
          }

          v5 = v78;
          v9 = [v78 lastPathComponent];
          v57 = [*(a1 + 56) objectForKey:v9];
          if (!v57)
          {
            if ([v48 count])
            {
              v66 = v48;
            }

            else
            {
              v66 = v81;
            }

            v15 = MakePseudoAppForContainer(v9, v66);
            v91 = v82;
            v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
            [v15 setSharedContainers:v67];

            v68 = [v82 identifier];
            v6 = v79;
            if (![v48 count])
            {
              [v81 count];
            }

            STLog(1, @"Creating fake app for group container %@, %ld owners", v69, v70, v71, v72, v73, v74, v68);

            [*(a1 + 40) setObject:v15 forKey:v9];
            goto LABEL_23;
          }

          v15 = v57;
          [*(a1 + 40) setObject:v57 forKey:v9];
        }

        v6 = v79;
        goto LABEL_23;
      }
    }
  }

LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = v5;
  if (v5)
  {
    [v5 setSharedContainers:v7];
  }
}

+ (void)fixClonesInPhotosAndMessages:(id)messages
{
  v33 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = STMSizesOfClones(@"/private/var/mobile/Library/SMS/Attachments/");
  v5 = STMSizesOfClones(@"/private/var/mobile/Library/Photos/Libraries/Syndication.photoslibrary/");
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [v5 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        v14 = v13;
        if (v13)
        {
          v10 += [v13 unsignedLongLongValue];
          v9 = (v9 + 1);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v27 = STFormattedSize(v10);
  STLog(4, @"fix applied: message/photos: %u shared clones using %@", v15, v16, v17, v18, v19, v20, v9);

  v21 = [messagesCopy objectForKeyedSubscript:@"com.apple.mobileslideshow"];
  externalSizes = [v21 externalSizes];
  v23 = [STSizeVector purgeable:v10];
  v24 = [externalSizes plus:v23];
  v25 = [messagesCopy objectForKeyedSubscript:@"com.apple.mobileslideshow"];
  [v25 setExternalSizes:v24];

  v26 = *MEMORY[0x277D85DE8];
}

@end