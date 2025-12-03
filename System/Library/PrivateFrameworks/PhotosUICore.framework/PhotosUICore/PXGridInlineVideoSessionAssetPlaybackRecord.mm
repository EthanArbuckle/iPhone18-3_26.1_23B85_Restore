@interface PXGridInlineVideoSessionAssetPlaybackRecord
+ (OS_dispatch_queue)videoSessionQueue;
- (CGAffineTransform)preferredTransform;
- (NSString)videoStatusDescription;
- (PXGridInlineVideoSessionAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider spriteReference:(id)reference playLivePhotosWithSettlingEffectIfPossible:(BOOL)possible;
- (PXVideoSession)videoSession;
- (__CVBuffer)currentPixelBuffer;
- (void)_configureVideoSession:(id)session;
- (void)_setCurrentPixelBuffer:(__CVBuffer *)buffer;
- (void)_videoQueue_ensureVideoSessionWithDesiredPlayState:(int64_t)state;
- (void)_videoQueue_relinquishVideoSession;
- (void)_videoQueue_updateCurrentPixelBuffer;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForInvisible;
- (void)prepareForVisible;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setVideoSession:(id)session;
@end

@implementation PXGridInlineVideoSessionAssetPlaybackRecord

- (CGAffineTransform)preferredTransform
{
  os_unfair_lock_lock(&self->_ivarLock);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  videoSession = self->_videoSession;
  if (videoSession)
  {
    [(PXVideoSession *)videoSession preferredTransform];
  }

  os_unfair_lock_unlock(&self->_ivarLock);
  return result;
}

- (__CVBuffer)currentPixelBuffer
{
  os_unfair_lock_lock(&self->_ivarLock);
  currentPixelBuffer = self->_currentPixelBuffer;
  os_unfair_lock_unlock(&self->_ivarLock);
  return currentPixelBuffer;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXGridInlineVideoSessionAssetPlaybackRecordVideoSessionObservableContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGridInlineVideoSessionAssetPlaybackRecord.m" lineNumber:258 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 0x400) != 0)
  {
    objc_initWeak(&location, self);
    videoSessionQueue = [objc_opt_class() videoSessionQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PXGridInlineVideoSessionAssetPlaybackRecord_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E774C318;
    objc_copyWeak(&v14, &location);
    dispatch_async(videoSessionQueue, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __76__PXGridInlineVideoSessionAssetPlaybackRecord_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _videoQueue_updateCurrentPixelBuffer];
}

- (void)setVideoSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_ivarLock);
  videoSession = self->_videoSession;
  self->_videoSession = sessionCopy;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (PXVideoSession)videoSession
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_videoSession;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (void)_setCurrentPixelBuffer:(__CVBuffer *)buffer
{
  os_unfair_lock_lock(&self->_ivarLock);
  currentPixelBuffer = self->_currentPixelBuffer;
  if (currentPixelBuffer == buffer)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    CVPixelBufferRelease(currentPixelBuffer);
    self->_currentPixelBuffer = CVPixelBufferRetain(buffer);
    os_unfair_lock_unlock(&self->_ivarLock);
    pixelBufferDidChangeHandler = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self pixelBufferDidChangeHandler];

    if (pixelBufferDidChangeHandler)
    {
      pixelBufferDidChangeHandler2 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self pixelBufferDidChangeHandler];
      pixelBufferDidChangeHandler2[2]();
    }
  }
}

- (void)_videoQueue_updateCurrentPixelBuffer
{
  videoSession = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  currentPixelBuffer = [videoSession currentPixelBuffer];

  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self _setCurrentPixelBuffer:currentPixelBuffer];
}

- (void)_configureVideoSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (sessionCopy)
  {
    [sessionCopy setVolume:1 withFade:0.0];
    [v5 setPreventsSleepDuringVideoPlayback:0];
    [v5 setAllowsExternalPlayback:0];
    displayAsset = [(PXGridInlinePlaybackRecord *)self displayAsset];
    playbackStyle = [displayAsset playbackStyle];

    if (playbackStyle == 5 || playbackStyle == 3)
    {
      v8 = *(MEMORY[0x1E6960C98] + 16);
      v12 = *MEMORY[0x1E6960C98];
      v13 = v8;
      v14 = *(MEMORY[0x1E6960C98] + 32);
      [v5 setPlaybackTimeRange:&v12];
      [v5 setLoopingEnabled:1];
    }

    else
    {
      [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      [v5 setPlaybackTimeRange:&v12];
      [v5 setSeekToBeginningAtEnd:1];
    }
  }
}

- (void)_videoQueue_relinquishVideoSession
{
  videoSession = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  [videoSession cancelPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier];
  v3 = +[PXVideoSessionManager sharedInstance];
  [v3 checkInVideoSession:videoSession];

  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self setVideoSession:0];
  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self _setCurrentPixelBuffer:0];
}

- (void)_videoQueue_ensureVideoSessionWithDesiredPlayState:(int64_t)state
{
  videoSession = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  if (!videoSession)
  {
    displayAsset = [(PXGridInlinePlaybackRecord *)self displayAsset];
    playbackStyle = [displayAsset playbackStyle];
    v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldPlayLivePhotosWithSettlingEffectIfPossible:self->_playLivePhotosWithSettlingEffectIfPossible];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldStabilizeLivePhotosIfPossible:1];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setIsAudioAllowed:playbackStyle != 3];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldCrossfadeLivePhotosWhenLooping:1];
    [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
    v14[0] = v14[3];
    v14[1] = v14[4];
    v14[2] = v14[5];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setLivePhotoLoopTimeRange:v14];
    if (playbackStyle == 5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setAudioSessionKind:v9];
    v10 = +[PXVideoSessionManager sharedInstance];
    displayAsset2 = [(PXGridInlinePlaybackRecord *)self displayAsset];
    mediaProvider = [(PXGridInlinePlaybackRecord *)self mediaProvider];
    videoSession = [v10 videoSessionForAsset:displayAsset2 withOptions:v8 mediaProvider:mediaProvider];

    if ([displayAsset playbackStyle] != 3)
    {
      [videoSession prewarmVideoView];
    }

    [videoSession loadIfNeededWithPriority:0];
    [videoSession registerChangeObserver:self context:PXGridInlineVideoSessionAssetPlaybackRecordVideoSessionObservableContext];
    [videoSession requestPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier maxOutputSize:{1920.0, 1080.0}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __98__PXGridInlineVideoSessionAssetPlaybackRecord__videoQueue_ensureVideoSessionWithDesiredPlayState___block_invoke;
    v13[3] = &unk_1E7731640;
    v13[4] = self;
    v13[5] = state;
    [videoSession performChanges:v13 withPresentationContext:0 presenter:0];
    [(PXGridInlineVideoSessionAssetPlaybackRecord *)self setVideoSession:videoSession];
  }
}

void __98__PXGridInlineVideoSessionAssetPlaybackRecord__videoQueue_ensureVideoSessionWithDesiredPlayState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setDesiredPlayState:v3];
  [*(a1 + 32) _configureVideoSession:v4];
}

- (void)prepareForInvisible
{
  videoSessionQueue = [objc_opt_class() videoSessionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXGridInlineVideoSessionAssetPlaybackRecord_prepareForInvisible__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(videoSessionQueue, block);
}

- (void)prepareForVisible
{
  if (!self->_playLivePhotosWithSettlingEffectIfPossible)
  {
    desiredPlayState = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self desiredPlayState];
    videoSessionQueue = [objc_opt_class() videoSessionQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PXGridInlineVideoSessionAssetPlaybackRecord_prepareForVisible__block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = desiredPlayState;
    dispatch_async(videoSessionQueue, v5);
  }
}

- (void)setDesiredPlayState:(int64_t)state
{
  self->_desiredPlayState = state;
  videoSessionQueue = [objc_opt_class() videoSessionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PXGridInlineVideoSessionAssetPlaybackRecord_setDesiredPlayState___block_invoke;
  v6[3] = &unk_1E77498A0;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(videoSessionQueue, v6);
}

void __67__PXGridInlineVideoSessionAssetPlaybackRecord_setDesiredPlayState___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    [v2 _videoQueue_ensureVideoSessionWithDesiredPlayState:1];
  }

  else if ([v2 discardVideoOnPause])
  {
    [*(a1 + 32) _videoQueue_relinquishVideoSession];
  }

  v4 = [*(a1 + 32) videoSession];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PXGridInlineVideoSessionAssetPlaybackRecord_setDesiredPlayState___block_invoke_2;
  v5[3] = &__block_descriptor_40_e33_v16__0___PXMutableVideoSession__8l;
  v5[4] = *(a1 + 40);
  [v4 performChanges:v5 withPresentationContext:0 presenter:0];
}

- (NSString)videoStatusDescription
{
  videoSession = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  v3 = videoSession;
  if (videoSession)
  {
    statusDescription = [videoSession statusDescription];
  }

  else
  {
    statusDescription = @"Video Not Loaded";
  }

  return statusDescription;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_ivarLock);
  currentPixelBuffer = self->_currentPixelBuffer;
  v4 = self->_videoSession;
  os_unfair_lock_unlock(&self->_ivarLock);
  CVPixelBufferRelease(currentPixelBuffer);
  [(PXVideoSession *)v4 cancelPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier];
  v5 = +[PXVideoSessionManager sharedInstance];
  [v5 checkInVideoSession:v4];

  v6.receiver = self;
  v6.super_class = PXGridInlineVideoSessionAssetPlaybackRecord;
  [(PXGridInlineVideoSessionAssetPlaybackRecord *)&v6 dealloc];
}

- (PXGridInlineVideoSessionAssetPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider spriteReference:(id)reference playLivePhotosWithSettlingEffectIfPossible:(BOOL)possible
{
  assetCopy = asset;
  v24.receiver = self;
  v24.super_class = PXGridInlineVideoSessionAssetPlaybackRecord;
  v11 = [(PXGridInlinePlaybackRecord *)&v24 initWithDisplayAsset:assetCopy mediaProvider:provider geometryReference:reference];
  v12 = v11;
  if (v11)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v11, assetCopy);
    v12->_ivarLock._os_unfair_lock_opaque = 0;
    v12->_playLivePhotosWithSettlingEffectIfPossible = possible;
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [v13 stringWithFormat:@"%@-%@", v15, uUIDString];

    if (v12->_playLivePhotosWithSettlingEffectIfPossible)
    {
      v19 = [v18 stringByAppendingString:@"-FRCWallpaper"];

      v18 = v19;
    }

    bufferRequestIdentifier = v12->_bufferRequestIdentifier;
    v12->_bufferRequestIdentifier = v18;

    if (v12->_playLivePhotosWithSettlingEffectIfPossible)
    {
      v21 = *(MEMORY[0x1E6960C98] + 16);
      v23[0] = *MEMORY[0x1E6960C98];
      v23[1] = v21;
      v23[2] = *(MEMORY[0x1E6960C98] + 32);
      [(PXGridInlinePlaybackRecord *)v12 setBestVideoTimeRange:v23];
    }
  }

  return v12;
}

+ (OS_dispatch_queue)videoSessionQueue
{
  if (videoSessionQueue_onceToken != -1)
  {
    dispatch_once(&videoSessionQueue_onceToken, &__block_literal_global_41160);
  }

  v3 = videoSessionQueue_videoSessionQueue;

  return v3;
}

@end