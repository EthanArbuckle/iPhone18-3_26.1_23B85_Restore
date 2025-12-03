@interface PLDuplicateDetectorMetadata
- (BOOL)_postProcessDuplicateWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error;
- (PLDuplicateDetectorMetadata)initWithSourceOIDs:(id)ds;
- (id)_combinedIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library;
- (id)_fingerprintIsValidPredicate;
- (id)_fingerprintRequestWithPhotoLibrary:(id)library;
- (id)_fullSizePreviewFingerprintRequestWithPhotoLibrary:(id)library;
- (id)_fullSizePreviewPredicateWithPhotoLibrary:(id)library;
- (id)_fullSizePropertiesToFetch;
- (id)_fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library;
- (id)_generateDuplicateContainerFromResults:(id)results fullsizeFingerprintResults:(id)fingerprintResults;
- (id)_limitedSelectionFullSizePredicateWithPhotoLibrary:(id)library;
- (id)_limitedSelectionPredicateWithPhotoLibrary:(id)library;
- (id)_originalsIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library;
- (id)_postProcessFetchMetadataWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error;
- (id)_postProcessingRequestWithDuplicateAssetOIDs:(id)ds pathManager:(id)manager;
- (id)_predicateWithPhotoLibrary:(id)library;
- (id)_propertiesToFetch;
- (id)detectDuplicatesWithPhotoLibrary:(id)library error:(id *)error;
- (void)_addFingerprint:(id)fingerprint oid:(id)oid map:(id)map;
- (void)_buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:(id)results mutableOIDFingerprintMap:(id)map property:(id)property filterOnCPLResourceType:(unint64_t)type;
- (void)_processBlendedResult:(id)result fullsizeMap:(id)map oidFullsizeVideoMap:(id)videoMap oidMediumVideoMap:(id)mediumVideoMap inDuplicateMap:(id)duplicateMap;
@end

@implementation PLDuplicateDetectorMetadata

- (id)_postProcessingRequestWithDuplicateAssetOIDs:(id)ds pathManager:(id)manager
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  managerCopy = manager;
  dsCopy = ds;
  v8 = +[PLManagedAsset entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];

  [v9 setPredicate:dsCopy];
  [v9 setResultType:2];
  v25[0] = @"additionalAttributes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v24[0] = @"objectID";
  v24[1] = @"duration";
  v24[2] = @"kind";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  LODWORD(v8) = [PLDuplicateProcessor sharedLibraryDedupeEnabledWithPathManager:managerCopy];

  if (v8)
  {
    v13 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"packedBadgeAttributes"];
    v14 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBD270];
    v15 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v15 setName:@"rjPacked"];
    v16 = MEMORY[0x1E696ABC8];
    v23[0] = v13;
    v23[1] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v18 = [v16 expressionForFunction:@"bitwiseAnd:with:" arguments:v17];
    [v15 setExpression:v18];

    [v15 setExpressionResultType:200];
    v22[0] = @"kindSubtype";
    v22[1] = @"activeLibraryScopeParticipationState";
    v22[2] = @"additionalAttributes.originalStableHash";
    v22[3] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    v20 = [v12 arrayByAddingObjectsFromArray:v19];

    v12 = v20;
  }

  [v9 setPropertiesToFetch:v12];

  return v9;
}

- (id)_postProcessFetchMetadataWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  containerCopy = container;
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(containerCopy, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = containerCopy;
  v11 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v11)
  {
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v10);
        }

        group = [*(*(&v55 + 1) + 8 * i) group];
        allObjects = [group allObjects];
        [v9 addObjectsFromArray:allObjects];
      }

      v11 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v11);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__61699;
  v53 = __Block_byref_object_dispose__61700;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__61699;
  v47 = __Block_byref_object_dispose__61700;
  v48 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __95__PLDuplicateDetectorMetadata__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke;
  v38[3] = &unk_1E75787D0;
  v38[4] = self;
  v16 = v9;
  v39 = v16;
  v17 = libraryCopy;
  v40 = v17;
  v41 = &v43;
  v42 = &v49;
  [v17 performBlockAndWait:v38];
  v33 = v16;
  if (!v44[5])
  {
    v29 = v50[5];
    v19 = 0;
LABEL_24:
    if (error)
    {
      v29 = v29;
      *error = v29;
    }

    goto LABEL_26;
  }

  context = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v19 = [v18 initWithCapacity:{objc_msgSend(v44[5], "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = v44[5];
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v59 count:16];
  if (v21)
  {
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        v25 = [v24 objectForKeyedSubscript:@"objectID"];
        v26 = v25;
        if (v24)
        {
          v27 = v25 == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          [v19 setObject:v24 forKey:v25];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v34 objects:v59 count:16];
    }

    while (v21);
  }

  objc_autoreleasePoolPop(context);
  v28 = v44[5];
  v29 = v50[5];
  if (!v28)
  {
    goto LABEL_24;
  }

LABEL_26:

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v19;
}

void __95__PLDuplicateDetectorMetadata__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pathManager];
  v5 = [v2 _postProcessingRequestWithDuplicateAssetOIDs:v3 pathManager:v4];

  v6 = MEMORY[0x1E69BF2C8];
  v7 = [*(a1 + 48) managedObjectContext];
  v8 = [v6 startedQueryStatsWithContext:v7];

  v9 = [*(a1 + 48) managedObjectContext];
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [v9 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v8 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
  if (v14)
  {
    v15 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412802;
      v24 = v17;
      v25 = 2112;
      v26 = @"Post processing query";
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v18 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Duplicate Processing Detector: Failed to post processing fetch request for %{public}@. Error: %@", buf, 0x16u);
    }
  }
}

- (BOOL)_postProcessDuplicateWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  containerCopy = container;
  v42 = 0;
  v33 = libraryCopy;
  v10 = [(PLDuplicateDetectorMetadata *)self _postProcessFetchMetadataWithPhotoLibrary:libraryCopy resultContainer:containerCopy error:&v42];
  v11 = v42;
  v12 = v11;
  v34 = v10;
  if (v10)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = containerCopy;
    v35 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v35)
    {
      v30 = containerCopy;
      v14 = *v39;
      v15 = 0x1E755F000uLL;
      v31 = *v39;
      v32 = v13;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [PLDuplicateDetectorSortKey sortKey:@"duration" reverse:0];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __91__PLDuplicateDetectorMetadata__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke;
          v36[3] = &unk_1E756EB10;
          v19 = v34;
          v37 = v19;
          [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v17 metadataMap:v19 metadataKey:v18 secondarySortKey:0 subGroupSplitDecisionBlock:v36];

          v20 = *(v15 + 3384);
          pathManager = [v33 pathManager];
          LODWORD(v20) = [v20 sharedLibraryDedupeEnabledWithPathManager:pathManager];

          if (v20)
          {
            v22 = [PLDuplicateDetectorSortKey sortKey:@"kindSubtype" reverse:0];
            v23 = [PLDuplicateDetectorSortKey sortKey:@"activeLibraryScopeParticipationState" reverse:0];
            v24 = [PLDuplicateDetectorPostProcessing sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:v19];
            [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v17 metadataMap:v19 metadataKey:v22 secondarySortKey:v23 subGroupSplitDecisionBlock:v24];

            v25 = [PLDuplicateDetectorSortKey sortKey:@"activeLibraryScopeParticipationState" reverse:0];
            v15 = 0x1E755F000;
            v26 = [PLDuplicateDetectorSortKey sortKey:@"additionalAttributes.originalStableHash" reverse:0];
            v27 = [PLDuplicateDetectorPostProcessing sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:v19];
            v14 = v31;
            [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v17 metadataMap:v19 metadataKey:v25 secondarySortKey:v26 subGroupSplitDecisionBlock:v27];

            v13 = v32;
          }

          [v17 compactSubGroups];
        }

        v35 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v35);

      containerCopy = v30;
    }

    else
    {
    }
  }

  else if (error)
  {
    v28 = v11;
    *error = v12;
  }

  return v34 != 0;
}

uint64_t __91__PLDuplicateDetectorMetadata__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"kind"];
  v9 = [v8 shortValue];

  if (v9 == 1)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v11 = [v10 objectForKeyedSubscript:@"duration"];

    v12 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v13 = [v12 objectForKeyedSubscript:@"duration"];

    [v11 doubleValue];
    v15 = v14;
    [v13 doubleValue];
    v17 = vabdd_f64(v15, v16) > 0.001;
    if (v13)
    {
      v18 = v17;
    }

    else
    {
      v18 = v11 != 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library
{
  v28[3] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLInternalResource entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"dataStoreClassID", 0];
  v28[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"dataStoreSubtype", &unk_1F0FBFD48];
  v28[1] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset", self->_sourceAssetOIDs];
  v28[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v13 = [v8 andPredicateWithSubpredicates:v12];
  [v7 setPredicate:v13];

  v27[0] = @"fingerprint";
  v27[1] = @"stableHash";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  [v7 setPropertiesToFetch:v14];

  [v7 setResultType:2];
  v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](self->_sourceAssetOIDs, "count")}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__PLDuplicateDetectorMetadata__fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke;
  v22[3] = &unk_1E7578100;
  v23 = libraryCopy;
  v24 = v7;
  selfCopy = self;
  v16 = v15;
  v26 = v16;
  v17 = v7;
  v18 = libraryCopy;
  [v18 performBlockAndWait:v22];
  v19 = v26;
  v20 = v16;

  return v16;
}

void __88__PLDuplicateDetectorMetadata__fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF2C8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 startedQueryStatsWithContext:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v6 = *(a1 + 40);
  v18 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v18];
  v8 = v18;

  v9 = [v4 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v7, "count")}];
  if (v9)
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = @"Fullsize stableHashes for Limited Selection query";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__PLDuplicateDetectorMetadata__fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke_108;
    v16[3] = &unk_1E7574658;
    v17 = *(a1 + 56);
    [v7 enumerateObjectsUsingBlock:v16];
    v13 = v17;
  }

  else
  {
    v13 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch full size identifiers for %{public}@. Error: %@", buf, 0x16u);
    }
  }
}

void __88__PLDuplicateDetectorMetadata__fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke_108(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allValues];
  [v2 addObjectsFromArray:v3];
}

- (id)_originalsIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library
{
  v22[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLAdditionalAssetAttributes entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%K IN %@", @"asset", self->_sourceAssetOIDs];
  [v7 setPredicate:v8];

  v22[0] = @"originalStableHash";
  v22[1] = @"originatingAssetIdentifier";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [v7 setPropertiesToFetch:v9];

  [v7 setResultType:2];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](self->_sourceAssetOIDs, "count")}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PLDuplicateDetectorMetadata__originalsIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke;
  v17[3] = &unk_1E7578100;
  v18 = libraryCopy;
  v19 = v7;
  selfCopy = self;
  v11 = v10;
  v21 = v11;
  v12 = v7;
  v13 = libraryCopy;
  [v13 performBlockAndWait:v17];
  v14 = v21;
  v15 = v11;

  return v11;
}

void __89__PLDuplicateDetectorMetadata__originalsIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF2C8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 startedQueryStatsWithContext:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v6 = *(a1 + 40);
  v18 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v18];
  v8 = v18;

  v9 = [v4 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v7, "count")}];
  if (v9)
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = @"Original stableHashes for Limited Selection query";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__PLDuplicateDetectorMetadata__originalsIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke_96;
    v16[3] = &unk_1E7574658;
    v17 = *(a1 + 56);
    [v7 enumerateObjectsUsingBlock:v16];
    v13 = v17;
  }

  else
  {
    v13 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch identifiers for %{public}@. Error: %@", buf, 0x16u);
    }
  }
}

void __89__PLDuplicateDetectorMetadata__originalsIdentifiersFromLimitedSelectionWithPhotoLibrary___block_invoke_96(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allValues];
  [v2 addObjectsFromArray:v3];
}

- (id)_combinedIdentifiersFromLimitedSelectionWithPhotoLibrary:(id)library
{
  combinedLimitedSelectionIdentifiers = self->_combinedLimitedSelectionIdentifiers;
  if (!combinedLimitedSelectionIdentifiers)
  {
    libraryCopy = library;
    v6 = [(PLDuplicateDetectorMetadata *)self _originalsIdentifiersFromLimitedSelectionWithPhotoLibrary:libraryCopy];
    v7 = [(PLDuplicateDetectorMetadata *)self _fullsizeIdentifiersFromLimitedSelectionWithPhotoLibrary:libraryCopy];

    v8 = [v6 setByAddingObjectsFromSet:v7];
    v9 = self->_combinedLimitedSelectionIdentifiers;
    self->_combinedLimitedSelectionIdentifiers = v8;

    combinedLimitedSelectionIdentifiers = self->_combinedLimitedSelectionIdentifiers;
  }

  return combinedLimitedSelectionIdentifiers;
}

- (id)_fullSizePropertiesToFetch
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"asset";
  v4[1] = @"asset.kind";
  v4[2] = @"asset.adjustmentsState";
  v4[3] = @"fingerprint";
  v4[4] = @"stableHash";
  v4[5] = @"dataStoreSubtype";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];

  return v2;
}

- (id)_fullSizePreviewPredicateWithPhotoLibrary:(id)library
{
  v19[4] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696AB28];
  libraryCopy = library;
  v5 = [(PLDuplicateDetectorMetadata *)self _limitedSelectionFullSizePredicateWithPhotoLibrary:libraryCopy];
  v19[0] = v5;
  _fullsizeFingerprintIsValidFullSizePredicate = [(PLDuplicateDetectorMetadata *)self _fullsizeFingerprintIsValidFullSizePredicate];
  v19[1] = _fullsizeFingerprintIsValidFullSizePredicate;
  v7 = MEMORY[0x1E696AB28];
  v8 = [PLDuplicateDetector duplicateDetectorExcludeZeroByteStableHashPredicateWithProperty:@"fingerprint"];
  v18[0] = v8;
  v9 = [PLDuplicateDetector duplicateDetectorExcludeZeroByteStableHashPredicateWithProperty:@"stableHash"];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v7 orPredicateWithSubpredicates:v10];
  v19[2] = v11;
  pathManager = [libraryCopy pathManager];

  v13 = [PLDuplicateDetector duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:@"asset" processingType:1 pathManager:pathManager];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v15 = [v17 andPredicateWithSubpredicates:v14];

  return v15;
}

- (id)_limitedSelectionFullSizePredicateWithPhotoLibrary:(id)library
{
  v17[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if ([(NSArray *)self->_sourceAssetOIDs count])
  {
    v5 = [(PLDuplicateDetectorMetadata *)self _combinedIdentifiersFromLimitedSelectionWithPhotoLibrary:libraryCopy];
    v6 = MEMORY[0x1E696AB28];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"fingerprint", v5];
    v17[0] = v7;
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"stableHash", v5];
    v17[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v10 = [v6 orPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v11 = MEMORY[0x1E696AB28];
  v16[0] = v10;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"version", 2];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  return v14;
}

- (id)_fullSizePreviewFingerprintRequestWithPhotoLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  v6 = +[PLInternalResource entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [(PLDuplicateDetectorMetadata *)self _fullSizePreviewPredicateWithPhotoLibrary:libraryCopy];

  [v7 setPredicate:v8];
  _fullSizePropertiesToFetch = [(PLDuplicateDetectorMetadata *)self _fullSizePropertiesToFetch];
  [v7 setPropertiesToFetch:_fullSizePropertiesToFetch];

  [v7 setResultType:2];
  v12[0] = @"asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v10];

  return v7;
}

- (id)_propertiesToFetch
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"asset";
  v4[1] = @"asset.kind";
  v4[2] = @"asset.adjustmentsState";
  v4[3] = @"originalStableHash";
  v4[4] = @"originatingAssetIdentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_predicateWithPhotoLibrary:(id)library
{
  v14[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB28];
  libraryCopy = library;
  v6 = [(PLDuplicateDetectorMetadata *)self _limitedSelectionPredicateWithPhotoLibrary:libraryCopy];
  v14[0] = v6;
  _fingerprintIsValidPredicate = [(PLDuplicateDetectorMetadata *)self _fingerprintIsValidPredicate];
  v14[1] = _fingerprintIsValidPredicate;
  v8 = [PLDuplicateDetector duplicateDetectorExcludeZeroByteStableHashPredicateWithProperty:@"originalStableHash"];
  v14[2] = v8;
  pathManager = [libraryCopy pathManager];

  v10 = [PLDuplicateDetector duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:@"asset" processingType:1 pathManager:pathManager];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v12 = [v4 andPredicateWithSubpredicates:v11];

  return v12;
}

- (id)_fingerprintIsValidPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"originalStableHash"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"originatingAssetIdentifier", v3];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 orPredicateWithSubpredicates:v5];

  return v6;
}

- (id)_limitedSelectionPredicateWithPhotoLibrary:(id)library
{
  v12[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if ([(NSArray *)self->_sourceAssetOIDs count])
  {
    v5 = [(PLDuplicateDetectorMetadata *)self _combinedIdentifiersFromLimitedSelectionWithPhotoLibrary:libraryCopy];
    v6 = MEMORY[0x1E696AB28];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"originalStableHash", v5];
    v12[0] = v7;
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"originatingAssetIdentifier", v5];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v6 orPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v10;
}

- (id)_fingerprintRequestWithPhotoLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  v6 = +[PLAdditionalAssetAttributes entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [(PLDuplicateDetectorMetadata *)self _predicateWithPhotoLibrary:libraryCopy];

  [v7 setPredicate:v8];
  _propertiesToFetch = [(PLDuplicateDetectorMetadata *)self _propertiesToFetch];
  [v7 setPropertiesToFetch:_propertiesToFetch];

  [v7 setResultType:2];
  v12[0] = @"asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v10];

  return v7;
}

- (void)_addFingerprint:(id)fingerprint oid:(id)oid map:(id)map
{
  fingerprintCopy = fingerprint;
  oidCopy = oid;
  mapCopy = map;
  if (fingerprintCopy && oidCopy)
  {
    v9 = [mapCopy objectForKeyedSubscript:fingerprintCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [mapCopy setObject:v9 forKeyedSubscript:fingerprintCopy];
    }

    [v9 addObject:oidCopy];
  }
}

- (void)_buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:(id)results mutableOIDFingerprintMap:(id)map property:(id)property filterOnCPLResourceType:(unint64_t)type
{
  resultsCopy = results;
  mapCopy = map;
  propertyCopy = property;
  if (!propertyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateDetectorMetadata.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"property"}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __160__PLDuplicateDetectorMetadata__buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults_mutableOIDFingerprintMap_property_filterOnCPLResourceType___block_invoke;
  v17[3] = &unk_1E756EAE8;
  v19 = mapCopy;
  typeCopy = type;
  v18 = propertyCopy;
  v14 = mapCopy;
  v15 = propertyCopy;
  [resultsCopy enumerateObjectsUsingBlock:v17];
}

void __160__PLDuplicateDetectorMetadata__buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults_mutableOIDFingerprintMap_property_filterOnCPLResourceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"asset"];
  v6 = [v4 objectForKeyedSubscript:@"dataStoreSubtype"];

  v7 = [v6 unsignedIntegerValue];
  v8 = *(a1 + 48);

  if (v9 && v5 && v7 == v8)
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }
}

- (void)_processBlendedResult:(id)result fullsizeMap:(id)map oidFullsizeVideoMap:(id)videoMap oidMediumVideoMap:(id)mediumVideoMap inDuplicateMap:(id)duplicateMap
{
  v37 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  mapCopy = map;
  videoMapCopy = videoMap;
  mediumVideoMapCopy = mediumVideoMap;
  duplicateMapCopy = duplicateMap;
  v17 = [resultCopy objectForKeyedSubscript:@"asset"];
  v18 = [resultCopy objectForKeyedSubscript:@"asset.kind"];
  shortValue = [v18 shortValue];

  if (v17)
  {
    if (shortValue == 1)
    {
      v20 = [videoMapCopy objectForKeyedSubscript:v17];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [mediumVideoMapCopy objectForKeyedSubscript:v17];
      }

      v24 = v22;

      if (!v24)
      {
LABEL_14:
        v27 = [resultCopy objectForKeyedSubscript:@"asset.adjustmentsState"];
        unsignedShortValue = [v27 unsignedShortValue];

        if (unsignedShortValue)
        {
          v29 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = [resultCopy objectForKeyedSubscript:@"originalStableHash"];
            v35 = 138543362;
            v36 = v30;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "Adjusted asset missing full size render fingerprint. Original fingerprint: %{public}@", &v35, 0xCu);
          }

          v24 = 0;
        }

        else if (shortValue != 1 || ([resultCopy objectForKeyedSubscript:@"originatingAssetIdentifier"], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v24 = [resultCopy objectForKeyedSubscript:@"originalStableHash"];
        }
      }
    }

    else
    {
      v24 = [mapCopy objectForKeyedSubscript:v17];
      if (!v24)
      {
        goto LABEL_14;
      }
    }

    [(PLDuplicateDetectorMetadata *)self _addFingerprint:v24 oid:v17 map:duplicateMapCopy];
    goto LABEL_30;
  }

  if (shortValue == 1 && ([resultCopy objectForKeyedSubscript:@"originatingAssetIdentifier"], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = v23;
    v25 = v24;
  }

  else
  {
    v26 = [resultCopy objectForKeyedSubscript:@"originalStableHash"];
    if (v26)
    {
      v25 = v26;
    }

    else
    {
      v31 = [resultCopy objectForKeyedSubscript:@"fingerprint"];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = [resultCopy objectForKeyedSubscript:@"stableHash"];
      }

      v25 = v33;
    }

    v24 = 0;
  }

  v34 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = 138543362;
    v36 = v25;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Fetch result had missing asset oid for identifier: %{public}@", &v35, 0xCu);
  }

LABEL_30:
}

- (id)_generateDuplicateContainerFromResults:(id)results fullsizeFingerprintResults:(id)fingerprintResults
{
  resultsCopy = results;
  fingerprintResultsCopy = fingerprintResults;
  v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = objc_autoreleasePoolPush();
  v23 = [resultsCopy arrayByAddingObjectsFromArray:fingerprintResultsCopy];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v7 property:@"fingerprint" filterOnCPLResourceType:2];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v8 property:@"stableHash" filterOnCPLResourceType:2];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v9 property:@"fingerprint" filterOnCPLResourceType:16];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v10 property:@"stableHash" filterOnCPLResourceType:16];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v11 property:@"fingerprint" filterOnCPLResourceType:6];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PLDuplicateDetectorMetadata *)self _buildAdjustedFingerprintMapWithPrimaryStoreFullsizeFingerprintResults:fingerprintResultsCopy mutableOIDFingerprintMap:v12 property:@"stableHash" filterOnCPLResourceType:6];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__PLDuplicateDetectorMetadata__generateDuplicateContainerFromResults_fullsizeFingerprintResults___block_invoke;
  v29[3] = &unk_1E756EAC0;
  v29[4] = self;
  v30 = v7;
  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = v8;
  v35 = v10;
  v36 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v8;
  v17 = v13;
  v18 = v11;
  v19 = v9;
  v20 = v7;
  [v23 enumerateObjectsUsingBlock:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __97__PLDuplicateDetectorMetadata__generateDuplicateContainerFromResults_fullsizeFingerprintResults___block_invoke_2;
  v27[3] = &unk_1E7575AD0;
  v21 = v24;
  v28 = v21;
  [v17 enumerateKeysAndObjectsUsingBlock:v27];

  objc_autoreleasePoolPop(context);

  return v21;
}

void __97__PLDuplicateDetectorMetadata__generateDuplicateContainerFromResults_fullsizeFingerprintResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a2;
  [v3 _processBlendedResult:v8 fullsizeMap:v4 oidFullsizeVideoMap:v5 oidMediumVideoMap:v6 inDuplicateMap:v7];
  [*(a1 + 32) _processBlendedResult:v8 fullsizeMap:*(a1 + 72) oidFullsizeVideoMap:*(a1 + 80) oidMediumVideoMap:*(a1 + 88) inDuplicateMap:*(a1 + 64)];
}

void __97__PLDuplicateDetectorMetadata__generateDuplicateContainerFromResults_fullsizeFingerprintResults___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 count] >= 2)
  {
    v4 = [PLDuplicateGroup alloc];
    v5 = [v7 copy];
    v6 = [(PLDuplicateGroup *)v4 initWithGroupResults:v5];

    [*(a1 + 32) addObject:v6];
  }
}

- (id)detectDuplicatesWithPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__61699;
  v43 = __Block_byref_object_dispose__61700;
  v44 = 0;
  v7 = [(PLDuplicateDetectorMetadata *)self _fingerprintRequestWithPhotoLibrary:libraryCopy];
  v8 = [(PLDuplicateDetectorMetadata *)self _fullSizePreviewFingerprintRequestWithPhotoLibrary:libraryCopy];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__61699;
  v37 = __Block_byref_object_dispose__61700;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__61699;
  v31 = __Block_byref_object_dispose__61700;
  v32 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PLDuplicateDetectorMetadata_detectDuplicatesWithPhotoLibrary_error___block_invoke;
  v19[3] = &unk_1E7572760;
  v9 = libraryCopy;
  v20 = v9;
  v24 = &v33;
  v10 = v7;
  v21 = v10;
  selfCopy = self;
  v25 = &v39;
  v26 = &v27;
  v11 = v8;
  v23 = v11;
  [v9 performBlockAndWait:v19];
  if (v34[5] && v28[5])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(PLDuplicateDetectorMetadata *)self _generateDuplicateContainerFromResults:v34[5] fullsizeFingerprintResults:v28[5]];
    v14 = v40;
    obj = v40[5];
    v15 = [(PLDuplicateDetectorMetadata *)self _postProcessDuplicateWithPhotoLibrary:v9 resultContainer:v13 error:&obj];
    objc_storeStrong(v14 + 5, obj);
    objc_autoreleasePoolPop(v12);
    v16 = v40[5];
    if (!v15 && error)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = v40[5];
    v13 = 0;
    if (error)
    {
LABEL_5:
      v16 = v16;
      *error = v16;
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return v13;
}

void __70__PLDuplicateDetectorMetadata_detectDuplicatesWithPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF2C8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 startedQueryStatsWithContext:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v5 executeFetchRequest:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v4 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count")}];
  if (v11)
  {
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v34 = v14;
      v35 = 2112;
      v36 = @"Main originals query";
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v15 = MEMORY[0x1E69BF2C8];
    v16 = [*(a1 + 32) managedObjectContext];
    v17 = [v15 startedQueryStatsWithContext:v16];

    v18 = [*(a1 + 32) managedObjectContext];
    v19 = *(a1 + 56);
    v20 = *(*(a1 + 72) + 8);
    v31 = *(v20 + 40);
    v21 = [v18 executeFetchRequest:v19 error:&v31];
    objc_storeStrong((v20 + 40), v31);
    v22 = *(*(a1 + 80) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = [v17 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count")}];
    if (v24)
    {
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412802;
        v34 = v27;
        v35 = 2112;
        v36 = @"Main fullsize query";
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
      }
    }
  }

  else
  {
    v24 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v34 = v29;
      v35 = 2112;
      v36 = v30;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to fetch request for %{public}@. Error: %@", buf, 0x16u);
    }

    v17 = v4;
  }
}

- (PLDuplicateDetectorMetadata)initWithSourceOIDs:(id)ds
{
  dsCopy = ds;
  v10.receiver = self;
  v10.super_class = PLDuplicateDetectorMetadata;
  v6 = [(PLDuplicateDetectorMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceAssetOIDs, ds);
    combinedLimitedSelectionIdentifiers = v7->_combinedLimitedSelectionIdentifiers;
    v7->_combinedLimitedSelectionIdentifiers = 0;
  }

  return v7;
}

@end