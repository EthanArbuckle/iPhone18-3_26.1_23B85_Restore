@interface PLBackgroundJobStableHashWorker
- (BOOL)_checkItems:(id)a3 forType:(signed __int16)a4 library:(id)a5;
- (BOOL)_generateStableHashesForAssetUUIDs:(id)a3 isEntireLibraryMode:(BOOL)a4 workItemIdentifiersToRemove:(id)a5 library:(id)a6 error:(id *)a7;
- (BOOL)_hasProcessedEntireLibrary:(id)a3;
- (BOOL)_isInitialEntireLibraryWorkItem:(id)a3;
- (BOOL)_isJobCancelled;
- (BOOL)_processOnItem:(id)a3 inLibrary:(id)a4 error:(id *)a5;
- (PLBackgroundJobStableHashWorker)initWithLibraryBundle:(id)a3;
- (id)_backgroundJobWorkItemsFromObjectIDs:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (id)_fetchNextBatchFromEntireInLibrary:(id)a3 error:(id *)a4;
- (id)_fingerPrintScheme;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)_processStableHashesOnResourcesForAsset:(id)a3;
- (void)_setProcessedEntireLibrary:(id)a3;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
@end

@implementation PLBackgroundJobStableHashWorker

- (void)_processStableHashesOnResourcesForAsset:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 deferredProcessingNeeded])
  {
    v21 = v4;
    v5 = [v4 persistedResourcesMatching:&__block_literal_global_80482];
    v6 = [(PLBackgroundJobStableHashWorker *)self _fingerPrintScheme];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      v12 = *v24;
      *&v9 = 138543618;
      v20 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 fileURL];
          if (v15)
          {
            v22 = v11;
            v16 = [v6 fingerPrintForFileAtURL:v15 error:&v22];
            v17 = v22;

            if (v16)
            {
              [v14 setFingerprint:v16];
            }

            else
            {
              v18 = PLBackgroundJobServiceGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = [v21 uuid];
                *buf = v20;
                v28 = v19;
                v29 = 2112;
                v30 = v17;
                _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to generate the stable hash for asset: %{public}@. Error: %@", buf, 0x16u);
              }
            }

            v11 = v17;
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v4 = v21;
  }
}

uint64_t __75__PLBackgroundJobStableHashWorker__processStableHashesOnResourcesForAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 cplType];
  v4 = [v2 version];
  v5 = [v2 fingerprint];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v2 stableHash];
    v6 = v7 == 0;
  }

  if (v3 == 16 || v3 == 2)
  {
    v8 = (v4 == 2) & v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_generateStableHashesForAssetUUIDs:(id)a3 isEntireLibraryMode:(BOOL)a4 workItemIdentifiersToRemove:(id)a5 library:(id)a6 error:(id *)a7
{
  v52[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = MEMORY[0x1E696AB28];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"complete"];
  v52[0] = v17;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v10];
  v52[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v20 = [v16 andPredicateWithSubpredicates:v19];
  [v15 setPredicate:v20];

  v51[0] = @"additionalAttributes";
  v51[1] = @"modernResources";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  [v15 setRelationshipKeyPathsForPrefetching:v21];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__80496;
  v45 = __Block_byref_object_dispose__80497;
  v46 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __132__PLBackgroundJobStableHashWorker__generateStableHashesForAssetUUIDs_isEntireLibraryMode_workItemIdentifiersToRemove_library_error___block_invoke;
  v32[3] = &unk_1E7572710;
  v22 = v12;
  v33 = v22;
  v23 = v15;
  v38 = &v41;
  v34 = v23;
  v35 = self;
  v24 = v11;
  v36 = v24;
  v39 = &v47;
  v40 = a4;
  v25 = v10;
  v37 = v25;
  [v22 performTransactionAndWait:v32];
  v26 = *(v48 + 24);
  v27 = v42[5];
  if (a7 && (v26 & 1) == 0)
  {
    v27 = v27;
    *a7 = v27;
  }

  v28 = *(v48 + 24);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  return v28 & 1;
}

void __132__PLBackgroundJobStableHashWorker__generateStableHashesForAssetUUIDs_isEntireLibraryMode_workItemIdentifiersToRemove_library_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (v5)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__80496;
    v35 = __Block_byref_object_dispose__80497;
    v36 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __132__PLBackgroundJobStableHashWorker__generateStableHashesForAssetUUIDs_isEntireLibraryMode_workItemIdentifiersToRemove_library_error___block_invoke_2;
    v25[3] = &unk_1E75726E8;
    v24 = *(a1 + 48);
    *(&v6 + 1) = *(&v24 + 1);
    *&v6 = *(a1 + 72);
    v23 = v6;
    v7 = *(&v24 + 1);
    *&v8 = v23;
    *(&v8 + 1) = *(a1 + 80);
    v26 = v24;
    v27 = v8;
    p_buf = &buf;
    [v5 enumerateObjectsUsingBlock:v25];
    if (*(a1 + 88) == 1)
    {
      v9 = [*(*(&buf + 1) + 40) additionalAttributes];
      v10 = [v9 objectID];
      v11 = [*(a1 + 32) globalValues];
      [v11 setStableHashResumeObjectID:v10];
    }

    else
    {
      v9 = [*(a1 + 64) mutableCopy];
      v10 = [v5 valueForKey:@"uuid"];
      v14 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      [v9 minusSet:v14];

      [*(a1 + 56) unionSet:v9];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 72) + 8) + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to fetch assets from uuids. Error: %@", &buf, 0xCu);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v15 = [*(a1 + 32) libraryServicesManager];
  v16 = [v15 isCloudPhotoLibraryEnabled];

  if (v16)
  {
    v17 = [*(a1 + 32) managedObjectContext];
    [v17 rollback];

    v18 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Stable hash processing - CPL status changed";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:50002 userInfo:v19];
    v21 = *(*(a1 + 72) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

void __132__PLBackgroundJobStableHashWorker__generateStableHashesForAssetUUIDs_isEntireLibraryMode_workItemIdentifiersToRemove_library_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v26 = 0;
  v8 = [v6 originalStableHashCacheIfNecessaryAndAdjustedStableHash:&v26 fullsizeRenderImageIfNecessary:0 enableSaveIfNecessary:0 error:&obj];
  v9 = v26;
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 32) _processStableHashesOnResourcesForAsset:v6];
  }

  else
  {
    v10 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 uuidDescription];
      v12 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to generate the stable hash for asset %{public}@. Error: %@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  v14 = [v6 uuid];
  [v13 addObject:v14];

  v15 = [*(a1 + 32) _isJobCancelled];
  if (a4 && v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Stable hash processing was cancelled";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = [v16 errorWithDomain:v17 code:50005 userInfo:v18];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }

  v22 = *(*(a1 + 64) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v6;
  v24 = v6;
}

- (BOOL)_checkItems:(id)a3 forType:(signed __int16)a4 library:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PLBackgroundJobStableHashWorker__checkItems_forType_library___block_invoke;
  v14[3] = &unk_1E75726C0;
  v9 = v7;
  v15 = v9;
  v16 = &v18;
  v17 = a4;
  [v8 performBlockAndWait:v14];
  if (v19[3])
  {
    v10 = 1;
  }

  else
  {
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Work items contains incorrect job types", v13, 2u);
    }

    v10 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v10 & 1;
}

void __63__PLBackgroundJobStableHashWorker__checkItems_forType_library___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) valueForKey:@"jobType"];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:?];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = [v2 anyObject];
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) == [v3 integerValue];
  }
}

- (id)_fetchNextBatchFromEntireInLibrary:(id)a3 error:(id *)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 globalValues];
  v7 = [v6 stableHashResumeObjectID];

  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLAdditionalAssetAttributes entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"originalStableHash"];
  v29[0] = v12;
  if (v7)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v7];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;
  v29[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  [v10 setResultType:2];
  v28 = @"asset.uuid";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v10 setPropertiesToFetch:v16];

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v27 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v10 setSortDescriptors:v18];

  [v10 setFetchLimit:100];
  v26 = @"asset";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v19];

  v20 = [v5 managedObjectContext];

  v21 = [v20 executeFetchRequest:v10 error:a4];

  if (v21)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__PLBackgroundJobStableHashWorker__fetchNextBatchFromEntireInLibrary_error___block_invoke;
    v24[3] = &unk_1E7572698;
    v25 = @"asset.uuid";
    v22 = [v21 _pl_map:v24];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_backgroundJobWorkItemsFromObjectIDs:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = a3;
  v10 = +[PLBackgroundJobWorkItem entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v9];

  [v11 setPredicate:v12];
  v13 = [v8 executeFetchRequest:v11 error:a5];

  return v13;
}

- (BOOL)_processOnItem:(id)a3 inLibrary:(id)a4 error:(id *)a5
{
  v83[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v8 == 0;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__80496;
  v76 = __Block_byref_object_dispose__80497;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__80496;
  v70 = __Block_byref_object_dispose__80497;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__80496;
  v64 = __Block_byref_object_dispose__80497;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __66__PLBackgroundJobStableHashWorker__processOnItem_inLibrary_error___block_invoke;
  v43[3] = &unk_1E7572648;
  v51 = v8 == 0;
  v46 = &v60;
  v43[4] = self;
  v12 = v9;
  v44 = v12;
  v47 = &v72;
  v48 = &v52;
  v49 = &v56;
  v13 = v8;
  v45 = v13;
  v50 = &v66;
  [v12 performBlockAndWait:v43];
  if (![v61[5] count])
  {
LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  if (!v8 || [(PLBackgroundJobStableHashWorker *)self _checkItems:v67[5] forType:8 library:v12])
  {
    v14 = [v12 libraryServicesManager];
    v15 = [v14 isCloudPhotoLibraryEnabled];

    if (v15)
    {
      v16 = 1;
      *(v53 + 24) = 1;
      *(v57 + 24) = v10;
      goto LABEL_9;
    }

    v17 = [MEMORY[0x1E695DFD8] setWithArray:v61[5]];
    v18 = v8 == 0;
    v19 = v73;
    obj = v73[5];
    v20 = [(PLBackgroundJobStableHashWorker *)self _generateStableHashesForAssetUUIDs:v17 isEntireLibraryMode:v18 workItemIdentifiersToRemove:v11 library:v12 error:&obj];
    objc_storeStrong(v19 + 5, obj);
    *(v53 + 24) = v20;

    goto LABEL_7;
  }

  v21 = MEMORY[0x1E696ABC0];
  v82 = *MEMORY[0x1E696A578];
  v83[0] = @"Work item doesn't match expected type";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
  v23 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:50007 userInfo:v22];
  v24 = v73[5];
  v73[5] = v23;

  v16 = 0;
  *(v53 + 24) = 0;
LABEL_9:
  if ((v53[3] & 1) == 0)
  {
    if (PLErrorOrUnderlyingErrorHasDomainAndCode())
    {
      v25 = v73[5];
      v73[5] = 0;
    }

    else
    {
      v25 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v61[5] count];
        v27 = v73[5];
        *buf = 134218242;
        v79 = v26;
        v80 = 2112;
        v81 = v27;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to process stable hashes for %td asset uuids. Error: %@", buf, 0x16u);
      }
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __66__PLBackgroundJobStableHashWorker__processOnItem_inLibrary_error___block_invoke_68;
  v34[3] = &unk_1E7572670;
  v40 = v10;
  v37 = &v56;
  v38 = &v52;
  v34[4] = self;
  v28 = v12;
  v35 = v28;
  v39 = &v66;
  v41 = v16;
  v29 = v11;
  v36 = v29;
  [v28 performTransactionAndWait:v34];
  v30 = *(v53 + 24);
  v31 = v73[5];
  if (a5 && (v30 & 1) == 0)
  {
    v31 = v31;
    *a5 = v31;
  }

  v32 = *(v53 + 24);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  return v32 & 1;
}

void __66__PLBackgroundJobStableHashWorker__processOnItem_inLibrary_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 64) + 8);
    obj = *(v4 + 40);
    v5 = [v2 _fetchNextBatchFromEntireInLibrary:v3 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 56) + 8) + 40);
    if (v8)
    {
      if ([v8 count] <= 0x63)
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }
    }

    else
    {
      v20 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to fetch entire library next batch. Error: %@", buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) managedObjectContext];
    v12 = *(*(a1 + 64) + 8);
    v24 = *(v12 + 40);
    v13 = [v10 _backgroundJobWorkItemsFromObjectIDs:v9 inManagedObjectContext:v11 error:&v24];
    objc_storeStrong((v12 + 40), v24);
    v14 = *(*(a1 + 88) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(*(*(a1 + 88) + 8) + 40);
    if (v16)
    {
      v17 = [v16 valueForKey:@"identifier"];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v22 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412290;
        v27 = v23;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to query background job work items. Error: %@", buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }
}

void __66__PLBackgroundJobStableHashWorker__processOnItem_inLibrary_error___block_invoke_68(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) == 1)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);

      [v2 _setProcessedEntireLibrary:v3];
    }
  }

  else
  {
    v4 = [*(a1 + 40) managedObjectContext];
    v5 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(*(*(a1 + 72) + 8) + 40) count];
      *buf = 134217984;
      v25 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Stable Hash Worker: Work items to remove: %td", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v20;
      *&v9 = 138412290;
      v18 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          if ((*(a1 + 81) & 1) != 0 || (v14 = *(a1 + 48), [*(*(&v19 + 1) + 8 * v12) identifier], v15 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v14, "containsObject:", v15), v15, v14))
          {
            [v4 deleteObject:{v13, v18, v19}];
            v16 = PLBackgroundJobServiceGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = [v13 identifier];
              *buf = v18;
              v25 = v17;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Stable Hash Worker: Removed item: %@", buf, 0xCu);
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }
}

- (id)_fingerPrintScheme
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__80496;
  v8 = __Block_byref_object_dispose__80497;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __53__PLBackgroundJobStableHashWorker__fingerPrintScheme__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (!v2)
  {
    v3 = [MEMORY[0x1E6994AE0] fingerprintSchemeForStableHash];
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;

    v2 = *(*(a1 + 32) + 104);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (BOOL)_isInitialEntireLibraryWorkItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 firstObject];
      v6 = [v5 isEqualToString:@"BackgroundJobStableHashProcessEntireLibrary"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setProcessedEntireLibrary:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Stable Hash Worker: updating entire library processed status for library %@", &v6, 0xCu);
  }

  v5 = [v3 globalValues];
  [v5 setStableHashProcessingCompleted:1];
}

- (BOOL)_hasProcessedEntireLibrary:(id)a3
{
  v3 = [a3 globalValues];
  v4 = [v3 hasStableHashProcessingCompleted];

  return v4;
}

- (void)stopWorkingOnItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Stable Hash Worker: %{public}@ stopWorkingOnItem: %p", buf, 0x16u);
  }

  v8 = v3;
  v7 = v3;
  PLSafeRunWithUnfairLock();
}

- (BOOL)_isJobCancelled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobStableHashWorker.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobStableHashWorker.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  if ([(PLBackgroundJobStableHashWorker *)self _isJobCancelled])
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:50005 userInfo:0];
    v11[2](v11, v12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(PLBackgroundJobStableHashWorker *)self _isInitialEntireLibraryWorkItem:v9];
      v14 = v13;
      if (v13 && [(PLBackgroundJobStableHashWorker *)self _hasProcessedEntireLibrary:v10])
      {
        v15 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Stable Hash Worker: Skipping, switching over to incremental", buf, 2u);
        }
      }

      else if (![(PLBackgroundJobStableHashWorker *)self _isJobCancelled])
      {
        v23 = +[PLConcurrencyLimiter sharedLimiter];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __74__PLBackgroundJobStableHashWorker_performWorkOnItem_inLibrary_completion___block_invoke;
        v26[3] = &unk_1E7572620;
        v31 = v14;
        v27 = v9;
        v28 = self;
        v29 = v10;
        v30 = v11;
        [v23 async:v26 identifyingBlock:0 library:v29];

        goto LABEL_17;
      }

      v11[2](v11, 0);
    }

    else
    {
      v16 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543362;
        v35 = v18;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Unexpected work item class type: %{public}@", buf, 0xCu);
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E69BFF48];
      v32 = *MEMORY[0x1E696A578];
      v33 = @"Stable hash processing - invalid work item";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v22 = [v19 errorWithDomain:v20 code:50007 userInfo:v21];
      v11[2](v11, v22);
    }
  }

LABEL_17:
}

void __74__PLBackgroundJobStableHashWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = 0;
  v6 = [v4 _processOnItem:v3 inLibrary:v5 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = @"incremental";
      if (*(a1 + 64))
      {
        v9 = @"entire";
      }

      *buf = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Failed to process stable hashes on %{public}@ library. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobStableHashWorker.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v9 = [(PLBackgroundJobWorker *)self libraryBundle];
  v10 = [v9 libraryServicesManager];

  v11 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
  v12 = +[PLBackgroundJobCriteria criteriaForStableHashWorker];
  v13 = [v8 containsObject:v12];

  if (v13)
  {
    v14 = [v10 libraryBundle];
    v15 = PLIsCloudPhotoLibraryDisableInProgressForPhotoLibraryBundle(v14);

    if (!v15)
    {
      *buf = 0;
      v28 = buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__80496;
      v31 = __Block_byref_object_dispose__80497;
      v32 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __86__PLBackgroundJobStableHashWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
      v24[3] = &unk_1E7578820;
      v24[4] = self;
      v25 = v7;
      v26 = buf;
      [v25 performBlockAndWait:v24];
      if ([*(v28 + 5) count])
      {
        v19 = [PLBackgroundJobWorkerPendingWorkItems alloc];
        v20 = +[PLBackgroundJobCriteria criteriaForStableHashWorker];
        v33[0] = *(v28 + 5);
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
        v18 = [(PLBackgroundJobWorkerPendingWorkItems *)v19 initWithCriteria:v20 workItemsNeedingProcessing:v21];
      }

      else
      {
        v18 = v11;
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_14;
    }

    v16 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Stable Hash Worker: PLBackgroundJobDuplicateDetectorWorker skipping duplicate processing. CPL disable in progress", buf, 2u);
    }

    v17 = v11;
  }

  else
  {
    v17 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  v18 = v17;
LABEL_14:

  return v18;
}

void __86__PLBackgroundJobStableHashWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _hasProcessedEntireLibrary:*(a1 + 40)])
  {
    v2 = [*(a1 + 40) managedObjectContext];
    v14 = 0;
    v3 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithJobType:8 fetchLimit:&unk_1F0FBDB58 resultType:1 inManagedObjectContext:v2 error:&v14];
    v4 = v14;
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v3;

    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v8 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Stable Hash Worker: Unable to fetch work items needed. Error: %@", buf, 0xCu);
      }

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    if ([v7 count])
    {
      v9 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(*(*(a1 + 48) + 8) + 40) count];
        v11 = *(a1 + 40);
        *buf = 134218242;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Stable Hash Worker: Registering %tu assets work items needing in library: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v19[0] = @"BackgroundJobStableHashProcessEntireLibrary";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v13 = *(*(a1 + 48) + 8);
    v4 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (PLBackgroundJobStableHashWorker)initWithLibraryBundle:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBackgroundJobStableHashWorker;
  result = [(PLBackgroundJobWorker *)&v4 initWithLibraryBundle:a3];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_canceled_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end