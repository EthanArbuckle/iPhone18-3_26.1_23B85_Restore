@interface PXImportMediaLoadingCoordinator
- (PXImportController)importController;
- (PXImportMediaLoadingCoordinator)initWithImportController:(id)controller;
- (id)dequeueNextThumbnailWorkItem;
- (void)_processItemIfPossible;
- (void)handleNewDataSource:(id)source;
- (void)mediaProviderThumbnailingBecameIdle:(id)idle;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setPaused:(BOOL)paused;
- (void)shutdown;
@end

@implementation PXImportMediaLoadingCoordinator

- (PXImportController)importController
{
  WeakRetained = objc_loadWeakRetained(&self->_importController);

  return WeakRetained;
}

- (void)mediaProviderThumbnailingBecameIdle:(id)idle
{
  if ([(PXImportMediaLoadingCoordinator *)self paused])
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v4 = "skipping: paused";
LABEL_10:
      _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, v4, buf, 2u);
    }
  }

  else
  {
    completedDataSourceIdentifier = [(PXImportMediaLoadingCoordinator *)self completedDataSourceIdentifier];
    dataSource = [(PXImportMediaLoadingCoordinator *)self dataSource];
    identifier = [dataSource identifier];

    if (completedDataSourceIdentifier == identifier)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v4 = "skipping: current datasource completed";
        goto LABEL_10;
      }
    }

    else
    {
      workerQueue = self->_workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__PXImportMediaLoadingCoordinator_mediaProviderThumbnailingBecameIdle___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(workerQueue, block);
    }
  }
}

void __71__PXImportMediaLoadingCoordinator_mediaProviderThumbnailingBecameIdle___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dequeueNextThumbnailWorkItem];
  if (v2 && ([*(a1 + 32) paused] & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v2;
      _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, "firing lazy loading image request for %@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) importController];
    v9 = [v8 importMediaProvider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__PXImportMediaLoadingCoordinator_mediaProviderThumbnailingBecameIdle___block_invoke_20;
    v10[3] = &unk_1E77491E8;
    v10[4] = *(a1 + 32);
    [v9 requestImageForImportItem:v2 ofSize:0 completion:v10];
  }

  else
  {
    v3 = [*(a1 + 32) thumbnailWorkItemUuids];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [*(a1 + 32) dataSource];
      [*(a1 + 32) setCompletedDataSourceIdentifier:{objc_msgSend(v5, "identifier")}];

      v6 = [*(a1 + 32) importController];
      v7 = [v6 importMediaProvider];
      [v7 ppt_sendMediaProviderDidProcessAsset:&unk_1F190F788];

      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, "nothing left to lazy loading", buf, 2u);
      }
    }
  }
}

void __71__PXImportMediaLoadingCoordinator_mediaProviderThumbnailingBecameIdle___block_invoke_20(uint64_t a1)
{
  v1 = [*(a1 + 32) importController];
  [v1 restartTimedAssetsLoadingPowerAssertion];
}

- (void)_processItemIfPossible
{
  importController = [(PXImportMediaLoadingCoordinator *)self importController];
  importMediaProvider = [importController importMediaProvider];
  [importMediaProvider sendMediaProviderThumbnailingBecameIdle];
}

- (id)dequeueNextThumbnailWorkItem
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__233853;
  v11 = __Block_byref_object_dispose__233854;
  v12 = 0;
  modelQueue = self->_modelQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PXImportMediaLoadingCoordinator_dequeueNextThumbnailWorkItem__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(modelQueue, v6);
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    v5 = v8[5];
    *buf = 136315394;
    v14 = "[PXImportMediaLoadingCoordinator dequeueNextThumbnailWorkItem]";
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, "%s: Lazy loader candidate %@", buf, 0x16u);
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __63__PXImportMediaLoadingCoordinator_dequeueNextThumbnailWorkItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailWorkItemUuids];
  v3 = [v2 copy];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PXImportMediaLoadingCoordinator_dequeueNextThumbnailWorkItem__block_invoke_2;
  v4[3] = &unk_1E77491C0;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __63__PXImportMediaLoadingCoordinator_dequeueNextThumbnailWorkItem__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 itemForImportAssetUuid:v15];

  v8 = [v7 thumbnailError];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 thumbnailError];
    v11 = [v10 code];

    if (![v7 isMediaAsset] || v11 != 252)
    {
      goto LABEL_8;
    }
  }

  else if (![v7 isMediaAsset])
  {
    goto LABEL_8;
  }

  v12 = [v7 imageRepresentations];
  v13 = [v12 objectForKeyedSubscript:&unk_1F190DD50];

  if (!v13)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    *a4 = 1;
  }

LABEL_8:
  v14 = [*(a1 + 32) thumbnailWorkItemUuids];
  [v14 removeObject:v15];
}

- (void)handleNewDataSource:(id)source
{
  modelQueue = self->_modelQueue;
  sourceCopy = source;
  dispatch_assert_queue_V2(modelQueue);
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, "new datasource", v10, 2u);
  }

  [(PXImportMediaLoadingCoordinator *)self setDataSource:sourceCopy];

  dataSource = [(PXImportMediaLoadingCoordinator *)self dataSource];
  allItems = [dataSource allItems];
  v8 = [allItems valueForKeyPath:@"importAsset.uuid"];
  v9 = [v8 mutableCopy];
  [(PXImportMediaLoadingCoordinator *)self setThumbnailWorkItemUuids:v9];

  [(PXImportMediaLoadingCoordinator *)self _processItemIfPossible];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXImportAssetsDataSourceManagerObserverContext == context)
  {
    v14 = v5;
    v15 = v6;
    v8 = [(PXImportMediaLoadingCoordinator *)self dataSourceManager:observable];
    dataSource = [v8 dataSource];

    modelQueue = self->_modelQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PXImportMediaLoadingCoordinator_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C620;
    v12[4] = self;
    v13 = dataSource;
    v11 = dataSource;
    dispatch_async(modelQueue, v12);
  }
}

- (void)setPaused:(BOOL)paused
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      v5[0] = 67109120;
      v5[1] = pausedCopy;
      _os_log_debug_impl(&dword_1A3C1C000, 0, OS_LOG_TYPE_DEBUG, "paused state changed %d", v5, 8u);
    }

    self->_paused = pausedCopy;
    if (!pausedCopy)
    {
      [(PXImportMediaLoadingCoordinator *)self _processItemIfPossible];
    }
  }
}

- (void)shutdown
{
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager)
  {
    [(PXImportAssetsDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext];
    v4 = self->_dataSourceManager;
    self->_dataSourceManager = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_importController);

  if (WeakRetained)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"PXImportMediaProviderThumbnailingBecameIdleNotification" object:0];

    objc_storeWeak(&self->_importController, 0);
  }

  dataSource = self->_dataSource;
  self->_dataSource = 0;
}

- (PXImportMediaLoadingCoordinator)initWithImportController:(id)controller
{
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = PXImportMediaLoadingCoordinator;
  v5 = [(PXImportMediaLoadingCoordinator *)&v25 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);

    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"%@-modelQueue", v10];
    v12 = dispatch_queue_create([v11 UTF8String], v7);
    modelQueue = v5->_modelQueue;
    v5->_modelQueue = v12;

    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@-workerQueue", v16];
    v18 = dispatch_queue_create([v17 UTF8String], v7);
    workerQueue = v5->_workerQueue;
    v5->_workerQueue = v18;

    v5->_paused = 1;
    objc_storeWeak(&v5->_importController, controllerCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_mediaProviderThumbnailingBecameIdle_ name:@"PXImportMediaProviderThumbnailingBecameIdleNotification" object:0];

    WeakRetained = objc_loadWeakRetained(&v5->_importController);
    if (!WeakRetained)
    {
      _PFAssertContinueHandler();
    }

    dataSourceManager = [controllerCopy dataSourceManager];
    dataSourceManager = v5->_dataSourceManager;
    v5->_dataSourceManager = dataSourceManager;

    [(PXImportAssetsDataSourceManager *)v5->_dataSourceManager registerChangeObserver:v5 context:PXImportAssetsDataSourceManagerObserverContext];
    if (!v5->_dataSourceManager)
    {
      _PFAssertContinueHandler();
    }
  }

  return v5;
}

@end