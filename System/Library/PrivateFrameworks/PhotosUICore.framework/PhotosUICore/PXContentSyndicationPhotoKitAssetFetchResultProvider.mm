@interface PXContentSyndicationPhotoKitAssetFetchResultProvider
- (PXContentSyndicationPhotoKitAssetFetchResultProvider)init;
- (PXContentSyndicationPhotoKitAssetFetchResultProvider)initWithPhotoLibrary:(id)library fetchResultBlock:(id)block;
- (id)_serialQueue_fetchResultAssetCollection:(id)collection fetchResultBlock:(id)block;
- (id)assetFetchResultForAssetCollection:(id)collection;
- (void)_didChangeFetchResult:(id)result forAssetCollection:(id)collection withChangeObservers:(id)observers;
- (void)_serialQueue_invalidateAllAssetFetchResults;
- (void)_serialQueue_invalidateAssetFetchResultsInAssetCollections:(id)collections;
- (void)_serialQueue_registerChangeObserver:(id)observer forAssetCollection:(id)collection fetchResultBlock:(id)block;
- (void)_serialQueue_unregisterChangeObserver:(id)observer forAssetCollection:(id)collection;
- (void)invalidateAllAssetFetchResults;
- (void)invalidateAssetFetchResultsInAssetCollections:(id)collections;
- (void)photoLibraryDidChange:(id)change;
- (void)registerChangeObserver:(id)observer forAssetCollection:(id)collection;
- (void)unregisterChangeObserver:(id)observer forAssetCollection:(id)collection;
@end

@implementation PXContentSyndicationPhotoKitAssetFetchResultProvider

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

void __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__140670;
  v25 = __Block_byref_object_dispose__140671;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__140670;
  v19[4] = __Block_byref_object_dispose__140671;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__140670;
  v17 = __Block_byref_object_dispose__140671;
  v18 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_2;
  v8[3] = &unk_1E773CF60;
  v8[4] = v3;
  v9 = v2;
  v10 = &v21;
  v11 = v19;
  v12 = &v13;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  if ([v14[5] count])
  {
    [*(*(a1 + 32) + 40) removeObjectsForKeys:v14[5]];
  }

  if ([v22[5] count])
  {
    [*(*(a1 + 32) + 40) addEntriesFromDictionary:v22[5]];
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_226;
    block[3] = &unk_1E773CFB0;
    block[4] = &v21;
    block[5] = v19;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(&v21, 8);
}

void __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v5];
  v8 = [v7 allObjects];

  if ([v8 count])
  {
    v9 = [*(a1 + 40) changeDetailsForFetchResult:v6];
    if (v9)
    {
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      v13 = [v9 fetchResultAfterChanges];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:v5];
      v14 = *(*(*(a1 + 56) + 8) + 40);
      if (!v14)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v14 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v14 setObject:v8 forKeyedSubscript:v5];
    }
  }

  else
  {
    v18 = PLAssetFetchResultProviderGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, "Found orphaned asset collection: <%@:%p>", &v23, 0x16u);
    }

    v19 = *(*(*(a1 + 64) + 8) + 40);
    if (!v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v19 = *(*(*(a1 + 64) + 8) + 40);
    }

    [v19 addObject:v5];
  }
}

void __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_226(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_2_227;
  v2[3] = &unk_1E773CF88;
  v2[4] = *(a1 + 40);
  objc_copyWeak(&v3, (a1 + 48));
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
  objc_destroyWeak(&v3);
}

void __78__PXContentSyndicationPhotoKitAssetFetchResultProvider_photoLibraryDidChange___block_invoke_2_227(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didChangeFetchResult:v6 forAssetCollection:v7 withChangeObservers:v9];
}

- (void)_didChangeFetchResult:(id)result forAssetCollection:(id)collection withChangeObservers:(id)observers
{
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  collectionCopy = collection;
  observersCopy = observers;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = [resultCopy count];
    v14 = objc_opt_class();
    v15 = [observersCopy componentsJoinedByString:{@", "}];
    *buf = 138413570;
    v22 = v12;
    v23 = 2048;
    v24 = resultCopy;
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2048;
    v30 = collectionCopy;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "Did change fetch result: <%@:%p, count:%lu> for asset collection: <%@:%p> with change observers: (%@)", buf, 0x3Eu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PXContentSyndicationPhotoKitAssetFetchResultProvider__didChangeFetchResult_forAssetCollection_withChangeObservers___block_invoke;
  v18[3] = &unk_1E773CF38;
  v18[4] = self;
  v19 = resultCopy;
  v20 = collectionCopy;
  v16 = collectionCopy;
  v17 = resultCopy;
  [observersCopy enumerateObjectsUsingBlock:v18];
}

- (void)_serialQueue_unregisterChangeObserver:(id)observer forAssetCollection:(id)collection
{
  v15 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  serialQueue = self->_serialQueue;
  observerCopy = observer;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:collectionCopy];
  [v9 removeObject:observerCopy];

  if (![v9 count])
  {
    v10 = PLAssetFetchResultProviderGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = collectionCopy;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "No observers for asset collection: <%@:%p>", &v11, 0x16u);
    }

    [(NSMutableDictionary *)self->_fetchResults setObject:0 forKeyedSubscript:collectionCopy];
  }
}

- (void)_serialQueue_registerChangeObserver:(id)observer forAssetCollection:(id)collection fetchResultBlock:(id)block
{
  observerCopy = observer;
  collectionCopy = collection;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_serialQueue);
  weakObjectsHashTable = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:collectionCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_observers setObject:weakObjectsHashTable forKeyedSubscript:collectionCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];
  objc_initWeak(&location, self);
  v12 = [(PXContentSyndicationPhotoKitAssetFetchResultProvider *)self _serialQueue_fetchResultAssetCollection:collectionCopy fetchResultBlock:blockCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__PXContentSyndicationPhotoKitAssetFetchResultProvider__serialQueue_registerChangeObserver_forAssetCollection_fetchResultBlock___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v20, &location);
  v17 = v12;
  v18 = collectionCopy;
  v19 = observerCopy;
  v13 = observerCopy;
  v14 = collectionCopy;
  v15 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __128__PXContentSyndicationPhotoKitAssetFetchResultProvider__serialQueue_registerChangeObserver_forAssetCollection_fetchResultBlock___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = *(a1 + 48);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [WeakRetained _didChangeFetchResult:v3 forAssetCollection:v4 withChangeObservers:v5];
}

- (void)_serialQueue_invalidateAssetFetchResultsInAssetCollections:(id)collections
{
  v15 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  dispatch_assert_queue_V2(self->_serialQueue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = collectionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableDictionary *)self->_fetchResults removeObjectForKey:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_serialQueue_invalidateAllAssetFetchResults
{
  dispatch_assert_queue_V2(self->_serialQueue);
  fetchResults = self->_fetchResults;

  [(NSMutableDictionary *)fetchResults removeAllObjects];
}

- (id)_serialQueue_fetchResultAssetCollection:(id)collection fetchResultBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = [(NSMutableDictionary *)self->_fetchResults objectForKeyedSubscript:collectionCopy];
  if (!v9)
  {
    v10 = PLAssetFetchResultProviderGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = collectionCopy;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Add asset collection: <%@:%p>", buf, 0x16u);
    }

    v9 = blockCopy[2](blockCopy, collectionCopy);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
    }

    photoLibrary = [v9 photoLibrary];
    if (photoLibrary != self->_photoLibrary)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary == _photoLibrary"}];
    }

    [(NSMutableDictionary *)self->_fetchResults setObject:v9 forKeyedSubscript:collectionCopy];
  }

  return v9;
}

- (void)invalidateAssetFetchResultsInAssetCollections:(id)collections
{
  v12 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__PXContentSyndicationPhotoKitAssetFetchResultProvider_invalidateAssetFetchResultsInAssetCollections___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v6 = collectionsCopy;
  v9 = v6;
  dispatch_sync(serialQueue, v8);
  v7 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "Invalidated cache for asset collections: %@", buf, 0xCu);
  }
}

- (void)invalidateAllAssetFetchResults
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PXContentSyndicationPhotoKitAssetFetchResultProvider_invalidateAllAssetFetchResults__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  v3 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "Invalidated cache", v4, 2u);
  }
}

- (id)assetFetchResultForAssetCollection:(id)collection
{
  v35 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__140670;
  v23 = __Block_byref_object_dispose__140671;
  v24 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PXContentSyndicationPhotoKitAssetFetchResultProvider_assetFetchResultForAssetCollection___block_invoke;
  block[3] = &unk_1E7746448;
  v18 = &v19;
  block[4] = self;
  v7 = collectionCopy;
  v17 = v7;
  dispatch_sync(serialQueue, block);
  v8 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = v20[5];
    v11 = [v10 count];
    v12 = objc_opt_class();
    *buf = 138413314;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2048;
    v34 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "Get fetch result: <%@:%p, count:%lu> for asset collection: <%@:%p>", buf, 0x34u);
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __91__PXContentSyndicationPhotoKitAssetFetchResultProvider_assetFetchResultForAssetCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serialQueue_fetchResultAssetCollection:*(a1 + 40) fetchResultBlock:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)unregisterChangeObserver:(id)observer forAssetCollection:(id)collection
{
  v28 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  collectionCopy = collection;
  v9 = collectionCopy;
  if (observerCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"changeObserver"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];

LABEL_3:
  v10 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = observerCopy;
    v24 = 2112;
    v25 = objc_opt_class();
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Un-register change observer: <%@:%p> for asset collection: <%@:%p>", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PXContentSyndicationPhotoKitAssetFetchResultProvider_unregisterChangeObserver_forAssetCollection___block_invoke;
  block[3] = &unk_1E774B708;
  objc_copyWeak(&v19, buf);
  v17 = observerCopy;
  v18 = v9;
  v12 = v9;
  v13 = observerCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __100__PXContentSyndicationPhotoKitAssetFetchResultProvider_unregisterChangeObserver_forAssetCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _serialQueue_unregisterChangeObserver:*(a1 + 32) forAssetCollection:*(a1 + 40)];
}

- (void)registerChangeObserver:(id)observer forAssetCollection:(id)collection
{
  v31 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  collectionCopy = collection;
  v9 = collectionCopy;
  if (observerCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"changeObserver"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];

LABEL_3:
  v10 = PLAssetFetchResultProviderGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = objc_opt_class();
    v25 = 2048;
    v26 = observerCopy;
    v27 = 2112;
    v28 = objc_opt_class();
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Register change observer: <%@:%p> for asset collection: <%@:%p>", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v11 = _Block_copy(self->_fetchResultBlock);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PXContentSyndicationPhotoKitAssetFetchResultProvider_registerChangeObserver_forAssetCollection___block_invoke;
  block[3] = &unk_1E774B1F8;
  objc_copyWeak(&v22, buf);
  v19 = observerCopy;
  v20 = v9;
  v21 = v11;
  v13 = v11;
  v14 = v9;
  v15 = observerCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __98__PXContentSyndicationPhotoKitAssetFetchResultProvider_registerChangeObserver_forAssetCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _serialQueue_registerChangeObserver:*(a1 + 32) forAssetCollection:*(a1 + 40) fetchResultBlock:*(a1 + 48)];
}

- (PXContentSyndicationPhotoKitAssetFetchResultProvider)initWithPhotoLibrary:(id)library fetchResultBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v10 = blockCopy;
  if (libraryCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"fetchResultBlock"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = PXContentSyndicationPhotoKitAssetFetchResultProvider;
  v11 = [(PXContentSyndicationPhotoKitAssetFetchResultProvider *)&v24 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.PXContentSyndicationPhotoKitAssetFetchResultProvider", v12);
    serialQueue = v11->_serialQueue;
    v11->_serialQueue = v13;

    objc_storeStrong(&v11->_photoLibrary, library);
    [(PHPhotoLibrary *)v11->_photoLibrary registerChangeObserver:v11];
    v15 = _Block_copy(v10);
    fetchResultBlock = v11->_fetchResultBlock;
    v11->_fetchResultBlock = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v11->_observers;
    v11->_observers = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchResults = v11->_fetchResults;
    v11->_fetchResults = v19;
  }

  return v11;
}

- (PXContentSyndicationPhotoKitAssetFetchResultProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitAssetFetchResultProvider.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXContentSyndicationPhotoKitAssetFetchResultProvider init]"}];

  abort();
}

@end