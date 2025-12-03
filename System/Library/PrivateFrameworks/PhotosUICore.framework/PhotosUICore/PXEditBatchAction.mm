@interface PXEditBatchAction
- (BOOL)shouldRenderSynchronouslyForAsset:(id)asset;
- (NSArray)assets;
- (PXEditBatchAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets;
- (id)asyncAssets;
- (id)prefetchOriginalMetadataForAssets:(id)assets;
- (id)syncAssets;
- (void)_cancel;
- (void)_reportResults:(id)results;
- (void)_saveResults:(id)results needsUndoMap:(BOOL)map completion:(id)completion;
- (void)_saveUndoMapFromResults:(id)results completion:(id)completion;
- (void)_syncUndoDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
- (void)willBeginActionIsAsync:(BOOL)async itemCount:(unint64_t)count;
- (void)willBeginActionWithLocalizedTitle:(id)title isAsync:(BOOL)async itemCount:(unint64_t)count;
@end

@implementation PXEditBatchAction

- (id)prefetchOriginalMetadataForAssets:(id)assets
{
  v12[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:assetsCopy title:0];
    v5 = MEMORY[0x1E6978830];
    v6 = [assetsCopy objectAtIndexedSubscript:0];
    v7 = [v5 fetchOptionsWithPhotoLibrary:0 orObject:v6];

    v12[0] = *MEMORY[0x1E6978CA8];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setFetchPropertySets:v8];

    v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v7];
    fetchedObjects = [v9 fetchedObjects];
  }

  else
  {
    fetchedObjects = assetsCopy;
  }

  return fetchedObjects;
}

- (void)_saveUndoMapFromResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  actionQueue = self->_actionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXEditBatchAction__saveUndoMapFromResults_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v12 = resultsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = resultsCopy;
  dispatch_async(actionQueue, block);
}

void __56__PXEditBatchAction__saveUndoMapFromResults_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 104) removeAllObjects];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 80), "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 sourceAction];
        v10 = [v8 sourceAssetUUID];
        v11 = [v8 savedAsset];
        if (v11)
        {
          v12 = v9 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && v10 != 0)
        {
          [*(*(a1 + 32) + 104) setObject:v9 forKey:v10];
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v14 = [*(a1 + 32) prefetchOriginalMetadataForAssets:v2];
  v15 = *(a1 + 32);
  v16 = *(v15 + 80);
  *(v15 + 80) = v14;

  v17 = *(a1 + 32);
  v18 = *(v17 + 96);
  *(v17 + 96) = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 88);
  *(v19 + 88) = 0;

  (*(*(a1 + 48) + 16))();
}

- (void)_reportResults:(id)results
{
  resultsCopy = results;
  completionHandler = [(PXEditBatchAction *)self completionHandler];

  if (completionHandler)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__PXEditBatchAction__reportResults___block_invoke;
    v6[3] = &unk_1E774C620;
    v7 = resultsCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __36__PXEditBatchAction__reportResults___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) error];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) completionHandler];
  (v9)[2](v9, v2);
}

- (void)_cancel
{
  manager = [(PXEditBatchAction *)self manager];
  [manager cancelCurrentBatchAction];
}

- (void)_saveResults:(id)results needsUndoMap:(BOOL)map completion:(id)completion
{
  mapCopy = map;
  resultsCopy = results;
  completionCopy = completion;
  v10 = PFExists();
  if (v10 && mapCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PXEditBatchAction__saveResults_needsUndoMap_completion___block_invoke_2;
    v11[3] = &unk_1E774A0E0;
    v11[4] = self;
    v12 = resultsCopy;
    v13 = completionCopy;
    [(PXEditBatchAction *)self _saveUndoMapFromResults:v12 completion:v11];
  }

  else
  {
    [(PXEditBatchAction *)self _reportResults:resultsCopy];
    (*(completionCopy + 2))(completionCopy, v10, 0);
  }
}

uint64_t __58__PXEditBatchAction__saveResults_needsUndoMap_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reportResults:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

BOOL __58__PXEditBatchAction__saveResults_needsUndoMap_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 == 0;

  return v3;
}

- (NSArray)assets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__92265;
  v10 = __Block_byref_object_dispose__92266;
  v11 = 0;
  actionQueue = self->_actionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PXEditBatchAction_assets__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(actionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__PXEditBatchAction_assets__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)asyncAssets
{
  asyncAssets = self->_asyncAssets;
  if (!asyncAssets)
  {
    assets = [(PXEditBatchAction *)self assets];
    v5 = PFFilter();
    v6 = self->_asyncAssets;
    self->_asyncAssets = v5;

    asyncAssets = self->_asyncAssets;
  }

  return asyncAssets;
}

- (id)syncAssets
{
  syncAssets = self->_syncAssets;
  if (!syncAssets)
  {
    assets = [(PXEditBatchAction *)self assets];
    v5 = PFFilter();
    v6 = self->_syncAssets;
    self->_syncAssets = v5;

    syncAssets = self->_syncAssets;
  }

  return syncAssets;
}

- (BOOL)shouldRenderSynchronouslyForAsset:(id)asset
{
  assetCopy = asset;
  if ([(PXEditBatchAction *)self allowSynchronousRendering])
  {
    if ([(PXEditBatchAction *)self isEligibleForAsyncProcessingOnAsset:assetCopy])
    {
      originalMetadataProperties = [assetCopy originalMetadataProperties];
      originalWidth = [originalMetadataProperties originalWidth];
      v7 = ([originalMetadataProperties originalHeight] * originalWidth) / 1000000.0;
      rAWBadgeAttributes = [assetCopy RAWBadgeAttributes];
      v10 = v7 >= 25.0 || rAWBadgeAttributes != 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)willBeginActionWithLocalizedTitle:(id)title isAsync:(BOOL)async itemCount:(unint64_t)count
{
  titleCopy = title;
  assets = [(PXEditBatchAction *)self assets];
  v10 = [assets count];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXEditBatchAction_willBeginActionWithLocalizedTitle_isAsync_itemCount___block_invoke;
  block[3] = &unk_1E7737250;
  asyncCopy = async;
  countCopy = count;
  v15 = v10;
  block[4] = self;
  v13 = titleCopy;
  v11 = titleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__PXEditBatchAction_willBeginActionWithLocalizedTitle_isAsync_itemCount___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 48) >= *(a1 + 56))
    {
      v2 = 0;
    }

    else
    {
      v2 = 21;
    }
  }

  else
  {
    v2 = 22;
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) asyncProgress];
  [v4 setLocalizedDescription:v3];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) syncProgress];
  [v6 setLocalizedDescription:v5];

  v7 = *(a1 + 32);
  if (*(a1 + 64))
  {
    [v7 asyncProgress];
  }

  else
  {
    [v7 syncProgress];
  }

  [objc_claimAutoreleasedReturnValue() setCompletedUnitCount:0];
  PXLocalizedAssetCountForUsage(*(a1 + 48), 0, 0, v2);
}

- (void)willBeginActionIsAsync:(BOOL)async itemCount:(unint64_t)count
{
  asyncCopy = async;
  redoMenuItemTitle = [(PXAction *)self redoMenuItemTitle];

  if (redoMenuItemTitle)
  {
    localizedProgressToastRedoTitle = [(PXEditBatchAction *)self localizedProgressToastRedoTitle];

    if (localizedProgressToastRedoTitle)
    {
      [(PXEditBatchAction *)self localizedProgressToastRedoTitle];
    }

    else
    {
      [(PXAction *)self redoMenuItemTitle];
    }
  }

  else
  {
    localizedProgressToastOngoingTitle = [(PXEditBatchAction *)self localizedProgressToastOngoingTitle];

    if (localizedProgressToastOngoingTitle)
    {
      [(PXEditBatchAction *)self localizedProgressToastOngoingTitle];
    }

    else
    {
      [(PXAction *)self localizedActionName];
    }
  }
  v9 = ;
  v11 = v9;
  [(PXEditBatchAction *)self willBeginActionWithLocalizedTitle:v9 isAsync:asyncCopy itemCount:count];
}

- (void)_syncUndoDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  asyncAssets = [(PXEditBatchAction *)self asyncAssets];
  v11 = asyncAssets;
  if (cancel || ![asyncAssets count])
  {
    [(PXEditBatchAction *)self _saveResults:resultsCopy needsUndoMap:0 completion:handlerCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    localizedProgressToastUndoTitle = [(PXEditBatchAction *)self localizedProgressToastUndoTitle];
    v13 = localizedProgressToastUndoTitle;
    if (localizedProgressToastUndoTitle)
    {
      undoMenuItemTitle = localizedProgressToastUndoTitle;
    }

    else
    {
      undoMenuItemTitle = [(PXAction *)self undoMenuItemTitle];
    }

    v15 = undoMenuItemTitle;

    -[PXEditBatchAction willBeginActionWithLocalizedTitle:isAsync:itemCount:](self, "willBeginActionWithLocalizedTitle:isAsync:itemCount:", v15, 1, [v11 count]);
    manager = [(PXEditBatchAction *)self manager];
    undoActionMap = self->_undoActionMap;
    asyncProgress = [(PXEditBatchAction *)self asyncProgress];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__PXEditBatchAction__syncUndoDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v19[3] = &unk_1E7742CE8;
    v20 = resultsCopy;
    objc_copyWeak(&v22, &location);
    v21 = handlerCopy;
    [manager replacePresets:undoActionMap onAssets:v11 async:1 progress:asyncProgress completion:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __79__PXEditBatchAction__syncUndoDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mutableCopy];
  [v6 addObjectsFromArray:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _saveResults:v6 needsUndoMap:0 completion:*(a1 + 40)];
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  if (![(NSMutableDictionary *)self->_undoActionMap count])
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No successful actions in PXEditBatchAction to undo.";
      goto LABEL_7;
    }

LABEL_8:

    (*(undoCopy + 2))(undoCopy, 0, 0);
    goto LABEL_13;
  }

  manager = [(PXEditBatchAction *)self manager];
  isBusyWithBatchAction = [manager isBusyWithBatchAction];

  if (isBusyWithBatchAction)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Could not undo PXEditBatchAction: Edit manager is busy.";
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  localizedProgressToastUndoTitle = [(PXEditBatchAction *)self localizedProgressToastUndoTitle];
  v10 = localizedProgressToastUndoTitle;
  if (localizedProgressToastUndoTitle)
  {
    undoMenuItemTitle = localizedProgressToastUndoTitle;
  }

  else
  {
    undoMenuItemTitle = [(PXAction *)self undoMenuItemTitle];
  }

  v12 = undoMenuItemTitle;

  syncAssets = [(PXEditBatchAction *)self syncAssets];
  -[PXEditBatchAction willBeginActionWithLocalizedTitle:isAsync:itemCount:](self, "willBeginActionWithLocalizedTitle:isAsync:itemCount:", v12, 0, [syncAssets count]);
  actionQueue = self->_actionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXEditBatchAction_performUndo___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v17 = syncAssets;
  v18 = undoCopy;
  v15 = syncAssets;
  dispatch_async(actionQueue, block);

LABEL_13:
}

void __33__PXEditBatchAction_performUndo___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) manager];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v3[13];
    v6 = [v3 syncProgress];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__PXEditBatchAction_performUndo___block_invoke_2;
    v8[3] = &unk_1E7742CC0;
    objc_copyWeak(&v10, &location);
    v9 = *(a1 + 48);
    [v2 replacePresets:v5 onAssets:v4 async:0 progress:v6 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __33__PXEditBatchAction_performUndo___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncUndoDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditBatchAction.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditBatchAction performAction:]", v8}];

  abort();
}

- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  manager = [(PXEditBatchAction *)self manager];
  isBusyWithBatchAction = [manager isBusyWithBatchAction];

  if (isBusyWithBatchAction)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not perform PXEditBatchAction: Edit manager is busy.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PXEditBatchAction;
    [(PXAction *)&v11 executeWithUndoManager:managerCopy completionHandler:handlerCopy];
  }
}

- (PXEditBatchAction)initWithPresetManager:(id)manager syncProgress:(id)progress asyncProgress:(id)asyncProgress asyncLoadingStatusManager:(id)statusManager forAssets:(id)assets
{
  managerCopy = manager;
  progressCopy = progress;
  asyncProgressCopy = asyncProgress;
  statusManagerCopy = statusManager;
  assetsCopy = assets;
  v31.receiver = self;
  v31.super_class = PXEditBatchAction;
  v18 = [(PXEditBatchAction *)&v31 init];
  if (v18)
  {
    objc_initWeak(&location, v18);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __106__PXEditBatchAction_initWithPresetManager_syncProgress_asyncProgress_asyncLoadingStatusManager_forAssets___block_invoke;
    v28[3] = &unk_1E774C318;
    objc_copyWeak(&v29, &location);
    [progressCopy setCancellationHandler:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __106__PXEditBatchAction_initWithPresetManager_syncProgress_asyncProgress_asyncLoadingStatusManager_forAssets___block_invoke_2;
    v26[3] = &unk_1E774C318;
    objc_copyWeak(&v27, &location);
    [asyncProgressCopy setCancellationHandler:v26];
    objc_storeStrong(&v18->_syncProgress, progress);
    objc_storeStrong(&v18->_asyncProgress, asyncProgress);
    [managerCopy setAsyncLoadingStatusManager:statusManagerCopy];
    objc_storeStrong(&v18->_manager, manager);
    v19 = dispatch_queue_create("PXEditBatchAction", 0);
    actionQueue = v18->_actionQueue;
    v18->_actionQueue = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    undoActionMap = v18->_undoActionMap;
    v18->_undoActionMap = v21;

    v23 = [(PXEditBatchAction *)v18 prefetchOriginalMetadataForAssets:assetsCopy];
    assets = v18->_assets;
    v18->_assets = v23;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __106__PXEditBatchAction_initWithPresetManager_syncProgress_asyncProgress_asyncLoadingStatusManager_forAssets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void __106__PXEditBatchAction_initWithPresetManager_syncProgress_asyncProgress_asyncLoadingStatusManager_forAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

@end