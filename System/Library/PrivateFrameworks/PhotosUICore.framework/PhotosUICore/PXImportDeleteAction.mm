@interface PXImportDeleteAction
+ (id)new;
- (BOOL)canDeleteAssets;
- (PXImportController)importController;
- (PXImportDeleteAction)init;
- (PXImportDeleteAction)initWithAssets:(id)a3;
- (id)performAction;
- (void)_handleDeletionFinished:(id)a3;
- (void)_performMockAction;
- (void)_performRealAction;
- (void)_preAction;
- (void)_startObservingDeleteProgress;
- (void)_stopObservingDeleteProgress;
- (void)cancel;
- (void)dealloc;
- (void)didRemoveAssets:(id)a3;
- (void)finish;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendActionProgress:(double)a3;
- (void)start;
@end

@implementation PXImportDeleteAction

- (PXImportController)importController
{
  WeakRetained = objc_loadWeakRetained(&self->_importController);

  return WeakRetained;
}

- (void)sendActionProgress:(double)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"PXImportControllerFractionCompleted";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v16[0] = v4;
  v15[1] = @"PXImportControllerCompletedItemCount";
  v5 = MEMORY[0x1E696AD98];
  progress = self->_progress;
  if (progress)
  {
    v7 = [(NSProgress *)progress completedUnitCount];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 numberWithLongLong:v7];
  v16[1] = v8;
  v15[2] = @"PXImportControllerTotalItemCount";
  v9 = MEMORY[0x1E696AD98];
  v10 = self->_progress;
  if (v10)
  {
    v11 = [(NSProgress *)v10 totalUnitCount];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 numberWithLongLong:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"PXImportControllerProgressNotification" object:self userInfo:v13];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v8;
  px_dispatch_on_main_queue_sync();
}

id __71__PXImportDeleteAction_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 == &PXImportDeleteObserverFractionCompletedContext)
  {
    v8 = [v3 progress];
    [v8 fractionCompleted];
    v10 = v9;

    v11 = _importDataLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v10 * 100.0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Delete action: Progress %.1f%%", buf, 0xCu);
    }

    return [*(a1 + 32) sendActionProgress:v10];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12.receiver = v3;
    v12.super_class = PXImportDeleteAction;
    return objc_msgSendSuper2(&v12, sel_observeValueForKeyPath_ofObject_change_context_, v4, v5, v6);
  }
}

- (void)_stopObservingDeleteProgress
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  progress = self->_progress;
  if (progress)
  {
    [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted" context:&PXImportDeleteObserverFractionCompletedContext];

    [(PXImportDeleteAction *)self sendActionProgress:0.0];
  }
}

- (void)_startObservingDeleteProgress
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSProgress *)self->_progress fractionCompleted];
  [(PXImportDeleteAction *)self sendActionProgress:?];
  progress = self->_progress;

  [(NSProgress *)progress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:&PXImportDeleteObserverFractionCompletedContext];
}

- (void)didRemoveAssets:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  removedAssets = self->_removedAssets;
  if (!removedAssets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_removedAssets;
    self->_removedAssets = v6;

    removedAssets = self->_removedAssets;
  }

  [(NSMutableArray *)removedAssets addObjectsFromArray:v4];
  v8 = [(NSArray *)self->_assets count];
  if (v8 == [(NSMutableArray *)self->_removedAssets count])
  {
    v9 = _importDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NSArray *)self->_assets count];
      v11 = 136446466;
      v12 = "[PXImportDeleteAction didRemoveAssets:]";
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s] All %tu assets removed. Finishing delete action.", &v11, 0x16u);
    }

    [(PXImportDeleteAction *)self finish];
  }
}

- (void)_performMockAction
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_assets count];
    *buf = 136446466;
    *&buf[4] = "[PXImportDeleteAction _performMockAction]";
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s] will (mock) delete %lu", buf, 0x16u);
  }

  v5 = [(PXImportDeleteAction *)self importController];
  if (!v5)
  {
    _PFAssertContinueHandler();
  }

  v6 = [(PXImportDeleteAction *)self importController];
  v26 = [v6 importSource];

  if (!v26)
  {
    _PFAssertContinueHandler();
  }

  v7 = [(PXImportDeleteAction *)self importController];
  if (([v7 conformsToProtocol:&unk_1F19BDF30] & 1) == 0)
  {
    _PFAssertContinueHandler();
  }

  v25 = [(PXImportDeleteAction *)self importController];
  v8 = [(NSArray *)self->_assets count];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  v9 = [(PXImportDeleteAction *)self progress];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{-[NSArray count](self->_assets, "count")}];
    [(PXImportDeleteAction *)self setProgress:v11];
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = fmin((v8 / 5), 50.0);
  v24 = v15;
  do
  {
    if (!v14)
    {
      v14 = objc_opt_new();
    }

    v16 = [(NSArray *)self->_assets objectAtIndex:v12];
    [v14 addObject:v16];
    v17 = [(NSArray *)self->_assets lastObject];

    if ([v14 count] >= v15 || v16 == v17)
    {
      if ([v14 count])
      {
        v18 = [v14 copy];
        v27 = v13 + 1;
        v19 = dispatch_time(0, 1000000000 * (v13 + 1));
        v20 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__PXImportDeleteAction__performMockAction__block_invoke;
        block[3] = &unk_1E772DD00;
        v29 = v18;
        v34 = v16 == v17;
        v30 = v25;
        v21 = v26;
        v32 = self;
        v33 = buf;
        v31 = v21;
        v22 = v18;
        v23 = v19;
        v13 = v27;
        dispatch_after(v23, v20, block);

        v15 = v24;
        v14 = 0;
      }
    }

    ++v12;
  }

  while (v16 != v17);

  _Block_object_dispose(buf, 8);
}

void __42__PXImportDeleteAction__performMockAction__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _importDataLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 72);
    *buf = 134218240;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Fake delete of %lu items (done=%d)", buf, 0x12u);
  }

  [*(a1 + 40) importSource:*(a1 + 48) didRemoveAssets:*(a1 + 32)];
  *(*(*(a1 + 64) + 8) + 24) += [*(a1 + 32) count];
  px_dispatch_on_main_queue_sync();
}

void __42__PXImportDeleteAction__performMockAction__block_invoke_43(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  v2 = [*(a1 + 32) progress];
  [v2 setCompletedUnitCount:v1];
}

- (void)_handleDeletionFinished:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _importDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PXImportDeleteAction _handleDeletionFinished:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[%s] did delete completed", &v6, 0xCu);
  }

  [(PXImportDeleteAction *)self setProgress:0];
  [(PXImportDeleteAction *)self setDidSucceed:v4 == 0];
  [(PXImportDeleteAction *)self setError:v4];
}

- (void)_performRealAction
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_assets count];
    *buf = 136446466;
    v12 = "[PXImportDeleteAction _performRealAction]";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}s] will delete %lu", buf, 0x16u);
  }

  if ([(NSArray *)self->_assets count])
  {
    v5 = [(PXImportDeleteAction *)self importController];
    v6 = [v5 importSource];

    if (!v6)
    {
      _PFAssertContinueHandler();
    }

    objc_initWeak(buf, self);
    assets = self->_assets;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__PXImportDeleteAction__performRealAction__block_invoke;
    v9[3] = &unk_1E774A020;
    objc_copyWeak(&v10, buf);
    v8 = [v6 deleteImportAssets:assets isConfirmed:1 atEnd:v9];
    [(PXImportDeleteAction *)self setProgress:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __42__PXImportDeleteAction__performRealAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeletionFinished:v3];
}

- (void)_preAction
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXImportDeleteAction *)self sessionUuid];
  v4 = [(PXImportDeleteAction *)self importController];
  v5 = [v4 dataSourceManager];
  v6 = [v5 dataSource];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_assets;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) uuid];
        v12 = [v6 itemForImportAssetUuid:v11];

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __34__PXImportDeleteAction__preAction__block_invoke;
        v14[3] = &unk_1E77414C0;
        v15 = v3;
        [v12 performChanges:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (BOOL)canDeleteAssets
{
  v2 = +[PXImportSettings sharedInstance];
  v3 = [v2 disableAssetDeletion];

  return v3 ^ 1;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[PXImportDeleteAction cancel]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%s] Cancel delete action", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PXImportDeleteAction;
  [(PXImportDeleteAction *)&v4 cancel];
}

- (id)performAction
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _importDataLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "[PXImportDeleteAction performAction]";
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "[%s] Performing delete action", buf, 0xCu);
  }

  px_dispatch_on_main_queue_sync();
}

- (void)finish
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[PXImportDeleteAction finish]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%s] Finish delete action", buf, 0xCu);
  }

  [(PXImportDeleteAction *)self setProgress:0];
  v4.receiver = self;
  v4.super_class = PXImportDeleteAction;
  [(PXImportConcurrentAction *)&v4 finish];
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_assets count];
    *buf = 136315394;
    v7 = "[PXImportDeleteAction start]";
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%s] Starting delete action with %tu assets", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = PXImportDeleteAction;
  [(PXImportConcurrentAction *)&v5 start];
}

void *__36__PXImportDeleteAction_setProgress___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[38] != *(a1 + 40))
  {
    [result _stopObservingDeleteProgress];
    objc_storeStrong((*(a1 + 32) + 304), *(a1 + 40));
    v3 = *(a1 + 32);

    return [v3 _startObservingDeleteProgress];
  }

  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _importDataLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[PXImportDeleteAction dealloc]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "[%s]", buf, 0xCu);
  }

  [(PXImportDeleteAction *)self setProgress:0];
  v4.receiver = self;
  v4.super_class = PXImportDeleteAction;
  [(PXImportDeleteAction *)&v4 dealloc];
}

- (PXImportDeleteAction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImportDeleteAction.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXImportDeleteAction init]"}];

  abort();
}

- (PXImportDeleteAction)initWithAssets:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PXImportDeleteAction;
  v5 = [(PXImportDeleteAction *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    sessionUuid = v5->_sessionUuid;
    v5->_sessionUuid = v9;
  }

  return v5;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXImportDeleteAction.m" lineNumber:49 description:{@"%s is not available as initializer", "+[PXImportDeleteAction new]"}];

  abort();
}

@end