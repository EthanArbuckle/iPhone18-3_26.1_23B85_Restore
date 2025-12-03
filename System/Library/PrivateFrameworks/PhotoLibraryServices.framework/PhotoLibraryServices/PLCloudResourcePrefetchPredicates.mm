@interface PLCloudResourcePrefetchPredicates
+ (double)_resourceLastPrunedPrefetchTimeInterval;
+ (id)_assetPredicateForCPLResourceType:(unint64_t)type additionalAssetPredicates:(id)predicates additionalResourcePredicates:(id)resourcePredicates options:(id)options;
+ (id)_masterPredicateForCPLResourceType:(unint64_t)type additionalAssetPredicates:(id)predicates additionalResourcePredicates:(id)resourcePredicates options:(id)options;
+ (id)_predicateToPrefetchMemoryKeyAssets:(id)assets photoLibrary:(id)library options:(id)options;
+ (id)_predicateToPrefetchSuggestions:(id)suggestions photoLibrary:(id)library options:(id)options;
+ (id)_prefetchResourceForAsset:(id)asset inResourceTypes:(id)types options:(id)options;
+ (id)_resourcesToPrefetchForAsset:(id)asset options:(id)options;
+ (id)predicateForOriginalResourcesForPrefetchLocallyAvailableOnly:(BOOL)only;
+ (id)predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions:(id)options photoLibrary:(id)library;
+ (id)predicateToPrefetchHighlightWithUUIDs:(id)ds photoLibrary:(id)library;
+ (id)predicateToPrefetchMediaMetadataResourcesWithOptions:(id)options photoLibrary:(id)library;
+ (id)predicateToPrefetchMemories:(id)memories photoLibrary:(id)library options:(id)options;
+ (id)predicatesForComputeSync:(id)sync photoLibrary:(id)library;
+ (id)predicatesForMemories:(id)memories photoLibrary:(id)library;
+ (id)predicatesForNonThumbnails:(id)thumbnails lastCompletePrefetchDate:(id)date;
+ (id)predicatesForOriginalResources:(id)resources additionalResourcePredicates:(id)predicates;
+ (id)predicatesForThumbnails:(id)thumbnails;
+ (id)predicatesForWidget:(id)widget photoLibrary:(id)library;
@end

@implementation PLCloudResourcePrefetchPredicates

+ (id)predicateForOriginalResourcesForPrefetchLocallyAvailableOnly:(BOOL)only
{
  onlyCopy = only;
  v35[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = +[PLInternalResource originalCPLResourceTypesForMaster];
  v6 = [v4 predicateWithFormat:@"%K IN %@", @"dataStoreSubtype", v5];
  v35[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"version", 0];
  v35[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = MEMORY[0x1E696AE18];
  v12 = +[PLInternalResource originalCPLResourceTypesForAsset];
  v13 = [v11 predicateWithFormat:@"%K IN %@", @"dataStoreSubtype", v12];
  v34[0] = v13;
  v14 = MEMORY[0x1E696AB28];
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"version", 2];
  v33[0] = v15;
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"version", 1];
  v33[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v18 = [v14 orPredicateWithSubpredicates:v17];
  v34[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v20 = [v10 andPredicateWithSubpredicates:v19];

  if (onlyCopy)
  {
    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 1];
    v22 = MEMORY[0x1E696AB28];
    v31[0] = v9;
    v31[1] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v24 = [v22 orPredicateWithSubpredicates:v23];
    v32[0] = v24;
    v32[1] = v21;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v26 = [v22 andPredicateWithSubpredicates:v25];
  }

  else
  {
    v27 = MEMORY[0x1E696AB28];
    v30[0] = v9;
    v30[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v26 = [v27 orPredicateWithSubpredicates:v21];
  }

  return v26;
}

+ (id)predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions:(id)options photoLibrary:(id)library
{
  v28[3] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  libraryCopy = library;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __111__PLCloudResourcePrefetchPredicates_predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions_photoLibrary___block_invoke;
  v23 = &unk_1E75761B8;
  v8 = optionsCopy;
  v24 = v8;
  v9 = libraryCopy;
  v25 = v9;
  v10 = v7;
  v26 = v10;
  [v9 performBlockAndWait:&v20];
  if ([v10 count] && (v11 = MEMORY[0x1E696AB28], objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"%K IN %@", @"asset", v10, v20, v21, v22, v23, v24, v25), v12 = objc_claimAutoreleasedReturnValue(), v28[0] = v12, objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"%K = %d", @"cloudLocalState", 3), v13 = objc_claimAutoreleasedReturnValue(), v28[1] = v13, objc_msgSend(v8, "prefetchConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), +[PLInternalResource prefetchResourcePredicateForCPLResourceType:isAssetResource:maxRetry:excludeDynamicResources:additionalResourcePredicates:](PLInternalResource, "prefetchResourcePredicateForCPLResourceType:isAssetResource:maxRetry:excludeDynamicResources:additionalResourcePredicates:", 27, 1, objc_msgSend(v14, "cloudResourceMaxPrefetchRetry"), objc_msgSend(v8, "excludeDynamicResources"), 0), v15 = objc_claimAutoreleasedReturnValue(), v28[2] = v15, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 3), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "andPredicateWithSubpredicates:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, v12, v17))
  {
    v27 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __111__PLCloudResourcePrefetchPredicates_predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions_photoLibrary___block_invoke(id *a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"additionalAssetAttributes"];
  v22[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NULL", @"data"];
  v22[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setResultType:2];
  v21[0] = @"additionalAssetAttributes";
  v21[1] = @"additionalAssetAttributes.asset";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v2 setRelationshipKeyPathsForPrefetching:v8];

  v20 = @"additionalAssetAttributes.asset";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  [v2 setPropertiesToFetch:v9];

  v10 = [a1[4] prefetchConfiguration];
  [v2 setFetchLimit:{objc_msgSend(v10, "cloudResourceMediaMetadataOverflowMaxResourcesPerFetch")}];

  v11 = [a1[5] managedObjectContext];
  v17 = 0;
  v12 = [v11 executeFetchRequest:v2 error:&v17];
  v13 = v17;

  if (v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __111__PLCloudResourcePrefetchPredicates_predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions_photoLibrary___block_invoke_2;
    v15[3] = &unk_1E7574658;
    v16 = a1[6];
    [v12 enumerateObjectsUsingBlock:v15];
    v14 = v16;
  }

  else
  {
    v14 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch internal resources for metadata overflow: %@", buf, 0xCu);
    }
  }
}

void __111__PLCloudResourcePrefetchPredicates_predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions_photoLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"additionalAssetAttributes.asset"];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

+ (id)predicateToPrefetchMediaMetadataResourcesWithOptions:(id)options photoLibrary:(id)library
{
  v28[3] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  libraryCopy = library;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __103__PLCloudResourcePrefetchPredicates_predicateToPrefetchMediaMetadataResourcesWithOptions_photoLibrary___block_invoke;
  v23 = &unk_1E75761B8;
  v8 = optionsCopy;
  v24 = v8;
  v9 = libraryCopy;
  v25 = v9;
  v10 = v7;
  v26 = v10;
  [v9 performBlockAndWait:&v20];
  if ([v10 count] && (v11 = MEMORY[0x1E696AB28], objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"%K IN %@", @"asset", v10, v20, v21, v22, v23, v24, v25), v12 = objc_claimAutoreleasedReturnValue(), v28[0] = v12, objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"%K = %d", @"cloudLocalState", 3), v13 = objc_claimAutoreleasedReturnValue(), v28[1] = v13, objc_msgSend(v8, "prefetchConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), +[PLInternalResource prefetchResourcePredicateForCPLResourceType:isAssetResource:maxRetry:excludeDynamicResources:additionalResourcePredicates:](PLInternalResource, "prefetchResourcePredicateForCPLResourceType:isAssetResource:maxRetry:excludeDynamicResources:additionalResourcePredicates:", 10, 0, objc_msgSend(v14, "cloudResourceMaxPrefetchRetry"), objc_msgSend(v8, "excludeDynamicResources"), 0), v15 = objc_claimAutoreleasedReturnValue(), v28[2] = v15, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 3), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "andPredicateWithSubpredicates:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, v12, v17))
  {
    v27 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __103__PLCloudResourcePrefetchPredicates_predicateToPrefetchMediaMetadataResourcesWithOptions_photoLibrary___block_invoke(id *a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"cloudMaster"];
  v33[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NULL", @"data"];
  v33[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  v32[0] = @"cloudMaster";
  v32[1] = @"cloudMaster.assets";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v2 setRelationshipKeyPathsForPrefetching:v8];

  v9 = [a1[4] prefetchConfiguration];
  [v2 setFetchLimit:{objc_msgSend(v9, "cloudResourceMediaMetadataOverflowMaxResourcesPerFetch")}];

  v10 = [a1[5] managedObjectContext];
  v28 = 0;
  v11 = [v10 executeFetchRequest:v2 error:&v28];
  v12 = v28;

  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v22 = v11;
      v23 = v12;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * i) cloudMaster];
          v19 = [v18 assets];
          v20 = [v19 anyObject];
          v21 = [v20 objectID];

          if (v21)
          {
            [a1[6] addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v15);
      v11 = v22;
      v12 = v23;
    }
  }

  else
  {
    v13 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch internal resources for metadata overflow: %@", buf, 0xCu);
    }
  }
}

+ (id)predicatesForComputeSync:(id)sync photoLibrary:(id)library
{
  v24[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  syncCopy = sync;
  date = [v4 date];
  v20 = [date dateByAddingTimeInterval:-86400.0];

  v7 = MEMORY[0x1E696AB28];
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v24[0] = v22;
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"resourceType", 14];
  v24[1] = v21;
  327689 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 327689];
  v24[2] = 327689;
  0xFFFFFFFFLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 0xFFFFFFFFLL];
  v24[3] = 0xFFFFFFFFLL;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"remoteAvailability", 1];
  v24[4] = v10;
  v11 = MEMORY[0x1E696AE18];
  prefetchConfiguration = [syncCopy prefetchConfiguration];

  v13 = [v11 predicateWithFormat:@"%K <= %d", @"cloudPrefetchCount", objc_msgSend(prefetchConfiguration, "computeSyncCloudResourceMaxPrefetchRetry")];
  v24[5] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"cloudLastPrefetchDate", v20];
  v24[6] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"cloudPrunedAt"];
  v24[7] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:8];
  v17 = [v7 andPredicateWithSubpredicates:v16];

  v23 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];

  return v18;
}

+ (id)predicatesForWidget:(id)widget photoLibrary:(id)library
{
  widgetCopy = widget;
  libraryCopy = library;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if (![widgetCopy prefetchMode])
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    v10 = [PLSuggestion suggestionsToPrefetchInManagedObjectContext:managedObjectContext];

    v11 = [self _predicateToPrefetchSuggestions:v10 photoLibrary:libraryCopy options:widgetCopy];
    if (v11)
    {
      [v8 addObject:v11];
    }

    managedObjectContext2 = [libraryCopy managedObjectContext];
    v13 = [PLMemory memoriesToPrefetchForWidgetInManagedObjectContext:managedObjectContext2];

    v14 = [self _predicateToPrefetchMemoryKeyAssets:v13 photoLibrary:libraryCopy options:widgetCopy];
    if (v14)
    {
      [v8 addObject:v14];
    }
  }

  return v8;
}

+ (id)predicatesForMemories:(id)memories photoLibrary:(id)library
{
  memoriesCopy = memories;
  libraryCopy = library;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if (![memoriesCopy prefetchMode])
  {
    prefetchConfiguration = [memoriesCopy prefetchConfiguration];
    v10 = [PLMemory memoriesToPrefetchInPhotoLibrary:libraryCopy prefetchConfiguration:prefetchConfiguration];

    v11 = [self predicateToPrefetchMemories:v10 photoLibrary:libraryCopy options:memoriesCopy];
    if (v11)
    {
      [v8 addObject:v11];
    }
  }

  return v8;
}

+ (id)predicatesForNonThumbnails:(id)thumbnails lastCompletePrefetchDate:(id)date
{
  v66[1] = *MEMORY[0x1E69E9840];
  thumbnailsCopy = thumbnails;
  dateCopy = date;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:20];
  prefetchMode = [thumbnailsCopy prefetchMode];
  if (prefetchMode == 1)
  {
    v21 = [self predicatesForOriginalResources:thumbnailsCopy additionalResourcePredicates:0];
    [v8 addObjectsFromArray:v21];

    goto LABEL_20;
  }

  if (prefetchMode)
  {
    goto LABEL_20;
  }

  [MEMORY[0x1E6994B90] derivativeGenerationThreshold];
  v11 = v10;
  v12 = [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:4];
  [MEMORY[0x1E6994B90] derivativeGenerationThreshold];
  v14 = v13;
  v15 = [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:3];
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  if ([thumbnailsCopy prefetchOptimizeMode] != 2)
  {
    prefetchConfiguration = [thumbnailsCopy prefetchConfiguration];
    v18 = [self _predicateForMaxFilesize:{objc_msgSend(prefetchConfiguration, "cloudResourcePrefetchMaxFileSize")}];
    [array addObject:v18];
  }

  if (dateCopy)
  {
    v19 = [dateCopy dateByAddingTimeInterval:-3600.0];
    if (!v19)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if ([thumbnailsCopy prefetchOptimizeMode] != 2)
  {
    prefetchConfiguration2 = [thumbnailsCopy prefetchConfiguration];
    optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow = [prefetchConfiguration2 optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow];

    if (optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow)
    {
      v24 = MEMORY[0x1E695DF00];
      prefetchConfiguration3 = [thumbnailsCopy prefetchConfiguration];
      v19 = [v24 dateWithTimeIntervalSinceNow:{-objc_msgSend(prefetchConfiguration3, "optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow")}];

      if (v19)
      {
LABEL_7:
        v20 = [self _predicateForResourceCreatedAfterDate:v19];
        [array addObject:v20];
      }
    }
  }

LABEL_12:
  prefetchOptimizeMode = [thumbnailsCopy prefetchOptimizeMode];
  switch(prefetchOptimizeMode)
  {
    case 2:
      _assetIsUnadjustedPredicate3 = [self predicatesForOriginalResources:thumbnailsCopy additionalResourcePredicates:array];
      [v8 addObjectsFromArray:_assetIsUnadjustedPredicate3];
      goto LABEL_18;
    case 1:
      v48 = [self _assetPredicateForCPLResourceType:2 additionalAssetPredicates:0 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v48];

      v49 = [self _assetPredicateForCPLResourceType:16 additionalAssetPredicates:0 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v49];

      v50 = [self _predicateForImageResourcePixelsLessOrEqual:(v14 * v15)];
      v51 = [array arrayByAddingObject:v50];

      _assetIsUnadjustedPredicate = [self _assetIsUnadjustedPredicate];
      v63 = _assetIsUnadjustedPredicate;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      v54 = [self _masterPredicateForCPLResourceType:1 additionalAssetPredicates:v53 additionalResourcePredicates:v51 options:thumbnailsCopy];
      [v8 addObject:v54];

      v55 = [self _assetPredicateForCPLResourceType:19 additionalAssetPredicates:0 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v55];

      _assetIsUnadjustedPredicate2 = [self _assetIsUnadjustedPredicate];
      v62 = _assetIsUnadjustedPredicate2;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      v58 = [self _masterPredicateForCPLResourceType:18 additionalAssetPredicates:v57 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v58];

      break;
    case 0:
      v60 = (v11 * v12);
      v27 = [PLInternalResource predicateForResourceIsNotLocallyAvailableWithCPLResourceType:2 version:2];
      v28 = [array arrayByAddingObject:v27];
      v29 = [self _assetPredicateForCPLResourceType:4 additionalAssetPredicates:0 additionalResourcePredicates:v28 options:thumbnailsCopy];
      [v8 addObject:v29];

      v30 = [PLInternalResource predicateForResourceIsNotLocallyAvailableWithCPLResourceType:1 version:0];
      v31 = [array arrayByAddingObject:v30];
      v32 = [self _masterPredicateForCPLResourceType:4 additionalAssetPredicates:0 additionalResourcePredicates:v31 options:thumbnailsCopy];
      [v8 addObject:v32];

      _irisConditionPredicate = [self _irisConditionPredicate];
      v66[0] = _irisConditionPredicate;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      v35 = [PLInternalResource predicateForResourceIsNotLocallyAvailableWithCPLResourceType:19 version:2];
      v36 = [array arrayByAddingObject:v35];
      v37 = [self _assetPredicateForCPLResourceType:6 additionalAssetPredicates:v34 additionalResourcePredicates:v36 options:thumbnailsCopy];
      [v8 addObject:v37];

      _irisConditionPredicate2 = [self _irisConditionPredicate];
      v65 = _irisConditionPredicate2;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      v40 = [PLInternalResource predicateForResourceIsNotLocallyAvailableWithCPLResourceType:18 version:0];
      v41 = [array arrayByAddingObject:v40];
      v42 = [self _masterPredicateForCPLResourceType:6 additionalAssetPredicates:v39 additionalResourcePredicates:v41 options:thumbnailsCopy];
      [v8 addObject:v42];

      v43 = [self _predicateForImageResourcePixelsLessOrEqual:v60];
      [array addObject:v43];

      v44 = [self _assetPredicateForCPLResourceType:2 additionalAssetPredicates:0 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v44];

      _assetIsUnadjustedPredicate3 = [self _assetIsUnadjustedPredicate];
      v64 = _assetIsUnadjustedPredicate3;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v47 = [self _masterPredicateForCPLResourceType:1 additionalAssetPredicates:v46 additionalResourcePredicates:array options:thumbnailsCopy];
      [v8 addObject:v47];

LABEL_18:
      break;
  }

  objc_autoreleasePoolPop(context);
LABEL_20:

  return v8;
}

+ (id)predicatesForOriginalResources:(id)resources additionalResourcePredicates:(id)predicates
{
  v34 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  predicatesCopy = predicates;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:20];
  v9 = +[PLInternalResource originalCPLResourceTypesForMaster];
  v10 = [v9 arrayByAddingObject:&unk_1F0FBDFA8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [self _masterPredicateForCPLResourceType:objc_msgSend(*(*(&v28 + 1) + 8 * i) additionalAssetPredicates:"unsignedIntegerValue") additionalResourcePredicates:0 options:{predicatesCopy, resourcesCopy}];
        [v8 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = +[PLInternalResource originalCPLResourceTypesForAsset];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [self _assetPredicateForCPLResourceType:objc_msgSend(*(*(&v24 + 1) + 8 * j) additionalAssetPredicates:"unsignedIntegerValue") additionalResourcePredicates:0 options:{predicatesCopy, resourcesCopy}];
        [v8 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  return v8;
}

+ (id)predicatesForThumbnails:(id)thumbnails
{
  v14[1] = *MEMORY[0x1E69E9840];
  thumbnailsCopy = thumbnails;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  if ((PLIsEDUMode() & 1) == 0)
  {
    _missingThumbnailPredicate = [self _missingThumbnailPredicate];
    v14[0] = _missingThumbnailPredicate;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [self _assetPredicateForCPLResourceType:5 additionalAssetPredicates:v7 additionalResourcePredicates:0 options:thumbnailsCopy];
    [v5 addObject:v8];

    _missingThumbnailPredicate2 = [self _missingThumbnailPredicate];
    v13 = _missingThumbnailPredicate2;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v11 = [self _masterPredicateForCPLResourceType:5 additionalAssetPredicates:v10 additionalResourcePredicates:0 options:thumbnailsCopy];
    [v5 addObject:v11];
  }

  return v5;
}

+ (id)predicateToPrefetchHighlightWithUUIDs:(id)ds photoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__93950;
  v19 = __Block_byref_object_dispose__93951;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PLCloudResourcePrefetchPredicates_predicateToPrefetchHighlightWithUUIDs_photoLibrary___block_invoke;
  v11[3] = &unk_1E7578820;
  v7 = dsCopy;
  v12 = v7;
  v8 = libraryCopy;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __88__PLCloudResourcePrefetchPredicates_predicateToPrefetchHighlightWithUUIDs_photoLibrary___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
    v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", *(a1 + 32)];
    v35 = a1;
    v3 = [*(a1 + 40) managedObjectContext];
    v59 = 0;
    v37 = v2;
    v4 = [PLPhotosHighlight allPhotosHighlightsInManagedObjectContext:v3 predicate:v2 keyPathsForPrefetching:0 error:&v59];
    v38 = v59;

    v36 = v4;
    if (v4)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v4;
      v42 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (!v42)
      {
        goto LABEL_44;
      }

      v41 = *v56;
      while (1)
      {
        v5 = 0;
        do
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v55 + 1) + 8 * v5);
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8 = [v6 kind];
          v44 = v5;
          if (v8 > 1)
          {
            if (v8 != 3)
            {
              if (v8 != 2)
              {
                goto LABEL_19;
              }

              v9 = [v6 yearKeyAssetPrivate];
              goto LABEL_15;
            }
          }

          else if (v8)
          {
            if (v8 != 1)
            {
              goto LABEL_19;
            }

            v9 = [v6 monthKeyAssetPrivate];
LABEL_15:
            v10 = v9;
            if (v9)
            {
              [v7 addObject:v9];
            }

            goto LABEL_18;
          }

          v10 = [v6 assets];
          v11 = [v10 allObjects];
          [v7 addObjectsFromArray:v11];

LABEL_18:
LABEL_19:
          v43 = v6;
          v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v45 = v7;
          v13 = [v45 countByEnumeratingWithState:&v51 objects:v65 count:16];
          if (v13)
          {
            v14 = v13;
            v46 = *v52;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v52 != v46)
                {
                  objc_enumerationMutation(v45);
                }

                v16 = *(*(&v51 + 1) + 8 * i);
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v17 = [v16 modernResources];
                v18 = [v17 countByEnumeratingWithState:&v47 objects:v64 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v48;
                  do
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v48 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = *(*(&v47 + 1) + 8 * j);
                      if (([v22 isLocallyAvailable] & 1) == 0)
                      {
                        if ([v22 isCPLOriginalResource] && (objc_msgSend(v22, "uniformTypeIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "conformsToRawImage"), v23, !v24) || objc_msgSend(v22, "cplType") == 2)
                        {
                          v25 = [v22 objectID];
                          [v12 addObject:v25];
                        }
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v47 objects:v64 count:16];
                  }

                  while (v19);
                }
              }

              v14 = [v45 countByEnumeratingWithState:&v51 objects:v65 count:16];
            }

            while (v14);
          }

          if ([v12 count])
          {
            v26 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v12 count];
              v28 = [v43 uuid];
              *buf = 134218242;
              v61 = v27;
              v62 = 2112;
              v63 = v28;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Will prefetch %lu resources for highlight %@", buf, 0x16u);
            }

            v29 = [v12 allObjects];
            [v40 addObjectsFromArray:v29];
          }

          v5 = v44 + 1;
        }

        while (v44 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (!v42)
        {
LABEL_44:

          if ([v40 count])
          {
            v30 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v40 count];
              *buf = 134217984;
              v61 = v31;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Will prefetch %lu highlight resources", buf, 0xCu);
            }

            v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v40];
            v33 = *(*(v35 + 48) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }
    }

    v34 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v38;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to fetch highlights: %@", buf, 0xCu);
    }

LABEL_50:

LABEL_51:
  }
}

+ (id)predicateToPrefetchMemories:(id)memories photoLibrary:(id)library options:(id)options
{
  memoriesCopy = memories;
  libraryCopy = library;
  optionsCopy = options;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__93950;
  v24 = __Block_byref_object_dispose__93951;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PLCloudResourcePrefetchPredicates_predicateToPrefetchMemories_photoLibrary_options___block_invoke;
  v15[3] = &unk_1E7576680;
  v11 = memoriesCopy;
  v16 = v11;
  v12 = optionsCopy;
  v18 = &v20;
  selfCopy = self;
  v17 = v12;
  [libraryCopy performBlockAndWait:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __86__PLCloudResourcePrefetchPredicates_predicateToPrefetchMemories_photoLibrary_options___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *(a1 + 32);
  v37 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v37)
  {
    v36 = *v54;
    do
    {
      v3 = 0;
      do
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v53 + 1) + 8 * v3);
        v5 = [v4 userCuratedAssets];
        v40 = v3;
        if ([v5 count])
        {
          [v4 userCuratedAssets];
        }

        else
        {
          [v4 curatedAssets];
        }
        v6 = ;

        v38 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"dateCreated" ascending:1];
        v61 = v38;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        v39 = v6;
        v8 = [v6 sortedArrayUsingDescriptors:v7];

        v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v42 = v8;
        v9 = [v42 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = 0;
          v43 = *v50;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v50 != v43)
              {
                objc_enumerationMutation(v42);
              }

              v14 = *(*(&v49 + 1) + 8 * i);
              if ([v14 isVideo] && (objc_msgSend(*(a1 + 40), "prefetchConfiguration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "memoryMaxPrefetchVideosCount"), v15, v12 < v16))
              {
                [v41 addObject:v14];
                ++v12;
              }

              else if ([v14 isPhoto] && (objc_msgSend(*(a1 + 40), "prefetchConfiguration"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "memoryMaxPrefetchPhotosCount"), v17, v11 < v18))
              {
                [v41 addObject:v14];
                ++v11;
              }

              else
              {
                v19 = [*(a1 + 40) prefetchConfiguration];
                if (v11 >= [v19 memoryMaxPrefetchPhotosCount])
                {
                  v20 = [*(a1 + 40) prefetchConfiguration];
                  v21 = [v20 memoryMaxPrefetchVideosCount];

                  if (v12 >= v21)
                  {
                    goto LABEL_25;
                  }
                }

                else
                {
                }
              }
            }

            v10 = [v42 countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v10);
        }

LABEL_25:

        v22 = [v4 keyAsset];
        if (v22)
        {
          [v41 addObject:v22];
        }

        v44 = v22;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = v41;
        v24 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [*(a1 + 56) _resourcesToPrefetchForAsset:*(*(&v45 + 1) + 8 * j) options:*(a1 + 40)];
              if ([v28 count])
              {
                v29 = PLResourceCachingGetLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v4 uuid];
                  *buf = 138543362;
                  v58 = v30;
                  _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Will prefetch resources for memory %{public}@", buf, 0xCu);
                }

                v31 = PLResourceCachingGetLog();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v58 = v28;
                  _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "Memory asset resources to prefetch: %@", buf, 0xCu);
                }

                [v2 addObjectsFromArray:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v25);
        }

        v3 = v40 + 1;
      }

      while (v40 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v37);
  }

  if ([v2 count])
  {
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v2];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }
}

+ (id)_predicateToPrefetchMemoryKeyAssets:(id)assets photoLibrary:(id)library options:(id)options
{
  assetsCopy = assets;
  libraryCopy = library;
  optionsCopy = options;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__93950;
  v24 = __Block_byref_object_dispose__93951;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PLCloudResourcePrefetchPredicates__predicateToPrefetchMemoryKeyAssets_photoLibrary_options___block_invoke;
  v15[3] = &unk_1E7576680;
  v11 = assetsCopy;
  v16 = v11;
  selfCopy = self;
  v12 = optionsCopy;
  v17 = v12;
  v18 = &v20;
  [libraryCopy performBlockAndWait:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __94__PLCloudResourcePrefetchPredicates__predicateToPrefetchMemoryKeyAssets_photoLibrary_options___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 keyAsset];
        if (v9)
        {
          v10 = [*(a1 + 56) _resourcesToPrefetchForAsset:v9 options:*(a1 + 40)];
          if ([v10 count])
          {
            v11 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v8 uuid];
              *buf = 138543362;
              v22 = v12;
              _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Will prefetch resources for widget memory %{public}@", buf, 0xCu);
            }

            v13 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v22 = v10;
              _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Widget Memory asset resources to prefetch: %@", buf, 0xCu);
            }

            [v2 addObjectsFromArray:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v2];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

+ (id)_predicateToPrefetchSuggestions:(id)suggestions photoLibrary:(id)library options:(id)options
{
  suggestionsCopy = suggestions;
  libraryCopy = library;
  optionsCopy = options;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__93950;
  v24 = __Block_byref_object_dispose__93951;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PLCloudResourcePrefetchPredicates__predicateToPrefetchSuggestions_photoLibrary_options___block_invoke;
  v15[3] = &unk_1E7576680;
  v11 = suggestionsCopy;
  v16 = v11;
  selfCopy = self;
  v12 = optionsCopy;
  v17 = v12;
  v18 = &v20;
  [libraryCopy performBlockAndWait:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __90__PLCloudResourcePrefetchPredicates__predicateToPrefetchSuggestions_photoLibrary_options___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v3;
        v4 = *(*(&v28 + 1) + 8 * v3);
        v5 = [v4 keyAssets];
        v6 = [v4 keyAssets];
        v7 = [v5 setByAddingObjectsFromSet:v6];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(a1 + 56) _resourcesToPrefetchForAsset:*(*(&v24 + 1) + 8 * i) options:*(a1 + 40)];
              if ([v13 count])
              {
                v14 = PLResourceCachingGetLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = [v4 uuid];
                  *buf = 138543362;
                  v33 = v15;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Will prefetch resources for suggestion %{public}@", buf, 0xCu);
                }

                v16 = PLResourceCachingGetLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v33 = v13;
                  _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Suggestion asset resources to prefetch: %@", buf, 0xCu);
                }

                [v2 addObjectsFromArray:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v10);
        }

        v3 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v22);
  }

  if ([v2 count])
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v2];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

+ (id)_resourcesToPrefetchForAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  if ([optionsCopy prefetchOptimizeMode])
  {
    [assetCopy isVideo];
  }

  else
  {
    [v9 addObject:&unk_1F0FBDF48];
    if ([assetCopy hdrType] == 5 && objc_msgSend(MEMORY[0x1E69C0700], "currentDeviceIsEligibleForHDRPlayback"))
    {
      v11 = &unk_1F0FBDF60;
    }

    else
    {
      v11 = &unk_1F0FBDF78;
    }

    [v10 addObject:v11];
  }

  [v9 addObjectsFromArray:&unk_1F0FC0000];
  [v10 addObjectsFromArray:&unk_1F0FC0018];
  v12 = [self _prefetchResourceForAsset:assetCopy inResourceTypes:v9 options:optionsCopy];
  if (v12)
  {
    [v8 addObject:v12];
  }

  v13 = [self _prefetchResourceForAsset:assetCopy inResourceTypes:v10 options:optionsCopy];
  if (v13)
  {
    [v8 addObject:v13];
  }

  return v8;
}

+ (id)_prefetchResourceForAsset:(id)asset inResourceTypes:(id)types options:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typesCopy = types;
  optionsCopy = options;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = typesCopy;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v14 = *v40;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        hasAdjustments = [assetCopy hasAdjustments];
        unsignedIntegerValue = [v16 unsignedIntegerValue];
        if (hasAdjustments)
        {
          [assetCopy assetResourceForCPLType:unsignedIntegerValue];
        }

        else
        {
          [assetCopy masterResourceForCPLType:unsignedIntegerValue];
        }
        v19 = ;
        if ([v19 isLocallyAvailable])
        {
          objectID = 0;
          goto LABEL_26;
        }

        if (![optionsCopy excludeDynamicResources] || (v20 = MEMORY[0x1E6994B90], objc_msgSend(v19, "fingerprint"), v21 = objc_claimAutoreleasedReturnValue(), LOBYTE(v20) = objc_msgSend(v20, "isDynamicFingerprint:", v21), v21, (v20 & 1) == 0))
        {
          if ([v19 isRemotelyAvailable])
          {
            scopedIdentifier = [v19 scopedIdentifier];

            if (scopedIdentifier)
            {
              cloudPrunedAt = [v19 cloudPrunedAt];
              dataLength = [v19 dataLength];
              prefetchConfiguration = [optionsCopy prefetchConfiguration];
              if (dataLength > [prefetchConfiguration cloudResourcePrefetchMaxFileSize])
              {
                goto LABEL_23;
              }

              cloudPrefetchCount = [v19 cloudPrefetchCount];
              prefetchConfiguration2 = [optionsCopy prefetchConfiguration];
              if (cloudPrefetchCount > [prefetchConfiguration2 cloudResourceMaxPrefetchRetry])
              {
                goto LABEL_22;
              }

              date = [MEMORY[0x1E695DF00] date];
              cloudLastPrefetchDate = [v19 cloudLastPrefetchDate];
              [date timeIntervalSinceDate:cloudLastPrefetchDate];
              if (v31 >= 86400.0)
              {
                if (cloudPrunedAt)
                {
                  date2 = [MEMORY[0x1E695DF00] date];
                  [date2 timeIntervalSinceDate:cloudPrunedAt];
                  v35 = v34;
                  [selfCopy _resourceLastPrunedPrefetchTimeInterval];
                  v37 = v36;

                  if (v35 < v37)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                }

                objectID = [v19 objectID];
              }

              else
              {

LABEL_22:
LABEL_23:

LABEL_24:
                objectID = 0;
              }

LABEL_26:
              goto LABEL_27;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  objectID = 0;
LABEL_27:

  return objectID;
}

+ (double)_resourceLastPrunedPrefetchTimeInterval
{
  v2 = 86400.0;
  if (MEMORY[0x19EAEE230](self, a2))
  {
    if (_resourceLastPrunedPrefetchTimeInterval_onceToken != -1)
    {
      dispatch_once(&_resourceLastPrunedPrefetchTimeInterval_onceToken, &__block_literal_global_93994);
    }

    if (*&_resourceLastPrunedPrefetchTimeInterval_lastPrunedPrefetchTimeIntervalDefault > 0.0)
    {
      return *&_resourceLastPrunedPrefetchTimeInterval_lastPrunedPrefetchTimeIntervalDefault;
    }
  }

  return v2;
}

void __76__PLCloudResourcePrefetchPredicates__resourceLastPrunedPrefetchTimeInterval__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&_resourceLastPrunedPrefetchTimeInterval_lastPrunedPrefetchTimeIntervalDefault = [v0 integerForKey:@"PLResourceLastPrunedPrefetchTimeInterval"];
}

+ (id)_masterPredicateForCPLResourceType:(unint64_t)type additionalAssetPredicates:(id)predicates additionalResourcePredicates:(id)resourcePredicates options:(id)options
{
  predicatesCopy = predicates;
  v10 = MEMORY[0x1E695DF70];
  optionsCopy = options;
  resourcePredicatesCopy = resourcePredicates;
  v13 = objc_alloc_init(v10);
  prefetchConfiguration = [optionsCopy prefetchConfiguration];
  cloudResourceMaxPrefetchRetry = [prefetchConfiguration cloudResourceMaxPrefetchRetry];
  excludeDynamicResources = [optionsCopy excludeDynamicResources];

  v17 = [PLInternalResource prefetchResourcePredicateForCPLResourceType:type isAssetResource:0 maxRetry:cloudResourceMaxPrefetchRetry excludeDynamicResources:excludeDynamicResources additionalResourcePredicates:resourcePredicatesCopy];

  [v13 addObject:v17];
  v18 = +[PLInternalResource originalCPLResourceTypesForMaster];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  LOBYTE(v17) = [v18 containsObject:v19];

  if ((v17 & 1) == 0)
  {
    v20 = [PLManagedAsset predicateForUnadjustedAssetsWithKeyPathToAsset:@"asset"];
    [v13 addObject:v20];
  }

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"asset.cloudLocalState", 1];
  [v13 addObject:v21];

  if ([predicatesCopy count])
  {
    [v13 addObjectsFromArray:predicatesCopy];
  }

  v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  return v22;
}

+ (id)_assetPredicateForCPLResourceType:(unint64_t)type additionalAssetPredicates:(id)predicates additionalResourcePredicates:(id)resourcePredicates options:(id)options
{
  predicatesCopy = predicates;
  v10 = MEMORY[0x1E695DF70];
  optionsCopy = options;
  resourcePredicatesCopy = resourcePredicates;
  v13 = objc_alloc_init(v10);
  prefetchConfiguration = [optionsCopy prefetchConfiguration];
  cloudResourceMaxPrefetchRetry = [prefetchConfiguration cloudResourceMaxPrefetchRetry];
  excludeDynamicResources = [optionsCopy excludeDynamicResources];

  v17 = [PLInternalResource prefetchResourcePredicateForCPLResourceType:type isAssetResource:1 maxRetry:cloudResourceMaxPrefetchRetry excludeDynamicResources:excludeDynamicResources additionalResourcePredicates:resourcePredicatesCopy];

  [v13 addObject:v17];
  v18 = [PLManagedAsset predicateForAdjustedAssetsWithKeyPathToAsset:@"asset"];
  [v13 addObject:v18];

  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"asset.cloudLocalState", 1];
  [v13 addObject:v19];

  if ([predicatesCopy count])
  {
    [v13 addObjectsFromArray:predicatesCopy];
  }

  v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];

  return v20;
}

@end