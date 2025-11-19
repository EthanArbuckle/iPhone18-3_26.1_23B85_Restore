@interface PXStoryTransientChapterCollectionProducer
- (PXStoryErrorReporter)errorReporter;
- (PXStoryTransientChapterCollectionProducer)initWithStoryQueue:(id)a3;
- (id)_chapterCollectionManagerWithUneditedChapterColection:(id)a3;
- (id)requestChapterCollectionForKeyAsset:(id)a3 curatedAssets:(id)a4 options:(unint64_t)a5 resultHandler:(id)a6;
- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4;
- (void)_workQueue_persistEditTransaction:(id)a3;
- (void)chapterCollectionManager:(id)a3 didApplyEditTransaction:(id)a4;
- (void)workQueue_saveEditTransaction:(id)a3 completionHandler:(id)a4;
@end

@implementation PXStoryTransientChapterCollectionProducer

- (PXStoryErrorReporter)errorReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_errorReporter);

  return WeakRetained;
}

- (void)chapterCollectionManager:(id)a3 didApplyEditTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXStoryTransientChapterCollectionProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PXStoryTransientChapterCollectionProducer_chapterCollectionManager_didApplyEditTransaction___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v12, &location);
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__PXStoryTransientChapterCollectionProducer_chapterCollectionManager_didApplyEditTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _workQueue_persistEditTransaction:*(a1 + 32)];
}

- (id)requestChapterCollectionForKeyAsset:(id)a3 curatedAssets:(id)a4 options:(unint64_t)a5 resultHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
  v13 = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  objc_initWeak(&location, self);
  v14 = [(PXStoryTransientChapterCollectionProducer *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PXStoryTransientChapterCollectionProducer_requestChapterCollectionForKeyAsset_curatedAssets_options_resultHandler___block_invoke;
  block[3] = &unk_1E774B220;
  v15 = v12;
  v24 = v15;
  objc_copyWeak(&v29, &location);
  v25 = v10;
  v26 = v9;
  v27 = v13;
  v28 = v11;
  v16 = v11;
  v17 = v13;
  v18 = v9;
  v19 = v10;
  dispatch_async(v14, block);

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

- (void)workQueue_saveEditTransaction:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v14 = NSStringFromClass(v6);
  v13 = PXStoryErrorCreateWithCodeDebugFormat(4, @"%@ doesn't support saving chapter edits", v7, v8, v9, v10, v11, v12, v14);
  (*(a4 + 2))(v5, 0, v13);
}

- (void)_workQueue_persistEditTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  v6 = [(PXStoryTransientChapterCollectionProducer *)self errorReporter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PXStoryTransientChapterCollectionProducer__workQueue_persistEditTransaction___block_invoke;
  v9[3] = &unk_1E774B730;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [(PXStoryTransientChapterCollectionProducer *)self workQueue_saveEditTransaction:v4 completionHandler:v9];
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

- (id)_chapterCollectionManagerWithUneditedChapterColection:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryTransientChapterCollectionProducer *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  transientChapterCollectionManager = self->_transientChapterCollectionManager;
  if (transientChapterCollectionManager)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__PXStoryTransientChapterCollectionProducer__chapterCollectionManagerWithUneditedChapterColection___block_invoke;
    v12[3] = &unk_1E774B1D0;
    v13 = v4;
    [(PXStoryTransientChapterCollectionManager *)transientChapterCollectionManager performChanges:v12];
  }

  else
  {
    v7 = [[PXStoryTransientChapterCollectionManager alloc] initWithUneditedChapterCollection:v4];
    v8 = self->_transientChapterCollectionManager;
    self->_transientChapterCollectionManager = v7;

    [(PXStoryTransientChapterCollectionManager *)self->_transientChapterCollectionManager setPersistenceDelegate:self];
  }

  v9 = self->_transientChapterCollectionManager;
  v10 = v9;

  return v9;
}

- (id)workQueue_uneditedChapterCollectionWithAssets:(id)a3 keyAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXStoryTransientChapterCollectionProducer.m" lineNumber:41 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryTransientChapterCollectionProducer workQueue_uneditedChapterCollectionWithAssets:keyAsset:]", v11}];

  abort();
}

- (PXStoryTransientChapterCollectionProducer)initWithStoryQueue:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXStoryTransientChapterCollectionProducer;
  v5 = [(PXStoryTransientChapterCollectionProducer *)&v18 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create(v12, v14);
    workQueue = v5->_workQueue;
    v5->_workQueue = v15;
  }

  return v5;
}

@end