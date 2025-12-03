@interface PXAssetEditOperationManager
+ (PXAssetEditOperationManager)sharedManager;
- (Class)_performerClassForEditOperationWithType:(id)type onAsset:(id)asset;
- (PXAssetEditOperationManager)init;
- (id)_performerForEditOperationWithType:(id)type onAsset:(id)asset;
- (id)performEditOperationWithType:(id)type asset:(id)asset undoManager:(id)manager delay:(double)delay completionHandler:(id)handler;
- (int64_t)editOperationStatusForAsset:(id)asset;
- (void)_addPendingPerformer:(id)performer;
- (void)_enumerateObserversUsingBlock:(id)block;
- (void)_enumeratePredicateRecordsWithBlock:(id)block;
- (void)_handleCompletionOfPerformer:(id)performer withSuccess:(BOOL)success error:(id)error externalCompletionHandler:(id)handler;
- (void)_removePendingPerformer:(id)performer;
- (void)_signalPendingPerformersChangeForAsset:(id)asset;
- (void)_signalStatusChangeForAsset:(id)asset;
- (void)_updateOperationStatusForAsset:(id)asset;
- (void)enumerateEditOperationsPerformedOnAsset:(id)asset usingBlock:(id)block;
- (void)registerObserver:(id)observer context:(void *)context;
- (void)registerPerformerClass:(Class)class withPredicate:(id)predicate;
- (void)unregisterObserver:(id)observer context:(void *)context;
@end

@implementation PXAssetEditOperationManager

- (void)_handleCompletionOfPerformer:(id)performer withSuccess:(BOOL)success error:(id)error externalCompletionHandler:(id)handler
{
  performerCopy = performer;
  errorCopy = error;
  handlerCopy = handler;
  v11 = errorCopy;
  v12 = handlerCopy;
  v13 = performerCopy;
  px_dispatch_on_main_queue();
}

uint64_t __104__PXAssetEditOperationManager__handleCompletionOfPerformer_withSuccess_error_externalCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 asset];
    [v3 _updateOperationStatusForAsset:v4];

    [*(a1 + 40) _removePendingPerformer:*(a1 + 32)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_signalPendingPerformersChangeForAsset:(id)asset
{
  assetCopy = asset;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXAssetEditOperationManager__signalPendingPerformersChangeForAsset___block_invoke;
  v6[3] = &unk_1E7748E30;
  v6[4] = self;
  v7 = assetCopy;
  v5 = assetCopy;
  [(PXAssetEditOperationManager *)self _enumerateObserversUsingBlock:v6];
}

void __70__PXAssetEditOperationManager__signalPendingPerformersChangeForAsset___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 assetEditOperationManager:*(a1 + 32) didChangeEditOperationsPerformedOnAsset:*(a1 + 40) context:a3];
  }
}

- (void)_signalStatusChangeForAsset:(id)asset
{
  assetCopy = asset;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXAssetEditOperationManager__signalStatusChangeForAsset___block_invoke;
  v6[3] = &unk_1E7748E30;
  v6[4] = self;
  v7 = assetCopy;
  v5 = assetCopy;
  [(PXAssetEditOperationManager *)self _enumerateObserversUsingBlock:v6];
}

void __59__PXAssetEditOperationManager__signalStatusChangeForAsset___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 assetEditOperationManager:*(a1 + 32) didChangeEditOperationStatusForAsset:*(a1 + 40) context:a3];
  }
}

- (void)_updateOperationStatusForAsset:(id)asset
{
  assetCopy = asset;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PXAssetEditOperationManager__updateOperationStatusForAsset___block_invoke;
  v10[3] = &unk_1E7748E08;
  v10[4] = &v11;
  [(PXAssetEditOperationManager *)self enumerateEditOperationsPerformedOnAsset:assetCopy usingBlock:v10];
  operationStatusByAsset = [(PXAssetEditOperationManager *)self operationStatusByAsset];
  v6 = [operationStatusByAsset objectForKeyedSubscript:assetCopy];

  v7 = v12[3];
  if (v7 != [v6 integerValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v12[3]];
    operationStatusByAsset2 = [(PXAssetEditOperationManager *)self operationStatusByAsset];
    [operationStatusByAsset2 setObject:v8 forKeyedSubscript:assetCopy];

    [(PXAssetEditOperationManager *)self _signalStatusChangeForAsset:assetCopy];
  }

  _Block_object_dispose(&v11, 8);
}

void __62__PXAssetEditOperationManager__updateOperationStatusForAsset___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 completedUnitCount];
  if (v4 >= [v8 totalUnitCount])
  {
    v6 = 2;
  }

  else
  {
    v5 = [v8 isCancelled];
    v6 = 3;
    if (v5)
    {
      v6 = 1;
    }
  }

  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) > v6)
  {
    v6 = *(v7 + 24);
  }

  *(v7 + 24) = v6;
}

- (void)_removePendingPerformer:(id)performer
{
  performerCopy = performer;
  asset = [performerCopy asset];
  pendingPerformersByAsset = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
  v6 = [pendingPerformersByAsset objectForKeyedSubscript:asset];

  [v6 removeObject:performerCopy];
  if (![v6 count])
  {
    pendingPerformersByAsset2 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    [pendingPerformersByAsset2 removeObjectForKey:asset];
  }

  [(PXAssetEditOperationManager *)self _signalPendingPerformersChangeForAsset:asset];
}

- (void)_addPendingPerformer:(id)performer
{
  performerCopy = performer;
  asset = [performerCopy asset];
  pendingPerformersByAsset = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
  v6 = [pendingPerformersByAsset objectForKeyedSubscript:asset];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingPerformersByAsset2 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    [pendingPerformersByAsset2 setObject:v6 forKeyedSubscript:asset];
  }

  [v6 addObject:performerCopy];
  [(PXAssetEditOperationManager *)self _signalPendingPerformersChangeForAsset:asset];
}

- (void)_enumerateObserversUsingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  observersWithContexts = [(PXAssetEditOperationManager *)self observersWithContexts];
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyEnumerator = [observersWithContexts keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v12 = [observersWithContexts objectForKey:v11];
      if ([v12 count])
      {
        v13 = 0;
        do
        {
          blockCopy[2](blockCopy, v11, [v12 pointerAtIndex:v13], &v19);
          if (v19 == 1)
          {
            break;
          }

          ++v13;
        }

        while (v13 < [v12 count]);
      }

      v14 = v19;

      if (v14)
      {
        break;
      }

      if (++v10 == v8)
      {
        v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)unregisterObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:246 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager unregisterObserver:context:]"}];
  }

  observersWithContexts = [(PXAssetEditOperationManager *)self observersWithContexts];
  v8 = [observersWithContexts objectForKey:observerCopy];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while ([v8 pointerAtIndex:v11] != context)
    {
      if (v10 == ++v11)
      {
        goto LABEL_9;
      }
    }

    [v8 removePointerAtIndex:v11];
  }

LABEL_9:
  if (v8 && ![v8 count])
  {
    [observersWithContexts removeObjectForKey:observerCopy];
  }
}

- (void)registerObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:235 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager registerObserver:context:]"}];
  }

  observersWithContexts = [(PXAssetEditOperationManager *)self observersWithContexts];
  v8 = [observersWithContexts objectForKey:observerCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:256];
    [observersWithContexts setObject:v9 forKey:observerCopy];
  }

  [v9 addPointer:context];
}

- (void)enumerateEditOperationsPerformedOnAsset:(id)asset usingBlock:(id)block
{
  assetCopy = asset;
  blockCopy = block;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:223 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager enumerateEditOperationsPerformedOnAsset:usingBlock:]"}];

    if (!assetCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (assetCopy)
  {
LABEL_3:
    pendingPerformersByAsset = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    v10 = [pendingPerformersByAsset objectForKeyedSubscript:assetCopy];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PXAssetEditOperationManager_enumerateEditOperationsPerformedOnAsset_usingBlock___block_invoke;
    v12[3] = &unk_1E7748DE0;
    v13 = blockCopy;
    [v10 enumerateObjectsUsingBlock:v12];
  }

LABEL_4:
}

void __82__PXAssetEditOperationManager_enumerateEditOperationsPerformedOnAsset_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v6 editOperationType];
  v7 = [v6 progress];

  (*(v5 + 16))(v5, v8, v7, a4);
}

- (Class)_performerClassForEditOperationWithType:(id)type onAsset:(id)asset
{
  typeCopy = type;
  assetCopy = asset;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXAssetEditOperationManager__performerClassForEditOperationWithType_onAsset___block_invoke;
  v12[3] = &unk_1E7748DB8;
  v8 = assetCopy;
  v13 = v8;
  v9 = typeCopy;
  v14 = v9;
  v15 = &v16;
  [(PXAssetEditOperationManager *)self _enumeratePredicateRecordsWithBlock:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __79__PXAssetEditOperationManager__performerClassForEditOperationWithType_onAsset___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 predicate];
  v6 = v5[2](v5, a1[4], a1[5]);

  if (v6)
  {
    *(*(a1[6] + 8) + 24) = [v7 performerClass];
    *a3 = 1;
  }
}

- (id)_performerForEditOperationWithType:(id)type onAsset:(id)asset
{
  assetCopy = asset;
  typeCopy = type;
  v8 = [objc_alloc(-[PXAssetEditOperationManager _performerClassForEditOperationWithType:onAsset:](self _performerClassForEditOperationWithType:typeCopy onAsset:{assetCopy)), "initWithEditOperationType:asset:", typeCopy, assetCopy}];

  return v8;
}

- (int64_t)editOperationStatusForAsset:(id)asset
{
  assetCopy = asset;
  operationStatusByAsset = [(PXAssetEditOperationManager *)self operationStatusByAsset];
  v6 = [operationStatusByAsset objectForKeyedSubscript:assetCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (void)registerPerformerClass:(Class)class withPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [[_PXAssetEditOperationPredicateRecord alloc] initWithPerformerClass:class predicate:predicateCopy];

  os_unfair_lock_lock(&self->_predicateRecordsLock);
  [(NSMutableArray *)self->_predicateRecords addObject:v7];
  os_unfair_lock_unlock(&self->_predicateRecordsLock);
}

- (id)performEditOperationWithType:(id)type asset:(id)asset undoManager:(id)manager delay:(double)delay completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCopy = asset;
  managerCopy = manager;
  handlerCopy = handler;
  if ([(PXAssetEditOperationManager *)self canPerformEditOperationWithType:typeCopy onAsset:assetCopy]&& ([(PXAssetEditOperationManager *)self _performerForEditOperationWithType:typeCopy onAsset:assetCopy], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(PXAssetEditOperationManager *)self _addPendingPerformer:v16];
    objc_initWeak(location, self);
    objc_initWeak(&from, v16);
    v17 = typeCopy;
    v18 = assetCopy;
    [v17 hash];
    kdebug_trace();

    [(PXAssetEditOperationManager *)self _updateOperationStatusForAsset:v18];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7748D90;
    v19 = v16;
    v33 = v19;
    v34 = managerCopy;
    v37[1] = v16;
    objc_copyWeak(&v36, location);
    objc_copyWeak(v37, &from);
    v35 = handlerCopy;
    v20 = _Block_copy(aBlock);
    v21 = v20;
    if (delay <= 0.0)
    {
      (*(v20 + 2))(v20);
    }

    else
    {
      v22 = dispatch_time(0, (delay * 1000000000.0));
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke_3;
      v30 = &unk_1E774C250;
      v31 = v21;
      dispatch_after(v22, MEMORY[0x1E69E96A0], &v27);
    }

    objc_destroyWeak(v37);
    objc_destroyWeak(&v36);

    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = PLUIGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *location = 138412546;
      *&location[4] = typeCopy;
      v40 = 2112;
      v41 = assetCopy;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "no performer found for edit operation with type %@ on asset %@", location, 0x16u);
    }

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photosuicore.PXAssetEditOperationManager" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v24);

    v19 = 0;
  }

  progress = [v19 progress];

  return progress;
}

void __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7748D68;
  v7[1] = *(a1 + 72);
  objc_copyWeak(&v6, (a1 + 56));
  objc_copyWeak(v7, (a1 + 64));
  v5 = *(a1 + 48);
  [v2 executeWithUndoManager:v3 completionHandler:v4];

  objc_destroyWeak(v7);
  objc_destroyWeak(&v6);
}

void __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCompletionOfPerformer:v6 withSuccess:a2 error:v5 externalCompletionHandler:*(a1 + 32)];
}

- (void)_enumeratePredicateRecordsWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_predicateRecordsLock);
  v5 = [(NSMutableArray *)self->_predicateRecords copy];
  os_unfair_lock_unlock(&self->_predicateRecordsLock);
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10), &v15);
      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (PXAssetEditOperationManager)init
{
  v13.receiver = self;
  v13.super_class = PXAssetEditOperationManager;
  v2 = [(PXAssetEditOperationManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_predicateRecordsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    operationStatusByAsset = v3->_operationStatusByAsset;
    v3->_operationStatusByAsset = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingPerformersByAsset = v3->_pendingPerformersByAsset;
    v3->_pendingPerformersByAsset = v6;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observersWithContexts = v3->_observersWithContexts;
    v3->_observersWithContexts = weakToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    predicateRecords = v3->_predicateRecords;
    v3->_predicateRecords = v10;

    if (objc_opt_respondsToSelector())
    {
      [(PXAssetEditOperationManager *)v3 registerAdditionalPerformers];
    }
  }

  return v3;
}

+ (PXAssetEditOperationManager)sharedManager
{
  if (sharedManager_onceToken_231736 != -1)
  {
    dispatch_once(&sharedManager_onceToken_231736, &__block_literal_global_24_231737);
  }

  v3 = sharedManager_sharedManager_231738;

  return v3;
}

void __44__PXAssetEditOperationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PXAssetEditOperationManager);
  v1 = sharedManager_sharedManager_231738;
  sharedManager_sharedManager_231738 = v0;
}

@end