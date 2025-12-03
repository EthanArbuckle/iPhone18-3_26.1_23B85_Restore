@interface PXStoryAudioSessionController
- (PXStoryAudioSessionController)initWithModel:(id)model;
- (PXStoryAudioSessionController)initWithObservableModel:(id)model;
- (PXStoryModel)model;
- (void)_invalidateAudioSession;
- (void)_invalidateShouldMixWithOthers;
- (void)_updateAudioSession;
- (void)_updateShouldMixWithOthers;
- (void)_workQueue_createAudioSession;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)setShouldMixWithOthers:(BOOL)others;
@end

@implementation PXStoryAudioSessionController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (PXStoryAudioSessionController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAudioSessionController.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryAudioSessionController initWithObservableModel:]"}];

  abort();
}

- (void)handleModelChange:(unint64_t)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = PXStoryAudioSessionController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((changeCopy & 0x400) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PXStoryAudioSessionController_handleModelChange___block_invoke;
    v5[3] = &unk_1E774AFA8;
    v5[4] = self;
    [(PXStoryController *)self performChanges:v5];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryAudioSessionController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateShouldMixWithOthers, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateAudioSession];
}

- (void)_workQueue_createAudioSession
{
  v22 = *MEMORY[0x1E69E9840];
  model = [(PXStoryAudioSessionController *)self model];

  if (model)
  {
    v4 = [MEMORY[0x1E69C1B18] sharedInstanceWithKind:3];
    shouldMixWithOthers = [(PXStoryAudioSessionController *)self shouldMixWithOthers];
    v6 = *MEMORY[0x1E6958068];
    v7 = *MEMORY[0x1E6958130];
    v19 = 0;
    LOBYTE(shouldMixWithOthers) = [v4 setCategory:v6 mode:v7 routeSharingPolicy:0 options:shouldMixWithOthers error:&v19];
    v8 = v19;
    if ((shouldMixWithOthers & 1) == 0)
    {
      v9 = PLStoryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to prepare shared audio session, error: %@", buf, 0xCu);
      }
    }

    v18 = v8;
    v10 = [v4 setPreferredOutputNumberOfChannels:2 error:&v18];
    v11 = v18;

    if ((v10 & 1) == 0)
    {
      v12 = PLStoryGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to setPreferredOutputNumberOfChannels, error: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    storyQueue = [(PXStoryController *)self storyQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PXStoryAudioSessionController__workQueue_createAudioSession__block_invoke;
    v15[3] = &unk_1E774B248;
    objc_copyWeak(&v17, buf);
    v16 = v4;
    v14 = v4;
    dispatch_async(storyQueue, v15);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __62__PXStoryAudioSessionController__workQueue_createAudioSession__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAudioSession:v1];
}

- (void)_updateAudioSession
{
  model = [(PXStoryAudioSessionController *)self model];
  configuration = [model configuration];
  v5 = ~[configuration options] & 3;

  if (v5)
  {
    objc_initWeak(&location, self);
    workQueue = [(PXStoryAudioSessionController *)self workQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PXStoryAudioSessionController__updateAudioSession__block_invoke;
    v7[3] = &unk_1E774C318;
    objc_copyWeak(&v8, &location);
    dispatch_async(workQueue, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __52__PXStoryAudioSessionController__updateAudioSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workQueue_createAudioSession];
}

- (void)_invalidateAudioSession
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAudioSession];
}

- (void)setShouldMixWithOthers:(BOOL)others
{
  if (self->_shouldMixWithOthers != others)
  {
    self->_shouldMixWithOthers = others;
    [(PXStoryAudioSessionController *)self _invalidateAudioSession];
  }
}

- (void)_updateShouldMixWithOthers
{
  model = [(PXStoryAudioSessionController *)self model];
  activeSongResource = [model activeSongResource];
  px_storyResourceSongAsset = [activeSongResource px_storyResourceSongAsset];
  -[PXStoryAudioSessionController setShouldMixWithOthers:](self, "setShouldMixWithOthers:", [px_storyResourceSongAsset catalog] == 2);
}

- (void)_invalidateShouldMixWithOthers
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldMixWithOthers];
}

- (PXStoryAudioSessionController)initWithModel:(id)model
{
  modelCopy = model;
  v7.receiver = self;
  v7.super_class = PXStoryAudioSessionController;
  v5 = [(PXStoryController *)&v7 initWithObservableModel:modelCopy];
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
    px_dispatch_queue_create_serial();
  }

  return 0;
}

uint64_t __47__PXStoryAudioSessionController_initWithModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateShouldMixWithOthers];
  v2 = *(a1 + 32);

  return [v2 _invalidateAudioSession];
}

@end