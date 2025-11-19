@interface PXFetchResultBasedMemoriesDataSourceManager
- (PHFetchResult)memories;
- (PXFetchResultBasedMemoriesDataSourceManager)initWithMemoriesFetchResult:(id)a3;
- (id)_createMemoriesDataSourceFromCurrentState;
- (id)createInitialDataSource;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5;
- (void)_workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd:(BOOL)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)startLoadingIfNeeded;
@end

@implementation PXFetchResultBasedMemoriesDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v9 = [v7 objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == v8)
  {
    v10 = [v7 objectForKeyedSubscript:@"preparedState"];
    v11 = [v7 objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v23 = 0;
    v10 = [v8 stateUpdatedWithChange:v6 outMemoriesChangeDetails:&v23];
    v11 = v23;
  }

  v12 = v11;
  if (v10 != v8)
  {
    [(PXFetchResultBasedMemoriesDataSourceManager *)self _setState:v10];
    v21 = [(PXSectionedDataSourceManager *)self dataSource];
    v13 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
    v20 = [off_1E77218B0 alloc];
    v14 = [v21 identifier];
    v22 = v6;
    v15 = [v13 identifier];
    v16 = [off_1E7721450 changeDetailsWithNoChanges];
    v24 = &unk_1F190D960;
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
  v6 = [v5 stateUpdatedWithChange:v4 outMemoriesChangeDetails:&v11];
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
  v4 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v5 = [(PXStateBasedMemoriesDataSource *)v3 initWithState:v4];

  return v5;
}

- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v12 = [v11 infosByMemory];
  v13 = [v12 mutableCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __113__PXFetchResultBasedMemoriesDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult___block_invoke;
  v41[3] = &unk_1E7743F70;
  v14 = v13;
  v42 = v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v41];
  v15 = [PXMemoriesDataSourceState alloc];
  v16 = [v11 memories];
  v17 = [(PXMemoriesDataSourceState *)v15 initWithMemories:v16 infosByMemory:v14];

  [(PXFetchResultBasedMemoriesDataSourceManager *)self _setState:v17];
  if (self->_hasCreatedInitialDataSource)
  {
    v35 = v17;
    v18 = [(PXSectionedDataSourceManager *)self dataSource];
    v39 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
    v19 = [(PXFetchResultBasedMemoriesDataSourceManager *)self memories];

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
      v23 = [v22 memories];
      v24 = [v39 _state];
      v25 = [v24 memories];
      v26 = v20;
      v27 = [v21 changeDetailsFromFetchResult:v23 toFetchResult:v25 changedObjects:v20];

      v18 = v40;
      v28 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v27];
    }

    v29 = [off_1E77218B0 alloc];
    v30 = [v18 identifier];
    v31 = [v39 identifier];
    v32 = [off_1E7721450 changeDetailsWithNoChanges];
    v43 = &unk_1F190D960;
    v44[0] = v28;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = [v29 initWithFromDataSourceIdentifier:v30 toDataSourceIdentifier:v31 sectionChanges:v32 itemChangeDetailsBySection:v33 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v39 changeDetails:v34];
    v9 = v37;
    v8 = v38;
    v17 = v35;
    v10 = v36;
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

- (void)_workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd:(BOOL)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _remainingMemoriesToFetch];
  v32 = v6;
  if (a3)
  {
    [v6 reverseObjectEnumerator];
  }

  else
  {
    [v6 objectEnumerator];
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
      [v5 setObject:v16 forKeyedSubscript:v15];
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

  if ([v5 count])
  {
    v19 = [v5 allKeys];
    [v33 removeObjectsInArray:v19];
  }

  if (![v33 count])
  {
    [(PXFetchResultBasedMemoriesDataSourceManager *)self _setRemainingMemoriesToFetch:0];
  }

  v20 = [MEMORY[0x1E696AD50] indexSet];
  v21 = [(PXFetchResultBasedMemoriesDataSourceManager *)self memories];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v5;
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

        v27 = [v21 indexOfObject:*(*(&v40 + 1) + 8 * i)];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v20 addIndex:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  v28 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v20];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PXFetchResultBasedMemoriesDataSourceManager__workerQueue_fetchRemainingMemoriesInBatchesFromTheEnd___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v38, &location);
  v35 = v22;
  v36 = v28;
  v37 = v21;
  v29 = v21;
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
    v3 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _remainingMemoriesToFetch];

    if (v3)
    {
      self->_isWorking = 1;
      v4 = [(PXFetchResultBasedMemoriesDataSourceManager *)self loadFromEnd];
      objc_initWeak(&location, self);
      workerQueue = self->_workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PXFetchResultBasedMemoriesDataSourceManager_startLoadingIfNeeded__block_invoke;
      block[3] = &unk_1E774A170;
      objc_copyWeak(&v7, &location);
      v8 = v4;
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
  v3 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _createMemoriesDataSourceFromCurrentState];
  self->_hasCreatedInitialDataSource = 1;
  [(PXFetchResultBasedMemoriesDataSourceManager *)self startLoadingIfNeeded];

  return v3;
}

- (PHFetchResult)memories
{
  v2 = [(PXFetchResultBasedMemoriesDataSourceManager *)self _state];
  v3 = [v2 memories];

  return v3;
}

- (PXFetchResultBasedMemoriesDataSourceManager)initWithMemoriesFetchResult:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PXFetchResultBasedMemoriesDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v19 init];
  if (v6)
  {
    if (!v5)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v6 file:@"PXMemoriesDataSourceManager.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"memories != nil"}];
    }

    v7 = [PXMemoriesDataSourceState alloc];
    v8 = [(PXMemoriesDataSourceState *)v7 initWithMemories:v5 infosByMemory:MEMORY[0x1E695E0F8]];
    state = v6->__state;
    v6->__state = v8;

    v10 = [MEMORY[0x1E695DFA0] orderedSet];
    remainingMemoriesToFetch = v6->__remainingMemoriesToFetch;
    v6->__remainingMemoriesToFetch = v10;

    v12 = v6->__remainingMemoriesToFetch;
    v13 = [v5 fetchedObjects];
    [(NSMutableOrderedSet *)v12 addObjectsFromArray:v13];

    v14 = dispatch_queue_create("com.apple.photos.memoriesDataSource-workerQueue", 0);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v14;

    v16 = [v5 photoLibrary];
    [v16 px_registerChangeObserver:v6];
  }

  return v6;
}

@end