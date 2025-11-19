@interface PHFetchResult(PhotosUICore)
- (id)px_fetchAssetSortDatesWithDateRangeEliminationBlock:()PhotosUICore;
- (id)px_fetchedObjectIDsSortedByLocalIdentifiers:()PhotosUICore;
- (id)px_fetchedObjectIDsSortedByUUIDs:()PhotosUICore;
- (id)px_opaqueIdentifiers;
- (id)px_subfetchResultWithObjectsAtIndexes:()PhotosUICore objectClass:;
- (uint64_t)px_indexOfSortedAssetNearestToAsset:()PhotosUICore;
- (uint64_t)px_sortOrder;
- (void)px_safelyPrefetchObjectAtIndex:()PhotosUICore;
- (void)px_safelyPrefetchThumbnailAssetAtIndex:()PhotosUICore;
- (void)px_sortByDatePropertySetClass;
@end

@implementation PHFetchResult(PhotosUICore)

- (id)px_opaqueIdentifiers
{
  v2 = [a1 fetchedObjects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 oids];
  }

  else
  {
    v4 = [a1 fetchedObjects];
    v5 = [v4 valueForKeyPath:@"px_opaqueIdentifier"];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v7 = v5;
    }

    v3 = v7;
  }

  return v3;
}

- (uint64_t)px_sortOrder
{
  v1 = [a1 px_sortByDatePropertySetClass];
  if (v1 == objc_opt_class())
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == objc_opt_class());
  }
}

- (void)px_sortByDatePropertySetClass
{
  v1 = [a1 fetchSortDescriptors];
  v2 = [v1 firstObject];

  v3 = [v2 key];
  v4 = [MEMORY[0x1E6978638] propertiesToFetch];
  v5 = [v4 firstObject];
  v6 = [v3 isEqualToString:v5];

  if ((v6 & 1) != 0 || ([v2 key], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E6978680], "propertiesToFetch"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqualToString:", v9), v9, v8, v7, v10))
  {
    v11 = objc_opt_class();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)px_subfetchResultWithObjectsAtIndexes:()PhotosUICore objectClass:
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [a1 fetchedObjectIDs];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __81__PHFetchResult_PhotosUICore__px_subfetchResultWithObjectsAtIndexes_objectClass___block_invoke;
  v19 = &unk_1E7746D00;
  v20 = v6;
  v21 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:&v16];

  v11 = objc_alloc(MEMORY[0x1E69788E0]);
  v12 = [a1 photoLibrary];
  v13 = [a4 fetchType];
  v14 = [v11 initWithOids:v9 photoLibrary:v12 fetchType:v13 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v14;
}

- (void)px_safelyPrefetchThumbnailAssetAtIndex:()PhotosUICore
{
  v5 = [a1 count];
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
    [a1 prefetchThumbnailAssetsAtIndexes:v6];
  }
}

- (void)px_safelyPrefetchObjectAtIndex:()PhotosUICore
{
  v5 = [a1 count];
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:a3];
    [a1 prefetchObjectsAtIndexes:v6];
  }
}

- (id)px_fetchedObjectIDsSortedByUUIDs:()PhotosUICore
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AD98];
        v13 = [v11 uuid];
        v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v4, "indexOfObject:", v13)}];
        v15 = [v11 objectID];
        [v5 setObject:v14 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 keysSortedByValueUsingComparator:&__block_literal_global_207_218037];

  return v16;
}

- (id)px_fetchedObjectIDsSortedByLocalIdentifiers:()PhotosUICore
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AD98];
        v13 = [v11 localIdentifier];
        v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v4, "indexOfObject:", v13)}];
        v15 = [v11 objectID];
        [v5 setObject:v14 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 keysSortedByValueUsingComparator:&__block_literal_global_205_218039];

  return v16;
}

- (id)px_fetchAssetSortDatesWithDateRangeEliminationBlock:()PhotosUICore
{
  v63 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v44 = a1;
  v4 = [a1 px_sortByDatePropertySetClass];
  if (v4 == objc_opt_class())
  {
    v5 = &__block_literal_global_218041;
  }

  else
  {
    if (v4 != objc_opt_class())
    {
LABEL_23:
      v22 = 0;
      goto LABEL_30;
    }

    v5 = &__block_literal_global_193_218042;
  }

  v39 = v5;
  if (!v4)
  {
    goto LABEL_23;
  }

  v37 = [MEMORY[0x1E695DF00] now];
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v44, "count")}];
  v41 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v40 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = 0;
  if ([v6 count])
  {
    v38 = v50;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      [v7 removeAllIndexes];
      if ([v6 count] >= 3)
      {
        [v7 addIndex:{objc_msgSend(v6, "firstIndex")}];
        [v7 addIndex:{objc_msgSend(v6, "lastIndex")}];
        [v6 removeIndexes:v7];
      }

      if ([v7 count] <= 0x3E7)
      {
        do
        {
          if (![v6 count])
          {
            break;
          }

          v10 = [v6 count];
          if (([v7 count] + v10) > 0x3E7)
          {
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_3;
            v55[3] = &unk_1E7746C88;
            v56 = v7;
            [v6 enumerateRangesUsingBlock:v55];
          }

          else
          {
            [v7 addIndexes:v6];
          }

          [v6 removeIndexes:v7];
        }

        while ([v7 count] < 0x3E8);
      }

      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "%@ batchedBinarySearch fetchItems:%@", buf, 0x16u);
      }

      v14 = [v44 fetchPropertiesForPropertySetClass:v4 forObjectsAtIndexes:v7];
      if (!v14)
      {
        break;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v58 = 0;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v50[0] = __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_198;
      v50[1] = &unk_1E7746CB0;
      v15 = v42;
      v51 = v15;
      v53 = v39;
      v16 = v14;
      v52 = v16;
      v54 = buf;
      [v7 enumerateIndexesUsingBlock:v49];
      [v41 addIndexes:v7];

      _Block_object_dispose(buf, 8);
      v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __83__PHFetchResult_PhotosUICore__px_fetchAssetSortDatesWithDateRangeEliminationBlock___block_invoke_2_201;
      v45[3] = &unk_1E7746CD8;
      v46 = v15;
      v48 = v43;
      v18 = v17;
      v47 = v18;
      [v6 enumerateRangesUsingBlock:v45];
      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEBUG, "%@ batchedBinarySearch eliminated ranges:%@", buf, 0x16u);
      }

      [v6 removeIndexes:v18];
      [v40 addIndexes:v18];

      objc_autoreleasePoolPop(v9);
      ++v8;
      if (![v6 count])
      {
        goto LABEL_27;
      }
    }

    v23 = PLUIGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromClass(v4);
      *buf = 138412802;
      *&buf[4] = v44;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      *&buf[22] = 2112;
      v58 = v24;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "%@ unable to fetch properties from %@ for propertySetClass %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

LABEL_27:
  v25 = [off_1E7721498 alloc];
  v26 = [v44 fetchSortDescriptors];
  v27 = [v26 firstObject];
  v22 = [v25 initWithSortDescriptor:v27 fetchedIndexes:v41 dateByIndex:v42];

  v28 = [MEMORY[0x1E695DF00] now];
  [v28 timeIntervalSinceDate:v37];
  v30 = v29;

  v31 = PLUIGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v40 count];
    v35 = [v42 count];
    *buf = 138413314;
    *&buf[4] = v33;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    *&buf[22] = 2048;
    v58 = v35;
    v59 = 2048;
    v60 = v8;
    v61 = 2048;
    v62 = v30;
    _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_DEBUG, "%@ batchedBinarySearch skippedItems:%lu fetchedItems:%lu fetchesDone:%ld duration:%.3fs", buf, 0x34u);
  }

LABEL_30:

  return v22;
}

- (uint64_t)px_indexOfSortedAssetNearestToAsset:()PhotosUICore
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [a1 px_sortByDatePropertySetClass];
  if (v5 == objc_opt_class())
  {
    [v4 fetchPropertySetsIfNeeded];
    v7 = [v4 curationProperties];
    v6 = [v7 addedDate];

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 == objc_opt_class())
  {
    v6 = [v4 creationDate];
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__PHFetchResult_PhotosUICore__px_indexOfSortedAssetNearestToAsset___block_invoke;
    v17[3] = &unk_1E7746BF8;
    v8 = v6;
    v18 = v8;
    v9 = [a1 px_fetchAssetSortDatesWithDateRangeEliminationBlock:v17];
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0x7FEFFFFFFFFFFFFFLL;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PHFetchResult_PhotosUICore__px_indexOfSortedAssetNearestToAsset___block_invoke_2;
    v12[3] = &unk_1E7746C20;
    v6 = v8;
    v13 = v6;
    v14 = v16;
    v15 = &v19;
    [v9 enumerateFetchedItemsUsingBlock:v12];

    _Block_object_dispose(v16, 8);
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  v10 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v10;
}

@end