@interface PXSharedLibrarySharingSuggestionsDataSourceManager
+ (id)sharedQueue;
+ (void)loadAsyncDataSourcesImmediately;
- (PXSharedLibrarySharingSuggestionsDataSourceManager)init;
- (PXSharedLibrarySharingSuggestionsDataSourceManager)initWithPhotoLibrary:(id)a3;
- (id)_createDataSourceWithSharingSuggestions:(id)a3;
- (id)_fetchInitialDataSource;
- (id)_promiseForContainer:(id)a3;
- (id)createInitialDataSource;
- (id)dataSource:(id)a3 promiseForContainer:(id)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_handleInitialDataSourceLoaded:(id)a3;
- (void)_invalidatePromisesUnreadState;
- (void)_publishChangesForForContainers:(id)a3;
- (void)_queue_fulfillRemainingPromises;
- (void)_scheduleFulfillRemainingPromises;
- (void)_setPromise:(id)a3 forContainer:(id)a4;
- (void)_updatePromisesUnreadState;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)setConsiderNewAfterDate:(id)a3;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
@end

@implementation PXSharedLibrarySharingSuggestionsDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self currentDataSource];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 sharingSuggestions];
    v9 = [v5 changeDetailsForFetchResult:v8];

    if (v9)
    {
      v10 = [v9 fetchResultAfterChanges];
      v11 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _createDataSourceWithSharingSuggestions:v10];

      v12 = [v7 containers];
      v13 = [v11 containers];
      v14 = [v9 changedObjects];
      v21 = [off_1E7721450 changeDetailsFromArray:v12 toArray:v13 changedObjects:v14 objectComparator:&__block_literal_global_241];

      v15 = [off_1E77218B0 alloc];
      v16 = [v7 identifier];
      v17 = [v11 identifier];
      v18 = [off_1E7721450 changeDetailsWithNoChanges];
      v22 = &unk_1F190BDA0;
      v23[0] = v21;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v20 = [v15 initWithFromDataSourceIdentifier:v16 toDataSourceIdentifier:v17 sectionChanges:v18 itemChangeDetailsBySection:v19 subitemChangeDetailsByItemBySection:0];

      [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self setDataSource:v11 changeDetails:v20];
    }
  }
}

uint64_t __104__PXSharedLibrarySharingSuggestionsDataSourceManager_photoLibraryDidChangeOnMainQueue_withPreparedInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 px_sl_identifier];
  v7 = [v5 px_sl_identifier];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v6 isEqualToString:v7];
    if (v4 - v5 >= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v4 - v5) >> 63;
    }

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  return v10;
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__90385;
  v18 = __Block_byref_object_dispose__90386;
  v19 = 0;
  lock_promiseByContainer = self->_lock_promiseByContainer;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __83__PXSharedLibrarySharingSuggestionsDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  v11 = &unk_1E7736E60;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [(NSMutableDictionary *)lock_promiseByContainer enumerateKeysAndObjectsUsingBlock:&v8];
  if (v15[5])
  {
    [(NSMutableDictionary *)self->_lock_promiseByContainer removeObjectsForKeys:v8, v9, v10, v11];
  }

  os_unfair_lock_unlock(&self->_lock);

  _Block_object_dispose(&v14, 8);
  return 0;
}

void __83__PXSharedLibrarySharingSuggestionsDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 px_sl_containedSharingSuggestionObjectIDs];
  v4 = [*(a1 + 32) updatedObjectIDs];
  v5 = [v3 intersectsSet:v4];

  if (v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibrarySharingSuggestionsCountsManagerObserverContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:372 description:{@"%@ got unexpected observer context:%p", self, a5}];

    abort();
  }

  v10 = v9;
  if ((v6 & 4) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__PXSharedLibrarySharingSuggestionsDataSourceManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E7736E38;
    v12[4] = self;
    [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self performChanges:v12];
  }
}

void __83__PXSharedLibrarySharingSuggestionsDataSourceManager_observable_didChange_context___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) countsManager];
  v2 = [v3 mostRecentUserSeenAddedDate];
  [*(a1 + 32) setConsiderNewAfterDate:v2];
}

- (id)dataSource:(id)a3 promiseForContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self currentDataSource];

  if (v8 == v7)
  {
  }

  else
  {
    hasLoadedInitially = self->_hasLoadedInitially;

    if (hasLoadedInitially)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _promiseForContainer:v6];
LABEL_6:

  return v10;
}

- (void)_updatePromisesUnreadState
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self considerNewAfterDate];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 120;
  os_unfair_lock_lock(&self->_lock);
  lock_promiseByContainer = self->_lock_promiseByContainer;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__PXSharedLibrarySharingSuggestionsDataSourceManager__updatePromisesUnreadState__block_invoke;
  v23[3] = &unk_1E7736E10;
  v18 = v3;
  v24 = v18;
  v7 = v4;
  v25 = v7;
  v8 = v5;
  v26 = v8;
  [(NSMutableDictionary *)lock_promiseByContainer enumerateKeysAndObjectsUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = self->_lock_promiseByContainer;
        v16 = [v14 container];
        [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock((self + v17));
  if ([v8 count])
  {
    [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _publishChangesForForContainers:v8];
  }
}

void __80__PXSharedLibrarySharingSuggestionsDataSourceManager__updatePromisesUnreadState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 copyIfNeededWithUpdatedConsiderNewAfterDate:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    [*(a1 + 48) addObject:v6];
  }
}

- (void)_invalidatePromisesUnreadState
{
  v2 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePromisesUnreadState];
}

- (void)_publishChangesForForContainers:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self currentDataSource];
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = [v6 containers];
        v14 = [v13 indexOfObject:v12];

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PXSharedLibrarySharingSuggestionsDataSourceManager *)v5 _setPromise:0 forContainer:v12];
        }

        else
        {
          [v7 addIndex:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  v15 = v7;
  if ([v7 count])
  {
    v16 = [v6 sharingSuggestions];
    v17 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)v5 _createDataSourceWithSharingSuggestions:v16];

    v24 = [off_1E77218B0 alloc];
    v18 = [v6 identifier];
    v19 = [v17 identifier];
    v20 = [off_1E7721450 changeDetailsWithNoChanges];
    v30 = &unk_1F190BDA0;
    v15 = v7;
    v21 = [off_1E7721450 changeDetailsWithChangedIndexes:v7];
    v31 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v23 = [v24 initWithFromDataSourceIdentifier:v18 toDataSourceIdentifier:v19 sectionChanges:v20 itemChangeDetailsBySection:v22 subitemChangeDetailsByItemBySection:0];

    [(PXSharedLibrarySharingSuggestionsDataSourceManager *)v5 setDataSource:v17 changeDetails:v23];
  }
}

- (void)_queue_fulfillRemainingPromises
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_promiseByContainer copy];
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke;
  aBlock[3] = &unk_1E774B248;
  v5 = v4;
  v13 = v5;
  objc_copyWeak(&v14, &location);
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke_3;
  v9[3] = &unk_1E7736DE8;
  v9[4] = self;
  v7 = v5;
  v10 = v7;
  v8 = v6;
  v11 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  v8[2](v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) copy];
    [*(a1 + 32) removeAllObjects];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke_2;
    v4[3] = &unk_1E774B248;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = v2;
    v3 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v6);
  }
}

void __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if ([a3 isPlaceholder])
  {
    v5 = [PXSharedLibrarySharingSuggestionPromise alloc];
    v6 = [*(a1 + 32) considerNewAfterDate];
    v7 = [(PXSharedLibrarySharingSuggestionPromise *)v5 initWithContainer:v8 considerNewAfterDate:v6 lightweightPlaceholder:0];

    [*(a1 + 32) _setPromise:v7 forContainer:v8];
    [*(a1 + 40) addObject:v8];
    if ([*(a1 + 40) count] >= 2)
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __85__PXSharedLibrarySharingSuggestionsDataSourceManager__queue_fulfillRemainingPromises__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishChangesForForContainers:*(a1 + 32)];
}

- (void)_scheduleFulfillRemainingPromises
{
  objc_initWeak(&location, self);
  v3 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PXSharedLibrarySharingSuggestionsDataSourceManager__scheduleFulfillRemainingPromises__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __87__PXSharedLibrarySharingSuggestionsDataSourceManager__scheduleFulfillRemainingPromises__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_fulfillRemainingPromises];
}

- (void)_setPromise:(id)a3 forContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_promiseByContainer setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_promiseForContainer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_promiseByContainer objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    v12 = [PXSharedLibrarySharingSuggestionPromise alloc];
    v13 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self considerNewAfterDate];
    v14 = [(PXSharedLibrarySharingSuggestionPromise *)v12 initWithContainer:v4 considerNewAfterDate:v13 lightweightPlaceholder:1];

    [(NSMutableDictionary *)self->_lock_promiseByContainer setObject:v14 forKeyedSubscript:v4];
    [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _scheduleFulfillRemainingPromises];
    v6 = v14;
    goto LABEL_6;
  }

  v7 = [v5 container];
  v8 = [v7 px_sl_containedSharingSuggestionObjectIDs];
  v9 = [v4 px_sl_containedSharingSuggestionObjectIDs];
  v10 = v9;
  if (v8 != v9)
  {
    v11 = [v8 isEqual:v9];

    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_createDataSourceWithSharingSuggestions:(id)a3
{
  v4 = a3;
  v5 = [PXSharedLibrarySharingSuggestionsDataSource alloc];
  v6 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self aggregateBeforeDate];
  v7 = [(PXSharedLibrarySharingSuggestionsDataSource *)v5 initWithSharingSuggestions:v4 aggregateBeforeDate:v6];

  [(PXSharedLibrarySharingSuggestionsDataSource *)v7 setDelegate:self];

  return v7;
}

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PXSharedLibrarySharingSuggestionsDataSourceManager_setDataSource_changeDetails___block_invoke;
  v10[3] = &unk_1E7736DC0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self performChanges:v10];
}

id __82__PXSharedLibrarySharingSuggestionsDataSourceManager_setDataSource_changeDetails___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourceIfExists];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) dataSourceIfExists];
    v5 = [v4 containsAnyItems];
    v6 = [*(a1 + 40) containsAnyItems];

    if (v5 != v6)
    {
      [*(a1 + 32) signalChange:2];
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10.receiver = *(a1 + 32);
  v10.super_class = PXSharedLibrarySharingSuggestionsDataSourceManager;
  return objc_msgSendSuper2(&v10, sel_setDataSource_changeDetails_, v7, v8);
}

- (void)_handleInitialDataSourceLoaded:(id)a3
{
  self->_isPerformingInitialLoad = 0;
  self->_hasLoadedInitially = 1;
  [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self setDataSource:a3 changeDetails:0];
}

- (id)createInitialDataSource
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(PXSharedLibrarySharingSuggestionsDataSourceManager *)self isPerformingInitialLoad])
  {
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2048;
      v19 = self;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p>: Creating initial data source asynchronously", buf, 0x16u);
    }

    v4 = [MEMORY[0x1E695DF00] now];
    self->_isPerformingInitialLoad = 1;
    objc_initWeak(buf, self);
    v5 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXSharedLibrarySharingSuggestionsDataSourceManager_createInitialDataSource__block_invoke;
    block[3] = &unk_1E774B708;
    objc_copyWeak(&v15, buf);
    block[4] = self;
    v14 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v7 = objc_alloc(MEMORY[0x1E69788E0]);
  v8 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self photoLibrary];
  v9 = [MEMORY[0x1E69789F0] fetchType];
  v10 = [v7 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:v8 fetchType:v9 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v11 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _createDataSourceWithSharingSuggestions:v10];

  return v11;
}

void __77__PXSharedLibrarySharingSuggestionsDataSourceManager_createInitialDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = [v3 _fetchInitialDataSource];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__PXSharedLibrarySharingSuggestionsDataSourceManager_createInitialDataSource__block_invoke_2;
    v7[3] = &unk_1E7748228;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    v6 = v4;
    objc_copyWeak(&v10, (a1 + 48));
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(&v10);
  }
}

void __77__PXSharedLibrarySharingSuggestionsDataSourceManager_createInitialDataSource__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) totalNumberOfItems];
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:*(a1 + 48)];
    v9 = 138544130;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p>: Initial data source created async with %lu items. Took %.1fs", &v9, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleInitialDataSourceLoaded:*(a1 + 40)];
}

- (id)_fetchInitialDataSource
{
  v3 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E69789F0] fetchSharedLibrarySharingSuggestionsWithOptions:v4];
  v6 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _createDataSourceWithSharingSuggestions:v5];

  return v6;
}

- (void)setConsiderNewAfterDate:(id)a3
{
  v8 = a3;
  v5 = self->_considerNewAfterDate;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_considerNewAfterDate, a3);
      [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self _invalidatePromisesUnreadState];
    }
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXSharedLibrarySharingSuggestionsDataSourceManager;
  [(PXSharedLibrarySharingSuggestionsDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXSharedLibrarySharingSuggestionsDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSharedLibrarySharingSuggestionsDataSourceManager;
  [(PXSharedLibrarySharingSuggestionsDataSourceManager *)&v3 performChanges:a3];
}

- (PXSharedLibrarySharingSuggestionsDataSourceManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PXSharedLibrarySharingSuggestionsDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_promiseByContainer = v7->_lock_promiseByContainer;
    v7->_lock_promiseByContainer = v8;

    v10 = +[PXSharedLibrarySharingSuggestionsDataSourceManager sharedQueue];
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-15552000.0];
    aggregateBeforeDate = v7->_aggregateBeforeDate;
    v7->_aggregateBeforeDate = v12;

    v14 = [v5 px_sharedLibrarySharingSuggestionsCountsManager];
    countsManager = v7->_countsManager;
    v7->_countsManager = v14;

    [(PXSharedLibrarySharingSuggestionsCountsManager *)v7->_countsManager registerChangeObserver:v7 context:PXSharedLibrarySharingSuggestionsCountsManagerObserverContext];
    v16 = [(PXSharedLibrarySharingSuggestionsCountsManager *)v7->_countsManager mostRecentUserSeenAddedDate];
    considerNewAfterDate = v7->_considerNewAfterDate;
    v7->_considerNewAfterDate = v16;

    v18 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v18;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updatePromisesUnreadState];
    objc_storeStrong(&v7->_photoLibrary, a3);
    [v5 px_registerChangeObserver:v7];
  }

  return v7;
}

- (PXSharedLibrarySharingSuggestionsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:141 description:{@"%s is not available as initializer", "-[PXSharedLibrarySharingSuggestionsDataSourceManager init]"}];

  abort();
}

+ (void)loadAsyncDataSourcesImmediately
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@>: Loading Async Data Sources immediately", &v7, 0xCu);
  }

  v4 = [a1 sharedQueue];
  dispatch_activate(v4);

  v5 = [a1 sharedQueue];
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_201_90592);
  dispatch_async(v5, v6);
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken_90594 != -1)
  {
    dispatch_once(&sharedQueue_onceToken_90594, &__block_literal_global_90595);
  }

  v3 = sharedQueue_sharedQueue_90596;

  return v3;
}

void __65__PXSharedLibrarySharingSuggestionsDataSourceManager_sharedQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.sharedLibrary.sharing-suggestions-fetch-queue", attr);
  v3 = sharedQueue_sharedQueue_90596;
  sharedQueue_sharedQueue_90596 = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_199_90600];
}

@end