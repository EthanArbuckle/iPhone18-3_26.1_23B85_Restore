@interface ISBasePlayer
- (BOOL)behavior:(id)behavior prerollVideoAtRate:(float)rate completionHandler:(id)handler;
- (BOOL)behavior:(id)behavior seekVideoPlayerToTime:(id *)time completionHandler:(id)handler;
- (BOOL)behavior:(id)behavior seekVideoPlayerToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
- (BOOL)videoLayersReadyForDisplay;
- (ISBasePlayer)initWithVideoPlayer:(id)player;
- (ISBasePlayerDelegate)delegate;
- (float)videoPlayRate;
- (id)_newWrappedPlayer;
- (id)behavior:(id)behavior addBoundaryTimeObserverForTimes:(id)times queue:(id)queue usingBlock:(id)block;
- (void)_configureNewOutput:(id)output;
- (void)_finishResettingAVObjects;
- (void)_handleErrorsIfNeeded;
- (void)_mainQueue_handleMediaServicesReset;
- (void)_mainQueue_resetAVObjectsWithResetCount:(int64_t)count;
- (void)_outputVideoReadyForDisplayDidChange:(id)change;
- (void)_setError:(id)error;
- (void)_setForwardPlaybackEndTime:(id *)time;
- (void)_setOutputContent:(id)content;
- (void)_setStatus:(int64_t)status;
- (void)_setVideoForwardPlaybackEndTime:(id *)time;
- (void)_setVideoPlayer:(id)player;
- (void)_updateContentFromPlayerItemIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateVideoPlayerIfNeeded;
- (void)_updateVideoPlayerVolumeIfNeeded;
- (void)_updateWillPlayToEndObserverIfNeeded;
- (void)_updateWillPlayToPhotoObserverIfNeeded;
- (void)_videoDidPlayToEnd;
- (void)_videoWillPlayToEnd;
- (void)_videoWillPlayToPhoto;
- (void)addOutput:(id)output;
- (void)applyOutputInfo:(id)info fromBehavior:(id)behavior withTransitionOptions:(id)options completion:(id)completion;
- (void)applyScale:(double)scale withTransitionOptions:(id)options completion:(id)completion;
- (void)behavior:(id)behavior didSetOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion;
- (void)behavior:(id)behavior playVideoToTime:(id *)time initialRate:(float)rate overDuration:(double)duration progressHandler:(id)handler;
- (void)behavior:(id)behavior removeTimeObserver:(id)observer;
- (void)behavior:(id)behavior setVideoForwardPlaybackEndTime:(id *)time;
- (void)behavior:(id)behavior setVideoPlayRate:(float)rate;
- (void)behavior:(id)behavior setVideoVolume:(float)volume;
- (void)dealloc;
- (void)didPerformChanges;
- (void)enumerateOutputsWithBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)playerItemDidChange;
- (void)removeOutput:(id)output;
- (void)resourceReclamationEventDidOccur:(id)occur;
- (void)setActiveBehavior:(id)behavior;
- (void)setApertureMode:(id)mode;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setAudioVolume:(float)volume;
- (void)setDelegate:(id)delegate;
- (void)setPlayerItem:(id)item;
- (void)setVideoVolume:(float)volume;
- (void)statusDidChange;
@end

@implementation ISBasePlayer

- (void)_setVideoForwardPlaybackEndTime:(id *)time
{
  var3 = time->var3;
  *&self->value = *&time->var0;
  self->epoch = var3;
}

- (ISBasePlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resourceReclamationEventDidOccur:(id)occur
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ISBasePlayer_resourceReclamationEventDidOccur___block_invoke;
  block[3] = &unk_279A2A180;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ISBasePlayer_observable_didChange_context___block_invoke;
  v5[3] = &unk_279A29A18;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  is_dispatch_on_main_queue(v5);
}

uint64_t __45__ISBasePlayer_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__ISBasePlayer_observable_didChange_context___block_invoke_2;
  v2[3] = &unk_279A29D20;
  v2[6] = *(a1 + 48);
  return [*(a1 + 32) performChanges:v2];
}

void __45__ISBasePlayer_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == ISPlayerItemObservableContext)
  {
    v6 = *(a1 + 48);
    v7 = v3;
    if (v6)
    {
      [*(a1 + 32) _invalidateStatus];
      v3 = v7;
      v6 = *(a1 + 48);
    }

    if ((v6 & 2) != 0)
    {
      [*(a1 + 32) _invalidateContentFromPlayerItem];
      goto LABEL_11;
    }
  }

  else if (v4 == ISWrappedAVPlayerObservableContext)
  {
    v5 = *(a1 + 48);
    v7 = v3;
    if ((v5 & 0x15) != 0)
    {
      [*(a1 + 32) _invalidateStatus];
      v3 = v7;
      v5 = *(a1 + 48);
    }

    if ((v5 & 0x800) != 0)
    {
      [*(a1 + 32) _invalidateWillPlayToEndObserver];
LABEL_11:
      v3 = v7;
    }
  }
}

- (void)behavior:(id)behavior playVideoToTime:(id *)time initialRate:(float)rate overDuration:(double)duration progressHandler:(id)handler
{
  handlerCopy = handler;
  behaviorCopy = behavior;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    v16 = *&time->var0;
    var3 = time->var3;
    [videoPlayer playToTime:&v16 withInitialRate:handlerCopy overDuration:COERCE_DOUBLE(__PAIR64__(DWORD1(v16) progressHandler:{LODWORD(rate))), duration}];
  }
}

- (void)behavior:(id)behavior removeTimeObserver:(id)observer
{
  observerCopy = observer;
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  [videoPlayer removeTimeObserver:observerCopy];
}

- (id)behavior:(id)behavior addBoundaryTimeObserverForTimes:(id)times queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  timesCopy = times;
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  v13 = [videoPlayer addBoundaryTimeObserverForTimes:timesCopy queue:queueCopy usingBlock:blockCopy];

  return v13;
}

- (void)behavior:(id)behavior setVideoVolume:(float)volume
{
  v17 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    v8 = ISGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      selfCopy = self;
      v13 = 2112;
      v14 = behaviorCopy;
      v15 = 2048;
      volumeCopy = volume;
      _os_log_debug_impl(&dword_25E667000, v8, OS_LOG_TYPE_DEBUG, "%@: will set video volume: %@ - %f", &v11, 0x20u);
    }

    *&v9 = volume;
    [(ISBasePlayer *)self setVideoVolume:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)behavior:(id)behavior setVideoForwardPlaybackEndTime:(id *)time
{
  v13 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    v8 = ISGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *time;
      Seconds = CMTimeGetSeconds(&v11);
      LODWORD(v11.var0) = 138412802;
      *(&v11.var0 + 4) = self;
      LOWORD(v11.var2) = 2112;
      *(&v11.var2 + 2) = behaviorCopy;
      HIWORD(v11.var3) = 2048;
      v12 = Seconds;
      _os_log_debug_impl(&dword_25E667000, v8, OS_LOG_TYPE_DEBUG, "%@: will set video end time: %@ - %f", &v11, 0x20u);
    }

    v11 = *time;
    [(ISBasePlayer *)self _setForwardPlaybackEndTime:&v11];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)behavior:(id)behavior prerollVideoAtRate:(float)rate completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  handlerCopy = handler;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    v12 = ISGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = behaviorCopy;
      v24 = 2048;
      rateCopy = rate;
      _os_log_debug_impl(&dword_25E667000, v12, OS_LOG_TYPE_DEBUG, "%@: will set video preroll rate: %@ - %f", buf, 0x20u);
    }

    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    currentItem = [videoPlayer currentItem];
    v11 = currentItem != 0;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__ISBasePlayer_behavior_prerollVideoAtRate_completionHandler___block_invoke;
    v18[3] = &unk_279A2A640;
    v19 = handlerCopy;
    *&v15 = rate;
    [videoPlayer prerollAtRate:v18 completionHandler:v15];
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)behavior:(id)behavior seekVideoPlayerToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  handlerCopy = handler;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    currentItem = [videoPlayer currentItem];
    v18 = currentItem;
    if (currentItem && [currentItem status] == 1)
    {
      v19 = ISGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        time = *time;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138412802;
        *(&time.value + 4) = self;
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = behaviorCopy;
        HIWORD(time.epoch) = 2048;
        v35 = Seconds;
        _os_log_debug_impl(&dword_25E667000, v19, OS_LOG_TYPE_DEBUG, "%@: will seek video to time: %@ - %f", &time, 0x20u);
      }

      [videoPlayer setRate:0.0];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __96__ISBasePlayer_behavior_seekVideoPlayerToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
      v29[3] = &unk_279A299F0;
      v29[4] = self;
      v30 = behaviorCopy;
      v32 = *&time->var0;
      var3 = time->var3;
      v31 = handlerCopy;
      time = *time;
      v27 = *&before->var0;
      v28 = before->var3;
      v25 = *&after->var0;
      v26 = after->var3;
      [videoPlayer seekToTime:&time toleranceBefore:&v27 toleranceAfter:&v25 completionHandler:v29];

      v15 = 1;
    }

    else
    {
      v20 = ISGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        time = *time;
        v23 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138412802;
        *(&time.value + 4) = self;
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = behaviorCopy;
        HIWORD(time.epoch) = 2048;
        v35 = v23;
        _os_log_debug_impl(&dword_25E667000, v20, OS_LOG_TYPE_DEBUG, "%@: unable to seek video to time: %@ - %f", &time, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __96__ISBasePlayer_behavior_seekVideoPlayerToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ISGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 56);
    Seconds = CMTimeGetSeconds(&v8);
    LODWORD(v8.value) = 138412802;
    *(&v8.value + 4) = v5;
    LOWORD(v8.flags) = 2112;
    *(&v8.flags + 2) = v6;
    HIWORD(v8.epoch) = 2048;
    v9 = Seconds;
    _os_log_debug_impl(&dword_25E667000, v2, OS_LOG_TYPE_DEBUG, "%@: did seek video to time: %@ - %f", &v8, 0x20u);
  }

  result = (*(*(a1 + 48) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)behavior:(id)behavior seekVideoPlayerToTime:(id *)time completionHandler:(id)handler
{
  behaviorCopy = behavior;
  handlerCopy = handler;
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  currentItem = [videoPlayer currentItem];
  memset(&v20, 0, sizeof(v20));
  CMTimeMake(&v20, 20, 600);
  videoComposition = [currentItem videoComposition];

  if (videoComposition)
  {
    memset(&v19, 0, sizeof(v19));
    videoComposition2 = [currentItem videoComposition];
    v14 = videoComposition2;
    if (videoComposition2)
    {
      [videoComposition2 frameDuration];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    if (v19.flags)
    {
      time1 = v19;
      v17 = **&MEMORY[0x277CC08F0];
      if (CMTimeCompare(&time1, &v17))
      {
        v20 = v19;
      }
    }
  }

  v19 = *time;
  time1 = v20;
  v17 = v20;
  v15 = [(ISBasePlayer *)self behavior:behaviorCopy seekVideoPlayerToTime:&v19 toleranceBefore:&time1 toleranceAfter:&v17 completionHandler:handlerCopy];

  return v15;
}

- (float)videoPlayRate
{
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  [videoPlayer rate];
  v4 = v3;

  return v4;
}

- (void)behavior:(id)behavior setVideoPlayRate:(float)rate
{
  v18 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    v8 = ISGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = behaviorCopy;
      v16 = 2048;
      rateCopy = rate;
      _os_log_debug_impl(&dword_25E667000, v8, OS_LOG_TYPE_DEBUG, "%@: will set video rate: %@ - %f", &v12, 0x20u);
    }

    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    *&v10 = rate;
    [videoPlayer setRate:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)behavior:(id)behavior didSetOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == behaviorCopy)
  {
    [(ISBasePlayer *)self applyOutputInfo:infoCopy fromBehavior:behaviorCopy withTransitionOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v15 = ISGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = behaviorCopy;
      _os_log_debug_impl(&dword_25E667000, v15, OS_LOG_TYPE_DEBUG, "Ignoring output from behavior that is not active: %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    v12 = playerCopy;
    if (videoPlayer)
    {
      delegate = [(ISWrappedAVPlayer *)videoPlayer delegate];

      if (delegate == self)
      {
        [(ISWrappedAVPlayer *)self->_videoPlayer setDelegate:0];
      }

      [(ISWrappedAVPlayer *)self->_videoPlayer unregisterChangeObserver:self context:ISWrappedAVPlayerObservableContext];
      v8 = self->_videoPlayer;
      v9 = +[ISDeferredDealloc sharedInstance];
      [v9 _performDeferredDealloc:v8];

      if (self->_delegateRespondsTo.playerWillRelinquishVideoPlayer)
      {
        delegate2 = [(ISBasePlayer *)self delegate];
        [delegate2 playerWillRelinquishVideoPlayer:self->_videoPlayer];
      }

      v11 = self->_videoPlayer;
      self->_videoPlayer = 0;
    }

    objc_storeStrong(&self->_videoPlayer, player);
    [(ISWrappedAVPlayer *)self->_videoPlayer setDelegate:self];
    [(ISWrappedAVPlayer *)self->_videoPlayer registerChangeObserver:self context:ISWrappedAVPlayerObservableContext];
    [(ISBasePlayer *)self _invalidateContentFromPlayerItem];
    [(ISBasePlayer *)self _invalidateVideoPlayerVolume];
    [(ISBasePlayer *)self _invalidateWillPlayToEndObserver];
    [(ISBasePlayer *)self _invalidateWillPlayToPhotoObserver];
    videoPlayer = [(ISObservable *)self signalChange:4];
    playerCopy = v12;
  }

  MEMORY[0x2821F96F8](videoPlayer, playerCopy);
}

- (id)_newWrappedPlayer
{
  if (self->_delegateRespondsTo.videoPlayerForPlayer)
  {
    delegate = [(ISBasePlayer *)self delegate];
    delegate2 = [delegate videoPlayerForPlayer:self];

    v5 = [[ISWrappedAVPlayer alloc] _initWithAVPlayer:delegate2];
  }

  else
  {
    if (!self->_delegateRespondsTo.wrappedVideoPlayerForPlayer)
    {
      goto LABEL_7;
    }

    delegate2 = [(ISBasePlayer *)self delegate];
    v5 = [delegate2 wrappedVideoPlayerForPlayer:self];
  }

  v6 = v5;

  if (v6)
  {
    return v6;
  }

LABEL_7:

  return objc_alloc_init(ISWrappedAVPlayer);
}

- (void)_finishResettingAVObjects
{
  _newWrappedPlayer = [(ISBasePlayer *)self _newWrappedPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ISBasePlayer__finishResettingAVObjects__block_invoke;
  v5[3] = &unk_279A2A398;
  v5[4] = self;
  v6 = _newWrappedPlayer;
  v4 = _newWrappedPlayer;
  [(ISObservable *)self performChanges:v5];
}

void __41__ISBasePlayer__finishResettingAVObjects__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setVideoPlayer:*(a1 + 40)];
  v2 = [*(a1 + 32) playerItem];
  [v2 resetAVObjects];
}

- (void)_mainQueue_resetAVObjectsWithResetCount:(int64_t)count
{
  if (self->_mainQueue_mediaServicesResetCounter == count)
  {
    objc_initWeak(&location, self);
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__ISBasePlayer__mainQueue_resetAVObjectsWithResetCount___block_invoke;
    v5[3] = &unk_279A2A3C0;
    objc_copyWeak(&v6, &location);
    [videoPlayer replaceCurrentItemWithPlayerItem:0 thenCall:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __56__ISBasePlayer__mainQueue_resetAVObjectsWithResetCount___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ISBasePlayer__mainQueue_resetAVObjectsWithResetCount___block_invoke_2;
  block[3] = &unk_279A2A3C0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __56__ISBasePlayer__mainQueue_resetAVObjectsWithResetCount___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishResettingAVObjects];
}

- (void)_mainQueue_handleMediaServicesReset
{
  v2 = (self->_mainQueue_mediaServicesResetCounter + 1);
  self->_mainQueue_mediaServicesResetCounter = v2;
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ISBasePlayer__mainQueue_handleMediaServicesReset__block_invoke;
  block[3] = &unk_279A2A018;
  objc_copyWeak(v5, &location);
  v5[1] = v2;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __51__ISBasePlayer__mainQueue_handleMediaServicesReset__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_resetAVObjectsWithResetCount:*(a1 + 40)];
}

- (void)_setError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_error != errorCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__ISBasePlayer__setError___block_invoke;
    v6[3] = &unk_279A2A398;
    v6[4] = self;
    v7 = errorCopy;
    [(ISObservable *)self performChanges:v6];
  }
}

uint64_t __26__ISBasePlayer__setError___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 signalChange:8];
}

- (void)_handleErrorsIfNeeded
{
  playerItem = [(ISBasePlayer *)self playerItem];
  error = [playerItem error];

  if (!error)
  {
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    error = [videoPlayer error];

    if (!error)
    {
      videoPlayer2 = [(ISBasePlayer *)self videoPlayer];
      error = [videoPlayer2 currentItemError];
    }
  }

  [(ISBasePlayer *)self _setError:error];
}

- (void)_updateVideoPlayerIfNeeded
{
  if (!self->_isValid.videoPlayer)
  {
    self->_isValid.videoPlayer = 1;
    playerItem = [(ISBasePlayer *)self playerItem];

    if (playerItem)
    {
      if (!self->_videoPlayer)
      {
        _newWrappedPlayer = [(ISBasePlayer *)self _newWrappedPlayer];
        [(ISBasePlayer *)self _setVideoPlayer:_newWrappedPlayer];
      }
    }

    else
    {

      [(ISBasePlayer *)self _setVideoPlayer:0];
    }
  }
}

- (void)_updateVideoPlayerVolumeIfNeeded
{
  if (!self->_isValid.videoPlayerVolume)
  {
    self->_isValid.videoPlayerVolume = 1;
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    v5 = 0.0;
    if ([(ISBasePlayer *)self isAudioEnabled])
    {
      [(ISBasePlayer *)self videoVolume];
      v7 = v6;
      [(ISBasePlayer *)self audioVolume];
      v5 = v7 * *&v4;
    }

    *&v4 = v5;
    [videoPlayer setVolume:v4];
    [videoPlayer setIsAudioEnabled:v5 > 0.0];
  }
}

- (void)_updateIfNeeded
{
  if ([(ISBasePlayer *)self _needsUpdate])
  {
    [(ISBasePlayer *)self _updateVideoPlayerIfNeeded];
    [(ISBasePlayer *)self _updateStatusIfNeeded];
    [(ISBasePlayer *)self _updateVideoPlayerVolumeIfNeeded];
    [(ISBasePlayer *)self _updateContentFromPlayerItemIfNeeded];
    [(ISBasePlayer *)self _updateWillPlayToEndObserverIfNeeded];

    [(ISBasePlayer *)self _updateWillPlayToPhotoObserverIfNeeded];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = ISBasePlayer;
  [(ISObservable *)&v3 didPerformChanges];
  [(ISBasePlayer *)self _updateIfNeeded];
}

- (void)setApertureMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy;
  if (self->_apertureMode != modeCopy)
  {
    v8 = modeCopy;
    modeCopy = [modeCopy isEqualToString:?];
    v5 = v8;
    if ((modeCopy & 1) == 0)
    {
      v6 = [v8 copy];
      apertureMode = self->_apertureMode;
      self->_apertureMode = v6;

      modeCopy = [(ISBasePlayer *)self _invalidateContentFromPlayerItem];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](modeCopy, v5);
}

- (void)setVideoVolume:(float)volume
{
  if (self->_videoVolume != volume)
  {
    self->_videoVolume = volume;
    [(ISBasePlayer *)self _invalidateVideoPlayerVolume];
  }
}

- (void)_setForwardPlaybackEndTime:(id *)time
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ISBasePlayer__setForwardPlaybackEndTime___block_invoke;
  v3[3] = &unk_279A299C8;
  v3[4] = self;
  v4 = *time;
  [(ISObservable *)self performChanges:v3];
}

void __43__ISBasePlayer__setForwardPlaybackEndTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 256;
  v3 = *(a1 + 56);
  *v2 = *(a1 + 40);
  *(v2 + 16) = v3;
  v4 = [*(a1 + 32) videoPlayer];
  v5 = v4;
  if (v4)
  {
    [v4 itemForwardPlaybackEndTime];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v6 = *(a1 + 40);
  if (CMTimeCompare(&v6, &time2))
  {
    time2 = *(a1 + 40);
    [v5 setItemForwardEndPlaybackTime:&time2];
  }

  [*(a1 + 32) _invalidateWillPlayToEndObserver];
}

- (void)_setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(ISBasePlayer *)self statusDidChange];

    [(ISObservable *)self signalChange:2];
  }
}

- (void)_updateStatusIfNeeded
{
  if (!self->_isValid.status)
  {
    self->_isValid.status = 1;
    playerItem = [(ISBasePlayer *)self playerItem];
    status = [playerItem status];
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    currentItemStatus = [videoPlayer currentItemStatus];
    if (status == 1 || (v7 = currentItemStatus, [videoPlayer status] == 2))
    {
      [(ISBasePlayer *)self _handleErrorsIfNeeded];
      v8 = 3;
    }

    else
    {
      v8 = 2 * (v7 == 1);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__ISBasePlayer__updateStatusIfNeeded__block_invoke;
    v9[3] = &unk_279A2A438;
    v9[4] = self;
    v9[5] = v8;
    [(ISObservable *)self performChanges:v9];
  }
}

- (void)_updateWillPlayToPhotoObserverIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_isValid.willPlayToPhotoObserver)
  {
    self->_isValid.willPlayToPhotoObserver = 1;
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    _videoWillPlayToPhotoObserver = [(ISBasePlayer *)self _videoWillPlayToPhotoObserver];

    if (_videoWillPlayToPhotoObserver)
    {
      _videoWillPlayToPhotoObserver2 = [(ISBasePlayer *)self _videoWillPlayToPhotoObserver];
      [videoPlayer removeTimeObserver:_videoWillPlayToPhotoObserver2];
    }

    playerItem = [(ISBasePlayer *)self playerItem];

    if (playerItem)
    {
      memset(&v22, 0, sizeof(v22));
      playerItem2 = [(ISBasePlayer *)self playerItem];
      playerContent = [playerItem2 playerContent];
      v9 = playerContent;
      if (playerContent)
      {
        [playerContent photoTime];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      memset(&v21, 0, sizeof(v21));
      [(ISBasePlayer *)self videoWillPlayToPhotoInterval];
      CMTimeMakeWithSeconds(&rhs, v10, 600);
      lhs = v22;
      CMTimeSubtract(&v21, &lhs, &rhs);
      lhs = v21;
      time2 = **&MEMORY[0x277CC08F0];
      CMTimeMaximum(&rhs, &lhs, &time2);
      v21 = rhs;
      v11 = ISGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        rhs = v21;
        Seconds = CMTimeGetSeconds(&rhs);
        LODWORD(rhs.value) = 138412546;
        *(&rhs.value + 4) = self;
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = Seconds;
        _os_log_debug_impl(&dword_25E667000, v11, OS_LOG_TYPE_DEBUG, "%@: will add video observer for will-play-to-photo time: %f", &rhs, 0x16u);
      }

      objc_initWeak(&lhs, self);
      rhs = v21;
      v12 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
      v23 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__ISBasePlayer__updateWillPlayToPhotoObserverIfNeeded__block_invoke;
      v17[3] = &unk_279A2A3C0;
      objc_copyWeak(&v18, &lhs);
      v14 = [videoPlayer addBoundaryTimeObserverForTimes:v13 queue:0 usingBlock:v17];

      [(ISBasePlayer *)self _setVideoWillPlayToPhotoObserver:v14];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&lhs);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__ISBasePlayer__updateWillPlayToPhotoObserverIfNeeded__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __54__ISBasePlayer__updateWillPlayToPhotoObserverIfNeeded__block_invoke_2;
  v1[3] = &unk_279A2A3C0;
  objc_copyWeak(&v2, (a1 + 32));
  is_dispatch_on_main_queue(v1);
  objc_destroyWeak(&v2);
}

void __54__ISBasePlayer__updateWillPlayToPhotoObserverIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _videoWillPlayToPhoto];
}

- (void)_updateWillPlayToEndObserverIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_isValid.willPlayToEndObserver)
  {
    self->_isValid.willPlayToEndObserver = 1;
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    if (videoPlayer)
    {
      memset(&v20, 0, sizeof(v20));
      [(ISBasePlayer *)self _videoForwardPlaybackEndTime];
      if (0 >> 96 != 1)
      {
        playerItem = [(ISBasePlayer *)self playerItem];
        playerContent = [playerItem playerContent];
        v6 = playerContent;
        if (playerContent)
        {
          [playerContent videoDuration];
        }

        else
        {
          memset(&v19, 0, sizeof(v19));
        }

        v20 = v19;
      }

      _videoWillPlayToEndObserver = [(ISBasePlayer *)self _videoWillPlayToEndObserver];

      if (_videoWillPlayToEndObserver)
      {
        _videoWillPlayToEndObserver2 = [(ISBasePlayer *)self _videoWillPlayToEndObserver];
        [videoPlayer removeTimeObserver:_videoWillPlayToEndObserver2];
      }

      memset(&v19, 0, sizeof(v19));
      [(ISBasePlayer *)self videoWillPlayToEndInterval];
      CMTimeMakeWithSeconds(&rhs, v9, 600);
      lhs = v20;
      CMTimeSubtract(&v19, &lhs, &rhs);
      v10 = ISGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        rhs = v19;
        Seconds = CMTimeGetSeconds(&rhs);
        LODWORD(rhs.value) = 138412546;
        *(&rhs.value + 4) = self;
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = Seconds;
        _os_log_debug_impl(&dword_25E667000, v10, OS_LOG_TYPE_DEBUG, "%@: will add video observer for will-end time: %f", &rhs, 0x16u);
      }

      objc_initWeak(&lhs, self);
      rhs = v19;
      v11 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
      v21 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__ISBasePlayer__updateWillPlayToEndObserverIfNeeded__block_invoke;
      v16[3] = &unk_279A2A3C0;
      objc_copyWeak(&v17, &lhs);
      v13 = [videoPlayer addBoundaryTimeObserverForTimes:v12 queue:0 usingBlock:v16];

      [(ISBasePlayer *)self _setVideoWillPlayToEndObserver:v13];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&lhs);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__ISBasePlayer__updateWillPlayToEndObserverIfNeeded__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __52__ISBasePlayer__updateWillPlayToEndObserverIfNeeded__block_invoke_2;
  v1[3] = &unk_279A2A3C0;
  objc_copyWeak(&v2, (a1 + 32));
  is_dispatch_on_main_queue(v1);
  objc_destroyWeak(&v2);
}

void __52__ISBasePlayer__updateWillPlayToEndObserverIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _videoWillPlayToEnd];
}

- (void)_setOutputContent:(id)content
{
  contentCopy = content;
  if (self->__outputContent != contentCopy)
  {
    objc_storeStrong(&self->__outputContent, content);
    [(ISBasePlayer *)self _invalidateWillPlayToPhotoObserver];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__ISBasePlayer__setOutputContent___block_invoke;
    v6[3] = &unk_279A299A0;
    v7 = contentCopy;
    [(ISBasePlayer *)self enumerateOutputsWithBlock:v6];
  }
}

- (void)_updateContentFromPlayerItemIfNeeded
{
  if (!self->_isValid.contentFromPlayerItem)
  {
    self->_isValid.contentFromPlayerItem = 1;
    playerItem = [(ISBasePlayer *)self playerItem];
    playerContent = [playerItem playerContent];
    v5 = playerContent;
    if (playerContent)
    {
      photoIsOriginal = [playerContent photoIsOriginal];
    }

    else
    {
      photoIsOriginal = 1;
    }

    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    videoPlayerItem = [v5 videoPlayerItem];
    currentItem = [videoPlayer currentItem];
    apertureMode = [(ISBasePlayer *)self apertureMode];
    asset = [videoPlayerItem asset];
    asset2 = [currentItem asset];

    if (asset == asset2)
    {
      [currentItem setVideoApertureMode:apertureMode];
    }

    else
    {
      [videoPlayerItem setVideoApertureMode:apertureMode];
      [videoPlayer replaceCurrentItemWithPlayerItem:videoPlayerItem];
    }

    v12 = [ISPlayerOutputContent alloc];
    photo = [v5 photo];
    photoEXIFOrientation = [v5 photoEXIFOrientation];
    contentAspectRatio = [playerItem contentAspectRatio];
    v16 = [(ISPlayerOutputContent *)v12 initWithPhoto:photo photoIsOriginal:photoIsOriginal photoEXIFOrientation:photoEXIFOrientation videoPlayer:videoPlayer aspectRatio:contentAspectRatio];

    [(ISBasePlayer *)self _setOutputContent:v16];
  }
}

- (void)_configureNewOutput:(id)output
{
  outputCopy = output;
  _outputContent = [(ISBasePlayer *)self _outputContent];
  [outputCopy setContent:_outputContent];
  lastAppliedLayoutInfo = [(ISBasePlayer *)self lastAppliedLayoutInfo];
  [outputCopy applyOutputInfo:lastAppliedLayoutInfo withTransitionOptions:0 completion:0];
}

- (void)enumerateOutputsWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_outputs;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)applyOutputInfo:(id)info fromBehavior:(id)behavior withTransitionOptions:(id)options completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  behaviorCopy = behavior;
  optionsCopy = options;
  completionCopy = completion;
  v14 = ISGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = behaviorCopy;
    *&buf[22] = 2112;
    v29 = infoCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_debug_impl(&dword_25E667000, v14, OS_LOG_TYPE_DEBUG, "%@: will apply output info: %@ - %@\n\toptions: %@", buf, 0x2Au);
  }

  [(ISBasePlayer *)self _setLastAppliedLayoutInfo:infoCopy];
  v15 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v29) = 1;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke;
  v23[3] = &unk_279A29978;
  v16 = v15;
  v24 = v16;
  v17 = infoCopy;
  v25 = v17;
  v18 = optionsCopy;
  v26 = v18;
  v27 = buf;
  [(ISBasePlayer *)self enumerateOutputsWithBlock:v23];
  if (completionCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke_4;
    v20[3] = &unk_279A2A068;
    v21 = completionCopy;
    v22 = buf;
    dispatch_group_notify(v16, MEMORY[0x277D85CD0], v20);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke_2;
  v10[3] = &unk_279A29950;
  v11 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  is_dispatch_on_main_queue(v10);
}

void __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__ISBasePlayer_applyOutputInfo_fromBehavior_withTransitionOptions_completion___block_invoke_3;
  v6[3] = &unk_279A2A040;
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v1 applyOutputInfo:v2 withTransitionOptions:v3 completion:v6];
}

- (void)applyScale:(double)scale withTransitionOptions:(id)options completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v10 = ISGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = scale;
    *&buf[22] = 2112;
    v24 = optionsCopy;
    _os_log_debug_impl(&dword_25E667000, v10, OS_LOG_TYPE_DEBUG, "%@: will apply scale %.2f\n\toptions: %@", buf, 0x20u);
  }

  [(ISBasePlayer *)self _setLastAppliedScale:scale];
  v11 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v24) = 1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__ISBasePlayer_applyScale_withTransitionOptions_completion___block_invoke;
  v18[3] = &unk_279A29928;
  v12 = v11;
  v19 = v12;
  scaleCopy = scale;
  v13 = optionsCopy;
  v20 = v13;
  v21 = buf;
  [(ISBasePlayer *)self enumerateOutputsWithBlock:v18];
  if (completionCopy)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__ISBasePlayer_applyScale_withTransitionOptions_completion___block_invoke_3;
    v15[3] = &unk_279A2A068;
    v16 = completionCopy;
    v17 = buf;
    dispatch_group_notify(v12, MEMORY[0x277D85CD0], v15);
  }

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __60__ISBasePlayer_applyScale_withTransitionOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ISBasePlayer_applyScale_withTransitionOptions_completion___block_invoke_2;
  v7[3] = &unk_279A2A040;
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  [v4 applyScale:v6 withTransitionOptions:v7 completion:v5];
}

- (void)setActiveBehavior:(id)behavior
{
  v11 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  activeBehavior = self->_activeBehavior;
  if (activeBehavior != behaviorCopy)
  {
    [(ISBehavior *)activeBehavior setDelegate:0];
    [(ISBehavior *)self->_activeBehavior resignActive];
    v7 = ISGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = behaviorCopy;
      _os_log_debug_impl(&dword_25E667000, v7, OS_LOG_TYPE_DEBUG, "ACTIVE BEHAVIOR: %@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_activeBehavior, behavior);
    [(ISBehavior *)self->_activeBehavior setDelegate:self];
    [(ISBehavior *)self->_activeBehavior becomeActive];
    [(ISBasePlayer *)self activeBehaviorDidChange];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setAudioVolume:(float)volume
{
  if (self->_audioVolume != volume)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__ISBasePlayer_setAudioVolume___block_invoke;
    v5[3] = &unk_279A29B58;
    v5[4] = self;
    volumeCopy = volume;
    [(ISObservable *)self performChanges:v5];
  }
}

- (void)setAudioEnabled:(BOOL)enabled
{
  if (self->_audioEnabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__ISBasePlayer_setAudioEnabled___block_invoke;
    v5[3] = &unk_279A29DB8;
    v5[4] = self;
    enabledCopy = enabled;
    [(ISObservable *)self performChanges:v5];
  }
}

- (void)_videoWillPlayToEnd
{
  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  [activeBehavior videoWillPlayToEnd];
}

- (void)_videoWillPlayToPhoto
{
  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  [activeBehavior videoWillPlayToPhoto];
}

- (void)_videoDidPlayToEnd
{
  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  [activeBehavior videoDidPlayToEnd];
}

- (BOOL)videoLayersReadyForDisplay
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_outputs;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 isVideoReadyForDisplay])
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_outputVideoReadyForDisplayDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ISBasePlayer__outputVideoReadyForDisplayDidChange___block_invoke;
  v6[3] = &unk_279A2A348;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  is_dispatch_on_main_queue(v6);
}

void __53__ISBasePlayer__outputVideoReadyForDisplayDidChange___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 112) containsObject:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) activeBehavior];
    [v2 videoReadyForDisplayDidChange];
  }
}

- (void)removeOutput:(id)output
{
  outputCopy = output;
  [(ISBasePlayer *)self willRemoveOutput:outputCopy];
  [(NSHashTable *)self->_outputs removeObject:outputCopy];
}

- (void)addOutput:(id)output
{
  outputCopy = output;
  [(NSHashTable *)self->_outputs addObject:outputCopy];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, outputCopy);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __26__ISBasePlayer_addOutput___block_invoke;
    v8 = &unk_279A29900;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    [outputCopy setVideoLayerReadyForDisplayChangeHandler:&v5];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  [(ISBasePlayer *)self didAddOutput:outputCopy, v5, v6, v7, v8];
}

void __26__ISBasePlayer_addOutput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _outputVideoReadyForDisplayDidChange:v2];
}

- (void)statusDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__ISBasePlayer_statusDidChange__block_invoke;
  v2[3] = &unk_279A2A488;
  v2[4] = self;
  [(ISObservable *)self performChanges:v2];
}

uint64_t __31__ISBasePlayer_statusDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateWillPlayToEndObserver];
  v2 = *(a1 + 32);

  return [v2 _invalidateWillPlayToPhotoObserver];
}

- (void)playerItemDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__ISBasePlayer_playerItemDidChange__block_invoke;
  v2[3] = &unk_279A2A488;
  v2[4] = self;
  [(ISObservable *)self performChanges:v2];
}

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self->_playerItem != itemCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__ISBasePlayer_setPlayerItem___block_invoke;
    v6[3] = &unk_279A2A398;
    v6[4] = self;
    v7 = itemCopy;
    [(ISObservable *)self performChanges:v6];
  }
}

uint64_t __30__ISBasePlayer_setPlayerItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setVideoPlayer:0];
  [*(*(a1 + 32) + 160) unregisterChangeObserver:*(a1 + 32) context:ISPlayerItemObservableContext];
  objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
  [*(*(a1 + 32) + 160) registerChangeObserver:*(a1 + 32) context:ISPlayerItemObservableContext];
  [*(a1 + 32) configurePlayerItem];
  [*(a1 + 32) _invalidateVideoPlayer];
  [*(a1 + 32) _invalidateContentFromPlayerItem];
  v2 = *(a1 + 32);

  return [v2 playerItemDidChange];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->wrappedVideoPlayerForPlayer = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->videoPlayerForPlayer = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->playerWillRelinquishVideoPlayer = objc_opt_respondsToSelector() & 1;
  }
}

- (void)dealloc
{
  [(ISBehavior *)self->_activeBehavior setDelegate:0];
  activeBehavior = self->_activeBehavior;
  self->_activeBehavior = 0;

  v4 = self->_videoPlayer;
  v5 = v4;
  if (self->__videoWillPlayToEndObserver)
  {
    [(ISWrappedAVPlayer *)v4 removeTimeObserver:?];
  }

  [(ISWrappedAVPlayer *)v5 cancelPendingPrerolls];
  if (self->_videoPlayer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playerWillRelinquishVideoPlayer:self->_videoPlayer];
  }

  v7 = +[ISDeferredDealloc sharedInstance];
  [v7 _performDeferredDealloc:v5];

  v8.receiver = self;
  v8.super_class = ISBasePlayer;
  [(ISBasePlayer *)&v8 dealloc];
}

- (ISBasePlayer)initWithVideoPlayer:(id)player
{
  playerCopy = player;
  v15.receiver = self;
  v15.super_class = ISBasePlayer;
  v6 = [(ISObservable *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_audioVolume = 1.0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    outputs = v7->_outputs;
    v7->_outputs = weakObjectsHashTable;

    objc_storeStrong(&v7->_providedAVPlayer, player);
    v10 = MEMORY[0x277CC08B0];
    *&v7->value = *MEMORY[0x277CC08B0];
    v7->epoch = *(v10 + 16);
    v7->_lastAppliedScale = 1.0;
    v7->_audioEnabled = 1;
    objc_storeStrong(&v7->_apertureMode, *MEMORY[0x277CE62A8]);
    v11 = objc_alloc_init(MEMORY[0x277D3CAE0]);
    resourceReclamationController = v7->_resourceReclamationController;
    v7->_resourceReclamationController = v11;

    [(PXAVResourceReclamationController *)v7->_resourceReclamationController registerObserver:v7];
    v13 = objc_alloc_init(ISDefaultBehavior);
    [(ISBasePlayer *)v7 setActiveBehavior:v13];
  }

  return v7;
}

@end