@interface PLLibraryScopeRuleManager
- (BOOL)_shouldTryToPropagateResultsToMomentWithInclusiveMatchedConditions:(id)a3;
- (BOOL)evaluateAssetObjectIDs:(id)a3 simulate:(BOOL)a4 predicateToFetchAssetsToEvaluate:(id)a5 withResultEnumerationBlock:(id)a6;
- (BOOL)evaluateAssetObjectIDs:(id)a3 simulate:(BOOL)a4 withResultEnumerationBlock:(id)a5;
- (BOOL)evaluateFaceObjectIDs:(id)a3 simulate:(BOOL)a4 withResultEnumerationBlock:(id)a5;
- (PLLibraryScopeRuleManager)initWithLibraryScope:(id)a3;
- (id)_fetchAssetObjectIDsContainedInMomentObjectIDs:(id)a3 excludingAssetObjectIDs:(id)a4 inManagedObjectContext:(id)a5 predicateToFetchAssetsToEvaluate:(id)a6;
- (id)_fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId:(id)a3 inManagedObjectContext:(id)a4;
- (id)_personUUIDsUsedInRules;
@end

@implementation PLLibraryScopeRuleManager

- (BOOL)_shouldTryToPropagateResultsToMomentWithInclusiveMatchedConditions:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_fetchAssetObjectIDsContainedInMomentObjectIDs:(id)a3 excludingAssetObjectIDs:(id)a4 inManagedObjectContext:(id)a5 predicateToFetchAssetsToEvaluate:(id)a6
{
  v30[3] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = MEMORY[0x1E695D5E0];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[PLManagedAsset entityName];
  v16 = [v11 fetchRequestWithEntityName:v15];

  [v16 setResultType:1];
  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND NOT self IN %@", @"moment", v14, v13];

  v30[0] = v18;
  v30[1] = v10;
  v19 = [(PLLibraryScopeRuleManager *)self _predicateToIncludeAssetsCapturedByCamera];
  v30[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v21 = [v17 andPredicateWithSubpredicates:v20];
  [v16 setPredicate:v21];

  v27 = 0;
  v22 = [v12 executeFetchRequest:v16 error:&v27];

  v23 = v27;
  if (v22)
  {
    v24 = [MEMORY[0x1E695DFD8] setWithArray:v22];
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to fetch assetObjectIDs contained in momentObjectIDs: %@", buf, 0xCu);
    }

    v24 = 0;
  }

  return v24;
}

- (id)_fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId:(id)a3 inManagedObjectContext:(id)a4
{
  v50[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695D5E0];
  v40 = a4;
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 1];
  v49[0] = v10;
  v11 = +[PLManagedAsset predicateToIncludeSharedLibrarySharingSuggestionsAssets];
  v49[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v13 = [v9 orPredicateWithSubpredicates:v12];
  v50[0] = v13;
  v14 = MEMORY[0x1E696AE18];
  v41 = v5;
  v15 = [v5 allValues];
  v16 = [v14 predicateWithFormat:@"moment in %@", v15];
  v50[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v18 = [v9 andPredicateWithSubpredicates:v17];
  [v8 setPredicate:v18];

  v19 = v8;
  [v8 setRelationshipKeyPathsForPrefetching:&unk_1F0FBFA60];
  v45 = 0;
  v20 = [v40 executeFetchRequest:v8 error:&v45];

  v21 = v45;
  if (v20)
  {
    if ([v20 count])
    {
      v22 = MEMORY[0x1E696AB28];
      v23 = [(PLLibraryScopeRuleManager *)self _predicateToIncludeAssetsSuggestedByCamera];
      v46[0] = v23;
      v24 = PLManagedAssetPredicateToFetchAssetsSuggestedForSharing();
      v46[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v26 = [v22 orPredicateWithSubpredicates:v25];

      v27 = objc_alloc(MEMORY[0x1E695DFA8]);
      v28 = [v20 filteredArrayUsingPredicate:v26];
      v29 = [v28 _pl_map:&__block_literal_global_76];
      v30 = [v27 initWithArray:v29];

      v31 = [MEMORY[0x1E695DFA8] set];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __122__PLLibraryScopeRuleManager__fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId_inManagedObjectContext___block_invoke_2;
      v42[3] = &unk_1E756ABC8;
      v43 = v30;
      v32 = v31;
      v44 = v32;
      v33 = v30;
      v34 = v41;
      [v41 enumerateKeysAndObjectsUsingBlock:v42];
      v35 = v44;
      v36 = v32;

      goto LABEL_9;
    }

    v36 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v37 = PLBackendGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v21;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to fetch assets to validate: %@", buf, 0xCu);
    }

    v36 = 0;
  }

  v34 = v41;
LABEL_9:

  return v36;
}

void __122__PLLibraryScopeRuleManager__fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId_inManagedObjectContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

id __122__PLLibraryScopeRuleManager__fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId_inManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 moment];
  v3 = [v2 objectID];

  return v3;
}

- (id)_personUUIDsUsedInRules
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(PLLibraryScopeRuleManager *)self ruleEvaluator];
  v5 = [v4 rules];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) personCondition];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 personUUIDs];
          [v3 addObjectsFromArray:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (BOOL)evaluateFaceObjectIDs:(id)a3 simulate:(BOOL)a4 withResultEnumerationBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(PLLibraryScopeRuleManager *)self _personUUIDsUsedInRules];
  v11 = 1;
  if ([v10 count])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__31054;
    v30 = __Block_byref_object_dispose__31055;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v12 = [(PLLibraryScopeRuleManager *)self libraryScope];
    v13 = [v12 photoLibrary];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__PLLibraryScopeRuleManager_evaluateFaceObjectIDs_simulate_withResultEnumerationBlock___block_invoke;
    v16[3] = &unk_1E75787D0;
    v14 = v13;
    v17 = v14;
    v18 = v8;
    v19 = v10;
    v20 = &v22;
    v21 = &v26;
    [v14 performBlockAndWait:v16];
    if ([v27[5] count])
    {
      v11 = [(PLLibraryScopeRuleManager *)self evaluateAssetObjectIDs:v27[5] simulate:v6 withResultEnumerationBlock:v9];
    }

    else
    {
      v11 = *(v23 + 24);
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v11 & 1;
}

void __87__PLLibraryScopeRuleManager_evaluateFaceObjectIDs_simulate_withResultEnumerationBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLDetectedFace entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setResultType:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@ AND %K IN %@", *(a1 + 40), @"personForFace.personUUID", *(a1 + 48)];
  [v5 setPredicate:v6];

  v20 = 0;
  v7 = [v2 executeFetchRequest:v5 error:&v20];
  v8 = v20;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = MEMORY[0x1E695D5E0];
      v10 = +[PLManagedAsset entityName];
      v11 = [v9 fetchRequestWithEntityName:v10];

      [v11 setResultType:1];
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v7];
      [v11 setPredicate:v12];

      v19 = v8;
      v13 = [v2 executeFetchRequest:v11 error:&v19];
      v14 = v19;

      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v13;

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to fetch assetObjectIDs containing in faces: %@", buf, 0xCu);
        }

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      v8 = v14;
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to fetch assetObjectIDs containing in faces: %@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)evaluateAssetObjectIDs:(id)a3 simulate:(BOOL)a4 predicateToFetchAssetsToEvaluate:(id)a5 withResultEnumerationBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 count];
  if (v13)
  {
    v14 = v13;
    *buf = 0;
    v31 = buf;
    v32 = 0x2020000000;
    v33 = 1;
    v15 = [(PLLibraryScopeRuleManager *)self libraryScope];
    v16 = [v15 photoLibrary];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke;
    v21[3] = &unk_1E756AB80;
    v17 = v16;
    v22 = v17;
    v28 = v14;
    v23 = v10;
    v24 = self;
    v25 = v11;
    v29 = a4;
    v26 = v12;
    v27 = buf;
    [v17 performTransactionAndWait:v21];
    v18 = v31[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Evaluation called on an empty array of assets.", buf, 2u);
    }

    v18 = 0;
  }

  return v18 & 1;
}

void __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke(uint64_t a1)
{
  v128[2] = *MEMORY[0x1E69E9840];
  v95 = [*(a1 + 32) managedObjectContext];
  v86 = [MEMORY[0x1E695DFA8] set];
  v84 = [MEMORY[0x1E695DFA8] set];
  v83 = [MEMORY[0x1E695DFA8] set];
  if (*(a1 + 80))
  {
    v2 = 0;
    v82 = v112;
    while (1)
    {
      v91 = objc_autoreleasePoolPush();
      v3 = *(a1 + 80) - v2 >= 0x3E8 ? 1000 : *(a1 + 80) - v2;
      v85 = v3;
      v4 = [*(a1 + 40) subarrayWithRange:v2];
      v94 = [MEMORY[0x1E695DFA8] set];
      v96 = [MEMORY[0x1E695DFA8] set];
      context = objc_autoreleasePoolPush();
      v5 = MEMORY[0x1E696AB28];
      v6 = [*(a1 + 48) _predicateToIncludeAssetsCapturedByCamera];
      v128[0] = v6;
      v7 = MEMORY[0x1E696AB28];
      v8 = *(a1 + 48);
      v127[0] = *(a1 + 56);
      v9 = [v8 _predicateToIncludeAssetsSuggestedByCamera];
      v127[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
      v11 = [v7 orPredicateWithSubpredicates:v10];
      v128[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
      v13 = [v5 andPredicateWithSubpredicates:v12];

      v14 = v4;
      v118 = 0;
      v15 = [PLMoment batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs:v4 andAssetPredicate:v13 inManagedObjectContext:v95 error:&v118];
      v16 = v118;
      v93 = v15;
      if (!v15)
      {
        break;
      }

      if ([v15 count])
      {
        v17 = [*(a1 + 48) _fetchAssetObjectIDsContainedInMomentsToPropagateForMomentIdByAssetId:v15 inManagedObjectContext:v95];
        if ([v17 count])
        {
          v87 = v13;
          if (*(a1 + 64))
          {
            v18 = v14;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v114 objects:v126 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v115;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v115 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  (*(*(a1 + 64) + 16))();
                }

                v21 = [v19 countByEnumeratingWithState:&v114 objects:v126 count:16];
              }

              while (v21);
            }

            v14 = v18;
            v15 = v93;
          }

          v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT self IN %@", v17, v82];
          v25 = [v14 filteredArrayUsingPredicate:v24];

          [v86 unionSet:v17];
          v26 = [v17 allObjects];
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v112[0] = __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke_35;
          v112[1] = &unk_1E756AB30;
          v113 = v15;
          v27 = [v26 _pl_map:v111];
          [v94 addObjectsFromArray:v27];

          [v96 unionSet:v17];
          v14 = v25;
          v13 = v87;
        }

LABEL_21:
      }

      objc_autoreleasePoolPop(context);
      contexta = v14;
      v28 = [v14 mutableCopy];
      v29 = [v86 allObjects];
      [v28 removeObjectsInArray:v29];

      v30 = MEMORY[0x1E695D5E0];
      v31 = +[PLManagedAsset entityName];
      v32 = [v30 fetchRequestWithEntityName:v31];

      v33 = MEMORY[0x1E696AB28];
      v88 = v28;
      v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v28];
      v125[0] = v34;
      v35 = [*(a1 + 48) _predicateToIncludeAssetsCapturedByCamera];
      v36 = *(a1 + 56);
      v125[1] = v35;
      v125[2] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
      v38 = [v33 andPredicateWithSubpredicates:v37];
      [v32 setPredicate:v38];

      v110 = v16;
      v39 = [v95 executeFetchRequest:v32 error:&v110];
      v40 = v110;

      if ([v39 count])
      {
        v41 = [*(a1 + 48) ruleEvaluator];
        v42 = [MEMORY[0x1E695DFD8] setWithArray:v39];
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke_43;
        v101[3] = &unk_1E756AB58;
        v109 = *(a1 + 64);
        v43 = v86;
        v44 = *(a1 + 48);
        v102 = v43;
        v103 = v44;
        v104 = v93;
        v45 = v94;
        v105 = v94;
        v106 = v96;
        v107 = v84;
        v108 = v83;
        v46 = [v41 evaluateObjects:v42 withResultEnumerationBlock:v101];

        v47 = v109;
      }

      else
      {
        v47 = PLBackendSharingGetLog();
        v45 = v94;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = *(a1 + 40);
          *buf = 138412290;
          v121 = v48;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "No assets available for this batch: %@", buf, 0xCu);
        }
      }

      v49 = v91;

      if ([v45 count])
      {
        v92 = v32;
        v50 = v49;
        v51 = v40;
        v52 = [*(a1 + 48) _fetchAssetObjectIDsContainedInMomentObjectIDs:v45 excludingAssetObjectIDs:v96 inManagedObjectContext:v95 predicateToFetchAssetsToEvaluate:*(a1 + 56)];
        v53 = v52;
        if (*(a1 + 64))
        {
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v54 = [v52 countByEnumeratingWithState:&v97 objects:v124 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v98;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v98 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                (*(*(a1 + 64) + 16))();
              }

              v55 = [v53 countByEnumeratingWithState:&v97 objects:v124 count:16];
            }

            while (v55);
          }
        }

        [v86 unionSet:v53];

        v45 = v94;
        v40 = v51;
        v49 = v50;
        v32 = v92;
      }

      v58 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = *(a1 + 80);
        *buf = 134218240;
        v121 = v85 + v2;
        v122 = 2048;
        v123 = v59;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_INFO, "Evaluated %lu assets out of %lu\n", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      v2 += 1000;
      if (v2 >= *(a1 + 80))
      {
        goto LABEL_39;
      }
    }

    v17 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v121 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch moments with error: %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_39:
  v60 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    v61 = [v86 count];
    *buf = 134217984;
    v121 = v61;
    _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_INFO, "\t%lu assets matched inclusive rule(s).\n", buf, 0xCu);
  }

  v62 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = [v84 count];
    *buf = 134217984;
    v121 = v63;
    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_INFO, "\t%lu assets matched exclusive rule(s).\n", buf, 0xCu);
  }

  v64 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [v83 count];
    *buf = 134217984;
    v121 = v65;
    _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_INFO, "\t%lu assets did not match any rule(s).\n", buf, 0xCu);
  }

  v66 = [v86 count];
  if ((*(a1 + 88) & 1) == 0)
  {
    v67 = v66;
    if (v66)
    {
      v68 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = [*(a1 + 48) libraryScope];
        *buf = 134218242;
        v121 = v67;
        v122 = 2112;
        v123 = v69;
        _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_INFO, "Contributing %lu assets to library scope %@.", buf, 0x16u);
      }

      v70 = MEMORY[0x1E695D5E0];
      v71 = +[PLManagedAsset entityName];
      v72 = [v70 fetchRequestWithEntityName:v71];

      v73 = MEMORY[0x1E696AB28];
      v74 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v86];
      v75 = *(a1 + 48);
      v76 = *(a1 + 56);
      v119[0] = v74;
      v119[1] = v76;
      v77 = [v75 _predicateToIncludeAssetsCapturedByCamera];
      v119[2] = v77;
      v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:3];
      v79 = [v73 andPredicateWithSubpredicates:v78];
      [v72 setPredicate:v79];

      v80 = [v95 enumerateObjectsFromFetchRequest:v72 count:0 usingDefaultBatchSizeWithBlock:&__block_literal_global_31083];
      if (v80)
      {
        v81 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v121 = v80;
          _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_ERROR, "Failed to fetch moments with error: %@", buf, 0xCu);
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }
  }
}

void __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 uuid];
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Asset %@ have been matched with %@.", &v17, 0x16u);
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = [v7 objectID];
    (*(v11 + 16))(v11, v12, a3, v8);
  }

  v13 = [v7 objectID];
  switch(a3)
  {
    case 0:
      v15 = *(a1 + 80);
      goto LABEL_13;
    case 2:
      v15 = *(a1 + 72);
LABEL_13:
      [v15 addObject:v13];
      break;
    case 1:
      [*(a1 + 32) addObject:v13];
      if ([*(a1 + 40) _shouldTryToPropagateResultsToMomentWithInclusiveMatchedConditions:v8])
      {
        v14 = [*(a1 + 48) objectForKeyedSubscript:v13];
        if (v14)
        {
          [*(a1 + 56) addObject:v14];
          [*(a1 + 64) addObject:v13];
        }

        else
        {
          v16 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = 138412290;
            v18 = v13;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Couldn't find moment for asset objectID: %@", &v17, 0xCu);
          }
        }
      }

      break;
  }
}

void __121__PLLibraryScopeRuleManager_evaluateAssetObjectIDs_simulate_predicateToFetchAssetsToEvaluate_withResultEnumerationBlock___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![PLSceneClassification isUtilityAssetForSharedLibrary:?])
  {
    PLLibraryScopeAssetRemoveSuggestedByClientType(v3);
    v2 = v3;
    [v2 setLibraryScopeShareState:{objc_msgSend(v2, "libraryScopeShareState") & 0xFFFFFFFFFF7FFFFFLL}];

    PLLibraryScopeAssetSetSuggestedByClientType(1, v2);
  }
}

- (BOOL)evaluateAssetObjectIDs:(id)a3 simulate:(BOOL)a4 withResultEnumerationBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil AND %K == %d AND (%K == %i OR %K == %i)", @"libraryScope", @"activeLibraryScopeParticipationState", 0, @"libraryScopeShareState", 0, @"libraryScopeShareState", 0x10000];
  LOBYTE(v5) = [(PLLibraryScopeRuleManager *)self evaluateAssetObjectIDs:v9 simulate:v5 predicateToFetchAssetsToEvaluate:v10 withResultEnumerationBlock:v8];

  return v5;
}

- (PLLibraryScopeRuleManager)initWithLibraryScope:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLLibraryScopeRuleManager;
  v5 = [(PLLibraryScopeRuleManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PLLibraryScopeRuleManager *)v5 setLibraryScope:v4];
    v7 = [v4 rulesData];
    v8 = [PLLibraryScopeRule libraryScopeRulesForLibraryScopeRulesData:v7];

    if ([v8 count])
    {
      v9 = objc_alloc_init(PLManagedAssetRuleInterpreter);
      [(PLLibraryScopeRuleManager *)v6 setInterpreter:v9];

      v10 = [PLLibraryScopeRuleEvaluator alloc];
      v11 = [(PLLibraryScopeRuleManager *)v6 interpreter];
      v12 = [(PLLibraryScopeRuleEvaluator *)v10 initWithRules:v8 andInterpreter:v11];
      [(PLLibraryScopeRuleManager *)v6 setRuleEvaluator:v12];
    }

    else
    {
      v11 = PLBackendSharingGetLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
LABEL_7:

        goto LABEL_8;
      }

      v12 = [(PLLibraryScopeRuleManager *)v6 libraryScope];
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Library scope %@ do not contain any rules.", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

@end