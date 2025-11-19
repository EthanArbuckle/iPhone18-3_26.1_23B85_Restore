@interface PSGUtilities
+ (id)sharedInstance;
- (id)localizedStringForKey:(id)a3 withLocale:(id)a4;
- (id)localizedStringForKey:(id)a3 withLocale:(id)a4 onlyIfCached:(BOOL)a5 wasCached:(BOOL *)a6;
- (id)prewarmCacheForLocale:(id)a3 usingQueue:(id)a4;
@end

@implementation PSGUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PSGUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2_1000 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_1000, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1001;

  return v2;
}

void __30__PSGUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_1001;
  sharedInstance__pasExprOnceResult_1001 = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)localizedStringForKey:(id)a3 withLocale:(id)a4 onlyIfCached:(BOOL)a5 wasCached:(BOOL *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PSGUtilities_localizedStringForKey_withLocale_onlyIfCached_wasCached___block_invoke;
  block[3] = &unk_279ABD150;
  block[4] = self;
  if (localizedStringForKey_withLocale_onlyIfCached_wasCached__onceToken != -1)
  {
    dispatch_once(&localizedStringForKey_withLocale_onlyIfCached_wasCached__onceToken, block);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1011;
  v36 = __Block_byref_object_dispose__1012;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = localizedStringForKey_withLocale_onlyIfCached_wasCached__cache;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __72__PSGUtilities_localizedStringForKey_withLocale_onlyIfCached_wasCached___block_invoke_24;
  v22 = &unk_279ABD178;
  v13 = v11;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  v25 = &v28;
  v26 = &v32;
  v27 = v7;
  [v12 runWithLockAcquired:&v19];
  if (a6)
  {
    *a6 = *(v29 + 24);
  }

  v15 = v33[5];
  if (v15 || v7)
  {
    v16 = v15;
  }

  else
  {
    v16 = [localizedStringForKey_withLocale_onlyIfCached_wasCached__stringsBundle localizedStringForKey:v14 value:&stru_287343650 table:{0, v19, v20, v21, v22, v23}];
  }

  v17 = v16;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

uint64_t __72__PSGUtilities_localizedStringForKey_withLocale_onlyIfCached_wasCached___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D425F8]);
  v3 = objc_opt_new();
  v4 = [v2 initWithGuardedData:v3];
  v5 = localizedStringForKey_withLocale_onlyIfCached_wasCached__cache;
  localizedStringForKey_withLocale_onlyIfCached_wasCached__cache = v4;

  v6 = *(a1 + 32);
  localizedStringForKey_withLocale_onlyIfCached_wasCached__stringsBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void __72__PSGUtilities_localizedStringForKey_withLocale_onlyIfCached_wasCached___block_invoke_24(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D42648] tupleWithFirst:*(a1 + 32) second:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = [MEMORY[0x277CBEB68] null];
    v8 = [v7 isEqual:v6];

    v9 = *(*(a1 + 56) + 8);
    if (v8)
    {
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    else
    {
      objc_storeStrong((v9 + 40), v6);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (*(a1 + 64))
    {
      v6 = 0;
    }

    else
    {
      context = v11;
      v31[0] = *(a1 + 32);
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      v13 = MEMORY[0x277CCA8D8];
      v14 = [localizedStringForKey_withLocale_onlyIfCached_wasCached__stringsBundle localizations];
      v24 = v12;
      v15 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v12];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            v6 = [localizedStringForKey_withLocale_onlyIfCached_wasCached__stringsBundle localizedStringForKey:*(a1 + 40) value:0 table:0 localization:v21];
            if ([v6 isEqual:*(a1 + 40)])
            {

              objc_autoreleasePoolPop(v22);
            }

            else
            {
              objc_autoreleasePoolPop(v22);
              if (v6)
              {

                objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
                goto LABEL_19;
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v6 = [MEMORY[0x277CBEB68] null];
LABEL_19:
      if ([v3 count] == 32)
      {
        [v3 removeAllObjects];
      }

      [v3 setObject:v6 forKeyedSubscript:v4];

      v11 = context;
    }

    objc_autoreleasePoolPop(v11);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)localizedStringForKey:(id)a3 withLocale:(id)a4
{
  v6 = [(PSGUtilities *)self localizedStringForKey:a3 withLocale:a4 onlyIfCached:0 wasCached:0];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PSGUtilities.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  return v6;
}

- (id)prewarmCacheForLocale:(id)a3 usingQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__PSGUtilities_prewarmCacheForLocale_usingQueue___block_invoke;
  v17[3] = &unk_279ABD100;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = [&unk_287345588 _pas_filteredArrayWithTest:v17];
  if ([v9 count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PSGUtilities_prewarmCacheForLocale_usingQueue___block_invoke_2;
    block[3] = &unk_279ABD128;
    v14 = v9;
    v15 = self;
    v16 = v8;
    v10 = dispatch_block_create(0, block);
    dispatch_async(v7, v10);
    v11 = MEMORY[0x2666ED760](v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __49__PSGUtilities_prewarmCacheForLocale_usingQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = [*(a1 + 32) localizedStringForKey:a2 withLocale:*(a1 + 40) onlyIfCached:1 wasCached:&v4];
  return (v4 & 1) == 0;
}

void __49__PSGUtilities_prewarmCacheForLocale_usingQueue___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) localizedStringForKey:*(*(&v9 + 1) + 8 * v6++) withLocale:{*(a1 + 48), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end