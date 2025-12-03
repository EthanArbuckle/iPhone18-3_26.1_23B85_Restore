@interface PXPlacesPhotoAssetsStore
+ (id)_assetsImportQueue;
- (PXPlacesPhotoAssetsStore)initWithFetchResults:(id)results photoLibrary:(id)library;
- (void)_addItems:(id)items intoStore:(id)store;
- (void)_handleAssetsImport;
- (void)dealloc;
- (void)loadWithCompletion:(id)completion;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation PXPlacesPhotoAssetsStore

- (void)photoLibraryDidChange:(id)change
{
  v91 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  fetchResults = [(PXPlacesPhotoAssetsStore *)self fetchResults];
  v5 = [fetchResults countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v83;
    v55 = fetchResults;
    v58 = *v83;
    while (2)
    {
      v8 = 0;
      v59 = v6;
      do
      {
        if (*v83 != v7)
        {
          objc_enumerationMutation(fetchResults);
        }

        v9 = [changeCopy changeDetailsForFetchResult:*(*(&v82 + 1) + 8 * v8)];
        v10 = v9;
        if (v9)
        {
          if (![v9 hasIncrementalChanges])
          {

            store = [(PXPlacesPhotoAssetsStore *)self store];
            allItems = [store allItems];

            store2 = [(PXPlacesPhotoAssetsStore *)self store];
            [store2 beginUpdates];

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            fetchResults = allItems;
            v50 = [fetchResults countByEnumeratingWithState:&v66 objects:v86 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v67;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v67 != v52)
                  {
                    objc_enumerationMutation(fetchResults);
                  }

                  [(PXPlacesStore *)self->_store removeItem:*(*(&v66 + 1) + 8 * i)];
                }

                v51 = [fetchResults countByEnumeratingWithState:&v66 objects:v86 count:16];
              }

              while (v51);
            }

            store3 = [(PXPlacesPhotoAssetsStore *)self store];
            [store3 endUpdates];

            [(PXPlacesPhotoAssetsStore *)self setDidInitiateLoad:0];
            [(PXPlacesPhotoAssetsStore *)self setDidCompleteLoad:0];
            [(PXPlacesPhotoAssetsStore *)self loadWithCompletion:0];
            goto LABEL_57;
          }

          removedObjects = [v10 removedObjects];
          insertedObjects = [v10 insertedObjects];
          v60 = v10;
          if ([removedObjects count] || objc_msgSend(insertedObjects, "count"))
          {
            store4 = [(PXPlacesPhotoAssetsStore *)self store];
            [store4 beginUpdates];

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v13 = removedObjects;
            v14 = removedObjects;
            v15 = [v14 countByEnumeratingWithState:&v78 objects:v89 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v79;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v79 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v78 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(PXPlacesStore *)self->_store removeItem:v19];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v78 objects:v89 count:16];
              }

              while (v16);
            }

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v20 = insertedObjects;
            v21 = [v20 countByEnumeratingWithState:&v74 objects:v88 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v75;
              do
              {
                for (k = 0; k != v22; ++k)
                {
                  if (*v75 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v74 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(PXPlacesStore *)self->_store addItem:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v74 objects:v88 count:16];
              }

              while (v22);
            }

            store5 = [(PXPlacesPhotoAssetsStore *)self store];
            [store5 endUpdates];
            v6 = v59;
            v10 = v60;
            removedObjects = v13;
            v27 = store5;
            v7 = v58;
          }

          else
          {
            changedObjects = [v10 changedObjects];
            if (changedObjects)
            {
              v29 = changedObjects;
              v56 = removedObjects;
              v57 = v8;
              v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v27 = v29;
              v30 = [v27 countByEnumeratingWithState:&v70 objects:v87 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v71;
                obj = v27;
                do
                {
                  for (m = 0; m != v31; ++m)
                  {
                    if (*v71 != v32)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v34 = *(*(&v70 + 1) + 8 * m);
                    v35 = [changeCopy changeDetailsForObject:v34];
                    objectBeforeChanges = [v35 objectBeforeChanges];
                    v37 = v34;
                    location = [objectBeforeChanges location];
                    location2 = [v37 location];
                    [location coordinate];
                    v41 = v40;
                    [location2 coordinate];
                    if (vabdd_f64(v41, v42) >= 2.22044605e-16 || ([location coordinate], v44 = v43, objc_msgSend(location2, "coordinate"), vabdd_f64(v44, v45) >= 2.22044605e-16))
                    {
                      [v64 addObject:objectBeforeChanges];
                      [v63 addObject:v37];
                    }
                  }

                  v27 = obj;
                  v31 = [obj countByEnumeratingWithState:&v70 objects:v87 count:16];
                }

                while (v31);
              }

              removedObjects = v56;
              v8 = v57;
              if ([v64 count])
              {
                [(PXPlacesStore *)self->_store beginUpdates];
                [(PXPlacesStore *)self->_store removeItems:v64];
                [(PXPlacesStore *)self->_store addItems:v63];
                [(PXPlacesStore *)self->_store endUpdates];
              }

              fetchResults = v55;
              v7 = v58;
              v6 = v59;
              v10 = v60;
            }

            else
            {
              v27 = 0;
            }
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v46 = [fetchResults countByEnumeratingWithState:&v82 objects:v90 count:16];
      v6 = v46;
      if (v46)
      {
        continue;
      }

      break;
    }
  }

LABEL_57:
}

- (void)_addItems:(id)items intoStore:(id)store
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  storeCopy = store;
  v7 = PKPlacesKitGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = PKPlacesKitGetLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    v14 = 138412290;
    v15 = v11;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AddItemsIntoStore", "%@", &v14, 0xCu);
  }

  [storeCopy beginUpdates];
  [storeCopy addItemsFromArray:itemsCopy];
  [storeCopy endUpdates];
  v12 = v10;
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_END, v8, "AddItemsIntoStore", "", &v14, 2u);
  }
}

- (void)_handleAssetsImport
{
  v54 = *MEMORY[0x1E69E9840];
  [(PHPhotoLibrary *)self->_photoLibrary unregisterChangeObserver:self];
  v3 = PKPlacesKitGetLog();
  v4 = os_signpost_id_generate(v3);

  v5 = PKPlacesKitGetLog();
  v6 = v5;
  spid = v4;
  v27 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HandleAssetsImport", "", buf, 2u);
  }

  v28 = v6;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fetchResults = [(PXPlacesPhotoAssetsStore *)self fetchResults];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = fetchResults;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = 0;
    v30 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v14)
        {
          v15 = *v44;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v13);
              }

              [v7 addObject:*(*(&v43 + 1) + 8 * j)];
              if (v10 < 20000)
              {
                ++v10;
              }

              else
              {
                store = [(PXPlacesPhotoAssetsStore *)self store];
                [(PXPlacesPhotoAssetsStore *)self _addItems:v7 intoStore:store];

                [v7 removeAllObjects];
                v10 = 0;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    store2 = [(PXPlacesPhotoAssetsStore *)self store];
    [(PXPlacesPhotoAssetsStore *)self _addItems:v7 intoStore:store2];
  }

  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__33947;
  v41 = __Block_byref_object_dispose__33948;
  v42 = 0;
  serialQueue = [(PXPlacesPhotoAssetsStore *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXPlacesPhotoAssetsStore__handleAssetsImport__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(serialQueue, block);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = *(v38 + 5);
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v51 count:16];
  if (v21)
  {
    v22 = *v33;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v20);
        }

        (*(*(*(&v32 + 1) + 8 * k) + 16))();
      }

      v21 = [v20 countByEnumeratingWithState:&v32 objects:v51 count:16];
    }

    while (v21);
  }

  [(PXPlacesPhotoAssetsStore *)self setDidCompleteLoad:1];
  [(PHPhotoLibrary *)self->_photoLibrary registerChangeObserver:self];
  v24 = v28;
  v25 = v24;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v25, OS_SIGNPOST_INTERVAL_END, spid, "HandleAssetsImport", "", v31, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void __47__PXPlacesPhotoAssetsStore__handleAssetsImport__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completions];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) completions];
  [v6 removeAllObjects];
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PXPlacesPhotoAssetsStore *)self didCompleteLoad])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (completionCopy)
    {
      serialQueue = [(PXPlacesPhotoAssetsStore *)self serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__PXPlacesPhotoAssetsStore_loadWithCompletion___block_invoke;
      block[3] = &unk_1E774C2F0;
      block[4] = self;
      v11 = completionCopy;
      dispatch_sync(serialQueue, block);
    }

    if (![(PXPlacesPhotoAssetsStore *)self didInitiateLoad])
    {
      [(PXPlacesPhotoAssetsStore *)self setDidInitiateLoad:1];
      objc_initWeak(&location, self);
      _assetsImportQueue = [objc_opt_class() _assetsImportQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__PXPlacesPhotoAssetsStore_loadWithCompletion___block_invoke_2;
      v7[3] = &unk_1E774C318;
      objc_copyWeak(&v8, &location);
      dispatch_async(_assetsImportQueue, v7);

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __47__PXPlacesPhotoAssetsStore_loadWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completions];
  v2 = [*(a1 + 40) copy];
  [v3 addObject:v2];
}

void __47__PXPlacesPhotoAssetsStore_loadWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAssetsImport];
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXPlacesPhotoAssetsStore;
  [(PXPlacesPhotoAssetsStore *)&v3 dealloc];
}

- (PXPlacesPhotoAssetsStore)initWithFetchResults:(id)results photoLibrary:(id)library
{
  resultsCopy = results;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PXPlacesPhotoAssetsStore;
  v9 = [(PXPlacesPhotoAssetsStore *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResults, results);
    objc_storeStrong(&v10->_photoLibrary, library);
    v11 = objc_alloc_init(PXPlacesStore);
    store = v10->_store;
    v10->_store = v11;

    *&v10->_didInitiateLoad = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completions = v10->_completions;
    v10->_completions = v13;

    v15 = dispatch_queue_create("completions", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v15;
  }

  return v10;
}

+ (id)_assetsImportQueue
{
  if (_assetsImportQueue_onceToken != -1)
  {
    dispatch_once(&_assetsImportQueue_onceToken, &__block_literal_global_33960);
  }

  v3 = _assetsImportQueue_assetsImportQueue;

  return v3;
}

void __46__PXPlacesPhotoAssetsStore__assetsImportQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.photos.places.assetsImport", v2);
  v1 = _assetsImportQueue_assetsImportQueue;
  _assetsImportQueue_assetsImportQueue = v0;
}

@end