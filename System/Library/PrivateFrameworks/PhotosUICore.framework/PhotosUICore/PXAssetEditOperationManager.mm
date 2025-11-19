@interface PXAssetEditOperationManager
+ (PXAssetEditOperationManager)sharedManager;
- (Class)_performerClassForEditOperationWithType:(id)a3 onAsset:(id)a4;
- (PXAssetEditOperationManager)init;
- (id)_performerForEditOperationWithType:(id)a3 onAsset:(id)a4;
- (id)performEditOperationWithType:(id)a3 asset:(id)a4 undoManager:(id)a5 delay:(double)a6 completionHandler:(id)a7;
- (int64_t)editOperationStatusForAsset:(id)a3;
- (void)_addPendingPerformer:(id)a3;
- (void)_enumerateObserversUsingBlock:(id)a3;
- (void)_enumeratePredicateRecordsWithBlock:(id)a3;
- (void)_handleCompletionOfPerformer:(id)a3 withSuccess:(BOOL)a4 error:(id)a5 externalCompletionHandler:(id)a6;
- (void)_removePendingPerformer:(id)a3;
- (void)_signalPendingPerformersChangeForAsset:(id)a3;
- (void)_signalStatusChangeForAsset:(id)a3;
- (void)_updateOperationStatusForAsset:(id)a3;
- (void)enumerateEditOperationsPerformedOnAsset:(id)a3 usingBlock:(id)a4;
- (void)registerObserver:(id)a3 context:(void *)a4;
- (void)registerPerformerClass:(Class)a3 withPredicate:(id)a4;
- (void)unregisterObserver:(id)a3 context:(void *)a4;
@end

@implementation PXAssetEditOperationManager

- (void)_handleCompletionOfPerformer:(id)a3 withSuccess:(BOOL)a4 error:(id)a5 externalCompletionHandler:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v9;
  v12 = v10;
  v13 = v8;
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

- (void)_signalPendingPerformersChangeForAsset:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXAssetEditOperationManager__signalPendingPerformersChangeForAsset___block_invoke;
  v6[3] = &unk_1E7748E30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_signalStatusChangeForAsset:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXAssetEditOperationManager__signalStatusChangeForAsset___block_invoke;
  v6[3] = &unk_1E7748E30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_updateOperationStatusForAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PXAssetEditOperationManager__updateOperationStatusForAsset___block_invoke;
  v10[3] = &unk_1E7748E08;
  v10[4] = &v11;
  [(PXAssetEditOperationManager *)self enumerateEditOperationsPerformedOnAsset:v4 usingBlock:v10];
  v5 = [(PXAssetEditOperationManager *)self operationStatusByAsset];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = v12[3];
  if (v7 != [v6 integerValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v12[3]];
    v9 = [(PXAssetEditOperationManager *)self operationStatusByAsset];
    [v9 setObject:v8 forKeyedSubscript:v4];

    [(PXAssetEditOperationManager *)self _signalStatusChangeForAsset:v4];
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

- (void)_removePendingPerformer:(id)a3
{
  v4 = a3;
  v8 = [v4 asset];
  v5 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
  v6 = [v5 objectForKeyedSubscript:v8];

  [v6 removeObject:v4];
  if (![v6 count])
  {
    v7 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    [v7 removeObjectForKey:v8];
  }

  [(PXAssetEditOperationManager *)self _signalPendingPerformersChangeForAsset:v8];
}

- (void)_addPendingPerformer:(id)a3
{
  v8 = a3;
  v4 = [v8 asset];
  v5 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }

  [v6 addObject:v8];
  [(PXAssetEditOperationManager *)self _signalPendingPerformersChangeForAsset:v4];
}

- (void)_enumerateObserversUsingBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetEditOperationManager *)self observersWithContexts];
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v12 = [v5 objectForKey:v11];
      if ([v12 count])
      {
        v13 = 0;
        do
        {
          v4[2](v4, v11, [v12 pointerAtIndex:v13], &v19);
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
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)unregisterObserver:(id)a3 context:(void *)a4
{
  v13 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:246 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager unregisterObserver:context:]"}];
  }

  v7 = [(PXAssetEditOperationManager *)self observersWithContexts];
  v8 = [v7 objectForKey:v13];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while ([v8 pointerAtIndex:v11] != a4)
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
    [v7 removeObjectForKey:v13];
  }
}

- (void)registerObserver:(id)a3 context:(void *)a4
{
  v11 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:235 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager registerObserver:context:]"}];
  }

  v7 = [(PXAssetEditOperationManager *)self observersWithContexts];
  v8 = [v7 objectForKey:v11];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:256];
    [v7 setObject:v9 forKey:v11];
  }

  [v9 addPointer:a4];
}

- (void)enumerateEditOperationsPerformedOnAsset:(id)a3 usingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXAssetEditOperationManager.m" lineNumber:223 description:{@"%s must be called on the main thread", "-[PXAssetEditOperationManager enumerateEditOperationsPerformedOnAsset:usingBlock:]"}];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    v9 = [(PXAssetEditOperationManager *)self pendingPerformersByAsset];
    v10 = [v9 objectForKeyedSubscript:v7];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PXAssetEditOperationManager_enumerateEditOperationsPerformedOnAsset_usingBlock___block_invoke;
    v12[3] = &unk_1E7748DE0;
    v13 = v8;
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

- (Class)_performerClassForEditOperationWithType:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXAssetEditOperationManager__performerClassForEditOperationWithType_onAsset___block_invoke;
  v12[3] = &unk_1E7748DB8;
  v8 = v7;
  v13 = v8;
  v9 = v6;
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

- (id)_performerForEditOperationWithType:(id)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(-[PXAssetEditOperationManager _performerClassForEditOperationWithType:onAsset:](self _performerClassForEditOperationWithType:v7 onAsset:{v6)), "initWithEditOperationType:asset:", v7, v6}];

  return v8;
}

- (int64_t)editOperationStatusForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetEditOperationManager *)self operationStatusByAsset];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (void)registerPerformerClass:(Class)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = [[_PXAssetEditOperationPredicateRecord alloc] initWithPerformerClass:a3 predicate:v6];

  os_unfair_lock_lock(&self->_predicateRecordsLock);
  [(NSMutableArray *)self->_predicateRecords addObject:v7];
  os_unfair_lock_unlock(&self->_predicateRecordsLock);
}

- (id)performEditOperationWithType:(id)a3 asset:(id)a4 undoManager:(id)a5 delay:(double)a6 completionHandler:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([(PXAssetEditOperationManager *)self canPerformEditOperationWithType:v12 onAsset:v13]&& ([(PXAssetEditOperationManager *)self _performerForEditOperationWithType:v12 onAsset:v13], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(PXAssetEditOperationManager *)self _addPendingPerformer:v16];
    objc_initWeak(location, self);
    objc_initWeak(&from, v16);
    v17 = v12;
    v18 = v13;
    [v17 hash];
    kdebug_trace();

    [(PXAssetEditOperationManager *)self _updateOperationStatusForAsset:v18];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PXAssetEditOperationManager_performEditOperationWithType_asset_undoManager_delay_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7748D90;
    v19 = v16;
    v33 = v19;
    v34 = v14;
    v37[1] = v16;
    objc_copyWeak(&v36, location);
    objc_copyWeak(v37, &from);
    v35 = v15;
    v20 = _Block_copy(aBlock);
    v21 = v20;
    if (a6 <= 0.0)
    {
      (*(v20 + 2))(v20);
    }

    else
    {
      v22 = dispatch_time(0, (a6 * 1000000000.0));
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
      *&location[4] = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "no performer found for edit operation with type %@ on asset %@", location, 0x16u);
    }

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photosuicore.PXAssetEditOperationManager" code:1 userInfo:0];
    (*(v15 + 2))(v15, 0, v24);

    v19 = 0;
  }

  v25 = [v19 progress];

  return v25;
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

- (void)_enumeratePredicateRecordsWithBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      v4[2](v4, *(*(&v11 + 1) + 8 * v10), &v15);
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

    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observersWithContexts = v3->_observersWithContexts;
    v3->_observersWithContexts = v8;

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