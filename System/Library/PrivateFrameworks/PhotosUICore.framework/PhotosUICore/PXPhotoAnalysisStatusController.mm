@interface PXPhotoAnalysisStatusController
+ (id)sharedStatusController;
- (BOOL)_isWithinGracePeriod;
- (NSString)stateDescription;
- (PXPhotoAnalysisStatusController)init;
- (void)_dequeueAndPerformBlocks:(id)blocks;
- (void)_handleGraphFractionCompletedReply:(id)reply error:(id)error;
- (void)_handleGraphReadyForSomeTimeForDate:(id)date;
- (void)_handleGraphReadyReplyWithSuccess:(BOOL)success error:(id)error;
- (void)_handleInitialGraceDelay;
- (void)_requestGraphFractionCompleted;
- (void)_requestGraphReady;
- (void)_setDidReceiveGraphFractionCompleted:(BOOL)completed;
- (void)_setGraphError:(id)error;
- (void)_setGraphFractionCompleted:(double)completed;
- (void)_setGraphReady:(BOOL)ready;
- (void)_setGraphStatus:(int64_t)status;
- (void)_setHasBeenReadyForSomeTime:(BOOL)time;
- (void)_updateGraphStatusIfNeeded;
- (void)_updateIfNeeded;
- (void)didPerformChanges;
- (void)registerRetryBlock:(id)block;
- (void)update;
@end

@implementation PXPhotoAnalysisStatusController

- (void)_updateGraphStatusIfNeeded
{
  if (self->_needsUpdateFlags.graphStatus)
  {
    self->_needsUpdateFlags.graphStatus = 0;
    if ([(PXPhotoAnalysisStatusController *)self _isGraphReady])
    {
      [(PXPhotoAnalysisStatusController *)self _setGraphFractionCompleted:0.0];
      v4 = 1;
    }

    else if ([(PXPhotoAnalysisStatusController *)self _isWithinGracePeriod])
    {
      v4 = 0;
    }

    else
    {
      _graphError = [(PXPhotoAnalysisStatusController *)self _graphError];

      if (_graphError)
      {
        v4 = 3;
      }

      else if ([(PXPhotoAnalysisStatusController *)self _didReceiveGraphFractionCompleted])
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }

    [(PXPhotoAnalysisStatusController *)self _setGraphStatus:v4];
  }
}

- (void)_updateIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(PXPhotoAnalysisStatusController *)self _needsUpdate])
  {
    [(PXPhotoAnalysisStatusController *)self _updateGraphStatusIfNeeded];
    v3 = PLMemoriesGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      stateDescription = [(PXPhotoAnalysisStatusController *)self stateDescription];
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = stateDescription;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "[%@] state: %@", &v6, 0x16u);
    }

    if (([(PXPhotoAnalysisStatusController *)self graphStatus]| 2) == 3)
    {
      _retryBlocks = [(PXPhotoAnalysisStatusController *)self _retryBlocks];
      [(PXPhotoAnalysisStatusController *)self _dequeueAndPerformBlocks:_retryBlocks];
    }
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXPhotoAnalysisStatusController;
  [(PXPhotoAnalysisStatusController *)&v3 didPerformChanges];
  [(PXPhotoAnalysisStatusController *)self _updateIfNeeded];
}

- (void)_dequeueAndPerformBlocks:(id)blocks
{
  v15 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  if ([blocksCopy count])
  {
    v4 = [blocksCopy copy];
    [blocksCopy removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_isWithinGracePeriod
{
  _initialUpdateDate = [(PXPhotoAnalysisStatusController *)self _initialUpdateDate];
  [_initialUpdateDate timeIntervalSinceNow];
  v4 = -v3;

  v5 = +[PXModelSettings sharedInstance];
  [v5 photoAnalysisGraphInitialGraceDelay];
  v7 = v6 > v4;

  return v7;
}

- (void)_setGraphError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (self->__graphError != errorCopy)
  {
    v8 = errorCopy;
    v7 = [(NSError *)errorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__graphError, error);
      [(PXPhotoAnalysisStatusController *)self _invalidateGraphStatus];
      v6 = v8;
    }
  }
}

- (void)_setGraphReady:(BOOL)ready
{
  if (self->__graphReady != ready)
  {
    self->__graphReady = ready;
    [(PXPhotoAnalysisStatusController *)self _invalidateGraphStatus];
  }
}

- (void)_setDidReceiveGraphFractionCompleted:(BOOL)completed
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->__didReceiveGraphFractionCompleted != completed)
  {
    completedCopy = completed;
    self->__didReceiveGraphFractionCompleted = completed;
    v5 = PLMemoriesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 1024;
      v9 = completedCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] did receive graph fraction completed=%i", &v6, 0x12u);
    }

    [(PXPhotoAnalysisStatusController *)self _invalidateGraphStatus];
  }
}

- (void)_setGraphFractionCompleted:(double)completed
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_graphFractionCompleted != completed)
  {
    self->_graphFractionCompleted = completed;
    v5 = PLMemoriesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2048;
      v9 = completed * 100.0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] graph fraction completed=%f%%", &v6, 0x16u);
    }

    [(PXPhotoAnalysisStatusController *)self signalChange:2];
    if (completed > 0.0)
    {
      [(PXPhotoAnalysisStatusController *)self _invalidateGraphStatus];
    }
  }
}

- (void)_handleGraphReadyForSomeTimeForDate:(id)date
{
  if (self->__lastGraphBecameReadyDate == date)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__PXPhotoAnalysisStatusController__handleGraphReadyForSomeTimeForDate___block_invoke;
    v5[3] = &unk_1E774C5F8;
    v5[4] = self;
    [(PXPhotoAnalysisStatusController *)self performChanges:v5];
  }
}

- (void)_setGraphStatus:(int64_t)status
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_graphStatus != status)
  {
    self->_graphStatus = status;
    if (status == 1)
    {
      date = [MEMORY[0x1E695DF00] date];
      objc_storeStrong(&self->__lastGraphBecameReadyDate, date);
      objc_initWeak(location, self);
      v6 = dispatch_time(0, 10000000000);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__PXPhotoAnalysisStatusController__setGraphStatus___block_invoke;
      v11[3] = &unk_1E774B248;
      objc_copyWeak(&v13, location);
      v12 = date;
      v7 = date;
      dispatch_after(v6, MEMORY[0x1E69E96A0], v11);

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      lastGraphBecameReadyDate = self->__lastGraphBecameReadyDate;
      self->__lastGraphBecameReadyDate = 0;

      [(PXPhotoAnalysisStatusController *)self _setHasBeenReadyForSomeTime:0];
    }

    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (status > 3)
      {
        v10 = @"?";
      }

      else
      {
        v10 = off_1E7749D98[status];
      }

      *location = 138412546;
      *&location[4] = self;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] graph status=%@", location, 0x16u);
    }

    [(PXPhotoAnalysisStatusController *)self signalChange:1];
  }
}

void __51__PXPhotoAnalysisStatusController__setGraphStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleGraphReadyForSomeTimeForDate:*(a1 + 32)];
}

- (void)_setHasBeenReadyForSomeTime:(BOOL)time
{
  if (self->_hasBeenReadyForSomeTime != time)
  {
    self->_hasBeenReadyForSomeTime = time;
    [(PXPhotoAnalysisStatusController *)self signalChange:4];
  }
}

- (void)_handleGraphFractionCompletedReply:(id)reply error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  errorCopy = error;
  [(PXPhotoAnalysisStatusController *)self _setRequestingGraphFractionCompleted:0];
  v8 = PLMemoriesGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = replyCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[%@] fraction completed=%@ error=%@", buf, 0x20u);
  }

  if (replyCopy && !errorCopy)
  {
    [replyCopy doubleValue];
    v10 = v9 < 1.0;
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__PXPhotoAnalysisStatusController__handleGraphFractionCompletedReply_error___block_invoke;
    v16[3] = &unk_1E7749D78;
    v16[4] = self;
    v16[5] = fmin(v9, 1.0);
    [(PXPhotoAnalysisStatusController *)self performChanges:v16];
    if (v10 && ![(PXPhotoAnalysisStatusController *)self _isGraphReady])
    {
      objc_initWeak(buf, self);
      v11 = +[PXModelSettings sharedInstance];
      [v11 photoAnalysisGraphProgressUpdateInterval];
      v13 = dispatch_time(0, (v12 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__PXPhotoAnalysisStatusController__handleGraphFractionCompletedReply_error___block_invoke_2;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v15, buf);
      dispatch_after(v13, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

uint64_t __76__PXPhotoAnalysisStatusController__handleGraphFractionCompletedReply_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setDidReceiveGraphFractionCompleted:1];
  [*(a1 + 32) _setGraphFractionCompleted:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setGraphError:0];
}

void __76__PXPhotoAnalysisStatusController__handleGraphFractionCompletedReply_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestGraphFractionCompleted];
}

- (void)_requestGraphFractionCompleted
{
  if (![(PXPhotoAnalysisStatusController *)self _isRequestingGraphFractionCompleted])
  {
    [(PXPhotoAnalysisStatusController *)self _setRequestingGraphFractionCompleted:1];
    objc_initWeak(&location, self);
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__PXPhotoAnalysisStatusController__requestGraphFractionCompleted__block_invoke;
    v4[3] = &unk_1E7749D50;
    objc_copyWeak(&v5, &location);
    [px_deprecated_appPhotoLibrary requestGraphRebuildProgressWithCompletion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __65__PXPhotoAnalysisStatusController__requestGraphFractionCompleted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 32));
  v5;
  v6;
  px_dispatch_on_main_queue();
}

void __65__PXPhotoAnalysisStatusController__requestGraphFractionCompleted__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleGraphFractionCompletedReply:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_handleGraphReadyReplyWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PXPhotoAnalysisStatusController__handleGraphReadyReplyWithSuccess_error___block_invoke;
  v8[3] = &unk_1E7749D28;
  successCopy = success;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [(PXPhotoAnalysisStatusController *)self performChanges:v8];
}

void __75__PXPhotoAnalysisStatusController__handleGraphReadyReplyWithSuccess_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setGraphReady:*(a1 + 48)];
  [*(a1 + 32) _setGraphError:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = PLMemoriesGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      *buf = 138412546;
      v13 = v5;
      v14 = 1024;
      LODWORD(v15) = v6;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] graph ready reply success=%i", buf, 0x12u);
    }
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] graph ready reply error=%@", buf, 0x16u);
    }

    if ([*(a1 + 32) _isWithinGracePeriod])
    {
      v9 = PLMemoriesGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v13 = v10;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] within grace period, re-requesting graph ready", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PXPhotoAnalysisStatusController__handleGraphReadyReplyWithSuccess_error___block_invoke_207;
      block[3] = &unk_1E774C648;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_requestGraphReady
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLMemoriesGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] request graph ready", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PXPhotoAnalysisStatusController__requestGraphReady__block_invoke;
  v5[3] = &unk_1E7749D00;
  objc_copyWeak(&v6, buf);
  [px_deprecated_appPhotoLibrary requestGraphReadyNotificationWithCoalescingIdentifier:0 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __53__PXPhotoAnalysisStatusController__requestGraphReady__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v5;
  px_dispatch_on_main_queue();
}

void __53__PXPhotoAnalysisStatusController__requestGraphReady__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleGraphReadyReplyWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)_handleInitialGraceDelay
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__PXPhotoAnalysisStatusController__handleInitialGraceDelay__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXPhotoAnalysisStatusController *)self performChanges:v2];
}

- (NSString)stateDescription
{
  string = [MEMORY[0x1E696AD60] string];
  graphStatus = [(PXPhotoAnalysisStatusController *)self graphStatus];
  if (graphStatus > 3)
  {
    v5 = @"?";
  }

  else
  {
    v5 = off_1E7749D98[graphStatus];
  }

  [string appendFormat:@"Graph Status: %@\n", v5];
  [(PXPhotoAnalysisStatusController *)self graphFractionCompleted];
  [string appendFormat:@"Graph Fraction Completed: %0.2f%%\n", v6 * 100.0];
  _graphError = [(PXPhotoAnalysisStatusController *)self _graphError];
  [string appendFormat:@"Graph Error: %@\n", _graphError];

  if ([(PXPhotoAnalysisStatusController *)self _isWithinGracePeriod])
  {
    [string appendString:@"Within grace period\n"];
  }

  return string;
}

- (void)registerRetryBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PXPhotoAnalysisStatusController_registerRetryBlock___block_invoke;
  v6[3] = &unk_1E7749CB0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PXPhotoAnalysisStatusController *)self performChanges:v6];
}

uint64_t __54__PXPhotoAnalysisStatusController_registerRetryBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _retryBlocks];
  v3 = [*(a1 + 40) copy];
  v4 = _Block_copy(v3);
  [v2 addObject:v4];

  v5 = *(a1 + 32);

  return [v5 update];
}

- (void)update
{
  _initialUpdateDate = [(PXPhotoAnalysisStatusController *)self _initialUpdateDate];

  if (!_initialUpdateDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXPhotoAnalysisStatusController *)self _setInitialUpdateDate:date];

    objc_initWeak(&location, self);
    v5 = +[PXModelSettings sharedInstance];
    [v5 photoAnalysisGraphInitialGraceDelay];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PXPhotoAnalysisStatusController_update__block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v10, &location);
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  [(PXPhotoAnalysisStatusController *)self _requestGraphReady];
  [(PXPhotoAnalysisStatusController *)self _requestGraphFractionCompleted];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PXPhotoAnalysisStatusController_update__block_invoke_2;
  v8[3] = &unk_1E774C5F8;
  v8[4] = self;
  [(PXPhotoAnalysisStatusController *)self performChanges:v8];
}

void __41__PXPhotoAnalysisStatusController_update__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInitialGraceDelay];
}

- (PXPhotoAnalysisStatusController)init
{
  v6.receiver = self;
  v6.super_class = PXPhotoAnalysisStatusController;
  v2 = [(PXPhotoAnalysisStatusController *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    retryBlocks = v2->__retryBlocks;
    v2->__retryBlocks = array;
  }

  return v2;
}

+ (id)sharedStatusController
{
  if (sharedStatusController_onceToken != -1)
  {
    dispatch_once(&sharedStatusController_onceToken, &__block_literal_global_240702);
  }

  v3 = sharedStatusController_sharedStatusController;

  return v3;
}

void __57__PXPhotoAnalysisStatusController_sharedStatusController__block_invoke()
{
  v0 = objc_alloc_init(PXPhotoAnalysisStatusController);
  v1 = sharedStatusController_sharedStatusController;
  sharedStatusController_sharedStatusController = v0;
}

@end