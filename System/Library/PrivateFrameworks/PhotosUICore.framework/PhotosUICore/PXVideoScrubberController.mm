@interface PXVideoScrubberController
- (AVPlayerItem)currentPlayerItem;
- (PXVideoScrubberController)init;
- (PXVideoScrubberController)initWithTarget:(id)target estimatedDuration:(double)duration;
- (PXVideoScrubberControllerDelegate)delegate;
- (double)_duration;
- (double)_lengthForDuration:(double)duration;
- (double)_progressForTime:(double)time;
- (double)_timeForProgress:(double)progress;
- (double)length;
- (double)playheadProgress;
- (float)playRate;
- (void)_addObservers;
- (void)_handleTimeoutCallbackForSeekRequest:(id)request;
- (void)_playerDidChange:(id)change;
- (void)_playerItemDidChange;
- (void)_playerItemDurationDidChange;
- (void)_removeObservers;
- (void)_seekRequest:(id)request didFinish:(BOOL)finish;
- (void)_seekToTime:(double)time;
- (void)_setActiveSeekRequest:(id)request;
- (void)_setAvPlayerCurrentTime:(id *)time;
- (void)_setAvPlayerDuration:(id *)duration;
- (void)_setPlayheadProgress:(double)progress andSeekVideoPlayer:(BOOL)player;
- (void)_setPlayheadTime:(double)time;
- (void)_updateAvPlayerCurrentTimeIfNeeded;
- (void)_updateAvPlayerDurationIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSeeking;
- (void)beginSeeking;
- (void)dealloc;
- (void)endSeeking;
- (void)setDelegate:(id)delegate;
@end

@implementation PXVideoScrubberController

- (void)_setAvPlayerDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->$95D729B680665BEAEFA1D6FCA8238556::value = *&duration->var0;
  self->$95D729B680665BEAEFA1D6FCA8238556::epoch = var3;
}

- (void)_setAvPlayerCurrentTime:(id *)time
{
  var3 = time->var3;
  *&self->$95D729B680665BEAEFA1D6FCA8238556::value = *&time->var0;
  self->$95D729B680665BEAEFA1D6FCA8238556::epoch = var3;
}

- (PXVideoScrubberControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAvPlayerDurationIfNeeded
{
  if (self->_avPlayerDurationNeedsUpdate)
  {
    v10 = v2;
    v11 = v3;
    self->_avPlayerDurationNeedsUpdate = 0;
    v8 = 0uLL;
    v9 = 0;
    target = self->_target;
    if (target)
    {
      [(PXVideoScrubberControllerTarget *)target currentItemDuration];
    }

    v6 = v8;
    v7 = v9;
    [(PXVideoScrubberController *)self _setAvPlayerDuration:&v6];
  }
}

- (void)_updateAvPlayerCurrentTimeIfNeeded
{
  if (self->_avPlayerCurrentTimeNeedsUpdate)
  {
    v8[5] = v2;
    v8[6] = v3;
    self->_avPlayerCurrentTimeNeedsUpdate = 0;
    objc_initWeak(v8, self);
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PXVideoScrubberController__updateAvPlayerCurrentTimeIfNeeded__block_invoke;
    block[3] = &unk_1E774B248;
    block[4] = self;
    objc_copyWeak(&v7, v8);
    dispatch_async(v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(v8);
  }
}

void __63__PXVideoScrubberController__updateAvPlayerCurrentTimeIfNeeded__block_invoke(uint64_t a1)
{
  v7 = 0uLL;
  v8 = 0;
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    [v2 playerCurrentTime];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PXVideoScrubberController__updateAvPlayerCurrentTimeIfNeeded__block_invoke_2;
  block[3] = &unk_1E7747EF8;
  objc_copyWeak(&v4, (a1 + 40));
  v5 = v7;
  v6 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __63__PXVideoScrubberController__updateAvPlayerCurrentTimeIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _setAvPlayerCurrentTime:&v3];
}

- (void)_updateIfNeeded
{
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    [(PXVideoScrubberController *)self _updateAvPlayerCurrentTimeIfNeeded];
    [(PXVideoScrubberController *)self _updateAvPlayerDurationIfNeeded];
    _activeSeekRequest = [(PXVideoScrubberController *)self _activeSeekRequest];
    if (_activeSeekRequest)
    {
      _pendingSeekRequest = [(PXVideoScrubberController *)self _pendingSeekRequest];
      v6 = _pendingSeekRequest;
      if (!_pendingSeekRequest)
      {
        _pendingSeekRequest = _activeSeekRequest;
      }

      [_pendingSeekRequest seekTime];
      [(PXVideoScrubberController *)self _progressForTime:?];
      [(PXVideoScrubberController *)self _setPlayheadProgress:0 andSeekVideoPlayer:?];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
      [(PXVideoScrubberController *)self _avPlayerCurrentTime];
      time = v10;
      [(PXVideoScrubberController *)self _progressForTime:CMTimeGetSeconds(&time)];
      [(PXVideoScrubberController *)self _setPlayheadProgress:0 andSeekVideoPlayer:?];
    }

    if (self->_videoScrubberDelegateFlags.respondsToDidUpdate)
    {
      delegate = [(PXVideoScrubberController *)self delegate];
      [delegate videoScrubberControllerDidUpdate:self];
    }

    if (self->_needsUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"!_needsUpdate"}];
    }
  }
}

- (void)_setPlayheadTime:(double)time
{
  if (self->__playheadTime != time)
  {
    self->__playheadTime = time;
    [(PXVideoScrubberController *)self _invalidate];

    [(PXVideoScrubberController *)self _updateIfNeeded];
  }
}

- (double)_lengthForDuration:(double)duration
{
  if (!self->_videoScrubberDelegateFlags.respondsToLengthForDuration)
  {
    return duration * 60.0;
  }

  delegate = [(PXVideoScrubberController *)self delegate];
  [delegate videoScrubberController:self lengthForDuration:duration];
  v7 = v6;

  return v7;
}

- (double)_progressForTime:(double)time
{
  [(PXVideoScrubberController *)self _duration];
  if (time >= 0.0)
  {
    timeCopy = time;
  }

  else
  {
    timeCopy = 0.0;
  }

  if (v4 < timeCopy)
  {
    timeCopy = v4;
  }

  v6 = timeCopy / v4;
  if (v4 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v6;
  }
}

- (double)_timeForProgress:(double)progress
{
  if (progress < 0.0)
  {
    progress = 0.0;
  }

  if (progress <= 1.0)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 1.0;
  }

  [(PXVideoScrubberController *)self _duration];
  return progressCopy * v4;
}

- (double)_duration
{
  memset(&v4[1], 0, sizeof(CMTime));
  [(PXVideoScrubberController *)self _avPlayerDuration];
  if (0 >> 96 == 1)
  {
    v4[0] = v4[1];
    result = CMTimeGetSeconds(v4);
  }

  else
  {
    [(PXVideoScrubberController *)self estimatedDuration];
  }

  if (result == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (void)_playerItemDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PXVideoScrubberController__playerItemDidChange__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoScrubberController *)self performChanges:v2];
}

- (void)_playerItemDurationDidChange
{
  [(PXVideoScrubberController *)self _invalidateAvPlayerDuration];

  [(PXVideoScrubberController *)self _updateIfNeeded];
}

- (void)_playerDidChange:(id)change
{
  changeCopy = change;
  target = [(PXVideoScrubberController *)self target];

  if (target == changeCopy)
  {
    [(PXVideoScrubberController *)self _invalidateAvPlayerCurrentTime];

    [(PXVideoScrubberController *)self _updateIfNeeded];
  }
}

- (void)_removeObservers
{
  target = [(PXVideoScrubberController *)self target];
  [target removeTimeObserver:self->_playerObserver];

  playerObserver = self->_playerObserver;
  self->_playerObserver = 0;
}

- (void)_addObservers
{
  objc_initWeak(&location, self);
  target = [(PXVideoScrubberController *)self target];
  objc_initWeak(&from, target);

  v4 = objc_loadWeakRetained(&from);
  CMTimeMakeWithSeconds(&v12, 0.03, 100);
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PXVideoScrubberController__addObservers__block_invoke;
  v9[3] = &unk_1E7746D78;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v7 = [v4 addPeriodicTimeObserverForInterval:&v12 queue:v5 usingBlock:v9];
  playerObserver = self->_playerObserver;
  self->_playerObserver = v7;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __42__PXVideoScrubberController__addObservers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _playerDidChange:v2];
}

- (void)_setActiveSeekRequest:(id)request
{
  requestCopy = request;
  if (self->__activeSeekRequest != requestCopy)
  {
    v6 = requestCopy;
    objc_storeStrong(&self->__activeSeekRequest, request);
    [(PXVideoScrubberController *)self _invalidate];
    requestCopy = v6;
  }
}

- (void)_handleTimeoutCallbackForSeekRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v6 = requestCopy;
    _activeSeekRequest = [(PXVideoScrubberController *)self _activeSeekRequest];

    requestCopy = v6;
    if (_activeSeekRequest == v6)
    {
      [(PXVideoScrubberController *)self _updateSeeking];
      requestCopy = v6;
    }
  }
}

- (void)_seekRequest:(id)request didFinish:(BOOL)finish
{
  requestCopy = request;
  if (requestCopy)
  {
    v7 = requestCopy;
    _activeSeekRequest = [(PXVideoScrubberController *)self _activeSeekRequest];

    requestCopy = v7;
    if (_activeSeekRequest == v7)
    {
      [(PXVideoScrubberController *)self _setActiveSeekRequest:0];
      [(PXVideoScrubberController *)self _updateSeeking];
      requestCopy = v7;
    }
  }
}

- (void)_updateSeeking
{
  _activeSeekRequest = [(PXVideoScrubberController *)self _activeSeekRequest];
  target = [(PXVideoScrubberController *)self target];
  if (_activeSeekRequest)
  {
    _pendingSeekRequest = [(PXVideoScrubberController *)self _pendingSeekRequest];

    if (_pendingSeekRequest)
    {
      date = [MEMORY[0x1E695DF00] date];
      dateCreated = [_activeSeekRequest dateCreated];
      [date timeIntervalSinceDate:dateCreated];
      v9 = v8;

      if (v9 >= 60.0 || v9 < 0.0)
      {
        [target cancelPendingSeeks];
        [(PXVideoScrubberController *)self _setActiveSeekRequest:0];

        _activeSeekRequest = 0;
      }
    }
  }

  _pendingSeekRequest2 = [(PXVideoScrubberController *)self _pendingSeekRequest];
  playerStatus = [target playerStatus];
  if (_pendingSeekRequest2)
  {
    v12 = playerStatus;
    [_pendingSeekRequest2 seekTime];
    v14 = v13;
    v36 = 0uLL;
    v37 = 0;
    if (target)
    {
      [target currentItemDuration];
    }

    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, v14, 100);
    if (self->_videoScrubberDelegateFlags.respondsToDesiredSeekTime)
    {
      delegate = [(PXVideoScrubberController *)self delegate];
      v34 = time;
      [delegate videoScrubberController:self desiredSeekTime:&v34];
    }

    if (!_activeSeekRequest && v12 == 1)
    {
      v16 = _pendingSeekRequest2;
      [(PXVideoScrubberController *)self _setActiveSeekRequest:v16];
      [(PXVideoScrubberController *)self _setPendingSeekRequest:0];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v16);
      playerItem = [target playerItem];
      v31 = time;
      if ([playerItem px_loadedTimeRangesContainTime:&v31])
      {
        *&v34.value = *MEMORY[0x1E6960CC0];
        epoch = *(MEMORY[0x1E6960CC0] + 16);
      }

      else
      {
        CMTimeMakeWithSeconds(&v31, 0.0001, 10000);
        *&v34.value = *&v31.value;
        epoch = v31.epoch;
      }

      v34.epoch = epoch;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __43__PXVideoScrubberController__updateSeeking__block_invoke;
      v28[3] = &unk_1E7746D50;
      objc_copyWeak(&v29, &location);
      objc_copyWeak(&v30, &from);
      v31 = time;
      v27 = v34;
      v26 = v34;
      [target videoScrubberController:self seekToTime:&v31 toleranceBefore:&v27 toleranceAfter:&v26 completionHandler:v28];
      v19 = dispatch_time(0, 60000000000);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __43__PXVideoScrubberController__updateSeeking__block_invoke_3;
      v23 = &unk_1E7749C10;
      objc_copyWeak(&v24, &location);
      objc_copyWeak(&v25, &from);
      dispatch_after(v19, MEMORY[0x1E69E96A0], &v20);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&v29);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  [(PXVideoScrubberController *)self _updateIfNeeded:v20];
}

void __43__PXVideoScrubberController__updateSeeking__block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXVideoScrubberController__updateSeeking__block_invoke_2;
  block[3] = &unk_1E7746D28;
  objc_copyWeak(&v5, (a1 + 32));
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __43__PXVideoScrubberController__updateSeeking__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTimeoutCallbackForSeekRequest:v2];
}

void __43__PXVideoScrubberController__updateSeeking__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _seekRequest:v2 didFinish:*(a1 + 48)];
}

- (void)_seekToTime:(double)time
{
  v5 = [PXScrubberSeekRequest alloc];
  target = [(PXVideoScrubberController *)self target];
  v7 = [(PXScrubberSeekRequest *)v5 initWithTarget:target seekTime:time];

  [(PXVideoScrubberController *)self _setPendingSeekRequest:v7];
  [(PXVideoScrubberController *)self _updateSeeking];
}

- (float)playRate
{
  target = [(PXVideoScrubberController *)self target];
  [target playRate];
  v4 = v3;

  return v4;
}

- (AVPlayerItem)currentPlayerItem
{
  target = [(PXVideoScrubberController *)self target];
  playerItem = [target playerItem];

  return playerItem;
}

- (void)endSeeking
{
  if (self->_targetFlags.respondsToDidEndSeeking)
  {
    [(PXVideoScrubberControllerTarget *)self->_target videoScrubberControllerDidEndSeeking:self];
  }
}

- (void)beginSeeking
{
  if (self->_targetFlags.respondsToWillBeginSeeking)
  {
    [(PXVideoScrubberControllerTarget *)self->_target videoScrubberControllerWillBeginSeeking:self];
  }
}

- (void)_setPlayheadProgress:(double)progress andSeekVideoPlayer:(BOOL)player
{
  playerCopy = player;
  [(PXVideoScrubberController *)self _timeForProgress:progress];
  v7 = v6;
  if (playerCopy)
  {
    [(PXVideoScrubberController *)self _seekToTime:v6];
  }

  [(PXVideoScrubberController *)self _setPlayheadTime:v7];
}

- (double)playheadProgress
{
  [(PXVideoScrubberController *)self _playheadTime];

  [(PXVideoScrubberController *)self _progressForTime:?];
  return result;
}

- (double)length
{
  [(PXVideoScrubberController *)self estimatedDuration];
  Seconds = v3;
  memset(&v9, 0, sizeof(v9));
  target = [(PXVideoScrubberController *)self target];
  v6 = target;
  if (target)
  {
    [target currentItemDuration];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if ((v9.flags & 0x1D) == 1)
  {
    v8 = v9;
    Seconds = CMTimeGetSeconds(&v8);
  }

  [(PXVideoScrubberController *)self _lengthForDuration:Seconds];
  return result;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_videoScrubberDelegateFlags = &self->_videoScrubberDelegateFlags;
    p_videoScrubberDelegateFlags->respondsToDidUpdate = objc_opt_respondsToSelector() & 1;
    p_videoScrubberDelegateFlags->respondsToLengthForDuration = objc_opt_respondsToSelector() & 1;
    p_videoScrubberDelegateFlags->respondsToDesiredSeekTime = objc_opt_respondsToSelector() & 1;
  }
}

- (void)dealloc
{
  [(PXVideoScrubberController *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = PXVideoScrubberController;
  [(PXVideoScrubberController *)&v3 dealloc];
}

- (PXVideoScrubberController)initWithTarget:(id)target estimatedDuration:(double)duration
{
  targetCopy = target;
  v22.receiver = self;
  v22.super_class = PXVideoScrubberController;
  v9 = [(PXVideoScrubberController *)&v22 init];
  if (v9)
  {
    if (!targetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXVideoScrubberController.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];
    }

    *(v9 + 16) = duration;
    objc_storeStrong(v9 + 15, target);
    objc_initWeak(&location, v9);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke;
    v19[3] = &unk_1E774C318;
    objc_copyWeak(&v20, &location);
    [targetCopy setDurationChangeHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke_2;
    v17[3] = &unk_1E774C318;
    objc_copyWeak(&v18, &location);
    [targetCopy setStatusChangeHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke_3;
    v15[3] = &unk_1E774C318;
    objc_copyWeak(&v16, &location);
    [targetCopy setPlayerItemChangeHandler:v15];
    v9[104] = 1;
    v9[105] = 1;
    v9[106] = 1;
    v10 = MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    *(v9 + 22) = v11;
    v12 = *v10;
    *(v9 + 10) = *v10;
    *(v9 + 184) = v12;
    *(v9 + 25) = v11;
    [v9 _addObservers];
    [v9 _updateIfNeeded];
    v9[110] = objc_opt_respondsToSelector() & 1;
    v9[111] = objc_opt_respondsToSelector() & 1;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playerItemDurationDidChange];
}

void __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playerStatusDidChange];
}

void __62__PXVideoScrubberController_initWithTarget_estimatedDuration___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playerItemDidChange];
}

- (PXVideoScrubberController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoScrubberController.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXVideoScrubberController init]"}];

  abort();
}

@end