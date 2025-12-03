@interface PXFetchResultBasedMemoriesDataSourceManager
- (PHFetchResult)memories;
- (PXFetchResultBasedMemoriesDataSourceManager)initWithMemoriesFetchResult:(id)result;
- (id)_createMemoriesDataSourceFromCurrentState;
- (id)createInitialDataSource;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result;
- (void)_workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd:(BOOL)end;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)startLoadingIfNeeded;
@end

@implementation PXFetchResultBasedMemoriesDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v25[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  _state = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v9 = [infoCopy objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == _state)
  {
    v10 = [infoCopy objectForKeyedSubscript:@"preparedState"];
    v11 = [infoCopy objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v23 = 0;
    v10 = [_state stateUpdatedWithChange:queueCopy outMemoriesChangeDetails:&v23];
    v11 = v23;
  }

  v12 = v11;
  if (v10 != _state)
  {
    [(PXFetchResultBasedMemoriesDataSourceManager *)self _setState:v10];
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    _createMemoriesDataSourceFromCurrentState = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
    v20 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    v22 = queueCopy;
    identifier2 = [_createMemoriesDataSourceFromCurrentState identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v24 = &unk_1F190D960;
    v25[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = v17 = infoCopy;
    v19 = [v20 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v18 subitemChangeDetailsByItemBySection:0];

    infoCopy = v17;
    [(PXSectionedDataSourceManager *)self setDataSource:_createMemoriesDataSourceFromCurrentState changeDetails:v19];

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
  v16 = __Block_byref_object_copy__204208;
  v17 = __Block_byref_object_dispose__204209;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXFetchResultBasedMemoriesDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v5 = v14[5];
  v11 = 0;
  v6 = [v5 stateUpdatedWithChange:changeCopy outMemoriesChangeDetails:&v11];
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

void __76__PXFetchResultBasedMemoriesDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _state];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_createMemoriesDataSourceFromCurrentState
{
  v3 = [PXStateBasedMemoriesDataSource alloc];
  _state = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v5 = [(PXStateBasedMemoriesDataSource *)v3 initWithState:_state];

  return v5;
}

- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result
{
  v44[1] = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  detailsCopy = details;
  resultCopy = result;
  _state = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  infosByMemory = [_state infosByMemory];
  v13 = [infosByMemory mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __113__PXFetchResultBasedMemoriesDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke;
  v41[3] = &unk_1E7743F70;
  v14 = v13;
  v42 = v14;
  [batchCopy enumerateKeysAndObjectsUsingBlock:v41];
  v15 = [PXMemoriesDataSourceState alloc];
  memories = [_state memories];
  v17 = [(PXMemoriesDataSourceState *)v15 initWithMemories:memories infosByMemory:v14];

  [(PXFetchResultBasedMemoriesDataSourceManager *)self _setState:v17];
  if (self->_hasCreatedInitialDataSource)
  {
    v35 = v17;
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    _createMemoriesDataSourceFromCurrentState = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
    memories2 = [(PXFetchResultBasedMemoriesDataSourceManager *)self memories];

    v36 = resultCopy;
    v37 = detailsCopy;
    v38 = batchCopy;
    v40 = dataSource;
    if (memories2 == resultCopy)
    {
      v28 = detailsCopy;
    }

    else
    {
      allKeys = [batchCopy allKeys];
      v21 = MEMORY[0x1E6978848];
      _state2 = [dataSource _state];
      memories3 = [_state2 memories];
      _state3 = [_createMemoriesDataSourceFromCurrentState _state];
      memories4 = [_state3 memories];
      v26 = allKeys;
      v27 = [v21 changeDetailsFromFetchResult:memories3 toFetchResult:memories4 changedObjects:allKeys];

      dataSource = v40;
      v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v27];
    }

    v29 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [_createMemoriesDataSourceFromCurrentState identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = &unk_1F190D960;
    v44[0] = v28;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = [v29 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v33 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:_createMemoriesDataSourceFromCurrentState changeDetails:v34];
    detailsCopy = v37;
    batchCopy = v38;
    v17 = v35;
    resultCopy = v36;
  }

  self->_isWorking = 0;
  [(PXFetchResultBasedMemoriesDataSourceManager *)self startLoadingIfNeeded];
}

void __113__PXFetchResultBasedMemoriesDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd:(BOOL)end
{
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _remainingMemoriesToFetch = [(PXFetchResultBasedMemoriesDataSourceManager *)self _remainingMemoriesToFetch];
  v32 = _remainingMemoriesToFetch;
  if (end)
  {
    [_remainingMemoriesToFetch reverseObjectEnumerator];
  }

  else
  {
    [_remainingMemoriesToFetch objectEnumerator];
  }
  v7 = ;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v44 + 1) + 8 * v14);
      v16 = [PXMemoryInfo memoryInfoWithMemory:v15];
      [dictionary setObject:v16 forKeyedSubscript:v15];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v18 = v17 - v9;

      if (v18 > 0.25 || v18 < 0.0)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if ([dictionary count])
  {
    allKeys = [dictionary allKeys];
    [v33 removeObjectsInArray:allKeys];
  }

  if (![v33 count])
  {
    [(PXFetchResultBasedMemoriesDataSourceManager *)self _setRemainingMemoriesToFetch:0];
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  memories = [(PXFetchResultBasedMemoriesDataSourceManager *)self memories];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = dictionary;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [memories indexOfObject:*(*(&v40 + 1) + 8 * i)];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [indexSet addIndex:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  v28 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:indexSet];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXFetchResultBasedMemoriesDataSourceManager__workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v38, &location);
  v35 = v22;
  v36 = v28;
  v37 = memories;
  v29 = memories;
  v30 = v28;
  v31 = v22;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __102__PXFetchResultBasedMemoriesDataSourceManager__workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleFinishedFetchingBatch:*(a1 + 32) preparedChangeDetails:*(a1 + 40) forFetchResult:*(a1 + 48)];
}

- (void)startLoadingIfNeeded
{
  if (!self->_isWorking)
  {
    _remainingMemoriesToFetch = [(PXFetchResultBasedMemoriesDataSourceManager *)self _remainingMemoriesToFetch];

    if (_remainingMemoriesToFetch)
    {
      self->_isWorking = 1;
      loadFromEnd = [(PXFetchResultBasedMemoriesDataSourceManager *)self loadFromEnd];
      objc_initWeak(&location, self);
      workerQueue = self->_workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PXFetchResultBasedMemoriesDataSourceManager_startLoadingIfNeeded__block_invoke;
      block[3] = &unk_1E774A170;
      objc_copyWeak(&v7, &location);
      v8 = loadFromEnd;
      dispatch_async(workerQueue, block);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __67__PXFetchResultBasedMemoriesDataSourceManager_startLoadingIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd:*(a1 + 40)];
}

- (id)createInitialDataSource
{
  _createMemoriesDataSourceFromCurrentState = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
  self->_hasCreatedInitialDataSource = 1;
  [(PXFetchResultBasedMemoriesDataSourceManager *)self startLoadingIfNeeded];

  return _createMemoriesDataSourceFromCurrentState;
}

- (PHFetchResult)memories
{
  _state = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  memories = [_state memories];

  return memories;
}

- (PXFetchResultBasedMemoriesDataSourceManager)initWithMemoriesFetchResult:(id)result
{
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = PXFetchResultBasedMemoriesDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v19 init];
  if (v6)
  {
    if (!resultCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXMemoriesDataSourceManager.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"memories != nil"}];
    }

    v7 = [PXMemoriesDataSourceState alloc];
    v8 = [(PXMemoriesDataSourceState *)v7 initWithMemories:resultCopy infosByMemory:MEMORY[0x1E695E0F8]];
    state = v6->__state;
    v6->__state = v8;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    remainingMemoriesToFetch = v6->__remainingMemoriesToFetch;
    v6->__remainingMemoriesToFetch = orderedSet;

    v12 = v6->__remainingMemoriesToFetch;
    fetchedObjects = [resultCopy fetchedObjects];
    [(NSMutableOrderedSet *)v12 addObjectsFromArray:fetchedObjects];

    v14 = dispatch_queue_create("com.apple.photos.memoriesDataSource-workerQueue", 0);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v14;

    photoLibrary = [resultCopy photoLibrary];
    [photoLibrary px_registerChangeObserver:v6];
  }

  return v6;
}

@end