@interface WFActionDonationRecommender
+ (WFActionDonationRecommender)sharedRecommender;
+ (id)donationsByRemovingDuplicatesFromDonations:(id)donations excludingAppIdentifiers:(id)identifiers includingSingleDonationPerApp:(BOOL)app;
+ (id)filterDonationsForTitleLength:(id)length;
+ (id)filteredActionDonations:(id)donations byApplicationAppIdentifier:(id)identifier;
+ (id)getDonationsFromActionResponse:(id)response;
- (NSArray)defaultRecommendations;
- (NSSet)excludedAppBundleIdentifiers;
- (WFActionDonationRecommender)init;
- (void)_fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler;
- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change;
- (void)cacheActionPredictionDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark;
- (void)cacheRecentDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark;
- (void)fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler;
- (void)fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:(id)handler;
- (void)fetchRecommendedDonationsForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation WFActionDonationRecommender

- (void)fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8374130;
  v7 = handlerCopy;
  v8 = 150;
  v6[4] = self;
  v5 = handlerCopy;
  [(WFActionDonationRecommender *)self fetchDonationsWithLimit:150 applicationBundleIdentifier:0 includeSuggestedForAllApps:1 completionHandler:v6];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v103 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v61 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E8374018;
  v65 = v9;
  v93 = v65;
  v10 = _Block_copy(aBlock);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v89;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v89 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v88 + 1) + 8 * i);
        v16 = [v15 sourceAppIdentifierForDisplay];
        v17 = v10[2](v10, v16);
        v18 = [v17 predictedActions];
        [v18 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v12);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v85;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v85 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v84 + 1) + 8 * j);
        v25 = [v24 sourceAppIdentifierForDisplay];
        v26 = v10[2](v10, v25);
        v27 = [v26 recentActions];
        [v27 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v84 objects:v101 count:16];
    }

    while (v21);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v28 = v61;
  v29 = [v28 countByEnumeratingWithState:&v80 objects:v100 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v81;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v81 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v80 + 1) + 8 * k);
        v34 = v10[2](v10, v33);
        v35 = [v34 appSuggestedActions];
        v36 = [v28 objectForKeyedSubscript:v33];
        [v35 addObjectsFromArray:v36];
      }

      v30 = [v28 countByEnumeratingWithState:&v80 objects:v100 count:16];
    }

    while (v30);
  }

  v37 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = *(a1 + 48);
    v39 = [v65 count];
    *buf = 136315650;
    v95 = "[WFActionDonationRecommender fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:]_block_invoke";
    v96 = 2048;
    v97 = v38;
    v98 = 2048;
    v99 = v39;
    _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_INFO, "%s Successfully processed donations with limit: %lu,final app count: %lu", buf, 0x20u);
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_220;
  v78[3] = &unk_1E8374090;
  v41 = a1;
  v78[4] = *(a1 + 32);
  v79 = v40;
  v42 = v40;
  [v65 enumerateKeysAndObjectsUsingBlock:v78];
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4;
  v76[3] = &unk_1E83740B8;
  v76[4] = *(a1 + 32);
  v44 = v43;
  v77 = v44;
  [v42 enumerateKeysAndObjectsUsingBlock:v76];

  v45 = v44;
  v46 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = *(a1 + 48);
    v48 = [v45 count];
    *buf = 136315650;
    v95 = "[WFActionDonationRecommender fetchRecommendedDonationsForAppPredictionsWithCompletionHandler:]_block_invoke_5";
    v96 = 2048;
    v97 = v47;
    v41 = a1;
    v98 = 2048;
    v99 = v48;
    _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_INFO, "%s Successfully processed donations with limit: %lu, final app count: %lu", buf, 0x20u);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v64 = [(objc_class *)getATXClientClass() clientForConsumerType:13];
  v51 = [v64 appPredictionsForConsumerSubType:33 limit:8];
  v52 = [v51 predictedApps];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_227;
  v74[3] = &unk_1E83800A8;
  v53 = v50;
  v75 = v53;
  [v52 enumerateObjectsUsingBlock:v74];

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_230;
  v72[3] = &unk_1E83740E0;
  v73 = v53;
  v62 = v53;
  v54 = _Block_copy(v72);
  v55 = [v45 allKeys];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3_232;
  v70[3] = &unk_1E8374108;
  v71 = v54;
  v56 = v54;
  v57 = [v55 sortedArrayUsingComparator:v70];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4_234;
  v67[3] = &unk_1E8380168;
  v68 = v49;
  v69 = v45;
  v58 = v45;
  v59 = v49;
  [v57 enumerateObjectsUsingBlock:v67];

  (*(*(v41 + 40) + 16))();
  v60 = *MEMORY[0x1E69E9840];
}

id __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    if (!v4)
    {
      v4 = objc_opt_new();
      [*(a1 + 32) setObject:v4 forKey:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v4 = a3;
  v36 = objc_opt_new();
  v5 = objc_opt_new();
  v37 = v4;
  v38 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [v4 recentActions];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 interaction];
          v13 = [v12 intent];

          v14 = VCIntentsForAllPossibleParameterCombinationsOfIntent(v13);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_221;
          v44[3] = &unk_1E8374040;
          v45 = v39;
          v46 = v5;
          v47 = v38;
          [v14 enumerateObjectsUsingBlock:v44];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v8);
  }

  v15 = [v4 appSuggestedActions];
  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v17 = v36;
    [v36 addObject:v16];

    v18 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];

    v15 = v18;
  }

  else
  {
    v17 = v36;
  }

  if ([v15 count])
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [v4 predictedActions];
  v21 = [v20 count];

  if (v19 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  v23 = [v4 predictedActions];
  v24 = [v23 subarrayWithRange:{0, v22}];
  [v17 addObjectsFromArray:v24];

  [v17 addObjectsFromArray:v5];
  v25 = [*(a1 + 32) excludedAppBundleIdentifiers];
  v26 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v17 excludingAppIdentifiers:v25 includingSingleDonationPerApp:0];

  v27 = [v26 count];
  v28 = v21 != 0;
  if (v21)
  {
    v29 = (4 - v27) & ~((4 - v27) >> 63);
  }

  else
  {
    v29 = ((4 - v27) & ~((4 - v27) >> 63)) + 1;
  }

  v30 = [v15 count];
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v15 subarrayWithRange:{0, v31}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3;
  v40[3] = &unk_1E8374068;
  v43 = v28;
  v41 = v26;
  v42 = v31;
  v33 = v26;
  [v32 enumerateObjectsUsingBlock:v40];
  [v33 addObjectsFromArray:v38];
  [*(a1 + 40) setObject:v33 forKey:v39];

  v34 = *MEMORY[0x1E69E9840];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 excludedAppBundleIdentifiers];
  v8 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v6 excludingAppIdentifiers:v7 includingSingleDonationPerApp:0];

  if ([v8 count])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
  }
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_227(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_230(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3_232(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  return v8 - v9;
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_4_234(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 addObject:v6];

  v7 = *MEMORY[0x1E69E9840];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_2_221(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = VCInteractionDonationFromINIntent(a2, *(a1 + 32));
  v7 = v5;
  v6 = 48;
  if (!a3)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v5];
}

void __95__WFActionDonationRecommender_fetchRecommendedDonationsForAppPredictionsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(a1 + 40) - 1 == a3 && ((v6 = v5, a3) || (*(a1 + 48) & 1) != 0) || (v7 = a3 + 1, v8 = [*(a1 + 32) count], v6 = v9, v8 < v7))
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    [*(a1 + 32) insertObject:v9 atIndex:v7];
  }
}

- (void)fetchRecommendedDonationsForApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionDonationRecommender.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if (identifierCopy)
  {
    v9 = 30;
  }

  else
  {
    v9 = 150;
  }

  excludedAppBundleIdentifiers = [(WFActionDonationRecommender *)self excludedAppBundleIdentifiers];
  v11 = excludedAppBundleIdentifiers;
  if (identifierCopy && [excludedAppBundleIdentifiers containsObject:identifierCopy])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__WFActionDonationRecommender_fetchRecommendedDonationsForApplicationBundleIdentifier_completionHandler___block_invoke;
    v13[3] = &unk_1E8373FF0;
    v14 = v11;
    v17 = v9;
    v15 = identifierCopy;
    v16 = handlerCopy;
    [(WFActionDonationRecommender *)self fetchDonationsWithLimit:v9 applicationBundleIdentifier:v15 includeSuggestedForAllApps:0 completionHandler:v13];
  }
}

void __105__WFActionDonationRecommender_fetchRecommendedDonationsForApplicationBundleIdentifier_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v46 = a3;
  v45 = a4;
  v48 = [v6 mutableCopy];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    v10 = 0x1E69E0000uLL;
    v47 = *v56;
    do
    {
      v11 = 0;
      v49 = v8;
      do
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = *(v10 + 2336);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 interaction];
          v15 = [v14 intent];

          v16 = VCIntentsForAllPossibleParameterCombinationsOfIntent(v15);
          v17 = objc_opt_new();
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v51 objects:v65 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v52;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v52 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v51 + 1) + 8 * i);
                v24 = [v12 sourceAppIdentifier];
                v25 = VCInteractionDonationFromINIntent(v23, v24);

                [v17 addObject:v25];
              }

              v20 = [v18 countByEnumeratingWithState:&v51 objects:v65 count:16];
            }

            while (v20);
          }

          [v48 replaceObjectsInRange:objc_msgSend(v48 withObjectsFromArray:{"indexOfObject:", v12), 1, v17}];
          v9 = v47;
          v10 = 0x1E69E0000;
          v8 = v49;
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v8);
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = a1;
  v28 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v46 excludingAppIdentifiers:a1[4] includingSingleDonationPerApp:0];
  v29 = [v28 count];
  if (v29 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v28 subarrayWithRange:{0, v30}];
  [v26 addObjectsFromArray:v45];
  [v26 addObjectsFromArray:v31];
  [v26 addObjectsFromArray:v48];
  v32 = [WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:v26 excludingAppIdentifiers:a1[4] includingSingleDonationPerApp:0];

  v33 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = a1[7];
    v35 = [v32 count];
    *buf = 136315650;
    v60 = "[WFActionDonationRecommender fetchRecommendedDonationsForApplicationBundleIdentifier:completionHandler:]_block_invoke";
    v61 = 2048;
    v62 = v34;
    v27 = a1;
    v63 = 2048;
    v64 = v35;
    _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_INFO, "%s Successfully processed recommended donations with limit: %lu, count: %lu", buf, 0x20u);
  }

  v36 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = v27[5];
    *buf = 136315394;
    v60 = "[WFActionDonationRecommender fetchRecommendedDonationsForApplicationBundleIdentifier:completionHandler:]_block_invoke";
    v61 = 2114;
    v62 = v37;
    _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", buf, 0x16u);
  }

  v38 = v27[6];
  v39 = v27[7];
  v40 = [v32 count];
  if (v39 >= v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  v42 = [v32 subarrayWithRange:{0, v41}];
  (*(v38 + 16))(v38, v42);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler
{
  appsCopy = apps;
  v158 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy__4812;
  v146 = __Block_byref_object_dispose__4813;
  v147 = 0;
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__4812;
  v140 = __Block_byref_object_dispose__4813;
  v141 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy__4812;
  v134 = __Block_byref_object_dispose__4813;
  v135 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__4812;
  v128 = __Block_byref_object_dispose__4813;
  v129 = 0;
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  limitCopy = limit;
  group = dispatch_group_create();
  if (2 * limit <= 0x32)
  {
    v11 = 50;
  }

  else
  {
    v11 = 2 * limit;
  }

  selfCopy = self;
  v87 = identifierCopy;
  if (identifierCopy)
  {
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    cachedDonationsForAllApps = [cachedDonationsPerApp objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    cachedDonationsForAllApps = [(WFActionDonationRecommender *)self cachedDonationsForAllApps];
  }

  v82 = cachedDonationsForAllApps;
  if (cachedDonationsForAllApps && [cachedDonationsForAllApps isValidWithBallpark:v11])
  {
    donations = [cachedDonationsForAllApps donations];
    v15 = v143[5];
    v143[5] = donations;

    *(v121 + 24) = 1;
  }

  else
  {
    dispatch_group_enter(group);
    v16 = getWFActionDonationsLogObject();
    v17 = os_signpost_id_generate(v16);

    v18 = getWFActionDonationsLogObject();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "FetchRecentDonations", "appIdentifier=%{signpost.telemetry:string1, Name=AppID}@", &buf, 0xCu);
    }

    v20 = MEMORY[0x1E69E0918];
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke;
    v113[3] = &unk_1E8373F78;
    v117 = &v142;
    v118 = v17;
    v116 = &v120;
    v113[4] = selfCopy;
    v114 = identifierCopy;
    v119 = v11;
    v115 = group;
    [v20 fetchDonationsForApplicationBundleIdentifier:v114 limit:v11 filteringForTopLevel:0 filteringForIsEligibleForPrediction:1 filteringForRecent:1 completion:v113];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v156 = 0x2020000000;
  v157 = 0;
  if (identifierCopy)
  {
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)selfCopy cachedActionPredictionsPerApp];
    cachedActionPredictionsForAllApps = [cachedActionPredictionsPerApp objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    cachedActionPredictionsForAllApps = [(WFActionDonationRecommender *)selfCopy cachedActionPredictionsForAllApps];
  }

  v81 = cachedActionPredictionsForAllApps;
  if (cachedActionPredictionsForAllApps && [cachedActionPredictionsForAllApps isValidWithBallpark:limitCopy])
  {
    donations2 = [cachedActionPredictionsForAllApps donations];
    v24 = v137[5];
    v137[5] = donations2;

    *(*(&buf + 1) + 24) = 1;
  }

  else
  {
    dispatch_group_enter(group);
    v25 = getWFActionDonationsLogObject();
    v26 = os_signpost_id_generate(v25);

    v27 = getWFActionDonationsLogObject();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *v151 = 134218242;
      v152 = limitCopy;
      v153 = 2112;
      v154 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "FetchPredictedDonations", "limit=%{signpost.telemetry:number1, Name=Limit}lu appIdentifier=%{signpost.telemetry:string1, Name=AppID}@", v151, 0x16u);
    }

    v29 = objc_alloc_init(getATXActionPredictionClientClass());
    if (identifierCopy)
    {
      v150 = identifierCopy;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
    }

    else
    {
      v30 = 0;
    }

    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_201;
    v106[3] = &unk_1E8373FA0;
    v110 = &v136;
    v111 = v26;
    p_buf = &buf;
    v106[4] = selfCopy;
    v107 = identifierCopy;
    v112 = limitCopy;
    v108 = group;
    [v29 getActionPredictionsForCandidateBundleIdentifiers:v30 candidateActionTypes:0 consumerType:8 consumerSubType:23 limit:limitCopy reply:v106];
  }

  v31 = MEMORY[0x1E695E0F0];
  if (!identifierCopy)
  {
    v40 = v131[5];
    v131[5] = MEMORY[0x1E695E0F0];

    if (!appsCopy)
    {
      goto LABEL_60;
    }

    v41 = objc_opt_new();
    v42 = v125[5];
    v125[5] = v41;

    v43 = +[WFDatabase defaultDatabase];
    v104 = 0;
    v44 = [v43 shortcutSuggestionsForAllAppsWithLimit:4 shortcutAvailability:0 error:&v104];
    v34 = v104;

    v45 = getWFActionDonationsLogObject();
    v46 = v45;
    if (v44)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v47 = [v44 count];
        *v151 = 136315394;
        v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
        v153 = 2048;
        v154 = v47;
        v48 = "%s Successfully fetched %lu suggested donations from all apps";
        v49 = v46;
        v50 = OS_LOG_TYPE_INFO;
LABEL_47:
        _os_log_impl(&dword_1CA256000, v49, v50, v48, v151, 0x16u);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v151 = 136315394;
      v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
      v153 = 2114;
      v154 = v34;
      v48 = "%s Error getting voice shortcut suggestions for all apps: %{public}@";
      v49 = v46;
      v50 = OS_LOG_TYPE_ERROR;
      goto LABEL_47;
    }

    excludedAppBundleIdentifiers = [(WFActionDonationRecommender *)selfCopy excludedAppBundleIdentifiers];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v33 = v44;
    v53 = [v33 countByEnumeratingWithState:&v100 objects:v149 count:16];
    if (v53)
    {
      v54 = *v101;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v101 != v54)
          {
            objc_enumerationMutation(v33);
          }

          v56 = *(*(&v100 + 1) + 8 * i);
          if (([excludedAppBundleIdentifiers containsObject:v56] & 1) == 0)
          {
            v57 = [v33 objectForKeyedSubscript:v56];
            v58 = VCActionDonationArrayFromINShortcutArray(v57, v56);
            [v125[5] setObject:v58 forKeyedSubscript:v56];
          }
        }

        v53 = [v33 countByEnumeratingWithState:&v100 objects:v149 count:16];
      }

      while (v53);
    }

    goto LABEL_58;
  }

  v32 = +[WFDatabase defaultDatabase];
  v105 = 0;
  v33 = [v32 shortcutSuggestionsForAppWithBundleIdentifier:identifierCopy shortcutAvailability:0 error:&v105];
  v34 = v105;

  v35 = getWFActionDonationsLogObject();
  v36 = v35;
  if (v34)
  {
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *v151 = 136315394;
    v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v153 = 2114;
    v154 = v34;
    v37 = "%s Error getting voice shortcut suggestions: %{public}@";
    v38 = v36;
    v39 = OS_LOG_TYPE_ERROR;
    goto LABEL_39;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v51 = [v131[5] count];
    *v151 = 136315394;
    v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v153 = 2048;
    v154 = v51;
    _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_INFO, "%s Successfully fetched suggested donations with donation count: %lu", v151, 0x16u);
  }

  v36 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *v151 = 136315394;
    v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
    v153 = 2114;
    v154 = identifierCopy;
    v37 = "%s for applicationBundleIdentifier: %{public}@";
    v38 = v36;
    v39 = OS_LOG_TYPE_DEBUG;
LABEL_39:
    _os_log_impl(&dword_1CA256000, v38, v39, v37, v151, 0x16u);
  }

LABEL_40:

  if (v33)
  {
    excludedAppBundleIdentifiers = VCActionDonationArrayFromINShortcutArray(v33, identifierCopy);
  }

  else
  {
    excludedAppBundleIdentifiers = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(v131 + 5, excludedAppBundleIdentifiers);
  if (v33)
  {
LABEL_58:

    goto LABEL_59;
  }

  v33 = 0;
LABEL_59:

LABEL_60:
  defaultRecommendations = [(WFActionDonationRecommender *)selfCopy defaultRecommendations];
  v60 = [WFActionDonationRecommender filteredActionDonations:defaultRecommendations byApplicationAppIdentifier:v87];

  if ([v60 count])
  {
    v61 = [v131[5] arrayByAddingObjectsFromArray:v60];
    v62 = v131[5];
    v131[5] = v61;

    v63 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = [v60 count];
      *v151 = 136315394;
      v152 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]";
      v153 = 2048;
      v154 = v64;
      _os_log_impl(&dword_1CA256000, v63, OS_LOG_TYPE_INFO, "%s Adding %lu default recommended donations", v151, 0x16u);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v65 = v60;
    v66 = [v65 countByEnumeratingWithState:&v96 objects:v148 count:16];
    if (v66)
    {
      v67 = *v97;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v97 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v96 + 1) + 8 * j);
          sourceAppIdentifier = [v69 sourceAppIdentifier];
          v71 = [v125[5] objectForKeyedSubscript:sourceAppIdentifier];
          v72 = v71;
          if (v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = v31;
          }

          v74 = v73;

          v75 = [v74 arrayByAddingObject:v69];

          [v125[5] setObject:v75 forKeyedSubscript:sourceAppIdentifier];
        }

        v66 = [v65 countByEnumeratingWithState:&v96 objects:v148 count:16];
      }

      while (v66);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_204;
  aBlock[3] = &unk_1E8373FC8;
  v95 = limitCopy;
  aBlock[4] = selfCopy;
  v91 = &v142;
  v92 = &v136;
  v93 = &v130;
  v76 = v87;
  v89 = v76;
  v77 = handlerCopy;
  v90 = v77;
  v94 = &v124;
  v78 = _Block_copy(aBlock);
  workQueue = [(WFActionDonationRecommender *)selfCopy workQueue];
  dispatch_group_notify(group, workQueue, v78);

  [(WFActionDonationRecommender *)selfCopy setActiveFetchGroup:group];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v124, 8);

  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v136, 8);

  _Block_object_dispose(&v142, 8);
  v80 = *MEMORY[0x1E69E9840];
}

void __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = getWFActionDonationsLogObject();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Got duplicate callback from donations fetching. Ignoring duplicate callback.", &v14, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_END, v8, "FetchRecentDonations", "", &v14, 2u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 32) cacheRecentDonations:v4 forApplicationBundleIdentifier:*(a1 + 40) ballpark:*(a1 + 80)];
    v9 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 count];
      v14 = 136315394;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Successfully fetched recent donations with donation count: %lu", &v14, 0x16u);
    }

    v11 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v14, 0x16u);
    }

    dispatch_group_leave(*(a1 + 48));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_201(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [WFActionDonationRecommender getDonationsFromActionResponse:a2];
  v4 = *(*(*(a1 + 56) + 8) + 24);
  v5 = getWFActionDonationsLogObject();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Got duplicate callback from predicted donations fetching. Ignoring duplicate callback.", &v14, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 72);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v6, OS_SIGNPOST_INTERVAL_END, v7, "FetchPredictedDonations", "", &v14, 2u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 32) cacheActionPredictionDonations:v3 forApplicationBundleIdentifier:*(a1 + 40) ballpark:*(a1 + 80)];
    v8 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 80);
      v10 = [v3 count];
      v14 = 136315650;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Successfully fetched predicted donations with ballpark: %lu, donation count: %lu", &v14, 0x20u);
    }

    v11 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v14, 0x16u);
    }

    dispatch_group_leave(*(a1 + 48));
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __129__WFActionDonationRecommender__fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_204(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setActiveFetchGroup:0];
  v2 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 88);
    v4 = [*(*(*(a1 + 56) + 8) + 40) count];
    v5 = [*(*(*(a1 + 64) + 8) + 40) count];
    v6 = [*(*(*(a1 + 72) + 8) + 40) count];
    v15 = 136316162;
    v16 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v6;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Successfully fetched recommended donations with ballpark: %lu, recent count: %lu, predicted count: %lu, suggested count: %lu", &v15, 0x34u);
  }

  v7 = getWFActionDonationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v15 = 136315394;
    v16 = "[WFActionDonationRecommender _fetchDonationsWithLimit:applicationBundleIdentifier:includeSuggestedForAllApps:completionHandler:]_block_invoke";
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s for applicationBundleIdentifier: %{public}@", &v15, 0x16u);
  }

  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = *(*(*(a1 + 72) + 8) + 40);
  v12 = *(*(*(a1 + 80) + 8) + 40);
  result = (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchDonationsWithLimit:(unint64_t)limit applicationBundleIdentifier:(id)identifier includeSuggestedForAllApps:(BOOL)apps completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8373F50;
  aBlock[4] = self;
  v18 = identifierCopy;
  appsCopy = apps;
  v19 = handlerCopy;
  limitCopy = limit;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = _Block_copy(aBlock);
  workQueue = [(WFActionDonationRecommender *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_2;
  block[3] = &unk_1E837E1F8;
  block[4] = self;
  block[5] = v14;
  dispatch_async(workQueue, block);
}

void __128__WFActionDonationRecommender_fetchDonationsWithLimit_applicationBundleIdentifier_includeSuggestedForAllApps_completionHandler___block_invoke_2(uint64_t a1)
{
  group = [*(a1 + 32) activeFetchGroup];
  if (group)
  {
    v2 = [*(a1 + 32) workQueue];
    dispatch_group_notify(group, v2, *(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (NSArray)defaultRecommendations
{
  defaultRecommendations = self->_defaultRecommendations;
  if (!defaultRecommendations)
  {
    v4 = +[WFActionDonationDefaultsRecommender defaultRecommendations];
    v5 = self->_defaultRecommendations;
    self->_defaultRecommendations = v4;

    defaultRecommendations = self->_defaultRecommendations;
  }

  return defaultRecommendations;
}

- (void)cacheActionPredictionDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark
{
  identifierCopy = identifier;
  donationsCopy = donations;
  v9 = [[WFCachedDonations alloc] initWithDonations:donationsCopy ballpark:ballpark];

  if (identifierCopy)
  {
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)self cachedActionPredictionsPerApp];
    [cachedActionPredictionsPerApp setObject:v9 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(WFActionDonationRecommender *)self setCachedActionPredictionsForAllApps:v9];
  }
}

- (void)cacheRecentDonations:(id)donations forApplicationBundleIdentifier:(id)identifier ballpark:(unint64_t)ballpark
{
  identifierCopy = identifier;
  donationsCopy = donations;
  v9 = [[WFCachedDonations alloc] initWithDonations:donationsCopy ballpark:ballpark];

  if (identifierCopy)
  {
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    [cachedDonationsPerApp setObject:v9 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(WFActionDonationRecommender *)self setCachedDonationsForAllApps:v9];
  }
}

- (NSSet)excludedAppBundleIdentifiers
{
  excludedAppBundleIdentifiers = self->_excludedAppBundleIdentifiers;
  if (!excludedAppBundleIdentifiers)
  {
    v4 = MEMORY[0x1E695DFA8];
    v5 = +[WFActionDonationRecommender disabledSpotlightApps];
    v6 = [v4 setWithSet:v5];

    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F60]];
    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F50]];
    [(NSSet *)v6 addObject:*MEMORY[0x1E69E0F38]];
    v7 = self->_excludedAppBundleIdentifiers;
    self->_excludedAppBundleIdentifiers = v6;

    excludedAppBundleIdentifiers = self->_excludedAppBundleIdentifiers;
  }

  return excludedAppBundleIdentifiers;
}

- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change
{
  if (!change)
  {
    [(WFActionDonationRecommender *)self setCachedDonationsForAllApps:0];
    cachedDonationsPerApp = [(WFActionDonationRecommender *)self cachedDonationsPerApp];
    [cachedDonationsPerApp removeAllObjects];

    [(WFActionDonationRecommender *)self setCachedActionPredictionsForAllApps:0];
    cachedActionPredictionsPerApp = [(WFActionDonationRecommender *)self cachedActionPredictionsPerApp];
    [cachedActionPredictionsPerApp removeAllObjects];
  }
}

- (WFActionDonationRecommender)init
{
  v13.receiver = self;
  v13.super_class = WFActionDonationRecommender;
  v2 = [(WFActionDonationRecommender *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedDonationsPerApp = v2->_cachedDonationsPerApp;
    v2->_cachedDonationsPerApp = v3;

    v5 = objc_opt_new();
    cachedActionPredictionsPerApp = v2->_cachedActionPredictionsPerApp;
    v2->_cachedActionPredictionsPerApp = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.shortcuts.WFActionDonationRecommender.fetchRecommendedDonations", v7);
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;

    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    [mEMORY[0x1E6996CA8] addApplicationStateObserver:v2 forEvent:0];

    v11 = v2;
  }

  return v2;
}

+ (id)getDonationsFromActionResponse:(id)response
{
  v43 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = responseCopy;
  actions = [responseCopy actions];
  v6 = [actions countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v36 = actions;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        actionUUID = [v10 actionUUID];
        uUIDString = [actionUUID UUIDString];
        v13 = uUIDString;
        if (uUIDString)
        {
          uUIDString2 = uUIDString;
        }

        else
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString2 = [uUID UUIDString];
        }

        userActivity = [v10 userActivity];

        if (userActivity)
        {
          v17 = objc_alloc(MEMORY[0x1E69E0930]);
          userActivity2 = [v10 userActivity];
          bundleId = [v10 bundleId];
          date = [MEMORY[0x1E695DF00] date];
          v21 = [v17 initWithUserActivity:userActivity2 identifier:uUIDString2 sourceAppIdentifier:bundleId date:date];

          if (v21)
          {
            [v4 addObject:v21];
          }

LABEL_12:

          goto LABEL_13;
        }

        intent = [v10 intent];
        if (intent)
        {
          v23 = intent;
          heuristic = [v10 heuristic];
          v25 = [heuristic length];

          if (!v25)
          {
            intent2 = [v10 intent];
            v21 = VCIntentsForAllPossibleParameterCombinationsOfIntent(intent2);

            firstObject = [v21 firstObject];
            v27 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:firstObject response:0];
            v28 = objc_alloc(MEMORY[0x1E69E0920]);
            [v10 bundleId];
            v30 = v29 = v4;
            v31 = [v28 initWithIdentifier:uUIDString2 sourceAppIdentifier:v30 interaction:v27];

            v4 = v29;
            if (v31)
            {
              [v29 addObject:v31];
            }

            actions = v36;
            goto LABEL_12;
          }
        }

LABEL_13:

        ++v9;
      }

      while (v7 != v9);
      v32 = [actions countByEnumeratingWithState:&v38 objects:v42 count:16];
      v7 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)filterDonationsForTitleLength:(id)length
{
  v3 = MEMORY[0x1E696AE18];
  lengthCopy = length;
  v5 = [v3 predicateWithBlock:&__block_literal_global_239];
  v6 = [lengthCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __61__WFActionDonationRecommender_filterDonationsForTitleLength___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 length] != 0;

  return v3;
}

+ (id)filteredActionDonations:(id)donations byApplicationAppIdentifier:(id)identifier
{
  donationsCopy = donations;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__WFActionDonationRecommender_filteredActionDonations_byApplicationAppIdentifier___block_invoke;
    v12[3] = &unk_1E8374158;
    v13 = identifierCopy;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [donationsCopy filteredArrayUsingPredicate:v9];
  }

  else
  {
    v10 = donationsCopy;
  }

  return v10;
}

uint64_t __82__WFActionDonationRecommender_filteredActionDonations_byApplicationAppIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceAppIdentifierForDisplay];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)donationsByRemovingDuplicatesFromDonations:(id)donations excludingAppIdentifiers:(id)identifiers includingSingleDonationPerApp:(BOOL)app
{
  appCopy = app;
  v39 = *MEMORY[0x1E69E9840];
  donationsCopy = donations;
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = donationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v28 = !appCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        sourceAppIdentifierForDisplay = [v14 sourceAppIdentifierForDisplay];
        if (!sourceAppIdentifierForDisplay)
        {
          uniqueProperty = getWFActionDonationsLogObject();
          if (os_log_type_enabled(uniqueProperty, OS_LOG_TYPE_ERROR))
          {
            fullDescription = [v14 fullDescription];
            *buf = 136315394;
            v35 = "+[WFActionDonationRecommender donationsByRemovingDuplicatesFromDonations:excludingAppIdentifiers:includingSingleDonationPerApp:]";
            v36 = 2112;
            v37 = fullDescription;
            _os_log_impl(&dword_1CA256000, uniqueProperty, OS_LOG_TYPE_ERROR, "%s Skipping donation with unexpected nil sourceAppIdentifier. Donation: %@", buf, 0x16u);
          }

LABEL_15:

          goto LABEL_16;
        }

        uniqueProperty = [v14 uniqueProperty];
        if ([v8 containsObject:uniqueProperty])
        {
          goto LABEL_15;
        }

        sourceAppIdentifierForDisplay2 = [v14 sourceAppIdentifierForDisplay];
        v18 = [identifiersCopy containsObject:sourceAppIdentifierForDisplay2];
        if (((v18 | v28) & 1) == 0)
        {
          LOBYTE(v18) = [v27 containsObject:sourceAppIdentifierForDisplay];
        }

        v19 = v18;

        if ((v19 & 1) == 0)
        {
          title = [v14 title];
          v21 = [title length];

          if (v21)
          {
            uniqueProperty2 = [v14 uniqueProperty];
            [v8 addObject:uniqueProperty2];

            [v27 addObject:sourceAppIdentifierForDisplay];
            [v26 addObject:v14];
          }
        }

LABEL_16:
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (WFActionDonationRecommender)sharedRecommender
{
  if (sharedRecommender_onceToken != -1)
  {
    dispatch_once(&sharedRecommender_onceToken, &__block_literal_global_4864);
  }

  v3 = sharedRecommender_sharedRecommender;

  return v3;
}

void __48__WFActionDonationRecommender_sharedRecommender__block_invoke()
{
  v0 = objc_alloc_init(WFActionDonationRecommender);
  v1 = sharedRecommender_sharedRecommender;
  sharedRecommender_sharedRecommender = v0;
}

@end