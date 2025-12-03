@interface PXStoryTransientChapterCollectionProducer
- (PXStoryErrorReporter)errorReporter;
- (PXStoryTransientChapterCollectionProducer)initWithStoryQueue:(id)queue;
- (id)_chapterCollectionManagerWithUneditedChapterColection:(id)colection;
- (id)requestChapterCollectionForKeyAsset:(id)asset curatedAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler;
- (id)workQueue_uneditedChapterCollectionWithAssets:(id)assets keyAsset:(id)asset;
- (void)_workQueue_persistEditTransaction:(id)transaction;
- (void)chapterCollectionManager:(id)manager didApplyEditTransaction:(id)transaction;
- (void)workQueue_saveEditTransaction:(id)transaction completionHandler:(id)handler;
@end

@implementation PXStoryTransientChapterCollectionProducer

- (PXStoryErrorReporter)errorReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_errorReporter);

  return WeakRetained;
}

- (void)chapterCollectionManager:(id)manager didApplyEditTransaction:(id)transaction
{
  managerCopy = manager;
  transactionCopy = transaction;
  objc_initWeak(&location, self);
  workQueue = [(PXStoryTransientChapterCollectionProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PXStoryTransientChapterCollectionProducer_chapterCollectionManager_didApplyEditTransaction___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v12, &location);
  v11 = transactionCopy;
  v9 = transactionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__PXStoryTransientChapterCollectionProducer_chapterCollectionManager_didApplyEditTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _workQueue_persistEditTransaction:*(a1 + 32)];
}

- (id)requestChapterCollectionForKeyAsset:(id)asset curatedAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler
{
  assetCopy = asset;
  assetsCopy = assets;
  handlerCopy = handler;
  v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  storyQueue = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  objc_initWeak(&location, self);
  workQueue = [(PXStoryTransientChapterCollectionProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PXStoryTransientChapterCollectionProducer_requestChapterCollectionForKeyAsset_curatedAssets_options_resultHandler___block_invoke;
  block[3] = &unk_1E774B220;
  v15 = v12;
  v24 = v15;
  objc_copyWeak(&v29, &location);
  v25 = assetsCopy;
  v26 = assetCopy;
  v27 = storyQueue;
  v28 = handlerCopy;
  v16 = handlerCopy;
  v17 = storyQueue;
  v18 = assetCopy;
  v19 = assetsCopy;
  dispatch_async(workQueue, block);

  v20 = v28;
  v21 = v15;

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v21;
}

void __117__PXStoryTransientChapterCollectionProducer_requestChapterCollectionForKeyAsset_curatedAssets_options_resultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = [WeakRetained workQueue_uneditedChapterCollectionWithAssets:*(a1 + 40) keyAsset:*(a1 + 48)];

    v4 = *(a1 + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __117__PXStoryTransientChapterCollectionProducer_requestChapterCollectionForKeyAsset_curatedAssets_options_resultHandler___block_invoke_2;
    v6[3] = &unk_1E774B1F8;
    v7 = *(a1 + 32);
    v8 = v3;
    v5 = v3;
    objc_copyWeak(&v10, (a1 + 72));
    v9 = *(a1 + 64);
    dispatch_async(v4, v6);

    objc_destroyWeak(&v10);
  }
}

void __117__PXStoryTransientChapterCollectionProducer_requestChapterCollectionForKeyAsset_curatedAssets_options_resultHandler___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (*(a1 + 40))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v4 = [WeakRetained _chapterCollectionManagerWithUneditedChapterColection:*(a1 + 40)];
    }

    else
    {
      v4 = 0;
    }

    v3 = [[PXStoryProducerResult alloc] initWithObject:v4];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)workQueue_saveEditTransaction:(id)transaction completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v14 = NSStringFromClass(v6);
  v13 = PXStoryErrorCreateWithCodeDebugFormat(4, @"%@ doesn't support saving chapter edits", v7, v8, v9, v10, v11, v12, v14);
  (*(handler + 2))(handlerCopy, 0, v13);
}

- (void)_workQueue_persistEditTransaction:(id)transaction
{
  transactionCopy = transaction;
  storyQueue = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  errorReporter = [(PXStoryTransientChapterCollectionProducer *)self errorReporter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PXStoryTransientChapterCollectionProducer__workQueue_persistEditTransaction___block_invoke;
  v9[3] = &unk_1E774B730;
  v10 = storyQueue;
  v11 = errorReporter;
  v7 = errorReporter;
  v8 = storyQueue;
  [(PXStoryTransientChapterCollectionProducer *)self workQueue_saveEditTransaction:transactionCopy completionHandler:v9];
}

void __79__PXStoryTransientChapterCollectionProducer__workQueue_persistEditTransaction___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed to persist chapter collection edits: %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__PXStoryTransientChapterCollectionProducer__workQueue_persistEditTransaction___block_invoke_6;
    v8[3] = &unk_1E774C620;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v5;
    dispatch_async(v7, v8);
  }
}

- (id)_chapterCollectionManagerWithUneditedChapterColection:(id)colection
{
  colectionCopy = colection;
  storyQueue = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  transientChapterCollectionManager = self->_transientChapterCollectionManager;
  if (transientChapterCollectionManager)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__PXStoryTransientChapterCollectionProducer__chapterCollectionManagerWithUneditedChapterColection___block_invoke;
    v12[3] = &unk_1E774B1D0;
    v13 = colectionCopy;
    [(PXStoryTransientChapterCollectionManager *)transientChapterCollectionManager performChanges:v12];
  }

  else
  {
    v7 = [[PXStoryTransientChapterCollectionManager alloc] initWithUneditedChapterCollection:colectionCopy];
    v8 = self->_transientChapterCollectionManager;
    self->_transientChapterCollectionManager = v7;

    [(PXStoryTransientChapterCollectionManager *)self->_transientChapterCollectionManager setPersistenceDelegate:self];
  }

  v9 = self->_transientChapterCollectionManager;
  v10 = v9;

  return v9;
}

- (id)workQueue_uneditedChapterCollectionWithAssets:(id)assets keyAsset:(id)asset
{
  assetsCopy = assets;
  assetCopy = asset;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransientChapterCollectionProducer.m" lineNumber:41 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryTransientChapterCollectionProducer workQueue_uneditedChapterCollectionWithAssets:keyAsset:]", v11}];

  abort();
}

- (PXStoryTransientChapterCollectionProducer)initWithStoryQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = PXStoryTransientChapterCollectionProducer;
  v5 = [(PXStoryTransientChapterCollectionProducer *)&v18 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v6;
    }

    else
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v8;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create(uTF8String, v14);
    workQueue = v5->_workQueue;
    v5->_workQueue = v15;
  }

  return v5;
}

@end