@interface VSCacheDeleteService
+ (id)sharedService;
- (id)purgeImpl:(id)a3 urgency:(int)a4;
- (id)purgeableAssetsWithInfo:(id)a3 urgency:(int)a4;
- (int64_t)totalSizeOfAssets:(id)a3;
@end

@implementation VSCacheDeleteService

- (id)purgeImpl:(id)a3 urgency:(int)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v6 = [VSCacheDeleteService purgeableAssetsWithInfo:"purgeableAssetsWithInfo:urgency:" urgency:?];
  v32 = [(VSCacheDeleteService *)self totalSizeOfAssets:v6];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [MEMORY[0x277D79950] sharedManager];
          v14 = [v13 purgeAsset:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v13 = [MEMORY[0x277D79950] sharedManager];
          [v13 removeVoiceResource:v12 completion:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  if (a4 < 2)
  {
    v20 = v32;
    v17 = v33;
  }

  else
  {
    v15 = +[VSSpeechCache defaultCacheStore];
    v16 = [v15 dirPath];
    v17 = v33;
    v18 = [v33 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v19 = [v16 hasPrefix:v18];

    v20 = v32;
    if (v19)
    {
      v21 = +[VSSpeechCache defaultCacheStore];
      v20 = [v21 totalCacheSize] + v32;

      v22 = +[VSSpeechCache defaultCacheStore];
      [v22 deleteCache];
    }

    v23 = [v33 objectForKeyedSubscript:{@"CACHE_DELETE_VOLUME", v32}];
    v24 = [@"/private/var/mobile/" hasPrefix:v23];

    if (v24)
    {
      v25 = +[VSDiagnosticService defaultService];
      v20 += [v25 totalDiagnosticFileSize];

      v26 = +[VSDiagnosticService defaultService];
      [v26 removeDirectory];
    }
  }

  v38[0] = @"CACHE_DELETE_VOLUME";
  v27 = [v17 objectForKeyedSubscript:v32];
  v38[1] = @"CACHE_DELETE_AMOUNT";
  v39[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v20];
  v39[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (int64_t)totalSizeOfAssets:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 += [v9 size];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)purgeableAssetsWithInfo:(id)a3 urgency:(int)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 <= 3)
  {
    v7 = [MEMORY[0x277D79998] standardInstance];
    v8 = [v7 disableAssetCleaning];

    if (v8)
    {
      v9 = VSGetLogEvent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v94) = a4;
        _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEFAULT, "#CacheDelete asset cleaning is disabled in internal setting. Skip purgeable assets for urgency %d", buf, 8u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_39;
    }
  }

  v65 = [MEMORY[0x277CBEB18] array];
  v11 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  if (v11)
  {
    v12 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v13 = [v12 longLongValue];
  }

  else
  {
    v13 = -1;
  }

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __56__VSCacheDeleteService_purgeableAssetsWithInfo_urgency___block_invoke;
  v88[3] = &unk_279E4B7F0;
  v64 = v6;
  v89 = v6;
  v14 = MEMORY[0x2743CD880](v88);
  v15 = [MEMORY[0x277D79950] sharedManager];
  v16 = [v15 activeVoiceAssets];
  v17 = (*(v14 + 16))(v14, v16);

  v18 = [MEMORY[0x277D79950] sharedManager];
  v19 = [v18 inactiveVoiceAssets];
  v63 = v14;
  v66 = (*(v14 + 16))(v14, v19);

  v20 = [MEMORY[0x277CBEB58] set];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v17;
  v21 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v85;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v85 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = [*(*(&v84 + 1) + 8 * i) voiceData];
        v26 = [v25 languages];
        [v20 addObjectsFromArray:v26];
      }

      v22 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v22);
  }

  v67 = [MEMORY[0x277CBEB58] set];
  v27 = [(VSCacheDeleteService *)self totalSizeOfAssets:v66];
  v10 = v65;
  v69 = v20;
  if ((a4 - 1) < 3)
  {
    goto LABEL_17;
  }

  if (a4 == 4)
  {
    if (v13 == -1 || v13 > v27)
    {
      [v65 addObjectsFromArray:obj];
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v53 = obj;
      v54 = [v53 countByEnumeratingWithState:&v80 objects:v95 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v81;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v81 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v80 + 1) + 8 * j);
            v59 = VSGetLogDefault();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v60 = [v58 descriptiveKey];
              *buf = 138412290;
              v94 = v60;
              _os_log_impl(&dword_2727E4000, v59, OS_LOG_TYPE_INFO, "#CacheDelete purgeable active voice asset: %@", buf, 0xCu);
            }

            v61 = [v58 voiceData];
            v62 = [v61 languages];
            [v67 addObjectsFromArray:v62];
          }

          v55 = [v53 countByEnumeratingWithState:&v80 objects:v95 count:16];
        }

        while (v55);
      }

      v10 = v65;
    }

LABEL_17:
    [v10 addObjectsFromArray:v66];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v68 = v66;
    v28 = [v68 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (!v28)
    {
      goto LABEL_30;
    }

    v29 = v28;
    v71 = *v77;
    while (1)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v77 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v31 = *(*(&v76 + 1) + 8 * k);
        v32 = VSGetLogDefault();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v31 descriptiveKey];
          *buf = 138412290;
          v94 = v33;
          _os_log_impl(&dword_2727E4000, v32, OS_LOG_TYPE_INFO, "#CacheDelete purgeable inactive voice asset: %@", buf, 0xCu);
        }

        v34 = [v31 voiceData];
        v35 = [v34 languages];
        v36 = [v35 firstObject];
        if (v36)
        {
          v37 = v36;
          v38 = [v31 voiceData];
          v39 = [v38 languages];
          v40 = [v39 firstObject];
          v41 = [v69 containsObject:v40];

          if (v41)
          {
            continue;
          }

          v34 = [v31 voiceData];
          v35 = [v34 languages];
          v42 = [v35 firstObject];
          [v67 addObject:v42];
        }
      }

      v29 = [v68 countByEnumeratingWithState:&v76 objects:v92 count:16];
      if (!v29)
      {
LABEL_30:

        v10 = v65;
        break;
      }
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v43 = v67;
  v44 = [v43 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v73;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v73 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v72 + 1) + 8 * m);
        v49 = objc_alloc_init(MEMORY[0x277D799D8]);
        v90 = v48;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
        [v49 setLanguages:v50];

        [v10 addObject:v49];
      }

      v45 = [v43 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v45);
  }

  v9 = v89;
  v6 = v64;
LABEL_39:

  v51 = *MEMORY[0x277D85DE8];

  return v10;
}

id __56__VSCacheDeleteService_purgeableAssetsWithInfo_urgency___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 voicePath];
        v11 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
        v12 = [v10 hasPrefix:v11];

        if (v12)
        {
          [v15 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_1871);
  }

  v3 = sharedService___sharedService;

  return v3;
}

uint64_t __37__VSCacheDeleteService_sharedService__block_invoke()
{
  sharedService___sharedService = objc_alloc_init(VSCacheDeleteService);

  return MEMORY[0x2821F96F8]();
}

@end