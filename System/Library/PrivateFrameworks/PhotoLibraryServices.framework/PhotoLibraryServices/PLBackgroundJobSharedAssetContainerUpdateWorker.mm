@interface PLBackgroundJobSharedAssetContainerUpdateWorker
+ (BOOL)_updateSharingCompositionForMemories:(id)memories inContext:(id)context error:(id *)error;
+ (BOOL)_updateSharingCompositionForSuggestions:(id)suggestions inContext:(id)context error:(id *)error;
+ (BOOL)performWorkOnAllItemsInContext:(id)context withError:(id *)error;
+ (id)_memoriesContainingAssetIds:(id)ids inContext:(id)context error:(id *)error;
+ (id)_suggestionsContainingAssetIds:(id)ids inContext:(id)context error:(id *)error;
- (id)_workItemForJobFlags:(int64_t)flags limit:(unint64_t)limit inLibrary:(id)library;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
@end

@implementation PLBackgroundJobSharedAssetContainerUpdateWorker

+ (BOOL)performWorkOnAllItemsInContext:(id)context withError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSharedAssetContainerUpdateWorker.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v26 = 0;
  v8 = [self _memoriesContainingAssetIds:0 inContext:contextCopy error:&v26];
  v9 = v26;
  if (!v8)
  {
    goto LABEL_9;
  }

  v25 = v9;
  v10 = [objc_opt_class() _updateSharingCompositionForMemories:v8 inContext:contextCopy error:&v25];
  v11 = v25;

  if ((v10 & 1) == 0)
  {
    v9 = v11;
LABEL_9:
    v16 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v17 = NSStringFromClass(self);
    *buf = 138543618;
    v28 = v17;
    v29 = 2112;
    v30 = v9;
    v18 = "%{public}@: Failed to update sharing composition for all Memories with error: %@";
    goto LABEL_14;
  }

  v24 = v11;
  v8 = [self _suggestionsContainingAssetIds:0 inContext:contextCopy error:&v24];
  v9 = v24;

  if (v8)
  {
    v23 = v9;
    v12 = [objc_opt_class() _updateSharingCompositionForSuggestions:v8 inContext:contextCopy error:&v23];
    v13 = v23;

    if (v12)
    {

      v14 = v13;
      v15 = 1;
      goto LABEL_18;
    }

    v9 = v13;
  }

  v16 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = NSStringFromClass(self);
    *buf = 138543618;
    v28 = v17;
    v29 = 2112;
    v30 = v9;
    v18 = "%{public}@: Failed to update sharing composition for all Suggestions with error: %@";
LABEL_14:
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
  }

LABEL_15:

  v19 = v9;
  v14 = v19;
  if (error)
  {
    v20 = v19;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_18:

  return v15;
}

+ (BOOL)_updateSharingCompositionForSuggestions:(id)suggestions inContext:(id)context error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromClass(self);
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%{public}@: Updating sharingComposition for Suggestions...", buf, 0xCu);
  }

  if (suggestionsCopy)
  {
    v10 = [PLSuggestion predicateForPrivateOnlyCollectionsWithinSubset:suggestionsCopy];
    v11 = [PLSuggestion predicateForSharedOnlyCollectionsWithinSubset:suggestionsCopy];
    v18 = 0;
    v12 = PLUpdateSharingCompositionForSharedAssetContainers(suggestionsCopy, &v18, v10, v11);
    v13 = v18;

    v14 = v13;
    if (v12)
    {
      v15 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  if (error)
  {
    v16 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

+ (id)_suggestionsContainingAssetIds:(id)ids inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  contextCopy = context;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLSuggestion entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setFetchBatchSize:100];
  v20[0] = @"sharingComposition";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v11 setPropertiesToFetch:v12];

  [v11 setResultType:0];
  if (idsCopy)
  {
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@ OR ANY %K IN %@", @"keyAssets", idsCopy, @"representativeSuggestionAssets", idsCopy];
    [v11 setPredicate:idsCopy];
  }

  v19 = 0;
  v14 = [contextCopy executeFetchRequest:v11 error:&v19];
  v15 = v19;
  v16 = v15;
  if (!v14 && error)
  {
    v17 = v15;
    *error = v16;
  }

  return v14;
}

+ (BOOL)_updateSharingCompositionForMemories:(id)memories inContext:(id)context error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromClass(self);
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%{public}@: Updating sharingComposition for Memories...", buf, 0xCu);
  }

  if (memoriesCopy)
  {
    v10 = [PLMemory predicateForPrivateOnlyCollectionsWithinSubset:memoriesCopy];
    v11 = [PLMemory predicateForSharedOnlyCollectionsWithinSubset:memoriesCopy];
    v18 = 0;
    v12 = PLUpdateSharingCompositionForSharedAssetContainers(memoriesCopy, &v18, v10, v11);
    v13 = v18;

    v14 = v13;
    if (v12)
    {
      v15 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  if (error)
  {
    v16 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

+ (id)_memoriesContainingAssetIds:(id)ids inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  contextCopy = context;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLMemory entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setFetchBatchSize:100];
  v20[0] = @"sharingComposition";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v11 setPropertiesToFetch:v12];

  [v11 setResultType:0];
  if (idsCopy)
  {
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@ OR ANY %K IN %@", @"extendedCuratedAssets", idsCopy, @"userCuratedAssets", idsCopy];
    [v11 setPredicate:idsCopy];
  }

  v19 = 0;
  v14 = [contextCopy executeFetchRequest:v11 error:&v19];
  v15 = v19;
  v16 = v15;
  if (!v14 && error)
  {
    v17 = v15;
    *error = v16;
  }

  return v14;
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSharedAssetContainerUpdateWorker.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__51815;
  v28[4] = __Block_byref_object_dispose__51816;
  v29 = 0;
  managedObjectContext = [libraryCopy managedObjectContext];
  v13 = itemCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__PLBackgroundJobSharedAssetContainerUpdateWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v22[3] = &unk_1E75780D8;
  v14 = v13;
  v23 = v14;
  v15 = libraryCopy;
  v27 = v28;
  v24 = v15;
  selfCopy = self;
  v16 = managedObjectContext;
  v26 = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__PLBackgroundJobSharedAssetContainerUpdateWorker_performWorkOnItem_inLibrary_completion___block_invoke_113;
  v19[3] = &unk_1E7573998;
  v17 = completionCopy;
  v20 = v17;
  v21 = v28;
  [v15 performTransaction:v22 completionHandler:v19];

  _Block_object_dispose(v28, 8);
}

void __90__PLBackgroundJobSharedAssetContainerUpdateWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v2 = 0x1E695D000uLL;
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  v4 = +[PLBackgroundJobWorkItem entityName];
  v5 = [v3 initWithEntityName:v4];

  v6 = 0x1E696A000uLL;
  v7 = MEMORY[0x1E696AE18];
  v8 = [*(a1 + 32) flags];
  v9 = [*(a1 + 32) identifiers];
  v10 = [v7 predicateWithFormat:@"%K == %d AND %K == %d AND %K IN %@", @"jobType", 9, @"jobFlags", v8, @"identifier", v9];
  [v5 setPredicate:v10];

  v11 = [*(a1 + 40) managedObjectContext];
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  v13 = [v11 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v12 + 40), obj);

  if (!v13)
  {
    v18 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_66:

      goto LABEL_67;
    }

    v53 = objc_opt_class();
    v24 = NSStringFromClass(v53);
    v54 = [*(a1 + 32) flags];
    v55 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543874;
    v141 = v24;
    v142 = 2048;
    v143 = v54;
    v144 = 2112;
    v145 = v55;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to fetch work items for %{public}@ with flags %lld matching identifiers. Error: %@", buf, 0x20u);
LABEL_65:

    goto LABEL_66;
  }

  if (([*(a1 + 32) flags] & 1) == 0)
  {
    goto LABEL_3;
  }

  v56 = MEMORY[0x1E695D5E0];
  v57 = +[PLManagedAsset entityName];
  v18 = [v56 fetchRequestWithEntityName:v57];

  v58 = MEMORY[0x1E696AE18];
  v59 = [*(a1 + 32) identifiers];
  v60 = [v58 predicateWithFormat:@"%K IN %@", @"uuid", v59];
  [v18 setPredicate:v60];

  v61 = *(a1 + 56);
  v62 = *(*(a1 + 64) + 8);
  v135 = *(v62 + 40);
  v63 = [v61 executeFetchRequest:v18 error:&v135];
  objc_storeStrong((v62 + 40), v135);
  v64 = PLBackendGetLog();
  v65 = v64;
  if (!v63)
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v94 = objc_opt_class();
      v95 = NSStringFromClass(v94);
      v96 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v141 = v95;
      v142 = 2112;
      v143 = v96;
      _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch asset ids with error: %@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v66 = objc_opt_class();
    v67 = NSStringFromClass(v66);
    v68 = [v63 count];
    *buf = 138543618;
    v141 = v67;
    v142 = 2048;
    v143 = v68;
    _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_INFO, "%{public}@: Processing %tu assets", buf, 0x16u);
  }

  v69 = objc_opt_class();
  v70 = *(a1 + 56);
  v71 = *(*(a1 + 64) + 8);
  v134 = *(v71 + 40);
  v72 = [v69 _memoriesContainingAssetIds:v63 inContext:v70 error:&v134];
  objc_storeStrong((v71 + 40), v134);
  if (!v72)
  {
    v97 = PLBackendGetLog();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      v100 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v141 = v99;
      v142 = 2112;
      v143 = v100;
      _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch memories with error: %@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  v115 = v13;
  v116 = v63;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v73 = v72;
  v74 = [v73 countByEnumeratingWithState:&v130 objects:v139 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v131;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v131 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(a1 + 40);
        v79 = [*(*(&v130 + 1) + 8 * i) uuid];
        v80 = [v78 addBackgroundJobWorkItemIfNeededWithIdentifier:v79 jobType:9 jobFlags:2];
      }

      v75 = [v73 countByEnumeratingWithState:&v130 objects:v139 count:16];
    }

    while (v75);
  }

  v81 = objc_opt_class();
  v82 = *(a1 + 56);
  v83 = *(*(a1 + 64) + 8);
  v129 = *(v83 + 40);
  v84 = v116;
  v85 = [v81 _suggestionsContainingAssetIds:v116 inContext:v82 error:&v129];
  objc_storeStrong((v83 + 40), v129);
  if (v85)
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v86 = v85;
    v87 = [v86 countByEnumeratingWithState:&v125 objects:v138 count:16];
    if (v87)
    {
      v88 = v87;
      v114 = v5;
      v89 = *v126;
      do
      {
        for (j = 0; j != v88; ++j)
        {
          if (*v126 != v89)
          {
            objc_enumerationMutation(v86);
          }

          v91 = *(a1 + 40);
          v92 = [*(*(&v125 + 1) + 8 * j) uuid];
          v93 = [v91 addBackgroundJobWorkItemIfNeededWithIdentifier:v92 jobType:9 jobFlags:4];
        }

        v88 = [v86 countByEnumeratingWithState:&v125 objects:v138 count:16];
      }

      while (v88);
      v5 = v114;
      v6 = 0x1E696A000;
      v84 = v116;
    }
  }

  else
  {
    v86 = PLBackendGetLog();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v109 = objc_opt_class();
      v110 = NSStringFromClass(v109);
      v111 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v141 = v110;
      v142 = 2112;
      v143 = v111;
      _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch suggestions with error: %@", buf, 0x16u);
    }
  }

  v13 = v115;
  v2 = 0x1E695D000;
  if (v85)
  {
LABEL_3:
    v14 = v6;
    if (([*(a1 + 32) flags] & 2) == 0)
    {
      goto LABEL_9;
    }

    v15 = v2;
    v16 = *(v2 + 1504);
    v17 = +[PLMemory entityName];
    v18 = [v16 fetchRequestWithEntityName:v17];

    v19 = *(v14 + 3608);
    v20 = [*(a1 + 32) identifiers];
    v21 = [v19 predicateWithFormat:@"%K IN %@", @"uuid", v20];
    [v18 setPredicate:v21];

    v22 = *(a1 + 56);
    v23 = *(*(a1 + 64) + 8);
    v124 = *(v23 + 40);
    v24 = [v22 executeFetchRequest:v18 error:&v124];
    objc_storeStrong((v23 + 40), v124);
    v25 = PLBackendGetLog();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = [v24 count];
        *buf = 138543618;
        v141 = v28;
        v142 = 2048;
        v143 = v29;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "%{public}@: Processing %tu Memories", buf, 0x16u);
      }

      v30 = objc_opt_class();
      v31 = *(a1 + 56);
      v32 = *(*(a1 + 64) + 8);
      v123 = *(v32 + 40);
      v33 = [v30 _updateSharingCompositionForMemories:v24 inContext:v31 error:&v123];
      objc_storeStrong((v32 + 40), v123);
      if (v33)
      {

        v2 = v15;
LABEL_9:
        if (([*(a1 + 32) flags] & 4) == 0)
        {
          goto LABEL_15;
        }

        v34 = *(v2 + 1504);
        v35 = +[PLSuggestion entityName];
        v18 = [v34 fetchRequestWithEntityName:v35];

        v36 = *(v14 + 3608);
        v37 = [*(a1 + 32) identifiers];
        v38 = [v36 predicateWithFormat:@"%K IN %@", @"uuid", v37];
        [v18 setPredicate:v38];

        v39 = *(a1 + 56);
        v40 = *(*(a1 + 64) + 8);
        v122 = *(v40 + 40);
        v24 = [v39 executeFetchRequest:v18 error:&v122];
        objc_storeStrong((v40 + 40), v122);
        v41 = PLBackendGetLog();
        v26 = v41;
        if (v24)
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = [v24 count];
            *buf = 138543618;
            v141 = v43;
            v142 = 2048;
            v143 = v44;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "%{public}@: Processing %tu suggestions", buf, 0x16u);
          }

          v45 = objc_opt_class();
          v46 = *(a1 + 56);
          v47 = *(*(a1 + 64) + 8);
          v121 = *(v47 + 40);
          v48 = [v45 _updateSharingCompositionForSuggestions:v24 inContext:v46 error:&v121];
          objc_storeStrong((v47 + 40), v121);
          if (v48)
          {

LABEL_15:
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v18 = v13;
            v49 = [v18 countByEnumeratingWithState:&v117 objects:v137 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v118;
              do
              {
                for (k = 0; k != v50; ++k)
                {
                  if (*v118 != v51)
                  {
                    objc_enumerationMutation(v18);
                  }

                  [*(a1 + 56) deleteObject:*(*(&v117 + 1) + 8 * k)];
                }

                v50 = [v18 countByEnumeratingWithState:&v117 objects:v137 count:16];
              }

              while (v50);
            }

            goto LABEL_66;
          }

          v26 = PLBackendGetLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          v112 = objc_opt_class();
          v102 = NSStringFromClass(v112);
          v113 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138543618;
          v141 = v102;
          v142 = 2112;
          v143 = v113;
          v104 = "%{public}@: failed to update sharing composition for Suggestions with error: %@.";
          goto LABEL_63;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v107 = objc_opt_class();
          v102 = NSStringFromClass(v107);
          v108 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138543618;
          v141 = v102;
          v142 = 2112;
          v143 = v108;
          v104 = "%{public}@: Failed to fetch Suggestions with error: %@";
          goto LABEL_63;
        }

LABEL_64:

        goto LABEL_65;
      }

      v26 = PLBackendGetLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v105 = objc_opt_class();
      v102 = NSStringFromClass(v105);
      v106 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v141 = v102;
      v142 = 2112;
      v143 = v106;
      v104 = "%{public}@: failed to update sharing composition for Memories with error: %@.";
    }

    else
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      v103 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v141 = v102;
      v142 = 2112;
      v143 = v103;
      v104 = "%{public}@: Failed to fetch Memories with error: %@";
    }

LABEL_63:
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, v104, buf, 0x16u);

    goto LABEL_64;
  }

LABEL_67:
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  v43 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  criteriasCopy = criterias;
  v6 = +[PLBackgroundJobCriteria criteriaForDiscretionaryResourceWorker];
  v7 = [criteriasCopy containsObject:v6];

  if (v7)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__51815;
    v40 = __Block_byref_object_dispose__51816;
    v41 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __102__PLBackgroundJobSharedAssetContainerUpdateWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
    v33[3] = &unk_1E7578820;
    v35 = &v36;
    v33[4] = self;
    v34 = libraryCopy;
    [v34 performBlockAndWait:v33];
    identifiers = [v37[5] identifiers];
    v9 = [identifiers count] == 0;

    if (v9)
    {
      initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    }

    else
    {
      if (([v37[5] flags] & 6) != 0)
      {
        v10 = 5;
      }

      else
      {
        v10 = 100;
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      identifiers2 = [v37[5] identifiers];
      v13 = [identifiers2 countByEnumeratingWithState:&v29 objects:v42 count:16];
      if (v13)
      {
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(identifiers2);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            if (![v11 count] || (objc_msgSend(v11, "lastObject"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count") < v10, v17, !v18))
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v11 addObject:v19];
            }

            lastObject = [v11 lastObject];
            [lastObject addObject:v16];
          }

          v13 = [identifiers2 countByEnumeratingWithState:&v29 objects:v42 count:16];
        }

        while (v13);
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __102__PLBackgroundJobSharedAssetContainerUpdateWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke_2;
      v28[3] = &unk_1E756D8C8;
      v28[4] = &v36;
      v21 = [v11 _pl_map:v28];
      v22 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v23 = +[PLBackgroundJobCriteria criteriaForDiscretionaryResourceWorker];
      initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)v22 initWithCriteria:v23 workItemsNeedingProcessing:v21];
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return initWithZeroWorkItems;
}

void __102__PLBackgroundJobSharedAssetContainerUpdateWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) identifiers];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = [*(a1 + 32) _workItemForJobFlags:1 limit:400 inLibrary:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = [*(*(*(a1 + 48) + 8) + 40) identifiers];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [*(a1 + 32) _workItemForJobFlags:2 limit:400 inLibrary:*(a1 + 40)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(*(*(a1 + 48) + 8) + 40) identifiers];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = [*(a1 + 32) _workItemForJobFlags:4 limit:400 inLibrary:*(a1 + 40)];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

PLBackgroundJobSharedAssetContainerUpdateWorkItem *__102__PLBackgroundJobSharedAssetContainerUpdateWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PLBackgroundJobSharedAssetContainerUpdateWorkItem alloc];
  v5 = [*(*(*(a1 + 32) + 8) + 40) flags];
  v6 = [v3 copy];

  v7 = [(PLBackgroundJobSharedAssetContainerUpdateWorkItem *)v4 initWithFlags:v5 identifiers:v6];

  return v7;
}

- (id)_workItemForJobFlags:(int64_t)flags limit:(unint64_t)limit inLibrary:(id)library
{
  libraryCopy = library;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PLBackgroundJobSharedAssetContainerUpdateWorker__workItemForJobFlags_limit_inLibrary___block_invoke;
  v16[3] = &unk_1E7576428;
  v17 = libraryCopy;
  selfCopy = self;
  v19 = v9;
  flagsCopy = flags;
  limitCopy = limit;
  v10 = v9;
  v11 = libraryCopy;
  [v11 performBlockAndWait:v16];
  v12 = [PLBackgroundJobSharedAssetContainerUpdateWorkItem alloc];
  v13 = [v10 copy];
  v14 = [(PLBackgroundJobSharedAssetContainerUpdateWorkItem *)v12 initWithFlags:flags identifiers:v13];

  return v14;
}

void __88__PLBackgroundJobSharedAssetContainerUpdateWorker__workItemForJobFlags_limit_inLibrary___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695D5E0]);
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 initWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d", @"jobType", 9, @"jobFlags", *(a1 + 56)];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:100];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"timestamp" ascending:1];
  v36[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v4 setSortDescriptors:v7];

  v8 = [*(a1 + 32) managedObjectContext];
  v28 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v28];
  v10 = v28;

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          if ([*(a1 + 48) count] >= *(a1 + 64))
          {
            objc_autoreleasePoolPop(v17);
            goto LABEL_12;
          }

          v18 = *(a1 + 48);
          v19 = [v16 identifier];
          [v18 addObject:v19];

          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v10 = v23;
    }
  }

  else
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = *(a1 + 56);
      *buf = 138543874;
      v31 = v21;
      v32 = 2048;
      v33 = v22;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch work items for %{public}@ with flags %lld. Error: %@", buf, 0x20u);
    }
  }
}

@end