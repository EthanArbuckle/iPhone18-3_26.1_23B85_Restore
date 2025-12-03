@interface PXPhotoKitPeopleSuggestionsDataSourceManager
+ (OS_dispatch_queue)sharedWorkerQueue;
+ (id)mockDataSourceManagerFromPeopleInPhotosInAssetCollection:(id)collection;
+ (id)personsForClient:(unint64_t)client fetchOptions:(id)options;
+ (id)photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:(id)collection;
+ (id)sharedLibraryPeopleSuggestionsDataSourceManager;
- (BOOL)isLoading;
- (PXPhotoKitPeopleSuggestionsDataSourceManager)initWithPeopleFetchResult:(id)result;
- (id)_createSuggestionsDataSourceFromCurrentState;
- (id)_initWithAssetCollection:(id)collection;
- (id)createInitialDataSource;
- (id)mediaProvider;
- (id)people;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result;
- (void)_handleFinishedLoadingFinalDataSourceFetchResult:(id)result;
- (void)_loadFinalDataSource;
- (void)_workerQueue_fetchRemainingPeopleInBatches;
- (void)boostLoading;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)startLoading;
- (void)startPrefetchingIfNeeded;
@end

@implementation PXPhotoKitPeopleSuggestionsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v25[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  _state = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  v9 = [infoCopy objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == _state)
  {
    v10 = [infoCopy objectForKeyedSubscript:@"preparedState"];
    v11 = [infoCopy objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v23 = 0;
    v10 = [_state stateUpdatedWithChange:queueCopy changeDetails:&v23];
    v11 = v23;
  }

  v12 = v11;
  if (v10 != _state)
  {
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v10];
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    _createSuggestionsDataSourceFromCurrentState = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    v20 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    v22 = queueCopy;
    identifier2 = [_createSuggestionsDataSourceFromCurrentState identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v24 = &unk_1F190C208;
    v25[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = v17 = infoCopy;
    v19 = [v20 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v18 subitemChangeDetailsByItemBySection:0];

    infoCopy = v17;
    [(PXSectionedDataSourceManager *)self setDataSource:_createSuggestionsDataSourceFromCurrentState changeDetails:v19];

    queueCopy = v22;
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v20[3] = *MEMORY[0x1E69E9840];
  changeCopy = change;
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
  v6 = [v5 stateUpdatedWithChange:changeCopy changeDetails:&v11];
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

- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result
{
  v44[1] = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  detailsCopy = details;
  resultCopy = result;
  _state = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  personSuggestionsByPerson = [_state personSuggestionsByPerson];
  v13 = [personSuggestionsByPerson mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __114__PXPhotoKitPeopleSuggestionsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke;
  v41[3] = &unk_1E7739E18;
  v14 = v13;
  v42 = v14;
  [batchCopy enumerateKeysAndObjectsUsingBlock:v41];
  v15 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
  people = [_state people];
  v17 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v15 initWithPeople:people personSuggestionsByPerson:v14];

  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v17];
  if (self->_hasCreatedInitialDataSource)
  {
    v35 = v17;
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    _createSuggestionsDataSourceFromCurrentState = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    people2 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];

    v36 = resultCopy;
    v37 = detailsCopy;
    v38 = batchCopy;
    v40 = dataSource;
    if (people2 == resultCopy)
    {
      v28 = detailsCopy;
    }

    else
    {
      allKeys = [batchCopy allKeys];
      v21 = MEMORY[0x1E6978848];
      _state2 = [dataSource _state];
      people3 = [_state2 people];
      _state3 = [_createSuggestionsDataSourceFromCurrentState _state];
      people4 = [_state3 people];
      v26 = allKeys;
      v27 = [v21 changeDetailsFromFetchResult:people3 toFetchResult:people4 changedObjects:allKeys];

      dataSource = v40;
      v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v27];
    }

    v29 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [_createSuggestionsDataSourceFromCurrentState identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = &unk_1F190C208;
    v44[0] = v28;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = [v29 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v33 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:_createSuggestionsDataSourceFromCurrentState changeDetails:v34];
    detailsCopy = v37;
    batchCopy = v38;
    v17 = v35;
    resultCopy = v36;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _remainingPeopleToFetch = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
  people = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = _remainingPeopleToFetch;
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
      [dictionary setObject:v14 forKeyedSubscript:v13];
      v15 = [people indexOfObject:v13];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [indexSet addIndex:v15];
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

  if ([dictionary count])
  {
    allKeys = [dictionary allKeys];
    [v8 removeObjectsInArray:allKeys];
  }

  if (![v8 count])
  {
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_remainingPeopleToFetch:0];
  }

  v19 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:indexSet];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PXPhotoKitPeopleSuggestionsDataSourceManager__workerQueue_fetchRemainingPeopleInBatches__block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v28, &location);
  v25 = dictionary;
  v26 = v19;
  v27 = people;
  v20 = people;
  v21 = v19;
  v22 = dictionary;
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
    _remainingPeopleToFetch = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
    if (_remainingPeopleToFetch)
    {
      v4 = _remainingPeopleToFetch;
      hasFinishedLoadingFinalDataSource = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasFinishedLoadingFinalDataSource];

      if (hasFinishedLoadingFinalDataSource)
      {
        self->_isPrefetching = 1;
        objc_initWeak(&location, self);
        sharedWorkerQueue = [objc_opt_class() sharedWorkerQueue];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __72__PXPhotoKitPeopleSuggestionsDataSourceManager_startPrefetchingIfNeeded__block_invoke;
        v7[3] = &unk_1E774C318;
        objc_copyWeak(&v8, &location);
        dispatch_async(sharedWorkerQueue, v7);

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
  _state = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  v5 = [(PXPhotoKitPeopleSuggestionsDataSource *)v3 initWithState:_state];

  return v5;
}

- (id)createInitialDataSource
{
  _createSuggestionsDataSourceFromCurrentState = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
  self->_hasCreatedInitialDataSource = 1;
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self startPrefetchingIfNeeded];

  return _createSuggestionsDataSourceFromCurrentState;
}

- (id)people
{
  _state = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _state];
  people = [_state people];

  return people;
}

- (void)_handleFinishedLoadingFinalDataSourceFetchResult:(id)result
{
  v20[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  self->_hasFinishedLoadingFinalDataSource = 1;
  v5 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
  v6 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v5 initWithPeople:resultCopy personSuggestionsByPerson:MEMORY[0x1E695E0F8]];
  people = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_state:v6];
  if (self->_hasCreatedInitialDataSource)
  {
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    _createSuggestionsDataSourceFromCurrentState = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _createSuggestionsDataSourceFromCurrentState];
    fetchedObjects = [people fetchedObjects];
    fetchedObjects2 = [resultCopy fetchedObjects];
    v17 = [off_1E7721450 changeDetailsFromArray:fetchedObjects toArray:fetchedObjects2 changedObjects:MEMORY[0x1E695E0F0]];

    v11 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [_createSuggestionsDataSourceFromCurrentState identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v19 = &unk_1F190C208;
    v20[0] = v17;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v11 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v15 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:_createSuggestionsDataSourceFromCurrentState changeDetails:v16];
  }

  self->_isPrefetching = 0;
  [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self startPrefetchingIfNeeded];
}

- (void)_loadFinalDataSource
{
  assetCollection = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self assetCollection];
  photoLibrary = [assetCollection photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = MEMORY[0x1E6978980];
  assetCollection2 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self assetCollection];
  v8 = [v6 fetchSuggestedPersonsForAssetCollection:assetCollection2 options:librarySpecificFetchOptions];

  if (v8 && [v8 count])
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self set_remainingPeopleToFetch:orderedSet];

    _remainingPeopleToFetch = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self _remainingPeopleToFetch];
    fetchedObjects = [v8 fetchedObjects];
    [_remainingPeopleToFetch addObjectsFromArray:fetchedObjects];
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
  hasStartedLoadingFinalDataSource = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasStartedLoadingFinalDataSource];
  if (hasStartedLoadingFinalDataSource)
  {
    LOBYTE(hasStartedLoadingFinalDataSource) = ![(PXPhotoKitPeopleSuggestionsDataSourceManager *)self hasFinishedLoadingFinalDataSource];
  }

  return hasStartedLoadingFinalDataSource;
}

- (void)boostLoading
{
  people = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self people];
  v3 = [people count];

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
    sharedWorkerQueue = [objc_opt_class() sharedWorkerQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__PXPhotoKitPeopleSuggestionsDataSourceManager_startLoading__block_invoke;
    v4[3] = &unk_1E774C318;
    objc_copyWeak(&v5, &location);
    dispatch_async(sharedWorkerQueue, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __60__PXPhotoKitPeopleSuggestionsDataSourceManager_startLoading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadFinalDataSource];
}

- (id)_initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [(PXPhotoKitPeopleSuggestionsDataSourceManager *)self initWithPeopleFetchResult:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, collection);
    v7->_needsDeferredLoading = 1;
  }

  return v7;
}

- (PXPhotoKitPeopleSuggestionsDataSourceManager)initWithPeopleFetchResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = PXPhotoKitPeopleSuggestionsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v15 init];
  if (v5)
  {
    v6 = [PXPhotoKitPeopleSuggestionsDataSourceState alloc];
    v7 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)v6 initWithPeople:resultCopy personSuggestionsByPerson:MEMORY[0x1E695E0F8]];
    state = v5->__state;
    v5->__state = v7;

    if (resultCopy && [resultCopy count])
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      remainingPeopleToFetch = v5->__remainingPeopleToFetch;
      v5->__remainingPeopleToFetch = orderedSet;

      v11 = v5->__remainingPeopleToFetch;
      fetchedObjects = [resultCopy fetchedObjects];
      [(NSMutableOrderedSet *)v11 addObjectsFromArray:fetchedObjects];
    }

    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [px_deprecated_appPhotoLibrary px_registerChangeObserver:v5];
  }

  return v5;
}

+ (id)photosGraphPeopleSuggestionsDataSourceManagerWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] _initWithAssetCollection:collectionCopy];

  return v4;
}

+ (id)mockDataSourceManagerFromPeopleInPhotosInAssetCollection:(id)collection
{
  v3 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:collection options:0];
  v4 = [[PXPhotoKitPeopleSuggestionsDataSourceManager alloc] initWithPeopleFetchResult:v3];

  return v4;
}

+ (id)personsForClient:(unint64_t)client fetchOptions:(id)options
{
  optionsCopy = options;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__112266;
  v10[4] = __Block_byref_object_dispose__112267;
  v10[5] = 0;
  sharedWorkerQueue = [self sharedWorkerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXPhotoKitPeopleSuggestionsDataSourceManager_personsForClient_fetchOptions___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = v10;
  block[6] = client;
  block[4] = optionsCopy;
  dispatch_async(sharedWorkerQueue, block);

  [self sharedWorkerQueue];
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
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  if (!PFOSVariantHasInternalUI())
  {
    goto LABEL_10;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults stringForKey:@"PXPeopleSuggestionsDataSourceManagerPersonUUID"];
  if (!v6)
  {
    v12 = +[PXSharedLibrarySettings sharedInstance];
    mockPersonSuggestionForSetupAssistant = [v12 mockPersonSuggestionForSetupAssistant];

    if (mockPersonSuggestionForSetupAssistant)
    {
      [librarySpecificFetchOptions setFetchLimit:3];
      v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(verifiedType = %ld) || (verifiedType = %ld)", 1, 2];
      [librarySpecificFetchOptions setPredicate:v14];

      v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:0];
      v22 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      [librarySpecificFetchOptions setSortDescriptors:v16];

      v11 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        firstObject = [v11 firstObject];
        uuid = [firstObject uuid];
        *buf = 138412290;
        v25 = uuid;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "Using mock people suggestion: %@", buf, 0xCu);
      }

      goto LABEL_11;
    }

LABEL_10:
    v11 = [self personsForClient:4 fetchOptions:librarySpecificFetchOptions];
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
  v11 = [v9 fetchPersonsWithLocalIdentifiers:v10 options:librarySpecificFetchOptions];

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