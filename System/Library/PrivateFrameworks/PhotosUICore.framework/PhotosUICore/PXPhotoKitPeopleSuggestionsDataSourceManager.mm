@interface PXPhotoKitPeopleSuggestionsDataSourceManager
+ (OS_dispatch_queue)sharedWorkerQueue;
+ (id)mockDataSourceManagerFromPeopleInPhotosInAssetCollection:(id)a3;
+ (id)personsForClient:(unint64_t)a3 fetchOptions:(id)a4;
+ (id)photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:(id)a3;
+ (id)sharedLibraryPeopleSuggestionsDataSourceManager;
- (BOOL)isLoading;
- (PXPhotoKitPeopleSuggestionsDataSourceManager)initWithPeopleFetchResult:(id)a3;
- (id)_createSuggestionsDataSourceFromCurrentState;
- (id)_initWithAssetCollection:(id)a3;
- (id)createInitialDataSource;
- (id)mediaProvider;
- (id)people;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5;
- (void)_handleFinishedLoadingFinalDataSourceFetchResult:(id)a3;
- (void)_loadFinalDataSource;
- (void)_workerQueue_fetchRemainingPeopleInBatches;
- (void)boostLoading;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)startLoading;
- (void)startPrefetchingIfNeeded;
@end

@implementation PXPhotoKitPeopleSuggestionsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
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
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v10];
    v21 = [(PXSectionedDataSourceManager *)self dataSource];
    v13 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    v20 = [off_1E77218B0 alloc];
    v14 = [v21 identifier];
    v22 = v6;
    v15 = [v13 identifier];
    v16 = [off_1E7721450 changeDetailsWithNoChanges];
    v24 = &unk_1F190C208;
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
  v16 = __Block_byref_object_copy__112266;
  v17 = __Block_byref_object_dispose__112267;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXPhotoKitPeopleSuggestionsDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
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

void __77__PXPhotoKitPeopleSuggestionsDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
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
  v11 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  v12 = [v11 personSuggestionsByPerson];
  v13 = [v12 mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __114__PXPhotoKitPeopleSuggestionsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke;
  v41[3] = &unk_1E7739E18;
  v14 = v13;
  v42 = v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v41];
  v15 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
  v16 = [v11 people];
  v17 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v15 initWithPeople:v16 personSuggestionsByPerson:v14];

  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v17];
  if (self->_hasCreatedInitialDataSource)
  {
    v35 = v17;
    v18 = [(PXSectionedDataSourceManager *)self dataSource];
    v39 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    v19 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];

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
      v23 = [v22 people];
      v24 = [v39 _state];
      v25 = [v24 people];
      v26 = v20;
      v27 = [v21 changeDetailsFromFetchResult:v23 toFetchResult:v25 changedObjects:v20];

      v18 = v40;
      v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v27];
    }

    v29 = [off_1E77218B0 alloc];
    v30 = [v18 identifier];
    v31 = [v39 identifier];
    v32 = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = &unk_1F190C208;
    v44[0] = v28;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = [v29 initWithFromDataSourceIdentifier:v30 toDataSourceIdentifier:v31 sectionChanges:v32 itemChangeDetailsBySection:v33 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v39 changeDetails:v34];
    v9 = v37;
    v8 = v38;
    v17 = v35;
    v10 = v36;
  }

  self->_isPrefetching = 0;
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self startPrefetchingIfNeeded];
}

void __114__PXPhotoKitPeopleSuggestionsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_workerQueue_fetchRemainingPeopleInBatches
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
  v5 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  v23 = [MEMORY[0x1E696AD50] indexSet];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      v14 = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:v13];
      [v3 setObject:v14 forKeyedSubscript:v13];
      v15 = [v5 indexOfObject:v13];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v23 addIndex:v15];
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v17 = v16 - v7;

      if (v17 > 0.25 || v17 < 0.0)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([v3 count])
  {
    v18 = [v3 allKeys];
    [v8 removeObjectsInArray:v18];
  }

  if (![v8 count])
  {
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_remainingPeopleToFetch:0];
  }

  v19 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v23];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PXPhotoKitPeopleSuggestionsDataSourceManager__workerQueue_fetchRemainingPeopleInBatches__block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v28, &location);
  v25 = v3;
  v26 = v19;
  v27 = v5;
  v20 = v5;
  v21 = v19;
  v22 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __90__PXPhotoKitPeopleSuggestionsDataSourceManager__workerQueue_fetchRemainingPeopleInBatches__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFinishedFetchingBatch:*(a1 + 32) preparedChangeDetails:*(a1 + 40) forFetchResult:*(a1 + 48)];
}

- (void)startPrefetchingIfNeeded
{
  if (!self->_isPrefetching)
  {
    v3 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
    if (v3)
    {
      v4 = v3;
      v5 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasFinishedLoadingFinalDataSource];

      if (v5)
      {
        self->_isPrefetching = 1;
        objc_initWeak(&location, self);
        v6 = [objc_opt_class() sharedWorkerQueue];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __72__PXPhotoKitPeopleSuggestionsDataSourceManager_startPrefetchingIfNeeded__block_invoke;
        v7[3] = &unk_1E774C318;
        objc_copyWeak(&v8, &location);
        dispatch_async(v6, v7);

        objc_destroyWeak(&v8);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __72__PXPhotoKitPeopleSuggestionsDataSourceManager_startPrefetchingIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workerQueue_fetchRemainingPeopleInBatches];
}

- (id)_createSuggestionsDataSourceFromCurrentState
{
  v3 = [PXPhotoKitPeopleSuggestionsDataSource alloc];
  v4 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  v5 = [(PXPhotoKitPeopleSuggestionsDataSource *)v3 initWithState:v4];

  return v5;
}

- (id)createInitialDataSource
{
  v3 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
  self->_hasCreatedInitialDataSource = 1;
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self startPrefetchingIfNeeded];

  return v3;
}

- (id)people
{
  v2 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  v3 = [v2 people];

  return v3;
}

- (void)_handleFinishedLoadingFinalDataSourceFetchResult:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_hasFinishedLoadingFinalDataSource = 1;
  v5 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
  v6 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v5 initWithPeople:v4 personSuggestionsByPerson:MEMORY[0x1E695E0F8]];
  v7 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v6];
  if (self->_hasCreatedInitialDataSource)
  {
    v18 = [(PXSectionedDataSourceManager *)self dataSource];
    v8 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    v9 = [v7 fetchedObjects];
    v10 = [v4 fetchedObjects];
    v17 = [off_1E7721450 changeDetailsFromArray:v9 toArray:v10 changedObjects:MEMORY[0x1E695E0F0]];

    v11 = [off_1E77218B0 alloc];
    v12 = [v18 identifier];
    v13 = [v8 identifier];
    v14 = [off_1E7721450 changeDetailsWithNoChanges];
    v19 = &unk_1F190C208;
    v20[0] = v17;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v11 initWithFromDataSourceIdentifier:v12 toDataSourceIdentifier:v13 sectionChanges:v14 itemChangeDetailsBySection:v15 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v8 changeDetails:v16];
  }

  self->_isPrefetching = 0;
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self startPrefetchingIfNeeded];
}

- (void)_loadFinalDataSource
{
  v3 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self assetCollection];
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = MEMORY[0x1E6978980];
  v7 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self assetCollection];
  v8 = [v6 fetchSuggestedPersonsForAssetCollection:v7 options:v5];

  if (v8 && [v8 count])
  {
    v9 = [MEMORY[0x1E695DFA0] orderedSet];
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_remainingPeopleToFetch:v9];

    v10 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
    v11 = [v8 fetchedObjects];
    [v10 addObjectsFromArray:v11];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PXPhotoKitPeopleSuggestionsDataSourceManager__loadFinalDataSource__block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v15, &location);
  v14 = v8;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__PXPhotoKitPeopleSuggestionsDataSourceManager__loadFinalDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleFinishedLoadingFinalDataSourceFetchResult:*(a1 + 32)];
}

- (id)mediaProvider
{
  v2 = objc_alloc_init(PXPhotoKitPeopleSuggestionsMediaProvider);

  return v2;
}

- (BOOL)isLoading
{
  v3 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasStartedLoadingFinalDataSource];
  if (v3)
  {
    LOBYTE(v3) = ![(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasFinishedLoadingFinalDataSource];
  }

  return v3;
}

- (void)boostLoading
{
  v2 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  v3 = [v2 count];

  if (!v3)
  {
    queue = [objc_opt_class() sharedWorkerQueue];
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_192_112317);
    dispatch_async(queue, v4);
  }
}

- (void)startLoading
{
  if (self->_needsDeferredLoading && ![(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasStartedLoadingFinalDataSource])
  {
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self setHasStartedLoadingFinalDataSource:1];
    objc_initWeak(&location, self);
    v3 = [objc_opt_class() sharedWorkerQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__PXPhotoKitPeopleSuggestionsDataSourceManager_startLoading__block_invoke;
    v4[3] = &unk_1E774C318;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __60__PXPhotoKitPeopleSuggestionsDataSourceManager_startLoading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadFinalDataSource];
}

- (id)_initWithAssetCollection:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self initWithPeopleFetchResult:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, a3);
    v7->_needsDeferredLoading = 1;
  }

  return v7;
}

- (PXPhotoKitPeopleSuggestionsDataSourceManager)initWithPeopleFetchResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXPhotoKitPeopleSuggestionsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v15 init];
  if (v5)
  {
    v6 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
    v7 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v6 initWithPeople:v4 personSuggestionsByPerson:MEMORY[0x1E695E0F8]];
    state = v5->__state;
    v5->__state = v7;

    if (v4 && [v4 count])
    {
      v9 = [MEMORY[0x1E695DFA0] orderedSet];
      remainingPeopleToFetch = v5->__remainingPeopleToFetch;
      v5->__remainingPeopleToFetch = v9;

      v11 = v5->__remainingPeopleToFetch;
      v12 = [v4 fetchedObjects];
      [(NSMutableOrderedSet *)v11 addObjectsFromArray:v12];
    }

    v13 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v13 px_registerChangeObserver:v5];
  }

  return v5;
}

+ (id)photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] _initWithAssetCollection:v3];

  return v4;
}

+ (id)mockDataSourceManagerFromPeopleInPhotosInAssetCollection:(id)a3
{
  v3 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:a3 options:0];
  v4 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] initWithPeopleFetchResult:v3];

  return v4;
}

+ (id)personsForClient:(unint64_t)a3 fetchOptions:(id)a4
{
  v6 = a4;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__112266;
  v10[4] = __Block_byref_object_dispose__112267;
  v10[5] = 0;
  v7 = [a1 sharedWorkerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXPhotoKitPeopleSuggestionsDataSourceManager_personsForClient_fetchOptions___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = v10;
  block[6] = a3;
  block[4] = v6;
  dispatch_async(v7, block);

  [a1 sharedWorkerQueue];
  objc_claimAutoreleasedReturnValue();
  px_dispatch_queue_wait();
}

void __78__PXPhotoKitPeopleSuggestionsDataSourceManager_personsForClient_fetchOptions___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E6978980] fetchSuggestedPersonsForClient:a1[6] options:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)sharedLibraryPeopleSuggestionsDataSourceManager
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  if (!PFOSVariantHasInternalUI())
  {
    goto LABEL_10;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 stringForKey:@"PXPeopleSuggestionsDataSourceManagerPersonUUID"];
  if (!v6)
  {
    v12 = +[PXSharedLibrarySettings sharedInstance];
    v13 = [v12 mockPersonSuggestionForSetupAssistant];

    if (v13)
    {
      [v4 setFetchLimit:3];
      v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(verifiedType = %ld) || (verifiedType = %ld)", 1, 2];
      [v4 setPredicate:v14];

      v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:0];
      v22 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      [v4 setSortDescriptors:v16];

      v11 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v4];
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v11 firstObject];
        v19 = [v18 uuid];
        *buf = 138412290;
        v25 = v19;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "Using mock people suggestion: %@", buf, 0xCu);
      }

      goto LABEL_11;
    }

LABEL_10:
    v11 = [a1 personsForClient:4 fetchOptions:v4];
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = v6;

  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Using provided person UUID for people suggestion: %@", buf, 0xCu);
  }

  v9 = MEMORY[0x1E6978980];
  v23 = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v11 = [v9 fetchPersonsWithLocalIdentifiers:v10 options:v4];

LABEL_12:
  v20 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] initWithPeopleFetchResult:v11];

  return v20;
}

+ (OS_dispatch_queue)sharedWorkerQueue
{
  if (sharedWorkerQueue_onceToken != -1)
  {
    dispatch_once(&sharedWorkerQueue_onceToken, &__block_literal_global_112347);
  }

  v3 = sharedWorkerQueue__sharedWorkerQueue;

  return v3;
}

void __65__PXPhotoKitPeopleSuggestionsDataSourceManager_sharedWorkerQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.photos.PXPhotoKitPeopleSuggestionsDataSourceManager-sharedWorkerQueue", attr);
  v2 = sharedWorkerQueue__sharedWorkerQueue;
  sharedWorkerQueue__sharedWorkerQueue = v1;
}

@end