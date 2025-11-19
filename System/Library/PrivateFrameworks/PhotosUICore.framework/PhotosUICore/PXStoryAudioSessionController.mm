@interface PXStoryAudioSessionController
- (PXStoryAudioSessionController)initWithModel:(id)a3;
- (PXStoryAudioSessionController)initWithObservableModel:(id)a3;
- (PXStoryModel)model;
- (void)_invalidateAudioSession;
- (void)_invalidateShouldMixWithOthers;
- (void)_updateAudioSession;
- (void)_updateShouldMixWithOthers;
- (void)_workQueue_createAudioSession;
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)setShouldMixWithOthers:(BOOL)a3;
@end

@implementation PXStoryAudioSessionController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (PXStoryAudioSessionController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryAudioSessionController.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryAudioSessionController initWithObservableModel:]"}];

  abort();
}

- (void)handleModelChange:(unint64_t)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PXStoryAudioSessionController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((v3 & 0x400) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PXStoryAudioSessionController_handleModelChange___block_invoke;
    v5[3] = &unk_1E774AFA8;
    v5[4] = self;
    [(PXStoryController *)self performChanges:v5];
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryAudioSessionController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateShouldMixWithOthers, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateAudioSession];
}

- (void)_workQueue_createAudioSession
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryAudioSessionController *)self model];

  if (v3)
  {
    v4 = [MEMORY[0x1E69C1B18] sharedInstanceWithKind:3];
    v5 = [(PXStoryAudioSessionController *)self shouldMixWithOthers];
    v6 = *MEMORY[0x1E6958068];
    v7 = *MEMORY[0x1E6958130];
    v19 = 0;
    LOBYTE(v5) = [v4 setCategory:v6 mode:v7 routeSharingPolicy:0 options:v5 error:&v19];
    v8 = v19;
    if ((v5 & 1) == 0)
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
    v13 = [(PXStoryController *)self storyQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PXStoryAudioSessionController__workQueue_createAudioSession__block_invoke;
    v15[3] = &unk_1E774B248;
    objc_copyWeak(&v17, buf);
    v16 = v4;
    v14 = v4;
    dispatch_async(v13, v15);

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
  v3 = [(PXStoryAudioSessionController *)self model];
  v4 = [v3 configuration];
  v5 = ~[v4 options] & 3;

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(PXStoryAudioSessionController *)self workQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PXStoryAudioSessionController__updateAudioSession__block_invoke;
    v7[3] = &unk_1E774C318;
    objc_copyWeak(&v8, &location);
    dispatch_async(v6, v7);

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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAudioSession];
}

- (void)setShouldMixWithOthers:(BOOL)a3
{
  if (self->_shouldMixWithOthers != a3)
  {
    self->_shouldMixWithOthers = a3;
    [(PXStoryAudioSessionController *)self _invalidateAudioSession];
  }
}

- (void)_updateShouldMixWithOthers
{
  v5 = [(PXStoryAudioSessionController *)self model];
  v3 = [v5 activeSongResource];
  v4 = [v3 px_storyResourceSongAsset];
  -[PXStoryAudioSessionController setShouldMixWithOthers:](self, "setShouldMixWithOthers:", [v4 catalog] == 2);
}

- (void)_invalidateShouldMixWithOthers
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldMixWithOthers];
}

- (PXStoryAudioSessionController)initWithModel:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXStoryAudioSessionController;
  v5 = [(PXStoryController *)&v7 initWithObservableModel:v4];
  if (v5)
  {
    objc_storeWeak(&v5->_model, v4);
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