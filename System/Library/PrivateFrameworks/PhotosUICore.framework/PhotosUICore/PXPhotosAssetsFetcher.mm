@interface PXPhotosAssetsFetcher
+ (BOOL)_adjustedReverseSortOrderForCollection:(id)collection reverseSortOrder:(BOOL)order fetcherOptions:(unint64_t)options;
+ (BOOL)_shouldReverseDefaultSortDescriptorsForCollection:(id)collection fetcherOptions:(unint64_t)options;
+ (id)sharedFetcherForPhotoLibrary:(id)library;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotosAssetsFetcher)initWithPhotoLibrary:(id)library;
- (id)_cachedFetchResultForContainer:(id)container configuration:(id)configuration;
- (id)_existingAssetsInContainer:(id)container curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)self0 libraryFilter:(int64_t)self1 includeOthersInSocialGroupAssets:(BOOL)self2;
- (id)_existingCuratedAssetsFetchResultForAssetCollection:(id)collection referencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)self0 filterPredicate:(id)self1 fetchPropertySets:(id)self2 libraryFilter:(int64_t)self3;
- (id)_existingFetchResultForAssetCollection:(id)collection withFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)self0 sortDescriptors:(id)self1 reverseSortOrder:(BOOL)self2 hideHiddenAssets:(BOOL)self3 fetchPropertySets:(id)self4 libraryFilter:(int64_t)self5;
- (id)_existingKeyAssetsFetchResultForAssetCollection:(id)collection referenceAsset:(id)asset referencePersons:(id)persons curated:(BOOL)curated options:(unint64_t)options libraryFilter:(int64_t)filter;
- (id)_fetchAssetsInAssetCollection:(id)collection withFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)self0 sortDescriptors:(id)self1 reverseSortOrder:(BOOL)self2 hideHiddenAssets:(BOOL)self3 fetchPropertySets:(id)self4 libraryFilter:(int64_t)self5 includeOthersInSocialGroupAssets:(BOOL)self6;
- (id)_fetchAssetsInContainer:(id)container curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)self0 libraryFilter:(int64_t)self1 includeOthersInSocialGroupAssets:(BOOL)self2;
- (id)_fetchConfigurationForCuratedAssetsWithCurationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)self0 includeOthersInSocialGroupAssets:(BOOL)self1;
- (id)_fetchConfigurationForCurationWithReferencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)self0 fetchPropertySets:(id)self1 libraryFilter:(int64_t)self2;
- (id)_fetchConfigurationForKeyAssetWithReferenceAsset:(id)asset referencePersons:(id)persons curated:(BOOL)curated options:(unint64_t)options libraryFilter:(int64_t)filter;
- (id)_fetchConfigurationWithFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)options sortDescriptors:(id)self0 reverseSortOrder:(BOOL)self1 hideHiddenAssets:(BOOL)self2 fetchPropertySets:(id)self3 libraryFilter:(int64_t)self4;
- (id)_fetchCuratedAssetsInAssetCollection:(id)collection referencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)self0 filterPredicate:(id)self1 fetchPropertySets:(id)self2 libraryFilter:(int64_t)self3 includeOthersInSocialGroupAssets:(BOOL)self4;
- (id)_fetchKeyAssetsInAssetCollection:(id)collection curated:(BOOL)curated referenceAsset:(id)asset referencePersons:(id)persons options:(unint64_t)options libraryFilter:(int64_t)filter;
- (id)_fetchKeyAssetsInContainer:(id)container options:(id)options;
- (id)_fetchKeyCuratedAssetsInPhotosHighlight:(id)highlight options:(id)options;
- (id)_fetchOptionsForAssetsInAssetCollection:(id)collection withFetcherOptions:(unint64_t)options filterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate fetchLimit:(unint64_t)limit sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order fetchPropertySets:(id)self0 hideHiddenAssets:(BOOL)self1 includeAllBurstAssets:(BOOL)self2;
- (id)_fetchOptionsForContainer:(id)container curationKind:(int64_t)kind options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)self0;
- (id)_fetchOptionsForCuratedAssetsInAssetCollection:(id)collection withFetcherOptions:(unint64_t)options curationKind:(int64_t)kind reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)filter;
- (id)_fetchResultForContainer:(id)container configuration:(id)configuration factory:(id)factory fallbackFactory:(id)fallbackFactory;
- (id)_importantFetchNameForCollectionSubtype:(int64_t)subtype;
- (id)existingAssetsFetchResultForContainer:(id)container configuration:(id)configuration;
- (id)fetchAssetsInContainer:(id)container configuration:(id)configuration;
- (void)_cacheFetchResult:(id)result forContainer:(id)container configuration:(id)configuration;
- (void)clearFetchResultsForAssetCollection:(id)collection;
- (void)clearFetchResultsForAssetCollections:(id)collections;
- (void)dealloc;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
@end

@implementation PXPhotosAssetsFetcher

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXPhotosAssetsFetcher_photoLibraryDidChangeOnMainQueue___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = queueCopy;
  v5 = queueCopy;
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

- (id)_fetchConfigurationForKeyAssetWithReferenceAsset:(id)asset referencePersons:(id)persons curated:(BOOL)curated options:(unint64_t)options libraryFilter:(int64_t)filter
{
  curatedCopy = curated;
  assetCopy = asset;
  personsCopy = persons;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(personsCopy, "count") + 2}];
  [v13 addObject:@"PXKeyAssetFetchConfiguration"];
  if (assetCopy && !curatedCopy)
  {
    [v13 addObject:assetCopy];
  }

  if (personsCopy && !curatedCopy)
  {
    [v13 addObjectsFromArray:personsCopy];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:curatedCopy];
  [v13 addObject:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v13 addObject:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:filter];
  [v13 addObject:v16];

  v17 = [[off_1E7721928 alloc] initWithObjects:v13];

  return v17;
}

- (id)_fetchConfigurationForCurationWithReferencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)self0 fetchPropertySets:(id)self1 libraryFilter:(int64_t)self2
{
  personsCopy = persons;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  setsCopy = sets;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(personsCopy, "count") + 2}];
  [v21 addObject:@"PXCuratedFetchConfiguration"];
  if (personsCopy)
  {
    [v21 addObjectsFromArray:personsCopy];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{type, filter}];
  [v21 addObject:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  [v21 addObject:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:length];
  [v21 addObject:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v21 addObject:v25];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
  [v21 addObject:v26];

  if (descriptorsCopy)
  {
    [v21 addObject:descriptorsCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v21 addObject:null];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:order];
  [v21 addObject:v28];

  if (predicateCopy)
  {
    [v21 addObject:predicateCopy];
    if (setsCopy)
    {
LABEL_8:
      [v21 addObject:setsCopy];
      goto LABEL_11;
    }
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v21 addObject:null2];

    if (setsCopy)
    {
      goto LABEL_8;
    }
  }

  null3 = [MEMORY[0x1E695DFB0] null];
  [v21 addObject:null3];

LABEL_11:
  v31 = [[off_1E7721928 alloc] initWithObjects:v21];

  return v31;
}

- (id)_fetchConfigurationWithFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)options sortDescriptors:(id)self0 reverseSortOrder:(BOOL)self1 hideHiddenAssets:(BOOL)self2 fetchPropertySets:(id)self3 libraryFilter:(int64_t)self4
{
  burstAssetsCopy = burstAssets;
  collectionAssetsCopy = collectionAssets;
  assetsCopy = assets;
  v46[12] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  inclusionPredicateCopy = inclusionPredicate;
  descriptorsCopy = descriptors;
  setsCopy = sets;
  if (_fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__onceToken != -1)
  {
    dispatch_once(&_fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__onceToken, &__block_literal_global_595);
  }

  v22 = _curationAlgorithmForOptions(options);
  v23 = v22;
  if (predicateCopy || inclusionPredicateCopy || assetsCopy || collectionAssetsCopy)
  {
    null = predicateCopy;
    if (predicateCopy)
    {
      goto LABEL_18;
    }
  }

  else if (!limit && !descriptorsCopy && !burstAssetsCopy && !order && !setsCopy && !hiddenAssets && !filter && !v22)
  {
    v24 = _fetchConfigurationWithFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter__nullTuple;
    v25 = 0;
    goto LABEL_31;
  }

  null = [MEMORY[0x1E695DFB0] null];
LABEL_18:
  v39 = null;
  v46[0] = null;
  null2 = inclusionPredicateCopy;
  if (!inclusionPredicateCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = inclusionPredicateCopy;
  v38 = null2;
  v46[1] = null2;
  v41 = [MEMORY[0x1E696AD98] numberWithBool:assetsCopy];
  v46[2] = v41;
  v40 = [MEMORY[0x1E696AD98] numberWithBool:collectionAssetsCopy];
  v46[3] = v40;
  v28 = [MEMORY[0x1E696AD98] numberWithBool:burstAssetsCopy];
  v46[4] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  v46[5] = v29;
  null3 = descriptorsCopy;
  v43 = descriptorsCopy;
  if (!descriptorsCopy)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = predicateCopy;
  v46[6] = null3;
  v31 = [MEMORY[0x1E696AD98] numberWithBool:order];
  v46[7] = v31;
  v32 = [MEMORY[0x1E696AD98] numberWithBool:hiddenAssets];
  v46[8] = v32;
  v25 = setsCopy;
  null4 = setsCopy;
  if (!setsCopy)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = null4;
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:filter];
  v46[10] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
  v46[11] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:12];

  if (!setsCopy)
  {
  }

  descriptorsCopy = v43;
  predicateCopy = v44;
  if (!v43)
  {
  }

  inclusionPredicateCopy = v42;
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

- (id)_fetchConfigurationForCuratedAssetsWithCurationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)self0 includeOthersInSocialGroupAssets:(BOOL)self1
{
  orderCopy = order;
  optionsCopy = options;
  v34[9] = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  setsCopy = sets;
  v19 = _curationAlgorithmForOptions(optionsCopy);
  v30 = [off_1E7721928 alloc];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  v34[0] = v33;
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:length];
  v34[1] = v32;
  null = descriptorsCopy;
  if (!descriptorsCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34[2] = null;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{orderCopy, null}];
  v34[3] = v21;
  null2 = predicateCopy;
  if (!predicateCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v34[4] = null2;
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
  v34[5] = v23;
  null3 = setsCopy;
  if (!setsCopy)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = null3;
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:filter];
  v34[7] = v25;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:assets];
  v34[8] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:9];
  v31 = [v30 initWithObjects:v27];

  if (!setsCopy)
  {
  }

  if (!predicateCopy)
  {
  }

  if (!descriptorsCopy)
  {
  }

  return v31;
}

- (void)_cacheFetchResult:(id)result forContainer:(id)container configuration:(id)configuration
{
  resultCopy = result;
  containerCopy = container;
  configurationCopy = configuration;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PXPhotosAssetsFetcher__cacheFetchResult_forContainer_configuration___block_invoke;
  v15[3] = &unk_1E7744F50;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = resultCopy;
  v18 = containerCopy;
  v12 = containerCopy;
  v13 = resultCopy;
  v14 = configurationCopy;
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

- (id)_cachedFetchResultForContainer:(id)container configuration:(id)configuration
{
  containerCopy = container;
  configurationCopy = configuration;
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
  v14 = configurationCopy;
  v15 = containerCopy;
  v16 = &v17;
  v9 = containerCopy;
  v10 = configurationCopy;
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

- (id)_fetchResultForContainer:(id)container configuration:(id)configuration factory:(id)factory fallbackFactory:(id)fallbackFactory
{
  containerCopy = container;
  configurationCopy = configuration;
  factoryCopy = factory;
  fallbackFactoryCopy = fallbackFactory;
  v14 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:containerCopy configuration:configurationCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
LABEL_3:
    v17 = v16;
    goto LABEL_6;
  }

  v18 = factoryCopy[2](factoryCopy);
  if (v18)
  {
    v17 = v18;
    [(PXPhotosAssetsFetcher *)self _cacheFetchResult:v18 forContainer:containerCopy configuration:configurationCopy];
  }

  else
  {
    if (fallbackFactoryCopy)
    {
      v16 = fallbackFactoryCopy[2](fallbackFactoryCopy);
      goto LABEL_3;
    }

    v17 = 0;
  }

LABEL_6:

  return v17;
}

- (id)_existingCuratedAssetsFetchResultForAssetCollection:(id)collection referencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)self0 filterPredicate:(id)self1 fetchPropertySets:(id)self2 libraryFilter:(int64_t)self3
{
  setsCopy = sets;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  personsCopy = persons;
  collectionCopy = collection;
  LOBYTE(v25) = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:collectionCopy reverseSortOrder:order fetcherOptions:options];
  v22 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCurationWithReferencePersons:personsCopy curationType:type curationKind:kind curationLength:length options:options sortDescriptors:descriptorsCopy reverseSortOrder:v25 filterPredicate:predicateCopy fetchPropertySets:setsCopy libraryFilter:filter];

  v23 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:collectionCopy configuration:v22];

  return v23;
}

- (id)_fetchCuratedAssetsInAssetCollection:(id)collection referencePersons:(id)persons curationType:(int64_t)type curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)self0 filterPredicate:(id)self1 fetchPropertySets:(id)self2 libraryFilter:(int64_t)self3 includeOthersInSocialGroupAssets:(BOOL)self4
{
  collectionCopy = collection;
  personsCopy = persons;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  setsCopy = sets;
  v21 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:collectionCopy reverseSortOrder:order fetcherOptions:options];
  LOBYTE(v29) = v21;
  v34 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCurationWithReferencePersons:personsCopy curationType:type curationKind:kind curationLength:length options:options sortDescriptors:descriptorsCopy reverseSortOrder:v29 filterPredicate:predicateCopy fetchPropertySets:setsCopy libraryFilter:filter];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __242__PXPhotosAssetsFetcher__fetchCuratedAssetsInAssetCollection_referencePersons_curationType_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v36[3] = &unk_1E773A868;
  v36[4] = self;
  v37 = collectionCopy;
  v38 = predicateCopy;
  optionsCopy = options;
  kindCopy = kind;
  v48 = v21;
  v39 = setsCopy;
  v40 = personsCopy;
  v41 = descriptorsCopy;
  filterCopy = filter;
  typeCopy = type;
  assetsCopy = assets;
  lengthCopy = length;
  v47 = a2;
  v22 = descriptorsCopy;
  v23 = personsCopy;
  v24 = setsCopy;
  v25 = predicateCopy;
  v26 = collectionCopy;
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

- (id)_existingKeyAssetsFetchResultForAssetCollection:(id)collection referenceAsset:(id)asset referencePersons:(id)persons curated:(BOOL)curated options:(unint64_t)options libraryFilter:(int64_t)filter
{
  curatedCopy = curated;
  collectionCopy = collection;
  v15 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForKeyAssetWithReferenceAsset:asset referencePersons:persons curated:curatedCopy options:options libraryFilter:filter];
  v16 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:collectionCopy configuration:v15];

  return v16;
}

- (id)_fetchKeyCuratedAssetsInPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  highlightCopy = highlight;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  librarySpecificFetchOptions = [WeakRetained librarySpecificFetchOptions];

  sharingFilter = [optionsCopy sharingFilter];
  [librarySpecificFetchOptions setSharingFilter:sharingFilter];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v11 = [MEMORY[0x1E6978630] fetchCollageAssetsForDayHighlight:highlightCopy options:librarySpecificFetchOptions];

  return v11;
}

- (id)_fetchKeyAssetsInAssetCollection:(id)collection curated:(BOOL)curated referenceAsset:(id)asset referencePersons:(id)persons options:(unint64_t)options libraryFilter:(int64_t)filter
{
  curatedCopy = curated;
  collectionCopy = collection;
  assetCopy = asset;
  personsCopy = persons;
  v17 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForKeyAssetWithReferenceAsset:assetCopy referencePersons:personsCopy curated:curatedCopy options:options libraryFilter:filter];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke;
  v24[3] = &unk_1E773A840;
  v24[4] = self;
  v25 = collectionCopy;
  filterCopy = filter;
  optionsCopy = options;
  v30 = curatedCopy;
  v26 = personsCopy;
  v27 = assetCopy;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__PXPhotosAssetsFetcher__fetchKeyAssetsInAssetCollection_curated_referenceAsset_referencePersons_options_libraryFilter___block_invoke_587;
  v23[3] = &unk_1E7743C20;
  v23[4] = self;
  v18 = assetCopy;
  v19 = personsCopy;
  v20 = collectionCopy;
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

- (id)_existingFetchResultForAssetCollection:(id)collection withFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)self0 sortDescriptors:(id)self1 reverseSortOrder:(BOOL)self2 hideHiddenAssets:(BOOL)self3 fetchPropertySets:(id)self4 libraryFilter:(int64_t)self5
{
  collectionAssetsCopy = collectionAssets;
  burstAssetsCopy = burstAssets;
  assetsCopy = assets;
  setsCopy = sets;
  descriptorsCopy = descriptors;
  inclusionPredicateCopy = inclusionPredicate;
  predicateCopy = predicate;
  collectionCopy = collection;
  BYTE1(v27) = hiddenAssets;
  LOBYTE(v27) = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:collectionCopy reverseSortOrder:order fetcherOptions:options];
  v24 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationWithFilterPredicate:predicateCopy inclusionPredicate:inclusionPredicateCopy includeUnsavedSyndicatedAssets:assetsCopy includeSharedCollectionAssets:collectionAssetsCopy includeAllBurstAssets:burstAssetsCopy fetchLimit:limit options:options sortDescriptors:descriptorsCopy reverseSortOrder:v27 hideHiddenAssets:setsCopy fetchPropertySets:filter libraryFilter:?];

  v25 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:collectionCopy configuration:v24];

  return v25;
}

- (id)_importantFetchNameForCollectionSubtype:(int64_t)subtype
{
  v3 = @"RecentsSmartAlbum";
  if (subtype != 209)
  {
    v3 = 0;
  }

  if (subtype == 1000000205)
  {
    return @"AllPhotosSmartAlbum";
  }

  else
  {
    return v3;
  }
}

- (id)_fetchAssetsInAssetCollection:(id)collection withFilterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate includeUnsavedSyndicatedAssets:(BOOL)assets includeSharedCollectionAssets:(BOOL)collectionAssets includeAllBurstAssets:(BOOL)burstAssets fetchLimit:(unint64_t)limit options:(unint64_t)self0 sortDescriptors:(id)self1 reverseSortOrder:(BOOL)self2 hideHiddenAssets:(BOOL)self3 fetchPropertySets:(id)self4 libraryFilter:(int64_t)self5 includeOthersInSocialGroupAssets:(BOOL)self6
{
  collectionAssetsCopy = collectionAssets;
  burstAssetsCopy = burstAssets;
  assetsCopy = assets;
  collectionCopy = collection;
  predicateCopy = predicate;
  inclusionPredicateCopy = inclusionPredicate;
  descriptorsCopy = descriptors;
  setsCopy = sets;
  v22 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:collectionCopy reverseSortOrder:order fetcherOptions:options];
  BYTE1(v30) = hiddenAssets;
  LOBYTE(v30) = v22;
  v36 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationWithFilterPredicate:predicateCopy inclusionPredicate:inclusionPredicateCopy includeUnsavedSyndicatedAssets:assetsCopy includeSharedCollectionAssets:collectionAssetsCopy includeAllBurstAssets:burstAssetsCopy fetchLimit:limit options:options sortDescriptors:descriptorsCopy reverseSortOrder:v30 hideHiddenAssets:setsCopy fetchPropertySets:filter libraryFilter:?];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __311__PXPhotosAssetsFetcher__fetchAssetsInAssetCollection_withFilterPredicate_inclusionPredicate_includeUnsavedSyndicatedAssets_includeSharedCollectionAssets_includeAllBurstAssets_fetchLimit_options_sortDescriptors_reverseSortOrder_hideHiddenAssets_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v38[3] = &unk_1E773A818;
  v38[4] = self;
  v39 = collectionCopy;
  v40 = predicateCopy;
  optionsCopy = options;
  limitCopy = limit;
  v47 = v22;
  v41 = inclusionPredicateCopy;
  v42 = descriptorsCopy;
  v43 = setsCopy;
  hiddenAssetsCopy = hiddenAssets;
  v49 = burstAssetsCopy;
  assetsCopy2 = assets;
  v51 = collectionAssetsCopy;
  filterCopy = filter;
  groupAssetsCopy = groupAssets;
  v23 = setsCopy;
  v24 = descriptorsCopy;
  v25 = inclusionPredicateCopy;
  v26 = predicateCopy;
  v27 = collectionCopy;
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

- (id)_existingAssetsInContainer:(id)container curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)self0 libraryFilter:(int64_t)self1 includeOthersInSocialGroupAssets:(BOOL)self2
{
  orderCopy = order;
  containerCopy = container;
  LOBYTE(v21) = assets;
  v18 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCuratedAssetsWithCurationKind:kind curationLength:length options:options sortDescriptors:descriptors reverseSortOrder:orderCopy filterPredicate:predicate fetchPropertySets:sets libraryFilter:filter includeOthersInSocialGroupAssets:v21];
  v19 = [(PXPhotosAssetsFetcher *)self _cachedFetchResultForContainer:containerCopy configuration:v18];

  return v19;
}

- (id)_fetchKeyAssetsInContainer:(id)container options:(id)options
{
  containerCopy = container;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PXPeopleUtilities keyAssetForPerson:containerCopy face:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAssetsFetcher.m" lineNumber:397 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [MEMORY[0x1E6978630] fetchKeyAssetForSocialGroup:containerCopy createIfNeeded:1 options:optionsCopy];
  }

  v10 = v9;

  return v10;
}

- (id)_fetchOptionsForCuratedAssetsInAssetCollection:(id)collection withFetcherOptions:(unint64_t)options curationKind:(int64_t)kind reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)filter
{
  orderCopy = order;
  collectionCopy = collection;
  setsCopy = sets;
  predicateCopy = predicate;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  librarySpecificFetchOptions = [WeakRetained librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSharingFilter:{_sharingFilterForLibraryFilterInContainer(filter, collectionCopy)}];
  if ((options & 4) != 0)
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(collectionCopy);
  }

  else
  {
    ShouldShowUnsavedAssetsInAssetCollection = 0;
  }

  [librarySpecificFetchOptions setIncludeGuestAssets:ShouldShowUnsavedAssetsInAssetCollection];
  [librarySpecificFetchOptions setIncludeCollectionShareAssets:{objc_msgSend(collectionCopy, "px_isCloudKitSharedAlbum")}];
  [librarySpecificFetchOptions setIncludeHiddenAssets:0];
  [librarySpecificFetchOptions setInternalPredicate:predicateCopy];

  [librarySpecificFetchOptions setReverseSortOrder:orderCopy];
  [librarySpecificFetchOptions setFetchPropertySets:setsCopy];

  [librarySpecificFetchOptions setReverseDefaultSortDescriptors:{+[PXPhotosAssetsFetcher _shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:](PXPhotosAssetsFetcher, "_shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:", collectionCopy, options)}];
  _addFetchPropertySetsForCurationKind(librarySpecificFetchOptions, kind);

  return librarySpecificFetchOptions;
}

- (id)_fetchOptionsForAssetsInAssetCollection:(id)collection withFetcherOptions:(unint64_t)options filterPredicate:(id)predicate inclusionPredicate:(id)inclusionPredicate fetchLimit:(unint64_t)limit sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order fetchPropertySets:(id)self0 hideHiddenAssets:(BOOL)self1 includeAllBurstAssets:(BOOL)self2
{
  collectionCopy = collection;
  setsCopy = sets;
  descriptorsCopy = descriptors;
  inclusionPredicateCopy = inclusionPredicate;
  predicateCopy = predicate;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  px_standardLibrarySpecificFetchOptions = [WeakRetained px_standardLibrarySpecificFetchOptions];

  [px_standardLibrarySpecificFetchOptions setInternalPredicate:predicateCopy];
  [px_standardLibrarySpecificFetchOptions setInternalInclusionPredicate:inclusionPredicateCopy];

  [px_standardLibrarySpecificFetchOptions setFetchLimit:limit];
  [px_standardLibrarySpecificFetchOptions setInternalSortDescriptors:descriptorsCopy];

  [px_standardLibrarySpecificFetchOptions setReverseSortOrder:order];
  [px_standardLibrarySpecificFetchOptions setFetchPropertySets:setsCopy];

  [px_standardLibrarySpecificFetchOptions setReverseDefaultSortDescriptors:{+[PXPhotosAssetsFetcher _shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:](PXPhotosAssetsFetcher, "_shouldReverseDefaultSortDescriptorsForCollection:fetcherOptions:", collectionCopy, options)}];
  if (assets)
  {
    [px_standardLibrarySpecificFetchOptions setIncludeHiddenAssets:0];
  }

  [px_standardLibrarySpecificFetchOptions setExcludeNonVisibleStackedAssets:burstAssets];
  [px_standardLibrarySpecificFetchOptions setIncludeCollectionShareAssets:{objc_msgSend(collectionCopy, "px_isCloudKitSharedAlbum")}];

  return px_standardLibrarySpecificFetchOptions;
}

- (id)_fetchOptionsForContainer:(id)container curationKind:(int64_t)kind options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)sets libraryFilter:(int64_t)self0
{
  orderCopy = order;
  optionsCopy = options;
  v29[2] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  setsCopy = sets;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  librarySpecificFetchOptions = [WeakRetained librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeHiddenAssets:0];
  [librarySpecificFetchOptions setInternalPredicate:predicateCopy];

  [librarySpecificFetchOptions setFetchPropertySets:setsCopy];
  [librarySpecificFetchOptions setInternalSortDescriptors:descriptorsCopy];

  [librarySpecificFetchOptions setReverseSortOrder:orderCopy];
  _addFetchPropertySetsForCurationKind(librarySpecificFetchOptions, kind);
  [librarySpecificFetchOptions setSharingFilter:{_sharingFilterForLibraryFilterInContainer(filter, containerCopy)}];
  v22 = containerCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = v22;

    if ((optionsCopy & 4) != 0 && v23)
    {
      [librarySpecificFetchOptions setIncludeGuestAssets:PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v23)];
    }
  }

  else
  {

    v23 = 0;
  }

  if (optionsCopy < 0)
  {
    [librarySpecificFetchOptions setIncludeCollectionShareAssets:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sortDescriptors = [librarySpecificFetchOptions sortDescriptors];

    if (!sortDescriptors)
    {
      v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
      v29[0] = v25;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
      v29[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      [librarySpecificFetchOptions setInternalSortDescriptors:v27];
    }
  }

  return librarySpecificFetchOptions;
}

- (id)_fetchAssetsInContainer:(id)container curationKind:(int64_t)kind curationLength:(int64_t)length options:(unint64_t)options sortDescriptors:(id)descriptors reverseSortOrder:(BOOL)order filterPredicate:(id)predicate fetchPropertySets:(id)self0 libraryFilter:(int64_t)self1 includeOthersInSocialGroupAssets:(BOOL)self2
{
  orderCopy = order;
  containerCopy = container;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  setsCopy = sets;
  LOBYTE(v26) = assets;
  v29 = [(PXPhotosAssetsFetcher *)self _fetchConfigurationForCuratedAssetsWithCurationKind:kind curationLength:length options:options sortDescriptors:descriptorsCopy reverseSortOrder:orderCopy filterPredicate:predicateCopy fetchPropertySets:setsCopy libraryFilter:filter includeOthersInSocialGroupAssets:v26];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __199__PXPhotosAssetsFetcher__fetchAssetsInContainer_curationKind_curationLength_options_sortDescriptors_reverseSortOrder_filterPredicate_fetchPropertySets_libraryFilter_includeOthersInSocialGroupAssets___block_invoke;
  v31[3] = &unk_1E773A7F0;
  v31[4] = self;
  v32 = containerCopy;
  v41 = orderCopy;
  v33 = descriptorsCopy;
  v34 = predicateCopy;
  v35 = setsCopy;
  kindCopy = kind;
  optionsCopy = options;
  filterCopy = filter;
  assetsCopy = assets;
  v39 = a2;
  lengthCopy = length;
  v20 = setsCopy;
  v21 = predicateCopy;
  v22 = descriptorsCopy;
  v23 = containerCopy;
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

- (void)clearFetchResultsForAssetCollections:(id)collections
{
  collectionsCopy = collections;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PXPhotosAssetsFetcher_clearFetchResultsForAssetCollections___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = collectionsCopy;
  v6 = collectionsCopy;
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

- (void)clearFetchResultsForAssetCollection:(id)collection
{
  v8[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAssetsFetcher.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"assetCollection != nil"}];
  }

  v8[0] = collectionCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PXPhotosAssetsFetcher *)self clearFetchResultsForAssetCollections:v6];
}

- (id)existingAssetsFetchResultForContainer:(id)container configuration:(id)configuration
{
  containerCopy = container;
  configurationCopy = configuration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    curationKind = [configurationCopy curationKind];
    curationLength = [configurationCopy curationLength];
    options = [configurationCopy options];
    [configurationCopy sortDescriptors];
    v17 = v16 = containerCopy;
    reverseSortOrder = [configurationCopy reverseSortOrder];
    filterPredicate = [configurationCopy filterPredicate];
    fetchPropertySets = [configurationCopy fetchPropertySets];
    selfCopy = self;
    libraryFilter = [configurationCopy libraryFilter];
    LOBYTE(v31) = [configurationCopy includeOthersInSocialGroupAssets];
    v21 = selfCopy;
    v8 = v17;
    containerCopy = v16;
    v13 = [(PXPhotosAssetsFetcher *)v21 _existingAssetsInContainer:v16 curationKind:curationKind curationLength:curationLength options:options sortDescriptors:v8 reverseSortOrder:reverseSortOrder filterPredicate:filterPredicate fetchPropertySets:fetchPropertySets libraryFilter:libraryFilter includeOthersInSocialGroupAssets:v31];
    goto LABEL_6;
  }

  v8 = containerCopy;
  curationKind2 = [configurationCopy curationKind];
  if ((curationKind2 - 1) < 3)
  {
    filterPredicate = [configurationCopy referencePersons];
    curationType = [configurationCopy curationType];
    curationKind3 = [configurationCopy curationKind];
    curationLength2 = [configurationCopy curationLength];
    options2 = [configurationCopy options];
    fetchPropertySets = [configurationCopy sortDescriptors];
    reverseSortOrder2 = [configurationCopy reverseSortOrder];
    filterPredicate2 = [configurationCopy filterPredicate];
    fetchPropertySets2 = [configurationCopy fetchPropertySets];
    LOBYTE(v30) = reverseSortOrder2;
    self = -[PXPhotosAssetsFetcher _existingCuratedAssetsFetchResultForAssetCollection:referencePersons:curationType:curationKind:curationLength:options:sortDescriptors:reverseSortOrder:filterPredicate:fetchPropertySets:libraryFilter:](self, "_existingCuratedAssetsFetchResultForAssetCollection:referencePersons:curationType:curationKind:curationLength:options:sortDescriptors:reverseSortOrder:filterPredicate:fetchPropertySets:libraryFilter:", v8, filterPredicate, curationType, curationKind3, curationLength2, options2, fetchPropertySets, v30, filterPredicate2, fetchPropertySets2, [configurationCopy libraryFilter]);

LABEL_10:
    goto LABEL_11;
  }

  if ((curationKind2 - 4) < 2)
  {
    v10 = [configurationCopy curationKind] == 5;
    filterPredicate = [configurationCopy referenceAsset];
    fetchPropertySets = [configurationCopy referencePersons];
    v13 = -[PXPhotosAssetsFetcher _existingKeyAssetsFetchResultForAssetCollection:referenceAsset:referencePersons:curated:options:libraryFilter:](self, "_existingKeyAssetsFetchResultForAssetCollection:referenceAsset:referencePersons:curated:options:libraryFilter:", v8, filterPredicate, fetchPropertySets, v10, [configurationCopy options], objc_msgSend(configurationCopy, "libraryFilter"));
LABEL_6:
    self = v13;
LABEL_11:

    goto LABEL_12;
  }

  if (!curationKind2)
  {
    filterPredicate = [configurationCopy filterPredicate];
    fetchPropertySets = [configurationCopy inclusionPredicate];
    includeUnsavedSyndicatedAssets = [configurationCopy includeUnsavedSyndicatedAssets];
    includeSharedCollectionAssets = [configurationCopy includeSharedCollectionAssets];
    includeAllBurstAssets = [configurationCopy includeAllBurstAssets];
    fetchLimit = [configurationCopy fetchLimit];
    options3 = [configurationCopy options];
    filterPredicate2 = [configurationCopy sortDescriptors];
    reverseSortOrder3 = [configurationCopy reverseSortOrder];
    hideHiddenAssets = [configurationCopy hideHiddenAssets];
    fetchPropertySets3 = [configurationCopy fetchPropertySets];
    BYTE1(v31) = hideHiddenAssets;
    LOBYTE(v31) = reverseSortOrder3;
    self = -[PXPhotosAssetsFetcher _existingFetchResultForAssetCollection:withFilterPredicate:inclusionPredicate:includeUnsavedSyndicatedAssets:includeSharedCollectionAssets:includeAllBurstAssets:fetchLimit:options:sortDescriptors:reverseSortOrder:hideHiddenAssets:fetchPropertySets:libraryFilter:](self, "_existingFetchResultForAssetCollection:withFilterPredicate:inclusionPredicate:includeUnsavedSyndicatedAssets:includeSharedCollectionAssets:includeAllBurstAssets:fetchLimit:options:sortDescriptors:reverseSortOrder:hideHiddenAssets:fetchPropertySets:libraryFilter:", v8, filterPredicate, fetchPropertySets, includeUnsavedSyndicatedAssets, includeSharedCollectionAssets, includeAllBurstAssets, fetchLimit, options3, filterPredicate2, v31, fetchPropertySets3, [configurationCopy libraryFilter]);

    goto LABEL_10;
  }

LABEL_12:

  return self;
}

- (id)fetchAssetsInContainer:(id)container configuration:(id)configuration
{
  v60 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v8 = [configuration copy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    curationKind = [v8 curationKind];
    curationLength = [v8 curationLength];
    options = [v8 options];
    sortDescriptors = [v8 sortDescriptors];
    reverseSortOrder = [v8 reverseSortOrder];
    filterPredicate = [v8 filterPredicate];
    fetchPropertySets = [v8 fetchPropertySets];
    v27 = containerCopy;
    libraryFilter = [v8 libraryFilter];
    LOBYTE(v44) = [v8 includeOthersInSocialGroupAssets];
    v43 = libraryFilter;
    containerCopy = v27;
    v4 = [(PXPhotosAssetsFetcher *)self _fetchAssetsInContainer:v27 curationKind:curationKind curationLength:curationLength options:options sortDescriptors:sortDescriptors reverseSortOrder:reverseSortOrder filterPredicate:filterPredicate fetchPropertySets:fetchPropertySets libraryFilter:v43 includeOthersInSocialGroupAssets:v44];

    goto LABEL_17;
  }

  v9 = containerCopy;
  curationKind2 = [v8 curationKind];
  if (curationKind2 <= 3)
  {
    if ((curationKind2 - 1) >= 3)
    {
      if (!curationKind2)
      {
        filterPredicate2 = [v8 filterPredicate];
        inclusionPredicate = [v8 inclusionPredicate];
        includeUnsavedSyndicatedAssets = [v8 includeUnsavedSyndicatedAssets];
        includeSharedCollectionAssets = [v8 includeSharedCollectionAssets];
        includeAllBurstAssets = [v8 includeAllBurstAssets];
        fetchLimit = [v8 fetchLimit];
        options2 = [v8 options];
        sortDescriptors2 = [v8 sortDescriptors];
        v34 = containerCopy;
        reverseSortOrder2 = [v8 reverseSortOrder];
        v36 = v9;
        hideHiddenAssets = [v8 hideHiddenAssets];
        fetchPropertySets2 = [v8 fetchPropertySets];
        libraryFilter2 = [v8 libraryFilter];
        LOBYTE(v46) = [v8 includeOthersInSocialGroupAssets];
        BYTE1(v44) = hideHiddenAssets;
        v9 = v36;
        LOBYTE(v44) = reverseSortOrder2;
        containerCopy = v34;
        v4 = [(PXPhotosAssetsFetcher *)self _fetchAssetsInAssetCollection:v36 withFilterPredicate:filterPredicate2 inclusionPredicate:inclusionPredicate includeUnsavedSyndicatedAssets:includeUnsavedSyndicatedAssets includeSharedCollectionAssets:includeSharedCollectionAssets includeAllBurstAssets:includeAllBurstAssets fetchLimit:fetchLimit options:options2 sortDescriptors:sortDescriptors2 reverseSortOrder:v44 hideHiddenAssets:fetchPropertySets2 fetchPropertySets:libraryFilter2 libraryFilter:v46 includeOthersInSocialGroupAssets:?];
      }
    }

    else
    {
      [v8 referencePersons];
      v11 = v55 = v9;
      curationType = [v8 curationType];
      curationKind3 = [v8 curationKind];
      curationLength2 = [v8 curationLength];
      v12 = containerCopy;
      options3 = [v8 options];
      sortDescriptors3 = [v8 sortDescriptors];
      reverseSortOrder3 = [v8 reverseSortOrder];
      [v8 filterPredicate];
      v17 = v16 = self;
      fetchPropertySets3 = [v8 fetchPropertySets];
      libraryFilter3 = [v8 libraryFilter];
      LOBYTE(v45) = [v8 includeOthersInSocialGroupAssets];
      LOBYTE(v42) = reverseSortOrder3;
      v20 = options3;
      containerCopy = v12;
      v4 = [(PXPhotosAssetsFetcher *)v16 _fetchCuratedAssetsInAssetCollection:v55 referencePersons:v11 curationType:curationType curationKind:curationKind3 curationLength:curationLength2 options:v20 sortDescriptors:sortDescriptors3 reverseSortOrder:v42 filterPredicate:v17 fetchPropertySets:fetchPropertySets3 libraryFilter:libraryFilter3 includeOthersInSocialGroupAssets:v45];

      v9 = v55;
    }

    goto LABEL_16;
  }

  if (curationKind2 == 4)
  {
    goto LABEL_15;
  }

  if (curationKind2 == 5)
  {
    if ([v9 supportsFastKeyAssetCuration])
    {
      referenceAsset = [v8 referenceAsset];
      [v8 referencePersons];
      v31 = v30 = self;
      v4 = -[PXPhotosAssetsFetcher _fetchCuratedKeyAssetsInAssetCollection:referenceAsset:referencePersons:options:libraryFilter:](v30, "_fetchCuratedKeyAssetsInAssetCollection:referenceAsset:referencePersons:options:libraryFilter:", v9, referenceAsset, v31, [v8 options], objc_msgSend(v8, "libraryFilter"));

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

- (PXPhotosAssetsFetcher)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
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
    enableFetchResultCaching = [v10 enableFetchResultCaching];

    if (enableFetchResultCaching)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      queue_cachedFetchResultsByContainerByConfiguration = v6->_queue_cachedFetchResultsByContainerByConfiguration;
      v6->_queue_cachedFetchResultsByContainerByConfiguration = strongToStrongObjectsMapTable;
    }

    if (!libraryCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXPhotosAssetsFetcher.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    v14 = objc_storeWeak(&v6->_photoLibrary, libraryCopy);
    [libraryCopy px_registerChangeObserver:v6];
  }

  return v6;
}

+ (BOOL)_shouldReverseDefaultSortDescriptorsForCollection:(id)collection fetcherOptions:(unint64_t)options
{
  collectionCopy = collection;
  v5 = [collectionCopy assetCollectionType] == 1 && objc_msgSend(collectionCopy, "assetCollectionSubtype") == 101;

  return v5;
}

+ (BOOL)_adjustedReverseSortOrderForCollection:(id)collection reverseSortOrder:(BOOL)order fetcherOptions:(unint64_t)options
{
  optionsCopy = options;
  collectionCopy = collection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  orderCopy = order;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PXPhotosAssetsFetcher__adjustedReverseSortOrderForCollection_reverseSortOrder_fetcherOptions___block_invoke;
  aBlock[3] = &unk_1E774BD00;
  aBlock[4] = &v12;
  v8 = _Block_copy(aBlock);
  if ((optionsCopy & 0x20) != 0 && [collectionCopy assetCollectionType] == 2 && ((objc_msgSend(collectionCopy, "px_isUserSmartAlbum") & 1) == 0 && !objc_msgSend(collectionCopy, "isTransient") || objc_msgSend(collectionCopy, "px_isUtilityCollection")))
  {
    v8[2](v8);
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v9;
}

+ (id)sharedFetcherForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAssetsFetcher.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
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
  v12 = libraryCopy;
  v13 = &v14;
  v7 = libraryCopy;
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