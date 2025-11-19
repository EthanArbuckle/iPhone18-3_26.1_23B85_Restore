@interface PXCMMMomentsInvitationsDataSourceManager
- (PXCMMMomentsInvitationsDataSourceManager)init;
- (PXCMMMomentsInvitationsDataSourceManager)initWithPhotoLibrary:(id)a3;
- (id)_createInvitationsDataSourceFromCurrentState;
- (id)assetCollections;
- (id)createInitialDataSource;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5;
- (void)_workerQueue_fetchRemainingAssetCollectionsInBatches;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)startLoadingIfNeeded;
@end

@implementation PXCMMMomentsInvitationsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXCMMMomentsInvitationsDataSourceManager *)self _state];
  v9 = [v7 objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == v8)
  {
    v10 = [v7 objectForKeyedSubscript:@"preparedState"];
    v11 = [v7 objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v23 = 0;
    v10 = [v8 stateUpdatedWithChange:v6 changeDetails:&v23];
    v11 = v23;
  }

  v12 = v11;
  if (v10 != v8)
  {
    [(PXCMMMomentsInvitationsDataSourceManager *)self set_state:v10];
    v21 = [(PXSectionedDataSourceManager *)self dataSource];
    v13 = [(PXCMMMomentsInvitationsDataSourceManager *)self _createInvitationsDataSourceFromCurrentState];
    v20 = [off_1E77218B0 alloc];
    v14 = [v21 identifier];
    v22 = v6;
    v15 = [v13 identifier];
    v16 = [off_1E7721450 changeDetailsWithNoChanges];
    v24 = &unk_1F190CDD8;
    v25[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = v17 = v7;
    v19 = [v20 initWithFromDataSourceIdentifier:v14 toDataSourceIdentifier:v15 sectionChanges:v16 itemChangeDetailsBySection:v18 subitemChangeDetailsByItemBySection:0];

    v7 = v17;
    [(PXSectionedDataSourceManager *)self setDataSource:v13 changeDetails:v19];

    v6 = v22;
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__165298;
  v17 = __Block_byref_object_dispose__165299;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXCMMMomentsInvitationsDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v5 = v14[5];
  v11 = 0;
  v6 = [v5 stateUpdatedWithChange:v4 changeDetails:&v11];
  v7 = v11;
  v8 = v14[5];
  v19[0] = @"preparedForCurrentState";
  v19[1] = @"preparedState";
  v20[0] = v8;
  v20[1] = v6;
  v19[2] = @"preparedChangeDetails";
  v20[2] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __73__PXCMMMomentsInvitationsDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _state];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXCMMMomentsInvitationsDataSourceManager *)self _state];
  v12 = [v11 invitationsByAssetCollectionObjectID];
  v13 = [v12 mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __110__PXCMMMomentsInvitationsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke;
  v41[3] = &unk_1E773F198;
  v14 = v13;
  v42 = v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v41];
  v15 = [PXCMMMomentsInvitationsDataSourceState alloc];
  v16 = [v11 assetCollections];
  v17 = [(PXCMMMomentsInvitationsDataSourceState *)v15 initWithAssetCollections:v16 invitationsByAssetCollectionObjectID:v14];

  [(PXCMMMomentsInvitationsDataSourceManager *)self set_state:v17];
  if (self->_hasCreatedInitialDataSource)
  {
    v35 = v17;
    v18 = [(PXSectionedDataSourceManager *)self dataSource];
    v39 = [(PXCMMMomentsInvitationsDataSourceManager *)self _createInvitationsDataSourceFromCurrentState];
    v19 = [(PXCMMMomentsInvitationsDataSourceManager *)self assetCollections];

    v36 = v10;
    v37 = v9;
    v38 = v8;
    v40 = v18;
    if (v19 == v10)
    {
      v28 = v9;
    }

    else
    {
      v20 = [v8 allKeys];
      v21 = MEMORY[0x1E6978848];
      v22 = [v18 _state];
      v23 = [v22 assetCollections];
      v24 = [v39 _state];
      v25 = [v24 assetCollections];
      v26 = v20;
      v27 = [v21 changeDetailsFromFetchResult:v23 toFetchResult:v25 changedObjects:v20];

      v18 = v40;
      v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v27];
    }

    v29 = [off_1E77218B0 alloc];
    v30 = [v18 identifier];
    v31 = [v39 identifier];
    v32 = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = &unk_1F190CDD8;
    v44[0] = v28;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = [v29 initWithFromDataSourceIdentifier:v30 toDataSourceIdentifier:v31 sectionChanges:v32 itemChangeDetailsBySection:v33 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v39 changeDetails:v34];
    v9 = v37;
    v8 = v38;
    v17 = v35;
    v10 = v36;
  }

  self->_isLoading = 0;
  [(PXCMMMomentsInvitationsDataSourceManager *)self startLoadingIfNeeded];
}

void __110__PXCMMMomentsInvitationsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_workerQueue_fetchRemainingAssetCollectionsInBatches
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  val = self;
  v4 = [(PXCMMMomentsInvitationsDataSourceManager *)self _remainingAssetCollectionObjectIDsToFetch];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v49 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v48 + 1) + 8 * v11);
      v13 = objc_alloc(MEMORY[0x1E69788E0]);
      v53 = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v15 = [(PXCMMMomentsInvitationsDataSourceManager *)val photoLibrary];
      v16 = [MEMORY[0x1E6978650] fetchType];
      v17 = [v13 initWithOids:v14 photoLibrary:v15 fetchType:v16 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

      v18 = [v17 firstObject];
      v19 = [PXCMMMomentsInvitation invitationWithAssetCollection:v18];

      [v3 setObject:v19 forKeyedSubscript:v12];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v21 = v20 - v6;

      if (v21 > 0.25 || v21 < 0.0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = v7;

  if ([v3 count])
  {
    v23 = [v3 allKeys];
    [v7 removeObjectsInArray:v23];
  }

  if (![v7 count])
  {
    [(PXCMMMomentsInvitationsDataSourceManager *)val set_remainingAssetCollectionObjectIDsToFetch:0];
  }

  v24 = [MEMORY[0x1E696AD50] indexSet];
  v25 = [(PXCMMMomentsInvitationsDataSourceManager *)val assetCollections];
  v26 = [v25 fetchedObjectIDs];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = v3;
  v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      v31 = 0;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [v26 indexOfObject:*(*(&v44 + 1) + 8 * v31)];
        if (v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v24 addIndex:v32];
        }

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v29);
  }

  v33 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v24];
  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PXCMMMomentsInvitationsDataSourceManager__workerQueue_fetchRemainingAssetCollectionsInBatches__block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v42, &location);
  v39 = v27;
  v40 = v33;
  v41 = v25;
  v34 = v25;
  v35 = v33;
  v36 = v27;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

void __96__PXCMMMomentsInvitationsDataSourceManager__workerQueue_fetchRemainingAssetCollectionsInBatches__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFinishedFetchingBatch:*(a1 + 32) preparedChangeDetails:*(a1 + 40) forFetchResult:*(a1 + 48)];
}

- (void)startLoadingIfNeeded
{
  if (!self->_isLoading)
  {
    v3 = [(PXCMMMomentsInvitationsDataSourceManager *)self _remainingAssetCollectionObjectIDsToFetch];

    if (v3)
    {
      self->_isLoading = 1;
      objc_initWeak(&location, self);
      workerQueue = self->_workerQueue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __64__PXCMMMomentsInvitationsDataSourceManager_startLoadingIfNeeded__block_invoke;
      v5[3] = &unk_1E774C318;
      objc_copyWeak(&v6, &location);
      dispatch_async(workerQueue, v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __64__PXCMMMomentsInvitationsDataSourceManager_startLoadingIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workerQueue_fetchRemainingAssetCollectionsInBatches];
}

- (id)_createInvitationsDataSourceFromCurrentState
{
  v3 = [PXCMMMomentsInvitationsDataSource alloc];
  v4 = [(PXCMMMomentsInvitationsDataSourceManager *)self _state];
  v5 = [(PXCMMMomentsInvitationsDataSource *)v3 initWithState:v4];

  return v5;
}

- (id)createInitialDataSource
{
  v3 = [(PXCMMMomentsInvitationsDataSourceManager *)self _createInvitationsDataSourceFromCurrentState];
  self->_hasCreatedInitialDataSource = 1;
  [(PXCMMMomentsInvitationsDataSourceManager *)self startLoadingIfNeeded];

  return v3;
}

- (id)assetCollections
{
  v2 = [(PXCMMMomentsInvitationsDataSourceManager *)self _state];
  v3 = [v2 assetCollections];

  return v3;
}

- (PXCMMMomentsInvitationsDataSourceManager)initWithPhotoLibrary:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v27.receiver = self;
  v27.super_class = PXCMMMomentsInvitationsDataSourceManager;
  v7 = [(PXSectionedDataSourceManager *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    [(PHPhotoLibrary *)v8->_photoLibrary px_registerChangeObserver:v8];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    v11 = dispatch_queue_create("com.apple.photos.PXCMMMomentsInvitationsDataSourceManager", v10);
    workerQueue = v8->_workerQueue;
    v8->_workerQueue = v11;

    v13 = [v6 librarySpecificFetchOptions];
    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v28[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v13 setSortDescriptors:v15];

    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"estimatedAssetCount > 8"];
    [v13 setPredicate:v16];

    [v13 setFetchLimit:6];
    v17 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v13];
    v18 = MEMORY[0x1E695DFA0];
    v19 = [v17 fetchedObjectIDs];
    v20 = [v18 orderedSetWithArray:v19];
    remainingAssetCollectionObjectIDsToFetch = v8->__remainingAssetCollectionObjectIDsToFetch;
    v8->__remainingAssetCollectionObjectIDsToFetch = v20;

    v22 = [PXCMMMomentsInvitationsDataSourceState alloc];
    v23 = [(PXCMMMomentsInvitationsDataSourceState *)v22 initWithAssetCollections:v17 invitationsByAssetCollectionObjectID:MEMORY[0x1E695E0F8]];
    state = v8->__state;
    v8->__state = v23;
  }

  return v8;
}

- (PXCMMMomentsInvitationsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentsInvitationsDataSourceManager.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXCMMMomentsInvitationsDataSourceManager init]"}];

  abort();
}

@end