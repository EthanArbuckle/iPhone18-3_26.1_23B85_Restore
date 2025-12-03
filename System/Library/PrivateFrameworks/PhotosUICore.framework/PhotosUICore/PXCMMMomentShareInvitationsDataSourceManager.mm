@interface PXCMMMomentShareInvitationsDataSourceManager
+ (id)mostRecentCreationDate;
+ (id)mostRecentCreationDateForPhotoLibrary:(id)library;
- (PXCMMMomentShareInvitationsDataSourceManager)init;
- (PXCMMMomentShareInvitationsDataSourceManager)initWithPhotoLibrary:(id)library fetchLimit:(int64_t)limit;
- (id)createInitialDataSource;
- (id)mediaProvider;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result changedObjects:(id)objects;
- (void)_startLoadingIfNeeded;
- (void)_workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares:(id)shares;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)setFilter:(int64_t)filter;
@end

@implementation PXCMMMomentShareInvitationsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v26[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  v8 = self->_state;
  v9 = [infoCopy objectForKeyedSubscript:@"preparedForCurrentState"];

  if (v9 == v8)
  {
    v10 = [infoCopy objectForKeyedSubscript:@"preparedState"];
    v11 = [infoCopy objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v24 = 0;
    v10 = [(PXCMMMomentShareInvitationsDataSourceState *)v8 stateUpdatedWithChange:queueCopy changeDetails:&v24];
    v11 = v24;
  }

  v12 = v11;
  if (v10 != v8)
  {
    objc_storeStrong(&self->_state, v10);
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v13 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    v21 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXCMMMomentShareInvitationsDataSource *)v13 identifier];
    [off_1E7721450 changeDetailsWithNoChanges];
    v16 = v23 = queueCopy;
    v25 = &unk_1F1909AD8;
    v26[0] = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v17 = v12;
    v19 = v18 = infoCopy;
    v20 = [v21 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v16 itemChangeDetailsBySection:v19 subitemChangeDetailsByItemBySection:0];

    infoCopy = v18;
    v12 = v17;

    queueCopy = v23;
    [(PXSectionedDataSourceManager *)self setDataSource:v13 changeDetails:v20];
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v20[3] = *MEMORY[0x1E69E9840];
  changeCopy = change;
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

- (void)_handleFinishedFetchingBatch:(id)batch preparedChangeDetails:(id)details forFetchResult:(id)result changedObjects:(id)objects
{
  v45[1] = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  resultCopy = result;
  objectsCopy = objects;
  v13 = self->_state;
  batchCopy = batch;
  invitationsByMomentShareObjectID = [(PXCMMMomentShareInvitationsDataSourceState *)v13 invitationsByMomentShareObjectID];
  v16 = [invitationsByMomentShareObjectID mutableCopy];

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __129__PXCMMMomentShareInvitationsDataSourceManager__handleFinishedFetchingBatch_preparedChangeDetails_forFetchResult_changedObjects___block_invoke;
  v42[3] = &unk_1E772E898;
  v17 = v16;
  v43 = v17;
  [batchCopy enumerateKeysAndObjectsUsingBlock:v42];

  v18 = [PXCMMMomentShareInvitationsDataSourceState alloc];
  momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)v13 momentShares];
  v20 = [(PXCMMMomentShareInvitationsDataSourceState *)v18 initWithMomentShares:momentShares invitationsByMomentShareObjectID:v17];

  objc_storeStrong(&self->_state, v20);
  if (self->_hasCreatedInitialDataSource)
  {
    v37 = v13;
    v41 = objectsCopy;
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v22 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    momentShares2 = [(PXCMMMomentShareInvitationsDataSourceState *)self->_state momentShares];

    v38 = resultCopy;
    v39 = detailsCopy;
    v40 = dataSource;
    if (momentShares2 == resultCopy)
    {
      v30 = detailsCopy;
    }

    else
    {
      v24 = MEMORY[0x1E6978848];
      state = [dataSource state];
      momentShares3 = [state momentShares];
      state2 = [(PXCMMMomentShareInvitationsDataSource *)v22 state];
      momentShares4 = [state2 momentShares];
      v29 = [v24 changeDetailsFromFetchResult:momentShares3 toFetchResult:momentShares4 changedObjects:v41];

      dataSource = v40;
      v30 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v29];
    }

    v31 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXCMMMomentShareInvitationsDataSource *)v22 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v44 = &unk_1F1909AD8;
    v45[0] = v30;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v36 = [v31 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v35 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v22 changeDetails:v36];
    resultCopy = v38;
    detailsCopy = v39;
    objectsCopy = v41;
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

- (void)_workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares:(id)shares
{
  v62 = *MEMORY[0x1E69E9840];
  sharesCopy = shares;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
      fetchType = [MEMORY[0x1E6978930] fetchType];
      v17 = [v13 initWithOids:v14 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

      firstObject = [v17 firstObject];
      v19 = [PXCMMMomentShareInvitation invitationWithMomentShare:firstObject];

      [dictionary setObject:v19 forKeyedSubscript:v12];
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

  if ([dictionary count])
  {
    remainingMomentShareObjectIDsToFetch = val->_remainingMomentShareObjectIDsToFetch;
    allKeys = [dictionary allKeys];
    [(NSMutableOrderedSet *)remainingMomentShareObjectIDsToFetch removeObjectsInArray:allKeys];
  }

  if (![(NSMutableOrderedSet *)val->_remainingMomentShareObjectIDsToFetch count])
  {
    v24 = val->_remainingMomentShareObjectIDsToFetch;
    val->_remainingMomentShareObjectIDsToFetch = 0;
  }

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  array = [MEMORY[0x1E695DF70] array];
  fetchedObjectIDs = [sharesCopy fetchedObjectIDs];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = dictionary;
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
        v34 = [fetchedObjectIDs indexOfObject:v33];
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [indexSet addIndex:v34];
          v35 = [v28 objectForKeyedSubscript:v33];
          momentShare = [v35 momentShare];
          [array addObject:momentShare];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v30);
  }

  v37 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:indexSet];
  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PXCMMMomentShareInvitationsDataSourceManager__workerQueue_fetchRemainingMomentSharesInBatchesWithMomentShares___block_invoke;
  block[3] = &unk_1E77399C0;
  objc_copyWeak(&v49, &location);
  v45 = v28;
  v46 = v37;
  v47 = sharesCopy;
  v48 = array;
  v38 = array;
  v39 = sharesCopy;
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
      momentShares = [(PXCMMMomentShareInvitationsDataSourceManager *)self momentShares];
      objc_initWeak(&location, self);
      workerQueue = self->_workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PXCMMMomentShareInvitationsDataSourceManager__startLoadingIfNeeded__block_invoke;
      block[3] = &unk_1E774B248;
      objc_copyWeak(&v8, &location);
      v7 = momentShares;
      v5 = momentShares;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"!_hasCreatedInitialDataSource"}];
  }

  v3 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
  self->_hasCreatedInitialDataSource = 1;
  [(PXCMMMomentShareInvitationsDataSourceManager *)self _startLoadingIfNeeded];

  return v3;
}

- (void)setFilter:(int64_t)filter
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (self->_filter != filter)
  {
    self->_filter = filter;
    v4 = _DataSourceState(self->_photoLibrary, filter, self->_fetchLimit);
    state = self->_state;
    self->_state = v4;

    v6 = [[PXCMMMomentShareInvitationsDataSource alloc] initWithState:self->_state];
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v8 = MEMORY[0x1E695DEC8];
    v9 = v6;
    state = [dataSource state];
    momentShares = [state momentShares];
    fetchedObjects = [momentShares fetchedObjects];
    v25 = [v8 arrayWithArray:fetchedObjects];

    v13 = MEMORY[0x1E695DEC8];
    state2 = [(PXCMMMomentShareInvitationsDataSource *)v9 state];
    momentShares2 = [state2 momentShares];
    fetchedObjects2 = [momentShares2 fetchedObjects];
    v17 = [v13 arrayWithArray:fetchedObjects2];

    v18 = [off_1E7721450 changeDetailsFromArray:v25 toArray:v17 changedObjects:MEMORY[0x1E695E0F0] objectComparator:&__block_literal_global_12179];
    v19 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXCMMMomentShareInvitationsDataSource *)v9 identifier];

    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v26 = &unk_1F1909AD8;
    v27[0] = v18;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v24 = [v19 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v23 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v9 changeDetails:v24];
  }
}

- (id)mediaProvider
{
  v2 = objc_alloc_init(PXCMMPreviewUIImageProvider);

  return v2;
}

- (PXCMMMomentShareInvitationsDataSourceManager)initWithPhotoLibrary:(id)library fetchLimit:(int64_t)limit
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v24.receiver = self;
  v24.super_class = PXCMMMomentShareInvitationsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_filter = 0;
    objc_storeStrong(&v9->_photoLibrary, library);
    v10->_fetchLimit = limit;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create("com.apple.photos.PXCMMMomentShareInvitationsDataSourceManager", v12);
    workerQueue = v10->_workerQueue;
    v10->_workerQueue = v13;

    v15 = _DataSourceState(v10->_photoLibrary, v10->_filter, v10->_fetchLimit);
    state = v10->_state;
    v10->_state = v15;

    v17 = MEMORY[0x1E695DFA0];
    momentShares = [(PXCMMMomentShareInvitationsDataSourceState *)v10->_state momentShares];
    fetchedObjectIDs = [momentShares fetchedObjectIDs];
    v20 = [v17 orderedSetWithArray:fetchedObjectIDs];
    remainingMomentShareObjectIDsToFetch = v10->_remainingMomentShareObjectIDsToFetch;
    v10->_remainingMomentShareObjectIDsToFetch = v20;

    [(PHPhotoLibrary *)v10->_photoLibrary px_registerChangeObserver:v10];
  }

  return v10;
}

- (PXCMMMomentShareInvitationsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:88 description:{@"%s is not available as initializer", "-[PXCMMMomentShareInvitationsDataSourceManager init]"}];

  abort();
}

+ (id)mostRecentCreationDateForPhotoLibrary:(id)library
{
  v15[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMMomentShareInvitationsDataSourceManager.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(status != %d && publishState == %d)", 0, 2];
  [librarySpecificFetchOptions setPredicate:v9];

  [librarySpecificFetchOptions setFetchLimit:1];
  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  firstObject = [v10 firstObject];
  creationDate = [firstObject creationDate];

  return creationDate;
}

+ (id)mostRecentCreationDate
{
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v4 = [self mostRecentCreationDateForPhotoLibrary:mEMORY[0x1E69789A8]];

  return v4;
}

@end