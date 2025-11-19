@interface PXPhotosAssetsFetcher
+ (BOOL)_adjustedReverseSortOrderForCollection:(id)a3 reverseSortOrder:(BOOL)a4 fetcherOptions:(unint64_t)a5;
+ (BOOL)_shouldReverseDefaultSortDescriptorsForCollection:(id)a3 fetcherOptions:(unint64_t)a4;
+ (id)sharedFetcherForPhotoLibrary:(id)a3;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotosAssetsFetcher)initWithPhotoLibrary:(id)a3;
- (id)_cachedFetchResultForContainer:(id)a3 configuration:(id)a4;
- (id)_existingAssetsInContainer:(id)a3 curationKind:(int64_t)a4 curationLength:(int64_t)a5 options:(unint64_t)a6 sortDescriptors:(id)a7 reverseSortOrder:(BOOL)a8 filterPredicate:(id)a9 fetchPropertySets:(id)a10 libraryFilter:(int64_t)a11 includeOthersInSocialGroupAssets:(BOOL)a12;
- (id)_existingCuratedAssetsFetchResultForAssetCollection:(id)a3 referencePersons:(id)a4 curationType:(int64_t)a5 curationKind:(int64_t)a6 curationLength:(int64_t)a7 options:(unint64_t)a8 sortDescriptors:(id)a9 reverseSortOrder:(BOOL)a10 filterPredicate:(id)a11 fetchPropertySets:(id)a12 libraryFilter:(int64_t)a13;
- (id)_existingFetchResultForAssetCollection:(id)a3 withFilterPredicate:(id)a4 inclusionPredicate:(id)a5 includeUnsavedSyndicatedAssets:(BOOL)a6 includeSharedCollectionAssets:(BOOL)a7 includeAllBurstAssets:(BOOL)a8 fetchLimit:(unint64_t)a9 options:(unint64_t)a10 sortDescriptors:(id)a11 reverseSortOrder:(BOOL)a12 hideHiddenAssets:(BOOL)a13 fetchPropertySets:(id)a14 libraryFilter:(int64_t)a15;
- (id)_existingKeyAssetsFetchResultForAssetCollection:(id)a3 referenceAsset:(id)a4 referencePersons:(id)a5 curated:(BOOL)a6 options:(unint64_t)a7 libraryFilter:(int64_t)a8;
- (id)_fetchAssetsInAssetCollection:(id)a3 withFilterPredicate:(id)a4 inclusionPredicate:(id)a5 includeUnsavedSyndicatedAssets:(BOOL)a6 includeSharedCollectionAssets:(BOOL)a7 includeAllBurstAssets:(BOOL)a8 fetchLimit:(unint64_t)a9 options:(unint64_t)a10 sortDescriptors:(id)a11 reverseSortOrder:(BOOL)a12 hideHiddenAssets:(BOOL)a13 fetchPropertySets:(id)a14 libraryFilter:(int64_t)a15 includeOthersInSocialGroupAssets:(BOOL)a16;
- (id)_fetchAssetsInContainer:(id)a3 curationKind:(int64_t)a4 curationLength:(int64_t)a5 options:(unint64_t)a6 sortDescriptors:(id)a7 reverseSortOrder:(BOOL)a8 filterPredicate:(id)a9 fetchPropertySets:(id)a10 libraryFilter:(int64_t)a11 includeOthersInSocialGroupAssets:(BOOL)a12;
- (id)_fetchConfigurationForCuratedAssetsWithCurationKind:(int64_t)a3 curationLength:(int64_t)a4 options:(unint64_t)a5 sortDescriptors:(id)a6 reverseSortOrder:(BOOL)a7 filterPredicate:(id)a8 fetchPropertySets:(id)a9 libraryFilter:(int64_t)a10 includeOthersInSocialGroupAssets:(BOOL)a11;
- (id)_fetchConfigurationForCurationWithReferencePersons:(id)a3 curationType:(int64_t)a4 curationKind:(int64_t)a5 curationLength:(int64_t)a6 options:(unint64_t)a7 sortDescriptors:(id)a8 reverseSortOrder:(BOOL)a9 filterPredicate:(id)a10 fetchPropertySets:(id)a11 libraryFilter:(int64_t)a12;
- (id)_fetchConfigurationForKeyAssetWithReferenceAsset:(id)a3 referencePersons:(id)a4 curated:(BOOL)a5 options:(unint64_t)a6 libraryFilter:(int64_t)a7;
- (id)_fetchConfigurationWithFilterPredicate:(id)a3 inclusionPredicate:(id)a4 includeUnsavedSyndicatedAssets:(BOOL)a5 includeSharedCollectionAssets:(BOOL)a6 includeAllBurstAssets:(BOOL)a7 fetchLimit:(unint64_t)a8 options:(unint64_t)a9 sortDescriptors:(id)a10 reverseSortOrder:(BOOL)a11 hideHiddenAssets:(BOOL)a12 fetchPropertySets:(id)a13 libraryFilter:(int64_t)a14;
- (id)_fetchCuratedAssetsInAssetCollection:(id)a3 referencePersons:(id)a4 curationType:(int64_t)a5 curationKind:(int64_t)a6 curationLength:(int64_t)a7 options:(unint64_t)a8 sortDescriptors:(id)a9 reverseSortOrder:(BOOL)a10 filterPredicate:(id)a11 fetchPropertySets:(id)a12 libraryFilter:(int64_t)a13 includeOthersInSocialGroupAssets:(BOOL)a14;
- (id)_fetchKeyAssetsInAssetCollection:(id)a3 curated:(BOOL)a4 referenceAsset:(id)a5 referencePersons:(id)a6 options:(unint64_t)a7 libraryFilter:(int64_t)a8;
- (id)_fetchKeyAssetsInContainer:(id)a3 options:(id)a4;
- (id)_fetchKeyCuratedAssetsInPhotosHighlight:(id)a3 options:(id)a4;
- (id)_fetchOptionsForAssetsInAssetCollection:(id)a3 withFetcherOptions:(unint64_t)a4 filterPredicate:(id)a5 inclusionPredicate:(id)a6 fetchLimit:(unint64_t)a7 sortDescriptors:(id)a8 reverseSortOrder:(BOOL)a9 fetchPropertySets:(id)a10 hideHiddenAssets:(BOOL)a11 includeAllBurstAssets:(BOOL)a12;
- (id)_fetchOptionsForContainer:(id)a3 curationKind:(int64_t)a4 options:(unint64_t)a5 sortDescriptors:(id)a6 reverseSortOrder:(BOOL)a7 filterPredicate:(id)a8 fetchPropertySets:(id)a9 libraryFilter:(int64_t)a10;
- (id)_fetchOptionsForCuratedAssetsInAssetCollection:(id)a3 withFetcherOptions:(unint64_t)a4 curationKind:(int64_t)a5 reverseSortOrder:(BOOL)a6 filterPredicate:(id)a7 fetchPropertySets:(id)a8 libraryFilter:(int64_t)a9;
- (id)_fetchResultForContainer:(id)a3 configuration:(id)a4 factory:(id)a5 fallbackFactory:(id)a6;
- (id)_importantFetchNameForCollectionSubtype:(int64_t)a3;
- (id)existingAssetsFetchResultForContainer:(id)a3 configuration:(id)a4;
- (id)fetchAssetsInContainer:(id)a3 configuration:(id)a4;
- (void)_cacheFetchResult:(id)a3 forContainer:(id)a4 configuration:(id)a5;
- (void)clearFetchResultsForAssetCollection:(id)a3;
- (void)clearFetchResultsForAssetCollections:(id)a3;
- (void)dealloc;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
@end

@implementation PXPhotosAssetsFetcher

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke_2;
  v4[3] = &unk_1E774C620;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 16) objectEnumerator];
  v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v15)
  {
    v14 = *v24;
    do
    {
      v1 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v1;
        v2 = *(*(&v23 + 1) + 8 * v1);
        v3 = [MEMORY[0x1E695DF90] dictionary];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v4 = [v2 keyEnumerator];
        v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v20;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v20 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v19 + 1) + 8 * i);
              v10 = [v2 objectForKey:v9];
              v11 = [*(a1 + 40) changeDetailsForFetchResult:v10];
              v12 = [v11 fetchResultAfterChanges];
              if (v12)
              {
                [v3 setObject:v12 forKeyedSubscript:v9];
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v6);
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke_3;
        v18[3] = &unk_1E773A890;
        v18[4] = v2;
        [v3 enumerateKeysAndObjectsUsingBlock:v18];

        v1 = v16 + 1;
      }

      while (v16 + 1 != v15);
      v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }
}

- (id)_fetchConfigurationForKeyAssetWithReferenceAsset:(id)a3 referencePersons:(id)a4 curated:(BOOL)a5 options:(unint64_t)a6 libraryFilter:(int64_t)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count") + 2}];
  [v13 addObject:@"PXKeyAssetFetchConfiguration"];
  if (v11 && !v9)
  {
    [v13 addObject:v11];
  }

  if (v12 && !v9)
  {
    [v13 addObjectsFromArray:v12];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v13 addObject:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v13 addObject:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v13 addObject:v16];

  v17 = [[off_1E7721928 alloc] initWithObjects:v13];

  return v17;
}

- (id)_fetchConfigurationForCurationWithReferencePersons:(id)a3 curationType:(int64_t)a4 curationKind:(int64_t)a5 curationLength:(int64_t)a6 options:(unint64_t)a7 sortDescriptors:(id)a8 reverseSortOrder:(BOOL)a9 filterPredicate:(id)a10 fetchPropertySets:(id)a11 libraryFilter:(int64_t)a12
{
  v17 = a3;
  v18 = a8;
  v19 = a10;
  v20 = a11;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v17, "count") + 2}];
  [v21 addObject:@"PXCuratedFetchConfiguration"];
  if (v17)
  {
    [v21 addObjectsFromArray:v17];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{a4, a12}];
  [v21 addObject:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v21 addObject:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  [v21 addObject:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  [v21 addObject:v25];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
  [v21 addObject:v26];

  if (v18)
  {
    [v21 addObject:v18];
  }

  else
  {
    v27 = [MEMORY[0x1E695DFB0] null];
    [v21 addObject:v27];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:a9];
  [v21 addObject:v28];

  if (v19)
  {
    [v21 addObject:v19];
    if (v20)
    {
LABEL_8:
      [v21 addObject:v20];
      goto LABEL_11;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E695DFB0] null];
    [v21 addObject:v29];

    if (v20)
    {
      goto LABEL_8;
    }
  }

  v30 = [MEMORY[0x1E695DFB0] null];
  [v21 addObject:v30];

LABEL_11:
  v31 = [[off_1E7721928 alloc] initWithObjects:v21];

  return v31;
}

- (id)_fetchConfigurationWithFilterPredicate:(id)a3 inclusionPredicate:(id)a4 includeUnsavedSyndicatedAssets:(BOOL)a5 includeSharedCollectionAssets:(BOOL)a6 includeAllBurstAssets:(BOOL)a7 fetchLimit:(unint64_t)a8 options:(unint64_t)a9 sortDescriptors:(id)a10 reverseSortOrder:(BOOL)a11 hideHiddenAssets:(BOOL)a12 fetchPropertySets:(id)a13 libraryFilter:(int64_t)a14
{
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v46[12] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a10;
  v45 = a13;
  if (_fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__onceToken != -1)
  {
    dispatch_once(&_fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__onceToken, &__block_literal_global_595);
  }

  v22 = _curationAlgorithmForOptions(a9);
  v23 = v22;
  if (v19 || v20 || v17 || v16)
  {
    v26 = v19;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else if (!a8 && !v21 && !v15 && !a11 && !v45 && !a12 && !a14 && !v22)
  {
    v24 = _fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__nullTuple;
    v25 = 0;
    goto LABEL_31;
  }

  v26 = [MEMORY[0x1E695DFB0] null];
LABEL_18:
  v39 = v26;
  v46[0] = v26;
  v27 = v20;
  if (!v20)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v20;
  v38 = v27;
  v46[1] = v27;
  v41 = [MEMORY[0x1E696AD98] numberWithBool:v17];
  v46[2] = v41;
  v40 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v46[3] = v40;
  v28 = [MEMORY[0x1E696AD98] numberWithBool:v15];
  v46[4] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a8];
  v46[5] = v29;
  v30 = v21;
  v43 = v21;
  if (!v21)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v19;
  v46[6] = v30;
  v31 = [MEMORY[0x1E696AD98] numberWithBool:a11];
  v46[7] = v31;
  v32 = [MEMORY[0x1E696AD98] numberWithBool:a12];
  v46[8] = v32;
  v25 = v45;
  v33 = v45;
  if (!v45)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = v33;
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:a14];
  v46[10] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
  v46[11] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:12];

  if (!v45)
  {
  }

  v21 = v43;
  v19 = v44;
  if (!v43)
  {
  }

  v20 = v42;
  if (!v42)
  {

    if (v44)
    {
      goto LABEL_30;
    }

LABEL_35:

    goto LABEL_30;
  }

  if (!v44)
  {
    goto LABEL_35;
  }

LABEL_30:
  v24 = [[off_1E7721928 alloc] initWithObjects:v36];

LABEL_31:

  return v24;
}

void __267__PXPhotosAssetsFetcher__fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter___block_invoke()
{
  v9[12] = *MEMORY[0x1E69E9840];
  v0 = [off_1E7721928 alloc];
  v1 = [MEMORY[0x1E695DFB0] null];
  v9[0] = v1;
  v2 = [MEMORY[0x1E695DFB0] null];
  v3 = MEMORY[0x1E695E110];
  v9[1] = v2;
  v9[2] = MEMORY[0x1E695E110];
  v9[3] = MEMORY[0x1E695E110];
  v9[4] = MEMORY[0x1E695E110];
  v9[5] = &unk_1F190C550;
  v4 = [MEMORY[0x1E695DFB0] null];
  v9[6] = v4;
  v9[7] = v3;
  v9[8] = v3;
  v5 = [MEMORY[0x1E695DFB0] null];
  v9[9] = v5;
  v9[10] = &unk_1F190C568;
  v9[11] = &unk_1F190C568;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:12];
  v7 = [v0 initWithObjects:v6];
  v8 = _fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__nullTuple;
  _fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__nullTuple = v7;
}

- (id)_fetchConfigurationForCuratedAssetsWithCurationKind:(int64_t)a3 curationLength:(int64_t)a4 options:(unint64_t)a5 sortDescriptors:(id)a6 reverseSortOrder:(BOOL)a7 filterPredicate:(id)a8 fetchPropertySets:(id)a9 libraryFilter:(int64_t)a10 includeOthersInSocialGroupAssets:(BOOL)a11
{
  v12 = a7;
  v13 = a5;
  v34[9] = *MEMORY[0x1E69E9840];
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = _curationAlgorithmForOptions(v13);
  v30 = [off_1E7721928 alloc];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v34[0] = v33;
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v34[1] = v32;
  v20 = v16;
  if (!v16)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34[2] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{v12, v20}];
  v34[3] = v21;
  v22 = v17;
  if (!v17)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v34[4] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
  v34[5] = v23;
  v24 = v18;
  if (!v18)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:a10];
  v34[7] = v25;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:a11];
  v34[8] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:9];
  v31 = [v30 initWithObjects:v27];

  if (!v18)
  {
  }

  if (!v17)
  {
  }

  if (!v16)
  {
  }

  return v31;
}

- (void)_cacheFetchResult:(id)a3 forContainer:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PXPhotosAssetsFetcher__cacheFetchResult_forContainer_configuration___block_invoke;
  v15[3] = &unk_1E7744F50;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

void __70__PXPhotosAssetsFetcher__cacheFetchResult_forContainer_configuration___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 setObject:a1[6] forKey:a1[7]];
}

- (id)_cachedFetchResultForContainer:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__119320;
  v21 = __Block_byref_object_dispose__119321;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PXPhotosAssetsFetcher__cachedFetchResultForContainer_configuration___block_invoke;
  v13[3] = &unk_1E77448A8;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __70__PXPhotosAssetsFetcher__cachedFetchResultForContainer_configuration___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKey:a1[5]];
  v2 = [v5 objectForKey:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_fetchResultForContainer:(id)a3 configuration:(id)a4 factory:(id)a5 fallbackFactory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:v10 configuration:v11];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
LABEL_3:
    v17 = v16;
    goto LABEL_6;
  }

  v18 = v12[2](v12);
  if (v18)
  {
    v17 = v18;
    [(PXPhotosAssetsFetcher *)self _cacheFetchResult:v18 forContainer:v10 configuration:v11];
  }

  else
  {
    if (v13)
    {
      v16 = v13[2](v13);
      goto LABEL_3;
    }

    v17 = 0;
  }

LABEL_6:

  return v17;
}

- (id)_existingCuratedAssetsFetchResultForAssetCollection:(id)a3 referencePersons:(id)a4 curationType:(int64_t)a5 curationKind:(int64_t)a6 curationLength:(int64_t)a7 options:(unint64_t)a8 sortDescriptors:(id)a9 reverseSortOrder:(BOOL)a10 filterPredicate:(id)a11 fetchPropertySets:(id)a12 libraryFilter:(int64_t)a13
{
  v17 = a12;
  v18 = a11;
  v19 = a9;
  v20 = a4;
  v21 = a3;
  LOBYTE(v25) = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:v21 reverseSortOrder:a10 fetcherOptions:a8];
  v22 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCurationWithReferencePersons:v20 curationType:a5 curationKind:a6 curationLength:a7 options:a8 sortDescriptors:v19 reverseSortOrder:v25 filterPredicate:v18 fetchPropertySets:v17 libraryFilter:a13];

  v23 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:v21 configuration:v22];

  return v23;
}

- (id)_fetchCuratedAssetsInAssetCollection:(id)a3 referencePersons:(id)a4 curationType:(int64_t)a5 curationKind:(int64_t)a6 curationLength:(int64_t)a7 options:(unint64_t)a8 sortDescriptors:(id)a9 reverseSortOrder:(BOOL)a10 filterPredicate:(id)a11 fetchPropertySets:(id)a12 libraryFilter:(int64_t)a13 includeOthersInSocialGroupAssets:(BOOL)a14
{
  v30 = a3;
  v17 = a4;
  v18 = a9;
  v19 = a11;
  v20 = a12;
  v21 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:v30 reverseSortOrder:a10 fetcherOptions:a8];
  LOBYTE(v29) = v21;
  v34 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCurationWithReferencePersons:v17 curationType:a5 curationKind:a6 curationLength:a7 options:a8 sortDescriptors:v18 reverseSortOrder:v29 filterPredicate:v19 fetchPropertySets:v20 libraryFilter:a13];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __242__PXPhotosAssetsFetcher__fetchCuratedAssetsInAssetCollection_referencePersons_curationType_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v36[3] = &unk_1E773A868;
  v36[4] = self;
  v37 = v30;
  v38 = v19;
  v42 = a8;
  v43 = a6;
  v48 = v21;
  v39 = v20;
  v40 = v17;
  v41 = v18;
  v44 = a13;
  v45 = a5;
  v49 = a14;
  v46 = a7;
  v47 = a2;
  v22 = v18;
  v23 = v17;
  v24 = v20;
  v25 = v19;
  v26 = v30;
  v27 = [(PXPhotosAssetsFetcher *)self _fetchResultForContainer:v26 configuration:v34 factory:v36];

  return v27;
}

id __242__PXPhotosAssetsFetcher__fetchCuratedAssetsInAssetCollection_referencePersons_curationType_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = +[PXContentSyndicationSettings sharedInstance];
  v3 = [v2 enableFilteringCuratedGridsForContentSyndication];

  v4 = [*(a1 + 32) _fetchOptionsForCuratedAssetsInAssetCollection:*(a1 + 40) withFetcherOptions:*(a1 + 80) curationKind:*(a1 + 88) reverseSortOrder:*(a1 + 128) filterPredicate:*(a1 + 48) fetchPropertySets:*(a1 + 56) libraryFilter:*(a1 + 96)];
  v5 = _curationAlgorithmForOptions(*(a1 + 80));
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_39;
      }

      goto LABEL_11;
    }

    v15 = *(a1 + 88);
    if (v15 - 1 < 3)
    {
      v7 = +[PXFakePhotoKitAssetsFetcher defaultFetcher];
      v9 = [v7 fetchAssetsInContainer:*(a1 + 40) curationKind:*(a1 + 88)];
      goto LABEL_18;
    }

    v6 = 0;
    if (v15 <= 5 && ((1 << v15) & 0x31) != 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = v21;
      v23 = *(a1 + 120);
      v24 = *(a1 + 32);
      v25 = 736;
      goto LABEL_54;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_39;
      }

      if ((*(a1 + 80) & 1) == 0)
      {
        v7 = [objc_alloc(MEMORY[0x1E69C1548]) initWithFetchOptions:v4];
        [v7 setIncludeOthersInSocialGroupAssets:*(a1 + 129)];
        v6 = 0;
        v8 = *(a1 + 88);
        if (v8 > 2)
        {
          if (v8 != 3)
          {
            if ((v8 - 4) >= 2)
            {
              goto LABEL_19;
            }

LABEL_53:
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = v21;
            v23 = *(a1 + 120);
            v24 = *(a1 + 32);
            v25 = 720;
            goto LABEL_54;
          }
        }

        else
        {
          if (v8 != 1)
          {
            if (v8 == 2)
            {
              v9 = [MEMORY[0x1E69C1540] fetchMovieAssetsForCollection:*(a1 + 40) options:v7];
LABEL_18:
              v6 = v9;
LABEL_19:

              goto LABEL_39;
            }

            if (v8)
            {
              goto LABEL_19;
            }

            goto LABEL_53;
          }

          v28 = [*(a1 + 40) assetCollectionType];
          v29 = *(a1 + 112);
          if (v28 == 4)
          {
            v30 = v29 - 1;
            if (v30 > 4)
            {
              v31 = 0;
            }

            else
            {
              v31 = qword_1A5381B88[v30];
            }

            goto LABEL_66;
          }

          v6 = 0;
          if (v29 > 2)
          {
            if (v29 == 3 || v29 == 5)
            {
              v31 = qword_1A5381B88[v29 - 1];
LABEL_66:
              v35 = v7;
LABEL_67:
              [v35 setCurationLength:v31];
              v9 = [MEMORY[0x1E69C1540] fetchEditorialAssetsForCollection:*(a1 + 40) options:v7];
              goto LABEL_18;
            }

            if (v29 != 4)
            {
              goto LABEL_19;
            }

LABEL_80:
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = v21;
            v23 = *(a1 + 120);
            v24 = *(a1 + 32);
            v25 = 701;
LABEL_54:
            [v21 handleFailureInMethod:v23 object:v24 file:@"PXPhotosAssetsFetcher.m" lineNumber:v25 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          if (!v29)
          {
            v35 = v7;
            v31 = 2;
            goto LABEL_67;
          }

          if (v29 != 2)
          {
            if (v29 != 1)
            {
              goto LABEL_19;
            }

            goto LABEL_80;
          }
        }

        v9 = [MEMORY[0x1E69C1540] fetchPreviewAssetsForCollection:*(a1 + 40) options:v7];
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    v11 = [*(a1 + 64) count];
    if (v11)
    {
      v12 = v11;
      v46[0] = *MEMORY[0x1E6978CA8];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
      [v4 addFetchPropertySets:v13];

      if (v12 == 1)
      {
        v14 = [*(a1 + 64) firstObject];
        v7 = v14;
        if (*(a1 + 72))
        {
          [v4 setInternalSortDescriptors:?];
        }

        else
        {
          v32 = +[PXPeopleUtilities sortDescriptorsWithPersonAssetSortOrder:](PXPeopleUtilities, "sortDescriptorsWithPersonAssetSortOrder:", [v14 assetSortOrder]);
          [v4 setInternalSortDescriptors:v32];
        }

        if ((*(a1 + 80) & 0x10) != 0)
        {
          [MEMORY[0x1E6978630] requestCuratedAssetsInAssetCollection:*(a1 + 40) referencePersons:*(a1 + 64) options:v4];
        }

        else
        {
          [MEMORY[0x1E69C1580] fetchCuratedAssetsForPerson:v7 options:v4];
        }
        v9 = ;
        goto LABEL_18;
      }

      v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v45[0] = v18;
      v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
      v45[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      [v4 setSortDescriptors:v20];

      v10 = [MEMORY[0x1E6978630] requestCuratedAssetsInAssetCollection:*(a1 + 40) referencePersons:*(a1 + 64) options:v4];
      goto LABEL_38;
    }

    if ([*(a1 + 40) assetCollectionType] == 6)
    {
      if (*(a1 + 80))
      {
LABEL_28:
        v10 = [*(a1 + 32) _fetchCuratedKeyAssetsInAssetCollection:*(a1 + 40) referenceAsset:0 referencePersons:0 options:? libraryFilter:?];
        goto LABEL_38;
      }

      if ([*(a1 + 40) isAggregation] && (*(a1 + 80) & 8) != 0)
      {
        v17 = 0;
      }

      else
      {
        v16 = *(a1 + 104);
        if (v16 == 2)
        {
          v17 = 2;
        }

        else if (v16 == 1)
        {
          v17 = 1;
        }

        else
        {
          if (v16)
          {
LABEL_72:
            [v4 setIsExclusivePredicate:1];
            if (([v4 includeGuestAssets] & 1) == 0 && ((v3 ^ 1) & 1) == 0)
            {
              v36 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 0}];
              v37 = [v4 internalPredicate];
              if (v37)
              {
                v38 = MEMORY[0x1E696AB28];
                v39 = [v4 internalPredicate];
                v44[0] = v39;
                v44[1] = v36;
                v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
                v41 = [v38 andPredicateWithSubpredicates:v40];
                [v4 setInternalPredicate:v41];
              }

              else
              {
                [v4 setInternalPredicate:v36];
              }
            }

LABEL_11:
            v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(a1 + 40) options:v4];
LABEL_38:
            v6 = v10;
            goto LABEL_39;
          }

          v17 = [*(a1 + 40) px_curationType];
        }
      }

      [v4 setHighlightCurationType:v17];
      goto LABEL_72;
    }

    if ([*(a1 + 40) assetCollectionType] != 4 || (*(a1 + 80) & 2) == 0)
    {
      [v4 setCurationType:*(a1 + 104)];
      v42 = *MEMORY[0x1E6978C90];
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      [v4 addFetchPropertySets:v26];

      v10 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:*(a1 + 40) options:v4];
      goto LABEL_38;
    }

    v43 = *MEMORY[0x1E6978C90];
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [v4 addFetchPropertySets:v33];

    v6 = [MEMORY[0x1E6978630] fetchCustomUserAssetsInMemory:*(a1 + 40) options:v4];
    if (![v6 count])
    {
      v34 = [MEMORY[0x1E6978630] fetchUserCuratedAssetsInMemory:*(a1 + 40) options:v4];

      v6 = v34;
    }
  }

LABEL_39:

  return v6;
}

- (id)_existingKeyAssetsFetchResultForAssetCollection:(id)a3 referenceAsset:(id)a4 referencePersons:(id)a5 curated:(BOOL)a6 options:(unint64_t)a7 libraryFilter:(int64_t)a8
{
  v10 = a6;
  v14 = a3;
  v15 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForKeyAssetWithReferenceAsset:a4 referencePersons:a5 curated:v10 options:a7 libraryFilter:a8];
  v16 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:v14 configuration:v15];

  return v16;
}

- (id)_fetchKeyCuratedAssetsInPhotosHighlight:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v9 = [WeakRetained librarySpecificFetchOptions];

  v10 = [v6 sharingFilter];
  [v9 setSharingFilter:v10];
  [v9 setIncludeGuestAssets:1];
  v11 = [MEMORY[0x1E6978630] fetchCollageAssetsForDayHighlight:v7 options:v9];

  return v11;
}

- (id)_fetchKeyAssetsInAssetCollection:(id)a3 curated:(BOOL)a4 referenceAsset:(id)a5 referencePersons:(id)a6 options:(unint64_t)a7 libraryFilter:(int64_t)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForKeyAssetWithReferenceAsset:v15 referencePersons:v16 curated:v12 options:a7 libraryFilter:a8];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke;
  v24[3] = &unk_1E773A840;
  v24[4] = self;
  v25 = v14;
  v28 = a8;
  v29 = a7;
  v30 = v12;
  v26 = v16;
  v27 = v15;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke_587;
  v23[3] = &unk_1E7743C20;
  v23[4] = self;
  v18 = v15;
  v19 = v16;
  v20 = v14;
  v21 = [(PXPhotosAssetsFetcher *)self _fetchResultForContainer:v20 configuration:v17 factory:v24 fallbackFactory:v23];

  return v21;
}

id __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = [WeakRetained librarySpecificFetchOptions];

  [v3 setSharingFilter:{_sharingFilterForLibraryFilterInContainer(*(a1 + 64), *(a1 + 40))}];
  [v3 setIncludeGuestAssets:PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(*(a1 + 40))];
  [v3 setIncludeCollectionShareAssets:(*(a1 + 72) >> 7) & 1];
  [v3 setReverseDefaultSortDescriptors:{+[PXPhotosAssetsFetcher _shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:](PXPhotosAssetsFetcher, "_shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:", *(a1 + 40), *(a1 + 72))}];
  if ([*(a1 + 40) assetCollectionSubtype] == 101)
  {
    [v3 setReverseSortOrder:1];
  }

  if (*(a1 + 80) != 1)
  {
    v5 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:*(a1 + 40) options:v3];
    goto LABEL_10;
  }

  v4 = _curationAlgorithmForOptions(*(a1 + 72));
  if (v4 < 2)
  {
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v11 = +[PXFakePhotoKitAssetsFetcher defaultFetcher];
    v6 = [v11 fetchAssetsInContainer:*(a1 + 40) curationKind:4];

    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v4 == 3)
  {
LABEL_27:
    if ([*(a1 + 48) count])
    {
      v5 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:*(a1 + 40) referencePersons:*(a1 + 48)];
    }

    else
    {
      if ([*(a1 + 40) assetCollectionType] == 6)
      {
        [v3 setIsExclusivePredicate:1];
      }

      v10 = *(a1 + 40);
      if ((*(a1 + 72) & 0x40) != 0)
      {
        [*(a1 + 32) _fetchKeyCuratedAssetsInPhotosHighlight:v10 options:v3];
      }

      else
      {
        [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:*(a1 + 56) options:v3];
      }
      v5 = ;
    }

LABEL_10:
    v6 = v5;
    if (v5)
    {
      goto LABEL_14;
    }
  }

LABEL_11:
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "%@ keyAssetsFetchResult is nil", &v12, 0xCu);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

id __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke_587(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69788E0]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = [MEMORY[0x1E6978630] fetchType];
  v5 = [v2 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:WeakRetained fetchType:v4 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v5;
}

- (id)_existingFetchResultForAssetCollection:(id)a3 withFilterPredicate:(id)a4 inclusionPredicate:(id)a5 includeUnsavedSyndicatedAssets:(BOOL)a6 includeSharedCollectionAssets:(BOOL)a7 includeAllBurstAssets:(BOOL)a8 fetchLimit:(unint64_t)a9 options:(unint64_t)a10 sortDescriptors:(id)a11 reverseSortOrder:(BOOL)a12 hideHiddenAssets:(BOOL)a13 fetchPropertySets:(id)a14 libraryFilter:(int64_t)a15
{
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v19 = a14;
  v20 = a11;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  BYTE1(v27) = a13;
  LOBYTE(v27) = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:v23 reverseSortOrder:a12 fetcherOptions:a10];
  v24 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationWithFilterPredicate:v22 inclusionPredicate:v21 includeUnsavedSyndicatedAssets:v28 includeSharedCollectionAssets:v29 includeAllBurstAssets:v30 fetchLimit:a9 options:a10 sortDescriptors:v20 reverseSortOrder:v27 hideHiddenAssets:v19 fetchPropertySets:a15 libraryFilter:?];

  v25 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:v23 configuration:v24];

  return v25;
}

- (id)_importantFetchNameForCollectionSubtype:(int64_t)a3
{
  v3 = @"RecentsSmartAlbum";
  if (a3 != 209)
  {
    v3 = 0;
  }

  if (a3 == 1000000205)
  {
    return @"AllPhotosSmartAlbum";
  }

  else
  {
    return v3;
  }
}

- (id)_fetchAssetsInAssetCollection:(id)a3 withFilterPredicate:(id)a4 inclusionPredicate:(id)a5 includeUnsavedSyndicatedAssets:(BOOL)a6 includeSharedCollectionAssets:(BOOL)a7 includeAllBurstAssets:(BOOL)a8 fetchLimit:(unint64_t)a9 options:(unint64_t)a10 sortDescriptors:(id)a11 reverseSortOrder:(BOOL)a12 hideHiddenAssets:(BOOL)a13 fetchPropertySets:(id)a14 libraryFilter:(int64_t)a15 includeOthersInSocialGroupAssets:(BOOL)a16
{
  v34 = a7;
  v35 = a8;
  v16 = a6;
  v33 = a3;
  v19 = a4;
  v20 = a5;
  v32 = a11;
  v21 = a14;
  v22 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:v33 reverseSortOrder:a12 fetcherOptions:a10];
  BYTE1(v30) = a13;
  LOBYTE(v30) = v22;
  v36 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationWithFilterPredicate:v19 inclusionPredicate:v20 includeUnsavedSyndicatedAssets:v16 includeSharedCollectionAssets:v34 includeAllBurstAssets:v35 fetchLimit:a9 options:a10 sortDescriptors:v32 reverseSortOrder:v30 hideHiddenAssets:v21 fetchPropertySets:a15 libraryFilter:?];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __311__PXPhotosAssetsFetcher__fetchAssetsInAssetCollection_withFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v38[3] = &unk_1E773A818;
  v38[4] = self;
  v39 = v33;
  v40 = v19;
  v44 = a10;
  v45 = a9;
  v47 = v22;
  v41 = v20;
  v42 = v32;
  v43 = v21;
  v48 = a13;
  v49 = v35;
  v50 = a6;
  v51 = v34;
  v46 = a15;
  v52 = a16;
  v23 = v21;
  v24 = v32;
  v25 = v20;
  v26 = v19;
  v27 = v33;
  v28 = [(PXPhotosAssetsFetcher *)self _fetchResultForContainer:v27 configuration:v36 factory:v38];

  return v28;
}

id __311__PXPhotosAssetsFetcher__fetchAssetsInAssetCollection_withFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  LOWORD(v23) = *(a1 + 105);
  LOBYTE(v22) = *(a1 + 104);
  v2 = [*(a1 + 32) _fetchOptionsForAssetsInAssetCollection:*(a1 + 40) withFetcherOptions:*(a1 + 80) filterPredicate:*(a1 + 48) inclusionPredicate:*(a1 + 56) fetchLimit:*(a1 + 88) sortDescriptors:*(a1 + 64) reverseSortOrder:v22 fetchPropertySets:*(a1 + 72) hideHiddenAssets:v23 includeAllBurstAssets:?];
  if (*(a1 + 107) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v4 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:WeakRetained];

    v5 = [v4 dataSourceType];
    if (v5 >= 6)
    {
      if (v5 == 6)
      {
        v15 = [MEMORY[0x1E69BF328] maskForMomentSharedAsset];
        v16 = [MEMORY[0x1E69BF328] predicateForIncludeMask:v15 useIndex:0];
        v17 = [v2 internalInclusionPredicate];
        v18 = v17;
        if (v17)
        {
          v24[0] = v17;
          v24[1] = v16;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
          v20 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v19];
          [v2 setInternalInclusionPredicate:v20];
        }

        else
        {
          [v2 setInternalInclusionPredicate:v16];
        }
      }
    }

    else
    {
      [v2 setIncludeGuestAssets:1];
    }
  }

  if (*(a1 + 108) == 1)
  {
    [v2 setIncludeCollectionShareAssets:1];
  }

  v6 = _sharingFilterForLibraryFilterInContainer(*(a1 + 96), *(a1 + 40));
  [v2 setSharingFilter:v6];
  v7 = v6 == 2 && [*(a1 + 40) assetCollectionType] == 3;
  [v2 setIsExclusivePredicate:v7];
  v8 = _curationAlgorithmForOptions(*(a1 + 80));
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = +[PXFakePhotoKitAssetsFetcher defaultFetcher];
      v11 = [v10 fetchAssetsInContainer:*(a1 + 40) curationKind:0];
LABEL_23:
      v9 = v11;

      goto LABEL_29;
    }

    if (v8 != 3)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_29;
    }

    v10 = [objc_alloc(MEMORY[0x1E69C1548]) initWithFetchOptions:v2];
    [v10 setIncludeOthersInSocialGroupAssets:*(a1 + 109)];
    v11 = [MEMORY[0x1E69C1540] fetchAllAssetsForCollection:*(a1 + 40) options:v10];
    goto LABEL_23;
  }

  v12 = [*(a1 + 40) assetCollectionSubtype];
  if (v12 >> 1 == 500000151 && ([*(a1 + 40) isSharingSuggestion] & 1) == 0)
  {
    v14 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:*(a1 + 40) referenceAsset:0];
  }

  else
  {
    if (!*(a1 + 88) && !*(a1 + 48))
    {
      v13 = [*(a1 + 32) _importantFetchNameForCollectionSubtype:v12];
      [v2 setImportantFetchName:v13];
    }

    v14 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(a1 + 40) options:v2];
  }

  v9 = v14;
LABEL_29:

  return v9;
}

- (id)_existingAssetsInContainer:(id)a3 curationKind:(int64_t)a4 curationLength:(int64_t)a5 options:(unint64_t)a6 sortDescriptors:(id)a7 reverseSortOrder:(BOOL)a8 filterPredicate:(id)a9 fetchPropertySets:(id)a10 libraryFilter:(int64_t)a11 includeOthersInSocialGroupAssets:(BOOL)a12
{
  v22 = a8;
  v17 = a3;
  LOBYTE(v21) = a12;
  v18 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCuratedAssetsWithCurationKind:a4 curationLength:a5 options:a6 sortDescriptors:a7 reverseSortOrder:v22 filterPredicate:a9 fetchPropertySets:a10 libraryFilter:a11 includeOthersInSocialGroupAssets:v21];
  v19 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:v17 configuration:v18];

  return v19;
}

- (id)_fetchKeyAssetsInContainer:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PXPeopleUtilities keyAssetForPerson:v7 face:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosAssetsFetcher.m" lineNumber:397 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [MEMORY[0x1E6978630] fetchKeyAssetForSocialGroup:v7 createIfNeeded:1 options:v8];
  }

  v10 = v9;

  return v10;
}

- (id)_fetchOptionsForCuratedAssetsInAssetCollection:(id)a3 withFetcherOptions:(unint64_t)a4 curationKind:(int64_t)a5 reverseSortOrder:(BOOL)a6 filterPredicate:(id)a7 fetchPropertySets:(id)a8 libraryFilter:(int64_t)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a8;
  v17 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v19 = [WeakRetained librarySpecificFetchOptions];

  [v19 setSharingFilter:{_sharingFilterForLibraryFilterInContainer(a9, v15)}];
  if ((a4 & 4) != 0)
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v15);
  }

  else
  {
    ShouldShowUnsavedAssetsInAssetCollection = 0;
  }

  [v19 setIncludeGuestAssets:ShouldShowUnsavedAssetsInAssetCollection];
  [v19 setIncludeCollectionShareAssets:{objc_msgSend(v15, "px_isCloudKitSharedAlbum")}];
  [v19 setIncludeHiddenAssets:0];
  [v19 setInternalPredicate:v17];

  [v19 setReverseSortOrder:v11];
  [v19 setFetchPropertySets:v16];

  [v19 setReverseDefaultSortDescriptors:{+[PXPhotosAssetsFetcher _shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:](PXPhotosAssetsFetcher, "_shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:", v15, a4)}];
  _addFetchPropertySetsForCurationKind(v19, a5);

  return v19;
}

- (id)_fetchOptionsForAssetsInAssetCollection:(id)a3 withFetcherOptions:(unint64_t)a4 filterPredicate:(id)a5 inclusionPredicate:(id)a6 fetchLimit:(unint64_t)a7 sortDescriptors:(id)a8 reverseSortOrder:(BOOL)a9 fetchPropertySets:(id)a10 hideHiddenAssets:(BOOL)a11 includeAllBurstAssets:(BOOL)a12
{
  v18 = a3;
  v19 = a10;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v24 = [WeakRetained px_standardLibrarySpecificFetchOptions];

  [v24 setInternalPredicate:v22];
  [v24 setInternalInclusionPredicate:v21];

  [v24 setFetchLimit:a7];
  [v24 setInternalSortDescriptors:v20];

  [v24 setReverseSortOrder:a9];
  [v24 setFetchPropertySets:v19];

  [v24 setReverseDefaultSortDescriptors:{+[PXPhotosAssetsFetcher _shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:](PXPhotosAssetsFetcher, "_shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:", v18, a4)}];
  if (a11)
  {
    [v24 setIncludeHiddenAssets:0];
  }

  [v24 setExcludeNonVisibleStackedAssets:a12];
  [v24 setIncludeCollectionShareAssets:{objc_msgSend(v18, "px_isCloudKitSharedAlbum")}];

  return v24;
}

- (id)_fetchOptionsForContainer:(id)a3 curationKind:(int64_t)a4 options:(unint64_t)a5 sortDescriptors:(id)a6 reverseSortOrder:(BOOL)a7 filterPredicate:(id)a8 fetchPropertySets:(id)a9 libraryFilter:(int64_t)a10
{
  v11 = a7;
  v13 = a5;
  v29[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v21 = [WeakRetained librarySpecificFetchOptions];

  [v21 setIncludeHiddenAssets:0];
  [v21 setInternalPredicate:v18];

  [v21 setFetchPropertySets:v17];
  [v21 setInternalSortDescriptors:v19];

  [v21 setReverseSortOrder:v11];
  _addFetchPropertySetsForCurationKind(v21, a4);
  [v21 setSharingFilter:{_sharingFilterForLibraryFilterInContainer(a10, v16)}];
  v22 = v16;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = v22;

    if ((v13 & 4) != 0 && v23)
    {
      [v21 setIncludeGuestAssets:PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v23)];
    }
  }

  else
  {

    v23 = 0;
  }

  if (v13 < 0)
  {
    [v21 setIncludeCollectionShareAssets:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v21 sortDescriptors];

    if (!v24)
    {
      v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
      v29[0] = v25;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
      v29[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      [v21 setInternalSortDescriptors:v27];
    }
  }

  return v21;
}

- (id)_fetchAssetsInContainer:(id)a3 curationKind:(int64_t)a4 curationLength:(int64_t)a5 options:(unint64_t)a6 sortDescriptors:(id)a7 reverseSortOrder:(BOOL)a8 filterPredicate:(id)a9 fetchPropertySets:(id)a10 libraryFilter:(int64_t)a11 includeOthersInSocialGroupAssets:(BOOL)a12
{
  v27 = a8;
  v28 = a3;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  LOBYTE(v26) = a12;
  v29 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCuratedAssetsWithCurationKind:a4 curationLength:a5 options:a6 sortDescriptors:v17 reverseSortOrder:v27 filterPredicate:v18 fetchPropertySets:v19 libraryFilter:a11 includeOthersInSocialGroupAssets:v26];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __199__PXPhotosAssetsFetcher__fetchAssetsInContainer_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v31[3] = &unk_1E773A7F0;
  v31[4] = self;
  v32 = v28;
  v41 = v27;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = a4;
  v37 = a6;
  v38 = a11;
  v42 = a12;
  v39 = a2;
  v40 = a5;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v28;
  v24 = [(PXPhotosAssetsFetcher *)self _fetchResultForContainer:v23 configuration:v29 factory:v31];

  return v24;
}

id __199__PXPhotosAssetsFetcher__fetchAssetsInContainer_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOptionsForContainer:*(a1 + 40) curationKind:*(a1 + 72) options:*(a1 + 80) sortDescriptors:*(a1 + 48) reverseSortOrder:*(a1 + 112) filterPredicate:*(a1 + 56) fetchPropertySets:*(a1 + 64) libraryFilter:*(a1 + 88)];
  v3 = _curationAlgorithmForOptions(*(a1 + 80));
  if (v3 == 2)
  {
    if (*(a1 + 72) > 5uLL)
    {
LABEL_17:
      v8 = 0;
      goto LABEL_33;
    }

    v7 = +[PXFakePhotoKitAssetsFetcher defaultFetcher];
    v10 = [v7 fetchAssetsInContainer:*(a1 + 40) curationKind:*(a1 + 72)];
    goto LABEL_31;
  }

  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 >= 4;
      v6 = v4 - 4;
      if (!v5)
      {
        PXAssertGetLog();
      }

      if (v6 < 2)
      {
        v8 = [*(a1 + 32) _fetchKeyAssetsInContainer:*(a1 + 40) options:v2];
        goto LABEL_33;
      }
    }

    goto LABEL_17;
  }

  v7 = [objc_alloc(MEMORY[0x1E69C1548]) initWithFetchOptions:v2];
  [v7 setIncludeOthersInSocialGroupAssets:*(a1 + 113)];
  v8 = 0;
  v9 = *(a1 + 72);
  if (v9 <= 2)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E69C1540] fetchAllAssetsForCollection:*(a1 + 40) options:v7];
      goto LABEL_31;
    }

    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v10 = [MEMORY[0x1E69C1540] fetchMovieAssetsForCollection:*(a1 + 40) options:v7];
LABEL_31:
        v8 = v10;
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v8 = 0;
    v11 = *(a1 + 104);
    if (v11 > 2)
    {
      if (v11 != 3 && v11 != 5)
      {
        if (v11 != 4)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      v12 = qword_1A5381B88[v11 - 1];
      v13 = v7;
    }

    else
    {
      if (v11)
      {
        if (v11 != 2)
        {
          if (v11 != 1)
          {
            goto LABEL_32;
          }

LABEL_37:
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"PXPhotosAssetsFetcher.m" lineNumber:281 description:@"Code which should be unreachable has been reached"];

          abort();
        }

LABEL_19:
        v10 = [MEMORY[0x1E69C1540] fetchPreviewAssetsForCollection:*(a1 + 40) options:v7];
        goto LABEL_31;
      }

      v13 = v7;
      v12 = 2;
    }

    [v13 setCurationLength:v12];
    v10 = [MEMORY[0x1E69C1540] fetchEditorialAssetsForCollection:*(a1 + 40) options:v7];
    goto LABEL_31;
  }

  if ((v9 - 4) < 2)
  {
    v10 = [*(a1 + 32) _fetchKeyAssetsInContainer:*(a1 + 40) options:v2];
    goto LABEL_31;
  }

  if (v9 == 3)
  {
    goto LABEL_19;
  }

LABEL_32:

LABEL_33:

  return v8;
}

- (void)clearFetchResultsForAssetCollections:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PXPhotosAssetsFetcher_clearFetchResultsForAssetCollections___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__PXPhotosAssetsFetcher_clearFetchResultsForAssetCollections___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = *(a1 + 40);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 removeObjectForKey:*(*(&v13 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)clearFetchResultsForAssetCollection:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotosAssetsFetcher.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"assetCollection != nil"}];
  }

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PXPhotosAssetsFetcher *)self clearFetchResultsForAssetCollections:v6];
}

- (id)existingAssetsFetchResultForContainer:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [v7 curationKind];
    v14 = [v7 curationLength];
    v15 = [v7 options];
    [v7 sortDescriptors];
    v17 = v16 = v6;
    v18 = [v7 reverseSortOrder];
    v11 = [v7 filterPredicate];
    v12 = [v7 fetchPropertySets];
    v19 = self;
    v20 = [v7 libraryFilter];
    LOBYTE(v31) = [v7 includeOthersInSocialGroupAssets];
    v21 = v19;
    v8 = v17;
    v6 = v16;
    v13 = [(PXPhotosAssetsFetcher *)v21 _existingAssetsInContainer:v16 curationKind:v38 curationLength:v14 options:v15 sortDescriptors:v8 reverseSortOrder:v18 filterPredicate:v11 fetchPropertySets:v12 libraryFilter:v20 includeOthersInSocialGroupAssets:v31];
    goto LABEL_6;
  }

  v8 = v6;
  v9 = [v7 curationKind];
  if ((v9 - 1) < 3)
  {
    v11 = [v7 referencePersons];
    v39 = [v7 curationType];
    v36 = [v7 curationKind];
    v34 = [v7 curationLength];
    v22 = [v7 options];
    v12 = [v7 sortDescriptors];
    v23 = [v7 reverseSortOrder];
    v24 = [v7 filterPredicate];
    v25 = [v7 fetchPropertySets];
    LOBYTE(v30) = v23;
    self = -[PXPhotosAssetsFetcher _existingCuratedAssetsFetchResultForAssetCollection:referencePersons:curationType:curationKind:curationLength:options:sortDescriptors:reverseSortOrder:filterPredicate:fetchPropertySets:libraryFilter:](self, "_existingCuratedAssetsFetchResultForAssetCollection:referencePersons:curationType:curationKind:curationLength:options:sortDescriptors:reverseSortOrder:filterPredicate:fetchPropertySets:libraryFilter:", v8, v11, v39, v36, v34, v22, v12, v30, v24, v25, [v7 libraryFilter]);

LABEL_10:
    goto LABEL_11;
  }

  if ((v9 - 4) < 2)
  {
    v10 = [v7 curationKind] == 5;
    v11 = [v7 referenceAsset];
    v12 = [v7 referencePersons];
    v13 = -[PXPhotosAssetsFetcher _existingKeyAssetsFetchResultForAssetCollection:referenceAsset:referencePersons:curated:options:libraryFilter:](self, "_existingKeyAssetsFetchResultForAssetCollection:referenceAsset:referencePersons:curated:options:libraryFilter:", v8, v11, v12, v10, [v7 options], objc_msgSend(v7, "libraryFilter"));
LABEL_6:
    self = v13;
LABEL_11:

    goto LABEL_12;
  }

  if (!v9)
  {
    v11 = [v7 filterPredicate];
    v12 = [v7 inclusionPredicate];
    v40 = [v7 includeUnsavedSyndicatedAssets];
    v37 = [v7 includeSharedCollectionAssets];
    v35 = [v7 includeAllBurstAssets];
    v33 = [v7 fetchLimit];
    v32 = [v7 options];
    v24 = [v7 sortDescriptors];
    v26 = [v7 reverseSortOrder];
    v27 = [v7 hideHiddenAssets];
    v28 = [v7 fetchPropertySets];
    BYTE1(v31) = v27;
    LOBYTE(v31) = v26;
    self = -[PXPhotosAssetsFetcher _existingFetchResultForAssetCollection:withFilterPredicate:inclusionPredicate:includeUnsavedSyndicatedAssets:includeSharedCollectionAssets:includeAllBurstAssets:fetchLimit:options:sortDescriptors:reverseSortOrder:hideHiddenAssets:fetchPropertySets:libraryFilter:](self, "_existingFetchResultForAssetCollection:withFilterPredicate:inclusionPredicate:includeUnsavedSyndicatedAssets:includeSharedCollectionAssets:includeAllBurstAssets:fetchLimit:options:sortDescriptors:reverseSortOrder:hideHiddenAssets:fetchPropertySets:libraryFilter:", v8, v11, v12, v40, v37, v35, v33, v32, v24, v31, v28, [v7 libraryFilter]);

    goto LABEL_10;
  }

LABEL_12:

  return self;
}

- (id)fetchAssetsInContainer:(id)a3 configuration:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a4 copy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v56 = [v8 curationKind];
    v21 = [v8 curationLength];
    v22 = [v8 options];
    v23 = [v8 sortDescriptors];
    v24 = [v8 reverseSortOrder];
    v25 = [v8 filterPredicate];
    v26 = [v8 fetchPropertySets];
    v27 = v7;
    v28 = [v8 libraryFilter];
    LOBYTE(v44) = [v8 includeOthersInSocialGroupAssets];
    v43 = v28;
    v7 = v27;
    v4 = [(PXPhotosAssetsFetcher *)self _fetchAssetsInContainer:v27 curationKind:v56 curationLength:v21 options:v22 sortDescriptors:v23 reverseSortOrder:v24 filterPredicate:v25 fetchPropertySets:v26 libraryFilter:v43 includeOthersInSocialGroupAssets:v44];

    goto LABEL_17;
  }

  v9 = v7;
  v10 = [v8 curationKind];
  if (v10 <= 3)
  {
    if ((v10 - 1) >= 3)
    {
      if (!v10)
      {
        v57 = [v8 filterPredicate];
        v54 = [v8 inclusionPredicate];
        v52 = [v8 includeUnsavedSyndicatedAssets];
        v50 = [v8 includeSharedCollectionAssets];
        v48 = [v8 includeAllBurstAssets];
        v47 = [v8 fetchLimit];
        v32 = [v8 options];
        v33 = [v8 sortDescriptors];
        v34 = v7;
        v35 = [v8 reverseSortOrder];
        v36 = v9;
        v37 = [v8 hideHiddenAssets];
        v38 = [v8 fetchPropertySets];
        v39 = [v8 libraryFilter];
        LOBYTE(v46) = [v8 includeOthersInSocialGroupAssets];
        BYTE1(v44) = v37;
        v9 = v36;
        LOBYTE(v44) = v35;
        v7 = v34;
        v4 = [(PXPhotosAssetsFetcher *)self _fetchAssetsInAssetCollection:v36 withFilterPredicate:v57 inclusionPredicate:v54 includeUnsavedSyndicatedAssets:v52 includeSharedCollectionAssets:v50 includeAllBurstAssets:v48 fetchLimit:v47 options:v32 sortDescriptors:v33 reverseSortOrder:v44 hideHiddenAssets:v38 fetchPropertySets:v39 libraryFilter:v46 includeOthersInSocialGroupAssets:?];
      }
    }

    else
    {
      [v8 referencePersons];
      v11 = v55 = v9;
      v53 = [v8 curationType];
      v51 = [v8 curationKind];
      v49 = [v8 curationLength];
      v12 = v7;
      v13 = [v8 options];
      v14 = [v8 sortDescriptors];
      v15 = [v8 reverseSortOrder];
      [v8 filterPredicate];
      v17 = v16 = self;
      v18 = [v8 fetchPropertySets];
      v19 = [v8 libraryFilter];
      LOBYTE(v45) = [v8 includeOthersInSocialGroupAssets];
      LOBYTE(v42) = v15;
      v20 = v13;
      v7 = v12;
      v4 = [(PXPhotosAssetsFetcher *)v16 _fetchCuratedAssetsInAssetCollection:v55 referencePersons:v11 curationType:v53 curationKind:v51 curationLength:v49 options:v20 sortDescriptors:v14 reverseSortOrder:v42 filterPredicate:v17 fetchPropertySets:v18 libraryFilter:v19 includeOthersInSocialGroupAssets:v45];

      v9 = v55;
    }

    goto LABEL_16;
  }

  if (v10 == 4)
  {
    goto LABEL_15;
  }

  if (v10 == 5)
  {
    if ([v9 supportsFastKeyAssetCuration])
    {
      v29 = [v8 referenceAsset];
      [v8 referencePersons];
      v31 = v30 = self;
      v4 = -[PXPhotosAssetsFetcher _fetchCuratedKeyAssetsInAssetCollection:referenceAsset:referencePersons:options:libraryFilter:](v30, "_fetchCuratedKeyAssetsInAssetCollection:referenceAsset:referencePersons:options:libraryFilter:", v9, v29, v31, [v8 options], objc_msgSend(v8, "libraryFilter"));

      goto LABEL_16;
    }

    v40 = PLUIGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v9;
      _os_log_impl(&dword_1A3C1C000, v40, OS_LOG_TYPE_DEFAULT, "%@ doesn't support fast key asset curation, falling back to uncurated key asset", buf, 0xCu);
    }

LABEL_15:
    v4 = -[PXPhotosAssetsFetcher _fetchKeyAssetsInAssetCollection:options:libraryFilter:](self, "_fetchKeyAssetsInAssetCollection:options:libraryFilter:", v9, [v8 options], objc_msgSend(v8, "libraryFilter"));
  }

LABEL_16:

LABEL_17:

  return v4;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  [WeakRetained px_unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPhotosAssetsFetcher;
  [(PXPhotosAssetsFetcher *)&v4 dealloc];
}

- (PXPhotosAssetsFetcher)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXPhotosAssetsFetcher;
  v6 = [(PXPhotosAssetsFetcher *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.photos.assetsFetcher-queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = +[PXPhotosDetailsSettings sharedInstance];
    v11 = [v10 enableFetchResultCaching];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      queue_cachedFetchResultsByContainerByConfiguration = v6->_queue_cachedFetchResultsByContainerByConfiguration;
      v6->_queue_cachedFetchResultsByContainerByConfiguration = v12;
    }

    if (!v5)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v6 file:@"PXPhotosAssetsFetcher.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    v14 = objc_storeWeak(&v6->_photoLibrary, v5);
    [v5 px_registerChangeObserver:v6];
  }

  return v6;
}

+ (BOOL)_shouldReverseDefaultSortDescriptorsForCollection:(id)a3 fetcherOptions:(unint64_t)a4
{
  v4 = a3;
  v5 = [v4 assetCollectionType] == 1 && objc_msgSend(v4, "assetCollectionSubtype") == 101;

  return v5;
}

+ (BOOL)_adjustedReverseSortOrderForCollection:(id)a3 reverseSortOrder:(BOOL)a4 fetcherOptions:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PXPhotosAssetsFetcher__adjustedReverseSortOrderForCollection_reverseSortOrder_fetcherOptions___block_invoke;
  aBlock[3] = &unk_1E774BD00;
  aBlock[4] = &v12;
  v8 = _Block_copy(aBlock);
  if ((v5 & 0x20) != 0 && [v7 assetCollectionType] == 2 && ((objc_msgSend(v7, "px_isUserSmartAlbum") & 1) == 0 && !objc_msgSend(v7, "isTransient") || objc_msgSend(v7, "px_isUtilityCollection")))
  {
    v8[2](v8);
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v9;
}

+ (id)sharedFetcherForPhotoLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotosAssetsFetcher.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (sharedFetcherForPhotoLibrary__onceToken != -1)
  {
    dispatch_once(&sharedFetcherForPhotoLibrary__onceToken, &__block_literal_global_119380);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__119320;
  v18 = __Block_byref_object_dispose__119321;
  v19 = 0;
  v6 = sharedFetcherForPhotoLibrary__fetchersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXPhotosAssetsFetcher_sharedFetcherForPhotoLibrary___block_invoke_551;
  block[3] = &unk_1E7749A28;
  v12 = v5;
  v13 = &v14;
  v7 = v5;
  dispatch_sync(v6, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __54__PXPhotosAssetsFetcher_sharedFetcherForPhotoLibrary___block_invoke_551(uint64_t a1)
{
  v2 = [sharedFetcherForPhotoLibrary__sharedFetcherByPhotoLibrary objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[PXPhotosAssetsFetcher alloc] initWithPhotoLibrary:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = sharedFetcherForPhotoLibrary__sharedFetcherByPhotoLibrary;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

void __54__PXPhotosAssetsFetcher_sharedFetcherForPhotoLibrary___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v1 = sharedFetcherForPhotoLibrary__sharedFetcherByPhotoLibrary;
  sharedFetcherForPhotoLibrary__sharedFetcherByPhotoLibrary = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.photos.assetsfetcher-isolation-queue", v4);
  v3 = sharedFetcherForPhotoLibrary__fetchersQueue;
  sharedFetcherForPhotoLibrary__fetchersQueue = v2;
}

@end