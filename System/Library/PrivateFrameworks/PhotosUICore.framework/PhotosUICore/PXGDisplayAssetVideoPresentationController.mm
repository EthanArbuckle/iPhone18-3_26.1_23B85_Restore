@interface PXGDisplayAssetVideoPresentationController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeConvertedFromVideoSessionTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoSessionTimeConvertedFromTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginningTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_timeRangeConvertedFromVideoSessionTimeRange:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoSessionTimeRangeConvertedFromTimeRange:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange;
- (BOOL)_timeConversionNeeded;
- (BOOL)isCrossfadingFromStillToVideoEnabled;
- (BOOL)shouldRewindOnBackAction;
- (CGSize)targetSize;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGDisplayAssetVideoPresentationController)init;
- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)a3 accessQueue:(id)a4;
- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)a3 accessQueue:(id)a4 videoSessionManager:(id)a5 options:(id)a6 loadingPriority:(int64_t)a7;
- (PXGDisplayAssetVideoPresentationControllerDelegate)delegate;
- (id)pixelBufferSourceWithMediaProvider:(id)a3;
- (id)placeholderImageWithMediaProvider:(id)a3;
- (id)videoSessionWithMediaProvider:(id)a3;
- (int64_t)actualPlayState;
- (int64_t)desiredPlayState;
- (void)_accessQueue_recyclePixelBufferSource;
- (void)_notifyReachedTime:(id *)a3;
- (void)_performPendingPrerollIfNeeded;
- (void)_performPendingSeekIfNeeded;
- (void)_performPrerollAtRate:(float)a3;
- (void)_performSeekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5;
- (void)_prerollCompletedSuccessfully:(BOOL)a3;
- (void)_setupPixelBufferSourceIfNeededWithMediaProvider:(id)a3;
- (void)_setupVideoSessionIfNeededWithMediaProvider:(id)a3;
- (void)_updatePresentationControllerState;
- (void)_updateVideoSession;
- (void)becomeVisible:(BOOL)a3;
- (void)dealloc;
- (void)fetchShouldDisplayPreviousNonnullPixelBuffer:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)prerollForImmediatePlaybackAtRate:(float)a3 withMediaProvider:(id)a4;
- (void)recyclePixelBufferSource;
- (void)requestPixelBufferSourceForMediaProvider:(id)a3 isVisible:(BOOL)a4 stillActive:(id)a5 completion:(id)a6;
- (void)requestPlayerViewForMediaProvider:(id)a3 isVisible:(BOOL)a4 stillActive:(id)a5 completion:(id)a6;
- (void)seekToBeginning;
- (void)setActualPlayState:(int64_t)a3;
- (void)setActualTime:(id *)a3;
- (void)setAudioSessionCategory:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setDesiredPlaybackRate:(double)a3;
- (void)setDesiredTime:(id *)a3;
- (void)setDesiredTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5;
- (void)setIsAtEnd:(BOOL)a3;
- (void)setIsCleanApertureCompensationEnabled:(BOOL)a3;
- (void)setIsCrossfadingFromStillToVideoEnabled:(BOOL)a3;
- (void)setIsDuckingOtherAudioEnabled:(BOOL)a3;
- (void)setIsLoopingEnabled:(BOOL)a3;
- (void)setIsMixingAudioWithOthersEnabled:(BOOL)a3;
- (void)setIsReadyForImmediatePlayback:(BOOL)a3;
- (void)setIsVisible:(BOOL)a3;
- (void)setPendingSeekTime:(id *)a3;
- (void)setPendingSeekToleranceAfter:(id *)a3;
- (void)setPendingSeekToleranceBefore:(id *)a3;
- (void)setPlaybackStartTime:(id *)a3;
- (void)setPlaybackTimeRange:(id *)a3;
- (void)setResetsDesiredPlayStateOnHide:(BOOL)a3;
- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)a3;
- (void)setShouldDisplayPreviousNonNullPixelBuffer:(BOOL)a3;
- (void)setVideoDuration:(id *)a3;
- (void)setVolume:(float)a3 withFade:(BOOL)a4;
- (void)startObservingBoundaryTime:(id *)a3;
- (void)stopObservingBoundaryTime:(id *)a3;
- (void)synchronouslySeekToDesiredTime:(id *)a3 updatePixelBufferSource:(BOOL)a4;
@end

@implementation PXGDisplayAssetVideoPresentationController

- (BOOL)shouldRewindOnBackAction
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PXGDisplayAssetVideoPresentationController *)self isLoopingEnabled])
  {
    goto LABEL_6;
  }

  memset(&buf, 0, sizeof(buf));
  [(PXGDisplayAssetVideoPresentationController *)self beginningTime];
  memset(&v13, 0, sizeof(v13));
  [(PXGDisplayAssetVideoPresentationController *)self actualTime];
  memset(&v12, 0, sizeof(v12));
  lhs = v13;
  v11 = buf;
  CMTimeSubtract(&v12, &lhs, &v11);
  v3 = PLStoryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    lhs = v12;
    v4 = CMTimeCopyDescription(0, &lhs);
    LODWORD(lhs.value) = 134218242;
    *(&lhs.value + 4) = self;
    LOWORD(lhs.flags) = 2112;
    *(&lhs.flags + 2) = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%p playedDuration: %@", &lhs, 0x16u);
  }

  if ((v12.flags & 0x1D) != 1)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    lhs = v12;
    Seconds = CMTimeGetSeconds(&lhs);
    v6 = +[PXStorySettings sharedInstance];
    [v6 significantPlayedDuration];
    v8 = Seconds > v7;
  }

  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.value) = 134218240;
    *(&buf.value + 4) = self;
    LOWORD(buf.flags) = 1024;
    *(&buf.flags + 2) = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "%p shouldRewindOnBackAction: %i", &buf, 0x12u);
  }

  return v8;
}

- (void)setPendingSeekToleranceAfter:(id *)a3
{
  var3 = a3->var3;
  *&self->_pendingSeekToleranceAfter.value = *&a3->var0;
  self->_pendingSeekToleranceAfter.epoch = var3;
}

- (void)setPendingSeekToleranceBefore:(id *)a3
{
  var3 = a3->var3;
  *&self->_pendingSeekToleranceBefore.value = *&a3->var0;
  self->_pendingSeekToleranceBefore.epoch = var3;
}

- (void)setPendingSeekTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_pendingSeekTime.value = *&a3->var0;
  self->_pendingSeekTime.epoch = var3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange
{
  v3 = *&self[9].var1.var0;
  *&retstr->var0.var0 = *&self[9].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[9].var1.var3;
  return self;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXGDisplayAssetVideoPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPlaybackStartTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_playbackStartTime.value = *&a3->var0;
  self->_playbackStartTime.epoch = var3;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (VideoSessionObservationContext == a5)
  {
    if (v6)
    {
      v9 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PXGDisplayAssetVideoPresentationController_observable_didChange_context___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(v9, block);
    }

    if ((v6 & 0x2C4) != 0)
    {
      [(PXGDisplayAssetVideoPresentationController *)self _invalidatePresentationControllerState];
    }

    if ((v6 & 0x2000) != 0)
    {
      v10 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75__PXGDisplayAssetVideoPresentationController_observable_didChange_context___block_invoke_2;
      v11[3] = &unk_1E774C648;
      v11[4] = self;
      dispatch_async(v10, v11);
    }
  }
}

uint64_t __75__PXGDisplayAssetVideoPresentationController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _performPendingSeekIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _performPendingPrerollIfNeeded];
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
  [objc_claimAutoreleasedReturnValue() playbackStyle];
  PXDisplayAssetPlaybackStyleDescription();
}

- (void)requestPixelBufferSourceForMediaProvider:(id)a3 isVisible:(BOOL)a4 stillActive:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__PXGDisplayAssetVideoPresentationController_requestPixelBufferSourceForMediaProvider_isVisible_stillActive_completion___block_invoke;
  block[3] = &unk_1E7747F20;
  v21 = a4;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __120__PXGDisplayAssetVideoPresentationController_requestPixelBufferSourceForMediaProvider_isVisible_stillActive_completion___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 48) + 16))())
  {
    [*(a1 + 32) becomeVisible:*(a1 + 64)];
    v2 = [*(a1 + 32) pixelBufferSourceWithMediaProvider:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)requestPlayerViewForMediaProvider:(id)a3 isVisible:(BOOL)a4 stillActive:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PXGDisplayAssetVideoPresentationController_requestPlayerViewForMediaProvider_isVisible_stillActive_completion___block_invoke;
  block[3] = &unk_1E7747F20;
  v21 = a4;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __113__PXGDisplayAssetVideoPresentationController_requestPlayerViewForMediaProvider_isVisible_stillActive_completion___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 48) + 16))())
  {
    [*(a1 + 32) becomeVisible:*(a1 + 64)];
    v6 = [*(a1 + 32) videoSessionWithMediaProvider:*(a1 + 40)];
    v2 = [*(a1 + 32) placeholderImageWithMediaProvider:*(a1 + 40)];
    v3 = [[PXGVideoPlayerViewConfiguration alloc] initWithVideoSession:v6 toneMapToStandardDynamicRange:1 placeholderImage:v2];
    -[PXGVideoPlayerViewConfiguration setVisualEffectViewClass:](v3, "setVisualEffectViewClass:", [*(a1 + 32) visualEffectViewClass]);
    v4 = *(a1 + 56);
    v5 = objc_opt_class();
    (*(v4 + 16))(v4, v5, v3);
  }
}

- (void)fetchShouldDisplayPreviousNonnullPixelBuffer:(id)a3
{
  v4 = a3;
  v5 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PXGDisplayAssetVideoPresentationController_fetchShouldDisplayPreviousNonnullPixelBuffer___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __91__PXGDisplayAssetVideoPresentationController_fetchShouldDisplayPreviousNonnullPixelBuffer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shouldDisplayPreviousNonNullPixelBuffer];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)becomeVisible:(BOOL)a3
{
  v5 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXGDisplayAssetVideoPresentationController_becomeVisible___block_invoke;
  v6[3] = &unk_1E7749428;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __60__PXGDisplayAssetVideoPresentationController_becomeVisible___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PXGDisplayAssetVideoPresentationController_becomeVisible___block_invoke_2;
  v3[3] = &__block_descriptor_33_e61_v16__0___PXGMutableDisplayAssetVideoPresentationController__8l;
  v4 = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (void)_notifyReachedTime:(id *)a3
{
  v5 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
    v8 = *&a3->var0;
    var3 = a3->var3;
    [(PXGDisplayAssetVideoPresentationController *)self _timeConvertedFromVideoSessionTime:&v8];
    [v7 assetVideoPresentationController:self didReachTime:v10];
  }
}

- (void)stopObservingBoundaryTime:(id *)a3
{
  v4 = MEMORY[0x1E696B098];
  v13 = *a3;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v13];
  v5 = [v4 valueWithCMTime:v14];
  v6 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      v11 = [v10 videoPlayer];
      [v11 removeTimeObserver:v7];
    }
  }

  v12 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  [v12 removeObjectForKey:v5];
}

- (void)startObservingBoundaryTime:(id *)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696B098];
  v25 = *a3;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v25];
  v6 = [v5 valueWithCMTime:location];
  v7 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8 || ([MEMORY[0x1E695DFB0] null], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v10))
  {
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    if (v12)
    {
      objc_initWeak(location, self);
      v13 = [v12 videoPlayer];
      v27[0] = v6;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v15 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __73__PXGDisplayAssetVideoPresentationController_startObservingBoundaryTime___block_invoke;
      v21 = &unk_1E7747EF8;
      objc_copyWeak(&v22, location);
      v23 = *&a3->var0;
      var3 = a3->var3;
      v16 = [v13 addBoundaryTimeObserverForTimes:v14 queue:v15 usingBlock:&v18];

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
      v11 = v16;
    }

    v17 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime:v18];
    [v17 setObject:v11 forKeyedSubscript:v6];
  }
}

void __73__PXGDisplayAssetVideoPresentationController_startObservingBoundaryTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _notifyReachedTime:&v3];
}

- (void)_performPendingSeekIfNeeded
{
  if ([(PXGDisplayAssetVideoPresentationController *)self isPendingSeekScheduled])
  {
    [(PXGDisplayAssetVideoPresentationController *)self pendingSeekTime];
    [(PXGDisplayAssetVideoPresentationController *)self pendingSeekToleranceBefore];
    [(PXGDisplayAssetVideoPresentationController *)self pendingSeekToleranceAfter];
    [(PXGDisplayAssetVideoPresentationController *)self _performSeekToTime:v5 toleranceBefore:v4 toleranceAfter:v3];
  }
}

- (void)synchronouslySeekToDesiredTime:(id *)a3 updatePixelBufferSource:(BOOL)a4
{
  v4 = a4;
  memset(&v7[1], 0, sizeof($3CC8671D27C23BF42ADDB32F2B5E48AE));
  v7[0] = *a3;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:v7];
  v6 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v7[0] = v7[1];
  [v6 seekToExactTime:v7 updatePixelBuffer:v4 waitUntilComplete:1];
}

- (void)_performSeekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5
{
  v9 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  if ([v9 isReadyForSeeking])
  {
    v15 = *&a3->var0;
    var3 = a3->var3;
    [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v15];
    *&a3->var0 = v17;
    v10 = v18;
    a3->var3 = v18;
    v17 = *&a3->var0;
    v18 = v10;
    v15 = *&a4->var0;
    var3 = a4->var3;
    v13 = *&a5->var0;
    v14 = a5->var3;
    [v9 seekToTime:&v17 toleranceBefore:&v15 toleranceAfter:&v13 completionHandler:0];
    v17 = *MEMORY[0x1E6960C70];
    v12 = v17;
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v11 = v18;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekTime:&v17];
    v17 = v12;
    v18 = v11;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceBefore:&v17];
    v17 = v12;
    v18 = v11;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceAfter:&v17];
    *&self->_desiredTime.value = v12;
    self->_desiredTime.epoch = v11;
  }

  else
  {
    v17 = *&a3->var0;
    v18 = a3->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekTime:&v17];
    v17 = *&a4->var0;
    v18 = a4->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceBefore:&v17];
    v17 = *&a5->var0;
    v18 = a5->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceAfter:&v17];
  }
}

- (void)setDesiredTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5
{
  var3 = a3->var3;
  *&self->_desiredTime.value = *&a3->var0;
  self->_desiredTime.epoch = var3;
  [(PXGDisplayAssetVideoPresentationController *)self signalChange:16];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  [(PXGDisplayAssetVideoPresentationController *)self _performSeekToTime:&v12 toleranceBefore:&v11 toleranceAfter:&v10];
}

- (void)setDesiredTime:(id *)a3
{
  v7 = *a3;
  v5 = *MEMORY[0x1E6960C88];
  v6 = *(MEMORY[0x1E6960C88] + 16);
  v3 = v5;
  v4 = v6;
  [(PXGDisplayAssetVideoPresentationController *)self setDesiredTime:&v7 toleranceBefore:&v5 toleranceAfter:&v3];
}

- (void)seekToBeginning
{
  memset(&v6, 0, sizeof(v6));
  [(PXGDisplayAssetVideoPresentationController *)self beginningTime];
  [(PXGDisplayAssetVideoPresentationController *)self actualTime];
  time1 = v6;
  if (CMTimeCompare(&time1, &time2))
  {
    time2 = v6;
    time1 = **&MEMORY[0x1E6960CC0];
    v3 = time1;
    [(PXGDisplayAssetVideoPresentationController *)self setDesiredTime:&time2 toleranceBefore:&time1 toleranceAfter:&v3];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginningTime
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  result = [(PXGDisplayAssetVideoPresentationController *)self playbackStartTime];
  var2 = retstr->var2;
  if ((var2 & 1) == 0)
  {
    result = [(PXGDisplayAssetVideoPresentationController *)self playbackTimeRange];
    *&retstr->var0 = v8;
    retstr->var3 = v9;
    var2 = retstr->var2;
  }

  if ((var2 & 1) == 0)
  {
    v7 = MEMORY[0x1E6960CC0];
    *&retstr->var0 = *MEMORY[0x1E6960CC0];
    retstr->var3 = *(v7 + 16);
  }

  return result;
}

- (void)setVolume:(float)a3 withFade:(BOOL)a4
{
  v4 = a4;
  [(PXGDisplayAssetVideoPresentationController *)self volume];
  if (*&v7 != a3)
  {
    *&v7 = a3;
    [(PXGDisplayAssetVideoPresentationController *)self setVolume:v7];
    [(PXGDisplayAssetVideoPresentationController *)self setShouldFadeVolumeChange:v4];

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsMixingAudioWithOthersEnabled:(BOOL)a3
{
  if (self->_isMixingAudioWithOthersEnabled != a3)
  {
    self->_isMixingAudioWithOthersEnabled = a3;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsDuckingOtherAudioEnabled:(BOOL)a3
{
  if (self->_isDuckingOtherAudioEnabled != a3)
  {
    self->_isDuckingOtherAudioEnabled = a3;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setAudioSessionCategory:(id)a3
{
  v5 = a3;
  if (self->_audioSessionCategory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_audioSessionCategory, a3);
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
    v5 = v6;
  }
}

- (void)setDesiredPlaybackRate:(double)a3
{
  if (self->_desiredPlaybackRate != a3)
  {
    self->_desiredPlaybackRate = a3;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsCleanApertureCompensationEnabled:(BOOL)a3
{
  if (self->_isCleanApertureCompensationEnabled != a3)
  {
    self->_isCleanApertureCompensationEnabled = a3;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:2048];
  }
}

- (BOOL)isCrossfadingFromStillToVideoEnabled
{
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  isCrossfadingFromStillToVideoEnabled = self->_isCrossfadingFromStillToVideoEnabled;
  os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  return isCrossfadingFromStillToVideoEnabled;
}

- (void)setIsCrossfadingFromStillToVideoEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_isCrossfadingFromStillToVideoEnabled == v3)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_isCrossfadingFromStillToVideoEnabled = v3;
    os_unfair_lock_unlock(&self->_videoPresentationStateLock);

    [(PXGDisplayAssetVideoPresentationController *)self signalChange:256];
  }
}

- (void)setIsLoopingEnabled:(BOOL)a3
{
  if (self->_isLoopingEnabled != a3)
  {
    self->_isLoopingEnabled = a3;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:128];

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setPlaybackTimeRange:(id *)a3
{
  p_playbackTimeRange = &self->_playbackTimeRange;
  v6 = *&a3->var0.var3;
  *&range1.start.value = *&a3->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&a3->var1.var1;
  v7 = *&self->_playbackTimeRange.start.epoch;
  *&v10.start.value = *&self->_playbackTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_playbackTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&a3->var0.var0;
    v9 = *&a3->var1.var1;
    *&p_playbackTimeRange->start.epoch = *&a3->var0.var3;
    *&p_playbackTimeRange->duration.timescale = v9;
    *&p_playbackTimeRange->start.value = v8;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:64];
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setResetsDesiredPlayStateOnHide:(BOOL)a3
{
  if (self->_resetsDesiredPlayStateOnHide != a3)
  {
    self->_resetsDesiredPlayStateOnHide = a3;
  }
}

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    if (!a3 && [(PXGDisplayAssetVideoPresentationController *)self resetsDesiredPlayStateOnHide])
    {
      [(PXGDisplayAssetVideoPresentationController *)self setDesiredPlayState:0];
    }

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (int64_t)desiredPlayState
{
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  desiredPlayState = self->_desiredPlayState;
  os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  return desiredPlayState;
}

- (void)setDesiredPlayState:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_desiredPlayState == a3)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_desiredPlayState = a3;
    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:2];
    v5 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 < 0xFFFFFFFFFFFFFFFELL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v18 = 134217984;
        v19 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXGDisplayAssetPresentationControllerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu ", &v18, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        desiredPlayState = self->_desiredPlayState;
        v18 = 134218240;
        v19 = v11;
        v20 = 2048;
        v21 = desiredPlayState;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXGDisplayAssetPresentationControllerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }

    v13 = v8;
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        v16 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v17 = self->_desiredPlayState;
        v18 = 134218240;
        v19 = v16;
        v20 = 2048;
        v21 = v17;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXGDisplayAssetPresentationControllerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)a3
{
  if (self->_shouldDisableAutomaticPixelBufferUpdates != a3)
  {
    self->_shouldDisableAutomaticPixelBufferUpdates = a3;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setShouldDisplayPreviousNonNullPixelBuffer:(BOOL)a3
{
  if (self->_shouldDisplayPreviousNonNullPixelBuffer != a3)
  {
    self->_shouldDisplayPreviousNonNullPixelBuffer = a3;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:8];
  }
}

- (void)_prerollCompletedSuccessfully:(BOOL)a3
{
  v5 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PXGDisplayAssetVideoPresentationController__prerollCompletedSuccessfully___block_invoke;
  v6[3] = &unk_1E7749428;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __76__PXGDisplayAssetVideoPresentationController__prerollCompletedSuccessfully___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PXGDisplayAssetVideoPresentationController__prerollCompletedSuccessfully___block_invoke_2;
  v3[3] = &__block_descriptor_33_e69_v16__0___PXGMutableDisplayAssetVideoPresentationController_Private__8l;
  v4 = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (void)_performPendingPrerollIfNeeded
{
  [(PXGDisplayAssetVideoPresentationController *)self pendingPrerollRate];
  if (v3 > 0.0)
  {

    [(PXGDisplayAssetVideoPresentationController *)self _performPrerollAtRate:?];
  }
}

- (void)_performPrerollAtRate:(float)a3
{
  v5 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v6 = [v5 videoPlayer];

  [v6 rate];
  if (*&v7 == 0.0 && [v6 status] == 1 && !-[PXGDisplayAssetVideoPresentationController isPendingSeekScheduled](self, "isPendingSeekScheduled"))
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68__PXGDisplayAssetVideoPresentationController__performPrerollAtRate___block_invoke;
    v12 = &unk_1E7747EB0;
    objc_copyWeak(&v13, &location);
    *&v8 = a3;
    [v6 prerollAtRate:&v9 completionHandler:v8];
    [(PXGDisplayAssetVideoPresentationController *)self setPendingPrerollRate:0.0, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v7 = a3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingPrerollRate:v7];
  }
}

void __68__PXGDisplayAssetVideoPresentationController__performPrerollAtRate___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prerollCompletedSuccessfully:a2];
}

- (void)prerollForImmediatePlaybackAtRate:(float)a3 withMediaProvider:(id)a4
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupPixelBufferSourceIfNeededWithMediaProvider:a4];
  *&v6 = a3;

  [(PXGDisplayAssetVideoPresentationController *)self _performPrerollAtRate:v6];
}

- (void)setVideoDuration:(id *)a3
{
  p_videoDuration = &self->_videoDuration;
  time1 = *a3;
  videoDuration = self->_videoDuration;
  if (CMTimeCompare(&time1, &videoDuration))
  {
    v6 = *&a3->var0;
    p_videoDuration->epoch = a3->var3;
    *&p_videoDuration->value = v6;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:1024];
  }
}

- (void)setIsAtEnd:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isAtEnd != a3)
  {
    self->_isAtEnd = a3;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:512];
    v4 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        v18 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXGDisplayAssetPresentationControllerChangedIsAtEnd", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
      }
    }

    v7 = v4;
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        isAtEnd = self->_isAtEnd;
        v17 = 134218240;
        v18 = v10;
        v19 = 2048;
        v20 = isAtEnd;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXGDisplayAssetPresentationControllerChangedIsAtEnd", "Context=%{signpost.telemetry:string2}lu %ld", &v17, 0x16u);
      }
    }

    v12 = v7;
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v16 = self->_isAtEnd;
        v17 = 134218240;
        v18 = v15;
        v19 = 2048;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXGDisplayAssetPresentationControllerChangedIsAtEnd", "Context=%{signpost.telemetry:string2}lu %ld", &v17, 0x16u);
      }
    }
  }
}

- (void)setIsReadyForImmediatePlayback:(BOOL)a3
{
  if (self->_isReadyForImmediatePlayback != a3)
  {
    self->_isReadyForImmediatePlayback = a3;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:1];
  }
}

- (int64_t)actualPlayState
{
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  actualPlayState = self->_actualPlayState;
  os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  return actualPlayState;
}

- (void)setActualPlayState:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_actualPlayState == a3)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_actualPlayState = a3;
    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:4];
    v5 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 < 0xFFFFFFFFFFFFFFFELL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v18 = 134217984;
        v19 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXGDisplayAssetPresentationControllerChangedActualPlayState", "Context=%{signpost.telemetry:string2}lu ", &v18, 0xCu);
      }
    }

    v8 = v5;
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        v11 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        actualPlayState = self->_actualPlayState;
        v18 = 134218240;
        v19 = v11;
        v20 = 2048;
        v21 = actualPlayState;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXGDisplayAssetPresentationControllerChangedActualPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }

    v13 = v8;
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        v16 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v17 = self->_actualPlayState;
        v18 = 134218240;
        v19 = v16;
        v20 = 2048;
        v21 = v17;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXGDisplayAssetPresentationControllerChangedActualPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }
  }
}

- (void)setActualTime:(id *)a3
{
  p_actualTime = &self->_actualTime;
  time1 = *a3;
  actualTime = self->_actualTime;
  if (CMTimeCompare(&time1, &actualTime))
  {
    v6 = *&a3->var0;
    p_actualTime->epoch = a3->var3;
    *&p_actualTime->value = v6;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:32];
  }
}

- (void)_updatePresentationControllerState
{
  v3 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v4 = [v3 playState];
  if ((v4 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5383420[v4 - 1];
  }

  v18 = 0uLL;
  v19 = 0;
  if (v3)
  {
    [v3 currentTime];
  }

  v14 = v18;
  v15 = v19;
  [(PXGDisplayAssetVideoPresentationController *)self _timeConvertedFromVideoSessionTime:&v14];
  v18 = v16;
  v19 = v17;
  v6 = [v3 isAtEnd];
  v16 = 0uLL;
  v17 = 0;
  if (v3)
  {
    [v3 videoDuration];
  }

  v7 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXGDisplayAssetVideoPresentationController__updatePresentationControllerState__block_invoke;
  block[3] = &unk_1E7747E88;
  block[4] = self;
  block[5] = v5;
  v9 = v18;
  v10 = v19;
  v13 = v6;
  v11 = v16;
  v12 = v17;
  dispatch_async(v7, block);
}

uint64_t __80__PXGDisplayAssetVideoPresentationController__updatePresentationControllerState__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PXGDisplayAssetVideoPresentationController__updatePresentationControllerState__block_invoke_2;
  v3[3] = &__block_descriptor_89_e69_v16__0___PXGMutableDisplayAssetVideoPresentationController_Private__8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v8 = *(a1 + 96);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  return [v1 performChanges:v3];
}

void __80__PXGDisplayAssetVideoPresentationController__updatePresentationControllerState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setActualPlayState:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v4 setActualTime:&v5];
  [v4 setIsAtEnd:*(a1 + 88)];
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  [v4 setVideoDuration:&v5];
}

- (void)_updateVideoSession
{
  v3 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];

  if (v3)
  {
    desiredPlayState = self->_desiredPlayState;
    v5 = [(PXGDisplayAssetVideoPresentationController *)self isVisible];
    v18 = 0u;
    v19 = 0u;
    v6 = desiredPlayState == 1 && v5;
    v17 = 0uLL;
    [(PXGDisplayAssetVideoPresentationController *)self playbackTimeRange];
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeRangeConvertedFromTimeRange:v16];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[5];
    v7 = [(PXGDisplayAssetVideoPresentationController *)self isLoopingEnabled];
    if (BYTE12(v17))
    {
      v8 = 0;
      if ((BYTE4(v19) & 1) != 0 && !*(&v19 + 1))
      {
        v8 = v18 >= 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PXGDisplayAssetVideoPresentationController__updateVideoSession__block_invoke;
    v10[3] = &unk_1E7747E40;
    v10[4] = self;
    v10[5] = v6;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v7;
    v15 = v8;
    [v9 performChanges:v10 withPresentationContext:0 presenter:self->_videoSessionPresenter];
  }
}

void __65__PXGDisplayAssetVideoPresentationController__updateVideoSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDesiredPlayState:*(a1 + 40)];
  [*(a1 + 32) desiredPlaybackRate];
  [v3 setDesiredPlaybackRate:?];
  v4 = *(a1 + 64);
  v13[0] = *(a1 + 48);
  v13[1] = v4;
  v13[2] = *(a1 + 80);
  [v3 setPlaybackTimeRange:v13];
  if (*(a1 + 96) != 1)
  {
    [v3 setSeekToBeginningAtEnd:0];
    v5 = v3;
    v6 = 0;
    goto LABEL_5;
  }

  v5 = v3;
  v6 = 1;
  if (*(a1 + 97) != 1)
  {
LABEL_5:
    [v5 setLoopingEnabled:v6];
    goto LABEL_6;
  }

  [v3 setSeekToBeginningAtEnd:1];
LABEL_6:
  [v3 setShouldDisableAutomaticPixelBufferUpdates:{objc_msgSend(*(a1 + 32), "shouldDisableAutomaticPixelBufferUpdates")}];
  [*(a1 + 32) volume];
  v8 = v7;
  v9 = [*(a1 + 32) shouldFadeVolumeChange];
  LODWORD(v10) = v8;
  [v3 setVolume:v9 withFade:v10];
  v11 = [*(a1 + 32) isMixingAudioWithOthersEnabled];
  if ([*(a1 + 32) isDuckingOtherAudioEnabled] && *(a1 + 40) == 1)
  {
    v11 |= 2uLL;
  }

  v12 = [*(a1 + 32) audioSessionCategory];
  [v3 setAudioSessionCategory:v12 mode:*MEMORY[0x1E6958130] routeSharingPolicy:0 options:v11];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXGDisplayAssetVideoPresentationController;
  [(PXGDisplayAssetVideoPresentationController *)&v6 performChanges:v4];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoSessionTimeRangeConvertedFromTimeRange:(SEL)a3
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result && (a4->var0.var2 & 1) != 0 && (a4->var1.var2 & 1) != 0 && !a4->var1.var3 && (a4->var1.var0 & 0x8000000000000000) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    start = a4->var0;
    [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&start];
    start = v11;
    var1 = a4->var1;
    return CMTimeRangeMake(retstr, &start, &var1);
  }

  else
  {
    v8 = *&a4->var0.var3;
    *&retstr->var0.var0 = *&a4->var0.var0;
    *&retstr->var0.var3 = v8;
    *&retstr->var1.var1 = *&a4->var1.var1;
  }

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_timeRangeConvertedFromVideoSessionTimeRange:(SEL)a3
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result && (a4->var0.var2 & 1) != 0 && (a4->var1.var2 & 1) != 0 && !a4->var1.var3 && (a4->var1.var0 & 0x8000000000000000) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    start = a4->var0;
    [(PXGDisplayAssetVideoPresentationController *)self _timeConvertedFromVideoSessionTime:&start];
    start = v11;
    var1 = a4->var1;
    return CMTimeRangeMake(retstr, &start, &var1);
  }

  else
  {
    v8 = *&a4->var0.var3;
    *&retstr->var0.var0 = *&a4->var0.var0;
    *&retstr->var0.var3 = v8;
    *&retstr->var1.var1 = *&a4->var1.var1;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoSessionTimeConvertedFromTime:(SEL)a3
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result)
  {
    v8 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v9 = v8;
    if (v8)
    {
      [v8 segmentTimeRangeOfOriginalVideo];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    time = *a4;
    v10 = CMTimeRangeContainsTime(&range, &time);

    if (v10)
    {
      v11 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      v12 = v11;
      if (v11)
      {
        [v11 segmentTimeRangeOfOriginalVideo];
      }

      else
      {
        v18 = 0;
        v17 = 0u;
      }

      *&range.start.value = v17;
      range.start.epoch = v18;
      time = *a4;
      CMTimeSubtract(retstr, &time, &range.start);
    }

    else
    {
      v13 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      v14 = v13;
      if (v13)
      {
        [v13 segmentTimeRangeOfOriginalVideo];
      }

      else
      {
        v16 = 0;
        v15 = 0u;
      }

      *&retstr->var0 = v15;
      retstr->var3 = v16;
    }
  }

  else
  {
    *&retstr->var0 = *&a4->var0;
    retstr->var3 = a4->var3;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeConvertedFromVideoSessionTime:(SEL)a3
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result)
  {
    v8 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v9 = v8;
    if (v8)
    {
      [v8 segmentTimeRangeOfOriginalVideo];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    *&lhs.value = v11;
    lhs.epoch = v12;
    v10 = *a4;
    CMTimeAdd(retstr, &lhs, &v10);
  }

  else
  {
    *&retstr->var0 = *&a4->var0;
    retstr->var3 = a4->var3;
  }

  return result;
}

- (BOOL)_timeConversionNeeded
{
  v2 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v3 = [v2 isSegmentOfOriginalVideo];

  return v3;
}

- (void)_setupPixelBufferSourceIfNeededWithMediaProvider:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXGDisplayAssetVideoPresentationController *)self pixelBufferSource];

  if (!v5)
  {
    [(PXGDisplayAssetVideoPresentationController *)self _setupVideoSessionIfNeededWithMediaProvider:v4];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(PXGDisplayAssetVideoPresentationController *)self options];
    v7 = [v6 strategies];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      v11 = 4;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 quality] < v11)
          {
            v11 = [v13 quality];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(PXGDisplayAssetVideoPresentationController *)self targetSize];
    PXSizeIsEmpty();
  }
}

- (void)_setupVideoSessionIfNeededWithMediaProvider:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v6 = [v5 contentProvider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 mediaProvider];
    v8 = v7 == v4;

    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    v9 = [(PXGDisplayAssetVideoPresentationController *)self videoSessionManager];
    v10 = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
    v11 = [(PXGDisplayAssetVideoPresentationController *)self options];
    v12 = [v9 videoSessionForAsset:v10 withOptions:v11 mediaProvider:v4];

    v13 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        v16 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v17 = [v12 logContext];
        v18 = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
        v19 = [v18 uuid];
        *buf = 134218498;
        *&buf[4] = v16;
        *&buf[12] = 2050;
        *&buf[14] = v17;
        *&buf[22] = 2114;
        v33 = v19;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_EVENT, v15, "PXGDisplayAssetVideoPresentationControllerCreatedVideoSession", "Context=%{signpost.telemetry:string2}lu videoSession=%{public}llu, asset.uuid=%{public}@", buf, 0x20u);
      }
    }

    [v12 registerChangeObserver:self context:VideoSessionObservationContext];
    [v12 loadIfNeededWithPriority:{-[PXGDisplayAssetVideoPresentationController loadingPriority](self, "loadingPriority")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
    v21 = [v20 copy];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v27 + 1) + 8 * i);
          if (v26)
          {
            [v26 CMTimeValue];
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          [(PXGDisplayAssetVideoPresentationController *)self startObservingBoundaryTime:buf];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v23);
    }

    [(PXGDisplayAssetVideoPresentationController *)self setVideoSession:v12];
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }

LABEL_20:
}

- (void)_accessQueue_recyclePixelBufferSource
{
  v25 = *MEMORY[0x1E69E9840];
  [(PXGDisplayAssetVideoPresentationController *)self setPixelBufferSource:0];
  [(PXGDisplayAssetVideoPresentationController *)self setPixelBufferSourceCounter:[(PXGDisplayAssetVideoPresentationController *)self pixelBufferSourceCounter]- 1];
  if ([(PXGDisplayAssetVideoPresentationController *)self pixelBufferSourceCounter]<= 0)
  {
    v19 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    [v19 unregisterChangeObserver:self context:VideoSessionObservationContext];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
    v4 = [v3 copy];

    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
          v11 = [v10 objectForKeyedSubscript:v9];

          v12 = [MEMORY[0x1E695DFB0] null];
          v13 = [v11 isEqual:v12];

          if ((v13 & 1) == 0)
          {
            v14 = [v19 videoPlayer];
            [v14 removeTimeObserver:v11];

            v15 = [MEMORY[0x1E695DFB0] null];
            v16 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
            [v16 setObject:v15 forKeyedSubscript:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = [v19 videoPlayer];
    [v17 cancelPendingPrerolls];

    if (v19)
    {
      v18 = [(PXGDisplayAssetVideoPresentationController *)self videoSessionManager];
      [v18 checkInVideoSession:v19];

      [(PXGDisplayAssetVideoPresentationController *)self setVideoSession:0];
    }
  }
}

- (void)recyclePixelBufferSource
{
  v3 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXGDisplayAssetVideoPresentationController_recyclePixelBufferSource__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)pixelBufferSourceWithMediaProvider:(id)a3
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupPixelBufferSourceIfNeededWithMediaProvider:a3];
  [(PXGDisplayAssetVideoPresentationController *)self setPixelBufferSourceCounter:[(PXGDisplayAssetVideoPresentationController *)self pixelBufferSourceCounter]+ 1];

  return [(PXGDisplayAssetVideoPresentationController *)self pixelBufferSource];
}

- (id)placeholderImageWithMediaProvider:(id)a3
{
  v4 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
    v7 = [v6 placeholderImageForForPresentationController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)videoSessionWithMediaProvider:(id)a3
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupVideoSessionIfNeededWithMediaProvider:a3];

  return [(PXGDisplayAssetVideoPresentationController *)self videoSession];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PXGDisplayAssetVideoPresentationController_setDelegate___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__PXGDisplayAssetVideoPresentationController_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 192));

  if (v2 != WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 192);

    objc_storeWeak(v5, v4);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
  v7 = [v6 uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p asset:%@>", v5, self, v7];

  return v8;
}

- (void)dealloc
{
  [(PXVideoSessionManager *)self->_videoSessionManager checkInVideoSession:self->_videoSession];
  v3.receiver = self;
  v3.super_class = PXGDisplayAssetVideoPresentationController;
  [(PXGDisplayAssetVideoPresentationController *)&v3 dealloc];
}

- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)a3 accessQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
  v9 = +[PXVideoSessionManager sharedInstance];
  v10 = [(PXGDisplayAssetVideoPresentationController *)self initWithDisplayAsset:v7 accessQueue:v6 videoSessionManager:v9 options:v8 loadingPriority:0];

  return v10;
}

- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)a3 accessQueue:(id)a4 videoSessionManager:(id)a5 options:(id)a6 loadingPriority:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v33.receiver = self;
  v33.super_class = PXGDisplayAssetVideoPresentationController;
  v17 = [(PXGDisplayAssetVideoPresentationController *)&v33 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayAsset, a3);
    if (v14)
    {
      v19 = v14;
      accessQueue = v18->_accessQueue;
      v18->_accessQueue = v19;
    }

    else
    {
      v21 = MEMORY[0x1E69E96A0];
      v22 = MEMORY[0x1E69E96A0];
      accessQueue = v18->_accessQueue;
      v18->_accessQueue = v21;
    }

    objc_storeStrong(&v18->_videoSessionManager, a5);
    objc_storeStrong(&v18->_options, a6);
    v18->_videoSessionPresenter = &v18->_videoSessionPresenter;
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timeObserversByTime = v18->_timeObserversByTime;
    v18->_timeObserversByTime = v23;

    v25 = MEMORY[0x1E6960C70];
    v32 = *MEMORY[0x1E6960C70];
    *&v18->_desiredTime.value = *MEMORY[0x1E6960C70];
    v26 = *(v25 + 16);
    v18->_desiredTime.epoch = v26;
    objc_storeStrong(&v18->_audioSessionCategory, *MEMORY[0x1E6958038]);
    v27 = MEMORY[0x1E6960C98];
    v28 = *(MEMORY[0x1E6960C98] + 16);
    *&v18->_playbackTimeRange.start.value = *MEMORY[0x1E6960C98];
    *&v18->_playbackTimeRange.start.epoch = v28;
    *&v18->_playbackTimeRange.duration.timescale = *(v27 + 32);
    *&v18->_playbackStartTime.value = v32;
    v18->_playbackStartTime.epoch = v26;
    v18->_loadingPriority = a7;
    v18->_isVisible = 1;
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", v18];
    identifier = v18->_identifier;
    v18->_identifier = v29;

    v18->_desiredPlaybackRate = 1.0;
    v18->_videoPresentationStateLock._os_unfair_lock_opaque = 0;
  }

  return v18;
}

- (PXGDisplayAssetVideoPresentationController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetVideoPresentationController.m" lineNumber:62 description:{@"%s is not available as initializer", "-[PXGDisplayAssetVideoPresentationController init]"}];

  abort();
}

@end