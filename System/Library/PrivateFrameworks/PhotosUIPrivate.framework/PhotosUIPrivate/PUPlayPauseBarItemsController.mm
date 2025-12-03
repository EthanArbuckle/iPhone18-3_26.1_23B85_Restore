@interface PUPlayPauseBarItemsController
- (BOOL)_needsUpdate;
- (PUPlayPauseBarItemsController)init;
- (PUPlayPauseBarItemsController)initWithViewModel:(id)model;
- (PUPlayPauseBarItemsControllerChange)_currentChange;
- (void)_assertInsideChangeBlock;
- (void)_assertInsideUpdate;
- (void)_handleVideoPlayer:(id)player didChange:(id)change;
- (void)_handleViewModel:(id)model didChange:(id)change;
- (void)_invalidateAVPlayer;
- (void)_invalidateCurrentPlaybackTimeAndDuration;
- (void)_invalidatePlayPauseState;
- (void)_invalidateVideoPlayer;
- (void)_performChanges:(id)changes;
- (void)_publishChanges;
- (void)_setAVPlayer:(id)player;
- (void)_setCurrentPlaybackTime:(id *)time;
- (void)_setNeedsUpdate;
- (void)_setPlayPauseState:(int64_t)state;
- (void)_setPlaybackDuration:(id *)duration;
- (void)_setVideoPlayer:(id)player;
- (void)_startObservingAVPlayer;
- (void)_stopObservingAVPlayer;
- (void)_updateAVPlayerIfNeeded;
- (void)_updateCurrentPlaybackTimeAndDurationIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayPauseStateIfNeeded;
- (void)_updateVideoPlayerIfNeeded;
- (void)registerChangeObserver:(id)observer;
- (void)unregisterChangeObserver:(id)observer;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUPlayPauseBarItemsController

- (void)_handleVideoPlayer:(id)player didChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PUPlayPauseBarItemsController__handleVideoPlayer_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [(PUPlayPauseBarItemsController *)self _performChanges:v7];
}

uint64_t __62__PUPlayPauseBarItemsController__handleVideoPlayer_didChange___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isActivatedDidChange] & 1) != 0 || (objc_msgSend(*(a1 + 32), "desiredPlayStateDidChange") & 1) != 0 || objc_msgSend(*(a1 + 32), "playStateDidChange"))
  {
    [*(a1 + 40) _invalidatePlayPauseState];
  }

  if ([*(a1 + 32) avPlayerDidChange])
  {
    [*(a1 + 40) _invalidateAVPlayer];
  }

  if (([*(a1 + 32) isActivatedDidChange] & 1) != 0 || objc_msgSend(*(a1 + 32), "playerItemDidChange"))
  {
    [*(a1 + 40) _invalidateCurrentPlaybackTimeAndDuration];
  }

  result = [*(a1 + 32) isAtEndDidChange];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _invalidatePlayPauseState];
  }

  return result;
}

- (void)_handleViewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
  allValues = [assetViewModelChangesByAssetReference allValues];
  v8 = PFExists();

  LOBYTE(assetViewModelChangesByAssetReference) = [changeCopy currentAssetDidChange];
  if ((assetViewModelChangesByAssetReference & 1) != 0 || v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PUPlayPauseBarItemsController__handleViewModel_didChange___block_invoke_3;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUPlayPauseBarItemsController *)self _performChanges:v9];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  viewModel = [(PUPlayPauseBarItemsController *)self viewModel];

  if (viewModel == modelCopy)
  {
    [(PUPlayPauseBarItemsController *)self _handleViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    _videoPlayer = [(PUPlayPauseBarItemsController *)self _videoPlayer];

    if (_videoPlayer == modelCopy)
    {
      [(PUPlayPauseBarItemsController *)self _handleVideoPlayer:modelCopy didChange:changeCopy];
    }
  }
}

- (void)_updateCurrentPlaybackTimeAndDurationIfNeeded
{
  if ([(PUPlayPauseBarItemsController *)self _needsUpdateCurrentPlaybackTimeAndDuration])
  {
    [(PUPlayPauseBarItemsController *)self _setNeedsUpdateCurrentPlaybackTimeAndDuration:0];
    v11 = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    v9 = v11;
    v10 = v12;
    _videoPlayer = [(PUPlayPauseBarItemsController *)self _videoPlayer];
    isActivated = [_videoPlayer isActivated];

    _avPlayer = [(PUPlayPauseBarItemsController *)self _avPlayer];
    v6 = _avPlayer;
    if (isActivated)
    {
      if (_avPlayer)
      {
        [_avPlayer currentTime];
        [v6 currentItemDuration];
      }
    }

    v7 = v11;
    v8 = v12;
    [(PUPlayPauseBarItemsController *)self _setCurrentPlaybackTime:&v7];
    v7 = v9;
    v8 = v10;
    [(PUPlayPauseBarItemsController *)self _setPlaybackDuration:&v7];
  }
}

- (void)_invalidateCurrentPlaybackTimeAndDuration
{
  [(PUPlayPauseBarItemsController *)self _setNeedsUpdateCurrentPlaybackTimeAndDuration:1];

  [(PUPlayPauseBarItemsController *)self _setNeedsUpdate];
}

- (void)_updateAVPlayerIfNeeded
{
  if ([(PUPlayPauseBarItemsController *)self _needsUpdateAVPlayer])
  {
    [(PUPlayPauseBarItemsController *)self _setNeedsUpdateAVPlayer:0];
    _videoPlayer = [(PUPlayPauseBarItemsController *)self _videoPlayer];
    avPlayer = [_videoPlayer avPlayer];

    [(PUPlayPauseBarItemsController *)self _setAVPlayer:avPlayer];
  }
}

- (void)_invalidateAVPlayer
{
  [(PUPlayPauseBarItemsController *)self _setNeedsUpdateAVPlayer:1];

  [(PUPlayPauseBarItemsController *)self _setNeedsUpdate];
}

- (void)_updatePlayPauseStateIfNeeded
{
  if (![(PUPlayPauseBarItemsController *)self _needsUpdatePlayPauseState])
  {
    return;
  }

  [(PUPlayPauseBarItemsController *)self _setNeedsUpdatePlayPauseState:0];
  _videoPlayer = [(PUPlayPauseBarItemsController *)self _videoPlayer];
  desiredPlayState = [_videoPlayer desiredPlayState];
  if (desiredPlayState < 3)
  {
    goto LABEL_5;
  }

  if (desiredPlayState - 3 > 1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if ([_videoPlayer isAtEnd])
  {
LABEL_5:
    v4 = 2;
  }

  else if ([_videoPlayer playState] == 5)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

LABEL_6:
  [(PUPlayPauseBarItemsController *)self _setPlayPauseState:v4];
}

- (void)_invalidatePlayPauseState
{
  [(PUPlayPauseBarItemsController *)self _setNeedsUpdatePlayPauseState:1];

  [(PUPlayPauseBarItemsController *)self _setNeedsUpdate];
}

- (void)_updateVideoPlayerIfNeeded
{
  if ([(PUPlayPauseBarItemsController *)self _needsUpdateVideoPlayer])
  {
    [(PUPlayPauseBarItemsController *)self _setNeedsUpdateVideoPlayer:0];
    viewModel = [(PUPlayPauseBarItemsController *)self viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    v4 = [viewModel assetViewModelForAssetReference:currentAssetReference];
    videoPlayer = [v4 videoPlayer];
    [(PUPlayPauseBarItemsController *)self _setVideoPlayer:videoPlayer];
  }
}

- (void)_invalidateVideoPlayer
{
  [(PUPlayPauseBarItemsController *)self _setNeedsUpdateVideoPlayer:1];

  [(PUPlayPauseBarItemsController *)self _setNeedsUpdate];
}

- (void)_setNeedsUpdate
{
  if (![(PUPlayPauseBarItemsController *)self _isUpdating]&& ![(PUPlayPauseBarItemsController *)self _isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:247 description:@"not within a change block or update"];
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUPlayPauseBarItemsController *)self _needsUpdateVideoPlayer]|| [(PUPlayPauseBarItemsController *)self _needsUpdatePlayPauseState]|| [(PUPlayPauseBarItemsController *)self _needsUpdateAVPlayer])
  {
    return 1;
  }

  return [(PUPlayPauseBarItemsController *)self _needsUpdateCurrentPlaybackTimeAndDuration];
}

- (void)_updateIfNeeded
{
  if ([(PUPlayPauseBarItemsController *)self _needsUpdate])
  {
    _isUpdating = [(PUPlayPauseBarItemsController *)self _isUpdating];
    [(PUPlayPauseBarItemsController *)self _setUpdating:1];
    [(PUPlayPauseBarItemsController *)self _updateVideoPlayerIfNeeded];
    [(PUPlayPauseBarItemsController *)self _updatePlayPauseStateIfNeeded];
    [(PUPlayPauseBarItemsController *)self _updateAVPlayerIfNeeded];
    [(PUPlayPauseBarItemsController *)self _updateCurrentPlaybackTimeAndDurationIfNeeded];
    [(PUPlayPauseBarItemsController *)self _setUpdating:_isUpdating];
    if ([(PUPlayPauseBarItemsController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:234 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingChanges = [(PUPlayPauseBarItemsController *)self _isPerformingChanges];
  [(PUPlayPauseBarItemsController *)self _setPerformingChanges:1];
  changesCopy[2](changesCopy);

  [(PUPlayPauseBarItemsController *)self _setPerformingChanges:_isPerformingChanges];
  if (!_isPerformingChanges)
  {
    [(PUPlayPauseBarItemsController *)self _updateIfNeeded];

    [(PUPlayPauseBarItemsController *)self _publishChanges];
  }
}

- (void)_assertInsideUpdate
{
  if (![(PUPlayPauseBarItemsController *)self _isUpdating])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:205 description:@"not within update"];
  }
}

- (void)_assertInsideChangeBlock
{
  if (![(PUPlayPauseBarItemsController *)self _isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:200 description:@"not within a change block"];
  }
}

- (void)_publishChanges
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = self->__currentChange;
  currentChange = self->__currentChange;
  self->__currentChange = 0;

  if ([(PUPlayPauseBarItemsControllerChange *)v3 hasChanges])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__69959;
    v19 = __Block_byref_object_dispose__69960;
    v20 = 0;
    _observerQueue = [(PUPlayPauseBarItemsController *)self _observerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PUPlayPauseBarItemsController__publishChanges__block_invoke;
    block[3] = &unk_1E7B800C8;
    block[4] = self;
    block[5] = &v15;
    dispatch_sync(_observerQueue, block);

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v16[5];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) playPauseBarItemsController:self didChange:{v3, v10}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __48__PUPlayPauseBarItemsController__publishChanges__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _changeObservers];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PUPlayPauseBarItemsControllerChange)_currentChange
{
  currentChange = self->__currentChange;
  if (!currentChange)
  {
    v4 = objc_alloc_init(PUPlayPauseBarItemsControllerChange);
    v5 = self->__currentChange;
    self->__currentChange = v4;

    currentChange = self->__currentChange;
  }

  return currentChange;
}

- (void)_setPlaybackDuration:(id *)duration
{
  [(PUPlayPauseBarItemsController *)self _assertInsideUpdate];
  time1 = *duration;
  playbackDuration = self->_playbackDuration;
  if (CMTimeCompare(&time1, &playbackDuration))
  {
    v5 = *&duration->var0;
    self->_playbackDuration.epoch = duration->var3;
    *&self->_playbackDuration.value = v5;
    _currentChange = [(PUPlayPauseBarItemsController *)self _currentChange];
    [_currentChange _setPlaybackDurationDidChange:1];
  }
}

- (void)_setCurrentPlaybackTime:(id *)time
{
  [(PUPlayPauseBarItemsController *)self _assertInsideUpdate];
  time1 = *time;
  currentPlaybackTime = self->_currentPlaybackTime;
  if (CMTimeCompare(&time1, &currentPlaybackTime))
  {
    v5 = *&time->var0;
    self->_currentPlaybackTime.epoch = time->var3;
    *&self->_currentPlaybackTime.value = v5;
    _currentChange = [(PUPlayPauseBarItemsController *)self _currentChange];
    [_currentChange _setCurrentPlaybackTimeDidChange:1];
  }
}

- (void)_stopObservingAVPlayer
{
  _timeObservationToken = [(PUPlayPauseBarItemsController *)self _timeObservationToken];
  if (_timeObservationToken)
  {
    v7 = _timeObservationToken;
    _avPlayer = [(PUPlayPauseBarItemsController *)self _avPlayer];
    if (!_avPlayer)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"avPlayer"}];
    }

    [_avPlayer removeTimeObserver:v7];
    [(PUPlayPauseBarItemsController *)self _setTimeObservationToken:0];

    _timeObservationToken = v7;
  }
}

- (void)_startObservingAVPlayer
{
  _timeObservationToken = [(PUPlayPauseBarItemsController *)self _timeObservationToken];

  if (_timeObservationToken)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"![self _timeObservationToken]"}];
  }

  _avPlayer = [(PUPlayPauseBarItemsController *)self _avPlayer];
  if (_avPlayer)
  {
    objc_initWeak(&location, self);
    _avPlayer2 = [(PUPlayPauseBarItemsController *)self _avPlayer];
    CMTimeMake(&v13, 1, 30);
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PUPlayPauseBarItemsController__startObservingAVPlayer__block_invoke;
    v11[3] = &unk_1E7B7D380;
    objc_copyWeak(&v12, &location);
    v9 = [_avPlayer2 addPeriodicTimeObserverForInterval:&v13 queue:v7 usingBlock:v11];

    [(PUPlayPauseBarItemsController *)self _setTimeObservationToken:v9];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __56__PUPlayPauseBarItemsController__startObservingAVPlayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__PUPlayPauseBarItemsController__startObservingAVPlayer__block_invoke_2;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = WeakRetained;
  [WeakRetained _performChanges:v2];
}

- (void)_setAVPlayer:(id)player
{
  playerCopy = player;
  [(PUPlayPauseBarItemsController *)self _assertInsideUpdate];
  if (self->__avPlayer != playerCopy)
  {
    [(PUPlayPauseBarItemsController *)self _stopObservingAVPlayer];
    objc_storeStrong(&self->__avPlayer, player);
    [(PUPlayPauseBarItemsController *)self _startObservingAVPlayer];
    [(PUPlayPauseBarItemsController *)self _invalidateCurrentPlaybackTimeAndDuration];
  }
}

- (void)_setPlayPauseState:(int64_t)state
{
  [(PUPlayPauseBarItemsController *)self _assertInsideUpdate];
  if (self->_playPauseState != state)
  {
    self->_playPauseState = state;
    _currentChange = [(PUPlayPauseBarItemsController *)self _currentChange];
    [_currentChange _setPlayPauseStateDidChange:1];
  }
}

- (void)_setVideoPlayer:(id)player
{
  playerCopy = player;
  [(PUPlayPauseBarItemsController *)self _assertInsideUpdate];
  videoPlayer = self->__videoPlayer;
  if (videoPlayer != playerCopy)
  {
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->__videoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->__videoPlayer registerChangeObserver:self];
    [(PUPlayPauseBarItemsController *)self _invalidatePlayPauseState];
    [(PUPlayPauseBarItemsController *)self _invalidateAVPlayer];
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  _observerQueue = [(PUPlayPauseBarItemsController *)self _observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUPlayPauseBarItemsController_unregisterChangeObserver___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(_observerQueue, v7);
}

void __58__PUPlayPauseBarItemsController_unregisterChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _changeObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  _observerQueue = [(PUPlayPauseBarItemsController *)self _observerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PUPlayPauseBarItemsController_registerChangeObserver___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(_observerQueue, v7);
}

void __56__PUPlayPauseBarItemsController_registerChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _changeObservers];
  [v2 addObject:*(a1 + 40)];
}

- (PUPlayPauseBarItemsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayPauseBarItemsController.m" lineNumber:73 description:{@"%s is not available as initializer", "-[PUPlayPauseBarItemsController init]"}];

  abort();
}

- (PUPlayPauseBarItemsController)initWithViewModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = PUPlayPauseBarItemsController;
  v6 = [(PUPlayPauseBarItemsController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    v8 = dispatch_queue_create("com.apple.photos.playpausebaritemscontroller.observer-queue", 0);
    observerQueue = v7->__observerQueue;
    v7->__observerQueue = v8;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v7->__changeObservers;
    v7->__changeObservers = weakObjectsHashTable;

    [(PUBrowsingViewModel *)v7->_viewModel registerChangeObserver:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PUPlayPauseBarItemsController_initWithViewModel___block_invoke;
    v13[3] = &unk_1E7B80DD0;
    v14 = v7;
    [(PUPlayPauseBarItemsController *)v14 _performChanges:v13];
  }

  return v7;
}

@end