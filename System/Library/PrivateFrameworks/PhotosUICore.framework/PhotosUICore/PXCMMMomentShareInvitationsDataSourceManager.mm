@interface PXCMMMomentShareInvitationsDataSourceManager
+ (id)mostRecentCreationDate;
+ (id)mostRecentCreationDateForPhotoLibrary:(id)a3;
- (PXCMMMomentShareInvitationsDataSourceManager)init;
- (PXCMMMomentShareInvitationsDataSourceManager)initWithPhotoLibrary:(id)a3 fetchLimit:(int64_t)a4;
- (id)createInitialDataSource;
- (id)mediaProvider;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5 changedObjects:(id)a6;
- (void)_startLoadingIfNeeded;
- (void)_workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)setFilter:(int64_t)a3;
@end

@implementation PXCMMMomentShareInvitationsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_state;
  v9 = [v7 objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == v8)
  {
    v10 = [v7 objectForKeyedSubscript:@"preparedState"];
    v11 = [v7 objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v24 = 0;
    v10 = [(PXCMMMomentShareInvitationsDataSourceState *)v8 stateUpdatedWithChange:v6 changeDetails:&v24];
    v11 = v24;
  }

  v12 = v11;
  if (v10 != v8)
  {
    objc_storeStrong(&self->_state, v10);
    v22 = [(PXSectionedDataSourceManager *)self dataSource];
    v13 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    v21 = [off_1E77218B0 alloc];
    v14 = [v22 identifier];
    v15 = [(PXCMMMomentShareInvitationsDataSource *)v13 identifier];
    [off_1E7721450 changeDetailsWithNoChanges];
    v16 = v23 = v6;
    v25 = &unk_1F1909AD8;
    v26[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v17 = v12;
    v19 = v18 = v7;
    v20 = [v21 initWithFromDataSourceIdentifier:v14 toDataSourceIdentifier:v15 sectionChanges:v16 itemChangeDetailsBySection:v19 subitemChangeDetailsByItemBySection:0];

    v7 = v18;
    v12 = v17;

    v6 = v23;
    [(PXSectionedDataSourceManager *)self setDataSource:v13 changeDetails:v20];
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12148;
  v17 = __Block_byref_object_dispose__12149;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXCMMMomentShareInvitationsDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
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

- (void)_handleFinishedFetchingBatch:(id)a3 preparedChangeDetails:(id)a4 forFetchResult:(id)a5 changedObjects:(id)a6
{
  v45[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self->_state;
  v14 = a3;
  v15 = [(PXCMMMomentShareInvitationsDataSourceState *)v13 invitationsByMomentShareObjectID];
  v16 = [v15 mutableCopy];

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __129__PXCMMMomentShareInvitationsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult_changedObjects___block_invoke;
  v42[3] = &unk_1E772E898;
  v17 = v16;
  v43 = v17;
  [v14 enumerateKeysAndObjectsUsingBlock:v42];

  v18 = [PXCMMMomentShareInvitationsDataSourceState alloc];
  v19 = [(PXCMMMomentShareInvitationsDataSourceState *)v13 momentShares];
  v20 = [(PXCMMMomentShareInvitationsDataSourceState *)v18 initWithMomentShares:v19 invitationsByMomentShareObjectID:v17];

  objc_storeStrong(&self->_state, v20);
  if (self->_hasCreatedInitialDataSource)
  {
    v37 = v13;
    v41 = v12;
    v21 = [(PXSectionedDataSourceManager *)self dataSource];
    v22 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    v23 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];

    v38 = v11;
    v39 = v10;
    v40 = v21;
    if (v23 == v11)
    {
      v30 = v10;
    }

    else
    {
      v24 = MEMORY[0x1E6978848];
      v25 = [v21 state];
      v26 = [v25 momentShares];
      v27 = [(PXCMMMomentShareInvitationsDataSource *)v22 state];
      v28 = [v27 momentShares];
      v29 = [v24 changeDetailsFromFetchResult:v26 toFetchResult:v28 changedObjects:v41];

      v21 = v40;
      v30 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v29];
    }

    v31 = [off_1E77218B0 alloc];
    v32 = [v21 identifier];
    v33 = [(PXCMMMomentShareInvitationsDataSource *)v22 identifier];
    v34 = [off_1E7721450 changeDetailsWithNoChanges];
    v44 = &unk_1F1909AD8;
    v45[0] = v30;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v36 = [v31 initWithFromDataSourceIdentifier:v32 toDataSourceIdentifier:v33 sectionChanges:v34 itemChangeDetailsBySection:v35 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v22 changeDetails:v36];
    v11 = v38;
    v10 = v39;
    v12 = v41;
    v13 = v37;
  }

  self->_isLoading = 0;
  [(PXCMMMomentShareInvitationsDataSourceManager *)self _startLoadingIfNeeded];
}

void __129__PXCMMMomentShareInvitationsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult_changedObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  val = self;
  v7 = self->_remainingMomentShareObjectIDsToFetch;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v56 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v55 + 1) + 8 * v11);
      v13 = objc_alloc(MEMORY[0x1E69788E0]);
      v60 = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
      photoLibrary = val->_photoLibrary;
      v16 = [MEMORY[0x1E6978930] fetchType];
      v17 = [v13 initWithOids:v14 photoLibrary:photoLibrary fetchType:v16 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

      v18 = [v17 firstObject];
      v19 = [PXCMMMomentShareInvitation invitationWithMomentShare:v18];

      [v4 setObject:v19 forKeyedSubscript:v12];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v21 = v20 - v6;

      if (v21 > 0.25 || v21 < 0.0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([v4 count])
  {
    remainingMomentShareObjectIDsToFetch = val->_remainingMomentShareObjectIDsToFetch;
    v23 = [v4 allKeys];
    [(NSMutableOrderedSet *)remainingMomentShareObjectIDsToFetch removeObjectsInArray:v23];
  }

  if (![(NSMutableOrderedSet *)val->_remainingMomentShareObjectIDsToFetch count])
  {
    v24 = val->_remainingMomentShareObjectIDsToFetch;
    val->_remainingMomentShareObjectIDsToFetch = 0;
  }

  v25 = [MEMORY[0x1E696AD50] indexSet];
  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [v42 fetchedObjectIDs];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = v4;
  v29 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v51 + 1) + 8 * i);
        v34 = [v27 indexOfObject:v33];
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v25 addIndex:v34];
          v35 = [v28 objectForKeyedSubscript:v33];
          v36 = [v35 momentShare];
          [v26 addObject:v36];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v30);
  }

  v37 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v25];
  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PXCMMMomentShareInvitationsDataSourceManager__workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares___block_invoke;
  block[3] = &unk_1E77399C0;
  objc_copyWeak(&v49, &location);
  v45 = v28;
  v46 = v37;
  v47 = v42;
  v48 = v26;
  v38 = v26;
  v39 = v42;
  v40 = v37;
  v41 = v28;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

void __113__PXCMMMomentShareInvitationsDataSourceManager__workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleFinishedFetchingBatch:*(a1 + 32) preparedChangeDetails:*(a1 + 40) forFetchResult:*(a1 + 48) changedObjects:*(a1 + 56)];
}

- (void)_startLoadingIfNeeded
{
  if (!self->_isLoading)
  {
    if (self->_remainingMomentShareObjectIDsToFetch)
    {
      self->_isLoading = 1;
      v3 = [(PXCMMMomentShareInvitationsDataSourceManager *)self momentShares];
      objc_initWeak(&location, self);
      workerQueue = self->_workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PXCMMMomentShareInvitationsDataSourceManager__startLoadingIfNeeded__block_invoke;
      block[3] = &unk_1E774B248;
      objc_copyWeak(&v8, &location);
      v7 = v3;
      v5 = v3;
      dispatch_async(workerQueue, block);

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __69__PXCMMMomentShareInvitationsDataSourceManager__startLoadingIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares:*(a1 + 32)];
}

- (id)createInitialDataSource
{
  if (self->_hasCreatedInitialDataSource)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"!_hasCreatedInitialDataSource"}];
  }

  v3 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
  self->_hasCreatedInitialDataSource = 1;
  [(PXCMMMomentShareInvitationsDataSourceManager *)self _startLoadingIfNeeded];

  return v3;
}

- (void)setFilter:(int64_t)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (self->_filter != a3)
  {
    self->_filter = a3;
    v4 = _DataSourceState(self->_photoLibrary, a3, self->_fetchLimit);
    state = self->_state;
    self->_state = v4;

    v6 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    v7 = [(PXSectionedDataSourceManager *)self dataSource];
    v8 = MEMORY[0x1E695DEC8];
    v9 = v6;
    v10 = [v7 state];
    v11 = [v10 momentShares];
    v12 = [v11 fetchedObjects];
    v25 = [v8 arrayWithArray:v12];

    v13 = MEMORY[0x1E695DEC8];
    v14 = [(PXCMMMomentShareInvitationsDataSource *)v9 state];
    v15 = [v14 momentShares];
    v16 = [v15 fetchedObjects];
    v17 = [v13 arrayWithArray:v16];

    v18 = [off_1E7721450 changeDetailsFromArray:v25 toArray:v17 changedObjects:MEMORY[0x1E695E0F0] objectComparator:&__block_literal_global_12179];
    v19 = [off_1E77218B0 alloc];
    v20 = [v7 identifier];
    v21 = [(PXCMMMomentShareInvitationsDataSource *)v9 identifier];

    v22 = [off_1E7721450 changeDetailsWithNoChanges];
    v26 = &unk_1F1909AD8;
    v27[0] = v18;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v24 = [v19 initWithFromDataSourceIdentifier:v20 toDataSourceIdentifier:v21 sectionChanges:v22 itemChangeDetailsBySection:v23 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:v24];
  }
}

- (id)mediaProvider
{
  v2 = objc_alloc_init(PXCMMPreviewUIImageProvider);

  return v2;
}

- (PXCMMMomentShareInvitationsDataSourceManager)initWithPhotoLibrary:(id)a3 fetchLimit:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v24.receiver = self;
  v24.super_class = PXCMMMomentShareInvitationsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_filter = 0;
    objc_storeStrong(&v9->_photoLibrary, a3);
    v10->_fetchLimit = a4;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create("com.apple.photos.PXCMMMomentShareInvitationsDataSourceManager", v12);
    workerQueue = v10->_workerQueue;
    v10->_workerQueue = v13;

    v15 = _DataSourceState(v10->_photoLibrary, v10->_filter, v10->_fetchLimit);
    state = v10->_state;
    v10->_state = v15;

    v17 = MEMORY[0x1E695DFA0];
    v18 = [(PXCMMMomentShareInvitationsDataSourceState *)v10->_state momentShares];
    v19 = [v18 fetchedObjectIDs];
    v20 = [v17 orderedSetWithArray:v19];
    remainingMomentShareObjectIDsToFetch = v10->_remainingMomentShareObjectIDsToFetch;
    v10->_remainingMomentShareObjectIDsToFetch = v20;

    [(PHPhotoLibrary *)v10->_photoLibrary px_registerChangeObserver:v10];
  }

  return v10;
}

- (PXCMMMomentShareInvitationsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:88 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitationsDataSourceManager init]"}];

  abort();
}

+ (id)mostRecentCreationDateForPhotoLibrary:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v6 setSortDescriptors:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(status != %d && publishState == %d)", 0, 2];
  [v6 setPredicate:v9];

  [v6 setFetchLimit:1];
  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v11 = [v10 firstObject];
  v12 = [v11 creationDate];

  return v12;
}

+ (id)mostRecentCreationDate
{
  v3 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v4 = [a1 mostRecentCreationDateForPhotoLibrary:v3];

  return v4;
}

@end