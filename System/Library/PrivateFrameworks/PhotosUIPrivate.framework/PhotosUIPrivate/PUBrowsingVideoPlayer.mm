@interface PUBrowsingVideoPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (BOOL)isAtBeginning;
- (BOOL)isAtEnd;
- (BOOL)isAutoPlayingVideo;
- (BOOL)isPlayable;
- (BOOL)isStalled;
- (BOOL)shouldLoopCurrentVideo;
- (CGSize)targetSize;
- (ISWrappedAVPlayer)avPlayer;
- (NSHashTable)timeObservers;
- (NSHashTable)videoOutputs;
- (NSString)description;
- (PUBrowsingVideoPlayer)init;
- (PUBrowsingVideoPlayer)initWithAsset:(id)asset mediaProvider:(id)provider;
- (PUBrowsingVideoPlayerChange)currentChange;
- (int64_t)_videoSessionDesiredPlayState;
- (int64_t)playState;
- (void)_handleSeekCompletion:(id)completion finished:(BOOL)finished;
- (void)_handleShouldReloadAssetMediaNotification:(id)notification;
- (void)_performPendingSeekIfNeeded;
- (void)_requestNewRenderIfNeeded;
- (void)_setAudioStatus:(int64_t)status;
- (void)_setError:(id)error;
- (void)_setPlayerItem:(id)item timeRangeMapper:(id)mapper;
- (void)_setPlayerLoadingAllowed:(BOOL)allowed;
- (void)_setVideoSessionVolume:(id)volume;
- (void)_updateMuteState;
- (void)_updatePlayerItem;
- (void)_updatePlayerLoadingAllowedWithUpdateID:(unint64_t)d;
- (void)_updatePlayerVolume;
- (void)_updateVideoDuration;
- (void)_updateVideoSession;
- (void)_updateVideoSessionDesiredPlayState;
- (void)assetContentDidChange;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)registerChangeObserver:(id)observer;
- (void)registerTimeObserver:(id)observer;
- (void)registerVideoOutput:(id)output;
- (void)rewindExistingPlayer;
- (void)seekToTime:(id *)time completionHandler:(id)handler;
- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
- (void)setActivated:(BOOL)activated;
- (void)setAsset:(id)asset;
- (void)setDesiredPlayState:(int64_t)state reason:(id)reason;
- (void)setDesiredSeekTime:(id *)time;
- (void)setDesiredTargetSize:(CGSize)size;
- (void)setDuration:(id *)duration;
- (void)setIsMuted:(BOOL)muted;
- (void)setIsUserScrubbing:(BOOL)scrubbing;
- (void)setLoopingEnabledForAllVideos:(BOOL)videos;
- (void)setPlaybackStartTime:(id *)time;
- (void)setShouldLoadVideoSession:(BOOL)session;
- (void)setShouldPreloadVideoContent:(BOOL)content;
- (void)setVideoSession:(id)session;
- (void)setVolume:(float)volume;
- (void)testing_setVideoSession:(id)session;
- (void)unregisterChangeObserver:(id)observer;
- (void)unregisterTimeObserver:(id)observer;
- (void)unregisterVideoOutput:(id)output;
- (void)videoSessionAudioSessionOutputVolumeDidChange:(id)change fromVolume:(float)volume toVolume:(float)toVolume;
- (void)videoSessionDidPlayToEnd:(id)end;
@end

@implementation PUBrowsingVideoPlayer

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateVideoDuration
{
  memset(&v9, 0, sizeof(v9));
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v4 = videoSession;
  if (videoSession)
  {
    [videoSession videoDuration];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if ((v9.flags & 0x1D) != 1)
  {
    asset = [(PUBrowsingVideoPlayer *)self asset];
    [asset duration];
    v7 = v6;

    CMTimeMakeWithSeconds(&v8, v7, 60);
    v9 = v8;
  }

  v8 = v9;
  [(PUBrowsingVideoPlayer *)self setDuration:&v8];
}

- (void)_setVideoSessionVolume:(id)volume
{
  v14 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  shouldFadeNextVolumeChange = [(PUBrowsingVideoPlayer *)self shouldFadeNextVolumeChange];
  [(PUBrowsingVideoPlayer *)self setShouldFadeNextVolumeChange:0];
  v6 = 0.0;
  if (![(PUBrowsingVideoPlayer *)self isMuted])
  {
    [(PUBrowsingVideoPlayer *)self volume];
    v6 = v7;
  }

  v8 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Browsing Video Player setting player volume to %f: %@", &v10, 0x16u);
  }

  *&v9 = v6;
  [volumeCopy setVolume:shouldFadeNextVolumeChange withFade:v9];
}

- (void)_performPendingSeekIfNeeded
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v4 = videoSession;
  if (videoSession)
  {
    p_pendingSeekTime = &self->_pendingSeekTime;
    if ((self->_pendingSeekTime.flags & 0x1D) == 1)
    {
      if ([videoSession isReadyForSeeking])
      {
        pendingSeekCompletionHandler = self->_pendingSeekCompletionHandler;
        v9 = *&p_pendingSeekTime->value;
        epoch = self->_pendingSeekTime.epoch;
        [v4 seekToTime:&v9 completionHandler:pendingSeekCompletionHandler];
        v7 = self->_pendingSeekCompletionHandler;
        self->_pendingSeekCompletionHandler = 0;

        v8 = MEMORY[0x1E6960C70];
        *&p_pendingSeekTime->value = *MEMORY[0x1E6960C70];
        self->_pendingSeekTime.epoch = *(v8 + 16);
      }
    }
  }
}

- (void)_updatePlayerVolume
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PUBrowsingVideoPlayer__updatePlayerVolume__block_invoke;
  v4[3] = &unk_1E7B75DE0;
  v4[4] = self;
  [videoSession performChanges:v4 withPresentationContext:1 presenter:self->_videoSessionPresenter];
}

- (void)_updateVideoSessionDesiredPlayState
{
  _videoSessionDesiredPlayState = [(PUBrowsingVideoPlayer *)self _videoSessionDesiredPlayState];
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PUBrowsingVideoPlayer__updateVideoSessionDesiredPlayState__block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0___PXMutableVideoSession__8l;
  v5[4] = _videoSessionDesiredPlayState;
  [videoSession performChanges:v5 withPresentationContext:1 presenter:self->_videoSessionPresenter];
}

- (int64_t)_videoSessionDesiredPlayState
{
  v24 = *MEMORY[0x1E69E9840];
  isPlaybackDesired = [(PUBrowsingVideoPlayer *)self isPlaybackDesired];
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v5 = videoSession;
  if (!isPlaybackDesired || !videoSession)
  {
LABEL_7:
    [v5 desiredPlayState];
    v7 = 0;
    goto LABEL_8;
  }

  if ([(PUBrowsingVideoPlayer *)self isUserScrubbing])
  {
    v6 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "[PUBrowsingVideoPlayer] %{public}@ will remain paused while user is scrubbing.", &v20, 0xCu);
    }

    goto LABEL_7;
  }

  mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
  visibilityState = [mEMORY[0x1E69C3358] visibilityState];

  desiredPlayState = [v5 desiredPlayState];
  v7 = visibilityState == 1;
  if (visibilityState == 1 && desiredPlayState != 1)
  {
    videoOutputs = [(PUBrowsingVideoPlayer *)self videoOutputs];
    v17 = PXFilter();

    v18 = [(PUBrowsingVideoPlayer *)v17 count];
    v7 = v18 == 0;
    if (v18)
    {
      v19 = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        selfCopy = v17;
        v22 = 2114;
        selfCopy2 = self;
        _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "[PUBrowsingVideoPlayer] Unable to start video session playback because one or more video outputs is not ready for display:\n\t%{public}@\n\t%{public}@", &v20, 0x16u);
      }
    }
  }

LABEL_8:
  asset = [(PUBrowsingVideoPlayer *)self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset2 = [(PUBrowsingVideoPlayer *)self asset];
    if ([asset2 needsDeferredProcessing])
    {
      v10 = +[PUPhotoEditProtoSettings sharedInstance];
      enableLiveVideoRender = [v10 enableLiveVideoRender];
    }

    else
    {
      enableLiveVideoRender = 1;
    }
  }

  else
  {
    enableLiveVideoRender = 1;
  }

  return v7 & enableLiveVideoRender;
}

- (void)_updateVideoSession
{
  v34[1] = *MEMORY[0x1E69E9840];
  asset = [(PUBrowsingVideoPlayer *)self asset];
  v4 = [PUWrappingPXMediaProvider alloc];
  mediaProvider = [(PUBrowsingVideoPlayer *)self mediaProvider];
  v6 = [(PUWrappingPXMediaProvider *)v4 initWithWrappedMediaProvider:mediaProvider];

  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  if ([(PUBrowsingVideoPlayer *)self isPlayerLoadingAllowed])
  {
    shouldLoadVideoSession = [(PUBrowsingVideoPlayer *)self shouldLoadVideoSession];
    if (videoSession)
    {
      goto LABEL_14;
    }
  }

  else
  {
    shouldLoadVideoSession = 0;
    if (videoSession)
    {
      goto LABEL_14;
    }
  }

  if (asset && v6)
  {
    asset2 = [(PUBrowsingVideoPlayer *)self asset];
    if ([asset2 playbackStyle] == 5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = objc_alloc_init(MEMORY[0x1E69C3468]);
    [v11 setIsStreamingAllowed:1];
    [v11 setQuality:2];
    [(PUBrowsingVideoPlayer *)self targetSize];
    [v11 setTargetSize:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc(MEMORY[0x1E69C3860]);
      v34[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      v14 = [v12 initWithAsset:asset mediaProvider:v6 deliveryStrategies:v13 audioSessionKind:v10 requestURLOnly:0];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E69C3470]);
      v33 = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v14 = [v15 initWithAsset:asset mediaProvider:v6 deliveryStrategies:v16 audioSessionKind:v10 requestURLOnly:0];

      [v14 makeUniqueContentIdentifier];
    }

    mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
    videoSession = [mEMORY[0x1E69C3C70] checkOutSessionWithContentProvider:v14];

    [(PUBrowsingVideoPlayer *)self setVideoSession:videoSession];
  }

LABEL_14:
  if (shouldLoadVideoSession)
  {
    isActivated = [(PUBrowsingVideoPlayer *)self isActivated];
    asset3 = [(PUBrowsingVideoPlayer *)self asset];
    v20 = [asset3 playbackStyle] == 5;

    v21 = v20 || isActivated;
    if (v20 || isActivated)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    if (!v21 && [videoSession playState] == 5 && (objc_msgSend(videoSession, "contentProvider"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "loadingResult"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "priority"), v24, v23, v25 == 2))
    {
      v26 = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "[PUBrowsingVideoPlayer] Declining to trigger autoplay video because it has already failed for %@", buf, 0xCu);
      }
    }

    else
    {
      [videoSession loadIfNeededWithPriority:v22];
    }
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__PUBrowsingVideoPlayer__updateVideoSession__block_invoke;
  v29[3] = &unk_1E7B75D78;
  v29[4] = self;
  v30 = asset;
  videoSessionPresenter = self->_videoSessionPresenter;
  v28 = asset;
  [videoSession performChanges:v29 withPresentationContext:1 presenter:videoSessionPresenter];
}

void __44__PUBrowsingVideoPlayer__updateVideoSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 playbackStartTime];
  }

  else
  {
    v14 = 0uLL;
    v15 = 0;
  }

  v11 = v14;
  *&v12 = v15;
  [v3 setPlaybackStartTime:&v11];
  v5 = [*(a1 + 32) asset];
  v6 = [v5 playbackStyle];

  if (v6 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) shouldLoopCurrentVideo];
  }

  [v3 setLoopingEnabled:v6 == 5];
  [v3 setSeekToBeginningAtEnd:v7];
  [v3 setAllowsExternalPlayback:0];
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v11 = *MEMORY[0x1E6960C98];
  v12 = v8;
  v13 = *(MEMORY[0x1E6960C98] + 32);
  [v3 setPlaybackTimeRange:&v11];
  [*(a1 + 32) _setVideoSessionVolume:v3];
  v9 = [*(a1 + 32) isPlaybackDesired];
  v10 = 0;
  if (v9)
  {
    v10 = [*(a1 + 40) playbackStyle] != 5;
  }

  [v3 setPreventsSleepDuringVideoPlayback:v10];
}

- (void)_requestNewRenderIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(PUBrowsingVideoPlayer *)self shouldRequestNewRender]&& ![(PUBrowsingVideoPlayer *)self isPlaybackDesired])
  {
    [(PUBrowsingVideoPlayer *)self setShouldRequestNewRender:0];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    videoOutputs = [(PUBrowsingVideoPlayer *)self videoOutputs];
    v4 = [videoOutputs countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(videoOutputs);
          }

          [*(*(&v9 + 1) + 8 * v7++) prepareForVideoResolutionChange];
        }

        while (v5 != v7);
        v5 = [videoOutputs countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PUBrowsingVideoPlayer__requestNewRenderIfNeeded__block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v8[4] = self;
    [(PUViewModel *)self performChanges:v8];
  }
}

uint64_t __50__PUBrowsingVideoPlayer__requestNewRenderIfNeeded__block_invoke(uint64_t a1)
{
  v8 = 0uLL;
  v9 = 0;
  v2 = [*(a1 + 32) videoSession];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  [*(a1 + 32) invalidateExistingPlayer];
  v4 = *(a1 + 32);
  v6 = v8;
  v7 = v9;
  [v4 seekToTime:&v6 completionHandler:0];
  return [*(*(a1 + 32) + 64) setNeedsUpdateOf:sel__updateVideoSession];
}

- (void)_updatePlayerLoadingAllowedWithUpdateID:(unint64_t)d
{
  if ([(PUBrowsingVideoPlayer *)self nextPlayerLoadingEnabledUpdateID]== d)
  {
    _playerLoadingDisablingReasons = [(PUBrowsingVideoPlayer *)self _playerLoadingDisablingReasons];
    v5 = [_playerLoadingDisablingReasons count] == 0;

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__PUBrowsingVideoPlayer__updatePlayerLoadingAllowedWithUpdateID___block_invoke;
    v6[3] = &unk_1E7B7FF98;
    v6[4] = self;
    v7 = v5;
    [(PUViewModel *)self performChanges:v6];
  }
}

- (NSHashTable)videoOutputs
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:744 description:{@"%s must be called on the main thread", "-[PUBrowsingVideoPlayer videoOutputs]"}];
  }

  videoOutputs = self->_videoOutputs;
  if (!videoOutputs)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v6 = self->_videoOutputs;
    self->_videoOutputs = v5;

    videoOutputs = self->_videoOutputs;
  }

  return videoOutputs;
}

- (NSHashTable)timeObservers
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:734 description:{@"%s must be called on the main thread", "-[PUBrowsingVideoPlayer timeObservers]"}];
  }

  timeObservers = self->_timeObservers;
  if (!timeObservers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v6 = self->_timeObservers;
    self->_timeObservers = v5;

    timeObservers = self->_timeObservers;
  }

  return timeObservers;
}

- (void)_handleShouldReloadAssetMediaNotification:(id)notification
{
  notificationCopy = notification;
  asset = [(PUBrowsingVideoPlayer *)self asset];
  object = [notificationCopy object];

  if ([object conformsToProtocol:&unk_1F2BDF190])
  {
    v7 = object;
    uuid = [asset uuid];
    uuid2 = [v7 uuid];
    v10 = [uuid isEqualToString:uuid2];

    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__PUBrowsingVideoPlayer__handleShouldReloadAssetMediaNotification___block_invoke;
      v11[3] = &unk_1E7B80DD0;
      v11[4] = self;
      [(PUViewModel *)self performChanges:v11];
    }
  }
}

- (void)setVideoSession:(id)session
{
  sessionCopy = session;
  videoSession = self->_videoSession;
  if (videoSession != sessionCopy)
  {
    v11 = sessionCopy;
    [(PXVideoSession *)videoSession unregisterChangeObserver:self context:videoSessionObservationContext];
    delegate = [(PXVideoSession *)self->_videoSession delegate];

    if (delegate == self)
    {
      [(PXVideoSession *)self->_videoSession setDelegate:0];
    }

    [(PXVideoSession *)self->_videoSession leavePresentationContext:1 presenter:self->_videoSessionPresenter];
    mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
    [mEMORY[0x1E69C3C70] checkInVideoSession:self->_videoSession];

    objc_storeStrong(&self->_videoSession, session);
    [(PXVideoSession *)v11 setDelegate:self];
    [(PUBrowsingVideoPlayer *)self _updatePlayerItem];
    [(PUBrowsingVideoPlayer *)self _updateVideoDuration];
    [(PUBrowsingVideoPlayer *)self _setAudioStatus:[(PXVideoSession *)v11 audioStatus]];
    error = [(PXVideoSession *)v11 error];
    [(PUBrowsingVideoPlayer *)self _setError:error];

    [(PXVideoSession *)self->_videoSession registerChangeObserver:self context:videoSessionObservationContext];
    [(PXVideoSession *)self->_videoSession enterPresentationContext:1 presenter:self->_videoSessionPresenter];
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setAVPlayerDidChange:1];

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSessionDesiredPlayState];
    videoSession = [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayerVolume];
    sessionCopy = v11;
  }

  MEMORY[0x1EEE66BB8](videoSession, sessionCopy);
}

- (void)testing_setVideoSession:(id)session
{
  sessionCopy = session;
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = NSStringFromSelector(a2);
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:684 description:{@"%@ should only be called as part of a unit test, but it was called from: \n%@", v6, callStackSymbols}];
  }

  [(PUBrowsingVideoPlayer *)self setVideoSession:sessionCopy];
}

- (void)_setPlayerLoadingAllowed:(BOOL)allowed
{
  if (self->_isPlayerLoadingAllowed != allowed)
  {
    allowedCopy = allowed;
    self->_isPlayerLoadingAllowed = allowed;
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setPlayerLoadingAllowedDidChange:1];

    if (allowedCopy)
    {
      updater = self->_updater;

      [(PXUpdater *)updater setNeedsUpdateOf:sel__updateVideoSession];
    }
  }
}

- (void)_setAudioStatus:(int64_t)status
{
  if (self->_audioStatus != status)
  {
    self->_audioStatus = status;
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setAudioStatusDidChange:1];
  }
}

- (void)_setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    v7 = errorCopy;
    objc_storeStrong(&self->_error, error);
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setErrorDidChange:1];

    errorCopy = v7;
  }
}

- (void)_setPlayerItem:(id)item timeRangeMapper:(id)mapper
{
  itemCopy = item;
  mapperCopy = mapper;
  if (*&self->_timeRangeMapper != __PAIR128__(itemCopy, mapperCopy))
  {
    objc_storeStrong(&self->_playerItem, item);
    objc_storeStrong(&self->_timeRangeMapper, mapper);
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setPlayerItemDidChange:1];
  }
}

- (BOOL)isAutoPlayingVideo
{
  v3 = +[PUOneUpSettings sharedInstance];
  asset = [(PUBrowsingVideoPlayer *)self asset];
  v5 = [v3 allowAutoplayVideoForAsset:asset];

  return v5;
}

- (void)_updateMuteState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__PUBrowsingVideoPlayer__updateMuteState__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

void __41__PUBrowsingVideoPlayer__updateMuteState__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAutoPlayingVideo] && (objc_msgSend(*(a1 + 32), "asset"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "playbackStyle"), v2, v3 != 5))
  {
    v5 = [MEMORY[0x1E69C3C48] sharedController];
    [*(a1 + 32) setIsMuted:{objc_msgSend(v5, "isMuted")}];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 setIsMuted:0];
  }
}

- (BOOL)shouldLoopCurrentVideo
{
  asset = [(PUBrowsingVideoPlayer *)self asset];
  if ([asset playbackStyle] == 5)
  {
    v4 = 1;
  }

  else if ([(PUBrowsingVideoPlayer *)self loopingEnabledForAllVideos])
  {
    asset2 = [(PUBrowsingVideoPlayer *)self asset];
    [asset2 duration];
    v7 = v6;
    [(PUBrowsingVideoPlayer *)self minimumDurationForLooping];
    v4 = v7 >= v8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)videoSessionAudioSessionOutputVolumeDidChange:(id)change fromVolume:(float)volume toVolume:(float)toVolume
{
  if (volume < toVolume)
  {
    px_dispatch_on_main_queue();
  }
}

uint64_t __91__PUBrowsingVideoPlayer_videoSessionAudioSessionOutputVolumeDidChange_fromVolume_toVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __91__PUBrowsingVideoPlayer_videoSessionAudioSessionOutputVolumeDidChange_fromVolume_toVolume___block_invoke_2;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

void __91__PUBrowsingVideoPlayer_videoSessionAudioSessionOutputVolumeDidChange_fromVolume_toVolume___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) currentChange];
  [v1 _setAudioSessionVolumeIncreaseDidOccur:1];
}

- (void)videoSessionDidPlayToEnd:(id)end
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:PUBrowsingVideoPlayerDidPlayToEndTimeNotification object:self];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (VideoMuteControllerContext == context)
  {
    if (change)
    {
      [(PUBrowsingVideoPlayer *)self _updateMuteState];
    }
  }

  else if (videoSessionObservationContext == context)
  {
    v11[5] = MEMORY[0x1E69E9820];
    v11[6] = 3221225472;
    v11[7] = __54__PUBrowsingVideoPlayer_observable_didChange_context___block_invoke;
    v11[8] = &unk_1E7B7FF70;
    v11[9] = self;
    v11[10] = change;
    px_dispatch_on_main_queue();
  }

  else
  {
    if (ApplicationStateContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:601 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PUBrowsingVideoPlayer_observable_didChange_context___block_invoke_3;
    v11[3] = &unk_1E7B80DD0;
    v11[4] = self;
    [(PUViewModel *)self performChanges:v11];
  }
}

uint64_t __54__PUBrowsingVideoPlayer_observable_didChange_context___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PUBrowsingVideoPlayer_observable_didChange_context___block_invoke_2;
  v3[3] = &unk_1E7B7FF70;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 performChanges:v3];
}

void __54__PUBrowsingVideoPlayer_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    [*(a1 + 32) _updatePlayerItem];
    v2 = *(a1 + 40);
    if ((v2 & 0x80) == 0)
    {
LABEL_3:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v37 = 0uLL;
  v38 = 0;
  v3 = [*(a1 + 32) videoSession];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    v37 = 0uLL;
    v38 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [*(a1 + 32) timeObservers];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v31 = v37;
        v32 = v38;
        [v10 videoPlayer:v11 currentTimeDidChange:&v31];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v2 = *(a1 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_4:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [*(a1 + 32) videoSession];
  [*(a1 + 32) _setAudioStatus:{objc_msgSend(v12, "audioStatus")}];

  v2 = *(a1 + 40);
  if ((v2 & 0x100) == 0)
  {
LABEL_5:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [*(a1 + 32) currentChange];
  [v13 _setAtBeginningDidChange:1];

  if ((*(a1 + 40) & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = [*(a1 + 32) currentChange];
  [v14 _setAtEndDidChange:1];

  v15 = [*(a1 + 32) videoSession];
  if ([v15 isAtEnd])
  {
    v16 = [*(a1 + 32) shouldLoopCurrentVideo];

    if ((v16 & 1) == 0)
    {
      [*(a1 + 32) setDesiredPlayState:1 reason:@"Video played to end"];
    }
  }

  else
  {
  }

LABEL_25:
  v17 = *(a1 + 40);
  if ((v17 & 2) != 0)
  {
    v18 = [*(a1 + 32) currentChange];
    [v18 _setStalledDidChange:1];

    v17 = *(a1 + 40);
    if ((v17 & 0x20) == 0)
    {
LABEL_27:
      if ((v17 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v19 = [*(a1 + 32) currentChange];
  [v19 _setPlayableDidChange:1];

  v17 = *(a1 + 40);
  if ((v17 & 4) == 0)
  {
LABEL_28:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_34:
  [*(*(a1 + 32) + 64) setNeedsUpdateOf:sel__updateVideoSession];
  v20 = [*(a1 + 32) videoSession];
  v21 = [v20 error];
  [*(a1 + 32) _setError:v21];

  v22 = [*(a1 + 32) currentChange];
  [v22 _setPlayStateDidChange:1];

  v23 = [*(a1 + 32) avPlayer];
  v24 = [v23 currentItem];
  v25 = [v24 videoComposition];
  v26 = [v25 instructions];
  v27 = [v26 firstObject];

  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [*(a1 + 32) videoSession];
      if ([v28 playState] == 3)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      *&v30 = v29;
      [v27 setPlaybackRate:v30];
    }
  }

  v17 = *(a1 + 40);
  if ((v17 & 0x2000) == 0)
  {
LABEL_29:
    if ((v17 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_41:
  [*(a1 + 32) _performPendingSeekIfNeeded];
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return;
  }

LABEL_30:
  [*(a1 + 32) _updateVideoDuration];
}

- (void)_updatePlayerItem
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  playerItem = [videoSession playerItem];
  timeRangeMapper = [videoSession timeRangeMapper];
  [(PUBrowsingVideoPlayer *)self _setPlayerItem:playerItem timeRangeMapper:timeRangeMapper];
}

- (void)unregisterVideoOutput:(id)output
{
  v5 = MEMORY[0x1E696AF00];
  outputCopy = output;
  if (([v5 isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:517 description:{@"%s must be called on the main thread", "-[PUBrowsingVideoPlayer unregisterVideoOutput:]"}];
  }

  v7 = objc_getAssociatedObject(outputCopy, VideoOutputPlayerReferenceKey);
  [v7 setPlayer:0];
  [outputCopy setReadyForDisplayChangeHandler:0];
  videoOutputs = [(PUBrowsingVideoPlayer *)self videoOutputs];
  [videoOutputs removeObject:outputCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PUBrowsingVideoPlayer_unregisterVideoOutput___block_invoke;
  v10[3] = &unk_1E7B80DD0;
  v10[4] = self;
  [(PUViewModel *)self performChanges:v10];
}

- (void)registerVideoOutput:(id)output
{
  v20 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:498 description:{@"%s must be called on the main thread", "-[PUBrowsingVideoPlayer registerVideoOutput:]"}];
  }

  v6 = objc_getAssociatedObject(outputCopy, VideoOutputPlayerReferenceKey);
  player = [(_PUBrowsingVideoOutputPlayerReference *)v6 player];

  if (player)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      player2 = [(_PUBrowsingVideoOutputPlayerReference *)v6 player];
      *location = 138412802;
      *&location[4] = outputCopy;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = player2;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "[PUBrowsingVideoPlayer] Attempted to register output %@ with %@, but it is already registered with %@", location, 0x20u);
    }
  }

  if (!v6)
  {
    v6 = objc_alloc_init(_PUBrowsingVideoOutputPlayerReference);
    objc_setAssociatedObject(outputCopy, VideoOutputPlayerReferenceKey, v6, 1);
  }

  [(_PUBrowsingVideoOutputPlayerReference *)v6 setPlayer:self];
  videoOutputs = [(PUBrowsingVideoPlayer *)self videoOutputs];
  [videoOutputs addObject:outputCopy];

  objc_initWeak(location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__PUBrowsingVideoPlayer_registerVideoOutput___block_invoke;
  v13[3] = &unk_1E7B80638;
  objc_copyWeak(&v14, location);
  [outputCopy setReadyForDisplayChangeHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__PUBrowsingVideoPlayer_registerVideoOutput___block_invoke_2;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [(PUViewModel *)self performChanges:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

void __45__PUBrowsingVideoPlayer_registerVideoOutput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVideoSessionDesiredPlayState];
}

- (void)unregisterTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(PUBrowsingVideoPlayer *)self timeObservers];
  [timeObservers removeObject:observerCopy];
}

- (void)registerTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(PUBrowsingVideoPlayer *)self timeObservers];
  [timeObservers addObject:observerCopy];
}

- (void)setPlaybackStartTime:(id *)time
{
  p_playbackStartTime = &self->_playbackStartTime;
  time1 = *time;
  playbackStartTime = self->_playbackStartTime;
  if (CMTimeCompare(&time1, &playbackStartTime))
  {
    v6 = *&time->var0;
    p_playbackStartTime->epoch = time->var3;
    *&p_playbackStartTime->value = v6;
    [(PUBrowsingVideoPlayer *)self _updateVideoSession];
  }
}

- (void)setDesiredSeekTime:(id *)time
{
  v20 = *MEMORY[0x1E69E9840];
  p_desiredSeekTime = &self->_desiredSeekTime;
  time1 = *time;
  time2 = self->_desiredSeekTime;
  if (CMTimeCompare(&time1, &time2))
  {
    v6 = *&time->var0;
    p_desiredSeekTime->epoch = time->var3;
    *&p_desiredSeekTime->value = v6;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    timeObservers = [(PUBrowsingVideoPlayer *)self timeObservers];
    v8 = [timeObservers countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(timeObservers);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          time1 = *time;
          [v12 videoPlayer:self desiredSeekTimeDidChange:&time1];
          ++v11;
        }

        while (v9 != v11);
        v9 = [timeObservers countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v4 = self + 3;
  if ((self[3].var2 & 0x1D) == 1)
  {
    goto LABEL_7;
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  videoSession = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self videoSession];
  v6 = videoSession;
  if (videoSession)
  {
    [videoSession currentTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  if ((retstr->var2 & 0x1D) != 1)
  {
    v4 = MEMORY[0x1E6960CC0];
LABEL_7:
    *&retstr->var0 = *&v4->var0;
    retstr->var3 = v4->var3;
  }

  return self;
}

- (void)rewindExistingPlayer
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  [videoSession seekToPlaybackStartTime];
}

- (void)setShouldPreloadVideoContent:(BOOL)content
{
  if (self->_shouldPreloadVideoContent != content)
  {
    self->_shouldPreloadVideoContent = content;
    if (content)
    {
      [(PUBrowsingVideoPlayer *)self setShouldLoadVideoSession:1];
    }

    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateVideoSession];
  }
}

- (void)setActivated:(BOOL)activated
{
  if (self->_isActivated != activated)
  {
    self->_isActivated = activated;
    if (activated)
    {
      [(PUBrowsingVideoPlayer *)self setShouldLoadVideoSession:1];
    }

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setActivatedDidChange:1];
  }
}

- (void)_handleSeekCompletion:(id)completion finished:(BOOL)finished
{
  finishedCopy = finished;
  completionCopy = completion;
  [(PUBrowsingVideoPlayer *)self setIsSeeking:0];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, finishedCopy);
    v6 = completionCopy;
  }

  if (finishedCopy)
  {
    [(PUBrowsingVideoPlayer *)self _performPendingSeekIfNeeded];
    v6 = completionCopy;
  }
}

- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  handlerCopy = handler;
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v12 = videoSession;
  if (videoSession && [videoSession isReadyForSeeking] && !self->_isSeeking)
  {
    self->_isSeeking = 1;
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__PUBrowsingVideoPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
    v23[3] = &unk_1E7B75D50;
    objc_copyWeak(&v25, &location);
    v24 = handlerCopy;
    v21 = *&time->var0;
    var3 = time->var3;
    v19 = *&before->var0;
    v20 = before->var3;
    v17 = *&after->var0;
    v18 = after->var3;
    [v12 seekToTime:&v21 toleranceBefore:&v19 toleranceAfter:&v17 completionHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = time->var3;
    *&self->_pendingSeekTime.value = *&time->var0;
    self->_pendingSeekTime.epoch = v13;
    v14 = [handlerCopy copy];
    pendingSeekCompletionHandler = self->_pendingSeekCompletionHandler;
    self->_pendingSeekCompletionHandler = v14;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__PUBrowsingVideoPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke_3;
    v16[3] = &unk_1E7B80DD0;
    v16[4] = self;
    [(PUViewModel *)self performChanges:v16];
  }
}

void __85__PUBrowsingVideoPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PUBrowsingVideoPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke_2;
  block[3] = &unk_1E7B75D28;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __85__PUBrowsingVideoPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSeekCompletion:*(a1 + 32) finished:*(a1 + 48)];
}

- (void)seekToTime:(id *)time completionHandler:(id)handler
{
  v8 = *time;
  v6 = *MEMORY[0x1E6960C88];
  v7 = *(MEMORY[0x1E6960C88] + 16);
  v4 = v6;
  v5 = v7;
  [(PUBrowsingVideoPlayer *)self seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:handler];
}

- (BOOL)isStalled
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];

  if (!videoSession)
  {
    return 0;
  }

  videoSession2 = [(PUBrowsingVideoPlayer *)self videoSession];
  isStalled = [videoSession2 isStalled];

  return isStalled;
}

- (int64_t)playState
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v3 = videoSession;
  if (videoSession)
  {
    playState = [videoSession playState];
  }

  else
  {
    playState = 0;
  }

  return playState;
}

- (BOOL)isPlayable
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];

  if (!videoSession)
  {
    return 1;
  }

  videoSession2 = [(PUBrowsingVideoPlayer *)self videoSession];
  isPlayable = [videoSession2 isPlayable];

  return isPlayable;
}

- (BOOL)isAtEnd
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];

  if (!videoSession)
  {
    return 0;
  }

  videoSession2 = [(PUBrowsingVideoPlayer *)self videoSession];
  isAtEnd = [videoSession2 isAtEnd];

  return isAtEnd;
}

- (BOOL)isAtBeginning
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];

  if (!videoSession)
  {
    return 1;
  }

  videoSession2 = [(PUBrowsingVideoPlayer *)self videoSession];
  isAtBeginning = [videoSession2 isAtBeginning];

  return isAtBeginning;
}

- (void)setLoopingEnabledForAllVideos:(BOOL)videos
{
  if (self->_loopingEnabledForAllVideos != videos)
  {
    self->_loopingEnabledForAllVideos = videos;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
  }
}

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayerVolume];
  }
}

- (void)setShouldLoadVideoSession:(BOOL)session
{
  if (self->_shouldLoadVideoSession != session)
  {
    self->_shouldLoadVideoSession = session;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
  }
}

- (void)setDuration:(id *)duration
{
  p_duration = &self->_duration;
  time1 = *duration;
  duration = self->_duration;
  if (CMTimeCompare(&time1, &duration))
  {
    v6 = *&duration->var0;
    p_duration->epoch = duration->var3;
    *&p_duration->value = v6;
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange setDurationDidChange:1];
  }
}

- (void)setDesiredTargetSize:(CGSize)size
{
  PXSizeMin();
  v5 = v4;
  v7 = v6;
  v8 = +[PUPhotoEditProtoSettings sharedInstance];
  enableDynamicVideoScaling = [v8 enableDynamicVideoScaling];

  if (enableDynamicVideoScaling && (PXSizeApproximatelyEqualOrBiggerThanSize() & 1) == 0)
  {
    [(PUBrowsingVideoPlayer *)self setShouldRequestNewRender:1];
    [(PUBrowsingVideoPlayer *)self _setTargetSize:v5, v7];

    [(PUBrowsingVideoPlayer *)self _requestNewRenderIfNeeded];
  }
}

- (void)setIsUserScrubbing:(BOOL)scrubbing
{
  if (self->_isUserScrubbing != scrubbing)
  {
    self->_isUserScrubbing = scrubbing;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSessionDesiredPlayState];
  }
}

- (void)setIsMuted:(BOOL)muted
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_isMuted != muted)
  {
    self->_isMuted = muted;
    [(PUBrowsingVideoPlayer *)self setShouldFadeNextVolumeChange:1];
    v4 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Browsing Video Player detected mute state change. Will update player volume. %@", &v5, 0xCu);
    }

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayerVolume];
  }
}

- (void)setDesiredPlayState:(int64_t)state reason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (self->_desiredPlayState != state)
  {
    v7 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PUBrowsingVideoDesiredPlayStateDescription(self->_desiredPlayState);
      v9 = PUBrowsingVideoDesiredPlayStateDescription(state);
      v11 = 138413058;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = reasonCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Desired play state changing from %@ to %@ with reason: %@\n\t%@", &v11, 0x2Au);
    }

    self->_desiredPlayState = state;
    if ([(PUBrowsingVideoPlayer *)self isPlaybackDesired])
    {
      [(PUBrowsingVideoPlayer *)self setShouldLoadVideoSession:1];
    }

    [(PUBrowsingVideoPlayer *)self _requestNewRenderIfNeeded];
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSessionDesiredPlayState];
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange _setDesiredPlayStateDidChange:1];
  }
}

- (ISWrappedAVPlayer)avPlayer
{
  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  videoPlayer = [videoSession videoPlayer];

  return videoPlayer;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v13 = assetCopy;
    if (setAsset__onceToken != -1)
    {
      dispatch_once(&setAsset__onceToken, &__block_literal_global_15794);
      assetCopy = v13;
    }

    if (setAsset__CAMTransientAssetClass)
    {
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 1;
      }

      assetCopy = v13;
    }

    else
    {
      isKindOfClass = 1;
    }

    asset = self->_asset;
    v8 = assetCopy;
    assetCopy2 = asset;
    if (assetCopy2 == v8)
    {
      v11 = 0;
    }

    else
    {
      v10 = [(PUDisplayAsset *)v8 isContentEqualTo:assetCopy2];
      if (!v10)
      {
        v10 = [(PUDisplayAsset *)assetCopy2 isContentEqualTo:v8];
      }

      v11 = v10 != 2;
    }

    if (((v11 | isKindOfClass) & 1) == 0)
    {
      v11 = ![(PUBrowsingVideoPlayer *)self isActivated];
    }

    objc_storeStrong(&self->_asset, asset);
    currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
    [currentChange setHasChanges];

    if (v11)
    {
      [(PUBrowsingVideoPlayer *)self assetContentDidChange];
    }

    if ([(PUDisplayAsset *)v8 mediaType]!= 2 && ([(PUDisplayAsset *)v8 canPlayLoopingVideo]& 1) == 0)
    {
      [(PUBrowsingVideoPlayer *)self setActivated:0];
    }

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
    assetCopy = v13;
  }
}

Class __34__PUBrowsingVideoPlayer_setAsset___block_invoke()
{
  result = NSClassFromString(&cfstr_Camtransientas.isa);
  setAsset__CAMTransientAssetClass = result;
  return result;
}

- (void)assetContentDidChange
{
  currentChange = [(PUBrowsingVideoPlayer *)self currentChange];
  [currentChange setHasChanges];

  [(PUBrowsingVideoPlayer *)self setVideoSession:0];
  [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateVideoSession];
  [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePlayerVolume];
  updater = self->_updater;

  [(PXUpdater *)updater setNeedsUpdateOf:sel__updateVideoSessionDesiredPlayState];
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingVideoPlayer;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingVideoPlayer;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (PUBrowsingVideoPlayerChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUBrowsingVideoPlayer;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PUBrowsingVideoPlayer;
  [(PUViewModel *)&v3 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = PUBrowsingVideoPlayer;
  v3 = [(PUBrowsingVideoPlayer *)&v11 description];
  v4 = [v3 mutableCopy];

  asset = [(PUBrowsingVideoPlayer *)self asset];
  [v4 appendFormat:@"\n\tAsset : %@", asset];

  v6 = PUBrowsingVideoDesiredPlayStateDescription([(PUBrowsingVideoPlayer *)self desiredPlayState]);
  [v4 appendFormat:@"\n\tDesired State : %@", v6];

  videoSession = [(PUBrowsingVideoPlayer *)self videoSession];
  v8 = [videoSession description];
  [v4 appendFormat:@"\n\tVideoSession : %@", v8];

  v9 = [v4 copy];

  return v9;
}

- (void)dealloc
{
  [(PXVideoSession *)self->_videoSession leavePresentationContext:1 presenter:self->_videoSessionPresenter];
  mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
  [mEMORY[0x1E69C3C70] checkInVideoSession:self->_videoSession];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PUBrowsingVideoPlayer;
  [(PUBrowsingVideoPlayer *)&v5 dealloc];
}

- (PUBrowsingVideoPlayer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PUBrowsingVideoPlayer init]"}];

  abort();
}

- (PUBrowsingVideoPlayer)initWithAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  v10 = providerCopy;
  if (assetCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUBrowsingVideoPlayer.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider"}];

LABEL_3:
  v28.receiver = self;
  v28.super_class = PUBrowsingVideoPlayer;
  v11 = [(PUViewModel *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    objc_storeStrong(&v12->_mediaProvider, provider);
    v13 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v12];
    updater = v12->_updater;
    v12->_updater = v13;

    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updateVideoSession];
    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updatePlayerVolume];
    [(PXUpdater *)v12->_updater addUpdateSelector:sel__updateVideoSessionDesiredPlayState];
    [(PXUpdater *)v12->_updater setNeedsUpdateSelector:sel_assertInsideChangesBlock];
    mEMORY[0x1E69C3C48] = [MEMORY[0x1E69C3C48] sharedController];
    [mEMORY[0x1E69C3C48] registerChangeObserver:v12 context:VideoMuteControllerContext];

    v12->_desiredPlayState = 0;
    v12->_isPlayerLoadingAllowed = 1;
    v12->_volume = 1.0;
    [(PUBrowsingVideoPlayer *)v12 _updateMuteState];
    asset = [(PUBrowsingVideoPlayer *)v12 asset];
    [asset duration];
    v18 = v17;

    CMTimeMakeWithSeconds(&v27, v18, 600);
    v19 = *&v27.value;
    v12->_duration.epoch = v27.epoch;
    *&v12->_duration.value = v19;
    v12->_videoSessionPresenter = &v12->_videoSessionPresenter;
    v12->_targetSize = PUBrowsingVideoDefaultSize;
    v20 = +[PUPhotoEditProtoSettings sharedInstance];
    enableLiveVideoRenderAtSetSize = [v20 enableLiveVideoRenderAtSetSize];

    if (enableLiveVideoRenderAtSetSize)
    {
      v12->_targetSize = PUBrowsingVideoMaxSize;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__handleShouldReloadAssetMediaNotification_ name:@"PUShouldReloadAssetMediaNotification" object:0];

    mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
    [mEMORY[0x1E69C3358] registerChangeObserver:v12 context:ApplicationStateContext];
  }

  return v12;
}

@end