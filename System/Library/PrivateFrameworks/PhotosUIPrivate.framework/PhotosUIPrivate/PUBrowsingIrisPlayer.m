@interface PUBrowsingIrisPlayer
+ (PUBrowsingIrisPlayer)new;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentPhotoTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentVideoDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime;
- (BOOL)isContentLoadingRequestInProgress;
- (CGSize)_targetSize;
- (PUBrowsingIrisPlayer)init;
- (PUBrowsingIrisPlayer)initWithAsset:(id)a3 mediaProvider:(id)a4;
- (PUBrowsingIrisPlayerChange)currentChange;
- (float)playRate;
- (id)_playerCreateIfNeeded:(BOOL)a3;
- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5;
- (id)debugDetailedDescription;
- (id)playerItem;
- (id)wrappedVideoPlayerForPlayer:(id)a3;
- (int64_t)playerStatus;
- (void)_cancelAllRequests;
- (void)_handleLivePhotoResult:(id)a3 info:(id)a4 requestID:(int)a5;
- (void)_handlePeriodicObserverWithTime:(id *)a3;
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
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)playPreviewHintWhenReady;
- (void)playerWillRelinquishVideoPlayer:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)removeTimeObserver:(id)a3;
- (void)setActivated:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setCurrentlyDisplayedTimes:(id)a3;
- (void)setImageLoadingEnabled:(BOOL)a3;
- (void)setIsLivePhotoPlaybackAllowed:(BOOL)a3;
- (void)setLivePhoto:(id)a3;
- (void)setLivePhotoLoadingAllowed:(BOOL)a3;
- (void)setLivePhotoLoadingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setLivePhotoPlaybackDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setLoadingTarget:(int64_t)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setScrubbingPhotoTime:(id *)a3 completion:(id)a4;
- (void)setVideoPlayer:(id)a3;
- (void)setVitalityTransform:(float32x4_t)a3 limitingAllowed:(float32x4_t)a4;
- (void)unloadLivePhoto;
- (void)unregisterChangeObserver:(id)a3;
- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7;
@end

@implementation PUBrowsingIrisPlayer

- (id)playerItem
{
  v2 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  v3 = [v2 currentItem];

  return v3;
}

- (int64_t)playerStatus
{
  v2 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  v3 = [v2 status];

  return v3;
}

- (void)removeTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  [v5 removeTimeObserver:v4];
}

- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  v13 = *a3;
  v11 = [v10 addPeriodicTimeObserverForInterval:&v13 queue:v9 usingBlock:v8];

  return v11;
}

- (float)playRate
{
  v2 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (void)cancelPendingSeeks
{
  v3 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  v2 = [v3 currentItem];
  [v2 cancelPendingSeeks];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTime
{
  v4 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  if (v4)
  {
    v6 = v4;
    [v4 currentTime];
    v4 = v6;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration
{
  v4 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  if (v4)
  {
    v6 = v4;
    [v4 currentItemDuration];
    v4 = v6;
  }

  return result;
}

- (void)videoScrubberController:(id)a3 seekToTime:(id *)a4 toleranceBefore:(id *)a5 toleranceAfter:(id *)a6 completionHandler:(id)a7
{
  v9 = a7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__PUBrowsingIrisPlayer_videoScrubberController_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
  v11[3] = &unk_1E7B75CB8;
  v13 = *a4;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
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

- (void)playerWillRelinquishVideoPlayer:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%@ checking in player %@", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E69C3C70] sharedInstance];
  [v6 checkInReusableWrappedPlayer:v4];
}

- (id)wrappedVideoPlayerForPlayer:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C3C70] sharedInstance];
  v5 = [v4 checkOutReusableWrappedPlayer];

  v6 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "%@ checking out player %@", &v8, 0x16u);
  }

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PULivePhotoPlayerObservationContext == a5)
  {
    if ((v6 & 8) != 0)
    {
      [(PUBrowsingIrisPlayer *)self _handlePlaybackStyleChanged];
    }

    if ((v6 & 4) != 0)
    {
      v15 = [(PUBrowsingIrisPlayer *)self player];
      v16 = [v15 videoPlayer];
      [(PUBrowsingIrisPlayer *)self setVideoPlayer:v16];
    }
  }

  else if (PUISWrappedAVPlayerObservationContext == a5)
  {
    if (v6)
    {
      v9 = [(PUBrowsingIrisPlayer *)self statusChangeHandler];

      if (v9)
      {
        v10 = [(PUBrowsingIrisPlayer *)self statusChangeHandler];
        v10[2]();
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = [(PUBrowsingIrisPlayer *)self playerItemChangeHandler];

      if (v11)
      {
        v12 = [(PUBrowsingIrisPlayer *)self playerItemChangeHandler];
        v12[2]();
      }

      px_dispatch_on_main_queue();
    }

    if ((v6 & 0x200) != 0)
    {
      v13 = [(PUBrowsingIrisPlayer *)self durationChangeHandler];

      if (v13)
      {
        v14 = [(PUBrowsingIrisPlayer *)self durationChangeHandler];
        v14[2]();
      }
    }
  }
}

- (id)debugDetailedDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PUBrowsingIrisPlayer *)self mediaProvider];
  [v3 appendFormat:@"Media Provider: %@\n", v4];

  [v3 appendFormat:@"Loading Target: %ld\n", -[PUBrowsingIrisPlayer loadingTarget](self, "loadingTarget")];
  if ([(PUBrowsingIrisPlayer *)self isLivePhotoLoadingAllowed])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  [v3 appendFormat:@"isLivePhotoLoadingAllowed: %@\n", v6];

  v7 = [(PUBrowsingIrisPlayer *)self livePhotoLoadingDisablingReasons];
  [v3 appendFormat:@"livePhotoLoadingDisablingReasons: %@\n", v7];

  if ([(PUBrowsingIrisPlayer *)self isLivePhotoPlaybackAllowed])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  [v3 appendFormat:@"isLivePhotoPlaybackAllowed: %@\n", v9];

  v10 = [(PUBrowsingIrisPlayer *)self livePhotoPlaybackDisablingReasons];
  [v3 appendFormat:@"livePhotoPlaybackDisablingReasons: %@\n", v10];

  v11 = [(PUBrowsingIrisPlayer *)self player];
  [v3 appendFormat:@"Iris Player: %@\n", v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v3 pu_stringByIndentingNewLines];
  v16 = [v12 stringWithFormat:@"<%@ %p> {\n\t%@}", v14, self, v15];

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

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    v4 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v4 setPlayingDidChange:1];
  }
}

- (void)_updatePlayingIfNeeded
{
  if (!self->_isValid.playing)
  {
    self->_isValid.playing = 1;
    v4 = [(PUBrowsingIrisPlayer *)self player];
    -[PUBrowsingIrisPlayer setPlaying:](self, "setPlaying:", ([v4 currentPlaybackStyle] - 1) < 2);
  }
}

- (void)_handlePeriodicObserverWithTime:(id *)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PUBrowsingIrisPlayer__handlePeriodicObserverWithTime___block_invoke;
  v3[3] = &unk_1E7B7F720;
  v3[4] = self;
  v4 = *a3;
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

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != v5)
  {
    [(ISWrappedAVPlayer *)videoPlayer unregisterChangeObserver:self context:PUISWrappedAVPlayerObservationContext];
    [(ISWrappedAVPlayer *)self->_videoPlayer removeTimeObserver:self->_videoPeriodicObserver];
    videoPeriodicObserver = self->_videoPeriodicObserver;
    self->_videoPeriodicObserver = 0;

    objc_storeStrong(&self->_videoPlayer, a3);
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
    v3 = [(PUBrowsingIrisPlayer *)self player];
    [(PUBrowsingIrisPlayer *)self scrubbingPhotoTime];
    v4 = [(PUBrowsingIrisPlayer *)self seekCompletionHandler];
    [v3 setSeekTime:v5 completion:v4];
  }
}

- (void)_updatePlayerItemLoadingTargetIfNeeded
{
  if (!self->_isValid.playerLoadingTarget)
  {
    self->_isValid.playerLoadingTarget = 1;
    v5 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    v4 = [v5 playerItem];
    [v4 setLoadingTarget:{-[PUBrowsingIrisPlayer loadingTarget](self, "loadingTarget")}];
  }
}

- (void)setVitalityTransform:(float32x4_t)a3 limitingAllowed:(float32x4_t)a4
{
  v7 = vandq_s8(vandq_s8(vceqq_f32(a3, a1[17]), vceqq_f32(a2, a1[16])), vceqq_f32(a4, a1[18]));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0 || a1[6].u8[5] != a6)
  {
    a1[6].i8[5] = a6;
    a1[16] = a2;
    a1[17] = a3;
    a1[18] = a4;
    v8 = [(float32x4_t *)a1 currentChange];
    [v8 setVitalityTransformDidChange:1];
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
  v4 = [v3 playerItem];
  v5 = [v4 asset];
  v6 = [v5 videoAsset];
  [(PUVitalityTransformProducer *)self->_vitalityTransformProducer setVideoAsset:v6];

  v7 = [(PUBrowsingIrisPlayer *)self asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
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
    v3 = [(PUBrowsingIrisPlayer *)self livePhoto];
    v4 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    v5 = [v3 videoAsset];
    if (v3)
    {
      v6 = [v3 image];
      [v6 imageOrientation];
      v7 = PLExifOrientationFromImageOrientation();
      [v3 photoTime];
      Seconds = 0.0;
      if ((v19 & 0x1D) == 1)
      {
        [v3 photoTime];
        Seconds = CMTimeGetSeconds(&v18);
      }

      v9 = [v3 hasPhotoColorAdjustments];
      v10 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:v5 UIImage:v6 photoTime:v7 photoEXIFOrientation:v9 options:Seconds];
      v11 = [(PUBrowsingIrisPlayer *)self asset];
      [v11 aspectRatio];
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
      v3 = [(PUBrowsingIrisPlayer *)self asset];
      v4 = [v3 canPlayPhotoIris];

      if (v4)
      {
        if ([(PUBrowsingIrisPlayer *)self livePhotoRequestState]!= 2)
        {
          [(PUBrowsingIrisPlayer *)self setLivePhotoRequestState:1];
        }

        v5 = [(PUBrowsingIrisPlayer *)self mediaProvider];
        v6 = [(PUBrowsingIrisPlayer *)self asset];
        objc_initWeak(&location, self);
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        [(PUBrowsingIrisPlayer *)self setLivePhotoRequestID:0];
        [(PUBrowsingIrisPlayer *)self _targetSize];
        v8 = v7;
        v10 = v9;
        v11 = [(PUBrowsingIrisPlayer *)self _contentMode];
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
        v13 = [v5 requestLivePhotoForAsset:v6 targetSize:v11 contentMode:v12 options:v14 resultHandler:{v8, v10}];
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
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:444 description:{@"[%@] Update still needed after update pass", self}];
    }
  }
}

- (BOOL)isContentLoadingRequestInProgress
{
  v3 = [(PUBrowsingIrisPlayer *)self livePhotoRequestState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PUBrowsingIrisPlayer *)self livePhotoRequestState]== 2;
  }

  return v3;
}

- (void)_cancelAllRequests
{
  v3 = [(PUBrowsingIrisPlayer *)self mediaProvider];
  [v3 cancelImageRequest:{-[PUBrowsingIrisPlayer livePhotoRequestID](self, "livePhotoRequestID")}];
}

- (void)_handleLivePhotoResult:(id)a3 info:(id)a4 requestID:(int)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(PUBrowsingIrisPlayer *)self livePhotoRequestID]== a5)
  {
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
    v12 = [v11 BOOLValue];

    v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v14 = [v13 BOOLValue];

    if (v12)
    {
      v15 = self;
      v16 = 4;
LABEL_4:
      [(PUBrowsingIrisPlayer *)v15 setLivePhotoRequestState:v16];
LABEL_18:

      goto LABEL_19;
    }

    v17 = v14 ^ 1;
    if (!v8)
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
      v27 = v8;
      [(PUViewModel *)self performChanges:v26];
      v18 = v27;
LABEL_17:

      goto LABEL_18;
    }

    if (v8 || !v10)
    {
      if (v8)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __62__PUBrowsingIrisPlayer__handleLivePhotoResult_info_requestID___block_invoke_2;
        v23[3] = &unk_1E7B80C38;
        v23[4] = self;
        v24 = v8;
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
        v20 = [(PUBrowsingIrisPlayer *)self asset];
        *buf = 138412802;
        v29 = self;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v9;
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
      v22 = [(PUBrowsingIrisPlayer *)self asset];
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEBUG, "%@ Failed to load live photo for Iris asset %@: %@", buf, 0x20u);
    }

    v15 = self;
    v16 = 3;
    goto LABEL_4;
  }

LABEL_19:
}

- (CGSize)_targetSize
{
  v2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v2 bounds];
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

- (id)_playerCreateIfNeeded:(BOOL)a3
{
  player = self->_player;
  if (player)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (void)setLoadingTarget:(int64_t)a3
{
  if (self->_loadingTarget != a3)
  {
    self->_loadingTarget = a3;
    [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemLoadingTarget];
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUBrowsingIrisPlayer;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (PUBrowsingIrisPlayerChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUBrowsingIrisPlayer;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (void)setLivePhoto:(id)a3
{
  v5 = a3;
  if (self->_livePhoto != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_livePhoto, a3);
    v6 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v6 setLivePhotoDidChange:1];

    [(PUBrowsingIrisPlayer *)self _invalidatePlayerContent];
    v5 = v7;
  }
}

- (void)setImageLoadingEnabled:(BOOL)a3
{
  if (self->_imageLoadingEnabled != a3)
  {
    self->_imageLoadingEnabled = a3;
    [(PUBrowsingIrisPlayer *)self _invalidateLivePhoto];
    v5 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v5 setImageLoadingEnabledDidChange:1];
  }
}

- (void)setActivated:(BOOL)a3
{
  if (self->_activated != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_activated = a3;
    if (!a3)
    {
      v6 = [(PUBrowsingIrisPlayer *)self player];
      [v6 stopPlaybackAnimated:1];

      v8 = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      [(PUBrowsingIrisPlayer *)self setScrubbingPhotoTime:&v8 completion:0];
    }

    v7 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v7 setActivatedDidChange:1];
  }
}

- (void)setLivePhotoLoadingAllowed:(BOOL)a3
{
  if (self->_livePhotoLoadingAllowed != a3)
  {
    v3 = a3;
    self->_livePhotoLoadingAllowed = a3;
    v5 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v5 setIsLivePhotoLoadingAllowedDidChange:1];

    v6 = [(PUBrowsingIrisPlayer *)self livePhoto];
    if (v6 || !v3)
    {
    }

    else if (![(PUBrowsingIrisPlayer *)self isContentLoadingRequestInProgress])
    {

      [(PUBrowsingIrisPlayer *)self _invalidateLivePhoto];
    }
  }
}

- (void)setLivePhotoLoadingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v7 = [(PUBrowsingIrisPlayer *)self livePhotoLoadingDisablingReasons];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v10];
  }

  else
  {
    [v7 removeObject:v10];
  }

  -[PUBrowsingIrisPlayer setLivePhotoLoadingAllowed:](self, "setLivePhotoLoadingAllowed:", [v8 count] == 0);
}

- (void)setCurrentlyDisplayedTimes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_currentlyDisplayedTimes != v4)
  {
    v9 = v4;
    v4 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSArray *)v9 copy];
      currentlyDisplayedTimes = self->_currentlyDisplayedTimes;
      self->_currentlyDisplayedTimes = v6;

      v8 = [(PUBrowsingIrisPlayer *)self currentChange];
      [v8 setCurrentlyDisplayedTimesDidChange:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentVideoDuration
{
  v4 = [(PUBrowsingIrisPlayer *)self videoPlayer];
  if (v4)
  {
    v6 = v4;
    [v4 currentItemDuration];
    v4 = v6;
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
    v6 = [(PUBrowsingIrisPlayer *)self player];
    v7 = [v6 playerItem];
    v8 = [v7 asset];
    v9 = v8;
    if (v8)
    {
      [v8 photoCMTime];
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

- (void)setScrubbingPhotoTime:(id *)a3 completion:(id)a4
{
  v6 = a4;
  time1 = *a3;
  scrubbingPhotoTime = self->_scrubbingPhotoTime;
  if (CMTimeCompare(&time1, &scrubbingPhotoTime))
  {
    [(PUBrowsingIrisPlayer *)self setSeekCompletionHandler:v6];
    v7 = *&a3->var0;
    self->_scrubbingPhotoTime.epoch = a3->var3;
    *&self->_scrubbingPhotoTime.value = v7;
    [(PUBrowsingIrisPlayer *)self _invalidatePlayerItemScrubbingPhotoTime];
    v8 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v8 setScrubbingPhotoTimeDidChange:1];
  }
}

- (void)setIsLivePhotoPlaybackAllowed:(BOOL)a3
{
  if (self->_isLivePhotoPlaybackAllowed != a3)
  {
    v4 = a3;
    self->_isLivePhotoPlaybackAllowed = a3;
    v6 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v6 setIsLivePhotoPlaybackAllowedDidChange:1];

    v7 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    [v7 setPlaybackAllowed:v4];
  }
}

- (void)setLivePhotoPlaybackDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v7 = [(PUBrowsingIrisPlayer *)self livePhotoPlaybackDisablingReasons];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v10];
  }

  else
  {
    [v7 removeObject:v10];
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

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = [(PUBrowsingIrisPlayer *)self _playerCreateIfNeeded:0];
    if (v5 && [(PUDisplayAsset *)self->_asset isPhotoIrisPlaceholder])
    {
      v7 = [(PUDisplayAsset *)v5 isPhotoIrisPlaceholder]^ 1;
    }

    else
    {
      v7 = 0;
    }

    asset = self->_asset;
    v9 = v5;
    v10 = asset;
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v11 = [(PUDisplayAsset *)v9 isContentEqualTo:v10];
      if (!v11)
      {
        v11 = [(PUDisplayAsset *)v10 isContentEqualTo:v9];
      }

      v12 = v11 != 2;
    }

    objc_storeStrong(&self->_asset, a3);
    v13 = [(PUBrowsingIrisPlayer *)self currentChange];
    [v13 setHasChanges];

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

- (PUBrowsingIrisPlayer)initWithAsset:(id)a3 mediaProvider:(id)a4
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = PUBrowsingIrisPlayer;
  v10 = [(PUViewModel *)&v26 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, a3);
        objc_storeStrong(&v10->_mediaProvider, a4);
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
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingIrisPlayer.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingIrisPlayer.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUBrowsingIrisPlayer.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PUBrowsingIrisPlayer init]"}];

  abort();
}

+ (PUBrowsingIrisPlayer)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUBrowsingIrisPlayer.m" lineNumber:105 description:{@"%s is not available as initializer", "+[PUBrowsingIrisPlayer new]"}];

  abort();
}

@end