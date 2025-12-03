@interface PXGDisplayAssetVideoPresentationController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeConvertedFromVideoSessionTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoSessionTimeConvertedFromTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginningTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_timeRangeConvertedFromVideoSessionTimeRange:(SEL)range;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoSessionTimeRangeConvertedFromTimeRange:(SEL)range;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange;
- (BOOL)_timeConversionNeeded;
- (BOOL)isCrossfadingFromStillToVideoEnabled;
- (BOOL)shouldRewindOnBackAction;
- (CGSize)targetSize;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGDisplayAssetVideoPresentationController)init;
- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)asset accessQueue:(id)queue;
- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)asset accessQueue:(id)queue videoSessionManager:(id)manager options:(id)options loadingPriority:(int64_t)priority;
- (PXGDisplayAssetVideoPresentationControllerDelegate)delegate;
- (id)pixelBufferSourceWithMediaProvider:(id)provider;
- (id)placeholderImageWithMediaProvider:(id)provider;
- (id)videoSessionWithMediaProvider:(id)provider;
- (int64_t)actualPlayState;
- (int64_t)desiredPlayState;
- (void)_accessQueue_recyclePixelBufferSource;
- (void)_notifyReachedTime:(id *)time;
- (void)_performPendingPrerollIfNeeded;
- (void)_performPendingSeekIfNeeded;
- (void)_performPrerollAtRate:(float)rate;
- (void)_performSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)_prerollCompletedSuccessfully:(BOOL)successfully;
- (void)_setupPixelBufferSourceIfNeededWithMediaProvider:(id)provider;
- (void)_setupVideoSessionIfNeededWithMediaProvider:(id)provider;
- (void)_updatePresentationControllerState;
- (void)_updateVideoSession;
- (void)becomeVisible:(BOOL)visible;
- (void)dealloc;
- (void)fetchShouldDisplayPreviousNonnullPixelBuffer:(id)buffer;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)prerollForImmediatePlaybackAtRate:(float)rate withMediaProvider:(id)provider;
- (void)recyclePixelBufferSource;
- (void)requestPixelBufferSourceForMediaProvider:(id)provider isVisible:(BOOL)visible stillActive:(id)active completion:(id)completion;
- (void)requestPlayerViewForMediaProvider:(id)provider isVisible:(BOOL)visible stillActive:(id)active completion:(id)completion;
- (void)seekToBeginning;
- (void)setActualPlayState:(int64_t)state;
- (void)setActualTime:(id *)time;
- (void)setAudioSessionCategory:(id)category;
- (void)setDelegate:(id)delegate;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setDesiredPlaybackRate:(double)rate;
- (void)setDesiredTime:(id *)time;
- (void)setDesiredTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)setIsAtEnd:(BOOL)end;
- (void)setIsCleanApertureCompensationEnabled:(BOOL)enabled;
- (void)setIsCrossfadingFromStillToVideoEnabled:(BOOL)enabled;
- (void)setIsDuckingOtherAudioEnabled:(BOOL)enabled;
- (void)setIsLoopingEnabled:(BOOL)enabled;
- (void)setIsMixingAudioWithOthersEnabled:(BOOL)enabled;
- (void)setIsReadyForImmediatePlayback:(BOOL)playback;
- (void)setIsVisible:(BOOL)visible;
- (void)setPendingSeekTime:(id *)time;
- (void)setPendingSeekToleranceAfter:(id *)after;
- (void)setPendingSeekToleranceBefore:(id *)before;
- (void)setPlaybackStartTime:(id *)time;
- (void)setPlaybackTimeRange:(id *)range;
- (void)setResetsDesiredPlayStateOnHide:(BOOL)hide;
- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)updates;
- (void)setShouldDisplayPreviousNonNullPixelBuffer:(BOOL)buffer;
- (void)setVideoDuration:(id *)duration;
- (void)setVolume:(float)volume withFade:(BOOL)fade;
- (void)startObservingBoundaryTime:(id *)time;
- (void)stopObservingBoundaryTime:(id *)time;
- (void)synchronouslySeekToDesiredTime:(id *)time updatePixelBufferSource:(BOOL)source;
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

- (void)setPendingSeekToleranceAfter:(id *)after
{
  var3 = after->var3;
  *&self->_pendingSeekToleranceAfter.value = *&after->var0;
  self->_pendingSeekToleranceAfter.epoch = var3;
}

- (void)setPendingSeekToleranceBefore:(id *)before
{
  var3 = before->var3;
  *&self->_pendingSeekToleranceBefore.value = *&before->var0;
  self->_pendingSeekToleranceBefore.epoch = var3;
}

- (void)setPendingSeekTime:(id *)time
{
  var3 = time->var3;
  *&self->_pendingSeekTime.value = *&time->var0;
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

- (void)setPlaybackStartTime:(id *)time
{
  var3 = time->var3;
  *&self->_playbackStartTime.value = *&time->var0;
  self->_playbackStartTime.epoch = var3;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (VideoSessionObservationContext == context)
  {
    if (changeCopy)
    {
      accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PXGDisplayAssetVideoPresentationController_observable_didChange_context___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(accessQueue, block);
    }

    if ((changeCopy & 0x2C4) != 0)
    {
      [(PXGDisplayAssetVideoPresentationController *)self _invalidatePresentationControllerState];
    }

    if ((changeCopy & 0x2000) != 0)
    {
      accessQueue2 = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75__PXGDisplayAssetVideoPresentationController_observable_didChange_context___block_invoke_2;
      v11[3] = &unk_1E774C648;
      v11[4] = self;
      dispatch_async(accessQueue2, v11);
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

- (void)requestPixelBufferSourceForMediaProvider:(id)provider isVisible:(BOOL)visible stillActive:(id)active completion:(id)completion
{
  providerCopy = provider;
  activeCopy = active;
  completionCopy = completion;
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__PXGDisplayAssetVideoPresentationController_requestPixelBufferSourceForMediaProvider_isVisible_stillActive_completion___block_invoke;
  block[3] = &unk_1E7747F20;
  visibleCopy = visible;
  block[4] = self;
  v18 = providerCopy;
  v19 = activeCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = providerCopy;
  v16 = activeCopy;
  dispatch_async(accessQueue, block);
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

- (void)requestPlayerViewForMediaProvider:(id)provider isVisible:(BOOL)visible stillActive:(id)active completion:(id)completion
{
  providerCopy = provider;
  activeCopy = active;
  completionCopy = completion;
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PXGDisplayAssetVideoPresentationController_requestPlayerViewForMediaProvider_isVisible_stillActive_completion___block_invoke;
  block[3] = &unk_1E7747F20;
  visibleCopy = visible;
  block[4] = self;
  v18 = providerCopy;
  v19 = activeCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = providerCopy;
  v16 = activeCopy;
  dispatch_async(accessQueue, block);
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

- (void)fetchShouldDisplayPreviousNonnullPixelBuffer:(id)buffer
{
  bufferCopy = buffer;
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PXGDisplayAssetVideoPresentationController_fetchShouldDisplayPreviousNonnullPixelBuffer___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __91__PXGDisplayAssetVideoPresentationController_fetchShouldDisplayPreviousNonnullPixelBuffer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shouldDisplayPreviousNonNullPixelBuffer];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)becomeVisible:(BOOL)visible
{
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXGDisplayAssetVideoPresentationController_becomeVisible___block_invoke;
  v6[3] = &unk_1E7749428;
  v6[4] = self;
  visibleCopy = visible;
  dispatch_async(accessQueue, v6);
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

- (void)_notifyReachedTime:(id *)time
{
  delegate = [(PXGDisplayAssetVideoPresentationController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
    v8 = *&time->var0;
    var3 = time->var3;
    [(PXGDisplayAssetVideoPresentationController *)self _timeConvertedFromVideoSessionTime:&v8];
    [delegate2 assetVideoPresentationController:self didReachTime:v10];
  }
}

- (void)stopObservingBoundaryTime:(id *)time
{
  v4 = MEMORY[0x1E696B098];
  v13 = *time;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v13];
  v5 = [v4 valueWithCMTime:v14];
  timeObserversByTime = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  v7 = [timeObserversByTime objectForKeyedSubscript:v5];

  if (v7)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 isEqual:null];

    if ((v9 & 1) == 0)
    {
      videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      videoPlayer = [videoSession videoPlayer];
      [videoPlayer removeTimeObserver:v7];
    }
  }

  timeObserversByTime2 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  [timeObserversByTime2 removeObjectForKey:v5];
}

- (void)startObservingBoundaryTime:(id *)time
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696B098];
  v25 = *time;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v25];
  v6 = [v5 valueWithCMTime:location];
  timeObserversByTime = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
  v8 = [timeObserversByTime objectForKeyedSubscript:v6];

  if (!v8 || ([MEMORY[0x1E695DFB0] null], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v10))
  {
    null = [MEMORY[0x1E695DFB0] null];
    videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    if (videoSession)
    {
      objc_initWeak(location, self);
      videoPlayer = [videoSession videoPlayer];
      v27[0] = v6;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __73__PXGDisplayAssetVideoPresentationController_startObservingBoundaryTime___block_invoke;
      v21 = &unk_1E7747EF8;
      objc_copyWeak(&v22, location);
      v23 = *&time->var0;
      var3 = time->var3;
      v16 = [videoPlayer addBoundaryTimeObserverForTimes:v14 queue:accessQueue usingBlock:&v18];

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
      null = v16;
    }

    v17 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime:v18];
    [v17 setObject:null forKeyedSubscript:v6];
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

- (void)synchronouslySeekToDesiredTime:(id *)time updatePixelBufferSource:(BOOL)source
{
  sourceCopy = source;
  memset(&v7[1], 0, sizeof($3CC8671D27C23BF42ADDB32F2B5E48AE));
  v7[0] = *time;
  [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:v7];
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  v7[0] = v7[1];
  [videoSession seekToExactTime:v7 updatePixelBuffer:sourceCopy waitUntilComplete:1];
}

- (void)_performSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  if ([videoSession isReadyForSeeking])
  {
    v15 = *&time->var0;
    var3 = time->var3;
    [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeConvertedFromTime:&v15];
    *&time->var0 = v17;
    v10 = v18;
    time->var3 = v18;
    v17 = *&time->var0;
    v18 = v10;
    v15 = *&before->var0;
    var3 = before->var3;
    v13 = *&after->var0;
    v14 = after->var3;
    [videoSession seekToTime:&v17 toleranceBefore:&v15 toleranceAfter:&v13 completionHandler:0];
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
    v17 = *&time->var0;
    v18 = time->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekTime:&v17];
    v17 = *&before->var0;
    v18 = before->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceBefore:&v17];
    v17 = *&after->var0;
    v18 = after->var3;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingSeekToleranceAfter:&v17];
  }
}

- (void)setDesiredTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  var3 = time->var3;
  *&self->_desiredTime.value = *&time->var0;
  self->_desiredTime.epoch = var3;
  [(PXGDisplayAssetVideoPresentationController *)self signalChange:16];
  v12 = *time;
  v11 = *before;
  v10 = *after;
  [(PXGDisplayAssetVideoPresentationController *)self _performSeekToTime:&v12 toleranceBefore:&v11 toleranceAfter:&v10];
}

- (void)setDesiredTime:(id *)time
{
  v7 = *time;
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

- (void)setVolume:(float)volume withFade:(BOOL)fade
{
  fadeCopy = fade;
  [(PXGDisplayAssetVideoPresentationController *)self volume];
  if (*&v7 != volume)
  {
    *&v7 = volume;
    [(PXGDisplayAssetVideoPresentationController *)self setVolume:v7];
    [(PXGDisplayAssetVideoPresentationController *)self setShouldFadeVolumeChange:fadeCopy];

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsMixingAudioWithOthersEnabled:(BOOL)enabled
{
  if (self->_isMixingAudioWithOthersEnabled != enabled)
  {
    self->_isMixingAudioWithOthersEnabled = enabled;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsDuckingOtherAudioEnabled:(BOOL)enabled
{
  if (self->_isDuckingOtherAudioEnabled != enabled)
  {
    self->_isDuckingOtherAudioEnabled = enabled;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setAudioSessionCategory:(id)category
{
  categoryCopy = category;
  if (self->_audioSessionCategory != categoryCopy)
  {
    v6 = categoryCopy;
    objc_storeStrong(&self->_audioSessionCategory, category);
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
    categoryCopy = v6;
  }
}

- (void)setDesiredPlaybackRate:(double)rate
{
  if (self->_desiredPlaybackRate != rate)
  {
    self->_desiredPlaybackRate = rate;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setIsCleanApertureCompensationEnabled:(BOOL)enabled
{
  if (self->_isCleanApertureCompensationEnabled != enabled)
  {
    self->_isCleanApertureCompensationEnabled = enabled;
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

- (void)setIsCrossfadingFromStillToVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_isCrossfadingFromStillToVideoEnabled == enabledCopy)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_isCrossfadingFromStillToVideoEnabled = enabledCopy;
    os_unfair_lock_unlock(&self->_videoPresentationStateLock);

    [(PXGDisplayAssetVideoPresentationController *)self signalChange:256];
  }
}

- (void)setIsLoopingEnabled:(BOOL)enabled
{
  if (self->_isLoopingEnabled != enabled)
  {
    self->_isLoopingEnabled = enabled;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:128];

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setPlaybackTimeRange:(id *)range
{
  p_playbackTimeRange = &self->_playbackTimeRange;
  v6 = *&range->var0.var3;
  *&range1.start.value = *&range->var0.var0;
  *&range1.start.epoch = v6;
  *&range1.duration.timescale = *&range->var1.var1;
  v7 = *&self->_playbackTimeRange.start.epoch;
  *&v10.start.value = *&self->_playbackTimeRange.start.value;
  *&v10.start.epoch = v7;
  *&v10.duration.timescale = *&self->_playbackTimeRange.duration.timescale;
  if (!CMTimeRangeEqual(&range1, &v10))
  {
    v8 = *&range->var0.var0;
    v9 = *&range->var1.var1;
    *&p_playbackTimeRange->start.epoch = *&range->var0.var3;
    *&p_playbackTimeRange->duration.timescale = v9;
    *&p_playbackTimeRange->start.value = v8;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:64];
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setResetsDesiredPlayStateOnHide:(BOOL)hide
{
  if (self->_resetsDesiredPlayStateOnHide != hide)
  {
    self->_resetsDesiredPlayStateOnHide = hide;
  }
}

- (void)setIsVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    if (!visible && [(PXGDisplayAssetVideoPresentationController *)self resetsDesiredPlayStateOnHide])
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

- (void)setDesiredPlayState:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_desiredPlayState == state)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_desiredPlayState = state;
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
        logContext = [(PXGDisplayAssetVideoPresentationController *)self logContext];
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
        logContext2 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        desiredPlayState = self->_desiredPlayState;
        v18 = 134218240;
        logContext = logContext2;
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
        logContext3 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v17 = self->_desiredPlayState;
        v18 = 134218240;
        logContext = logContext3;
        v20 = 2048;
        v21 = v17;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXGDisplayAssetPresentationControllerChangedDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }

    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)updates
{
  if (self->_shouldDisableAutomaticPixelBufferUpdates != updates)
  {
    self->_shouldDisableAutomaticPixelBufferUpdates = updates;
    [(PXGDisplayAssetVideoPresentationController *)self _invalidateVideoSession];
  }
}

- (void)setShouldDisplayPreviousNonNullPixelBuffer:(BOOL)buffer
{
  if (self->_shouldDisplayPreviousNonNullPixelBuffer != buffer)
  {
    self->_shouldDisplayPreviousNonNullPixelBuffer = buffer;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:8];
  }
}

- (void)_prerollCompletedSuccessfully:(BOOL)successfully
{
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PXGDisplayAssetVideoPresentationController__prerollCompletedSuccessfully___block_invoke;
  v6[3] = &unk_1E7749428;
  v6[4] = self;
  successfullyCopy = successfully;
  dispatch_async(accessQueue, v6);
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

- (void)_performPrerollAtRate:(float)rate
{
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  videoPlayer = [videoSession videoPlayer];

  [videoPlayer rate];
  if (*&v7 == 0.0 && [videoPlayer status] == 1 && !-[PXGDisplayAssetVideoPresentationController isPendingSeekScheduled](self, "isPendingSeekScheduled"))
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68__PXGDisplayAssetVideoPresentationController__performPrerollAtRate___block_invoke;
    v12 = &unk_1E7747EB0;
    objc_copyWeak(&v13, &location);
    *&v8 = rate;
    [videoPlayer prerollAtRate:&v9 completionHandler:v8];
    [(PXGDisplayAssetVideoPresentationController *)self setPendingPrerollRate:0.0, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v7 = rate;
    [(PXGDisplayAssetVideoPresentationController *)self setPendingPrerollRate:v7];
  }
}

void __68__PXGDisplayAssetVideoPresentationController__performPrerollAtRate___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prerollCompletedSuccessfully:a2];
}

- (void)prerollForImmediatePlaybackAtRate:(float)rate withMediaProvider:(id)provider
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupPixelBufferSourceIfNeededWithMediaProvider:provider];
  *&v6 = rate;

  [(PXGDisplayAssetVideoPresentationController *)self _performPrerollAtRate:v6];
}

- (void)setVideoDuration:(id *)duration
{
  p_videoDuration = &self->_videoDuration;
  time1 = *duration;
  videoDuration = self->_videoDuration;
  if (CMTimeCompare(&time1, &videoDuration))
  {
    v6 = *&duration->var0;
    p_videoDuration->epoch = duration->var3;
    *&p_videoDuration->value = v6;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:1024];
  }
}

- (void)setIsAtEnd:(BOOL)end
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isAtEnd != end)
  {
    self->_isAtEnd = end;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:512];
    v4 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v5 = os_signpost_id_make_with_pointer(v4, self);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v17 = 134217984;
        logContext = [(PXGDisplayAssetVideoPresentationController *)self logContext];
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
        logContext2 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        isAtEnd = self->_isAtEnd;
        v17 = 134218240;
        logContext = logContext2;
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
        logContext3 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v16 = self->_isAtEnd;
        v17 = 134218240;
        logContext = logContext3;
        v19 = 2048;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXGDisplayAssetPresentationControllerChangedIsAtEnd", "Context=%{signpost.telemetry:string2}lu %ld", &v17, 0x16u);
      }
    }
  }
}

- (void)setIsReadyForImmediatePlayback:(BOOL)playback
{
  if (self->_isReadyForImmediatePlayback != playback)
  {
    self->_isReadyForImmediatePlayback = playback;
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

- (void)setActualPlayState:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_videoPresentationStateLock);
  if (self->_actualPlayState == state)
  {

    os_unfair_lock_unlock(&self->_videoPresentationStateLock);
  }

  else
  {
    self->_actualPlayState = state;
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
        logContext = [(PXGDisplayAssetVideoPresentationController *)self logContext];
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
        logContext2 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        actualPlayState = self->_actualPlayState;
        v18 = 134218240;
        logContext = logContext2;
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
        logContext3 = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        v17 = self->_actualPlayState;
        v18 = 134218240;
        logContext = logContext3;
        v20 = 2048;
        v21 = v17;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXGDisplayAssetPresentationControllerChangedActualPlayState", "Context=%{signpost.telemetry:string2}lu %ld", &v18, 0x16u);
      }
    }
  }
}

- (void)setActualTime:(id *)time
{
  p_actualTime = &self->_actualTime;
  time1 = *time;
  actualTime = self->_actualTime;
  if (CMTimeCompare(&time1, &actualTime))
  {
    v6 = *&time->var0;
    p_actualTime->epoch = time->var3;
    *&p_actualTime->value = v6;
    [(PXGDisplayAssetVideoPresentationController *)self signalChange:32];
  }
}

- (void)_updatePresentationControllerState
{
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  playState = [videoSession playState];
  if ((playState - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5383420[playState - 1];
  }

  v18 = 0uLL;
  v19 = 0;
  if (videoSession)
  {
    [videoSession currentTime];
  }

  v14 = v18;
  v15 = v19;
  [(PXGDisplayAssetVideoPresentationController *)self _timeConvertedFromVideoSessionTime:&v14];
  v18 = v16;
  v19 = v17;
  isAtEnd = [videoSession isAtEnd];
  v16 = 0uLL;
  v17 = 0;
  if (videoSession)
  {
    [videoSession videoDuration];
  }

  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXGDisplayAssetVideoPresentationController__updatePresentationControllerState__block_invoke;
  block[3] = &unk_1E7747E88;
  block[4] = self;
  block[5] = v5;
  v9 = v18;
  v10 = v19;
  v13 = isAtEnd;
  v11 = v16;
  v12 = v17;
  dispatch_async(accessQueue, block);
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
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];

  if (videoSession)
  {
    desiredPlayState = self->_desiredPlayState;
    isVisible = [(PXGDisplayAssetVideoPresentationController *)self isVisible];
    v18 = 0u;
    v19 = 0u;
    v6 = desiredPlayState == 1 && isVisible;
    v17 = 0uLL;
    [(PXGDisplayAssetVideoPresentationController *)self playbackTimeRange];
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [(PXGDisplayAssetVideoPresentationController *)self _videoSessionTimeRangeConvertedFromTimeRange:v16];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[5];
    isLoopingEnabled = [(PXGDisplayAssetVideoPresentationController *)self isLoopingEnabled];
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

    videoSession2 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PXGDisplayAssetVideoPresentationController__updateVideoSession__block_invoke;
    v10[3] = &unk_1E7747E40;
    v10[4] = self;
    v10[5] = v6;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = isLoopingEnabled;
    v15 = v8;
    [videoSession2 performChanges:v10 withPresentationContext:0 presenter:self->_videoSessionPresenter];
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

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6.receiver = self;
  v6.super_class = PXGDisplayAssetVideoPresentationController;
  [(PXGDisplayAssetVideoPresentationController *)&v6 performChanges:changesCopy];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoSessionTimeRangeConvertedFromTimeRange:(SEL)range
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

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_timeRangeConvertedFromVideoSessionTimeRange:(SEL)range
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoSessionTimeConvertedFromTime:(SEL)time
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result)
  {
    videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v9 = videoSession;
    if (videoSession)
    {
      [videoSession segmentTimeRangeOfOriginalVideo];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    time = *a4;
    v10 = CMTimeRangeContainsTime(&range, &time);

    if (v10)
    {
      videoSession2 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      v12 = videoSession2;
      if (videoSession2)
      {
        [videoSession2 segmentTimeRangeOfOriginalVideo];
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
      videoSession3 = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
      v14 = videoSession3;
      if (videoSession3)
      {
        [videoSession3 segmentTimeRangeOfOriginalVideo];
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeConvertedFromVideoSessionTime:(SEL)time
{
  result = [(PXGDisplayAssetVideoPresentationController *)self _timeConversionNeeded];
  if (result)
  {
    videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    v9 = videoSession;
    if (videoSession)
    {
      [videoSession segmentTimeRangeOfOriginalVideo];
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
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  isSegmentOfOriginalVideo = [videoSession isSegmentOfOriginalVideo];

  return isSegmentOfOriginalVideo;
}

- (void)_setupPixelBufferSourceIfNeededWithMediaProvider:(id)provider
{
  v19 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  pixelBufferSource = [(PXGDisplayAssetVideoPresentationController *)self pixelBufferSource];

  if (!pixelBufferSource)
  {
    [(PXGDisplayAssetVideoPresentationController *)self _setupVideoSessionIfNeededWithMediaProvider:providerCopy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    options = [(PXGDisplayAssetVideoPresentationController *)self options];
    strategies = [options strategies];

    v8 = [strategies countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      quality = 4;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(strategies);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 quality] < quality)
          {
            quality = [v13 quality];
          }
        }

        v9 = [strategies countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(PXGDisplayAssetVideoPresentationController *)self targetSize];
    PXSizeIsEmpty();
  }
}

- (void)_setupVideoSessionIfNeededWithMediaProvider:(id)provider
{
  v34 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
  contentProvider = [videoSession contentProvider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaProvider = [contentProvider mediaProvider];
    v8 = mediaProvider == providerCopy;

    if (!providerCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if (!providerCopy)
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    videoSessionManager = [(PXGDisplayAssetVideoPresentationController *)self videoSessionManager];
    displayAsset = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
    options = [(PXGDisplayAssetVideoPresentationController *)self options];
    v12 = [videoSessionManager videoSessionForAsset:displayAsset withOptions:options mediaProvider:providerCopy];

    v13 = [(PXGDisplayAssetVideoPresentationController *)self log];
    v14 = os_signpost_id_make_with_pointer(v13, self);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        logContext = [(PXGDisplayAssetVideoPresentationController *)self logContext];
        logContext2 = [v12 logContext];
        displayAsset2 = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
        uuid = [displayAsset2 uuid];
        *buf = 134218498;
        *&buf[4] = logContext;
        *&buf[12] = 2050;
        *&buf[14] = logContext2;
        *&buf[22] = 2114;
        v33 = uuid;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_EVENT, v15, "PXGDisplayAssetVideoPresentationControllerCreatedVideoSession", "Context=%{signpost.telemetry:string2}lu videoSession=%{public}llu, asset.uuid=%{public}@", buf, 0x20u);
      }
    }

    [v12 registerChangeObserver:self context:VideoSessionObservationContext];
    [v12 loadIfNeededWithPriority:{-[PXGDisplayAssetVideoPresentationController loadingPriority](self, "loadingPriority")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    timeObserversByTime = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
    v21 = [timeObserversByTime copy];

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
    videoSession = [(PXGDisplayAssetVideoPresentationController *)self videoSession];
    [videoSession unregisterChangeObserver:self context:VideoSessionObservationContext];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    timeObserversByTime = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
    v4 = [timeObserversByTime copy];

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
          timeObserversByTime2 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
          v11 = [timeObserversByTime2 objectForKeyedSubscript:v9];

          null = [MEMORY[0x1E695DFB0] null];
          v13 = [v11 isEqual:null];

          if ((v13 & 1) == 0)
          {
            videoPlayer = [videoSession videoPlayer];
            [videoPlayer removeTimeObserver:v11];

            null2 = [MEMORY[0x1E695DFB0] null];
            timeObserversByTime3 = [(PXGDisplayAssetVideoPresentationController *)self timeObserversByTime];
            [timeObserversByTime3 setObject:null2 forKeyedSubscript:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    videoPlayer2 = [videoSession videoPlayer];
    [videoPlayer2 cancelPendingPrerolls];

    if (videoSession)
    {
      videoSessionManager = [(PXGDisplayAssetVideoPresentationController *)self videoSessionManager];
      [videoSessionManager checkInVideoSession:videoSession];

      [(PXGDisplayAssetVideoPresentationController *)self setVideoSession:0];
    }
  }
}

- (void)recyclePixelBufferSource
{
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXGDisplayAssetVideoPresentationController_recyclePixelBufferSource__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (id)pixelBufferSourceWithMediaProvider:(id)provider
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupPixelBufferSourceIfNeededWithMediaProvider:provider];
  [(PXGDisplayAssetVideoPresentationController *)self setPixelBufferSourceCounter:[(PXGDisplayAssetVideoPresentationController *)self pixelBufferSourceCounter]+ 1];

  return [(PXGDisplayAssetVideoPresentationController *)self pixelBufferSource];
}

- (id)placeholderImageWithMediaProvider:(id)provider
{
  delegate = [(PXGDisplayAssetVideoPresentationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PXGDisplayAssetVideoPresentationController *)self delegate];
    v7 = [delegate2 placeholderImageForForPresentationController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)videoSessionWithMediaProvider:(id)provider
{
  [(PXGDisplayAssetVideoPresentationController *)self _setupVideoSessionIfNeededWithMediaProvider:provider];

  return [(PXGDisplayAssetVideoPresentationController *)self videoSession];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = [(PXGDisplayAssetVideoPresentationController *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PXGDisplayAssetVideoPresentationController_setDelegate___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(accessQueue, v7);
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
  displayAsset = [(PXGDisplayAssetVideoPresentationController *)self displayAsset];
  uuid = [displayAsset uuid];
  v8 = [v3 stringWithFormat:@"<%@: %p asset:%@>", v5, self, uuid];

  return v8;
}

- (void)dealloc
{
  [(PXVideoSessionManager *)self->_videoSessionManager checkInVideoSession:self->_videoSession];
  v3.receiver = self;
  v3.super_class = PXGDisplayAssetVideoPresentationController;
  [(PXGDisplayAssetVideoPresentationController *)&v3 dealloc];
}

- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)asset accessQueue:(id)queue
{
  queueCopy = queue;
  assetCopy = asset;
  v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
  v9 = +[PXVideoSessionManager sharedInstance];
  v10 = [(PXGDisplayAssetVideoPresentationController *)self initWithDisplayAsset:assetCopy accessQueue:queueCopy videoSessionManager:v9 options:v8 loadingPriority:0];

  return v10;
}

- (PXGDisplayAssetVideoPresentationController)initWithDisplayAsset:(id)asset accessQueue:(id)queue videoSessionManager:(id)manager options:(id)options loadingPriority:(int64_t)priority
{
  assetCopy = asset;
  queueCopy = queue;
  managerCopy = manager;
  optionsCopy = options;
  v33.receiver = self;
  v33.super_class = PXGDisplayAssetVideoPresentationController;
  v17 = [(PXGDisplayAssetVideoPresentationController *)&v33 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayAsset, asset);
    if (queueCopy)
    {
      v19 = queueCopy;
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

    objc_storeStrong(&v18->_videoSessionManager, manager);
    objc_storeStrong(&v18->_options, options);
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
    v18->_loadingPriority = priority;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetVideoPresentationController.m" lineNumber:62 description:{@"%s is not available as initializer", "-[PXGDisplayAssetVideoPresentationController init]"}];

  abort();
}

@end