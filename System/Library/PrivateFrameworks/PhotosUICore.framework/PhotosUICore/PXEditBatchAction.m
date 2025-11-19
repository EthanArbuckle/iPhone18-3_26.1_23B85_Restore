@interface PXEditBatchAction
- (BOOL)shouldRenderSynchronouslyForAsset:(id)a3;
- (NSArray)assets;
- (PXEditBatchAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7;
- (id)asyncAssets;
- (id)prefetchOriginalMetadataForAssets:(id)a3;
- (id)syncAssets;
- (void)_cancel;
- (void)_reportResults:(id)a3;
- (void)_saveResults:(id)a3 needsUndoMap:(BOOL)a4 completion:(id)a5;
- (void)_saveUndoMapFromResults:(id)a3 completion:(id)a4;
- (void)_syncUndoDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5;
- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
- (void)willBeginActionIsAsync:(BOOL)a3 itemCount:(unint64_t)a4;
- (void)willBeginActionWithLocalizedTitle:(id)a3 isAsync:(BOOL)a4 itemCount:(unint64_t)a5;
@end

@implementation PXEditBatchAction

- (id)prefetchOriginalMetadataForAssets:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v3 title:0];
    v5 = MEMORY[0x1E6978830];
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v5 fetchOptionsWithPhotoLibrary:0 orObject:v6];

    v12[0] = *MEMORY[0x1E6978CA8];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setFetchPropertySets:v8];

    v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v7];
    v10 = [v9 fetchedObjects];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

- (void)_saveUndoMapFromResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  actionQueue = self->_actionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXEditBatchAction__saveUndoMapFromResults_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)_reportResults:(id)a3
{
  v4 = a3;
  v5 = [(PXEditBatchAction *)self completionHandler];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__PXEditBatchAction__reportResults___block_invoke;
    v6[3] = &unk_1E774C620;
    v7 = v4;
    v8 = self;
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
  v2 = [(PXEditBatchAction *)self manager];
  [v2 cancelCurrentBatchAction];
}

- (void)_saveResults:(id)a3 needsUndoMap:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = PFExists();
  if (v10 && v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PXEditBatchAction__saveResults_needsUndoMap_completion___block_invoke_2;
    v11[3] = &unk_1E774A0E0;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    [(PXEditBatchAction *)self _saveUndoMapFromResults:v12 completion:v11];
  }

  else
  {
    [(PXEditBatchAction *)self _reportResults:v8];
    (*(v9 + 2))(v9, v10, 0);
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
    v4 = [(PXEditBatchAction *)self assets];
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
    v4 = [(PXEditBatchAction *)self assets];
    v5 = PFFilter();
    v6 = self->_syncAssets;
    self->_syncAssets = v5;

    syncAssets = self->_syncAssets;
  }

  return syncAssets;
}

- (BOOL)shouldRenderSynchronouslyForAsset:(id)a3
{
  v4 = a3;
  if ([(PXEditBatchAction *)self allowSynchronousRendering])
  {
    if ([(PXEditBatchAction *)self isEligibleForAsyncProcessingOnAsset:v4])
    {
      v5 = [v4 originalMetadataProperties];
      v6 = [v5 originalWidth];
      v7 = ([v5 originalHeight] * v6) / 1000000.0;
      v8 = [v4 RAWBadgeAttributes];
      v10 = v7 >= 25.0 || v8 != 0;
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

- (void)willBeginActionWithLocalizedTitle:(id)a3 isAsync:(BOOL)a4 itemCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [(PXEditBatchAction *)self assets];
  v10 = [v9 count];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXEditBatchAction_willBeginActionWithLocalizedTitle_isAsync_itemCount___block_invoke;
  block[3] = &unk_1E7737250;
  v16 = a4;
  v14 = a5;
  v15 = v10;
  block[4] = self;
  v13 = v8;
  v11 = v8;
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

- (void)willBeginActionIsAsync:(BOOL)a3 itemCount:(unint64_t)a4
{
  v5 = a3;
  v7 = [(PXAction *)self redoMenuItemTitle];

  if (v7)
  {
    v8 = [(PXEditBatchAction *)self localizedProgressToastRedoTitle];

    if (v8)
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
    v10 = [(PXEditBatchAction *)self localizedProgressToastOngoingTitle];

    if (v10)
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
  [(PXEditBatchAction *)self willBeginActionWithLocalizedTitle:v9 isAsync:v5 itemCount:a4];
}

- (void)_syncUndoDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXEditBatchAction *)self asyncAssets];
  v11 = v10;
  if (a4 || ![v10 count])
  {
    [(PXEditBatchAction *)self _saveResults:v8 needsUndoMap:0 completion:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = [(PXEditBatchAction *)self localizedProgressToastUndoTitle];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(PXAction *)self undoMenuItemTitle];
    }

    v15 = v14;

    -[PXEditBatchAction willBeginActionWithLocalizedTitle:isAsync:itemCount:](self, "willBeginActionWithLocalizedTitle:isAsync:itemCount:", v15, 1, [v11 count]);
    v16 = [(PXEditBatchAction *)self manager];
    undoActionMap = self->_undoActionMap;
    v18 = [(PXEditBatchAction *)self asyncProgress];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__PXEditBatchAction__syncUndoDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v19[3] = &unk_1E7742CE8;
    v20 = v8;
    objc_copyWeak(&v22, &location);
    v21 = v9;
    [v16 replacePresets:undoActionMap onAssets:v11 async:1 progress:v18 completion:v19];

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

- (void)performUndo:(id)a3
{
  v4 = a3;
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

    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_13;
  }

  v5 = [(PXEditBatchAction *)self manager];
  v6 = [v5 isBusyWithBatchAction];

  if (v6)
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

  v9 = [(PXEditBatchAction *)self localizedProgressToastUndoTitle];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(PXAction *)self undoMenuItemTitle];
  }

  v12 = v11;

  v13 = [(PXEditBatchAction *)self syncAssets];
  -[PXEditBatchAction willBeginActionWithLocalizedTitle:isAsync:itemCount:](self, "willBeginActionWithLocalizedTitle:isAsync:itemCount:", v12, 0, [v13 count]);
  actionQueue = self->_actionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXEditBatchAction_performUndo___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v17 = v13;
  v18 = v4;
  v15 = v13;
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

- (void)performAction:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXEditBatchAction.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditBatchAction performAction:]", v8}];

  abort();
}

- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXEditBatchAction *)self manager];
  v9 = [v8 isBusyWithBatchAction];

  if (v9)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not perform PXEditBatchAction: Edit manager is busy.", buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PXEditBatchAction;
    [(PXAction *)&v11 executeWithUndoManager:v6 completionHandler:v7];
  }
}

- (PXEditBatchAction)initWithPresetManager:(id)a3 syncProgress:(id)a4 asyncProgress:(id)a5 asyncLoadingStatusManager:(id)a6 forAssets:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
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
    [v14 setCancellationHandler:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __106__PXEditBatchAction_initWithPresetManager_syncProgress_asyncProgress_asyncLoadingStatusManager_forAssets___block_invoke_2;
    v26[3] = &unk_1E774C318;
    objc_copyWeak(&v27, &location);
    [v15 setCancellationHandler:v26];
    objc_storeStrong(&v18->_syncProgress, a4);
    objc_storeStrong(&v18->_asyncProgress, a5);
    [v13 setAsyncLoadingStatusManager:v16];
    objc_storeStrong(&v18->_manager, a3);
    v19 = dispatch_queue_create("PXEditBatchAction", 0);
    actionQueue = v18->_actionQueue;
    v18->_actionQueue = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    undoActionMap = v18->_undoActionMap;
    v18->_undoActionMap = v21;

    v23 = [(PXEditBatchAction *)v18 prefetchOriginalMetadataForAssets:v17];
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