@interface VUIMediaLibraryFetchController
+ (id)_logStringWithFetchControllers:(id)a3;
- (BOOL)_updateMutableArray:(id)a3 withLatestObjects:(id)a4 changeSet:(id)a5 updateOnNoChanges:(BOOL)a6;
- (NSString)logName;
- (NSString)logNameSuffix;
- (VUIMediaLibraryFetchController)init;
- (VUIMediaLibraryFetchController)initWithMediaLibrary:(id)a3;
- (id)_fetchOperationForFetchReason:(int64_t)a3;
- (void)_cancelFetch;
- (void)_didCompleteFetchOperation:(id)a3;
- (void)_enqueueAsyncProcessingQueueBlock:(id)a3;
- (void)_enqueueFetchWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)_enqueueProcessingQueueBlock:(id)a3 synchronous:(BOOL)a4;
- (void)_enqueueSyncProcessingQueueBlock:(id)a3;
- (void)_fetchOperationCompleted:(id)a3 withCompletionHandler:(id)a4;
- (void)_moveToPausedState;
- (void)_startFetchIfNeededWithMediaLibraryRevision:(unint64_t)a3 completionHandler:(id)a4;
- (void)_startFetchWithCompletionHandler:(id)a3;
- (void)beginFetchWithMediaLibraryRevision:(unint64_t)a3 completionHandler:(id)a4 completionQueue:(id)a5;
- (void)pause;
@end

@implementation VUIMediaLibraryFetchController

- (VUIMediaLibraryFetchController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibraryFetchController)initWithMediaLibrary:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = VUIMediaLibraryFetchController;
  v6 = [(VUIMediaLibraryFetchController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, a3);
    v7->_mediaLibraryRevision = 0;
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = dispatch_queue_create("com.apple.VideosUI.VUIMediaLibraryFetchController.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v7->_serialProcessingDispatchQueue;
    v7->_serialProcessingDispatchQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialFetchOperationQueue = v7->_serialFetchOperationQueue;
    v7->_serialFetchOperationQueue = v13;

    [(NSOperationQueue *)v7->_serialFetchOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v7;
}

- (NSString)logNameSuffix
{
  logNameSuffix = self->_logNameSuffix;
  if (!logNameSuffix)
  {
    self->_logNameSuffix = &stru_1F5DB25C0;

    logNameSuffix = self->_logNameSuffix;
  }

  return logNameSuffix;
}

- (NSString)logName
{
  logName = self->_logName;
  if (!logName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(VUIMediaLibraryFetchController *)self mediaLibrary];
    v6 = [v5 title];
    v7 = [(VUIMediaLibraryFetchController *)self logNameSuffix];
    v8 = [v4 stringWithFormat:@"%p-%@-%@", self, v6, v7];
    v9 = self->_logName;
    self->_logName = v8;

    logName = self->_logName;
  }

  return logName;
}

- (void)pause
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__VUIMediaLibraryFetchController_pause__block_invoke;
  v2[3] = &unk_1E8733280;
  v2[4] = self;
  [(VUIMediaLibraryFetchController *)self _enqueueSyncProcessingQueueBlock:v2];
}

void __39__VUIMediaLibraryFetchController_pause__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (!v4)
  {
LABEL_7:
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 logName];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "[%@] - Received pause request while in the ready state. Will move to paused state", &v12, 0xCu);
    }

    [v3 _moveToPausedState];
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_13;
    }

    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 logName];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[%@] - Received pause request while fetching. Will cancel fetch and move to paused state", &v12, 0xCu);
    }

    [*(a1 + 32) _cancelFetch];
    [*(a1 + 32) _moveToPausedState];
    goto LABEL_7;
  }

  v9 = [v3 pauseCount] + 1;
  [v3 setPauseCount:v9];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 logName];
    v12 = 138412546;
    v13 = v11;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "[%@] - Received pause request while already in the puased state. Incremented paused count [%lu]", &v12, 0x16u);
  }

LABEL_13:
}

void __40__VUIMediaLibraryFetchController_resume__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 state];
  switch(v3)
  {
    case 0:
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v2 logName];
        v12 = 138412290;
        v13 = v9;
        v10 = "[%@] - Ignoring resume request for fetch controller as it is in the ready state";
        goto LABEL_12;
      }

LABEL_15:

      break;
    case 1:
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v2 logName];
        v12 = 138412290;
        v13 = v9;
        v10 = "[%@] - Ignoring resume request for fetch controller as it is fetching";
LABEL_12:
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);

        goto LABEL_15;
      }

      goto LABEL_15;
    case 2:
      v4 = [v2 pauseCount];
      if (!v4)
      {
        v6 = VUIDefaultLogObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __40__VUIMediaLibraryFetchController_resume__block_invoke_cold_1(v2, v6);
        }

        goto LABEL_15;
      }

      v5 = v4 - 1;
      [v2 setPauseCount:v4 - 1];
      v6 = VUIDefaultLogObject();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v8 = [v2 logName];
          v12 = 138412546;
          v13 = v8;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Decremented pause count for fetch controller. Decremented Count [%lu]", &v12, 0x16u);
        }

        goto LABEL_15;
      }

      if (v7)
      {
        v11 = [v2 logName];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Returning fetch controller to the ready state", &v12, 0xCu);
      }

      [v2 setState:0];
      break;
  }
}

- (void)beginFetchWithMediaLibraryRevision:(unint64_t)a3 completionHandler:(id)a4 completionQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionQueue"}];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke;
  aBlock[3] = &unk_1E87332F0;
  objc_copyWeak(v21, &location);
  v21[1] = a3;
  v11 = v10;
  v19 = v11;
  v12 = v8;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke_23;
  v15[3] = &unk_1E8733318;
  v14 = v13;
  v16 = v14;
  v17 = a3;
  [(VUIMediaLibraryFetchController *)self _enqueueSyncProcessingQueueBlock:v15];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!a2)
    {
      [WeakRetained setMediaLibraryRevision:*(a1 + 56)];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke_2;
    v9[3] = &unk_1E87332C8;
    v9[4] = v7;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = a2;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

uint64_t __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logName];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "[%@] - Calling completion handler", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

void __103__VUIMediaLibraryFetchController_beginFetchWithMediaLibraryRevision_completionHandler_completionQueue___block_invoke_23(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 logName];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[%@] - Received begin fetch request for a controller that is already fetching. Will ignore", &v10, 0xCu);
      }

      goto LABEL_9;
    }

    if (v4 == 2)
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 logName];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[%@] - Ignoring begin fetch request as the controller is paused", &v10, 0xCu);
      }

LABEL_9:

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 logName];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] - Received begin fetch request for a controller that is in the ready state. Will start new fetch if required", &v10, 0xCu);
    }

    [v3 _startFetchIfNeededWithMediaLibraryRevision:*(a1 + 40) completionHandler:*(a1 + 32)];
  }
}

+ (id)_logStringWithFetchControllers:(id)a3
{
  v3 = [a3 valueForKey:@"logName"];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (id)_fetchOperationForFetchReason:(int64_t)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];

  v6 = objc_alloc_init(MEMORY[0x1E696ADC0]);

  return v6;
}

- (void)_didCompleteFetchOperation:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ method needs to be override by a subclass.", v5}];
}

- (BOOL)_updateMutableArray:(id)a3 withLatestObjects:(id)a4 changeSet:(id)a5 updateOnNoChanges:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    [v9 vui_applyChangeSet:v11 destinationObjects:v10];
LABEL_5:
    LOBYTE(v6) = 1;
    goto LABEL_6;
  }

  if (v6)
  {
    [v9 removeAllObjects];
    [v9 addObjectsFromArray:v10];
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (void)_moveToPausedState
{
  [(VUIMediaLibraryFetchController *)self setState:2];

  [(VUIMediaLibraryFetchController *)self setPauseCount:1];
}

- (void)_cancelFetch
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIMediaLibraryFetchController *)self logName];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "[%@] - Cancelling fetch", &v6, 0xCu);
  }

  v5 = [(VUIMediaLibraryFetchController *)self fetchOperation];
  [(VUIMediaLibraryFetchController *)self setFetchOperation:0];
  [v5 cancel];
}

- (void)_startFetchIfNeededWithMediaLibraryRevision:(unint64_t)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(VUIMediaLibraryFetchController *)self _shouldFetchForMediaLibraryRevision:a3];
  v8 = VUIDefaultLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [(VUIMediaLibraryFetchController *)self logName];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] - Starting fetch", &v12, 0xCu);
    }

    [(VUIMediaLibraryFetchController *)self _startFetchWithCompletionHandler:v6];
    [(VUIMediaLibraryFetchController *)self setState:1];
  }

  else
  {
    if (v9)
    {
      v11 = [(VUIMediaLibraryFetchController *)self logName];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] - New fetch not required as the library contents have not changed", &v12, 0xCu);
    }

    (*(v6 + 2))(v6, 2, 0);
  }
}

- (void)_startFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(VUIMediaLibraryFetchController *)self _enqueueFetchWithReason:[(VUIMediaLibraryFetchController *)self mediaLibraryRevision]!= 0 completionHandler:v4];
}

- (void)_enqueueFetchWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(VUIMediaLibraryFetchController *)self _fetchOperationForFetchReason:a3];
  [(VUIMediaLibraryFetchController *)self setFetchOperation:v7];
  v8 = objc_alloc_init(MEMORY[0x1E696AAE0]);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __76__VUIMediaLibraryFetchController__enqueueFetchWithReason_completionHandler___block_invoke;
  v15 = &unk_1E8733340;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v9 = v7;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  [v8 addExecutionBlock:&v12];
  [v8 addDependency:{v9, v12, v13, v14, v15}];
  v11 = [(VUIMediaLibraryFetchController *)self serialFetchOperationQueue];
  [v11 addOperation:v9];
  [v11 addOperation:v8];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __76__VUIMediaLibraryFetchController__enqueueFetchWithReason_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2)
  {
    [WeakRetained _fetchOperationCompleted:*(a1 + 32) withCompletionHandler:*(a1 + 40)];
  }
}

- (void)_fetchOperationCompleted:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__VUIMediaLibraryFetchController__fetchOperationCompleted_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E8733368;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(VUIMediaLibraryFetchController *)self _enqueueSyncProcessingQueueBlock:v10];
}

void __81__VUIMediaLibraryFetchController__fetchOperationCompleted_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 fetchOperation];

  v6 = VUIDefaultLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (v7)
    {
      v10 = [v3 logName];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Fetch completed. Will process results and move to ready state", &v11, 0xCu);
    }

    [v3 _didCompleteFetchOperation:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    [v3 setState:0];
  }

  else
  {
    if (v7)
    {
      v8 = [v3 logName];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "state")}];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Fetch completed but was cancelled. Will not process results but will remain in current state (%@) and call completion handler", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_enqueueProcessingQueueBlock:(id)a3 synchronous:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__VUIMediaLibraryFetchController__enqueueProcessingQueueBlock_synchronous___block_invoke;
    v11[3] = &unk_1E8733390;
    v8 = &v12;
    v12 = v6;
    [(VUIMediaLibraryFetchController *)self _enqueueSyncProcessingQueueBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__VUIMediaLibraryFetchController__enqueueProcessingQueueBlock_synchronous___block_invoke_2;
    v9[3] = &unk_1E8733390;
    v8 = &v10;
    v10 = v6;
    [(VUIMediaLibraryFetchController *)self _enqueueAsyncProcessingQueueBlock:v9];
  }
}

- (void)_enqueueAsyncProcessingQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryFetchController *)self serialProcessingDispatchQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VUIMediaLibraryFetchController__enqueueAsyncProcessingQueueBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__VUIMediaLibraryFetchController__enqueueAsyncProcessingQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_enqueueSyncProcessingQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryFetchController *)self serialProcessingDispatchQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIMediaLibraryFetchController__enqueueSyncProcessingQueueBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__VUIMediaLibraryFetchController__enqueueSyncProcessingQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __40__VUIMediaLibraryFetchController_resume__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 logName];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "[%@] - Received resume request when we are in the paused state but we have a zero pause count! Ignoring", &v4, 0xCu);
}

@end