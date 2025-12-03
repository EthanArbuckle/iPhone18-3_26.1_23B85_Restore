@interface PUBrowsingIrisPlayer
+ (PUBrowsingIrisPlayer)new;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentPhotoTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentVideoDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (BOOL)isContentLoadingRequestInProgress;
- (CGSize)_targetSize;
- (PUBrowsingIrisPlayer)init;
- (PUBrowsingIrisPlayer)initWithAsset:(id)asset mediaProvider:(id)provider;
- (PUBrowsingIrisPlayerChange)currentChange;
- (float)playRate;
- (id)_playerCreateIfNeeded:(BOOL)needed;
- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block;
- (id)debugDetailedDescription;
- (id)playerItem;
- (id)wrappedVideoPlayerForPlayer:(id)player;
- (int64_t)playerStatus;
- (void)_cancelAllRequests;
- (void)_handleLivePhotoResult:(id)result info:(id)info requestID:(int)d;
- (void)_handlePeriodicObserverWithTime:(id *)time;
- (void)_handlePlaybackStyleChanged;
- (void)_updateIfNeeded;
- (void)_updateLivePhotoIfNeeded;
- (void)_updatePlayerContentIfNeeded;
- (void)_updatePlayerItemLoadingTargetIfNeeded;
- (void)_updatePlayerItemScrubbingPhotoTimeIfNeeded;
- (void)_updatePlayingIfNeeded;
- (void)_updateVitalityTransform;
- (void)_updateVitalityTransformProducer;
- (void)cancelPendingSeeks;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)playPreviewHintWhenReady;
- (void)playerWillRelinquishVideoPlayer:(id)player;
- (void)registerChangeObserver:(id)observer;
- (void)removeTimeObserver:(id)observer;
- (void)setActivated:(BOOL)activated;
- (void)setAsset:(id)asset;
- (void)setCurrentlyDisplayedTimes:(id)times;
- (void)setImageLoadingEnabled:(BOOL)enabled;
- (void)setIsLivePhotoPlaybackAllowed:(BOOL)allowed;
- (void)setLivePhoto:(id)photo;
- (void)setLivePhotoLoadingAllowed:(BOOL)allowed;
- (void)setLivePhotoLoadingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setLivePhotoPlaybackDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setLoadingTarget:(int64_t)target;
- (void)setPlaying:(BOOL)playing;
- (void)setScrubbingPhotoTime:(id *)time completion:(id)completion;
- (void)setVideoPlayer:(id)player;
- (void)setVitalityTransform:(float32x4_t)transform limitingAllowed:(float32x4_t)allowed;
- (void)unloadLivePhoto;
- (void)unregisterChangeObserver:(id)observer;
- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
@end

@implementation PUBrowsingIrisPlayer

- (id)playerItem
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  currentItem = [videoPlayer currentItem];

  return currentItem;
}

- (int64_t)playerStatus
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  status = [videoPlayer status];

  return status;
}

- (void)removeTimeObserver:(id)observer
{
  observerCopy = observer;
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  [videoPlayer removeTimeObserver:observerCopy];
}

- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  v13 = *interval;
  v11 = [videoPlayer addPeriodicTimeObserverForInterval:&v13 queue:queueCopy usingBlock:blockCopy];

  return v11;
}

- (float)playRate
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  [videoPlayer rate];
  v4 = v3;

  return v4;
}

- (void)cancelPendingSeeks
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  currentItem = [videoPlayer currentItem];
  [currentItem cancelPendingSeeks];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  if (videoPlayer)
  {
    v6 = videoPlayer;
    [videoPlayer currentTime];
    videoPlayer = v6;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  if (videoPlayer)
  {
    v6 = videoPlayer;
    [videoPlayer currentItemDuration];
    videoPlayer = v6;
  }

  return result;
}

- (void)videoScrubberController:(id)controller seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__PUBrowsingIrisPlayer_videoScrubberController_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
  v11[3] = &unk_1E7B75CB8;
  v13 = *time;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(PUViewModel *)self performChanges:v11];
}

uint64_t __108__PUBrowsingIrisPlayer_videoScrubberController_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  return [v2 setScrubbingPhotoTime:&v4 completion:v1];
}

- (void)playerWillRelinquishVideoPlayer:(id)player
{
  v11 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v5 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = playerCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%@ checking in player %@", &v7, 0x16u);
  }

  mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
  [mEMORY[0x1E69C3C70] checkInReusableWrappedPlayer:playerCopy];
}

- (id)wrappedVideoPlayerForPlayer:(id)player
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
  checkOutReusableWrappedPlayer = [mEMORY[0x1E69C3C70] checkOutReusableWrappedPlayer];

  v6 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = checkOutReusableWrappedPlayer;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%@ checking out player %@", &v8, 0x16u);
  }

  return checkOutReusableWrappedPlayer;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PULivePhotoPlayerObservationContext == context)
  {
    if ((changeCopy & 8) != 0)
    {
      [(PUBrowsingIrisPlayer *)self _handlePlaybackStyleChanged];
    }

    if ((changeCopy & 4) != 0)
    {
      player = [(PUBrowsingIrisPlayer *)self player];
      videoPlayer = [player videoPlayer];
      [(PUBrowsingIrisPlayer *)self setVideoPlayer:videoPlayer];
    }
  }

  else if (PUISWrappedAVPlayerObservationContext == context)
  {
    if (changeCopy)
    {
      statusChangeHandler = [(PUBrowsingIrisPlayer *)self statusChangeHandler];

      if (statusChangeHandler)
      {
        statusChangeHandler2 = [(PUBrowsingIrisPlayer *)self statusChangeHandler];
        statusChangeHandler2[2]();
      }
    }

    if ((changeCopy & 4) != 0)
    {
      playerItemChangeHandler = [(PUBrowsingIrisPlayer *)self playerItemChangeHandler];

      if (playerItemChangeHandler)
      {
        playerItemChangeHandler2 = [(PUBrowsingIrisPlayer *)self playerItemChangeHandler];
        playerItemChangeHandler2[2]();
      }

      px_dispatch_on_main_queue();
    }

    if ((changeCopy & 0x200) != 0)
    {
      durationChangeHandler = [(PUBrowsingIrisPlayer *)self durationChangeHandler];

      if (durationChangeHandler)
      {
        durationChangeHandler2 = [(PUBrowsingIrisPlayer *)self durationChangeHandler];
        durationChangeHandler2[2]();
      }
    }
  }
}

- (id)debugDetailedDescription
{
  string = [MEMORY[0x1E696AD60] string];
  mediaProvider = [(PUBrowsingIrisPlayer *)self mediaProvider];
  [string appendFormat:@"Media Provider: %@\n", mediaProvider];

  [string appendFormat:@"Loading Target: %ld\n", -[PUBrowsingIrisPlayer loadingTarget](self, "loadingTarget")];
  if ([(PUBrowsingIrisPlayer *)self isLivePhotoLoadingAllowed])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  [string appendFormat:@"isLivePhotoLoadingAllowed: %@\n", v6];

  livePhotoLoadingDisablingReasons = [(PUBrowsingIrisPlayer *)self livePhotoLoadingDisablingReasons];
  [string appendFormat:@"livePhotoLoadingDisablingReasons: %@\n", livePhotoLoadingDisablingReasons];

  if ([(PUBrowsingIrisPlayer *)self isLivePhotoPlaybackAllowed])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  [string appendFormat:@"isLivePhotoPlaybackAllowed: %@\n", v9];

  livePhotoPlaybackDisablingReasons = [(PUBrowsingIrisPlayer *)self livePhotoPlaybackDisablingReasons];
  [string appendFormat:@"livePhotoPlaybackDisablingReasons: %@\n", livePhotoPlaybackDisablingReasons];

  player = [(PUBrowsingIrisPlayer *)self player];
  [string appendFormat:@"Iris Player: %@\n", player];

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  pu_stringByIndentingNewLines = [string pu_stringByIndentingNewLines];
  v16 = [v12 stringWithFormat:@"<%@ %p> {\n\t%@}", v14, self, pu_stringByIndentingNewLines];

  return v16;
}

- (void)_handlePlaybackStyleChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__PUBrowsingIrisPlayer__handlePlaybackStyleChanged__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

uint64_t __51__PUBrowsingIrisPlayer__handlePlaybackStyleChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  [v2 setPlaybackStateDidChange:1];

  v3 = [*(a1 + 32) player];
  v4 = [v3 currentPlaybackStyle];

  if (v4)
  {
    v5 = +[PUOneUpSettings sharedInstance];
    v6 = [v5 livePhotoScrubberShowForPlayback];

    if (v6)
    {
      [*(a1 + 32) setActivated:1];
    }
  }

  v7 = *(a1 + 32);

  return [v7 _invalidatePlaying];
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setPlayingDidChange:1];
  }
}

- (void)_updatePlayingIfNeeded
{
  if (!self->_isValid.playing)
  {
    self->_isValid.playing = 1;
    player = [(PUBrowsingIrisPlayer *)self player];
    -[PUBrowsingIrisPlayer setPlaying:](self, "setPlaying:", ([player currentPlaybackStyle] - 1) < 2);
  }
}

- (void)_handlePeriodicObserverWithTime:(id *)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PUBrowsingIrisPlayer__handlePeriodicObserverWithTime___block_invoke;
  v3[3] = &unk_1E7B7F720;
  v3[4] = self;
  v4 = *time;
  [(PUViewModel *)self performChanges:v3];
}

void __56__PUBrowsingIrisPlayer__handlePeriodicObserverWithTime___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) player];
  if ([v2 currentPlaybackStyle])
  {
    v3 = [*(a1 + 32) player];
    v4 = [v3 videoPlayer];
    [v4 rate];
    v6 = v5;

    if (v6 != 0.0)
    {
      v10 = *(a1 + 40);
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v10)];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [*(a1 + 32) setCurrentlyDisplayedTimes:v8];

      return;
    }
  }

  else
  {
  }

  v9 = *(a1 + 32);

  [v9 setCurrentlyDisplayedTimes:0];
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    [(ISWrappedAVPlayer *)videoPlayer unregisterChangeObserver:self context:PUISWrappedAVPlayerObservationContext];
    [(ISWrappedAVPlayer *)self->_videoPlayer removeTimeObserver:self->_videoPeriodicObserver];
    videoPeriodicObserver = self->_videoPeriodicObserver;
    self->_videoPeriodicObserver = 0;

    objc_storeStrong(&self->_videoPlayer, player);
    [(ISWrappedAVPlayer *)self->_videoPlayer registerChangeObserver:self context:PUISWrappedAVPlayerObservationContext];
    objc_initWeak(&location, self);
    v8 = self->_videoPlayer;
    CMTimeMake(&v15, 1, 30);
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__PUBrowsingIrisPlayer_setVideoPlayer___block_invoke;
    v13[3] = &unk_1E7B7D380;
    objc_copyWeak(&v14, &location);
    v11 = [(ISWrappedAVPlayer *)v8 addPeriodicTimeObserverForInterval:&v15 queue:v9 usingBlock:v13];
    v12 = self->_videoPeriodicObserver;
    self->_videoPeriodicObserver = v11;

    [(PUBrowsingIrisPlayer *)self _updateVitalityTransformProducer];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __39__PUBrowsingIrisPlayer_setVideoPlayer___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _handlePeriodicObserverWithTime:&v4];
}

- (void)_updatePlayerItemScrubbingPhotoTimeIfNeeded
{
  if (!self->_isValid.playerItemScrubbingPhotoTime)
  {
    self->_isValid.playerItemScrubbingPhotoTime = 1;
    player = [(PUBrowsingIrisPlayer *)self player];
    [(PUBrowsingIrisPlayer *)self scrubbingPhotoTime];
    seekCompletionHandler = [(PUBrowsingIrisPlayer *)self seekCompletionHandler];
    [player setSeekTime:v5 completion:seekCompletionHandler];
  }
}

- (void)_updatePlayerItemLoadingTargetIfNeeded
{
  if (!self->_isValid.playerLoadingTarget)
  {
    self->_isValid.playerLoadingTarget = 1;
    v5 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    playerItem = [v5 playerItem];
    [playerItem setLoadingTarget:{-[PUBrowsingIrisPlayer loadingTarget](self, "loadingTarget")}];
  }
}

- (void)setVitalityTransform:(float32x4_t)transform limitingAllowed:(float32x4_t)allowed
{
  v7 = vandq_s8(vandq_s8(vceqq_f32(transform, self[17]), vceqq_f32(a2, self[16])), vceqq_f32(allowed, self[18]));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0 || self[6].u8[5] != a6)
  {
    self[6].i8[5] = a6;
    self[16] = a2;
    self[17] = transform;
    self[18] = allowed;
    currentChange = [(float32x4_t *)self currentChange];
    [currentChange setVitalityTransformDidChange:1];
  }
}

- (void)_updateVitalityTransform
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PUBrowsingIrisPlayer__updateVitalityTransform__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

uint64_t __48__PUBrowsingIrisPlayer__updateVitalityTransform__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2[11] transform];
  v9 = v4;
  v10 = v3;
  v8 = v5;
  v6 = [*(*(a1 + 32) + 88) limitingAllowed];

  return [v2 setVitalityTransform:v6 limitingAllowed:{v10, v9, v8}];
}

- (void)_updateVitalityTransformProducer
{
  v3 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
  playerItem = [v3 playerItem];
  asset = [playerItem asset];
  videoAsset = [asset videoAsset];
  [(PUVitalityTransformProducer *)self->_vitalityTransformProducer setVideoAsset:videoAsset];

  asset2 = [(PUBrowsingIrisPlayer *)self asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = asset2;
  }

  else
  {
    v8 = 0;
  }

  [(PUVitalityTransformProducer *)self->_vitalityTransformProducer setPhotoKitAsset:v8];
}

- (void)_updatePlayerContentIfNeeded
{
  if (!self->_isValid.playerContent)
  {
    self->_isValid.playerContent = 1;
    livePhoto = [(PUBrowsingIrisPlayer *)self livePhoto];
    v4 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    videoAsset = [livePhoto videoAsset];
    if (livePhoto)
    {
      image = [livePhoto image];
      [image imageOrientation];
      v7 = PLExifOrientationFromImageOrientation();
      [livePhoto photoTime];
      Seconds = 0.0;
      if ((v19 & 0x1D) == 1)
      {
        [livePhoto photoTime];
        Seconds = CMTimeGetSeconds(&v18);
      }

      hasPhotoColorAdjustments = [livePhoto hasPhotoColorAdjustments];
      v10 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:videoAsset UIImage:image photoTime:v7 photoEXIFOrientation:hasPhotoColorAdjustments options:Seconds];
      asset = [(PUBrowsingIrisPlayer *)self asset];
      [asset aspectRatio];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      }

      v16 = MEMORY[0x1E69C1B00];
      [(PUBrowsingIrisPlayer *)self _targetSize];
      v15 = [v16 playerItemWithAsset:v10 targetSize:v14 contentAspectRatio:?];
      [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemScrubbingPhotoTime];
      [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemLoadingTarget];

      if (v15)
      {
        v17 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:1];

        v4 = v17;
      }
    }

    else
    {
      v15 = 0;
    }

    [v4 setPlayerItem:v15];
  }
}

- (void)_updateLivePhotoIfNeeded
{
  if (!self->_isValid.livePhoto)
  {
    self->_isValid.livePhoto = 1;
    if ([(PUBrowsingIrisPlayer *)self isLivePhotoLoadingAllowed])
    {
      asset = [(PUBrowsingIrisPlayer *)self asset];
      canPlayPhotoIris = [asset canPlayPhotoIris];

      if (canPlayPhotoIris)
      {
        if ([(PUBrowsingIrisPlayer *)self livePhotoRequestState]!= 2)
        {
          [(PUBrowsingIrisPlayer *)self setLivePhotoRequestState:1];
        }

        mediaProvider = [(PUBrowsingIrisPlayer *)self mediaProvider];
        asset2 = [(PUBrowsingIrisPlayer *)self asset];
        objc_initWeak(&location, self);
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        [(PUBrowsingIrisPlayer *)self setLivePhotoRequestID:0];
        [(PUBrowsingIrisPlayer *)self _targetSize];
        v8 = v7;
        v10 = v9;
        _contentMode = [(PUBrowsingIrisPlayer *)self _contentMode];
        v12 = objc_alloc_init(MEMORY[0x1E69788D8]);
        [v12 setNetworkAccessAllowed:1];
        [v12 setDeliveryMode:1];
        [v12 setIncludeImage:{-[PUBrowsingIrisPlayer isImageLoadingEnabled](self, "isImageLoadingEnabled")}];
        [v12 setDownloadIntent:3];
        [v12 setDownloadPriority:0];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __48__PUBrowsingIrisPlayer__updateLivePhotoIfNeeded__block_invoke;
        v14[3] = &unk_1E7B75C90;
        objc_copyWeak(&v15, &location);
        v14[4] = &v16;
        v13 = [mediaProvider requestLivePhotoForAsset:asset2 targetSize:_contentMode contentMode:v12 options:v14 resultHandler:{v8, v10}];
        *(v17 + 6) = v13;
        [(PUBrowsingIrisPlayer *)self setLivePhotoRequestID:v13];
        objc_destroyWeak(&v15);

        _Block_object_dispose(&v16, 8);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __48__PUBrowsingIrisPlayer__updateLivePhotoIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v5;
  v8 = v6;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void __48__PUBrowsingIrisPlayer__updateLivePhotoIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleLivePhotoResult:*(a1 + 32) info:*(a1 + 40) requestID:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)unloadLivePhoto
{
  [(PUBrowsingIrisPlayer *)self _invalidateLivePhoto];

  [(PUBrowsingIrisPlayer *)self setLivePhoto:0];
}

- (void)_updateIfNeeded
{
  if ([(PUBrowsingIrisPlayer *)self _needsUpdate])
  {
    [(PUBrowsingIrisPlayer *)self _updateLivePhotoIfNeeded];
    [(PUBrowsingIrisPlayer *)self _updatePlayerContentIfNeeded];
    [(PUBrowsingIrisPlayer *)self _updatePlayerItemScrubbingPhotoTimeIfNeeded];
    [(PUBrowsingIrisPlayer *)self _updatePlayerItemLoadingTargetIfNeeded];
    [(PUBrowsingIrisPlayer *)self _updatePlayingIfNeeded];
    if ([(PUBrowsingIrisPlayer *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:444 description:{@"[%@] Update still needed after update pass", self}];
    }
  }
}

- (BOOL)isContentLoadingRequestInProgress
{
  livePhotoRequestState = [(PUBrowsingIrisPlayer *)self livePhotoRequestState];
  if (livePhotoRequestState != 1)
  {
    LOBYTE(livePhotoRequestState) = [(PUBrowsingIrisPlayer *)self livePhotoRequestState]== 2;
  }

  return livePhotoRequestState;
}

- (void)_cancelAllRequests
{
  mediaProvider = [(PUBrowsingIrisPlayer *)self mediaProvider];
  [mediaProvider cancelImageRequest:{-[PUBrowsingIrisPlayer livePhotoRequestID](self, "livePhotoRequestID")}];
}

- (void)_handleLivePhotoResult:(id)result info:(id)info requestID:(int)d
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  infoCopy = info;
  if ([(PUBrowsingIrisPlayer *)self livePhotoRequestID]== d)
  {
    v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
    bOOLValue = [v11 BOOLValue];

    v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    bOOLValue2 = [v13 BOOLValue];

    if (bOOLValue)
    {
      selfCopy4 = self;
      v16 = 4;
LABEL_4:
      [(PUBrowsingIrisPlayer *)selfCopy4 setLivePhotoRequestState:v16];
LABEL_18:

      goto LABEL_19;
    }

    v17 = bOOLValue2 ^ 1;
    if (!resultCopy)
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __62__PUBrowsingIrisPlayer__handleLivePhotoResult_info_requestID___block_invoke;
      v26[3] = &unk_1E7B80C38;
      v26[4] = self;
      v27 = resultCopy;
      [(PUViewModel *)self performChanges:v26];
      v18 = v27;
LABEL_17:

      goto LABEL_18;
    }

    if (resultCopy || !v10)
    {
      if (resultCopy)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __62__PUBrowsingIrisPlayer__handleLivePhotoResult_info_requestID___block_invoke_2;
        v23[3] = &unk_1E7B80C38;
        v23[4] = self;
        v24 = resultCopy;
        [(PUViewModel *)self performChanges:v23];
        [(PUBrowsingIrisPlayer *)self setLivePhotoRequestState:5];
        v18 = v24;
        goto LABEL_17;
      }
    }

    else if ([(PUBrowsingIrisPlayer *)self livePhotoRequestState]== 1)
    {
      v19 = PLOneUpGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        asset = [(PUBrowsingIrisPlayer *)self asset];
        *buf = 138412802;
        selfCopy3 = self;
        v30 = 2112;
        v31 = asset;
        v32 = 2112;
        v33 = infoCopy;
        _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEBUG, "%@ Failed to load live photo for Iris asset %@: %@, will retry...", buf, 0x20u);
      }

      [(PUBrowsingIrisPlayer *)self setLivePhotoRequestState:2];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__PUBrowsingIrisPlayer__handleLivePhotoResult_info_requestID___block_invoke_221;
      v25[3] = &unk_1E7B80DD0;
      v25[4] = self;
      [(PUViewModel *)self performChanges:v25];
      goto LABEL_18;
    }

    v21 = PLOneUpGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      asset2 = [(PUBrowsingIrisPlayer *)self asset];
      *buf = 138412802;
      selfCopy3 = self;
      v30 = 2112;
      v31 = asset2;
      v32 = 2112;
      v33 = infoCopy;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEBUG, "%@ Failed to load live photo for Iris asset %@: %@", buf, 0x20u);
    }

    selfCopy4 = self;
    v16 = 3;
    goto LABEL_4;
  }

LABEL_19:
}

- (CGSize)_targetSize
{
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v4 = v3;
  v6 = v5;

  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v7 = v4 * *&PUMainScreenScale_screenScale;
  v8 = v6 * *&PUMainScreenScale_screenScale;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_playerCreateIfNeeded:(BOOL)needed
{
  player = self->_player;
  if (player)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
    v7 = self->_player;
    self->_player = v6;

    [(ISLivePhotoPlayer *)self->_player registerChangeObserver:self context:PULivePhotoPlayerObservationContext];
    [(ISLivePhotoPlayer *)self->_player setAudioEnabled:0];
    [(ISLivePhotoPlayer *)self->_player setDelegate:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PUBrowsingIrisPlayer__playerCreateIfNeeded___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUViewModel *)self performChanges:v9];
    player = self->_player;
  }

  return player;
}

void __46__PUBrowsingIrisPlayer__playerCreateIfNeeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentChange];
  [v1 setPlayerDidChange:1];
}

- (void)setLoadingTarget:(int64_t)target
{
  if (self->_loadingTarget != target)
  {
    self->_loadingTarget = target;
    [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemLoadingTarget];
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (PUBrowsingIrisPlayerChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUBrowsingIrisPlayer;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (void)setLivePhoto:(id)photo
{
  photoCopy = photo;
  if (self->_livePhoto != photoCopy)
  {
    v7 = photoCopy;
    objc_storeStrong(&self->_livePhoto, photo);
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setLivePhotoDidChange:1];

    [(PUBrowsingIrisPlayer *)self _invalidatePlayerContent];
    photoCopy = v7;
  }
}

- (void)setImageLoadingEnabled:(BOOL)enabled
{
  if (self->_imageLoadingEnabled != enabled)
  {
    self->_imageLoadingEnabled = enabled;
    [(PUBrowsingIrisPlayer *)self _invalidateLivePhoto];
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setImageLoadingEnabledDidChange:1];
  }
}

- (void)setActivated:(BOOL)activated
{
  if (self->_activated != activated)
  {
    v10 = v3;
    v11 = v4;
    self->_activated = activated;
    if (!activated)
    {
      player = [(PUBrowsingIrisPlayer *)self player];
      [player stopPlaybackAnimated:1];

      v8 = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      [(PUBrowsingIrisPlayer *)self setScrubbingPhotoTime:&v8 completion:0];
    }

    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setActivatedDidChange:1];
  }
}

- (void)setLivePhotoLoadingAllowed:(BOOL)allowed
{
  if (self->_livePhotoLoadingAllowed != allowed)
  {
    allowedCopy = allowed;
    self->_livePhotoLoadingAllowed = allowed;
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setIsLivePhotoLoadingAllowedDidChange:1];

    livePhoto = [(PUBrowsingIrisPlayer *)self livePhoto];
    if (livePhoto || !allowedCopy)
    {
    }

    else if (![(PUBrowsingIrisPlayer *)self isContentLoadingRequestInProgress])
    {

      [(PUBrowsingIrisPlayer *)self _invalidateLivePhoto];
    }
  }
}

- (void)setLivePhotoLoadingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  livePhotoLoadingDisablingReasons = [(PUBrowsingIrisPlayer *)self livePhotoLoadingDisablingReasons];
  v8 = livePhotoLoadingDisablingReasons;
  if (disabledCopy)
  {
    [livePhotoLoadingDisablingReasons addObject:reasonCopy];
  }

  else
  {
    [livePhotoLoadingDisablingReasons removeObject:reasonCopy];
  }

  -[PUBrowsingIrisPlayer setLivePhotoLoadingAllowed:](self, "setLivePhotoLoadingAllowed:", [v8 count] == 0);
}

- (void)setCurrentlyDisplayedTimes:(id)times
{
  timesCopy = times;
  v5 = timesCopy;
  if (self->_currentlyDisplayedTimes != timesCopy)
  {
    v9 = timesCopy;
    timesCopy = [(NSArray *)timesCopy isEqual:?];
    v5 = v9;
    if ((timesCopy & 1) == 0)
    {
      v6 = [(NSArray *)v9 copy];
      currentlyDisplayedTimes = self->_currentlyDisplayedTimes;
      self->_currentlyDisplayedTimes = v6;

      currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
      [currentChange setCurrentlyDisplayedTimesDidChange:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](timesCopy, v5);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentVideoDuration
{
  videoPlayer = [(PUBrowsingIrisPlayer *)self videoPlayer];
  if (videoPlayer)
  {
    v6 = videoPlayer;
    [videoPlayer currentItemDuration];
    videoPlayer = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentPhotoTime
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  result = [(PUBrowsingIrisPlayer *)self scrubbingPhotoTime];
  if ((retstr->var2 & 1) == 0)
  {
    player = [(PUBrowsingIrisPlayer *)self player];
    playerItem = [player playerItem];
    asset = [playerItem asset];
    v9 = asset;
    if (asset)
    {
      [asset photoCMTime];
    }

    else
    {
      v10 = 0uLL;
      v11 = 0;
    }

    *&retstr->var0 = v10;
    retstr->var3 = v11;
  }

  return result;
}

- (void)setScrubbingPhotoTime:(id *)time completion:(id)completion
{
  completionCopy = completion;
  time1 = *time;
  scrubbingPhotoTime = self->_scrubbingPhotoTime;
  if (CMTimeCompare(&time1, &scrubbingPhotoTime))
  {
    [(PUBrowsingIrisPlayer *)self setSeekCompletionHandler:completionCopy];
    v7 = *&time->var0;
    self->_scrubbingPhotoTime.epoch = time->var3;
    *&self->_scrubbingPhotoTime.value = v7;
    [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemScrubbingPhotoTime];
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setScrubbingPhotoTimeDidChange:1];
  }
}

- (void)setIsLivePhotoPlaybackAllowed:(BOOL)allowed
{
  if (self->_isLivePhotoPlaybackAllowed != allowed)
  {
    allowedCopy = allowed;
    self->_isLivePhotoPlaybackAllowed = allowed;
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setIsLivePhotoPlaybackAllowedDidChange:1];

    v7 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    [v7 setPlaybackAllowed:allowedCopy];
  }
}

- (void)setLivePhotoPlaybackDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  livePhotoPlaybackDisablingReasons = [(PUBrowsingIrisPlayer *)self livePhotoPlaybackDisablingReasons];
  v8 = livePhotoPlaybackDisablingReasons;
  if (disabledCopy)
  {
    [livePhotoPlaybackDisablingReasons addObject:reasonCopy];
  }

  else
  {
    [livePhotoPlaybackDisablingReasons removeObject:reasonCopy];
  }

  -[PUBrowsingIrisPlayer setIsLivePhotoPlaybackAllowed:](self, "setIsLivePhotoPlaybackAllowed:", [v8 count] == 0);
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUViewModel *)&v3 didPerformChanges];
  [(PUBrowsingIrisPlayer *)self _updateIfNeeded];
}

- (void)playPreviewHintWhenReady
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__PUBrowsingIrisPlayer_playPreviewHintWhenReady__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

void __48__PUBrowsingIrisPlayer_playPreviewHintWhenReady__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerCreateIfNeeded];
  [*(a1 + 32) setActivated:1];
  [v2 playHintWhenReady];
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    if (assetCopy && [(PUDisplayAsset *)self->_asset isPhotoIrisPlaceholder])
    {
      v7 = [(PUDisplayAsset *)assetCopy isPhotoIrisPlaceholder]^ 1;
    }

    else
    {
      v7 = 0;
    }

    asset = self->_asset;
    v9 = assetCopy;
    assetCopy2 = asset;
    if (assetCopy2 == v9)
    {
      v12 = 0;
    }

    else
    {
      v11 = [(PUDisplayAsset *)v9 isContentEqualTo:assetCopy2];
      if (!v11)
      {
        v11 = [(PUDisplayAsset *)assetCopy2 isContentEqualTo:v9];
      }

      v12 = v11 != 2;
    }

    objc_storeStrong(&self->_asset, asset);
    currentChange = [(PUBrowsingIrisPlayer *)self currentChange];
    [currentChange setHasChanges];

    if (v7 && (-[PUBrowsingIrisPlayer livePhotoRequestState](self, "livePhotoRequestState") != 5 || v6 && [v6 status] != 2))
    {
      [(PUBrowsingIrisPlayer *)self _updateVitalityTransformProducer];
    }

    else
    {
      [(PUBrowsingIrisPlayer *)self _updateVitalityTransformProducer];
      if (!v12)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    if (![v6 currentPlaybackStyle])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __33__PUBrowsingIrisPlayer_setAsset___block_invoke;
      v14[3] = &unk_1E7B80DD0;
      v14[4] = self;
      [(PUViewModel *)self performChanges:v14];
    }

    goto LABEL_20;
  }

LABEL_21:
}

uint64_t __33__PUBrowsingIrisPlayer_setAsset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActivated:0];
  v2 = *(a1 + 32);

  return [v2 unloadLivePhoto];
}

- (void)dealloc
{
  if (self->_videoPeriodicObserver)
  {
    [(ISWrappedAVPlayer *)self->_videoPlayer removeTimeObserver:?];
  }

  [(PUBrowsingIrisPlayer *)self _cancelAllRequests];
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUBrowsingIrisPlayer *)&v3 dealloc];
}

- (PUBrowsingIrisPlayer)initWithAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = PUBrowsingIrisPlayer;
  v10 = [(PUViewModel *)&v26 init];
  if (v10)
  {
    if (assetCopy)
    {
      if (providerCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, asset);
        objc_storeStrong(&v10->_mediaProvider, provider);
        v10->_loadingTarget = 0;
        v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        livePhotoLoadingDisablingReasons = v10->_livePhotoLoadingDisablingReasons;
        v10->_livePhotoLoadingDisablingReasons = v11;

        v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        livePhotoPlaybackDisablingReasons = v10->_livePhotoPlaybackDisablingReasons;
        v10->_livePhotoPlaybackDisablingReasons = v13;

        v15 = MEMORY[0x1E69E9B10];
        v16 = *(MEMORY[0x1E69E9B10] + 16);
        *&v10[1].super.super.isa = *MEMORY[0x1E69E9B10];
        *&v10[1].super._nestedChanges = v16;
        *&v10[1].super._numAppliedPendingChanges = *(v15 + 32);
        v10->_imageLoadingEnabled = 1;
        objc_initWeak(&location, v10);
        v17 = [PUVitalityTransformProducer alloc];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __52__PUBrowsingIrisPlayer_initWithAsset_mediaProvider___block_invoke;
        v23[3] = &unk_1E7B80638;
        objc_copyWeak(&v24, &location);
        v18 = [(PUVitalityTransformProducer *)v17 initWithDidChangeHandler:v23];
        vitalityTransformProducer = v10->_vitalityTransformProducer;
        v10->_vitalityTransformProducer = v18;

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PUBrowsingIrisPlayer.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

      if (providerCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingIrisPlayer.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

void __52__PUBrowsingIrisPlayer_initWithAsset_mediaProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVitalityTransform];
}

- (PUBrowsingIrisPlayer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PUBrowsingIrisPlayer init]"}];

  abort();
}

+ (PUBrowsingIrisPlayer)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:105 description:{@"%s is not available as initializer", "+[PUBrowsingIrisPlayer new]"}];

  abort();
}

@end