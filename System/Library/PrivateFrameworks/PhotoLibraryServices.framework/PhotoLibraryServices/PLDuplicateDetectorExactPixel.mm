@interface PLDuplicateDetectorExactPixel
+ (id)invalidHashData;
- (BOOL)_postProcessDuplicateWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error;
- (PLDuplicateDetectorExactPixel)initWithSourceOIDs:(id)ds;
- (id)_generateDuplicateContainerFromProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap;
- (id)_generateDuplicateContainerFromResults:(id)results;
- (id)_hashIsValidPredicate;
- (id)_limitedSelectionPredicateWithPhotoLibrary:(id)library;
- (id)_postProcessFetchMetadataWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error;
- (id)_postProcessingRequestAssetsFromDuplicateAssetOIDs:(id)ds;
- (id)_postProcessingRequestWithDuplicateAssetOIDs:(id)ds pathManager:(id)manager;
- (id)_predicateWithPhotoLibrary:(id)library;
- (id)_propertiesToFetch;
- (id)_sceneprintRequestWithPhotoLibrary:(id)library;
- (id)detectDuplicatesWithPhotoLibrary:(id)library error:(id *)error;
- (void)_addKey:(id)key value:(id)value map:(id)map;
- (void)_fetchLimitedSelectionHashes:(id *)hashes alternativeHashes:(id *)alternativeHashes photoLibrary:(id)library;
- (void)_updateDuplicateAssetOIDResults:(id)results forAssetOID:(id)d relatedProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap;
- (void)_updateDuplicateAssetOIDResults:(id)results forHash:(id)hash relatedProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap;
@end

@implementation PLDuplicateDetectorExactPixel

- (id)_postProcessingRequestAssetsFromDuplicateAssetOIDs:(id)ds
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  dsCopy = ds;
  v5 = +[PLManagedAsset entityName];
  v6 = [v3 fetchRequestWithEntityName:v5];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];

  [v6 setPredicate:dsCopy];
  [v6 setReturnsObjectsAsFaults:0];
  [v6 setFetchBatchSize:100];
  v10[0] = @"master.mediaMetadata";
  v10[1] = @"modernResources";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v6 setRelationshipKeyPathsForPrefetching:v8];

  return v6;
}

- (id)_postProcessingRequestWithDuplicateAssetOIDs:(id)ds pathManager:(id)manager
{
  v40[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  managerCopy = manager;
  dsCopy = ds;
  v8 = +[PLManagedAsset entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];

  [v9 setPredicate:dsCopy];
  [v9 setResultType:2];
  v40[0] = @"additionalAttributes";
  v40[1] = @"extendedAttributes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"width"];
  v13 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"height"];
  v14 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FC0488];
  v15 = MEMORY[0x1E696ABC8];
  v33 = v14;
  v34 = v13;
  v39[0] = v13;
  v39[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v17 = [v15 expressionForFunction:@"multiply:by:" arguments:v16];

  v18 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v18 setName:@"aspectR"];
  v19 = MEMORY[0x1E696ABC8];
  v38[0] = v12;
  v38[1] = v17;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v21 = [v19 expressionForFunction:@"divide:by:" arguments:v20];
  [v18 setExpression:v21];

  [v18 setExpressionResultType:500];
  v37[0] = @"objectID";
  v37[1] = @"additionalAttributes.importedBy";
  v37[2] = @"additionalAttributes.dateCreatedSource";
  v37[3] = @"extendedAttributes.dateCreated";
  v37[4] = v18;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  LODWORD(v20) = [PLDuplicateProcessor sharedLibraryDedupeEnabledWithPathManager:managerCopy];

  if (v20)
  {
    v23 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"packedBadgeAttributes"];
    v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBCA90];
    v32 = v12;
    v25 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v25 setName:@"rjPacked"];
    v26 = MEMORY[0x1E696ABC8];
    v36[0] = v23;
    v36[1] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v28 = [v26 expressionForFunction:@"bitwiseAnd:with:" arguments:v27];
    [v25 setExpression:v28];

    [v25 setExpressionResultType:200];
    v35[0] = @"kind";
    v35[1] = @"kindSubtype";
    v35[2] = @"activeLibraryScopeParticipationState";
    v35[3] = @"additionalAttributes.originalStableHash";
    v35[4] = v25;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
    v30 = [v22 arrayByAddingObjectsFromArray:v29];

    v12 = v32;
    v22 = v30;
  }

  [v9 setPropertiesToFetch:v22];

  return v9;
}

- (id)_postProcessFetchMetadataWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  containerCopy = container;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(containerCopy, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = containerCopy;
  v10 = [v9 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v10)
  {
    v11 = *v62;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(v9);
        }

        group = [*(*(&v61 + 1) + 8 * i) group];
        allObjects = [group allObjects];
        [v8 addObjectsFromArray:allObjects];
      }

      v10 = [v9 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v10);
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__49893;
  v59 = __Block_byref_object_dispose__49894;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__49893;
  v53 = __Block_byref_object_dispose__49894;
  v54 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__49893;
  v47[4] = __Block_byref_object_dispose__49894;
  v48 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __97__PLDuplicateDetectorExactPixel__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke;
  v41[3] = &unk_1E7572800;
  v41[4] = self;
  v31 = v8;
  v42 = v31;
  v15 = libraryCopy;
  v43 = v15;
  v44 = &v49;
  v45 = &v55;
  v46 = v47;
  [v15 performBlockAndWait:v41];
  if (!v50[5])
  {
    v27 = v56[5];
    v17 = 0;
LABEL_26:
    if (error)
    {
      v27 = v27;
      *error = v27;
    }

    goto LABEL_28;
  }

  context = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  v17 = [v16 initWithCapacity:{objc_msgSend(v50[5], "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v50[5];
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v65 count:16];
  if (v19)
  {
    v20 = *v38;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v37 + 1) + 8 * j);
        v23 = [v22 objectForKeyedSubscript:@"objectID"];
        v24 = v23;
        if (v22)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          [v17 setObject:v22 forKey:v23];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v37 objects:v65 count:16];
    }

    while (v19);
  }

  if (self->_enableEXIFDataAccess)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __97__PLDuplicateDetectorExactPixel__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke_310;
    v33[3] = &unk_1E7578820;
    v36 = v47;
    v34 = v17;
    selfCopy = self;
    [v15 performBlockAndWait:v33];
  }

  objc_autoreleasePoolPop(context);
  v26 = v50[5];
  v27 = v56[5];
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_28:

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);

  return v17;
}

void __97__PLDuplicateDetectorExactPixel__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
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
      v43 = v17;
      v44 = 2112;
      v45 = @"Post processing query";
      v46 = 2112;
      v47 = v14;
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
      v43 = v20;
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Duplicate Processing Detector: Failed to post processing fetch request for %{public}@. Error: %@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_18;
    }
  }

  v22 = *(a1 + 32);
  if (v22[32] == 1)
  {
    v23 = [v22 _postProcessingRequestAssetsFromDuplicateAssetOIDs:*(a1 + 40)];

    v24 = MEMORY[0x1E69BF2C8];
    v25 = [*(a1 + 48) managedObjectContext];
    v26 = [v24 startedQueryStatsWithContext:v25];

    v27 = [*(a1 + 48) managedObjectContext];
    v28 = *(*(a1 + 64) + 8);
    v40 = *(v28 + 40);
    v29 = [v27 executeFetchRequest:v23 error:&v40];
    objc_storeStrong((v28 + 40), v40);
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v32 = [v26 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
    if (v32)
    {
      v33 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138412802;
        v43 = v35;
        v44 = 2112;
        v45 = @"Post processing EXIF query";
        v46 = 2112;
        v47 = v32;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
      }
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v36 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543618;
        v43 = v38;
        v44 = 2112;
        v45 = v39;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Duplicate Processing Detector: Failed to post processing fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_18:
    v26 = v8;
    v23 = v5;
  }
}

void __97__PLDuplicateDetectorExactPixel__postProcessFetchMetadataWithPhotoLibrary_resultContainer_error___block_invoke_310(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Duplicate Processing Detector: Slow path accessing creation date", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v20 = v3;
    v21 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v8 objectID];
        v12 = [v10 objectForKeyedSubscript:v11];

        v13 = [v12 objectForKeyedSubscript:@"extendedAttributes.dateCreated"];

        if (!v13)
        {
          v14 = [v8 metadataFromMediaPropertiesOrOriginalResource];
          if ([*(a1 + 40) _postProcessIsValidDateSource:{objc_msgSend(v14, "creationDateSource")}])
          {
            v15 = [v14 utcCreationDate];
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
              [v16 setObject:v15 forKey:@"extendedAttributes.dateCreated"];
              v17 = *(a1 + 32);
              v18 = [v8 objectID];
              v19 = v18;
              if (v16 && v18)
              {
                [v17 setObject:v16 forKey:v18];
              }

              v3 = v20;
            }

            v6 = v21;
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (BOOL)_postProcessDuplicateWithPhotoLibrary:(id)library resultContainer:(id)container error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  containerCopy = container;
  v44 = 0;
  selfCopy = self;
  v33 = libraryCopy;
  v10 = [(PLDuplicateDetectorExactPixel *)self _postProcessFetchMetadataWithPhotoLibrary:libraryCopy resultContainer:containerCopy error:&v44];
  v11 = v44;
  v12 = v11;
  if (v10)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = containerCopy;
    v34 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v34)
    {
      v29 = v12;
      v31 = *v41;
      obj = v13;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v16 = [PLDuplicateDetectorSortKey sortKey:@"extendedAttributes.dateCreated" reverse:0];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __93__PLDuplicateDetectorExactPixel__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke;
          v37[3] = &unk_1E756D5A0;
          v17 = v10;
          v38 = v17;
          v39 = selfCopy;
          [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v15 metadataMap:v17 metadataKey:v16 secondarySortKey:0 subGroupSplitDecisionBlock:v37];

          v18 = [PLDuplicateDetectorSortKey sortKey:@"aspectR" reverse:0];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __93__PLDuplicateDetectorExactPixel__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke_2;
          v35[3] = &unk_1E756EB10;
          v19 = v17;
          v36 = v19;
          [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v15 metadataMap:v19 metadataKey:v18 secondarySortKey:0 subGroupSplitDecisionBlock:v35];

          pathManager = [v33 pathManager];
          LODWORD(v16) = [PLDuplicateProcessor sharedLibraryDedupeEnabledWithPathManager:pathManager];

          if (v16)
          {
            v21 = [PLDuplicateDetectorSortKey sortKey:@"kindSubtype" reverse:0];
            v22 = [PLDuplicateDetectorSortKey sortKey:@"activeLibraryScopeParticipationState" reverse:0];
            v23 = [PLDuplicateDetectorPostProcessing sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:v19];
            [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v15 metadataMap:v19 metadataKey:v21 secondarySortKey:v22 subGroupSplitDecisionBlock:v23];

            v24 = [PLDuplicateDetectorSortKey sortKey:@"activeLibraryScopeParticipationState" reverse:0];
            v25 = [PLDuplicateDetectorSortKey sortKey:@"additionalAttributes.originalStableHash" reverse:0];
            v26 = [PLDuplicateDetectorPostProcessing sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:v19];
            [PLDuplicateDetectorPostProcessing postProcessDuplicateSubGroupWithResult:v15 metadataMap:v19 metadataKey:v24 secondarySortKey:v25 subGroupSplitDecisionBlock:v26];
          }

          [v15 compactSubGroups];
        }

        v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v34);

      v12 = v29;
    }

    else
    {
    }
  }

  else if (error)
  {
    v27 = v11;
    *error = v12;
  }

  return v10 != 0;
}

BOOL __93__PLDuplicateDetectorExactPixel__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:@"extendedAttributes.dateCreated"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"extendedAttributes.dateCreated"];

  v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v13 = [v12 objectForKeyedSubscript:@"additionalAttributes.importedBy"];
  v14 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v15 = [v14 objectForKeyedSubscript:@"additionalAttributes.importedBy"];
  v16 = [v13 isEqualToNumber:v15];

  v17 = [*(a1 + 32) objectForKeyedSubscript:v7];

  v18 = [v17 objectForKeyedSubscript:@"additionalAttributes.dateCreatedSource"];
  v19 = [v18 shortValue];

  v20 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v21 = [v20 objectForKeyedSubscript:@"additionalAttributes.dateCreatedSource"];
  v22 = [v21 shortValue];

  v23 = 0;
  if (v9 && v11 && v16)
  {
    if ([*(a1 + 40) _postProcessIsValidDateSource:v19] && objc_msgSend(*(a1 + 40), "_postProcessIsValidDateSource:", v22))
    {
      [v9 timeIntervalSinceDate:v11];
      v23 = v24 < 4.0 && v24 > 0.0;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

BOOL __93__PLDuplicateDetectorExactPixel__postProcessDuplicateWithPhotoLibrary_resultContainer_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 objectForKeyedSubscript:@"aspectR"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 objectForKeyedSubscript:@"aspectR"];

  [v8 doubleValue];
  v12 = v11;
  [v10 doubleValue];
  v14 = v13 > v12 + 0.01 || v13 < v12 + -0.01;

  return v14;
}

- (id)_propertiesToFetch
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"duplicateMatchingData";
  v4[1] = @"duplicateMatchingAlternateData";
  v4[2] = @"additionalAssetAttributes.asset";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)_fetchLimitedSelectionHashes:(id *)hashes alternativeHashes:(id *)alternativeHashes photoLibrary:(id)library
{
  v27[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](self->_sourceAssetOIDs, "count")}];
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](self->_sourceAssetOIDs, "count")}];
  if (hashes | alternativeHashes)
  {
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLManagedAsset entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", self->_sourceAssetOIDs];
    [v13 setPredicate:v14];

    v27[0] = @"additionalAttributes.sceneprint.duplicateMatchingData";
    v27[1] = @"additionalAttributes.sceneprint.duplicateMatchingAlternateData";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v13 setPropertiesToFetch:v15];

    [v13 setResultType:2];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__PLDuplicateDetectorExactPixel__fetchLimitedSelectionHashes_alternativeHashes_photoLibrary___block_invoke;
    v21[3] = &unk_1E75730F8;
    v22 = libraryCopy;
    v23 = v13;
    selfCopy = self;
    v16 = v9;
    v25 = v16;
    v17 = v10;
    v26 = v17;
    v18 = v13;
    [v22 performBlockAndWait:v21];

    if (hashes)
    {
      v19 = v16;
      *hashes = v16;
    }

    if (alternativeHashes)
    {
      v20 = v17;
      *alternativeHashes = v17;
    }
  }
}

void __93__PLDuplicateDetectorExactPixel__fetchLimitedSelectionHashes_alternativeHashes_photoLibrary___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF2C8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 startedQueryStatsWithContext:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v6 = *(a1 + 40);
  v19 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v19];
  v8 = v19;

  v9 = [v4 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v7, "count")}];
  if (v9)
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v21 = v12;
      v22 = 2112;
      v23 = @"Hashes for Limited Selection query";
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__PLDuplicateDetectorExactPixel__fetchLimitedSelectionHashes_alternativeHashes_photoLibrary___block_invoke_278;
    v16[3] = &unk_1E756D820;
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
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
      v21 = v15;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate Processing Detector: Failed to fetch hashes for %{public}@. Error: %@", buf, 0x16u);
    }
  }
}

void __93__PLDuplicateDetectorExactPixel__fetchLimitedSelectionHashes_alternativeHashes_photoLibrary___block_invoke_278(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"additionalAttributes.sceneprint.duplicateMatchingData"];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = *(a1 + 40);
  v8 = [v4 objectForKeyedSubscript:@"additionalAttributes.sceneprint.duplicateMatchingAlternateData"];

  v7 = v8;
  if (v8)
  {
    [v6 addObject:v8];
    v7 = v8;
  }
}

- (id)_predicateWithPhotoLibrary:(id)library
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB28];
  libraryCopy = library;
  v6 = [(PLDuplicateDetectorExactPixel *)self _limitedSelectionPredicateWithPhotoLibrary:libraryCopy];
  _hashIsValidPredicate = [(PLDuplicateDetectorExactPixel *)self _hashIsValidPredicate];
  v13[1] = _hashIsValidPredicate;
  pathManager = [libraryCopy pathManager];

  v9 = [PLDuplicateDetector duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:@"additionalAssetAttributes.asset" processingType:2 pathManager:pathManager];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v11 = [v4 andPredicateWithSubpredicates:v10];

  return v11;
}

- (id)_hashIsValidPredicate
{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"duplicateMatchingData"];
  v11[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"duplicateMatchingAlternateData"];
  v11[1] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"duplicateMatchingData", self->_invalidHashDataToExclude];
  v11[2] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"duplicateMatchingAlternateData", self->_invalidHashDataToExclude];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

- (id)_limitedSelectionPredicateWithPhotoLibrary:(id)library
{
  v15[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if ([(NSArray *)self->_sourceAssetOIDs count])
  {
    v13 = 0;
    v14 = 0;
    [(PLDuplicateDetectorExactPixel *)self _fetchLimitedSelectionHashes:&v14 alternativeHashes:&v13 photoLibrary:libraryCopy];
    v5 = v14;
    v6 = v13;
    v7 = MEMORY[0x1E696AB28];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"duplicateMatchingData", v5];
    v15[0] = v8;
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"duplicateMatchingAlternateData", v6];
    v15[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11 = [v7 orPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v11;
}

- (id)_sceneprintRequestWithPhotoLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  v6 = +[PLSceneprint entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [(PLDuplicateDetectorExactPixel *)self _predicateWithPhotoLibrary:libraryCopy];

  [v7 setPredicate:v8];
  _propertiesToFetch = [(PLDuplicateDetectorExactPixel *)self _propertiesToFetch];
  [v7 setPropertiesToFetch:_propertiesToFetch];

  [v7 setResultType:2];
  v12[0] = @"additionalAssetAttributes.asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v10];

  return v7;
}

- (void)_updateDuplicateAssetOIDResults:(id)results forHash:(id)hash relatedProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap
{
  v24 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  hashCopy = hash;
  mapCopy = map;
  hashMapCopy = hashMap;
  if (([(NSMutableSet *)self->_processedHashes containsObject:hashCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_processedHashes addObject:hashCopy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [mapCopy objectForKeyedSubscript:{hashCopy, 0}];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(PLDuplicateDetectorExactPixel *)self _updateDuplicateAssetOIDResults:resultsCopy forAssetOID:*(*(&v19 + 1) + 8 * v18++) relatedProcessedHashOIDMap:mapCopy oidHashMap:hashMapCopy];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }
}

- (void)_updateDuplicateAssetOIDResults:(id)results forAssetOID:(id)d relatedProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap
{
  v24 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  mapCopy = map;
  hashMapCopy = hashMap;
  if (([(NSMutableSet *)self->_processedOIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_processedOIDs addObject:dCopy];
    [resultsCopy addObject:dCopy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [hashMapCopy objectForKeyedSubscript:{dCopy, 0}];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(PLDuplicateDetectorExactPixel *)self _updateDuplicateAssetOIDResults:resultsCopy forHash:*(*(&v19 + 1) + 8 * v18++) relatedProcessedHashOIDMap:mapCopy oidHashMap:hashMapCopy];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }
}

- (id)_generateDuplicateContainerFromProcessedHashOIDMap:(id)map oidHashMap:(id)hashMap
{
  mapCopy = map;
  hashMapCopy = hashMap;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__49893;
  v20[4] = __Block_byref_object_dispose__49894;
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromProcessedHashOIDMap_oidHashMap___block_invoke;
  v15[3] = &unk_1E756D578;
  v19 = v20;
  v15[4] = self;
  v9 = mapCopy;
  v16 = v9;
  v10 = hashMapCopy;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v18;
  v13 = v11;

  _Block_object_dispose(v20, 8);

  return v13;
}

void __95__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromProcessedHashOIDMap_oidHashMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _updateDuplicateAssetOIDResults:*(*(*(a1 + 64) + 8) + 40) forAssetOID:*(*(&v13 + 1) + 8 * v9++) relatedProcessedHashOIDMap:*(a1 + 40) oidHashMap:{*(a1 + 48), v13}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count] >= 2)
  {
    v10 = [PLDuplicateGroup alloc];
    v11 = [*(*(*(a1 + 64) + 8) + 40) copy];
    v12 = [(PLDuplicateGroup *)v10 initWithGroupResults:v11];

    [*(a1 + 56) addObject:v12];
  }
}

- (void)_addKey:(id)key value:(id)value map:(id)map
{
  keyCopy = key;
  valueCopy = value;
  mapCopy = map;
  if (keyCopy && valueCopy)
  {
    v9 = [mapCopy objectForKeyedSubscript:keyCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [mapCopy setObject:v9 forKeyedSubscript:keyCopy];
    }

    [v9 addObject:valueCopy];
  }
}

- (id)_generateDuplicateContainerFromResults:(id)results
{
  resultsCopy = results;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromResults___block_invoke;
  v19[3] = &unk_1E756D528;
  v19[4] = self;
  v20 = v6;
  v21 = v7;
  v8 = v7;
  v9 = v6;
  [resultsCopy enumerateObjectsUsingBlock:v19];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromResults___block_invoke_2;
  v17 = &unk_1E756D550;
  v18 = v10;
  v11 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:&v14];

  v12 = [(PLDuplicateDetectorExactPixel *)self _generateDuplicateContainerFromProcessedHashOIDMap:v11 oidHashMap:v8, v14, v15, v16, v17];

  objc_autoreleasePoolPop(v5);

  return v12;
}

void __72__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKeyedSubscript:@"additionalAssetAttributes.asset"];
  v4 = [v3 objectForKeyedSubscript:@"duplicateMatchingData"];
  [*(a1 + 32) _addKey:v4 value:v6 map:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:@"duplicateMatchingAlternateData"];

  [*(a1 + 32) _addKey:v5 value:v6 map:*(a1 + 40)];
  [*(a1 + 32) _addKey:v6 value:v4 map:*(a1 + 48)];
  [*(a1 + 32) _addKey:v6 value:v5 map:*(a1 + 48)];
}

void __72__PLDuplicateDetectorExactPixel__generateDuplicateContainerFromResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 count] >= 2)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)detectDuplicatesWithPhotoLibrary:(id)library error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__49893;
  v34 = __Block_byref_object_dispose__49894;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__49893;
  v28 = __Block_byref_object_dispose__49894;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__PLDuplicateDetectorExactPixel_detectDuplicatesWithPhotoLibrary_error___block_invoke;
  v20[3] = &unk_1E7578898;
  v20[4] = self;
  v7 = libraryCopy;
  v21 = v7;
  v22 = &v24;
  v23 = &v30;
  [v7 performBlockAndWait:v20];
  if (v25[5])
  {
    v8 = [(PLDuplicateDetectorExactPixel *)self _generateDuplicateContainerFromResults:?];
    v9 = v25[5];
    v25[5] = 0;

    if (![v8 count])
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Duplicate Processing Detector: Post processing skipped, results container empty", buf, 2u);
      }

      goto LABEL_6;
    }

    if (self->_disablePostProcessing)
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Duplicate Processing Detector: Post processing disabled via defaults", buf, 2u);
      }

LABEL_6:

      goto LABEL_23;
    }

    self->_enableEXIFDataAccess = ![PLDuplicateDetector duplicateDetectorCompletedDateBackgroundMigrationAction:v7];
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (self->_enableEXIFDataAccess)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138543362;
      v37 = v12;
      v13 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Duplicate Processing Detector: enableEXIFDataAccess: %{public}@", buf, 0xCu);
    }

    v14 = (v31 + 5);
    obj = v31[5];
    v15 = [(PLDuplicateDetectorExactPixel *)self _postProcessDuplicateWithPhotoLibrary:v7 resultContainer:v8 error:&obj];
    objc_storeStrong(v14, obj);
    v16 = v31[5];
    if (error)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      v16 = v16;
      *error = v16;
    }
  }

  else
  {
    v8 = 0;
    if (error)
    {
      *error = v31[5];
    }
  }

LABEL_23:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v8;
}

void __72__PLDuplicateDetectorExactPixel_detectDuplicatesWithPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _sceneprintRequestWithPhotoLibrary:*(a1 + 40)];
  v3 = MEMORY[0x1E69BF2C8];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v3 startedQueryStatsWithContext:v4];

  v6 = [*(a1 + 40) managedObjectContext];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v5 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
  if (v11)
  {
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = @"Main sceneprint query";
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v15 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Duplicate Processing Detector: Failed to fetch request for %{public}@. Error: %@", buf, 0x16u);
    }
  }
}

- (PLDuplicateDetectorExactPixel)initWithSourceOIDs:(id)ds
{
  dsCopy = ds;
  v17.receiver = self;
  v17.super_class = PLDuplicateDetectorExactPixel;
  v6 = [(PLDuplicateDetectorExactPixel *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceAssetOIDs, ds);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    processedOIDs = v7->_processedOIDs;
    v7->_processedOIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    processedHashes = v7->_processedHashes;
    v7->_processedHashes = v10;

    v7->_enableEXIFDataAccess = 0;
    invalidHashData = [objc_opt_class() invalidHashData];
    invalidHashDataToExclude = v7->_invalidHashDataToExclude;
    v7->_invalidHashDataToExclude = invalidHashData;

    if (MEMORY[0x19EAEE230]())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v7->_enableScreenshotProcessing = [standardUserDefaults BOOLForKey:@"PLDuplicateEnableScreenshotProcessing"];

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v7->_disablePostProcessing = [standardUserDefaults2 BOOLForKey:@"PLDuplicateDisablePostProcessing"];
    }
  }

  return v7;
}

+ (id)invalidHashData
{
  v71[67] = *MEMORY[0x1E69E9840];
  v70 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&invalidHashData_bytes length:24 freeWhenDone:0];
  v71[0] = v70;
  v69 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&invalidHashData_bytes_28 length:25 freeWhenDone:0];
  v71[1] = v69;
  v68 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQ5vUem8/QdHTV59EXsNOt" options:0];
  v71[2] = v68;
  v67 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQJvwem8/AdHTX59ETsNOt" options:0];
  v71[3] = v67;
  v66 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQJvwem8/AdHTX79ETsJPt" options:0];
  v71[4] = v66;
  v65 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQJvwem8/AdHTX79ETsNPt" options:0];
  v71[5] = v65;
  v64 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQJvwem89AdHTX59EzsJPt" options:0];
  v71[6] = v64;
  v63 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvQek89AdHz359E3sJPt" options:0];
  v71[7] = v63;
  v62 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvQem8/AdHTX59EXsNPt" options:0];
  v71[8] = v62;
  v61 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvQem8/AdHTX79ETsNOt" options:0];
  v71[9] = v61;
  v60 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvQem8/AdHTX79ETsNPt" options:0];
  v71[10] = v60;
  v59 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvwem8/AdHTX79ETsJPt" options:0];
  v71[11] = v59;
  v58 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUQZvwem8/AdHTX79EzsJPt" options:0];
  v71[12] = v58;
  v57 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHMTSUYpvweE8/AdHz359ExsJPt" options:0];
  v71[13] = v57;
  v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHORSUQpvweG8/AdPTX7dEzsNPt" options:0];
  v71[14] = v56;
  v55 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvweG89AdHTX59ExsJOt" options:0];
  v71[15] = v55;
  v54 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvweG89AdHTX7dExsNOt" options:0];
  v71[16] = v54;
  v53 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwek89AdHTX79EzsNPt" options:0];
  v71[17] = v53;
  v52 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem8/AdHTX79E3sNPt" options:0];
  v71[18] = v52;
  v51 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem8/AdHTX79ETsJPt" options:0];
  v71[19] = v51;
  v50 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem8/AdHTX79ETsNOt" options:0];
  v71[20] = v50;
  v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem8/AdHTX79ETsNPt" options:0];
  v71[21] = v49;
  v48 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem8/AdHTX79EzsJPt" options:0];
  v71[22] = v48;
  v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQJvwem89AdHTX79ExsNPt" options:0];
  v71[23] = v47;
  v46 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQpvweG8/AdPTX79ERsNPt" options:0];
  v71[24] = v46;
  v45 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQpvwem8/AdHTX59ERsNPt" options:0];
  v71[25] = v45;
  v44 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQpvwem89AdPTX79ExsNPt" options:0];
  v71[26] = v44;
  v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQZvwem8/AdHTX79ETsJPt" options:0];
  v71[27] = v43;
  v42 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQZvwem8/AdHTX79ETsNPt" options:0];
  v71[28] = v42;
  v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQZvwem8/AdHTX79EzsJPt" options:0];
  v71[29] = v41;
  v40 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUQZvwem8/AdHTX79EzsNPt" options:0];
  v71[30] = v40;
  v39 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHOTSUYpvQem89AdHTX79ERsNPt" options:0];
  v71[31] = v39;
  v38 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"HFjITFHuTSUQZvQem89AdHTX59EzsJPt" options:0];
  v71[32] = v38;
  v37 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1j4u6PBl0eXlORE6ufoMAa1RVg/m/kBOA==" options:0];
  v71[33] = v37;
  v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1j4u6PBlweXlPRE6ufoMga1RVg/m7kBOA==" options:0];
  v71[34] = v36;
  v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1jQo6PJk0eXlMRE6+foMAa1VVwvm+kBOA==" options:0];
  v71[35] = v35;
  v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1jQu6PJk0eXlORE6+X4MAa1VVwum/kBOA==" options:0];
  v71[36] = v34;
  v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1jYq6PBlweXlFRE6ufoMga1RVw/m6kBOA==" options:0];
  v71[37] = v33;
  v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PBlweXlMRE6+foMga1RVgvm7kBOA==" options:0];
  v71[38] = v32;
  v31 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PBlweXlMRE6ufoMga1RVgvm7kBOA==" options:0];
  v71[39] = v31;
  v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJl0eXlERE6ufoMga1RVgvm7kBOA==" options:0];
  v71[40] = v30;
  v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJlweXlFRE6ufsMga1RVgvm7kBOA==" options:0];
  v71[41] = v29;
  v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJlweXlNRE6ufoMga1RRgvm7kBOA==" options:0];
  v71[42] = v28;
  v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJlweXlNRE6ufsMga1RVgvm7kBOA==" options:0];
  v71[43] = v27;
  v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJlweXlNRG6ufsMga1RRg/m7kBOA==" options:0];
  v71[44] = v26;
  v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4q6PJlweXlPRE6ufsMga1RVg/m7kBOA==" options:0];
  v71[45] = v25;
  v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6OBl0eXlMRE6+foMga1RVgvm/kBOA==" options:0];
  v71[46] = v24;
  v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PBlweXlFRE6ufoMga1RVg/m7kBOA==" options:0];
  v71[47] = v23;
  v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PBlweXlFRE6ufoMga1RVgvm6kBOA==" options:0];
  v71[48] = v22;
  v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJkweXlGRE6uXsMAa1RVgvm+kBOA==" options:0];
  v71[49] = v21;
  v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlFRG6ufoMga1RVgvm7kBOA==" options:0];
  v71[50] = v20;
  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlHRE6ufsMga1RVg/m6kBOA==" options:0];
  v71[51] = v19;
  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlHRE6ufsMga1RVgvm7kBOA==" options:0];
  v71[52] = v18;
  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlNRE6ufoMga1RRg/m7kBOA==" options:0];
  v71[53] = v17;
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlPRE6ufsMga1RRg/m7kBOA==" options:0];
  v71[54] = v16;
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n4u6PJlweXlPRE6ufsMga1RVgvm7kBOA==" options:0];
  v71[55] = v15;
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1n6u6PJlweXlORE6uXsMAa1RVgvm7kBOA==" options:0];
  v71[56] = v14;
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nau6PJkweXlHRE6+XsMAa1RVgvm6kBOA==" options:0];
  v71[57] = v2;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1niu6PJl0eXlPRE6+3sMAaxQRgvm/kBOA==" options:0];
  v71[58] = v3;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nQu6PJlweXlPRE6uXsMEaxVRkvm/kBOA==" options:0];
  v71[59] = v4;
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nSu6PJkweXlHRE6+f8MAa1VVgvm/kBOA==" options:0];
  v71[60] = v5;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nwq6PJl0eXlMRE6ufoMga1RVgvm/kBOA==" options:0];
  v71[61] = v6;
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nws6PJl8eXlPRE6+fsMgaxRRg+m/kBOA==" options:0];
  v71[62] = v7;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nyq6PJlweXlHRE6ufsMAaxRRgvm/kBOA==" options:0];
  v71[63] = v8;
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nyu6PJlweXlGRE6uXoMAa1RV0vm+kBOA==" options:0];
  v71[64] = v9;
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nYu6PJlweXlHRG6ufsMAa1RVgvm6kBOA==" options:0];
  v71[65] = v10;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"D1nYu6PJlweXlORE6+X4MgaxRV0vm+kBOA==" options:0];
  v71[66] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:67];

  return v13;
}

@end