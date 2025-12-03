@interface PXVideoSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playbackStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)videoDuration;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)segmentTimeRangeOfOriginalVideo;
- (AVPlayerItem)playerItem;
- (AVPlayerItemVideoOutput)videoOutput;
- (BOOL)_request4k60StreamAllowance;
- (BOOL)isAtBeginning;
- (BOOL)isAtEnd;
- (BOOL)isBuffering;
- (BOOL)isContentHighDynamicRange;
- (BOOL)isLoopingEnabled;
- (BOOL)isPlayable;
- (BOOL)isPlayerTimeAdvancing;
- (BOOL)isReadyForSeeking;
- (BOOL)isSegmentOfOriginalVideo;
- (BOOL)isStalled;
- (BOOL)isVideoOutputReady;
- (BOOL)preventsSleepDuringVideoPlayback;
- (BOOL)seekToBeginningAtEnd;
- (BOOL)shouldDisableAutomaticPixelBufferUpdates;
- (CGAffineTransform)preferredTransform;
- (CGImage)generateSnapshotImage;
- (CGSize)naturalSize;
- (CGSize)videoOutputSize;
- (NSString)audioSessionCategory;
- (NSString)audioSessionMode;
- (NSString)debugDetailedDescription;
- (NSString)description;
- (NSString)statusDescription;
- (PFSlowMotionTimeRangeMapper)timeRangeMapper;
- (PXVideoSession)init;
- (PXVideoSession)initWithContentProvider:(id)provider videoPlayer:(id)player resourceReclamationController:(id)controller playerCreationDelay:(double)delay;
- (PXVideoSessionDelegate)delegate;
- (__CVBuffer)currentPixelBuffer;
- (double)desiredPlaybackRate;
- (float)nominalFrameRate;
- (float)volume;
- (id)_disconnectVideoPlayer;
- (id)_newVideoView;
- (id)_playbackStateDescription;
- (id)_stateQueue_newPresentationStateFromCurrentWithPresenter:(void *)presenter;
- (id)audioSession;
- (id)contentLoadingError;
- (id)currentPlayerItem;
- (id)dequeueVideoView;
- (id)performFinalCleanup;
- (id)pixelBufferOutputSizes;
- (id)playbackTimeRangeEndBoundaryObserver;
- (id)videoPlayer;
- (int64_t)audioStatus;
- (int64_t)desiredPlayState;
- (int64_t)pixelBufferFrameDropsCount;
- (int64_t)playState;
- (unint64_t)audioSessionCategoryOptions;
- (unint64_t)audioSessionRouteSharingPolicy;
- (unint64_t)pixelBufferOutputTokenCount;
- (void)_addOutput:(id)output toPlayerItem:(id)item;
- (void)_assertOnUpdateQueue;
- (void)_audioSessionQueue_initializeAudioSession;
- (void)_audioSessionQueue_updateAudioSessionWithCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options;
- (void)_avPlayerTimeDidChange:(id *)change;
- (void)_didFinishInitializingAudioSession;
- (void)_handleAssetTracksDidLoadForAsset:(id)asset;
- (void)_handleContentLoadingResult:(id)result;
- (void)_handleDisplayLink:(id)link;
- (void)_handlePlayabilityDidLoadForAsset:(id)asset;
- (void)_handlePlayerItemSeekDidFinish;
- (void)_handlePlayerTimeAdvancementTimer:(id)timer;
- (void)_handleSharedAudioSession:(id)session;
- (void)_handleTrackGeometryDidLoad;
- (void)_loadAssetTracksIfNeeded;
- (void)_mainQueue_actuallyPrewarmVideoView;
- (void)_mainQueue_setDisplayLink:(id)link;
- (void)_mainQueue_updateCurrentPixelBufferWithVideoOutput:(id)output;
- (void)_performBlockOnUpdateQueue:(id)queue;
- (void)_performChanges:(id)changes;
- (void)_rebuildAVObjects;
- (void)_relinquishAny4k60StreamAllowance;
- (void)_removeAllVideoOutputs;
- (void)_setPlayabilityFromAsset:(id)asset;
- (void)_updateAVPlayerPlayState;
- (void)_updateAtBeginningOrEnd;
- (void)_updateAtBeginningOrEndWithPlayerItemDuration:(id *)duration success:(BOOL)success error:(id)error;
- (void)_updateAudioStatus;
- (void)_updateBuffering;
- (void)_updateContentDynamicRange;
- (void)_updateCurrenPixelBufferAfterSeekingToTime:(id *)time completionLock:(id)lock;
- (void)_updateCurrentPixelBuffer;
- (void)_updateCurrentPlayerItem;
- (void)_updateDisplayLinkState;
- (void)_updateDuration;
- (void)_updateFromCurrentPresentationState;
- (void)_updatePlayState;
- (void)_updatePlayability;
- (void)_updatePlayerItemInPlayer;
- (void)_updatePlayerVolume;
- (void)_updateQueue_registerChangeObserver:(id)observer context:(void *)context;
- (void)_updateQueue_seekToPlaybackTimeRangeStartIfNeeded;
- (void)_updateQueue_unregisterChangeObserver:(id)observer context:(void *)context;
- (void)_updateReadyForSeeking;
- (void)_updateStalled;
- (void)_updateTrackGeometry;
- (void)_updateVideoOutput;
- (void)_updateVolumeAnimator;
- (void)_videoQueue_updateContentDynamicRangeWithPlayerItem:(id)item;
- (void)_videoQueue_updateTrackGeometryWithPlayerItem:(id)item;
- (void)_videoWorkQueue_updateCurrenPixelBufferAfterSeekingToTime:(id *)time completionLock:(id)lock;
- (void)_videoWorkQueue_updateCurrentPixelBufferWithVideoOutput:(id)output outputTime:(double)time;
- (void)avPlayer:(id)player itemDidPlayToEnd:(id)end;
- (void)cancelLoading;
- (void)cancelPixelBufferOutputWithRequestIdentifier:(id)identifier;
- (void)dealloc;
- (void)didPerformChanges;
- (void)enterPresentationContext:(int64_t)context presenter:(void *)presenter;
- (void)incrementPixelBufferFrameDropsCount;
- (void)leavePresentationContext:(int64_t)context presenter:(void *)presenter;
- (void)loadIfNeededWithPriority:(int64_t)priority;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)outputMediaDataWillChange:(id)change;
- (void)performChanges:(id)changes;
- (void)performChanges:(id)changes withPresentationContext:(int64_t)context presenter:(void *)presenter;
- (void)prewarmVideoView;
- (void)registerChangeObserver:(id)observer context:(void *)context;
- (void)requestPixelBufferOutputWithRequestIdentifier:(id)identifier maxOutputSize:(CGSize)size;
- (void)resourceReclamationEventDidOccur:(id)occur;
- (void)seekToExactTime:(id *)time updatePixelBuffer:(BOOL)buffer waitUntilComplete:(BOOL)complete;
- (void)seekToPlaybackStartTime;
- (void)seekToTime:(id *)time completionHandler:(id)handler;
- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
- (void)setAllowsExternalPlayback:(BOOL)playback;
- (void)setAtBeginning:(BOOL)beginning;
- (void)setAtEnd:(BOOL)end;
- (void)setAudioSession:(id)session;
- (void)setAudioSessionCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options;
- (void)setAudioStatus:(int64_t)status;
- (void)setBuffering:(BOOL)buffering;
- (void)setContentLoadingError:(id)error;
- (void)setCurrentPixelBuffer:(__CVBuffer *)buffer;
- (void)setCurrentPlayerItem:(id)item;
- (void)setCurrentTime:(id *)time;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setDesiredPlaybackRate:(double)rate;
- (void)setIsContentHighDynamicRange:(BOOL)range;
- (void)setIsReadyForSeeking:(BOOL)seeking;
- (void)setIsVideoOutputReady:(BOOL)ready;
- (void)setLoopingEnabled:(BOOL)enabled;
- (void)setNaturalSize:(CGSize)size;
- (void)setNominalFrameRate:(float)rate;
- (void)setPlayState:(int64_t)state;
- (void)setPlayable:(BOOL)playable;
- (void)setPlaybackStartTime:(id *)time;
- (void)setPlaybackTimeRange:(id *)range;
- (void)setPlaybackTimeRangeEndBoundaryObserver:(id)observer;
- (void)setPlayerItem:(id)item segmentTimeRangeOfOriginalVideo:(id *)video timeRangeMapper:(id)mapper;
- (void)setPlayerTimeAdvancing:(BOOL)advancing;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
- (void)setPreventsSleepDuringVideoPlayback:(BOOL)playback;
- (void)setSeekToBeginningAtEnd:(BOOL)end;
- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)updates;
- (void)setStalled:(BOOL)stalled;
- (void)setUpdatingAudioSession:(BOOL)session;
- (void)setVideoDuration:(id *)duration;
- (void)setVideoOutput:(id)output size:(CGSize)size;
- (void)setVideoPlayer:(id)player;
- (void)setVolume:(float)volume withFade:(BOOL)fade;
- (void)unregisterChangeObserver:(id)observer context:(void *)context;
- (void)wrappedAudioSession:(id)session didChangeVolumeFrom:(float)from to:(float)to;
@end

@implementation PXVideoSession

- (void)setCurrentTime:(id *)time
{
  var3 = time->var3;
  *&self->_currentTime.value = *&time->var0;
  self->_currentTime.epoch = var3;
}

- (PXVideoSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_performBlockOnUpdateQueue:(id)queue
{
  block = queue;
  if ([(PXVideoSession *)self _isOnUpdateQueue])
  {
    block[2]();
  }

  else
  {
    dispatch_async(self->_updateQueue, block);
  }
}

- (void)_assertOnUpdateQueue
{
  if (![(PXVideoSession *)self _isOnUpdateQueue])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:2763 description:{@"Expected %s to be called on the update queue", "-[PXVideoSession _assertOnUpdateQueue]"}];
  }
}

- (NSString)statusDescription
{
  contentProvider = [(PXVideoSession *)self contentProvider];
  loadingResult = [contentProvider loadingResult];
  resultDebugDescription = [loadingResult resultDebugDescription];
  v5 = resultDebugDescription;
  if (resultDebugDescription)
  {
    v6 = resultDebugDescription;
  }

  else
  {
    v6 = @"Video Not Loaded";
  }

  v7 = v6;

  return &v6->isa;
}

- (NSString)debugDetailedDescription
{
  v3 = [(PXVideoSession *)self description];
  v4 = [v3 mutableCopy];

  videoPlayer = [(PXVideoSession *)self videoPlayer];
  [v4 appendFormat:@"\n\tAVPlayer: %@", videoPlayer];

  playerItem = [(PXVideoSession *)self playerItem];
  v7 = playerItem;
  if (playerItem)
  {
    [v4 appendFormat:@"\n\tPlayer Item: %@", playerItem];
    [v4 appendFormat:@"\n\t\tisPlaybackBufferEmpty: %i", objc_msgSend(v7, "isPlaybackBufferEmpty")];
    [v4 appendFormat:@"\n\t\tisPlaybackBufferFull: %i", objc_msgSend(v7, "isPlaybackBufferFull")];
    [v4 appendFormat:@"\n\t\tisPlaybackLikelyToKeepUp: %i", objc_msgSend(v7, "isPlaybackLikelyToKeepUp")];
  }

  else
  {
    [v4 appendFormat:@"\n\tPlayer Item: None", v9];
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  contentProvider = [(PXVideoSession *)self contentProvider];
  [v3 appendFormat:@"Content Provider: %@\n", contentProvider];

  desiredPlayState = [(PXVideoSession *)self desiredPlayState];
  v6 = @"Playing";
  if (desiredPlayState != 1)
  {
    v6 = 0;
  }

  if (!desiredPlayState)
  {
    v6 = @"Paused";
  }

  [v3 appendFormat:@"Desired Play State: %@\n", v6];
  playState = [(PXVideoSession *)self playState];
  v8 = 0;
  if (playState <= 5)
  {
    v8 = off_1E7746940[playState];
  }

  [v3 appendFormat:@"Play State: %@\n", v8];
  [v3 appendFormat:@"Stalled: %i\n", -[PXVideoSession isStalled](self, "isStalled")];
  [v3 appendFormat:@"At Beginning: %i End: %i\n", -[PXVideoSession isAtBeginning](self, "isAtBeginning"), -[PXVideoSession isAtEnd](self, "isAtEnd")];
  _playbackStateDescription = [(PXVideoSession *)self _playbackStateDescription];
  [v3 appendFormat:@"Playback: %@\n", _playbackStateDescription];

  videoOutput = [(PXVideoSession *)self videoOutput];
  [v3 appendFormat:@"VideoOutput: %@\n", videoOutput];

  if (self->_stateQueue_obtainedFirstPixelBuffer)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [v3 appendFormat:@"Got First Pixel Buffer: %@\n", v12];

  [v3 appendFormat:@"Pixel Buffer Frame Drops: %ld", -[PXVideoSession pixelBufferFrameDropsCount](self, "pixelBufferFrameDropsCount")];
  [v3 appendFormat:@"\tBuffering: %i\n", -[PXVideoSession isBuffering](self, "isBuffering")];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  px_stringByIndentingNewLines = [v3 px_stringByIndentingNewLines];
  v17 = [v13 stringWithFormat:@"<%@ %p> {\n\t%@}", v15, self, px_stringByIndentingNewLines];

  return v17;
}

- (void)_handleAssetTracksDidLoadForAsset:(id)asset
{
  if (asset)
  {
    v4 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:asset];
    firstObject = [v4 firstObject];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PXVideoSession__handleAssetTracksDidLoadForAsset___block_invoke;
    v7[3] = &unk_1E77498F8;
    v8 = firstObject;
    selfCopy = self;
    v6 = firstObject;
    [(PXVideoSession *)self _performChanges:v7];
  }
}

void __52__PXVideoSession__handleAssetTracksDidLoadForAsset___block_invoke(uint64_t a1, void *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) statusOfValueForKey:@"preferredTransform" error:0] == 2 && objc_msgSend(*(a1 + 32), "statusOfValueForKey:error:", @"naturalSize", 0) == 2 && objc_msgSend(*(a1 + 32), "statusOfValueForKey:error:", @"nominalFrameRate", 0) == 2)
  {
    if (*(*(a1 + 40) + 712) == 1 && (*(*(a1 + 40) + 704) & 0x40010) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _handleAssetTracksDidLoadForAsset:]_block_invoke"];
      [v6 handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:2712 description:{@"invalidating %lu after it already has been updated", 262160}];

      abort();
    }

    *(*(a1 + 40) + 696) |= 0x40010uLL;
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v4 = *(a1 + 32);
    v11[0] = @"preferredTransform";
    v11[1] = @"naturalSize";
    v11[2] = @"nominalFrameRate";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PXVideoSession__handleAssetTracksDidLoadForAsset___block_invoke_2;
    v8[3] = &unk_1E774C318;
    objc_copyWeak(&v9, &location);
    [v4 loadValuesAsynchronouslyForKeys:v5 completionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __52__PXVideoSession__handleAssetTracksDidLoadForAsset___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTrackGeometryDidLoad];
}

- (void)_loadAssetTracksIfNeeded
{
  v11[1] = *MEMORY[0x1E69E9840];
  playerItem = [(PXVideoSession *)self playerItem];
  asset = [playerItem asset];

  if (asset)
  {
    if ([asset statusOfValueForKey:@"tracks" error:0] == 2)
    {
      [(PXVideoSession *)self _handleAssetTracksDidLoadForAsset:asset];
    }

    else
    {
      objc_initWeak(&location, asset);
      objc_initWeak(&from, self);
      v11[0] = @"tracks";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __42__PXVideoSession__loadAssetTracksIfNeeded__block_invoke;
      v6[3] = &unk_1E7749C10;
      objc_copyWeak(&v7, &from);
      objc_copyWeak(&v8, &location);
      [asset loadValuesAsynchronouslyForKeys:v5 completionHandler:v6];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __42__PXVideoSession__loadAssetTracksIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAssetTracksDidLoadForAsset:v2];
}

- (id)_playbackStateDescription
{
  desiredPlayState = [(PXVideoSession *)self desiredPlayState];
  playState = [(PXVideoSession *)self playState];
  if (playState > 5)
  {
    v27 = 0;
  }

  else
  {
    v27 = off_1E77468F8[playState];
  }

  videoPlayer = [(PXVideoSession *)self videoPlayer];
  status = [videoPlayer status];
  if (status > 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = off_1E7746928[status];
  }

  isBuffering = [(PXVideoSession *)self isBuffering];
  isPlayerTimeAdvancing = [(PXVideoSession *)self isPlayerTimeAdvancing];
  isStalled = [(PXVideoSession *)self isStalled];
  memset(&v30, 0, sizeof(v30));
  videoPlayer2 = [(PXVideoSession *)self videoPlayer];
  v10 = videoPlayer2;
  if (videoPlayer2)
  {
    [videoPlayer2 currentTime];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  memset(&v29, 0, sizeof(v29));
  videoPlayer3 = [(PXVideoSession *)self videoPlayer];
  v12 = videoPlayer3;
  if (videoPlayer3)
  {
    [videoPlayer3 currentItemDuration];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  v13 = @"▶︎";
  if (desiredPlayState != 1)
  {
    v13 = 0;
  }

  if (desiredPlayState)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"‖";
  }

  currentItemIsLikelyToKeepUp = [videoPlayer currentItemIsLikelyToKeepUp];
  currentItemPlaybackBufferFull = [videoPlayer currentItemPlaybackBufferFull];
  currentItemPlaybackBufferEmpty = [videoPlayer currentItemPlaybackBufferEmpty];
  [videoPlayer rate];
  v18 = MEMORY[0x1E696AEC0];
  v20 = v19;
  v28 = v30;
  v21 = __43__PXVideoSession__playbackStateDescription__block_invoke(&v28);
  v28 = v29;
  v22 = __43__PXVideoSession__playbackStateDescription__block_invoke(&v28);
  v23 = [v18 stringWithFormat:@"%@ %@ %@ b%i a%i s%i l%i f%i e%i r%.1f %@/%@", v14, v27, v26, isBuffering, isPlayerTimeAdvancing, isStalled, currentItemIsLikelyToKeepUp, currentItemPlaybackBufferFull, currentItemPlaybackBufferEmpty, *&v20, v21, v22];

  return v23;
}

__CFString *__43__PXVideoSession__playbackStateDescription__block_invoke(CMTime *a1)
{
  if ((a1->flags & 0x1D) == 1)
  {
    v6 = v1;
    v7 = v2;
    time = *a1;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.3f", CMTimeGetSeconds(&time)];
  }

  else
  {
    v3 = @"?";
  }

  return v3;
}

- (void)_handlePlayerItemSeekDidFinish
{
  objc_initWeak(&location, self);
  updateQueue = self->_updateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PXVideoSession__handlePlayerItemSeekDidFinish__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(updateQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__PXVideoSession__handlePlayerItemSeekDidFinish__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateQueue_decrementPendingPlayerItemSeekCount];
}

- (void)_updateQueue_seekToPlaybackTimeRangeStartIfNeeded
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  if (playerItem && ([(PXVideoSession *)self playState]!= 3 || [(PXVideoSession *)self isAtEnd]))
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    [(PXVideoSession *)self playbackTimeRange];
    v14 = 0;
    v15 = 0;
    v16 = 0;
    [(PXVideoSession *)self playbackStartTime];
    memset(&v13, 0, sizeof(v13));
    v4 = MEMORY[0x1E6960CC0];
    v13 = **&MEMORY[0x1E6960CC0];
    ++self->_updateQueue_pendingPlayerItemSeekCount;
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PXVideoSession__updateQueue_seekToPlaybackTimeRangeStartIfNeeded__block_invoke;
    v7[3] = &unk_1E77468D8;
    v8[1] = *&Current;
    v9 = v13;
    objc_copyWeak(v8, &location);
    range.start = v13;
    time = *v4;
    v6 = time;
    [playerItem seekToTime:&range toleranceBefore:&time toleranceAfter:&v6 completionHandler:v7];
    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

void __67__PXVideoSession__updateQueue_seekToPlaybackTimeRangeStartIfNeeded__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 40);
  v4 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    Seconds = CMTimeGetSeconds(&v7);
    LODWORD(v7.value) = 134218240;
    *(&v7.value + 4) = Seconds;
    LOWORD(v7.flags) = 2048;
    *(&v7.flags + 2) = Current - v3;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Seeked to start time %.2f in %f seconds", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlayerItemSeekDidFinish];
}

- (void)_removeAllVideoOutputs
{
  [(PXVideoSession *)self _relinquishAny4k60StreamAllowance];
  playerItem = [(PXVideoSession *)self playerItem];
  videoWorkQueue = self->_videoWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXVideoSession__removeAllVideoOutputs__block_invoke;
  block[3] = &unk_1E774C648;
  v7 = playerItem;
  v5 = playerItem;
  dispatch_async(videoWorkQueue, block);
}

void __40__PXVideoSession__removeAllVideoOutputs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputs];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__PXVideoSession__removeAllVideoOutputs__block_invoke_2;
  v3[3] = &unk_1E77468B0;
  v4 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __40__PXVideoSession__removeAllVideoOutputs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDelegate:0 queue:0];
  [*(a1 + 32) removeOutput:v3];
}

- (void)_updateAVPlayerPlayState
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  playState = [(PXVideoSession *)self playState];
  if (playState == 2)
  {
    [videoPlayer pause];
    goto LABEL_7;
  }

  if (playState == 3)
  {
    [(PXVideoPlaybackReporter *)self->_playbackReporter reportPlaybackBegan];
    [(PXVideoSession *)self desiredPlaybackRate];
    *&v7 = v7;
    [videoPlayer setRate:v7];
LABEL_7:
    v5 = videoPlayer;
    goto LABEL_8;
  }

  v5 = videoPlayer;
  if (!playState)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:2529 description:@"unknown play state"];

    abort();
  }

LABEL_8:
}

- (void)_updateCurrentPlayerItem
{
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  currentItem = [videoPlayer currentItem];
  [(PXVideoSession *)self setCurrentPlayerItem:currentItem];
}

- (void)_updatePlayState
{
  v23 = *MEMORY[0x1E69E9840];
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  if (playerItem)
  {
  }

  else
  {
    contentLoadingError = [(PXVideoSession *)self contentLoadingError];

    if (contentLoadingError)
    {
      v8 = MEMORY[0x1E696ABC0];
      contentLoadingError2 = [(PXVideoSession *)self contentLoadingError];
      v4 = [v8 px_errorWithDomain:@"PXVideoSessionErrorDomain" code:1 underlyingError:contentLoadingError2 debugDescription:@"Video loading failed"];

      videoPlayer = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(videoPlayer, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v19 = 138412546;
        selfCopy2 = self;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&dword_1A3C1C000, videoPlayer, OS_LOG_TYPE_ERROR, "%@ encountered error: %@", &v19, 0x16u);
      }

LABEL_21:
      v6 = 5;
      goto LABEL_22;
    }
  }

  if (![(PXVideoSession *)self isPlayable]&& [(PXVideoSession *)self desiredPlayState]== 1)
  {
    v4 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXVideoSessionErrorDomain" code:2 underlyingError:0 debugDescription:@"Video is not playable on this device"];
    videoPlayer = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(videoPlayer, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  videoPlayer = [(PXVideoSession *)self videoPlayer];
  if ([(PXVideoSession *)self isUpdatingAudioSession])
  {
    v4 = 0;
    v6 = 1;
    goto LABEL_22;
  }

  status = [videoPlayer status];
  if (status == 2)
  {
    v15 = MEMORY[0x1E696ABC0];
    error = [videoPlayer error];
    v4 = [v15 px_errorWithDomain:@"PXVideoSessionErrorDomain" code:2 underlyingError:error debugDescription:@"AVPlayer state == PXVideoSessionActualPlayStateFailed"];

    v14 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      v19 = 138412546;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%@ encountered error: %@", &v19, 0x16u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (status != 1)
  {
    v4 = 0;
    v6 = status == 0;
    goto LABEL_22;
  }

  if ([videoPlayer currentItemStatus]== 2)
  {
    v11 = MEMORY[0x1E696ABC0];
    currentItem = [videoPlayer currentItem];
    error2 = [currentItem error];
    v4 = [v11 px_errorWithDomain:@"PXVideoSessionErrorDomain" code:2 underlyingError:error2 debugDescription:@"AVPlayerItem status == AVPlayerItemStatusFailed"];

    v14 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  desiredPlayState = [(PXVideoSession *)self desiredPlayState];
  if (desiredPlayState == 1)
  {
    v4 = 0;
    if ([(PXVideoSession *)self isBuffering])
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v4 = 0;
    if (desiredPlayState)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

LABEL_22:

  error = self->_error;
  self->_error = v4;

  [(PXVideoSession *)self setPlayState:v6];
}

- (void)_updateReadyForSeeking
{
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  if ([videoPlayer status] == 1)
  {
    currentItem = [videoPlayer currentItem];
    v4 = [currentItem status] == 1;
  }

  else
  {
    v4 = 0;
  }

  [(PXVideoSession *)self setIsReadyForSeeking:v4];
}

- (void)_updatePlayerVolume
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXVideoSession__updatePlayerVolume__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(MEMORY[0x1E69E96A0], v6);
  v3 = *(v8 + 6);
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  LODWORD(v5) = v3;
  [videoPlayer setVolume:v5];

  _Block_object_dispose(&v7, 8);
}

float __37__PXVideoSession__updatePlayerVolume__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 776) presentationValue];
  result = v2;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateVolumeAnimator
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  stateQueue = self->_stateQueue;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXVideoSession__updateVolumeAnimator__block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = v7;
  block[6] = v5;
  dispatch_sync(stateQueue, block);
  px_dispatch_on_main_queue();
}

float __39__PXVideoSession__updateVolumeAnimator__block_invoke(void *a1)
{
  result = *(a1[4] + 484);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 488);
  return result;
}

void __39__PXVideoSession__updateVolumeAnimator__block_invoke_2(void *a1)
{
  v1 = *(a1[4] + 776);
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __39__PXVideoSession__updateVolumeAnimator__block_invoke_3;
    v3[3] = &unk_1E7746860;
    v3[4] = a1[6];
    [v1 performChangesWithDuration:2 curve:v3 changes:0.25];
  }

  else
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __39__PXVideoSession__updateVolumeAnimator__block_invoke_4;
    v2[3] = &unk_1E7746860;
    v2[4] = a1[6];
    [v1 performChangesWithoutAnimation:v2];
  }

  kdebug_trace();
}

- (void)_updatePlayerItemInPlayer
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  if (!playerItem)
  {
    v8 = 0;
    videoPlayer = [(PXVideoSession *)self videoPlayer];
    v6 = videoPlayer;
    v7 = 0;
LABEL_7:
    [videoPlayer replaceCurrentItemWithPlayerItem:v7];
    goto LABEL_8;
  }

  if (!self->_updateQueue_didFinishInitializingAudioSession)
  {
    goto LABEL_9;
  }

  v8 = playerItem;
  isLoopingEnabled = [(PXVideoSession *)self isLoopingEnabled];
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  v6 = videoPlayer;
  if (!isLoopingEnabled)
  {
    v7 = v8;
    goto LABEL_7;
  }

  [videoPlayer setLoopingEnabled:1 withTemplateItem:v8];
LABEL_8:

  playerItem = v8;
LABEL_9:
}

- (void)_updateStalled
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  desiredPlayState = [(PXVideoSession *)self desiredPlayState];
  playState = [(PXVideoSession *)self playState];
  v5 = (playState == 4) & ![(PXVideoSession *)self isPlayerTimeAdvancing];
  if (playState == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (desiredPlayState == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(PXVideoSession *)self setStalled:v7];
}

- (void)_updateBuffering
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  currentItemIsLikelyToKeepUp = [videoPlayer currentItemIsLikelyToKeepUp];
  currentItemPlaybackBufferFull = [videoPlayer currentItemPlaybackBufferFull];
  currentItem = [videoPlayer currentItem];
  v6 = currentItem != 0;

  [(PXVideoSession *)self setBuffering:v6 & ((currentItemIsLikelyToKeepUp | currentItemPlaybackBufferFull) ^ 1u)];
}

- (void)_updateAtBeginningOrEndWithPlayerItemDuration:(id *)duration success:(BOOL)success error:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!success)
  {
    v10 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to load video duration. Error: %@", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  videoPlayer = [(PXVideoSession *)self videoPlayer];
  v10 = videoPlayer;
  v18 = 0uLL;
  v19 = 0;
  if (videoPlayer)
  {
    [videoPlayer currentTime];
  }

  memset(&buf, 0, sizeof(buf));
  [(PXVideoSession *)self playbackTimeRange];
  if ((BYTE12(v18) & 0x1D) != 1 || (duration->var2 & 0x1D) != 1)
  {
LABEL_10:
    v12 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  *&time1.start.value = v18;
  time1.start.epoch = v19;
  time2 = **&MEMORY[0x1E6960CC0];
  v11 = CMTimeCompare(&time1.start, &time2) < 1;
  *&time1.start.value = v18;
  time1.start.epoch = v19;
  time2 = *duration;
  if (CMTimeCompare(&time1.start, &time2) < 0)
  {
    if (buf.start.flags)
    {
      v12 = 0;
      if ((buf.duration.flags & 1) != 0 && !buf.duration.epoch && (buf.duration.value & 0x8000000000000000) == 0)
      {
        time1 = buf;
        CMTimeRangeGetEnd(&time2, &time1);
        *&time1.start.value = v18;
        time1.start.epoch = v19;
        v12 = CMTimeCompare(&time1.start, &time2) >= 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_11:

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PXVideoSession__updateAtBeginningOrEndWithPlayerItemDuration_success_error___block_invoke;
  v13[3] = &unk_1E7746838;
  v13[4] = self;
  v14 = v11;
  v15 = v12;
  [(PXVideoSession *)self _performChanges:v13];
}

uint64_t __78__PXVideoSession__updateAtBeginningOrEndWithPlayerItemDuration_success_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAtBeginning:*(a1 + 40)];
  v2 = *(a1 + 41);
  v3 = *(a1 + 32);

  return [v3 setAtEnd:v2];
}

- (void)_updateAtBeginningOrEnd
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  playerItem = [(PXVideoSession *)self playerItem];
  v5 = playerItem;
  if (videoPlayer && playerItem)
  {
    objc_initWeak(&location, self);
    asset = [v5 asset];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PXVideoSession__updateAtBeginningOrEnd__block_invoke;
    v8[3] = &unk_1E7746810;
    objc_copyWeak(&v9, &location);
    [asset px_loadDurationWithCompletionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXVideoSession__updateAtBeginningOrEnd__block_invoke_2;
    v7[3] = &unk_1E774C5F8;
    v7[4] = self;
    [(PXVideoSession *)self _performChanges:v7];
  }
}

void __41__PXVideoSession__updateAtBeginningOrEnd__block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = *a2;
  v10 = *(a2 + 2);
  [WeakRetained _updateAtBeginningOrEndWithPlayerItemDuration:&v9 success:a3 error:v7];
}

uint64_t __41__PXVideoSession__updateAtBeginningOrEnd__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAtBeginning:1];
  v2 = *(a1 + 32);

  return [v2 setAtEnd:0];
}

- (void)setNominalFrameRate:(float)rate
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXVideoSession_setNominalFrameRate___block_invoke;
  block[3] = &unk_1E77467E8;
  rateCopy = rate;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setNominalFrameRate:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:2333 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x400uLL;
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __38__PXVideoSession_setNominalFrameRate___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 560) != v2)
  {
    *(v1 + 560) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)nominalFrameRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PXVideoSession_nominalFrameRate__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __34__PXVideoSession_nominalFrameRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 560);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXVideoSession_setNaturalSize___block_invoke;
  block[3] = &unk_1E77463D0;
  *&block[6] = width;
  *&block[7] = height;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setNaturalSize:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXVideoSession.m" lineNumber:2311 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x400uLL;
  }

  _Block_object_dispose(&v10, 8);
}

__n128 __33__PXVideoSession_setNaturalSize___block_invoke(__n128 *a1)
{
  v1 = a1 + 3;
  result.n128_u64[0] = a1[3].n128_u64[0];
  v3 = (a1[2].n128_u64[0] + 544);
  if (v3->n128_f64[0] != result.n128_f64[0] || *(a1[2].n128_u64[0] + 552) != a1[3].n128_f64[1])
  {
    result = *v1;
    *v3 = *v1;
    *(*(a1[2].n128_u64[1] + 8) + 24) = 1;
  }

  return result;
}

- (CGSize)naturalSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A561E057;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PXVideoSession_naturalSize__block_invoke;
  v7[3] = &unk_1E7749A28;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __29__PXVideoSession_naturalSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 544);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PXVideoSession_setPreferredTransform___block_invoke;
  v7[3] = &unk_1E77466A0;
  v6 = *&transform->c;
  v8 = *&transform->a;
  v9 = v6;
  v10 = *&transform->tx;
  v7[4] = self;
  v7[5] = &v11;
  dispatch_sync(stateQueue, v7);
  if (*(v12 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:2048];
  }

  _Block_object_dispose(&v11, 8);
}

__n128 __40__PXVideoSession_setPreferredTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 31;
  v4 = *(a1 + 64);
  *&t1.a = *(a1 + 48);
  *&t1.c = v4;
  *&t1.tx = *(a1 + 80);
  v5 = v2[31];
  v6 = v2[33];
  *&v9.c = v2[32];
  *&v9.tx = v6;
  *&v9.a = v5;
  if (!CGAffineTransformEqualToTransform(&t1, &v9))
  {
    result = *(a1 + 48);
    v8 = *(a1 + 80);
    v3[1] = *(a1 + 64);
    v3[2] = v8;
    *v3 = result;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (CGAffineTransform)preferredTransform
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = &unk_1A561E057;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PXVideoSession_preferredTransform__block_invoke;
  v8[3] = &unk_1E7749A28;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(stateQueue, v8);
  v5 = v10;
  v6 = *(v10 + 3);
  *&retstr->a = *(v10 + 2);
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

__n128 __36__PXVideoSession_preferredTransform__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 512);
  result = *(*(a1 + 32) + 528);
  *(v1 + 32) = *(*(a1 + 32) + 496);
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  return result;
}

- (void)_videoQueue_updateContentDynamicRangeWithPlayerItem:(id)item
{
  asset = [item asset];
  v5 = [MEMORY[0x1E69C0928] videoAssetIsHighDynamicRange:asset];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXVideoSession__videoQueue_updateContentDynamicRangeWithPlayerItem___block_invoke;
  v6[3] = &unk_1E774C670;
  v6[4] = self;
  v7 = v5;
  [(PXVideoSession *)self _performChanges:v6];
}

- (void)_updateContentDynamicRange
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  objc_initWeak(&location, self);
  videoWorkQueue = self->_videoWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PXVideoSession__updateContentDynamicRange__block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v8, &location);
  v7 = playerItem;
  v5 = playerItem;
  dispatch_async(videoWorkQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __44__PXVideoSession__updateContentDynamicRange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _videoQueue_updateContentDynamicRangeWithPlayerItem:*(a1 + 32)];
}

- (void)_videoQueue_updateTrackGeometryWithPlayerItem:(id)item
{
  itemCopy = item;
  asset = [itemCopy asset];
  if ([asset statusOfValueForKey:@"tracks" error:0] == 2 && (objc_msgSend(asset, "tracks"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v8 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:asset];
    firstObject = [v8 firstObject];

    if ([firstObject statusOfValueForKey:@"preferredTransform" error:0] == 2)
    {
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      if (firstObject)
      {
        [firstObject preferredTransform];
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke;
      v19[3] = &unk_1E7746770;
      v19[4] = self;
      v20 = v23;
      v21 = v24;
      v22 = v25;
      [(PXVideoSession *)self _performChanges:v19];
    }

    if ([firstObject statusOfValueForKey:@"naturalSize" error:0] == 2)
    {
      [firstObject naturalSize];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke_2;
      v18[3] = &unk_1E7746798;
      v18[4] = self;
      v18[5] = v10;
      v18[6] = v11;
      [(PXVideoSession *)self _performChanges:v18];
    }

    if ([firstObject statusOfValueForKey:@"nominalFrameRate" error:0] == 2)
    {
      [firstObject nominalFrameRate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke_3;
      v16[3] = &unk_1E77467C0;
      v16[4] = self;
      v17 = v12;
      [(PXVideoSession *)self _performChanges:v16];
    }
  }

  else
  {
    [itemCopy presentationSize];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke_4;
    v15[3] = &unk_1E7746798;
    v15[4] = self;
    v15[5] = v13;
    v15[6] = v14;
    [(PXVideoSession *)self _performChanges:v15];
  }
}

uint64_t __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setPreferredTransform:v3];
}

uint64_t __64__PXVideoSession__videoQueue_updateTrackGeometryWithPlayerItem___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setNaturalSize:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setPreferredTransform:v5];
  return [*(a1 + 32) setNominalFrameRate:0.0];
}

- (void)_updateTrackGeometry
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  videoComposition = [playerItem videoComposition];
  v5 = videoComposition;
  if (videoComposition)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__PXVideoSession__updateTrackGeometry__block_invoke;
    v11[3] = &unk_1E77498F8;
    v11[4] = self;
    v12 = videoComposition;
    [(PXVideoSession *)self _performChanges:v11];
  }

  else if ([playerItem status] == 1)
  {
    objc_initWeak(&location, self);
    videoWorkQueue = self->_videoWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__PXVideoSession__updateTrackGeometry__block_invoke_2;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v9, &location);
    v8 = playerItem;
    dispatch_async(videoWorkQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __38__PXVideoSession__updateTrackGeometry__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setPreferredTransform:v5];
  [*(a1 + 40) renderSize];
  return [*(a1 + 32) setNaturalSize:?];
}

void __38__PXVideoSession__updateTrackGeometry__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _videoQueue_updateTrackGeometryWithPlayerItem:*(a1 + 32)];
}

- (void)_updateAudioStatus
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  if (playerItem)
  {
    videoPlayer = [(PXVideoSession *)self videoPlayer];
    if ([videoPlayer currentItemHasEnabledAudio])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PXVideoSession__updateAudioStatus__block_invoke;
  v6[3] = &unk_1E7749D78;
  v6[4] = self;
  v6[5] = v5;
  [(PXVideoSession *)self _performChanges:v6];
}

- (void)_setPlayabilityFromAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    isPlayable = [assetCopy isPlayable];
  }

  else
  {
    isPlayable = 1;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PXVideoSession__setPlayabilityFromAsset___block_invoke;
  v8[3] = &unk_1E7749D28;
  v10 = isPlayable;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(PXVideoSession *)self _performChanges:v8];
}

void __43__PXVideoSession__setPlayabilityFromAsset___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPlayable:*(a1 + 48)];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) setPlayState:5];
    v2 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Attempted to play unplayable video asset: %@", &v4, 0xCu);
    }
  }
}

- (void)_handlePlayabilityDidLoadForAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    playerItem = [(PXVideoSession *)self playerItem];
    asset = [playerItem asset];

    if (asset == assetCopy)
    {
      v12 = 0;
      v7 = [assetCopy statusOfValueForKey:@"playable" error:&v12];
      v8 = v12;
      if (v7 == 2)
      {
        [(PXVideoSession *)self _setPlayabilityFromAsset:assetCopy];
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __52__PXVideoSession__handlePlayabilityDidLoadForAsset___block_invoke;
        v9[3] = &unk_1E774A448;
        v9[4] = self;
        v10 = assetCopy;
        v11 = v8;
        [(PXVideoSession *)self _performChanges:v9];
      }
    }
  }
}

void __52__PXVideoSession__handlePlayabilityDidLoadForAsset___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPlayState:5];
  v2 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Failed to load playable status of video %@: %@", &v5, 0x16u);
  }
}

- (void)_updatePlayability
{
  v19 = *MEMORY[0x1E69E9840];
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  asset = [playerItem asset];

  v13 = 0;
  v5 = [asset statusOfValueForKey:@"playable" error:&v13];
  v6 = v13;
  if (v5 == 2)
  {
    [(PXVideoSession *)self _setPlayabilityFromAsset:asset];
  }

  else if (v5 == 3)
  {
    v7 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = asset;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to load playable status of video %@: %@", buf, 0x16u);
    }

    [(PXVideoSession *)self setPlayState:5];
  }

  else
  {
    objc_initWeak(buf, self);
    objc_initWeak(&location, asset);
    v14 = @"playable";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__PXVideoSession__updatePlayability__block_invoke;
    v9[3] = &unk_1E7749C10;
    objc_copyWeak(&v10, buf);
    objc_copyWeak(&v11, &location);
    [asset loadValuesAsynchronouslyForKeys:v8 completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __36__PXVideoSession__updatePlayability__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePlayabilityDidLoadForAsset:v2];
}

- (void)_handlePlayerTimeAdvancementTimer:(id)timer
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PXVideoSession__handlePlayerTimeAdvancementTimer___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXVideoSession *)self _performChanges:v3];
}

uint64_t __52__PXVideoSession__handlePlayerTimeAdvancementTimer___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  v2 = [*(a1 + 32) videoPlayer];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v4 = 0;
  v5 = *(a1 + 32) + 732;
  v13 = *v5;
  v6 = *(v5 + 12);
  v14 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *&v12.value;
  *(v5 + 16) = v12.epoch;
  *v5 = v8;
  if ((v12.flags & 0x1D) == 1 && (v6 & 0x1D) == 1)
  {
    time1 = v12;
    time2.value = v13;
    time2.timescale = v14;
    time2.flags = v6;
    time2.epoch = v7;
    v4 = CMTimeCompare(&time1, &time2) > 0;
  }

  return [*(a1 + 32) setPlayerTimeAdvancing:v4];
}

- (void)_avPlayerTimeDidChange:(id *)change
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PXVideoSession__avPlayerTimeDidChange___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v6 = *change;
  [(PXVideoSession *)self _performChanges:v5];
}

void __41__PXVideoSession__avPlayerTimeDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 1) != 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _avPlayerTimeDidChange:]_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:2125 description:{@"invalidating %lu after it already has been updated", 256}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x100uLL;
  [*(a1 + 32) signalChange:128];
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXVideoSession__avPlayerTimeDidChange___block_invoke_2;
  block[3] = &unk_1E7749770;
  block[4] = v4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  dispatch_async(v5, block);
}

__n128 __41__PXVideoSession__avPlayerTimeDidChange___block_invoke_2(uint64_t a1)
{
  v1 = (*(a1 + 32) + 596);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

- (void)_handleTrackGeometryDidLoad
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PXVideoSession__handleTrackGeometryDidLoad__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXVideoSession *)self _performChanges:v2];
}

void __45__PXVideoSession__handleTrackGeometryDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _handleTrackGeometryDidLoad]_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:2118 description:{@"invalidating %lu after it already has been updated", 16}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x10uLL;
}

- (id)pixelBufferOutputSizes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PXVideoSession_pixelBufferOutputSizes__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__PXVideoSession_pixelBufferOutputSizes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)pixelBufferOutputTokenCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXVideoSession_pixelBufferOutputTokenCount__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__PXVideoSession_pixelBufferOutputTokenCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAtEnd:(BOOL)end
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__PXVideoSession_setAtEnd___block_invoke;
  block[3] = &unk_1E77465B0;
  endCopy = end;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:512];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __27__PXVideoSession_setAtEnd___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 490))
  {
    *(v2 + 490) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isAtEnd
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__PXVideoSession_isAtEnd__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAtBeginning:(BOOL)beginning
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXVideoSession_setAtBeginning___block_invoke;
  block[3] = &unk_1E77465B0;
  beginningCopy = beginning;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:256];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __33__PXVideoSession_setAtBeginning___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 491))
  {
    *(v2 + 491) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isAtBeginning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__PXVideoSession_isAtBeginning__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDesiredPlayState:(int64_t)state
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXVideoSession_setDesiredPlayState___block_invoke;
  block[3] = &unk_1E7746720;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v17;
  block[7] = state;
  dispatch_sync(stateQueue, block);
  if (*(v18 + 24) == 1)
  {
    v6 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v14[3];
      v8 = @"Playing";
      if (v7 == 1)
      {
        v9 = @"Playing";
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"Paused";
      }

      if (state != 1)
      {
        v8 = 0;
      }

      *buf = 138412802;
      v22 = v10;
      v23 = 2112;
      if (!state)
      {
        v8 = @"Paused";
      }

      v24 = v8;
      v25 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "[Video Session] Desired play state changing from %@ to %@\n\t%@", buf, 0x20u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__PXVideoSession_setDesiredPlayState___block_invoke_350;
    v11[3] = &unk_1E7749D78;
    v11[4] = self;
    v11[5] = state;
    [(PXVideoSession *)self _performChanges:v11];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void *__38__PXVideoSession_setDesiredPlayState___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 248);
  v1 = result[7];
  if (v1 != *(*(result[5] + 8) + 24))
  {
    *(*(result[6] + 8) + 24) = 1;
    *(result[4] + 248) = v1;
  }

  return result;
}

void __38__PXVideoSession_setDesiredPlayState___block_invoke_350(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) signalChange:8];
  v4 = [*(a1 + 32) log];
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [*(a1 + 32) logContext];
      *buf = 134217984;
      v21 = v7;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PXVideoSessionChangeDesiredPlayState", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  v8 = v4;
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      v11 = [*(a1 + 32) logContext];
      v12 = *(a1 + 40);
      *buf = 134218240;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXVideoSessionChangeDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
    }
  }

  v13 = v8;
  v14 = os_signpost_id_make_with_pointer(v13, *(a1 + 32));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      v16 = [*(a1 + 32) logContext];
      v17 = *(a1 + 40);
      *buf = 134218240;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXVideoSessionChangeDesiredPlayState", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
    }
  }

  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0xC0) != 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setDesiredPlayState:]_block_invoke"];
    [v18 handleFailureInFunction:v19 file:@"PXVideoSession.m" lineNumber:2051 description:{@"invalidating %lu after it already has been updated", 192}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0xC0uLL;
}

- (int64_t)desiredPlayState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PXVideoSession_desiredPlayState__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlayState:(int64_t)state
{
  v47 = *MEMORY[0x1E69E9840];
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PXVideoSession_setPlayState___block_invoke;
  block[3] = &unk_1E7746720;
  block[4] = self;
  block[5] = &v37;
  block[6] = &v33;
  block[7] = state;
  dispatch_sync(stateQueue, block);
  if (*(v38 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x680) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setPlayState:]"];
      [currentHandler handleFailureInFunction:v31 file:@"PXVideoSession.m" lineNumber:2016 description:{@"invalidating %lu after it already has been updated", 1664}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x680uLL;
    [(PXVideoSession *)self signalChange:4];
    v6 = [(PXVideoSession *)self log];
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        logContext = [(PXVideoSession *)self logContext];
        *buf = 134217984;
        v42 = logContext;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXVideoSessionChangePlayState", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }
    }

    v10 = v6;
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        logContext2 = [(PXVideoSession *)self logContext];
        *buf = 134218240;
        v42 = logContext2;
        v43 = 2048;
        stateCopy2 = state;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, v12, "PXVideoSessionChangePlayState", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
      }
    }

    v14 = v10;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        logContext3 = [(PXVideoSession *)self logContext];
        *buf = 134218240;
        v42 = logContext3;
        v43 = 2048;
        stateCopy2 = state;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXVideoSessionChangePlayState", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
      }
    }

    v18 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v34[3];
      if (v19 > 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = off_1E7746940[v19];
      }

      if (state > 5)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_1E7746940[state];
      }

      *buf = 138412802;
      v42 = v20;
      v43 = 2112;
      stateCopy2 = v21;
      v45 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "[Video Session] Actual play state changing from %@ to %@\n\t%@", buf, 0x20u);
    }

    if (state == 5)
    {
      contentProvider = [(PXVideoSession *)self contentProvider];
      analyticsPayload = [contentProvider analyticsPayload];
      v24 = [analyticsPayload mutableCopy];

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6991E20]];

      error = [(PXVideoSession *)self error];
      [v24 setObject:error forKeyedSubscript:*MEMORY[0x1E6991E28]];

      v28 = MEMORY[0x1E6991F28];
      v29 = [v24 copy];
      [v28 sendEvent:@"com.apple.photos.CPAnalytics.videoSessionFailed" withPayload:v29];
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void *__31__PXVideoSession_setPlayState___block_invoke(void *result)
{
  if (result[7] != *(result[4] + 200))
  {
    *(*(result[5] + 8) + 24) = 1;
    *(*(result[6] + 8) + 24) = *(result[4] + 200);
    *(result[4] + 200) = result[7];
  }

  return result;
}

- (int64_t)playState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PXVideoSession_playState__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsReadyForSeeking:(BOOL)seeking
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXVideoSession_setIsReadyForSeeking___block_invoke;
  block[3] = &unk_1E77465B0;
  seekingCopy = seeking;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:0x2000];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __39__PXVideoSession_setIsReadyForSeeking___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 592))
  {
    *(v2 + 592) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
    if (*(result + 48) == 1)
    {
      return [*(*(result + 32) + 632) unlock];
    }
  }

  return result;
}

- (BOOL)isReadyForSeeking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PXVideoSession_isReadyForSeeking__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setBuffering:(BOOL)buffering
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PXVideoSession_setBuffering___block_invoke;
  block[3] = &unk_1E77465B0;
  bufferingCopy = buffering;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0xC0) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setBuffering:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:1966 description:{@"invalidating %lu after it already has been updated", 192}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0xC0uLL;
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __31__PXVideoSession_setBuffering___block_invoke(uint64_t result)
{
  if (*(result + 48) != *(*(result + 32) + 241))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 241) = *(result + 48);
  }

  return result;
}

- (BOOL)isBuffering
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PXVideoSession_isBuffering__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setStalled:(BOOL)stalled
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PXVideoSession_setStalled___block_invoke;
  block[3] = &unk_1E77465B0;
  stalledCopy = stalled;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:2];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __29__PXVideoSession_setStalled___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 409))
  {
    *(v2 + 409) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isStalled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PXVideoSession_isStalled__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsContentHighDynamicRange:(BOOL)range
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXVideoSession_setIsContentHighDynamicRange___block_invoke;
  block[3] = &unk_1E77465B0;
  rangeCopy = range;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:0x8000];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __47__PXVideoSession_setIsContentHighDynamicRange___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 688))
  {
    *(v2 + 688) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isContentHighDynamicRange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PXVideoSession_isContentHighDynamicRange__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlayable:(BOOL)playable
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PXVideoSession_setPlayable___block_invoke;
  block[3] = &unk_1E77465B0;
  playableCopy = playable;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setPlayable:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:1899 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x40uLL;
    [(PXVideoSession *)self signalChange:32];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __30__PXVideoSession_setPlayable___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 408))
  {
    *(v2 + 408) = v1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v2 = *(a1 + 32);
  }

  return [*(v2 + 624) unlock];
}

- (BOOL)isPlayable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__PXVideoSession_isPlayable__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSegmentOfOriginalVideo
{
  [(PXVideoSession *)self segmentTimeRangeOfOriginalVideo];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [(PXVideoSession *)self segmentTimeRangeOfOriginalVideo];
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  [(PXVideoSession *)self segmentTimeRangeOfOriginalVideo];
  if (v5)
  {
    return 0;
  }

  [(PXVideoSession *)self segmentTimeRangeOfOriginalVideo];
  return v4 >= 0;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)segmentTimeRangeOfOriginalVideo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = &unk_1A561E057;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXVideoSession_segmentTimeRangeOfOriginalVideo__block_invoke;
  v8[3] = &unk_1E7749A28;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(stateQueue, v8);
  v5 = v10;
  v6 = *(v10 + 3);
  *&retstr->var0.var0 = *(v10 + 2);
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

__n128 __49__PXVideoSession_segmentTimeRangeOfOriginalVideo__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 376);
  result = *(*(a1 + 32) + 392);
  *(v1 + 32) = *(*(a1 + 32) + 360);
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  return result;
}

- (void)setPlayerItem:(id)item segmentTimeRangeOfOriginalVideo:(id *)video timeRangeMapper:(id)mapper
{
  itemCopy = item;
  mapperCopy = mapper;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXVideoSession_setPlayerItem_segmentTimeRangeOfOriginalVideo_timeRangeMapper___block_invoke;
  block[3] = &unk_1E77466F0;
  v11 = itemCopy;
  v17 = v11;
  selfCopy = self;
  v20 = &v24;
  v12 = *&video->var0.var3;
  v21 = *&video->var0.var0;
  v22 = v12;
  v23 = *&video->var1.var1;
  v13 = mapperCopy;
  v19 = v13;
  dispatch_sync(stateQueue, block);
  if (*(v25 + 24) == 1)
  {
    [(PXVideoSession *)self _loadAssetTracksIfNeeded];
    [(PXVideoSession *)self _updateQueue_seekToPlaybackTimeRangeStartIfNeeded];
    [(PXVideoSession *)self signalChange:1];
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x1452) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setPlayerItem:segmentTimeRangeOfOriginalVideo:timeRangeMapper:]"];
      [currentHandler handleFailureInFunction:v15 file:@"PXVideoSession.m" lineNumber:1864 description:{@"invalidating %lu after it already has been updated", 5202}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x1452uLL;
  }

  _Block_object_dispose(&v24, 8);
}

void __80__PXVideoSession_setPlayerItem_segmentTimeRangeOfOriginalVideo_timeRangeMapper___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != *(*(a1 + 40) + 336))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    objc_storeStrong((*(a1 + 40) + 336), *(a1 + 32));
    v3 = (*(a1 + 40) + 360);
    v5 = *(a1 + 80);
    v4 = *(a1 + 96);
    *v3 = *(a1 + 64);
    v3[1] = v5;
    v3[2] = v4;
    *(*(a1 + 40) + 328) = 0;
    v6 = *(a1 + 48);
    v7 = (*(a1 + 40) + 352);

    objc_storeStrong(v7, v6);
  }
}

- (id)contentLoadingError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__PXVideoSession_contentLoadingError__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setContentLoadingError:(id)error
{
  errorCopy = error;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PXVideoSession_setContentLoadingError___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(stateQueue, v7);
}

- (PFSlowMotionTimeRangeMapper)timeRangeMapper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PXVideoSession_timeRangeMapper__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (AVPlayerItem)playerItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__PXVideoSession_playerItem__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAudioStatus:(int64_t)status
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXVideoSession_setAudioStatus___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = &v7;
  block[6] = status;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  if (*(v8 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:16];
  }

  _Block_object_dispose(&v7, 8);
}

void *__33__PXVideoSession_setAudioStatus___block_invoke(void *result)
{
  v1 = result[6];
  v2 = result[4];
  if (v1 != *(v2 + 328))
  {
    *(v2 + 328) = v1;
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (int64_t)audioStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PXVideoSession_audioStatus__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlayerTimeAdvancing:(BOOL)advancing
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXVideoSession_setPlayerTimeAdvancing___block_invoke;
  block[3] = &unk_1E77465B0;
  advancingCopy = advancing;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x80) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setPlayerTimeAdvancing:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:1791 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x80uLL;
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __41__PXVideoSession_setPlayerTimeAdvancing___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 320))
  {
    *(v2 + 320) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isPlayerTimeAdvancing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PXVideoSession_isPlayerTimeAdvancing__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowsExternalPlayback:(BOOL)playback
{
  playbackCopy = playback;
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  [videoPlayer setAllowsExternalPlayback:playbackCopy];
}

- (void)setSeekToBeginningAtEnd:(BOOL)end
{
  endCopy = end;
  stateQueue = self->_stateQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PXVideoSession_setSeekToBeginningAtEnd___block_invoke;
  v9[3] = &unk_1E7749428;
  v9[4] = self;
  endCopy2 = end;
  dispatch_sync(stateQueue, v9);
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  v7 = videoPlayer;
  if (endCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [videoPlayer setActionAtItemEnd:v8];
}

- (void)seekToPlaybackStartTime
{
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXVideoSession_seekToPlaybackStartTime__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (BOOL)seekToBeginningAtEnd
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PXVideoSession_seekToBeginningAtEnd__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playbackStartTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXVideoSession_playbackStartTime__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(stateQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __35__PXVideoSession_playbackStartTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 460);
  v3 = *(*(a1 + 32) + 476);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)setPlaybackStartTime:(id *)time
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PXVideoSession_setPlaybackStartTime___block_invoke;
  v4[3] = &unk_1E7749770;
  v4[4] = self;
  v5 = *time;
  dispatch_sync(stateQueue, v4);
}

__n128 __39__PXVideoSession_setPlaybackStartTime___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 460);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

- (void)setPlaybackTimeRange:(id *)range
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXVideoSession_setPlaybackTimeRange___block_invoke;
  block[3] = &unk_1E77466A0;
  v6 = *&range->var0.var3;
  v16 = *&range->var0.var0;
  v17 = v6;
  v18 = *&range->var1.var1;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(stateQueue, block);
  if (*(v20 + 24) == 1)
  {
    videoPlayer = [(PXVideoSession *)self videoPlayer];
    playbackTimeRangeEndBoundaryObserver = [(PXVideoSession *)self playbackTimeRangeEndBoundaryObserver];
    [videoPlayer removeTimeObserver:playbackTimeRangeEndBoundaryObserver];

    if ((range->var0.var2 & 1) != 0 && (range->var1.var2 & 1) != 0 && !range->var1.var3 && (range->var1.var0 & 0x8000000000000000) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __39__PXVideoSession_setPlaybackTimeRange___block_invoke_2;
      v10[3] = &unk_1E77466C8;
      v10[4] = self;
      v9 = *&range->var0.var3;
      v12 = *&range->var0.var0;
      v13 = v9;
      v14 = *&range->var1.var1;
      v11 = videoPlayer;
      [(PXVideoSession *)self _performChanges:v10];
    }
  }

  _Block_object_dispose(&v19, 8);
}

__n128 __39__PXVideoSession_setPlaybackTimeRange___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 32) + 412);
  v3 = *(a1 + 64);
  *&range1.start.value = *(a1 + 48);
  *&range1.start.epoch = v3;
  *&range1.duration.timescale = *(a1 + 80);
  v4 = *v2;
  v5 = v2[2];
  *&v9.start.epoch = v2[1];
  *&v9.duration.timescale = v5;
  *&v9.start.value = v4;
  if (!CMTimeRangeEqual(&range1, &v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = *(a1 + 32) + 412;
    result = *(a1 + 48);
    v8 = *(a1 + 80);
    *(v7 + 16) = *(a1 + 64);
    *(v7 + 32) = v8;
    *v7 = result;
  }

  return result;
}

void __39__PXVideoSession_setPlaybackTimeRange___block_invoke_2(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) _updateQueue_seekToPlaybackTimeRangeStartIfNeeded];
  v4 = MEMORY[0x1E696B098];
  v5 = *(a1 + 64);
  *&range.start.value = *(a1 + 48);
  *&range.start.epoch = v5;
  *&range.duration.timescale = *(a1 + 80);
  CMTimeRangeGetEnd(&v14, &range);
  v6 = [v4 valueWithCMTime:&v14];
  objc_initWeak(&range, *(a1 + 32));
  v7 = *(a1 + 40);
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = *(*(a1 + 32) + 144);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__PXVideoSession_setPlaybackTimeRange___block_invoke_3;
  v11[3] = &unk_1E774C318;
  objc_copyWeak(&v12, &range);
  v10 = [v7 addBoundaryTimeObserverForTimes:v8 queue:v9 usingBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&range);
}

void __39__PXVideoSession_setPlaybackTimeRange___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidReachPlaybackTimeRangeEnd];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = &unk_1A561E057;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PXVideoSession_playbackTimeRange__block_invoke;
  v8[3] = &unk_1E7749A28;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(stateQueue, v8);
  v5 = v10;
  v6 = *(v10 + 3);
  *&retstr->var0.var0 = *(v10 + 2);
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

__n128 __35__PXVideoSession_playbackTimeRange__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 428);
  result = *(*(a1 + 32) + 444);
  *(v1 + 32) = *(*(a1 + 32) + 412);
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  return result;
}

- (void)setLoopingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PXVideoSession_setLoopingEnabled___block_invoke;
  v7[3] = &unk_1E7749428;
  v7[4] = self;
  enabledCopy2 = enabled;
  dispatch_sync(stateQueue, v7);
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  [videoPlayer setLoopingEnabled:enabledCopy];
}

- (BOOL)isLoopingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PXVideoSession_isLoopingEnabled__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)preventsSleepDuringVideoPlayback
{
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  preventsSleepDuringVideoPlayback = [videoPlayer preventsSleepDuringVideoPlayback];

  return preventsSleepDuringVideoPlayback;
}

- (void)setPreventsSleepDuringVideoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  [videoPlayer setPreventsSleepDuringVideoPlayback:playbackCopy];
}

- (float)volume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__PXVideoSession_volume__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __24__PXVideoSession_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 484);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setVolume:(float)volume withFade:(BOOL)fade
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PXVideoSession_setVolume_withFade___block_invoke;
  block[3] = &unk_1E7746678;
  volumeCopy = volume;
  fadeCopy = fade;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__PXVideoSession_setVolume_withFade___block_invoke_345;
    v6[3] = &unk_1E774C5F8;
    v6[4] = self;
    [(PXVideoSession *)self _performChanges:v6];
  }

  _Block_object_dispose(&v10, 8);
}

float __37__PXVideoSession_setVolume_withFade___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  result = *(v2 + 484);
  if (result != *(a1 + 48) || *(v2 + 488) != *(a1 + 52))
  {
    v4 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 484);
      v6 = *(a1 + 48);
      v7 = *(a1 + 52);
      v8 = 134218496;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Beginning volume change from %f to %f. Will fade: %d", &v8, 0x1Cu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    result = *(a1 + 48);
    *(*(a1 + 32) + 484) = result;
    *(*(a1 + 32) + 488) = *(a1 + 52);
  }

  return result;
}

void __37__PXVideoSession_setVolume_withFade___block_invoke_345(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setVolume:withFade:]_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:1658 description:{@"invalidating %lu after it already has been updated", 0x4000}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x4000uLL;
}

- (void)setUpdatingAudioSession:(BOOL)session
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXVideoSession_setUpdatingAudioSession___block_invoke;
  block[3] = &unk_1E77465B0;
  sessionCopy = session;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(stateQueue, block);
  if (*(v10 + 24) == 1 && !session)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PXVideoSession_setUpdatingAudioSession___block_invoke_2;
    v6[3] = &unk_1E774C5F8;
    v6[4] = self;
    [(PXVideoSession *)self _performChanges:v6];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __42__PXVideoSession_setUpdatingAudioSession___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 240) != v2)
  {
    *(v1 + 240) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void __42__PXVideoSession_setUpdatingAudioSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setUpdatingAudioSession:]_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:1641 description:{@"invalidating %lu after it already has been updated", 64}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x40uLL;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PXVideoSession_currentTime__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(stateQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __29__PXVideoSession_currentTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 596);
  v3 = *(*(a1 + 32) + 612);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)setCurrentPlayerItem:(id)item
{
  itemCopy = item;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  stateQueue = self->_stateQueue;
  block = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __39__PXVideoSession_setCurrentPlayerItem___block_invoke;
  v12 = &unk_1E7746448;
  v6 = itemCopy;
  v13 = v6;
  selfCopy = self;
  v15 = &v16;
  dispatch_sync(stateQueue, &block);
  if (*(v17 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setCurrentPlayerItem:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXVideoSession.m" lineNumber:1619 description:{@"invalidating %lu after it already has been updated", 1024, block, v10, v11, v12}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x400uLL;
  }

  _Block_object_dispose(&v16, 8);
}

void __39__PXVideoSession_setCurrentPlayerItem___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 312);
  if (*(a1 + 32) != v1)
  {
    v3 = v1;
    objc_storeStrong((*(a1 + 40) + 312), *(a1 + 32));
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = *(*(a1 + 40) + 256);
    if (v4)
    {
      v5 = v4;
      v6 = *(*(a1 + 40) + 128);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __39__PXVideoSession_setCurrentPlayerItem___block_invoke_2;
      v8[3] = &unk_1E774C620;
      v9 = v3;
      v10 = v5;
      v7 = v5;
      dispatch_async(v6, v8);
    }
  }
}

- (id)currentPlayerItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PXVideoSession_currentPlayerItem__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setVideoDuration:(id *)duration
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXVideoSession_setVideoDuration___block_invoke;
  block[3] = &unk_1E7746650;
  v7 = *duration;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(stateQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:64];
  }

  _Block_object_dispose(&v8, 8);
}

__n128 __35__PXVideoSession_setVideoDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 284;
  time1 = *(a1 + 48);
  v3 = *v2;
  v6.epoch = *(v2 + 16);
  *&v6.value = v3;
  if (CMTimeCompare(&time1, &v6))
  {
    v5 = (*(a1 + 32) + 284);
    result = *(a1 + 48);
    v5[1].n128_u64[0] = *(a1 + 64);
    *v5 = result;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)videoDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PXVideoSession_videoDuration__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(stateQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __31__PXVideoSession_videoDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 284);
  v3 = *(*(a1 + 32) + 300);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)setIsVideoOutputReady:(BOOL)ready
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXVideoSession_setIsVideoOutputReady___block_invoke;
  v6[3] = &unk_1E7749428;
  readyCopy = ready;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
}

uint64_t __40__PXVideoSession_setIsVideoOutputReady___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 280))
  {
    *(v2 + 280) = v1;
    if (*(result + 40) == 1)
    {
      return [*(*(result + 32) + 640) unlock];
    }
  }

  return result;
}

- (BOOL)isVideoOutputReady
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PXVideoSession_isVideoOutputReady__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVideoOutput:(id)output size:(CGSize)size
{
  height = size.height;
  width = size.width;
  outputCopy = output;
  if (!outputCopy)
  {
    [(PXVideoSession *)self _relinquishAny4k60StreamAllowance];
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__PXVideoSession_setVideoOutput_size___block_invoke;
  v10[3] = &unk_1E7749A50;
  v10[4] = self;
  v11 = outputCopy;
  v12 = width;
  v13 = height;
  v9 = outputCopy;
  dispatch_sync(stateQueue, v10);
}

void __38__PXVideoSession_setVideoOutput_size___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 256);
  if (v1 != *(a1 + 40))
  {
    v3 = v1;
    objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
    *(*(a1 + 32) + 264) = *(a1 + 48);
    v4 = [*(a1 + 32) log];
    v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        v7 = [*(a1 + 32) logContext];
        v8 = NSStringFromCGSize(*(a1 + 48));
        *buf = 134218242;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_EVENT, v6, "PXVideoSessionCreatedVideoOutput", "Context=%{signpost.telemetry:string2}lu outputSize=%@", buf, 0x16u);
      }
    }

    if (v3)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__PXVideoSession_setVideoOutput_size___block_invoke_342;
      v9[3] = &unk_1E774C620;
      v9[4] = *(a1 + 32);
      v10 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v9);
    }
  }
}

void __38__PXVideoSession_setVideoOutput_size___block_invoke_342(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXVideoSession_setVideoOutput_size___block_invoke_2;
  block[3] = &unk_1E774C648;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (CGSize)videoOutputSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1A561E057;
  v12 = *MEMORY[0x1E695F060];
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PXVideoSession_videoOutputSize__block_invoke;
  v7[3] = &unk_1E7749A28;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __33__PXVideoSession_videoOutputSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 264);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (AVPlayerItemVideoOutput)videoOutput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PXVideoSession_videoOutput__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_updateDuration
{
  v9 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  currentItemStatus = [videoPlayer currentItemStatus];

  if (currentItemStatus == 1)
  {
    videoPlayer2 = [(PXVideoSession *)self videoPlayer];
    v6 = videoPlayer2;
    if (videoPlayer2)
    {
      [videoPlayer2 currentItemDuration];
    }

    else
    {
      v7 = 0uLL;
      v8 = 0;
    }

    v9 = v7;
    v10 = v8;
  }

  v7 = v9;
  v8 = v10;
  [(PXVideoSession *)self setVideoDuration:&v7];
}

- (void)incrementPixelBufferFrameDropsCount
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXVideoSession_incrementPixelBufferFrameDropsCount__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (int64_t)pixelBufferFrameDropsCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PXVideoSession_pixelBufferFrameDropsCount__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCurrentPixelBuffer:(__CVBuffer *)buffer
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXVideoSession_setCurrentPixelBuffer___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = &v7;
  block[6] = buffer;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  if (*(v8 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:1024];
  }

  _Block_object_dispose(&v7, 8);
}

void __40__PXVideoSession_setCurrentPixelBuffer___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 568);
  if (v2 != v3)
  {
    CVPixelBufferRelease(v3);
    *(*(a1 + 32) + 568) = CVPixelBufferRetain(*(a1 + 48));
    v4 = *(a1 + 32);
    if ((*(v4 + 576) & 1) == 0)
    {
      *(v4 + 576) = 1;
      v5 = [*(a1 + 32) log];
      v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          v8 = [*(a1 + 32) logContext];
          v9 = 134217984;
          v10 = v8;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_EVENT, v7, "PXVideoSessionGotFirstPixelBuffer", "Context=%{signpost.telemetry:string2}lu ", &v9, 0xCu);
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (__CVBuffer)currentPixelBuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PXVideoSession_currentPixelBuffer__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

__CVBuffer *__36__PXVideoSession_currentPixelBuffer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 568);
  if (result)
  {
    v3 = CVPixelBufferRetain(result);
    result = CFAutorelease(v3);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_mainQueue_setDisplayLink:(id)link
{
  linkCopy = link;
  v5 = self->_mainQueue_displayLink;
  if (v5 != linkCopy)
  {
    if (v5)
    {
      [(PXDisplayLink *)v5 invalidate];
    }

    objc_storeStrong(&self->_mainQueue_displayLink, link);
  }
}

- (void)_updateDisplayLinkState
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  pixelBufferOutputTokenCount = [(PXVideoSession *)self pixelBufferOutputTokenCount];
  shouldDisableAutomaticPixelBufferUpdates = [(PXVideoSession *)self shouldDisableAutomaticPixelBufferUpdates];
  if (pixelBufferOutputTokenCount)
  {
    v5 = shouldDisableAutomaticPixelBufferUpdates;
  }

  else
  {
    v5 = 1;
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v7 = v5;
  px_dispatch_on_main_queue();
}

void __41__PXVideoSession__updateDisplayLinkState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_setDisplayLinkPaused:*(a1 + 40)];
}

- (void)_videoWorkQueue_updateCurrentPixelBufferWithVideoOutput:(id)output outputTime:(double)time
{
  outputCopy = output;
  if (![(PXVideoSession *)self shouldDisableAutomaticPixelBufferUpdates])
  {
    if (outputCopy)
    {
      kdebug_trace();
      v15 = 0uLL;
      v16 = 0;
      [outputCopy itemTimeForHostTime:time];
      v13 = v15;
      v14 = v16;
      if (![outputCopy hasNewPixelBufferForItemTime:&v13])
      {
        goto LABEL_11;
      }

      v13 = v15;
      v14 = v16;
      v7 = [outputCopy copyPixelBufferForItemTime:&v13 itemTimeForDisplay:0];
      if (v7)
      {
        v8 = [(PXPhotosensitivityProcessing *)self->_photoSensitivityProcessing copyAndProcessPixelBuffer:v7 timestamp:time];
        v9 = v7;
        if (v8)
        {
          v10 = v8;
          CVPixelBufferRelease(v7);
          v9 = v10;
        }

        CVPixelBufferGetWidth(v9);
        CVPixelBufferGetHeight(v9);
      }

      else
      {
        v9 = 0;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __85__PXVideoSession__videoWorkQueue_updateCurrentPixelBufferWithVideoOutput_outputTime___block_invoke;
      v12[3] = &unk_1E7749D78;
      v12[4] = self;
      v12[5] = v9;
      [(PXVideoSession *)self _performChanges:v12];
      if (!v7)
      {
LABEL_11:
        if ([(PXVideoSession *)self desiredPlayState]== 1)
        {
          [(PXVideoSession *)self incrementPixelBufferFrameDropsCount];
        }
      }

      kdebug_trace();
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __85__PXVideoSession__videoWorkQueue_updateCurrentPixelBufferWithVideoOutput_outputTime___block_invoke_2;
      v11[3] = &unk_1E774C5F8;
      v11[4] = self;
      [(PXVideoSession *)self _performChanges:v11];
    }
  }
}

void __85__PXVideoSession__videoWorkQueue_updateCurrentPixelBufferWithVideoOutput_outputTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPixelBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CVPixelBufferRelease(v2);
}

- (void)_mainQueue_updateCurrentPixelBufferWithVideoOutput:(id)output
{
  outputCopy = output;
  [(PXDisplayLink *)self->_mainQueue_displayLink targetTimestamp];
  v6 = v5;
  objc_initWeak(&location, self);
  videoWorkQueue = self->_videoWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PXVideoSession__mainQueue_updateCurrentPixelBufferWithVideoOutput___block_invoke;
  v9[3] = &unk_1E7746600;
  objc_copyWeak(v11, &location);
  v10 = outputCopy;
  v11[1] = v6;
  v8 = outputCopy;
  dispatch_async(videoWorkQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __69__PXVideoSession__mainQueue_updateCurrentPixelBufferWithVideoOutput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _videoWorkQueue_updateCurrentPixelBufferWithVideoOutput:*(a1 + 32) outputTime:*(a1 + 48)];
}

- (void)_updateCurrentPixelBuffer
{
  v17 = *MEMORY[0x1E69E9840];
  [(PXVideoSession *)self _assertOnUpdateQueue];
  if (![(PXVideoSession *)self shouldDisableAutomaticPixelBufferUpdates])
  {
    if (self->_updateQueue_pendingPlayerItemSeekCount < 1)
    {
      videoOutput = [(PXVideoSession *)self videoOutput];
      objc_initWeak(buf, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__PXVideoSession__updateCurrentPixelBuffer__block_invoke;
      v10[3] = &unk_1E774B248;
      objc_copyWeak(&v12, buf);
      v11 = videoOutput;
      v9 = videoOutput;
      dispatch_async(MEMORY[0x1E69E96A0], v10);

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else
    {
      v3 = [(PXVideoSession *)self log];
      v4 = os_signpost_id_make_with_pointer(v3, self);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          logContext = [(PXVideoSession *)self logContext];
          updateQueue_pendingPlayerItemSeekCount = self->_updateQueue_pendingPlayerItemSeekCount;
          *buf = 134218240;
          v14 = logContext;
          v15 = 2048;
          v16 = updateQueue_pendingPlayerItemSeekCount;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_EVENT, v5, "PXVideoSessionSkippedUpdatingPixelBuffer", "Context=%{signpost.telemetry:string2}lu pendingPlayerItemSeekCount=%ld", buf, 0x16u);
        }
      }
    }
  }
}

void __43__PXVideoSession__updateCurrentPixelBuffer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _mainQueue_updateCurrentPixelBufferWithVideoOutput:*(a1 + 32)];
}

- (void)_addOutput:(id)output toPlayerItem:(id)item
{
  outputCopy = output;
  itemCopy = item;
  videoOutput = [(PXVideoSession *)self videoOutput];
  if (videoOutput == outputCopy)
  {
    playerItem = [(PXVideoSession *)self playerItem];

    if (playerItem == itemCopy)
    {
      [itemCopy addOutput:outputCopy];
      [outputCopy requestNotificationOfMediaDataChangeWithAdvanceInterval:0.1];
    }
  }

  else
  {
  }
}

- (void)_updateVideoOutput
{
  v43[10] = *MEMORY[0x1E69E9840];
  [(PXVideoSession *)self _assertOnUpdateQueue];
  playerItem = [(PXVideoSession *)self playerItem];
  if (playerItem)
  {
    pixelBufferOutputTokenCount = [(PXVideoSession *)self pixelBufferOutputTokenCount];
    videoOutput = [(PXVideoSession *)self videoOutput];
    if (pixelBufferOutputTokenCount)
    {
      pixelBufferOutputSizes = [(PXVideoSession *)self pixelBufferOutputSizes];
      [(PXVideoSession *)self naturalSize];
      v8 = v7;
      v10 = v9;
      [(PXVideoSession *)self nominalFrameRate];
      v12 = v11;
      firstObject = [pixelBufferOutputSizes firstObject];
      [firstObject CGSizeValue];
      v15 = v14;
      v17 = v16;

      if ([pixelBufferOutputSizes count])
      {
        [pixelBufferOutputSizes objectAtIndexedSubscript:0];
        [objc_claimAutoreleasedReturnValue() CGSizeValue];
        PXSizeMax();
      }

      v18 = *MEMORY[0x1E695F060];
      v19 = *(MEMORY[0x1E695F060] + 8);
      v20 = v17 == v19 && v15 == *MEMORY[0x1E695F060];
      if (videoOutput)
      {
        [(PXVideoSession *)self videoOutputSize];
        PXSizeApproximatelyEqualOrBiggerThanSize();
      }

      v21 = MEMORY[0x1A590D220](v15, v17, 2000.0, 2000.0);
      if (v20)
      {
        if ((v21 & (v12 == 0.0)) == 0)
        {
          v22 = *MEMORY[0x1E69660D8];
          v42[0] = *MEMORY[0x1E6966100];
          v42[1] = v22;
          v43[0] = MEMORY[0x1E695E118];
          v43[1] = MEMORY[0x1E695E0F8];
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
          isExpectingVideoView = [(PXVideoSession *)self isExpectingVideoView];
          v30 = MEMORY[0x1E6966130];
          if (isExpectingVideoView)
          {
            if (_deviceSupportsIOSurfaceCompression_onceToken != -1)
            {
              dispatch_once(&_deviceSupportsIOSurfaceCompression_onceToken, &__block_literal_global_976);
            }

            if (_deviceSupportsIOSurfaceCompression__supportsIOSurfaceCompression == 1)
            {
              v31 = [v23 mutableCopy];
              [v31 setObject:&unk_1F19118D8 forKeyedSubscript:*v30];
              v32 = [v31 copy];

              v23 = v32;
            }
          }

          v33 = [v23 objectForKeyedSubscript:*v30];

          if (!v33)
          {
            [v23 mutableCopy];
            PXGSupportedPixelBufferFormats();
          }

          v34 = [objc_alloc(MEMORY[0x1E69880D8]) initWithOutputSettings:v23];
          [v34 setDelegate:self queue:0];
          [(PXVideoSession *)self setVideoOutput:v34 size:v15, v17];
          objc_initWeak(&location, self);
          videoWorkQueue = self->_videoWorkQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __36__PXVideoSession__updateVideoOutput__block_invoke;
          block[3] = &unk_1E774B708;
          objc_copyWeak(&v40, &location);
          v38 = v34;
          v39 = playerItem;
          v36 = v34;
          dispatch_async(videoWorkQueue, block);

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v24 = v8 == v18 && v10 == v19;
        if (!v24 && (v21 & (v12 == 0.0)) == 0)
        {
          v25 = v12 <= 50.0;
          v26 = v15;
          v27 = v17;
          if (!v25)
          {
            v26 = v15;
            v27 = v17;
            if ((v21 & MEMORY[0x1A590D220](v8, v10, 2000.0, 2000.0)) == 1)
            {
              _request4k60StreamAllowance = [(PXVideoSession *)self _request4k60StreamAllowance];
              if (_request4k60StreamAllowance)
              {
                v27 = v17;
              }

              else
              {
                v27 = 1080.0;
              }

              if (_request4k60StreamAllowance)
              {
                v26 = v15;
              }

              else
              {
                v26 = 1920.0;
              }
            }
          }

          if (MEMORY[0x1A590D220](v8, v10, v26, v27))
          {
            PXSizeGetAspectRatio();
          }

          PXSizeRoundToEven();
        }
      }

      px_dispatch_on_main_queue();
    }
  }

  else
  {
    videoOutput = [(PXVideoSession *)self videoOutput];
  }

  if ([(PXVideoSession *)self playState]!= 3)
  {
    [(PXVideoSession *)self _removeAllVideoOutputs];
    [(PXVideoSession *)self setVideoOutput:0 size:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(PXVideoSession *)self setIsVideoOutputReady:0];
    px_dispatch_on_main_queue();
  }
}

void __36__PXVideoSession__updateVideoOutput__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addOutput:*(a1 + 32) toPlayerItem:*(a1 + 40)];
}

void __36__PXVideoSession__updateVideoOutput__block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 784))
  {
    v3 = [[off_1E7721528 alloc] initWithWeakTarget:*(a1 + 32) selector:sel__handleDisplayLink_];
    [v3 setPaused:1];
    [*(a1 + 32) _mainQueue_setDisplayLink:v3];
  }
}

- (void)_handleDisplayLink:(id)link
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__PXVideoSession__handleDisplayLink___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXVideoSession *)self _performChanges:v3];
}

void __37__PXVideoSession__handleDisplayLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _handleDisplayLink:]_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:1214 description:{@"invalidating %lu after it already has been updated", 2048}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x800uLL;
}

- (id)_newVideoView
{
  v3 = objc_alloc_init(PXVideoView);
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  if (videoPlayer)
  {
    [(PXVideoView *)v3 setPlayer:videoPlayer];
  }

  else
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __31__PXVideoSession__newVideoView__block_invoke;
    v9 = &unk_1E774C620;
    v10 = v3;
    selfCopy = self;
    [(PXVideoSession *)self _performBlockOnUpdateQueue:&v6];
  }

  [(PXVideoView *)v3 setVideoGravity:*MEMORY[0x1E69874F0], v6, v7, v8, v9];
  objc_setAssociatedObject(v3, VideoViewSessionKey, self, 0);

  return v3;
}

void __31__PXVideoSession__newVideoView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) videoPlayer];
  [*(a1 + 32) setPlayer:v2];
}

- (void)setPlaybackTimeRangeEndBoundaryObserver:(id)observer
{
  observerCopy = observer;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PXVideoSession_setPlaybackTimeRangeEndBoundaryObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(stateQueue, v7);
}

void __58__PXVideoSession_setPlaybackTimeRangeEndBoundaryObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 != *(v2 + 192))
  {
    objc_storeStrong((v2 + 192), v1);
  }
}

- (id)playbackTimeRangeEndBoundaryObserver
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXVideoSession_playbackTimeRangeEndBoundaryObserver__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_didFinishInitializingAudioSession
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PXVideoSession__didFinishInitializingAudioSession__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXVideoSession *)self _performChanges:v3];
}

void __52__PXVideoSession__didFinishInitializingAudioSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 728) = 1;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _didFinishInitializingAudioSession]_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:1172 description:{@"invalidating %lu after it already has been updated", 4096}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x1000uLL;
}

- (void)_audioSessionQueue_initializeAudioSession
{
  v22 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  auxiliarySession = [MEMORY[0x1E69C1B18] auxiliarySession];
  audioSessionCategory = [(PXVideoSession *)self audioSessionCategory];
  audioSessionMode = [(PXVideoSession *)self audioSessionMode];
  v17 = 0;
  v8 = [auxiliarySession setCategory:audioSessionCategory mode:audioSessionMode routeSharingPolicy:-[PXVideoSession audioSessionRouteSharingPolicy](self options:"audioSessionRouteSharingPolicy") error:{-[PXVideoSession audioSessionCategoryOptions](self, "audioSessionCategoryOptions"), &v17}];
  v9 = v17;

  if ((v8 & 1) == 0)
  {
    v10 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Unable to configure audio session for video playback. Error: %@", buf, 0xCu);
    }
  }

  [(PXVideoSession *)self setAudioSession:auxiliarySession];
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  [videoPlayer setWrappedAudioSession:auxiliarySession];

  v12 = CFAbsoluteTimeGetCurrent();
  v13 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = v14;
    v20 = 2048;
    v21 = v12 - Current;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Configured AVAudioSession in %@ in %f seconds.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  [auxiliarySession registerVolumeObserver:self];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PXVideoSession__audioSessionQueue_initializeAudioSession__block_invoke;
  v15[3] = &unk_1E774C318;
  objc_copyWeak(&v16, buf);
  [(PXVideoSession *)self _performBlockOnUpdateQueue:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __59__PXVideoSession__audioSessionQueue_initializeAudioSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishInitializingAudioSession];
}

- (void)_updateFromCurrentPresentationState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXVideoSession__updateFromCurrentPresentationState__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  if (v7[5])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__PXVideoSession__updateFromCurrentPresentationState__block_invoke_2;
    v4[3] = &unk_1E7746628;
    v4[4] = self;
    v4[5] = &v6;
    [(PXVideoSession *)self _performChanges:v4];
  }

  _Block_object_dispose(&v6, 8);
}

void __53__PXVideoSession__updateFromCurrentPresentationState__block_invoke(uint64_t a1)
{
  v2 = 1;
  do
  {
    v3 = *(*(a1 + 32) + 160);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = [v5 lastObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = v2 == 0;
    }

    --v2;
  }

  while (!v9);
}

void __53__PXVideoSession__updateFromCurrentPresentationState__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setLoopingEnabled:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isLoopingEnabled")}];
  v2 = *(a1 + 32);
  [*(*(*(a1 + 40) + 8) + 40) volume];
  v4 = v3;
  v5 = [*(*(*(a1 + 40) + 8) + 40) shouldFadeVolumeChange];
  LODWORD(v6) = v4;
  [v2 setVolume:v5 withFade:v6];
  [*(a1 + 32) setPreventsSleepDuringVideoPlayback:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "preventsSleepDuringVideoPlayback")}];
  [*(a1 + 32) setSeekToBeginningAtEnd:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "seekToBeginningAtEnd")}];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    [v7 playbackTimeRange];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v8 = *(a1 + 32);
  v16 = v19;
  v17 = v20;
  v18 = v21;
  [v8 setPlaybackTimeRange:&v16];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    [v9 playbackStartTime];
  }

  else
  {
    v14 = 0uLL;
    v15 = 0;
  }

  v10 = *(a1 + 32);
  v16 = v14;
  *&v17 = v15;
  [v10 setPlaybackStartTime:&v16];
  [*(a1 + 32) setDesiredPlayState:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "desiredPlayState")}];
  [*(a1 + 32) setAllowsExternalPlayback:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "allowsExternalPlayback")}];
  [*(a1 + 32) setShouldDisableAutomaticPixelBufferUpdates:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "shouldDisableAutomaticPixelBufferUpdates")}];
  [*(*(*(a1 + 40) + 8) + 40) desiredPlaybackRate];
  [*(a1 + 32) setDesiredPlaybackRate:?];
  v11 = *(a1 + 32);
  v12 = [*(*(*(a1 + 40) + 8) + 40) audioSessionCategory];
  v13 = [*(*(*(a1 + 40) + 8) + 40) audioSessionMode];
  [v11 setAudioSessionCategory:v12 mode:v13 routeSharingPolicy:objc_msgSend(*(*(*(a1 + 40) + 8) + 40) options:{"audioSessionRouteSharingPolicy"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "audioSessionCategoryOptions")}];
}

- (void)_handleContentLoadingResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXVideoSession__handleContentLoadingResult___block_invoke;
  v6[3] = &unk_1E77498F8;
  v7 = resultCopy;
  selfCopy = self;
  v5 = resultCopy;
  [(PXVideoSession *)self _performChanges:v6];
}

void __46__PXVideoSession__handleContentLoadingResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) playerItem];

  if (v4)
  {
    [*(*(a1 + 40) + 768) reportAVAssetCreated];
    v5 = *(*(a1 + 40) + 768);
    v6 = [*(a1 + 32) playerItem];
    [v5 addEndpointWithPlayerItem:v6];
  }

  v7 = [*(a1 + 32) error];
  [*(a1 + 40) setContentLoadingError:v7];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) playerItem];
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 timeRange];
    v10 = *(a1 + 32);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v11 = [v10 timeRangeMapper];
  [v8 setPlayerItem:v9 segmentTimeRangeOfOriginalVideo:v14 timeRangeMapper:v11];

  if (*(*(a1 + 40) + 712) == 1 && (*(*(a1 + 40) + 704) & 0x40) != 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession _handleContentLoadingResult:]_block_invoke"];
    [v12 handleFailureInFunction:v13 file:@"PXVideoSession.m" lineNumber:1112 description:{@"invalidating %lu after it already has been updated", 64}];

    abort();
  }

  *(*(a1 + 40) + 696) |= 0x40uLL;
}

- (void)_rebuildAVObjects
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Rebuilding AV Objects for %@", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PXVideoSession__rebuildAVObjects__block_invoke;
  v4[3] = &unk_1E774C5F8;
  v4[4] = self;
  [(PXVideoSession *)self _performChanges:v4];
}

void __35__PXVideoSession__rebuildAVObjects__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E6960C98] + 16);
  v5[0] = *MEMORY[0x1E6960C98];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E6960C98] + 32);
  [v2 setPlayerItem:0 segmentTimeRangeOfOriginalVideo:v5 timeRangeMapper:0];
  v4 = objc_alloc_init(MEMORY[0x1E69C1B20]);
  [*(a1 + 32) setVideoPlayer:v4];
}

- (void)resourceReclamationEventDidOccur:(id)occur
{
  v4 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Received AV resource reclamation event.", v5, 2u);
  }

  [(PXVideoSession *)self _rebuildAVObjects];
}

- (void)wrappedAudioSession:(id)session didChangeVolumeFrom:(float)from to:(float)to
{
  delegate = [(PXVideoSession *)self delegate];
  *&v8 = from;
  *&v9 = to;
  [delegate videoSessionAudioSessionOutputVolumeDidChange:self fromVolume:v8 toVolume:v9];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (VideoPlayerObservationContext == context)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __47__PXVideoSession_observable_didChange_context___block_invoke;
    v23 = &unk_1E7749D78;
    selfCopy = self;
    changeCopy = change;
    v10 = &v20;
LABEL_6:
    [(PXVideoSession *)self _performChanges:v10, v14, v15, v16, v17, selfCopy2, changeCopy2, v20, v21, v22, v23, selfCopy, changeCopy];
    goto LABEL_7;
  }

  if (VideoContentProviderObservationContext_217265 != context)
  {
    if (VolumeAnimatorObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:1077 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __47__PXVideoSession_observable_didChange_context___block_invoke_2;
    v17 = &unk_1E7749D78;
    selfCopy2 = self;
    changeCopy2 = change;
    v10 = &v14;
    goto LABEL_6;
  }

  if (change)
  {
    contentProvider = [(PXVideoSession *)self contentProvider];
    loadingResult = [contentProvider loadingResult];
    [(PXVideoSession *)self _handleContentLoadingResult:loadingResult];
  }

LABEL_7:
}

void __47__PXVideoSession_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x10040) != 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:@"PXVideoSession.m" lineNumber:1051 description:{@"invalidating %lu after it already has been updated", 65600}];
      goto LABEL_29;
    }

    *(*(a1 + 32) + 696) |= 0x10040uLL;
  }

  if ((v4 & 4) != 0)
  {
    if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x20060) != 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:@"PXVideoSession.m" lineNumber:1054 description:{@"invalidating %lu after it already has been updated", 131168}];
      goto LABEL_29;
    }

    *(*(a1 + 32) + 696) |= 0x20060uLL;
  }

  if ((v4 & 0x4000) != 0)
  {
    if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 8) != 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:@"PXVideoSession.m" lineNumber:1057 description:{@"invalidating %lu after it already has been updated", 8}];
      goto LABEL_29;
    }

    *(*(a1 + 32) + 696) |= 8uLL;
  }

  if ((v4 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x10054) != 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"PXVideoSession.m" lineNumber:1060 description:{@"invalidating %lu after it already has been updated", 65620}];
LABEL_29:

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x10054uLL;
LABEL_17:
  if ((v4 & 0x1C0) == 0)
  {
    goto LABEL_21;
  }

  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 704) & 0x20) != 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"PXVideoSession.m" lineNumber:1063 description:{@"invalidating %lu after it already has been updated", 32}];
    goto LABEL_29;
  }

  *(*(a1 + 32) + 696) |= 0x20uLL;
LABEL_21:
}

void __47__PXVideoSession_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 2) != 0)
  {
    if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x80) != 0)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession observable:didChange:context:]_block_invoke_2"];
      [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:1073 description:{@"invalidating %lu after it already has been updated", 0x8000}];

      abort();
    }

    *(*(a1 + 32) + 696) |= 0x8000uLL;
  }
}

- (void)avPlayer:(id)player itemDidPlayToEnd:(id)end
{
  playerCopy = player;
  videoPlayer = [(PXVideoSession *)self videoPlayer];

  if (videoPlayer == playerCopy)
  {
    delegate = [(PXVideoSession *)self delegate];
    [delegate videoSessionDidPlayToEnd:self];

    [(PXVideoSession *)self playbackTimeRange];
    if ((v17 & 1) == 0 || ([(PXVideoSession *)self playbackTimeRange], (v16 & 1) == 0) || ([(PXVideoSession *)self playbackTimeRange], v15) || ([(PXVideoSession *)self playbackTimeRange], v14 < 0))
    {
      if ([(PXVideoSession *)self seekToBeginningAtEnd])
      {
        v12 = *MEMORY[0x1E6960CC0];
        v13 = *(MEMORY[0x1E6960CC0] + 16);
        v10 = v12;
        v11 = v13;
        v8 = v12;
        v9 = v13;
        [playerCopy seekToTime:&v12 toleranceBefore:&v10 toleranceAfter:&v8 completionHandler:0];
      }
    }
  }
}

- (void)outputMediaDataWillChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXVideoSession_outputMediaDataWillChange___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXVideoSession *)self _performChanges:v3];
}

void __44__PXVideoSession_outputMediaDataWillChange___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setIsVideoOutputReady:1];
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x20) != 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession outputMediaDataWillChange:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"PXVideoSession.m" lineNumber:1028 description:{@"invalidating %lu after it already has been updated", 0x2000}];

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x2000uLL;
}

- (void)didPerformChanges
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v60.receiver = self;
  v60.super_class = PXVideoSession;
  [(PXVideoSession *)&v60 didPerformChanges];
  p_updateQueue_updateFlags = &self->_updateQueue_updateFlags;
  self->_updateQueue_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateQueue_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler handleFailureInFunction:v23 file:@"PXVideoSession.m" lineNumber:960 description:{@"Invalid parameter not satisfying: %@", @"!_updateQueue_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateQueue_updateFlags->needsUpdate;
    }

    self->_updateQueue_updateFlags.isPerformingUpdate = 1;
    self->_updateQueue_updateFlags.updated = 2;
    if ((needsUpdate & 2) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXVideoSession *)self _updatePlayability];
      if (!self->_updateQueue_updateFlags.isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
        [currentHandler2 handleFailureInFunction:v25 file:@"PXVideoSession.m" lineNumber:965 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 4uLL;
    if ((v5 & 4) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXVideoSession *)self _updateDuration];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler3 handleFailureInFunction:v27 file:@"PXVideoSession.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 8uLL;
    if ((v6 & 8) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFF7;
      [(PXVideoSession *)self _updateAudioStatus];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler4 handleFailureInFunction:v29 file:@"PXVideoSession.m" lineNumber:971 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x10uLL;
    if ((v7 & 0x10) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXVideoSession *)self _updateTrackGeometry];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler5 handleFailureInFunction:v31 file:@"PXVideoSession.m" lineNumber:974 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x40000uLL;
    if ((v8 & 0x40000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFBFFFFLL;
      [(PXVideoSession *)self _updateContentDynamicRange];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler6 handleFailureInFunction:v33 file:@"PXVideoSession.m" lineNumber:977 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x20uLL;
    if ((v9 & 0x20) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXVideoSession *)self _updateBuffering];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler7 handleFailureInFunction:v35 file:@"PXVideoSession.m" lineNumber:980 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x40uLL;
    if ((v10 & 0x40) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXVideoSession *)self _updatePlayState];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler8 handleFailureInFunction:v37 file:@"PXVideoSession.m" lineNumber:983 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v11 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x80uLL;
    if ((v11 & 0x80) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXVideoSession *)self _updateStalled];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler9 handleFailureInFunction:v39 file:@"PXVideoSession.m" lineNumber:986 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v12 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x100uLL;
    if ((v12 & 0x100) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFEFFLL;
      [(PXVideoSession *)self _updateAtBeginningOrEnd];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler10 handleFailureInFunction:v41 file:@"PXVideoSession.m" lineNumber:989 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v13 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x200uLL;
    if ((v13 & 0x200) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v13 & 0xFFFFFFFFFFFFFDFFLL;
      [(PXVideoSession *)self _updateAVPlayerPlayState];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler11 handleFailureInFunction:v43 file:@"PXVideoSession.m" lineNumber:992 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v14 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x20000uLL;
    if ((v14 & 0x20000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFDFFFFLL;
      [(PXVideoSession *)self _updateCurrentPlayerItem];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler12 handleFailureInFunction:v45 file:@"PXVideoSession.m" lineNumber:995 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v15 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x400uLL;
    if ((v15 & 0x400) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXVideoSession *)self _updateVideoOutput];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler13 handleFailureInFunction:v47 file:@"PXVideoSession.m" lineNumber:998 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v16 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x800uLL;
    if ((v16 & 0x800) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v16 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXVideoSession *)self _updateCurrentPixelBuffer];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler14 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler14 handleFailureInFunction:v49 file:@"PXVideoSession.m" lineNumber:1001 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v17 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x1000uLL;
    if ((v17 & 0x1000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v17 & 0xFFFFFFFFFFFFEFFFLL;
      [(PXVideoSession *)self _updatePlayerItemInPlayer];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler15 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler15 handleFailureInFunction:v51 file:@"PXVideoSession.m" lineNumber:1004 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v18 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x2000uLL;
    if ((v18 & 0x2000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v18 & 0xFFFFFFFFFFFFDFFFLL;
      [(PXVideoSession *)self _updateDisplayLinkState];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler16 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler16 handleFailureInFunction:v53 file:@"PXVideoSession.m" lineNumber:1007 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v19 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x4000uLL;
    if ((v19 & 0x4000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v19 & 0xFFFFFFFFFFFFBFFFLL;
      [(PXVideoSession *)self _updateVolumeAnimator];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler17 = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler17 handleFailureInFunction:v55 file:@"PXVideoSession.m" lineNumber:1010 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v20 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x8000uLL;
    if ((v20 & 0x8000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v20 & 0xFFFFFFFFFFFF7FFFLL;
      [(PXVideoSession *)self _updatePlayerVolume];
    }

    if (!self->_updateQueue_updateFlags.isPerformingUpdate)
    {
      currentHandler18 = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler18 handleFailureInFunction:v57 file:@"PXVideoSession.m" lineNumber:1013 description:{@"Invalid parameter not satisfying: %@", @"_updateQueue_updateFlags.isPerformingUpdate"}];
    }

    v21 = p_updateQueue_updateFlags->needsUpdate;
    self->_updateQueue_updateFlags.updated |= 0x10000uLL;
    if ((v21 & 0x10000) != 0)
    {
      p_updateQueue_updateFlags->needsUpdate = v21 & 0xFFFFFFFFFFFEFFFFLL;
      [(PXVideoSession *)self _updateReadyForSeeking];
      v21 = p_updateQueue_updateFlags->needsUpdate;
    }

    self->_updateQueue_updateFlags.isPerformingUpdate = 0;
    if (v21)
    {
      currentHandler19 = [MEMORY[0x1E696AAA8] currentHandler];
      v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession didPerformChanges]"];
      [currentHandler19 handleFailureInFunction:v59 file:@"PXVideoSession.m" lineNumber:1016 description:{@"still needing to update %lu after update pass", p_updateQueue_updateFlags->needsUpdate}];
    }
  }
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXVideoSession__performChanges___block_invoke;
  v6[3] = &unk_1E774C2F0;
  v6[4] = self;
  v7 = changesCopy;
  v5 = changesCopy;
  [(PXVideoSession *)self _performBlockOnUpdateQueue:v6];
}

id __34__PXVideoSession__performChanges___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = PXVideoSession;
  return objc_msgSendSuper2(&v3, sel_performChanges_, v1);
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = NSStringFromSelector(sel_performChanges_withPresentationContext_presenter_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:947 description:{@"Use %@ instead.", v7}];

  abort();
}

- (void)_updateQueue_unregisterChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7.receiver = self;
  v7.super_class = PXVideoSession;
  [(PXVideoSession *)&v7 unregisterChangeObserver:observerCopy context:context];
}

- (void)_updateQueue_registerChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v7.receiver = self;
  v7.super_class = PXVideoSession;
  [(PXVideoSession *)&v7 registerChangeObserver:observerCopy context:context];
}

- (void)unregisterChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PXVideoSession_unregisterChangeObserver_context___block_invoke;
  v8[3] = &unk_1E7746600;
  objc_copyWeak(v10, &location);
  v7 = observerCopy;
  v9 = v7;
  v10[1] = context;
  [(PXVideoSession *)self _performBlockOnUpdateQueue:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __51__PXVideoSession_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateQueue_unregisterChangeObserver:*(a1 + 32) context:*(a1 + 48)];
}

- (void)registerChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXVideoSession_registerChangeObserver_context___block_invoke;
  v8[3] = &unk_1E7746600;
  objc_copyWeak(v10, &location);
  v7 = observerCopy;
  v9 = v7;
  v10[1] = context;
  [(PXVideoSession *)self _performBlockOnUpdateQueue:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __49__PXVideoSession_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateQueue_registerChangeObserver:*(a1 + 32) context:*(a1 + 48)];
}

- (void)setDesiredPlaybackRate:(double)rate
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXVideoSession_setDesiredPlaybackRate___block_invoke;
  block[3] = &unk_1E77477B8;
  *&block[6] = rate;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(stateQueue, block);
  if (*(v10 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x200) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setDesiredPlaybackRate:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:916 description:{@"invalidating %lu after it already has been updated", 512}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x200uLL;
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __41__PXVideoSession_setDesiredPlaybackRate___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 != *(*(result + 32) + 680))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 680) = v1;
  }

  return result;
}

- (double)desiredPlaybackRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__PXVideoSession_desiredPlaybackRate__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __37__PXVideoSession_desiredPlaybackRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 680);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_relinquishAny4k60StreamAllowance
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_sharedLock);
  if (self->_sharedLock_has4k60Allowance)
  {
    self->_sharedLock_has4k60Allowance = 0;
    v3 = sharedLock_totalVideoSessionsWith4kStreams--;
    if (v3 <= 0)
    {
      PXAssertGetLog();
    }
  }

  os_unfair_lock_unlock(&_sharedLock);
}

- (BOOL)_request4k60StreamAllowance
{
  if (_request4k60StreamAllowance_onceToken != -1)
  {
    dispatch_once(&_request4k60StreamAllowance_onceToken, &__block_literal_global_217291);
  }

  os_unfair_lock_lock(&_sharedLock);
  if (self->_sharedLock_has4k60Allowance)
  {
    v3 = 1;
  }

  else
  {
    v4 = sharedLock_totalVideoSessionsWith4kStreams;
    if (sharedLock_totalVideoSessionsWith4kStreams >= _request4k60StreamAllowance_maxConcurrent4k60Streams)
    {
      v3 = 0;
    }

    else
    {
      v3 = 1;
      self->_sharedLock_has4k60Allowance = 1;
      sharedLock_totalVideoSessionsWith4kStreams = v4 + 1;
    }
  }

  os_unfair_lock_unlock(&_sharedLock);
  return v3;
}

void __45__PXVideoSession__request4k60StreamAllowance__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v0 objectForKey:@"PXVideoSessionMaxConcurrent4k60Streams"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v2 integerValue];
  }

  else
  {
    v1 = 1;
  }

  _request4k60StreamAllowance_maxConcurrent4k60Streams = v1;
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PXVideoSession_setAudioSession___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(stateQueue, v7);
}

- (id)audioSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__PXVideoSession_audioSession__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  [(PXVideoSession *)self _assertOnUpdateQueue];
  stateQueue = self->_stateQueue;
  block = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __33__PXVideoSession_setVideoPlayer___block_invoke;
  v12 = &unk_1E7746448;
  v6 = playerCopy;
  v13 = v6;
  selfCopy = self;
  v15 = &v16;
  dispatch_sync(stateQueue, &block);
  if (*(v17 + 24) == 1)
  {
    [(PXVideoSession *)self signalChange:0x4000];
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x2924C) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setVideoPlayer:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXVideoSession.m" lineNumber:842 description:{@"invalidating %lu after it already has been updated", 168524, block, v10, v11, v12}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x2924CuLL;
  }

  _Block_object_dispose(&v16, 8);
}

void __33__PXVideoSession_setVideoPlayer___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != *(*(a1 + 40) + 656))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 40) + 656) setDelegate:0];
    [*(*(a1 + 40) + 656) unregisterChangeObserver:*(a1 + 40) context:VideoPlayerObservationContext];
    [*(*(a1 + 40) + 656) removeTimeObserver:*(*(a1 + 40) + 664)];
    [*(*(a1 + 40) + 656) replaceCurrentItemWithPlayerItem:0];
    objc_storeStrong((*(a1 + 40) + 656), *(a1 + 32));
    [*(*(a1 + 40) + 656) setDelegate:?];
    [*(*(a1 + 40) + 656) registerChangeObserver:*(a1 + 40) context:VideoPlayerObservationContext];
    objc_initWeak(&location, *(a1 + 40));
    v2 = *(*(a1 + 40) + 656);
    CMTimeMake(&v10, 1, 30);
    v3 = *(*(a1 + 40) + 144);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__PXVideoSession_setVideoPlayer___block_invoke_2;
    v8[3] = &unk_1E7748F40;
    objc_copyWeak(&v9, &location);
    v4 = [v2 addPeriodicTimeObserverForInterval:&v10 queue:v3 usingBlock:v8];
    v5 = *(a1 + 40);
    v6 = *(v5 + 664);
    *(v5 + 664) = v4;

    [*(*(a1 + 40) + 656) setLoopingEnabled:*(*(a1 + 40) + 410)];
    v7 = *(a1 + 40);
    if (*(v7 + 672))
    {
      [*(v7 + 656) setWrappedAudioSession:?];
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __33__PXVideoSession_setVideoPlayer___block_invoke_2(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _avPlayerTimeDidChange:&v4];
}

- (id)videoPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PXVideoSession_videoPlayer__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_disconnectVideoPlayer
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__217191;
  v29 = __Block_byref_object_dispose__217192;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__217191;
  v23 = __Block_byref_object_dispose__217192;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__217191;
  v17 = __Block_byref_object_dispose__217192;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__217191;
  v11 = __Block_byref_object_dispose__217192;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXVideoSession__disconnectVideoPlayer__block_invoke;
  block[3] = &unk_1E77465D8;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v19;
  block[7] = &v13;
  block[8] = &v7;
  dispatch_sync(stateQueue, block);
  [v8[5] setDelegate:0 queue:0];
  [v26[5] removeTimeObserver:v14[5]];
  [v26[5] removeTimeObserver:v20[5]];
  [v26[5] replaceCurrentItemWithPlayerItem:0];
  [v26[5] unregisterChangeObserver:self context:VideoPlayerObservationContext];
  [v26[5] setDelegate:0];
  v4 = v26[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v4;
}

void __40__PXVideoSession__disconnectVideoPlayer__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 656));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 192));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 664));
  objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 256));
  v2 = a1[4];
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  v4 = a1[4];
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;

  v6 = a1[4];
  v7 = *(v6 + 656);
  *(v6 + 656) = 0;

  v8 = a1[4];
  v9 = *(v8 + 256);
  *(v8 + 256) = 0;
}

- (void)setShouldDisableAutomaticPixelBufferUpdates:(BOOL)updates
{
  [(PXVideoSession *)self _assertOnUpdateQueue];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  stateQueue = self->_stateQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXVideoSession_setShouldDisableAutomaticPixelBufferUpdates___block_invoke;
  block[3] = &unk_1E77465B0;
  updatesCopy = updates;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(stateQueue, block);
  if (*(v11 + 24) == 1)
  {
    if (self->_updateQueue_updateFlags.isPerformingUpdate && (self->_updateQueue_updateFlags.updated & 0x2000) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession setShouldDisableAutomaticPixelBufferUpdates:]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXVideoSession.m" lineNumber:770 description:{@"invalidating %lu after it already has been updated", 0x2000}];

      abort();
    }

    self->_updateQueue_updateFlags.needsUpdate |= 0x2000uLL;
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __62__PXVideoSession_setShouldDisableAutomaticPixelBufferUpdates___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 648))
  {
    *(v2 + 648) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)shouldDisableAutomaticPixelBufferUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PXVideoSession_shouldDisableAutomaticPixelBufferUpdates__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_videoWorkQueue_updateCurrenPixelBufferAfterSeekingToTime:(id *)time completionLock:(id)lock
{
  v18 = *MEMORY[0x1E69E9840];
  lockCopy = lock;
  videoOutput = [(PXVideoSession *)self videoOutput];
  time = *time;
  v8 = [videoOutput copyPixelBufferForItemTime:&time itemTimeForDisplay:0];

  if (!v8)
  {
    v9 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      time = *time;
      Seconds = CMTimeGetSeconds(&time);
      videoOutput2 = [(PXVideoSession *)self videoOutput];
      LODWORD(time.value) = 138412802;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      HIWORD(time.epoch) = 2112;
      v17 = videoOutput2;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "%@ got nil pixelBuffer for time %f from videoOutput: %@", &time, 0x20u);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PXVideoSession__videoWorkQueue_updateCurrenPixelBufferAfterSeekingToTime_completionLock___block_invoke;
  v13[3] = &unk_1E7746588;
  v14 = lockCopy;
  v15 = v8;
  v12 = lockCopy;
  [(PXVideoSession *)self _performChanges:v13];
}

uint64_t __91__PXVideoSession__videoWorkQueue_updateCurrenPixelBufferAfterSeekingToTime_completionLock___block_invoke(uint64_t a1, void *a2)
{
  [a2 setCurrentPixelBuffer:*(a1 + 40)];
  CVPixelBufferRelease(*(a1 + 40));
  v3 = *(a1 + 32);

  return [v3 unlock];
}

- (void)_updateCurrenPixelBufferAfterSeekingToTime:(id *)time completionLock:(id)lock
{
  lockCopy = lock;
  objc_initWeak(&location, self);
  videoWorkQueue = self->_videoWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PXVideoSession__updateCurrenPixelBufferAfterSeekingToTime_completionLock___block_invoke;
  v9[3] = &unk_1E7746560;
  objc_copyWeak(&v11, &location);
  v12 = *time;
  v10 = lockCopy;
  v8 = lockCopy;
  dispatch_async(videoWorkQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __76__PXVideoSession__updateCurrenPixelBufferAfterSeekingToTime_completionLock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _videoWorkQueue_updateCurrenPixelBufferAfterSeekingToTime:&v4 completionLock:v3];
}

- (void)seekToExactTime:(id *)time updatePixelBuffer:(BOOL)buffer waitUntilComplete:(BOOL)complete
{
  completeCopy = complete;
  v35 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v10 = !completeCopy;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!completeCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke;
    aBlock[3] = &unk_1E7746510;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v11[2](v11, &self->_stateQueue_isPlayable, &self->_stateQueue_isPlayableLock, @"isPlayableLock");
    v11[2](v11, &self->_stateQueue_readyForSeeking, &self->_stateQueue_readyForSeekingLock, @"readyForSeekingLock");
    v11[2](v11, &self->_stateQueue_videoOutputIsReady, &self->_stateQueue_videoOutputReadyLock, @"videoOutputReadyLock");

    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"NSThread.isMainThread ? waitUntilComplete == NO : YES"}];

  if (completeCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  if (videoPlayer && [(PXVideoSession *)self isPlayable]&& [(PXVideoSession *)self isReadyForSeeking]&& [(PXVideoSession *)self isVideoOutputReady])
  {
    if (completeCopy)
    {
      v13 = objc_alloc_init(MEMORY[0x1E696AD10]);
    }

    else
    {
      v13 = 0;
    }

    [v13 lock];
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke_273;
    v24[3] = &unk_1E7746538;
    bufferCopy = buffer;
    objc_copyWeak(&v26, &location);
    v27 = *&time->var0;
    var3 = time->var3;
    v14 = v13;
    v25 = v14;
    time = *time;
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    v22 = *buf;
    v23 = *&buf[16];
    [videoPlayer seekToTime:&time toleranceBefore:buf toleranceAfter:&v22 completionHandler:v24];
    if (completeCopy)
    {
      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
      v18 = [v14 lockBeforeDate:v17];

      if ((v18 & 1) == 0)
      {
        v19 = PLVideoPlaybackGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          time = *time;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = Seconds;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "%@ sync seeking to time %f timed out", buf, 0x16u);
        }
      }
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      time = *time;
      v15 = CMTimeGetSeconds(&time);
      v16 = [(PXVideoSession *)self description];
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v15;
      HIWORD(time.epoch) = 2114;
      v33 = v16;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ wasn't ready for seeking to time %f: %{public}@", &time, 0x20u);
    }
  }
}

void __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__217191;
  v20 = __Block_byref_object_dispose__217192;
  v21 = 0;
  v8 = *(*(a1 + 32) + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke_2;
  block[3] = &unk_1E77464E8;
  block[5] = a2;
  block[6] = a3;
  block[4] = &v16;
  dispatch_sync(v8, block);
  v9 = v17[5];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
    v11 = [v9 lockBeforeDate:v10];

    if ((v11 & 1) == 0)
    {
      v12 = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = [v13 description];
        *buf = 138543874;
        v23 = v13;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ waiting for %{public}@ timed out: %{public}@", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke_273(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    [WeakRetained _updateCurrenPixelBufferAfterSeekingToTime:&v6 completionLock:v4];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 unlock];
  }
}

void __70__PXVideoSession_seekToExactTime_updatePixelBuffer_waitUntilComplete___block_invoke_2(uint64_t a1)
{
  if ((**(a1 + 40) & 1) == 0 && !**(a1 + 48))
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(*(a1 + 32) + 8) + 40) lock];
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = *(a1 + 48);

    objc_storeStrong(v6, v5);
  }
}

- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  handlerCopy = handler;
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PXVideoSession_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
  v16[3] = &unk_1E77464C0;
  v17 = handlerCopy;
  v15 = *time;
  v14 = *before;
  v13 = *after;
  v12 = handlerCopy;
  [videoPlayer seekToTime:&v15 toleranceBefore:&v14 toleranceAfter:&v13 completionHandler:v16];
}

uint64_t __78__PXVideoSession_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)seekToTime:(id *)time completionHandler:(id)handler
{
  v8 = *time;
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v4 = v6;
  v5 = v7;
  [(PXVideoSession *)self seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:handler];
}

- (CGImage)generateSnapshotImage
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  videoPlayer = [(PXVideoSession *)self videoPlayer];
  v4 = videoPlayer;
  memset(&v22, 0, sizeof(v22));
  if (videoPlayer)
  {
    [videoPlayer currentTime];
  }

  currentItem = [v4 currentItem];
  asset = [currentItem asset];
  v7 = asset;
  if (asset)
  {
    [asset duration];
    v8 = MEMORY[0x1E6960CC0];
    start = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(&range, &start, &duration);
    start = v22;
    CMTimeClampToRange(&duration, &start, &range);
    v22 = duration;
    v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v7];
    [v9 setAppliesPreferredTrackTransform:1];
    *&range.start.value = *v8;
    range.start.epoch = *(v8 + 16);
    [v9 setRequestedTimeToleranceAfter:&range];
    *&range.start.value = *v8;
    range.start.epoch = *(v8 + 16);
    [v9 setRequestedTimeToleranceBefore:&range];
    videoComposition = [currentItem videoComposition];
    [v9 setVideoComposition:videoComposition];

    customVideoCompositor = [v9 customVideoCompositor];
    NSClassFromString(&cfstr_Nuvideoplaybac.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      customVideoCompositor2 = [v9 customVideoCompositor];
      [customVideoCompositor2 setLabel:@"PXVideoSession-generateSnapshotImage"];
    }

    v19 = 0;
    range.start = v22;
    v14 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v9 atTime:&range actualTime:0 error:&v19];
    v15 = v19;
    v23 = v14;
    if (!v14)
    {
      v16 = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(range.start.value) = 136315650;
        *(&range.start.value + 4) = "[PXVideoSession generateSnapshotImage]";
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = self;
        HIWORD(range.start.epoch) = 2112;
        range.duration.value = v15;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "%s Unable to generate snapshot for video session:\n%@\nError:%@", &range, 0x20u);
      }
    }

    PFCGImageApplyTemporaryAVAssetImageGeneratorColorSpaceWorkaround();

    v17 = v23;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)cancelLoading
{
  contentProvider = [(PXVideoSession *)self contentProvider];
  [contentProvider cancelLoading];
}

- (void)loadIfNeededWithPriority:(int64_t)priority
{
  contentProvider = [(PXVideoSession *)self contentProvider];
  [contentProvider beginLoadingWithPriority:priority];

  playbackReporter = self->_playbackReporter;

  [(PXVideoPlaybackReporter *)playbackReporter reportPlaybackRequestedWithPriority:priority];
}

- (unint64_t)audioSessionRouteSharingPolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXVideoSession_audioSessionRouteSharingPolicy__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)audioSessionMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PXVideoSession_audioSessionMode__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)audioSessionCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__217191;
  v10 = __Block_byref_object_dispose__217192;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PXVideoSession_audioSessionCategory__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__PXVideoSession_audioSessionCategory__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)audioSessionCategoryOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXVideoSession_audioSessionCategoryOptions__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_audioSessionQueue_updateAudioSessionWithCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  categoryCopy = category;
  audioSession = [(PXVideoSession *)self audioSession];
  v16 = 0;
  LOBYTE(policy) = [audioSession setCategory:categoryCopy mode:modeCopy routeSharingPolicy:policy options:options error:&v16];

  v13 = v16;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PXVideoSession__audioSessionQueue_updateAudioSessionWithCategory_mode_routeSharingPolicy_options___block_invoke;
  v15[3] = &unk_1E774C5F8;
  v15[4] = self;
  [(PXVideoSession *)self _performChanges:v15];
  if ((policy & 1) == 0)
  {
    v14 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Failed to update audio category on video session: %@\n\tError: %@", buf, 0x16u);
    }
  }
}

- (void)setAudioSessionCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options
{
  categoryCopy = category;
  modeCopy = mode;
  if (self->_audioSessionQueue)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXVideoSession_setAudioSessionCategory_mode_routeSharingPolicy_options___block_invoke;
    block[3] = &unk_1E7746470;
    v13 = categoryCopy;
    v22 = v13;
    selfCopy = self;
    optionsCopy = options;
    v14 = modeCopy;
    policyCopy = policy;
    v24 = v14;
    v25 = &v28;
    dispatch_sync(stateQueue, block);
    if (*(v29 + 24) == 1)
    {
      [(PXVideoSession *)self setUpdatingAudioSession:1];
      objc_initWeak(&location, self);
      audioSessionQueue = self->_audioSessionQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__PXVideoSession_setAudioSessionCategory_mode_routeSharingPolicy_options___block_invoke_2;
      v16[3] = &unk_1E7746498;
      objc_copyWeak(v19, &location);
      v17 = v13;
      v18 = v14;
      v19[1] = policy;
      v19[2] = options;
      dispatch_async(audioSessionQueue, v16);

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __74__PXVideoSession_setAudioSessionCategory_mode_routeSharingPolicy_options___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 208);
  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 == v2)
  {
  }

  else
  {
    v5 = [v3 isEqualToString:v2];

    if (!v5)
    {
LABEL_8:
      v7 = [*(a1 + 32) copy];
      v8 = *(a1 + 40);
      v9 = *(v8 + 208);
      *(v8 + 208) = v7;

      *(*(a1 + 40) + 216) = *(a1 + 64);
      *(*(a1 + 40) + 232) = *(a1 + 72);
      objc_storeStrong((*(a1 + 40) + 224), *(a1 + 48));
      *(*(*(a1 + 56) + 8) + 24) = 1;
      return;
    }
  }

  v6 = *(a1 + 40);
  if (*(a1 + 64) != v6[27] || *(a1 + 48) != v6[28] || *(a1 + 72) != v6[29])
  {
    goto LABEL_8;
  }
}

void __74__PXVideoSession_setAudioSessionCategory_mode_routeSharingPolicy_options___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _audioSessionQueue_updateAudioSessionWithCategory:*(a1 + 32) mode:*(a1 + 40) routeSharingPolicy:*(a1 + 56) options:*(a1 + 64)];
}

- (void)cancelPixelBufferOutputWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PXVideoSession_cancelPixelBufferOutputWithRequestIdentifier___block_invoke;
  block[3] = &unk_1E7746448;
  block[4] = self;
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(stateQueue, block);
  if (*(v12 + 24) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PXVideoSession_cancelPixelBufferOutputWithRequestIdentifier___block_invoke_2;
    v7[3] = &unk_1E774C5F8;
    v7[4] = self;
    [(PXVideoSession *)self _performChanges:v7];
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __63__PXVideoSession_cancelPixelBufferOutputWithRequestIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) containsObject:a1[5]];
  if (result)
  {
    [*(a1[4] + 168) removeObject:a1[5]];
    result = [*(a1[4] + 176) setObject:0 forKeyedSubscript:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void __63__PXVideoSession_cancelPixelBufferOutputWithRequestIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession cancelPixelBufferOutputWithRequestIdentifier:]_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:552 description:{@"invalidating %lu after it already has been updated", 1024}];
    goto LABEL_10;
  }

  *(*(a1 + 32) + 696) |= 0x400uLL;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession cancelPixelBufferOutputWithRequestIdentifier:]_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:553 description:{@"invalidating %lu after it already has been updated", 0x2000}];
LABEL_10:

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x2000uLL;
}

- (void)requestPixelBufferOutputWithRequestIdentifier:(id)identifier maxOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXVideoSession_requestPixelBufferOutputWithRequestIdentifier_maxOutputSize___block_invoke;
  block[3] = &unk_1E7746420;
  block[4] = self;
  v9 = identifierCopy;
  v14 = width;
  v15 = height;
  v12 = v9;
  v13 = &v16;
  dispatch_sync(stateQueue, block);
  if (*(v17 + 24) == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PXVideoSession_requestPixelBufferOutputWithRequestIdentifier_maxOutputSize___block_invoke_2;
    v10[3] = &unk_1E774C5F8;
    v10[4] = self;
    [(PXVideoSession *)self _performChanges:v10];
  }

  _Block_object_dispose(&v16, 8);
}

void __78__PXVideoSession_requestPixelBufferOutputWithRequestIdentifier_maxOutputSize___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 168) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 168) addObject:*(a1 + 40)];
    v2 = [MEMORY[0x1E696B098] valueWithCGSize:{*(a1 + 56), *(a1 + 64)}];
    [*(*(a1 + 32) + 176) setObject:v2 forKeyedSubscript:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __78__PXVideoSession_requestPixelBufferOutputWithRequestIdentifier_maxOutputSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession requestPixelBufferOutputWithRequestIdentifier:maxOutputSize:]_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:535 description:{@"invalidating %lu after it already has been updated", 1024}];
    goto LABEL_10;
  }

  *(*(a1 + 32) + 696) |= 0x400uLL;
  if (*(*(a1 + 32) + 712) == 1 && (*(*(a1 + 32) + 705) & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession requestPixelBufferOutputWithRequestIdentifier:maxOutputSize:]_block_invoke_2"];
    [v4 handleFailureInFunction:v5 file:@"PXVideoSession.m" lineNumber:536 description:{@"invalidating %lu after it already has been updated", 0x2000}];
LABEL_10:

    abort();
  }

  *(*(a1 + 32) + 696) |= 0x2000uLL;
}

- (id)dequeueVideoView
{
  mainQueue_videoViewQueue = self->_mainQueue_videoViewQueue;
  if (!mainQueue_videoViewQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_mainQueue_videoViewQueue;
    self->_mainQueue_videoViewQueue = v4;

    mainQueue_videoViewQueue = self->_mainQueue_videoViewQueue;
  }

  lastObject = [(NSMutableArray *)mainQueue_videoViewQueue lastObject];
  if (lastObject)
  {
    _newVideoView = lastObject;
    [(NSMutableArray *)self->_mainQueue_videoViewQueue removeLastObject];
  }

  else
  {
    _newVideoView = [(PXVideoSession *)self _newVideoView];
  }

  return _newVideoView;
}

- (void)_mainQueue_actuallyPrewarmVideoView
{
  if (!self->_mainQueue_videoViewQueue)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mainQueue_videoViewQueue = self->_mainQueue_videoViewQueue;
    self->_mainQueue_videoViewQueue = v3;

    v5 = self->_mainQueue_videoViewQueue;
    dequeueVideoView = [(PXVideoSession *)self dequeueVideoView];
    [(NSMutableArray *)v5 addObject:dequeueVideoView];
  }
}

- (void)prewarmVideoView
{
  self->_isExpectingVideoView = 1;
  objc_initWeak(&location, self);
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__PXVideoSession_prewarmVideoView__block_invoke;
  v3[3] = &unk_1E774C318;
  objc_copyWeak(&v4, &location);
  [sharedScheduler scheduleMainQueueTask:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __34__PXVideoSession_prewarmVideoView__block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = *MEMORY[0x1E695D918];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [WeakRetained performSelectorOnMainThread:sel__mainQueue_actuallyPrewarmVideoView withObject:0 waitUntilDone:0 modes:v2];
}

- (void)dealloc
{
  [(PXVideoSession *)self _relinquishAny4k60StreamAllowance];
  CVPixelBufferRelease(self->_stateQueue_currentPixelBuffer);
  v3.receiver = self;
  v3.super_class = PXVideoSession;
  [(PXVideoSession *)&v3 dealloc];
}

- (id)performFinalCleanup
{
  if ([(PXVideoPlaybackReporter *)self->_playbackReporter state]== 1)
  {
    [(PXVideoPlaybackReporter *)self->_playbackReporter reportPlaybackAbandoned];
  }

  if (self->_audioSessionQueue)
  {
    audioSession = [(PXVideoSession *)self audioSession];
    audioSessionQueue = self->_audioSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PXVideoSession_performFinalCleanup__block_invoke;
    block[3] = &unk_1E774C648;
    v10 = audioSession;
    v5 = audioSession;
    dispatch_async(audioSessionQueue, block);
  }

  [(NSTimer *)self->_playerTimeAdvancementTimer invalidate];
  playerTimeAdvancementTimer = self->_playerTimeAdvancementTimer;
  self->_playerTimeAdvancementTimer = 0;

  _disconnectVideoPlayer = [(PXVideoSession *)self _disconnectVideoPlayer];

  return _disconnectVideoPlayer;
}

- (void)performChanges:(id)changes withPresentationContext:(int64_t)context presenter:(void *)presenter
{
  changesCopy = changes;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__217191;
  v22 = __Block_byref_object_dispose__217192;
  v23 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXVideoSession_performChanges_withPresentationContext_presenter___block_invoke;
  block[3] = &unk_1E77463D0;
  block[6] = context;
  block[7] = presenter;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(stateQueue, block);
  if (v19[5])
  {
    updateQueue = self->_updateQueue;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __67__PXVideoSession_performChanges_withPresentationContext_presenter___block_invoke_2;
    v14 = &unk_1E77463F8;
    v15 = changesCopy;
    v16 = &v18;
    dispatch_async(updateQueue, &v11);
    [(PXVideoSession *)self _updateFromCurrentPresentationState:v11];
  }

  _Block_object_dispose(&v18, 8);
}

void __67__PXVideoSession_performChanges_withPresentationContext_presenter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v14 = [v2 objectForKeyedSubscript:v3];

  if ([v14 count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [v14 objectAtIndexedSubscript:v4];
      if ([v5 presenter] == *(a1 + 56))
      {
        break;
      }

      if (++v4 >= [v14 count])
      {
        goto LABEL_7;
      }
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

LABEL_7:
  v8 = v14;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(*(a1 + 32) + 160);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
      [v9 setObject:v14 forKeyedSubscript:v10];
    }

    v11 = [*(a1 + 32) _stateQueue_newPresentationStateFromCurrentWithPresenter:*(a1 + 56)];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [v14 addObject:*(*(*(a1 + 40) + 8) + 40)];
    v8 = v14;
  }
}

- (void)leavePresentationContext:(int64_t)context presenter:(void *)presenter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXVideoSession_leavePresentationContext_presenter___block_invoke;
  v6[3] = &unk_1E77463D0;
  v6[6] = context;
  v6[7] = presenter;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(PXVideoSession *)self _updateFromCurrentPresentationState];
  }

  _Block_object_dispose(&v7, 8);
}

void __53__PXVideoSession_leavePresentationContext_presenter___block_invoke(void *a1)
{
  v2 = *(a1[4] + 160);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v7 = [v2 objectForKeyedSubscript:v3];

  [v7 count];
  v4 = 0;
  while (1)
  {
    v5 = [v7 objectAtIndexedSubscript:v4];
    if ([v5 presenter] == a1[7])
    {
      break;
    }

    if (v4++ >= [v7 count])
    {
      goto LABEL_7;
    }
  }

  [v7 removeObjectAtIndex:v4];
  *(*(a1[5] + 8) + 24) = 1;

LABEL_7:
}

- (void)enterPresentationContext:(int64_t)context presenter:(void *)presenter
{
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXVideoSession_enterPresentationContext_presenter___block_invoke;
  v6[3] = &unk_1E7749770;
  v6[4] = self;
  v6[5] = context;
  v6[6] = presenter;
  v6[7] = a2;
  dispatch_sync(stateQueue, v6);
  [(PXVideoSession *)self _updateFromCurrentPresentationState];
}

void __53__PXVideoSession_enterPresentationContext_presenter___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 160);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    memset(v9, 0, sizeof(v9));
    if ([v4 countByEnumeratingWithState:v9 objects:v10 count:16] && objc_msgSend(**(&v9[0] + 1), "presenter") == *(a1 + 48))
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXVideoSession.m" lineNumber:398 description:{@"Trying to enter same presentation context %ld with same presenter %p time twice", *(a1 + 40), *(a1 + 48)}];
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(a1 + 32) + 160);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v6 setObject:v4 forKeyedSubscript:v7];
  }

  v8 = [*(a1 + 32) _stateQueue_newPresentationStateFromCurrentWithPresenter:*(a1 + 48)];
  [v4 addObject:v8];
}

- (id)_stateQueue_newPresentationStateFromCurrentWithPresenter:(void *)presenter
{
  v5 = objc_alloc_init(_PXVideoSessionPresentationState);
  [(_PXVideoSessionPresentationState *)v5 setPresenter:presenter];
  [(_PXVideoSessionPresentationState *)v5 setLoopingEnabled:self->_stateQueue_isLoopingEnabled];
  v6 = *&self->_stateQueue_playbackTimeRange.start.flags;
  v9[0] = *(&self->_stateQueue_isLoopingEnabled + 2);
  v9[1] = v6;
  v9[2] = *(&self->_stateQueue_playbackTimeRange.duration.value + 4);
  [(_PXVideoSessionPresentationState *)v5 setPlaybackTimeRange:v9];
  LODWORD(v7) = HIDWORD(self->_stateQueue_playbackStartTime.epoch);
  [(_PXVideoSessionPresentationState *)v5 setVolume:LOBYTE(self->_stateQueue_volume) withFade:v7];
  [(_PXVideoSessionPresentationState *)v5 setSeekToBeginningAtEnd:BYTE1(self->_stateQueue_volume)];
  [(_PXVideoSessionPresentationState *)v5 setDesiredPlayState:self->_stateQueue_desiredPlayState];
  [(_PXVideoSessionPresentationState *)v5 setShouldDisableAutomaticPixelBufferUpdates:self->_stateQueue_shouldDisableAutomaticPixelBufferUpdates];
  [(_PXVideoSessionPresentationState *)v5 setDesiredPlaybackRate:self->_stateQueue_desiredPlaybackRate];
  [(_PXVideoSessionPresentationState *)v5 setAudioSessionCategory:self->_stateQueue_audioSessionCategory mode:self->_stateQueue_audioSessionMode routeSharingPolicy:self->_stateQueue_audioSessionRouteSharingPolicy options:self->_stateQueue_audioSessionCategoryOptions];

  return v5;
}

- (void)_handleSharedAudioSession:(id)session
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = sessionCopy;
  if (sessionCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__PXVideoSession__handleSharedAudioSession___block_invoke;
    v7[3] = &unk_1E774C620;
    v8 = sessionCopy;
    selfCopy = self;
    [(PXVideoSession *)self _performBlockOnUpdateQueue:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to load shared audio session. Audio playback issues or interruptions may occur! %@", buf, 0xCu);
    }
  }
}

uint64_t __44__PXVideoSession__handleSharedAudioSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerVolumeObserver:*(a1 + 40)];
  v2 = [*(a1 + 40) videoPlayer];
  [v2 setWrappedAudioSession:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 _didFinishInitializingAudioSession];
}

- (PXVideoSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoSession.m" lineNumber:359 description:{@"%s is not available as initializer", "-[PXVideoSession init]"}];

  abort();
}

- (PXVideoSession)initWithContentProvider:(id)provider videoPlayer:(id)player resourceReclamationController:(id)controller playerCreationDelay:(double)delay
{
  providerCopy = provider;
  playerCopy = player;
  controllerCopy = controller;
  v68.receiver = self;
  v68.super_class = PXVideoSession;
  v14 = [(PXVideoSession *)&v68 init];
  v15 = v14;
  if (v14)
  {
    if (!v14->_updateQueue_updateFlags.isPerformingUpdate || (v14->_updateQueue_updateFlags.updated & 0x1000) == 0)
    {
      v14->_updateQueue_updateFlags.needsUpdate |= 0x1000uLL;
      v16 = objc_alloc_init(PXPhotosensitivityProcessing);
      photoSensitivityProcessing = v15->_photoSensitivityProcessing;
      v15->_photoSensitivityProcessing = v16;

      v18 = [PXVideoPlaybackReporter alloc];
      contentIdentifier = [providerCopy contentIdentifier];
      v20 = [(PXVideoPlaybackReporter *)v18 initWithIdentifier:contentIdentifier CPAnalysticsEndpoint:1];
      playbackReporter = v15->_playbackReporter;
      v15->_playbackReporter = v20;

      v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v23 = dispatch_queue_create("com.apple.PXVideoSession.work", v22);
      videoWorkQueue = v15->_videoWorkQueue;
      v15->_videoWorkQueue = v23;

      v25 = dispatch_queue_create("com.apple.PXVideoSession.state", v22);
      stateQueue = v15->_stateQueue;
      v15->_stateQueue = v25;

      v27 = dispatch_queue_create("com.apple.PXVideoSession.update", v22);
      updateQueue = v15->_updateQueue;
      v15->_updateQueue = v27;

      v29 = controllerCopy;
      if (!controllerCopy)
      {
        v29 = objc_alloc_init(MEMORY[0x1E69C1AC8]);
      }

      objc_storeStrong(&v15->_resourceReclamationController, v29);
      if (!controllerCopy)
      {
      }

      [(PXAVResourceReclamationController *)v15->_resourceReclamationController registerObserver:v15];
      v30 = MEMORY[0x1E696AD98];
      atomic_fetch_add(initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay__ivarQueueCounter, 1u);
      v31 = [v30 numberWithInt:?];
      v15->_updateQueueIdentifier = v31;
      dispatch_queue_set_specific(v15->_updateQueue, QueueIdentifierContext, v31, 0);
      objc_storeStrong(&v15->_contentProvider, provider);
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      loadingResult = [(PXVideoContentProvider *)v15->_contentProvider loadingResult];
      v33 = loadingResult;
      if (loadingResult)
      {
        [loadingResult timeRange];
      }

      else
      {
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
      }

      v34 = v15->_stateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke;
      block[3] = &unk_1E77463A8;
      v35 = v15;
      block[4] = v35;
      v62 = v65;
      v63 = v66;
      v64 = v67;
      dispatch_sync(v34, block);
      [providerCopy registerChangeObserver:v35 context:VideoContentProviderObservationContext_217265];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_2;
      v60[3] = &unk_1E77499B0;
      *&v60[6] = delay;
      v36 = v35;
      v60[4] = v36;
      v60[5] = playerCopy;
      [v36 _performChanges:v60];
      videoPlayer = [v36 videoPlayer];
      [videoPlayer setActionAtItemEnd:2];

      v38 = MEMORY[0x1E695EFD0];
      v39 = *(MEMORY[0x1E695EFD0] + 16);
      *(v36 + 31) = *MEMORY[0x1E695EFD0];
      *(v36 + 32) = v39;
      *(v36 + 33) = *(v38 + 32);
      [v36 _loadAssetTracksIfNeeded];
      v40 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:v36 weakTarget:sel__handlePlayerTimeAdvancementTimer_ selector:0 userInfo:1 repeats:0.2];
      v41 = v36[12];
      v36[12] = v40;

      v42 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v43 = dispatch_queue_create("com.apple.PXVideoSession.audioSession", v42);
      v44 = v36[15];
      v36[15] = v43;

      if ([providerCopy mayContainAudio])
      {
        if ([providerCopy audioSessionKind])
        {
          objc_initWeak(&location, v36);
          audioSessionKind = [providerCopy audioSessionKind];
          v46 = v36[15];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_5;
          v53[3] = &unk_1E7749808;
          v54[1] = audioSessionKind;
          objc_copyWeak(v54, &location);
          dispatch_async(v46, v53);
          objc_destroyWeak(v54);
          objc_destroyWeak(&location);
        }

        else
        {
          v47 = v15->_stateQueue;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_3;
          v58[3] = &unk_1E774C648;
          v48 = v36;
          v59 = v48;
          dispatch_sync(v47, v58);
          objc_initWeak(&location, v48);
          v49 = v36[15];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_4;
          v55[3] = &unk_1E774C318;
          objc_copyWeak(&v56, &location);
          dispatch_async(v49, v55);
          objc_destroyWeak(&v56);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        *(v36 + 728) = 1;
      }

      v36;
      px_dispatch_on_main_queue();
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXVideoSession initWithContentProvider:videoPlayer:resourceReclamationController:playerCreationDelay:]"];
    [currentHandler handleFailureInFunction:v52 file:@"PXVideoSession.m" lineNumber:269 description:{@"invalidating %lu after it already has been updated", 4096}];

    abort();
  }

  return 0;
}

__n128 __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  v5 = MEMORY[0x1E6960C70];
  v6 = *(a1 + 32) + 284;
  *v6 = *MEMORY[0x1E6960C70];
  *(v6 + 16) = *(v5 + 16);
  *(*(a1 + 32) + 491) = 1;
  *(*(a1 + 32) + 408) = 1;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = *(a1 + 32);
  v9 = *(v8 + 168);
  *(v8 + 168) = v7;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = *(a1 + 32);
  v12 = *(v11 + 176);
  *(v11 + 176) = v10;

  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = *(a1 + 32);
  v15 = *(v14 + 184);
  *(v14 + 184) = v13;

  v16 = [*(*(a1 + 32) + 808) loadingResult];
  v17 = [v16 playerItem];
  v18 = *(a1 + 32);
  v19 = *(v18 + 336);
  *(v18 + 336) = v17;

  v20 = *(a1 + 32) + 360;
  result = *(a1 + 72);
  v22 = *(a1 + 56);
  *v20 = *(a1 + 40);
  *(v20 + 16) = v22;
  *(v20 + 32) = result;
  *(*(a1 + 32) + 680) = 0x3FF0000000000000;
  return result;
}

void __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) > 0.0)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:?];
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) setVideoPlayer:?];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C1B20]);
    [*(a1 + 32) setVideoPlayer:v3];
  }
}

void __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 208), *MEMORY[0x1E6958038]);
  *(*(a1 + 32) + 216) = 0;
  objc_storeStrong((*(a1 + 32) + 224), *MEMORY[0x1E6958130]);
  *(*(a1 + 32) + 232) = 0;
}

void __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _audioSessionQueue_initializeAudioSession];
}

void __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_5(uint64_t a1)
{
  v3 = [MEMORY[0x1E69C1B18] sharedInstanceWithKind:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSharedAudioSession:v3];
}

uint64_t __104__PXVideoSession_initWithContentProvider_videoPlayer_resourceReclamationController_playerCreationDelay___block_invoke_6(uint64_t a1)
{
  v2 = [[off_1E77217D0 alloc] initWithValue:0.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 776);
  *(v3 + 776) = v2;

  v5 = *(*(a1 + 32) + 776);

  return [v5 registerChangeObserver:? context:?];
}

@end