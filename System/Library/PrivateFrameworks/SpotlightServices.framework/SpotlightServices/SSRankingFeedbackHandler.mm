@interface SSRankingFeedbackHandler
+ (id)copyRenderEngagementCounts;
+ (id)sharedInstance;
- (SSRankingFeedbackHandler)init;
- (id)fetchResults;
- (id)getSyntheticTestRankingItem;
- (id)getSyntheticTestRankingItemsForStressTest;
- (void)_indexItemWithIdentifier:(id)a3 bundleID:(id)a4 startDate:(id)a5 pc:(id)a6;
- (void)_updateSpotlightRecentEngagementWithIdentifier:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 queryString:(id)a6 renderPosition:(id)a7;
- (void)didEngageResultWithRankingItem:(id)a3 startDate:(id)a4 protectionClass:(id)a5 query:(id)a6;
- (void)fetchBundleRenderAndEngagementInfo:(id)a3;
- (void)resetResultWithRankingItems:(id)a3;
- (void)resultsWithRankingItemsDidBecomeVisible:(id)a3 date:(id)a4 protectionClassMapping:(id)a5;
- (void)stressTestCounts;
- (void)testCountsAfterCoupleYears;
- (void)testCountsAfterYear;
- (void)testCountsForRegularEngagement;
- (void)testCountsMovingCoupleOfYearsInPast;
- (void)testCountsMovingDaysInPast;
- (void)testCountsMovingYearInPast;
- (void)testCountsUptoHalfYear;
- (void)testCountsUptoMonth;
- (void)testCountsUptoQuarter;
- (void)testCountsUptoWeek;
- (void)testCountsUptoYear;
- (void)testForDummyEntry;
- (void)testForDurationWithIntervals:(int *)a3 maxIndex:(int)a4 duration:(int64_t)a5 counts:(id)a6;
- (void)writeRenderAndEngagementInfo;
@end

@implementation SSRankingFeedbackHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SSRankingFeedbackHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

uint64_t __42__SSRankingFeedbackHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SSRankingFeedbackHandler);
  v1 = sharedInstance_handler;
  sharedInstance_handler = v0;

  sClientRankAndBlend = _os_feature_enabled_impl();
  v2 = objc_opt_new();
  v3 = sRenderEngagementCountValues;
  sRenderEngagementCountValues = v2;

  if (sClientRankAndBlend == 1)
  {
    v4 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v5 = sCSIndex;
    sCSIndex = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69D3DC0] sharedInstance];
    v5 = sIndexer;
    sIndexer = v6;
  }

  return pthread_rwlock_init(&sRWRenderEngagementValueLock, 0);
}

- (SSRankingFeedbackHandler)init
{
  v10.receiver = self;
  v10.super_class = SSRankingFeedbackHandler;
  v2 = [(SSRankingFeedbackHandler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(33, 2uLL);
    v4 = dispatch_queue_create_with_target_V2("queue to fetch bundle render/engagement counts", 0, v3);
    [(SSRankingFeedbackHandler *)v2 setFetchQueue:v4];

    v5 = dispatch_get_global_queue(9, 2uLL);
    v6 = dispatch_queue_create_with_target_V2("queue to update render/engagement counts", 0, v5);
    [(SSRankingFeedbackHandler *)v2 setCountQueue:v6];

    v7 = objc_opt_new();
    [(SSRankingFeedbackHandler *)v2 setMapProtectionClassToBundleIdToItem:v7];

    v8 = objc_opt_new();
    [(SSRankingFeedbackHandler *)v2 setSectionCSItems:v8];
  }

  return v2;
}

+ (id)copyRenderEngagementCounts
{
  pthread_rwlock_rdlock(&sRWRenderEngagementValueLock);
  v2 = [sRenderEngagementCountValues copy];
  pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  return v2;
}

- (void)_indexItemWithIdentifier:(id)a3 bundleID:(id)a4 startDate:(id)a5 pc:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x1E6964E80];
  v13 = a3;
  v14 = objc_alloc_init(v12);
  [v14 setUniqueIdentifier:v13];

  [v14 setIsUpdate:1];
  v15 = objc_opt_new();
  v16 = v15;
  if (v10)
  {
    [v15 setAttribute:v10 forKey:@"_kMDItemEngagementDate"];
  }

  else
  {
    v17 = [MEMORY[0x1E695DF00] date];
    [v16 setAttribute:v17 forKey:@"_kMDItemEngagementDate"];
  }

  [v14 setAttributeSet:v16];
  [v14 setBundleID:v9];
  if (sClientRankAndBlend == 1)
  {
    v18 = sCSIndex;
    v23[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = &__block_literal_global_31;
  }

  else
  {
    v18 = sIndexer;
    v22 = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v20 = &__block_literal_global_33;
  }

  [v18 indexSearchableItems:v19 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v11 forBundleID:v9 options:0 completionHandler:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateSpotlightRecentEngagementWithIdentifier:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 queryString:(id)a6 renderPosition:(id)a7
{
  v30[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  if (v12 && a3 && a6 && a7)
  {
    v14 = MEMORY[0x1E6964E90];
    v15 = a7;
    v16 = a6;
    v17 = a3;
    v18 = [v14 alloc];
    v29[0] = @"_kMDItemLastSpotlightEngagementQuery";
    v29[1] = @"_kMDItemLastSpotlightEngagementRenderPosition";
    v30[0] = v16;
    v30[1] = v15;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v20 = [v18 initWithAttributes:v19];

    v21 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v17 domainIdentifier:0 attributeSet:v20];
    [v21 setIsUpdate:1];
    [v21 setBundleID:v12];
    v22 = [(SSRankingFeedbackHandler *)self countQueue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __127__SSRankingFeedbackHandler__updateSpotlightRecentEngagementWithIdentifier_bundleID_protectionClass_queryString_renderPosition___block_invoke;
    v25[3] = &unk_1E85957A0;
    v26 = v21;
    v27 = v13;
    v28 = v12;
    v23 = v21;
    dispatch_async(v22, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __127__SSRankingFeedbackHandler__updateSpotlightRecentEngagementWithIdentifier_bundleID_protectionClass_queryString_renderPosition___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (sClientRankAndBlend == 1)
  {
    v3 = sCSIndex;
    v10[0] = a1[4];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = a1[5];
    v6 = a1[6];
    v7 = &__block_literal_global_42;
  }

  else
  {
    v3 = sIndexer;
    v9 = a1[4];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    v5 = a1[5];
    v6 = a1[6];
    v7 = &__block_literal_global_44;
  }

  [v3 indexSearchableItems:v4 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v5 forBundleID:v6 options:0 completionHandler:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didEngageResultWithRankingItem:(id)a3 startDate:(id)a4 protectionClass:(id)a5 query:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SSRankingFeedbackHandler *)self countQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SSRankingFeedbackHandler_didEngageResultWithRankingItem_startDate_protectionClass_query___block_invoke;
  block[3] = &unk_1E85957F0;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(v14, block);
}

void __91__SSRankingFeedbackHandler_didEngageResultWithRankingItem_startDate_protectionClass_query___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) rankingFeedbackBundleID];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  [v2 _indexItemWithIdentifier:v3 bundleID:v10 startDate:*(a1 + 48) pc:*(a1 + 56)];

  [*(a1 + 40) _indexItemWithIdentifier:v10 bundleID:@"com.apple.searchd" startDate:*(a1 + 48) pc:*MEMORY[0x1E696A388]];
  if (sRenderEngagementCountValues)
  {
    pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
    v4 = sRenderEngagementCountValues;
    v5 = [*(a1 + 32) sectionBundleIdentifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    [v7 incrementRankingValuesForType:0];
    [sRenderEngagementCountValues setValue:v7 forKey:v10];
    pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) identifier];
  [v8 _updateSpotlightRecentEngagementWithIdentifier:v9 bundleID:v10 protectionClass:*(a1 + 56) queryString:*(a1 + 64) renderPosition:&unk_1F55B3A50];
}

- (void)resultsWithRankingItemsDidBecomeVisible:(id)a3 date:(id)a4 protectionClassMapping:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SSRankingFeedbackHandler *)self countQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke;
  v15[3] = &unk_1E85957C8;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke(uint64_t a1)
{
  v128 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v79 = objc_opt_new();
  v80 = a1;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v117;
    v86 = *v117;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v117 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v116 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v6 rankingFeedbackBundleID];
        v9 = *(v80 + 40);
        v10 = [v6 identifier];
        v11 = [v9 objectForKey:v10];

        if (v7)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = v80;
          if (([v79 containsObject:v8] & 1) == 0)
          {
            v14 = [*(v80 + 48) sectionCSItems];
            v15 = [v14 count];

            if (v15 <= 0x95)
            {
              v16 = objc_alloc_init(MEMORY[0x1E6964E80]);
              [v16 setUniqueIdentifier:v8];
              [v16 setIsUpdate:1];
              v17 = objc_opt_new();
              v18 = v17;
              v19 = *(v80 + 56);
              if (v19)
              {
                [v17 setAttribute:v19 forKey:@"_kMDItemRenderDate"];
              }

              else
              {
                v20 = [MEMORY[0x1E695DF00] date];
                [v18 setAttribute:v20 forKey:@"_kMDItemRenderDate"];
              }

              [v16 setAttributeSet:v18];
              [v16 setBundleID:@"com.apple.searchd"];
              v13 = v80;
              v21 = [*(v80 + 48) sectionCSItems];
              [v21 addObject:v16];

              v4 = v86;
            }
          }

          [v79 addObject:v8];
          v22 = objc_alloc_init(MEMORY[0x1E6964E80]);
          v23 = [v6 identifier];
          [v22 setUniqueIdentifier:v23];

          [v22 setIsUpdate:1];
          v24 = objc_opt_new();
          v25 = v24;
          v26 = *(v13 + 56);
          if (v26)
          {
            [v24 setAttribute:v26 forKey:@"_kMDItemRenderDate"];
          }

          else
          {
            v27 = [MEMORY[0x1E695DF00] date];
            [v25 setAttribute:v27 forKey:@"_kMDItemRenderDate"];
          }

          [v22 setAttributeSet:v25];
          [v22 setBundleID:v8];
          if ([v11 length])
          {
            v28 = [*(v80 + 48) mapProtectionClassToBundleIdToItem];
            v29 = [v28 objectForKey:v11];

            if (!v29)
            {
              v29 = objc_opt_new();
            }

            v30 = [v29 objectForKey:v8];
            if (!v30)
            {
              v30 = objc_opt_new();
            }

            if ([v30 count] <= 0x95)
            {
              [v30 addObject:v22];
            }

            [v29 setObject:v30 forKey:v8];
            v31 = [*(v80 + 48) mapProtectionClassToBundleIdToItem];
            [v31 setObject:v29 forKey:v11];

            v4 = v86;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v3);
  }

  if (_os_feature_enabled_impl())
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v32 = v80;
    v33 = [*(v80 + 48) mapProtectionClassToBundleIdToItem];
    v34 = [v33 allKeys];

    v75 = v34;
    v77 = [v34 countByEnumeratingWithState:&v112 objects:v126 count:16];
    if (v77)
    {
      v76 = *v113;
      v83 = *MEMORY[0x1E6964A48];
      do
      {
        v35 = 0;
        do
        {
          if (*v113 != v76)
          {
            objc_enumerationMutation(v75);
          }

          v78 = v35;
          v36 = *(*(&v112 + 1) + 8 * v35);
          v37 = [*(v32 + 48) mapProtectionClassToBundleIdToItem];
          v84 = v36;
          v38 = [v37 objectForKey:v36];

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v82 = [v38 allKeys];
          v87 = [v82 countByEnumeratingWithState:&v108 objects:v125 count:16];
          if (v87)
          {
            v85 = *v109;
            v81 = v38;
            do
            {
              for (j = 0; j != v87; ++j)
              {
                if (*v109 != v85)
                {
                  objc_enumerationMutation(v82);
                }

                v40 = *(*(&v108 + 1) + 8 * j);
                if (([v40 isEqual:@"com.apple.parsec.stocks"] & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"com.apple.parsec.sports") & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"com.apple.parsec.maps") & 1) != 0 || objc_msgSend(v40, "isEqual:", @"com.apple.parsec.itunes.iosSoftware"))
                {
                  v41 = [v38 objectForKey:v40];
                  v42 = CS_simplifyItemArray();

                  v43 = objc_opt_new();
                  v104 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v44 = v42;
                  v45 = [v44 countByEnumeratingWithState:&v104 objects:v124 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v105;
                    do
                    {
                      for (k = 0; k != v46; ++k)
                      {
                        if (*v105 != v47)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v49 = [*(*(&v104 + 1) + 8 * k) uniqueIdentifier];
                        [v43 addObject:v49];
                      }

                      v46 = [v44 countByEnumeratingWithState:&v104 objects:v124 count:16];
                    }

                    while (v46);
                  }

                  if ([v43 count])
                  {
                    obja = v40;
                    v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v44, "count")}];
                    v100 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v51 = v44;
                    v52 = [v51 countByEnumeratingWithState:&v100 objects:v123 count:16];
                    if (v52)
                    {
                      v53 = v52;
                      v54 = *v101;
                      do
                      {
                        for (m = 0; m != v53; ++m)
                        {
                          if (*v101 != v54)
                          {
                            objc_enumerationMutation(v51);
                          }

                          v56 = [*(*(&v100 + 1) + 8 * m) copy];
                          [v50 addObject:v56];
                        }

                        v53 = [v51 countByEnumeratingWithState:&v100 objects:v123 count:16];
                      }

                      while (v53);
                    }

                    if (sClientRankAndBlend == 1)
                    {
                      aBlock[0] = MEMORY[0x1E69E9820];
                      aBlock[1] = 3221225472;
                      aBlock[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_2;
                      aBlock[3] = &unk_1E8595C80;
                      v98[0] = v51;
                      v98[1] = v84;
                      v57 = obja;
                      v99 = v57;
                      v58 = _Block_copy(aBlock);
                      v59 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
                      v122 = v83;
                      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
                      v61 = [v43 array];
                      v38 = v81;
                      [v59 slowFetchAttributes:v60 protectionClass:v84 bundleID:v57 identifiers:v61 completionHandler:v58];

                      v63 = &v99;
                      v62 = v98;
                    }

                    else
                    {
                      v58 = [MEMORY[0x1E69D3DC0] sharedInstance];
                      v121 = v83;
                      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
                      v60 = [v43 array];
                      v94[0] = MEMORY[0x1E69E9820];
                      v94[1] = 3221225472;
                      v94[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_4;
                      v94[3] = &unk_1E8595CA8;
                      v95[0] = v50;
                      v95[1] = v84;
                      v96 = obja;
                      [v58 fetchAttributesForProtectionClass:v84 attributes:v59 bundleID:v96 identifiers:v60 completion:v94];
                      v63 = &v96;
                      v62 = v95;
                    }

                    v40 = obja;
                  }
                }
              }

              v87 = [v82 countByEnumeratingWithState:&v108 objects:v125 count:16];
            }

            while (v87);
          }

          v35 = v78 + 1;
          v32 = v80;
        }

        while (v78 + 1 != v77);
        v77 = [v75 countByEnumeratingWithState:&v112 objects:v126 count:16];
      }

      while (v77);
    }
  }

  if (sRenderEngagementCountValues)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v64 = v79;
    v65 = [v64 countByEnumeratingWithState:&v90 objects:v120 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v91;
      do
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v91 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v90 + 1) + 8 * n);
          pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
          v70 = [sRenderEngagementCountValues objectForKey:v69];
          if (v70)
          {
            v71 = v70;
            v72 = [v70 copy];
          }

          else
          {
            v72 = objc_opt_new();
          }

          [v72 incrementRankingValuesForType:{1, context}];
          [sRenderEngagementCountValues setValue:v72 forKey:v69];
          pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
        }

        v66 = [v64 countByEnumeratingWithState:&v90 objects:v120 count:16];
      }

      while (v66);
    }
  }

  objc_autoreleasePoolPop(context);
  v73 = *MEMORY[0x1E69E9840];
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 count])
  {
    goto LABEL_23;
  }

  [MEMORY[0x1E695DF70] array];
  v25 = v24 = v3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v28;
  v10 = 0x1E695D000uLL;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = *(v10 + 3784);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 = SSFetchAttributeValueIsValid(v12);

      if (!v14)
      {
        v7 = 0;
LABEL_15:
        ++v8;
        continue;
      }

      v7 = v14;
      v15 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      if ([v7 count] == 1)
      {
        [v7 objectAtIndexedSubscript:0];
        v26 = v7;
        v16 = v4;
        v18 = v17 = a1;
        v19 = [MEMORY[0x1E695DFB0] null];
        v20 = [v18 isEqual:v19];

        v10 = 0x1E695D000;
        a1 = v17;
        v4 = v16;
        v7 = v26;
        if (v20)
        {
          v21 = [v15 copy];
          v22 = [v21 attributeSet];
          [v22 setAttribute:0 forKey:@"_kMDItemRenderDate"];

          [v25 addObject:v21];
          v10 = 0x1E695D000;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v6);
LABEL_20:

  if ([v25 count])
  {
    [sCSIndex indexSearchableItems:v25 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*(a1 + 40) forBundleID:*(a1 + 48) options:0 completionHandler:&__block_literal_global_54];
  }

  v3 = v24;
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_4(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [MEMORY[0x1E695DF70] array];
  v19 = v18 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v3 objectForKeyedSubscript:v10];

        if ([v11 count] == 1)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v15 = [v9 copy];
            v16 = [v15 attributeSet];
            [v16 setAttribute:0 forKey:@"_kMDItemRenderDate"];

            [v19 addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v19 count])
  {
    [sIndexer indexSearchableItems:v19 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*(v18 + 40) forBundleID:*(v18 + 48) options:0 completionHandler:&__block_literal_global_57];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchBundleRenderAndEngagementInfo:(id)a3
{
  v4 = a3;
  v5 = [(SSRankingFeedbackHandler *)self fetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke;
  block[3] = &unk_1E8595778;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemBundleID=%@", @"com.apple.searchd"];
  v3 = objc_opt_new();
  [v3 setInternal:1];
  [v3 setLowPriority:0];
  v44[0] = @"com.apple.searchd";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  [v3 setBundleIDs:v4];

  [v3 setMaxCount:400];
  [v3 setLive:1];
  v43[0] = *MEMORY[0x1E6964C48];
  v43[1] = @"_kMDItemRenderValues";
  v43[2] = @"_kMDItemEngagementValues";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  [v3 setFetchAttributes:v5];

  if (*(a1 + 32))
  {
    [v3 setProtectionClasses:?];
  }

  else
  {
    v42 = *MEMORY[0x1E696A388];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v3 setProtectionClasses:v6];
  }

  v7 = [v3 fetchAttributes];
  v8 = [v7 count];

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (sClientRankAndBlend == 1)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_2;
    aBlock[3] = &unk_1E8595CD0;
    aBlock[4] = &v34;
    v10 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_3;
    v30[3] = &unk_1E8595CF8;
    v32 = &v38;
    v11 = v9;
    v31 = v11;
    v12 = _Block_copy(v30);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_4;
    v26[3] = &unk_1E8595D20;
    v28 = &v34;
    v29 = &v38;
    v13 = v12;
    v27 = v13;
    v14 = _Block_copy(v26);
    v15 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v2 context:v3];
    v16 = v15;
    if (v15)
    {
      [v15 setFoundItemsHandler:v10];
      [v16 setGatherEndedHandler:v13];
      [v16 setCompletionHandler:v14];
      [v16 start];
    }

    else
    {
      dispatch_group_leave(v11);
    }

    _Block_object_dispose(&v34, 8);
    v19 = 0;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v17 = sIndexer;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_5;
    v22[3] = &unk_1E8595D68;
    v24 = &v34;
    v25 = v8;
    v18 = v9;
    v23 = v18;
    v19 = [v17 startQuery:v2 withContext:v3 handler:v22];
    if (!v19)
    {
      dispatch_group_leave(v18);
    }

    _Block_object_dispose(&v34, 8);
    v16 = 0;
  }

  v20 = dispatch_time(0, 250000000);
  dispatch_group_wait(v9, v20);
  if (sClientRankAndBlend == 1)
  {
    if (v16 && (v39[3] & 1) == 0)
    {
      [v16 cancel];
    }
  }

  else if (v19)
  {
    [sIndexer cancelQuery:v19];
  }

  _Block_object_dispose(&v38, 8);

  v21 = *MEMORY[0x1E69E9840];
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a2;
  pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v24 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v24)
  {
    v23 = *v26;
    v22 = *MEMORY[0x1E6963D40];
    do
    {
      v3 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * v3);
        v5 = objc_opt_new();
        v6 = [v4 attributeSet];
        v7 = [v6 attributeDictionary];
        v8 = [v7 objectForKey:v22];
        if (v8)
        {
          v9 = [v7 objectForKey:@"_kMDItemRenderValues"];
          v10 = [v9 count];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v30 = 0;
            v29 = 0;
            do
            {
              if (v12 >= v11)
              {
                *(&v29 + v12) = 0;
              }

              else
              {
                v13 = [v9 objectAtIndexedSubscript:v12];
                *(&v29 + v12) = [v13 integerValue];
              }

              ++v12;
            }

            while (v12 != 6);
            [v5 setRankingValues:&v29 forType:1];
          }

          v14 = [v7 objectForKey:@"_kMDItemEngagementValues"];

          v15 = [v14 count];
          if (v15)
          {
            v16 = v15;
            v17 = 0;
            v30 = 0;
            v29 = 0;
            do
            {
              if (v17 >= v16)
              {
                *(&v29 + v17) = 0;
              }

              else
              {
                v18 = [v14 objectAtIndexedSubscript:v17];
                *(&v29 + v17) = [v18 integerValue];
              }

              ++v17;
            }

            while (v17 != 6);
            [v5 setRankingValues:&v29 forType:0];
          }

          [sRenderEngagementCountValues setObject:v5 forKey:v8];
        }

        ++v3;
      }

      while (v3 != v24);
      v24 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v24);
  }

  pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  *(*(*(a1 + 32) + 8) + 24) = 1;

  v19 = *MEMORY[0x1E69E9840];
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[5] + 8) + 24) == 1 && !v3 && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[4] + 16))();
    v3 = 0;
  }
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  if (a2 == 2)
  {
    v10 = *(*(a1 + 40) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      v13 = v9;
      dispatch_group_leave(*(a1 + 32));
      v9 = v13;
    }
  }

  else if (a2 != 1)
  {
    if (a2)
    {
      goto LABEL_10;
    }

    v12 = v9;
    pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
    [a5 enumerateQueryResults:*(a1 + 48) stringCache:0 usingBlock:&__block_literal_global_73];
    pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
    goto LABEL_9;
  }

  v11 = *(*(a1 + 40) + 8);
  if (*(v11 + 24))
  {
    goto LABEL_10;
  }

  *(v11 + 24) = 1;
  v12 = v9;
  dispatch_group_leave(*(a1 + 32));
LABEL_9:
  v9 = v12;
LABEL_10:
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = *a2;
  v5 = *MEMORY[0x1E695E738];
  if (*a2 == *MEMORY[0x1E695E738])
  {
    v4 = 0;
  }

  v6 = v4;
  if (v6)
  {
    v7 = *(a2 + 8);
    if (v7 == v5)
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v22 = 0;
      v21 = 0;
      do
      {
        if (v11 >= v10)
        {
          v13 = 0;
        }

        else
        {
          v12 = [v8 objectAtIndexedSubscript:v11];
          v13 = [v12 integerValue];
        }

        *(&v21 + v11++) = v13;
      }

      while (v11 != 6);
      [v3 setRankingValues:&v21 forType:1];
    }

    v14 = *(a2 + 16);
    if (v14 == v5)
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 count];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v22 = 0;
      v21 = 0;
      do
      {
        if (v18 >= v17)
        {
          *(&v21 + v18) = 0;
        }

        else
        {
          v19 = [v15 objectAtIndexedSubscript:v18];
          *(&v21 + v18) = [v19 integerValue];
        }

        ++v18;
      }

      while (v18 != 6);
      [v3 setRankingValues:&v21 forType:0];
    }

    [sRenderEngagementCountValues setObject:v3 forKey:v6];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)writeRenderAndEngagementInfo
{
  v3 = [(SSRankingFeedbackHandler *)self countQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSRankingFeedbackHandler_writeRenderAndEngagementInfo__block_invoke;
  block[3] = &unk_1E8595778;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __56__SSRankingFeedbackHandler_writeRenderAndEngagementInfo__block_invoke(uint64_t a1)
{
  v1 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [*(a1 + 32) mapProtectionClassToBundleIdToItem];
  v3 = [v2 allKeys];

  v31 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v29 = *v38;
    v30 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v32 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v6 = [*(v1 + 32) mapProtectionClassToBundleIdToItem];
        v7 = [v6 objectForKey:v5];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = [v7 allKeys];
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              v14 = [v7 objectForKey:v13];
              v15 = CS_simplifyItemArray();

              if (v15 && [v15 count])
              {
                v16 = &__block_literal_global_78;
                if (sClientRankAndBlend)
                {
                  v16 = &__block_literal_global_76;
                }

                v17 = &sCSIndex;
                if (!sClientRankAndBlend)
                {
                  v17 = &sIndexer;
                }

                [*v17 indexSearchableItems:v15 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v5 forBundleID:v13 options:0 completionHandler:v16];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v10);
        }

        v4 = v32 + 1;
        v1 = v30;
      }

      while (v32 + 1 != v31);
      v31 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  v18 = [*(v1 + 32) sectionCSItems];
  v19 = [v18 count];

  if (v19)
  {
    if (sClientRankAndBlend)
    {
      v20 = &__block_literal_global_80;
    }

    else
    {
      v20 = &__block_literal_global_82;
    }

    v21 = &sCSIndex;
    if (!sClientRankAndBlend)
    {
      v21 = &sIndexer;
    }

    v22 = *v21;
    v23 = [*(v1 + 32) sectionCSItems];
    v24 = [v23 copy];
    v25 = CS_simplifyItemArray();
    [v22 indexSearchableItems:v25 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x1E696A388] forBundleID:@"com.apple.searchd" options:0 completionHandler:v20];
  }

  v26 = [*(v1 + 32) mapProtectionClassToBundleIdToItem];
  [v26 removeAllObjects];

  v27 = [*(v1 + 32) sectionCSItems];
  [v27 removeAllObjects];

  v28 = *MEMORY[0x1E69E9840];
}

- (id)fetchResults
{
  v28[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = objc_opt_new();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemBundleID=%@ && kMDItemDisplayName=%@", @"com.apple.application", @"Reminders"];
  v3 = objc_opt_new();
  [v3 setInternal:1];
  [v3 setLowPriority:0];
  v28[0] = @"com.apple.application";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v3 setBundleIDs:v4];

  [v3 setMaxCount:400];
  v27[0] = *MEMORY[0x1E6964C48];
  v27[1] = @"_kMDItemRenderData";
  v27[2] = @"_kMDItemEngagementData";
  v27[3] = @"_kMDItemRenderValues";
  v27[4] = @"_kMDItemEngagementValues";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  [v3 setFetchAttributes:v5];

  [v3 setClientBundleID:@"com.apple.application"];
  v26 = *MEMORY[0x1E696A388];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v3 setProtectionClasses:v6];

  v7 = [v3 fetchAttributes];
  v8 = [v7 count];

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke;
  v16[3] = &unk_1E8595D68;
  v18 = &v20;
  v19 = v8;
  v11 = v9;
  v17 = v11;
  v12 = [v10 startQuery:v2 withContext:v3 handler:v16];

  if (!v12)
  {
    dispatch_group_leave(v11);
  }

  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  if (a2 == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  else if (!a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_2;
    v11[3] = &unk_1E8596060;
    v10 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    [a5 enumerateQueryResults:v10 stringCache:0 usingBlock:v11];
  }
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x1E695E738];
  if (*a2 == *MEMORY[0x1E695E738])
  {
    v4 = 0;
  }

  v6 = v4;
  if (v6)
  {
    v24 = v6;
    v7 = objc_opt_new();
    [v7 setIdentifier:v24];
    v8 = *(a2 + 8);
    if (v8 == v5)
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    if (v9)
    {
      v27 = 0;
      v28 = 0;
      __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(v9, v9, &v28, &v27);
      v11 = v28;
      v12 = v28;
      v13 = v27;
      v14 = v27;
      objc_storeStrong(&sRenderCountSentinelDate, v11);
      objc_storeStrong(&sRenderCountData, v13);
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a2 + 16);
    if (v15 == v5)
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v25 = v14;
      v26 = v12;
      __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(v17, v16, &v26, &v25);
      v18 = v26;
      v19 = v26;

      v20 = v25;
      v21 = v25;

      objc_storeStrong(&sEngagementCountSentinelDate, v18);
      objc_storeStrong(&sEngagementCountData, v20);
      v14 = v21;
      v12 = v19;
    }

    [v7 setSectionBundleIdentifier:@"com.apple.application"];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
    if (*(a2 + 24) == v5)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(a2 + 24);
    }

    objc_storeStrong(&sRenderCounts, v22);
    if (*(a2 + 32) == v5)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a2 + 32);
    }

    objc_storeStrong(&sEngagementCounts, v23);

    v6 = v24;
  }
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v9 = 0;
  if ([v6 length])
  {
    [v6 getBytes:&v9 length:1];
    if (v9 == 9)
    {
      v7 = [v6 subdataWithRange:{1, 9}];
      v8 = [v7 bytes];
      *a3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*v8];
      *a4 = [v6 subdataWithRange:{9, objc_msgSend(v6, "length") - 9}];
    }
  }
}

- (void)resetResultWithRankingItems:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  v6 = *MEMORY[0x1E695E738];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v32 + 1) + 8 * v9) identifier];
        v11 = objc_alloc_init(MEMORY[0x1E6964E80]);
        [v11 setUniqueIdentifier:v10];
        [v11 setIsUpdate:1];
        [v11 setBundleID:@"com.apple.application"];
        v12 = objc_opt_new();
        [v12 setObject:v6 forKey:@"_kMDItemRenderData"];
        [v12 setObject:v6 forKey:@"_kMDItemEngagementData"];
        v13 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v12];
        [v11 setAttributeSet:v13];

        [v4 addObject:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v16 = v4;
  v17 = [v4 copy];
  v18 = *MEMORY[0x1E696A388];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __63__SSRankingFeedbackHandler_Tests__resetResultWithRankingItems___block_invoke;
  v30[3] = &unk_1E8595FC0;
  v19 = v14;
  v31 = v19;
  [v15 indexSearchableItems:v17 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v18 forBundleID:@"com.apple.application" options:0 completionHandler:v30];

  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  v20 = objc_alloc_init(MEMORY[0x1E6964E80]);
  [v20 setUniqueIdentifier:@"com.apple.application"];
  [v20 setIsUpdate:1];
  v21 = objc_opt_new();
  [v21 setAttribute:v6 forKey:@"_kMDItemRenderData"];
  [v21 setAttribute:v6 forKey:@"_kMDItemEngagementData"];
  [v20 setAttributeSet:v21];
  [v20 setBundleID:@"com.apple.searchd"];
  dispatch_group_enter(v19);
  v22 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v36 = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v24 = [v20 bundleID];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__SSRankingFeedbackHandler_Tests__resetResultWithRankingItems___block_invoke_2;
  v28[3] = &unk_1E8595FC0;
  v29 = v19;
  v25 = v19;
  [v22 indexSearchableItems:v23 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v18 forBundleID:v24 options:0 completionHandler:v28];

  dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  v26 = *MEMORY[0x1E69E9840];
}

- (id)getSyntheticTestRankingItem
{
  v2 = objc_opt_new();
  [v2 setSectionBundleIdentifier:@"com.apple.application"];
  [v2 setIdentifier:@"com.apple.reminders"];

  return v2;
}

- (id)getSyntheticTestRankingItemsForStressTest
{
  v2 = objc_opt_new();
  for (i = 0; i != 100000; ++i)
  {
    v4 = objc_opt_new();
    [v4 setSectionBundleIdentifier:@"com.apple.application"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.reminders.%ld", i];
    [v4 setIdentifier:v5];

    [v2 addObject:v4];
  }

  v6 = [v2 objectAtIndexedSubscript:0];
  [v6 setIdentifier:@"com.apple.reminders"];

  v7 = [v2 copy];

  return v7;
}

- (void)testForDurationWithIntervals:(int *)a3 maxIndex:(int)a4 duration:(int64_t)a5 counts:(id)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v74 = a6;
  if (testForDurationWithIntervals_maxIndex_duration_counts__onceToken != -1)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v9 = objc_opt_new();
  v10 = MEMORY[0x1E696A388];
  v76 = a3;
  if (sStressMode == 1)
  {
    v11 = [(SSRankingFeedbackHandler *)self getSyntheticTestRankingItemsForStressTest];
    v12 = objc_opt_new();
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v96;
      v16 = *MEMORY[0x1E696A388];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v96 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v95 + 1) + 8 * i) identifier];
          [v12 setObject:v16 forKey:v18];
        }

        v14 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v14);
    }

    [(SSRankingFeedbackHandler *)self resetResultWithRankingItems:obj];
    v79 = [v12 copy];
    a3 = v76;
    v10 = MEMORY[0x1E696A388];
  }

  else
  {
    v12 = [(SSRankingFeedbackHandler *)self getSyntheticTestRankingItem];
    v104 = v12;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    [(SSRankingFeedbackHandler *)self resetResultWithRankingItems:?];
    v19 = [v12 identifier];
    v102 = v19;
    v103 = *v10;
    v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
  }

  v20 = [MEMORY[0x1E695DF00] date];
  if ((a4 & 0x80000000) == 0)
  {
    v21 = a4;
    do
    {
      [v20 timeIntervalSinceReferenceDate];
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22 + a3[v21] * -86400.0];
      [v9 addObject:v23];

      --v21;
    }

    while (v21 != -1);
  }

  v75 = v20;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v24 = v9;
  v25 = [v24 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v92;
    v28 = *v10;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v92 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v91 + 1) + 8 * j);
        [(SSRankingFeedbackHandler *)self resultsWithRankingItemsDidBecomeVisible:obj date:v30 protectionClassMapping:v79];
        v31 = [obj objectAtIndexedSubscript:0];
        [(SSRankingFeedbackHandler *)self didEngageResultWithRankingItem:v31 startDate:v30 protectionClass:v28 query:@"a"];

        [(SSRankingFeedbackHandler *)self writeRenderAndEngagementInfo];
      }

      v26 = [v24 countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v26);
  }

  v32 = [(SSRankingFeedbackHandler *)self fetchResults];
  [v75 timeIntervalSinceReferenceDate];
  v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v33 + (*v76 + 364) * -86400.0];
  v35 = objc_opt_new();
  v77 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v36 = v24;
  v37 = [v36 countByEnumeratingWithState:&v87 objects:v100 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v88;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v88 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v87 + 1) + 8 * k);
        if ([v42 compare:v34] == -1)
        {
          if ([v35 count])
          {
            [v35 objectAtIndexedSubscript:0];
          }

          else
          {
            [MEMORY[0x1E695DF00] date];
          }
          v44 = ;

          v39 = v44;
        }

        else
        {
          if (!v39 || [v39 compare:v42] != -1)
          {
            v43 = v42;

            v39 = v43;
          }

          [v35 addObject:v42];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v87 objects:v100 count:16];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  v73 = v36;

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v45 = v35;
  v46 = [v45 countByEnumeratingWithState:&v83 objects:v99 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v84;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v84 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v83 + 1) + 8 * m);
        v82 = 0;
        if (v48)
        {
          v52 = [v45 objectAtIndexedSubscript:v48 - 1];
        }

        else
        {
          v52 = v39;
        }

        v53 = v52;
        [v51 timeIntervalSinceReferenceDate];
        v55 = v54;
        [v53 timeIntervalSinceReferenceDate];
        v57 = ((86400 * ((v55 - v56) / 0x15180)) / 86400.0);
        if ((a5 & 0x8000000000000000) == 0 || !v57)
        {
          v81 = 0;
          if (v57 >= 256)
          {
            v81 = (v57 + 1);
            LOBYTE(v57) = -1;
          }

          LOBYTE(v82) = v57;
          HIBYTE(v82) = 1;
          [v77 appendBytes:&v82 length:2];
          if (v81)
          {
            [v77 appendBytes:&v81 length:2];
          }

          ++v48;
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v83 objects:v99 count:16];
    }

    while (v47);
  }

  v58 = [v77 copy];
  v59 = [v58 length];
  if (!sRenderCountSentinelDate)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v60 = v59;
  [v39 timeIntervalSinceReferenceDate];
  v62 = v61;
  [sRenderCountSentinelDate timeIntervalSinceReferenceDate];
  if (v62 - v63 >= 86400.0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (!sEngagementCountSentinelDate)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  [sEngagementCountSentinelDate timeIntervalSinceReferenceDate];
  v65 = v64;
  [v39 timeIntervalSinceReferenceDate];
  if (v65 - v66 >= 86400.0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (([sEngagementCountData isEqualToData:v58] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (([sRenderCountData isEqualToData:v58] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if ([sRenderCountData length] != v60)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if ([sEngagementCountData length] != v60)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v67 = [sRenderCounts count];
  if (v67 != [v74 count])
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v68 = [sEngagementCounts count];
  if (v68 != [v74 count])
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v69 = [MEMORY[0x1E695DFD8] setWithArray:v74];
  v70 = [MEMORY[0x1E695DFD8] setWithArray:sRenderCounts];
  if (([v69 isEqualToSet:v70] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v71 = [MEMORY[0x1E695DFD8] setWithArray:sEngagementCounts];

  if (([v69 isEqualToSet:v71] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v72 = *MEMORY[0x1E69E9840];
}

uint64_t __89__SSRankingFeedbackHandler_Tests__testForDurationWithIntervals_maxIndex_duration_counts___block_invoke()
{
  userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)testCountsUptoWeek
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1DA0D54C0;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v3 maxIndex:3 duration:7 counts:&unk_1F55B7298];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsUptoMonth
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1DA0D54D0;
  v3[1] = unk_1DA0D54E0;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:7 duration:30 counts:&unk_1F55B72B0];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsUptoQuarter
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1DA0D54F0;
  v3[1] = unk_1DA0D5500;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:7 duration:90 counts:&unk_1F55B72C8];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsUptoHalfYear
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1DA0D5510;
  v3[1] = unk_1DA0D5520;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:7 duration:180 counts:&unk_1F55B72E0];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsUptoYear
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1DA0D5530;
  v4 = 0x16C0000016BLL;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v3 maxIndex:5 duration:365 counts:&unk_1F55B72F8];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsAfterYear
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1DA0D5548;
  v3[1] = unk_1DA0D5558;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:7 duration:381 counts:&unk_1F55B7310];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsAfterCoupleYears
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0x30C00000014;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:1 duration:781 counts:&unk_1F55B7328];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsMovingDaysInPast
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xFFFFFFFE00000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:1 duration:-3 counts:&unk_1F55B7340];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsMovingYearInPast
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xFFFFFE8900000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:1 duration:-376 counts:&unk_1F55B7358];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsMovingCoupleOfYearsInPast
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xFFFFFCF400000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:1 duration:-781 counts:&unk_1F55B7370];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testForDummyEntry
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0x14000000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v3 maxIndex:1 duration:321 counts:&unk_1F55B7388];
  v2 = *MEMORY[0x1E69E9840];
}

- (void)testCountsForRegularEngagement
{
  v11[364] = *MEMORY[0x1E69E9840];
  bzero(&v10, 0xB68uLL);
  v3 = 0;
  v4 = xmmword_1DA0D5490;
  v5 = xmmword_1DA0D54A0;
  v6 = v11;
  v7 = vdupq_n_s64(0x2DAuLL);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v5)), *v4.i8).u8[0])
    {
      *(v6 - 2) = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2DAuLL), *&v5)), *&v4).i8[2])
    {
      *(v6 - 1) = v3 + 1;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2DAuLL), *&v4))).i32[1])
    {
      *v6 = v3 + 2;
      v6[1] = v3 + 3;
    }

    v3 += 4;
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 += 4;
  }

  while (v3 != 732);
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v10 maxIndex:729 duration:731 counts:&unk_1F55B73A0, *v4.i64, *v5.i64];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)stressTestCounts
{
  v2 = 0;
  v7 = *MEMORY[0x1E69E9840];
  sStressMode = 1;
  v3 = xmmword_1DA0D54B0;
  memset(v6, 0, sizeof(v6));
  v4.i64[0] = 0x400000004;
  v4.i64[1] = 0x400000004;
  do
  {
    v6[v2] = v3;
    v3 = vaddq_s32(v3, v4);
    ++v2;
  }

  while (v2 != 25);
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v6 maxIndex:99 duration:101 counts:&unk_1F55B73B8, *v3.i64];
  v5 = *MEMORY[0x1E69E9840];
}

@end