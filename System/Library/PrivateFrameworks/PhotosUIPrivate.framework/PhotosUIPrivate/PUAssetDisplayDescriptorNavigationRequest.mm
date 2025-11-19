@interface PUAssetDisplayDescriptorNavigationRequest
- (BOOL)_needsUpdate;
- (PUAssetDisplayDescriptorNavigationRequest)init;
- (id)_infoMessage;
- (id)_navigationRequestError;
- (void)_assertInsideChangeBlock;
- (void)_assertInsideUpdate;
- (void)_cleanUpWhenDone;
- (void)_finishRequest;
- (void)_invalidateArrived;
- (void)_invalidateDone;
- (void)_invalidateFoundTargetAssetReference;
- (void)_setArrived:(BOOL)a3;
- (void)_setFoundTargetAssetReference:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setSeeked:(BOOL)a3;
- (void)_setTimedOut:(BOOL)a3;
- (void)_updateArrivedIfNeeded;
- (void)_updateCurrentAssetReference;
- (void)_updateDoneIfNeeded;
- (void)_updateFoundTargetAssetReferenceIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSeeking;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)setCompletionHandler:(id)a3;
- (void)setTargetAssetReference:(id)a3;
- (void)setTargetModificationDate:(id)a3;
- (void)setTargetSeekTime:(id *)a3;
- (void)setTimeOut:(double)a3;
- (void)setViewModel:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUAssetDisplayDescriptorNavigationRequest

- (id)_infoMessage
{
  v2 = @"NO";
  if (self->__arrived)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->__timedOut)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->__foundTargetAssetReference)
  {
    v5 = @"NO";
  }

  else
  {
    v5 = @"YES";
  }

  if (self->_hasSeenContentChange)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->__seeked)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Navigation request terminated with success %@, timedOut %@, waiting for dataSource %@, has seen content change %@, seeked %@", v3, v4, v5, v6, v2];
}

- (id)_navigationRequestError
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _arrived])
  {
    v3 = 0;
  }

  else
  {
    if ([(PUAssetDisplayDescriptorNavigationRequest *)self _timedOut])
    {
      if (self->__foundTargetAssetReference)
      {
        v4 = MEMORY[0x1E696ABC0];
        if (self->_hasSeenContentChange)
        {
          v5 = 5;
        }

        else
        {
          v5 = 4;
        }
      }

      else
      {
        v4 = MEMORY[0x1E696ABC0];
        v5 = 3;
      }
    }

    else
    {
      v4 = MEMORY[0x1E696ABC0];
      if (self->_timeOutTimer)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }
    }

    v3 = [v4 errorWithDomain:@"PUAssetDisplayDescriptorNavigationErrorDomain" code:v5 userInfo:0];
  }

  return v3;
}

- (void)_cleanUpWhenDone
{
  [(NSTimer *)self->_timeOutTimer invalidate];
  timeOutTimer = self->_timeOutTimer;
  self->_timeOutTimer = 0;

  [(PUAssetDisplayDescriptorNavigationRequest *)self setCompletionHandler:0];
}

- (void)_finishRequest
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PUAssetDisplayDescriptorNavigationRequest *)self _navigationRequestError];
  v4 = [(PUAssetDisplayDescriptorNavigationRequest *)self _arrived];
  v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _infoMessage];
  v6 = PLOneUpGetLog();
  v7 = v6;
  if (v3 || !v4)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v15 = v5;
    v8 = v7;
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v15 = v5;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B36F3000, v8, v9, "%@", buf, 0xCu);
LABEL_8:

  v10 = [self->_completionHandler copy];
  v11 = v10;
  if (v10)
  {
    v13 = v10;
    v12 = v3;
    px_dispatch_on_main_queue();
  }

  [(PUAssetDisplayDescriptorNavigationRequest *)self _cleanUpWhenDone];
}

- (void)_updateDoneIfNeeded
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateDone])
  {
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateDone:0];
    if ([(PUAssetDisplayDescriptorNavigationRequest *)self _arrived]|| [(PUAssetDisplayDescriptorNavigationRequest *)self _timedOut])
    {

      [(PUAssetDisplayDescriptorNavigationRequest *)self _finishRequest];
    }
  }
}

- (void)_invalidateDone
{
  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateDone:1];

  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdate];
}

- (void)_updateArrivedIfNeeded
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateArrived])
  {
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateArrived:0];
    v3 = [(PUAssetDisplayDescriptorNavigationRequest *)self _foundTargetAssetReference];

    if (v3)
    {
      v4 = [(PUAssetDisplayDescriptorNavigationRequest *)self _seeked];
    }

    else
    {
      v4 = 0;
    }

    [(PUAssetDisplayDescriptorNavigationRequest *)self _setArrived:v4];
  }
}

- (void)_invalidateArrived
{
  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateArrived:1];

  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdate];
}

- (void)_updateFoundTargetAssetReferenceIfNeeded
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateFoundTargetAssetReference])
  {
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateFoundTargetAssetReference:0];
    v3 = [(PUAssetDisplayDescriptorNavigationRequest *)self _foundTargetAssetReference];
    if (!v3)
    {
      v4 = [(PUBrowsingViewModel *)self->_viewModel assetsDataSource];
      v5 = [v4 assetReferenceForAssetReference:self->_targetAssetReference];
      v6 = v5;
      if (v5)
      {
        if (self->_targetModificationDate)
        {
          v7 = [v5 asset];
          v8 = [v7 modificationDate];
          v9 = [v8 compare:self->_targetModificationDate];

          v10 = v9 == 1;
          if (v10)
          {
            v3 = v6;
          }

          else
          {
            v11 = MEMORY[0x1E69E9820];
            v12 = 3221225472;
            v13 = __85__PUAssetDisplayDescriptorNavigationRequest__updateFoundTargetAssetReferenceIfNeeded__block_invoke;
            v14 = &unk_1E7B80C38;
            v15 = self;
            v16 = v6;
            [(PUAssetDisplayDescriptorNavigationRequest *)self performChanges:&v11];

            v3 = 0;
          }

          self->_hasSeenContentChange = v10;
        }

        else
        {
          v3 = v5;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    [(PUAssetDisplayDescriptorNavigationRequest *)self _setFoundTargetAssetReference:v3, v11, v12, v13, v14, v15];
  }
}

- (void)_invalidateFoundTargetAssetReference
{
  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdateFoundTargetAssetReference:1];

  [(PUAssetDisplayDescriptorNavigationRequest *)self _setNeedsUpdate];
}

- (void)_setNeedsUpdate
{
  if (![(PUAssetDisplayDescriptorNavigationRequest *)self _isUpdating]&& ![(PUAssetDisplayDescriptorNavigationRequest *)self _isPerformingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUAssetDisplayDescriptorNavigationRequest.m" lineNumber:284 description:@"not within a change block or update"];
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateFoundTargetAssetReference]|| [(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateArrived])
  {
    return 1;
  }

  return [(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdateDone];
}

- (void)_updateIfNeeded
{
  if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdate])
  {
    v4 = [(PUAssetDisplayDescriptorNavigationRequest *)self _isUpdating];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setUpdating:1];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _updateFoundTargetAssetReferenceIfNeeded];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _updateArrivedIfNeeded];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _updateDoneIfNeeded];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setUpdating:v4];
    if ([(PUAssetDisplayDescriptorNavigationRequest *)self _needsUpdate])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PUAssetDisplayDescriptorNavigationRequest.m" lineNumber:271 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _isPerformingChanges];
  [(PUAssetDisplayDescriptorNavigationRequest *)self _setPerformingChanges:1];
  v4[2](v4);

  [(PUAssetDisplayDescriptorNavigationRequest *)self _setPerformingChanges:v5];
  if (!v5)
  {

    [(PUAssetDisplayDescriptorNavigationRequest *)self _updateIfNeeded];
  }
}

- (void)_assertInsideUpdate
{
  if (![(PUAssetDisplayDescriptorNavigationRequest *)self _isUpdating])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUAssetDisplayDescriptorNavigationRequest.m" lineNumber:244 description:@"not withing update"];
  }
}

- (void)_assertInsideChangeBlock
{
  if (![(PUAssetDisplayDescriptorNavigationRequest *)self _isPerformingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUAssetDisplayDescriptorNavigationRequest.m" lineNumber:239 description:@"not within a change block"];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if ([a4 assetsDataSourceDidChange])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PUAssetDisplayDescriptorNavigationRequest_viewModel_didChange___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __65__PUAssetDisplayDescriptorNavigationRequest_viewModel_didChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PUAssetDisplayDescriptorNavigationRequest_viewModel_didChange___block_invoke_2;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)_setArrived:(BOOL)a3
{
  v3 = a3;
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideUpdate];
  if (self->__arrived != v3)
  {
    self->__arrived = v3;

    [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateDone];
  }
}

- (void)_setTimedOut:(BOOL)a3
{
  v3 = a3;
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  if (self->__timedOut != v3)
  {
    self->__timedOut = v3;

    [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateDone];
  }
}

- (void)_setSeeked:(BOOL)a3
{
  v3 = a3;
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  if (self->__seeked != v3)
  {
    self->__seeked = v3;

    [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateArrived];
  }
}

- (void)_setFoundTargetAssetReference:(id)a3
{
  v7 = a3;
  v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideUpdate];
  v6 = v7;
  if (self->__foundTargetAssetReference != v7)
  {
    v5 = [(PUAssetReference *)v7 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->__foundTargetAssetReference, a3);
      [(PUAssetDisplayDescriptorNavigationRequest *)self _updateCurrentAssetReference];
      [(PUAssetDisplayDescriptorNavigationRequest *)self _updateSeeking];
      v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateArrived];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_updateSeeking
{
  v3 = [(PUAssetDisplayDescriptorNavigationRequest *)self _foundTargetAssetReference];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 asset];
    v6 = [v5 mediaType];

    if (v6 == 2 && (self->_targetSeekTime.flags & 1) != 0)
    {
      v7 = [(PUAssetDisplayDescriptorNavigationRequest *)self viewModel];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke;
      v17[3] = &unk_1E7B80DD0;
      v8 = v7;
      v18 = v8;
      [v8 performChanges:v17];
      v9 = [v8 assetViewModelForAssetReference:v4];
      v10 = [v9 videoPlayer];

      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_2;
      v14[3] = &unk_1E7B7F988;
      objc_copyWeak(&v15, &location);
      v12 = *&self->_targetSeekTime.value;
      epoch = self->_targetSeekTime.epoch;
      [v10 seekToTime:&v12 completionHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_5;
      v11[3] = &unk_1E7B80DD0;
      v11[4] = self;
      [(PUAssetDisplayDescriptorNavigationRequest *)self performChanges:v11];
    }
  }
}

void __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_3;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUAssetDisplayDescriptorNavigationRequest__updateSeeking__block_invoke_4;
  v3[3] = &unk_1E7B80DD0;
  v4 = WeakRetained;
  v2 = WeakRetained;
  [v2 performChanges:v3];
}

- (void)_updateCurrentAssetReference
{
  v3 = [(PUAssetDisplayDescriptorNavigationRequest *)self _foundTargetAssetReference];
  if (v3)
  {
    v4 = [(PUAssetDisplayDescriptorNavigationRequest *)self viewModel];
    v5 = [v4 currentAssetReference];
    if (([v3 isEqual:v5] & 1) == 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __73__PUAssetDisplayDescriptorNavigationRequest__updateCurrentAssetReference__block_invoke;
      v6[3] = &unk_1E7B80C38;
      v7 = v4;
      v8 = v3;
      [v7 performChanges:v6];
    }
  }
}

- (void)setCompletionHandler:(id)a3
{
  if (self->_completionHandler != a3)
  {
    v5 = [a3 copy];
    completionHandler = self->_completionHandler;
    self->_completionHandler = v5;

    MEMORY[0x1EEE66BB8](v5, completionHandler);
  }
}

- (void)setTimeOut:(double)a3
{
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  [(NSTimer *)self->_timeOutTimer invalidate];
  timeOutTimer = self->_timeOutTimer;
  self->_timeOutTimer = 0;

  self->_timeOut = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PUAssetDisplayDescriptorNavigationRequest_setTimeOut___block_invoke;
  v9[3] = &unk_1E7B80610;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v7 = [v6 pu_scheduledTimerWithTimeInterval:0 repeats:v9 block:a3];
  v8 = self->_timeOutTimer;
  self->_timeOutTimer = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __56__PUAssetDisplayDescriptorNavigationRequest_setTimeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PUAssetDisplayDescriptorNavigationRequest_setTimeOut___block_invoke_2;
  v6[3] = &unk_1E7B80DD0;
  v7 = WeakRetained;
  v3 = WeakRetained;
  [v3 performChanges:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (void)setTargetSeekTime:(id *)a3
{
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  time1 = *a3;
  targetSeekTime = self->_targetSeekTime;
  if (CMTimeCompare(&time1, &targetSeekTime))
  {
    v5 = *&a3->var0;
    self->_targetSeekTime.epoch = a3->var3;
    *&self->_targetSeekTime.value = v5;
    [(PUAssetDisplayDescriptorNavigationRequest *)self _setSeeked:0];
  }
}

- (void)setTargetModificationDate:(id)a3
{
  v7 = a3;
  v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  v6 = v7;
  if (self->_targetModificationDate != v7)
  {
    v5 = [(NSDate *)v7 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_targetModificationDate, a3);
      v5 = [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateFoundTargetAssetReference];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setTargetAssetReference:(id)a3
{
  v5 = a3;
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  if (self->_targetAssetReference != v5)
  {
    objc_storeStrong(&self->_targetAssetReference, a3);
    [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateFoundTargetAssetReference];
  }
}

- (void)setViewModel:(id)a3
{
  v6 = a3;
  [(PUAssetDisplayDescriptorNavigationRequest *)self _assertInsideChangeBlock];
  viewModel = self->_viewModel;
  if (viewModel != v6)
  {
    [(PUBrowsingViewModel *)viewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_viewModel, a3);
    [(PUBrowsingViewModel *)self->_viewModel registerChangeObserver:self];
    [(PUAssetDisplayDescriptorNavigationRequest *)self _invalidateFoundTargetAssetReference];
  }
}

- (void)dealloc
{
  if (self->_timeOutTimer)
  {
    [(PUAssetDisplayDescriptorNavigationRequest *)self _finishRequest];
  }

  v3.receiver = self;
  v3.super_class = PUAssetDisplayDescriptorNavigationRequest;
  [(PUAssetDisplayDescriptorNavigationRequest *)&v3 dealloc];
}

- (PUAssetDisplayDescriptorNavigationRequest)init
{
  v4.receiver = self;
  v4.super_class = PUAssetDisplayDescriptorNavigationRequest;
  result = [(PUAssetDisplayDescriptorNavigationRequest *)&v4 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    *&result->_targetSeekTime.value = *MEMORY[0x1E6960C70];
    result->_targetSeekTime.epoch = *(v3 + 16);
  }

  return result;
}

@end