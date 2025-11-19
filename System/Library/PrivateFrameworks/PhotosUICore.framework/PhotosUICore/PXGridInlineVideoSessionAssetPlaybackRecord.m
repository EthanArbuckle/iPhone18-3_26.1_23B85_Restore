@interface PXGridInlineVideoSessionAssetPlaybackRecord
+ (OS_dispatch_queue)videoSessionQueue;
- (CGAffineTransform)preferredTransform;
- (NSString)videoStatusDescription;
- (PXGridInlineVideoSessionAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 spriteReference:(id)a5 playLivePhotosWithSettlingEffectIfPossible:(BOOL)a6;
- (PXVideoSession)videoSession;
- (__CVBuffer)currentPixelBuffer;
- (void)_configureVideoSession:(id)a3;
- (void)_setCurrentPixelBuffer:(__CVBuffer *)a3;
- (void)_videoQueue_ensureVideoSessionWithDesiredPlayState:(int64_t)a3;
- (void)_videoQueue_relinquishVideoSession;
- (void)_videoQueue_updateCurrentPixelBuffer;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForInvisible;
- (void)prepareForVisible;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setVideoSession:(id)a3;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXGridInlineVideoSessionAssetPlaybackRecordVideoSessionObservableContext != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGridInlineVideoSessionAssetPlaybackRecord.m" lineNumber:258 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if ((v6 & 0x400) != 0)
  {
    objc_initWeak(&location, self);
    v11 = [objc_opt_class() videoSessionQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PXGridInlineVideoSessionAssetPlaybackRecord_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E774C318;
    objc_copyWeak(&v14, &location);
    dispatch_async(v11, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __76__PXGridInlineVideoSessionAssetPlaybackRecord_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _videoQueue_updateCurrentPixelBuffer];
}

- (void)setVideoSession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  videoSession = self->_videoSession;
  self->_videoSession = v4;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (PXVideoSession)videoSession
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_videoSession;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (void)_setCurrentPixelBuffer:(__CVBuffer *)a3
{
  os_unfair_lock_lock(&self->_ivarLock);
  currentPixelBuffer = self->_currentPixelBuffer;
  if (currentPixelBuffer == a3)
  {

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    CVPixelBufferRelease(currentPixelBuffer);
    self->_currentPixelBuffer = CVPixelBufferRetain(a3);
    os_unfair_lock_unlock(&self->_ivarLock);
    v6 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self pixelBufferDidChangeHandler];

    if (v6)
    {
      v7 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self pixelBufferDidChangeHandler];
      v7[2]();
    }
  }
}

- (void)_videoQueue_updateCurrentPixelBuffer
{
  v3 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  v4 = [v3 currentPixelBuffer];

  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self _setCurrentPixelBuffer:v4];
}

- (void)_configureVideoSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setVolume:1 withFade:0.0];
    [v5 setPreventsSleepDuringVideoPlayback:0];
    [v5 setAllowsExternalPlayback:0];
    v6 = [(PXGridInlinePlaybackRecord *)self displayAsset];
    v7 = [v6 playbackStyle];

    if (v7 == 5 || v7 == 3)
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
  v4 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  [v4 cancelPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier];
  v3 = +[PXVideoSessionManager sharedInstance];
  [v3 checkInVideoSession:v4];

  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self setVideoSession:0];
  [(PXGridInlineVideoSessionAssetPlaybackRecord *)self _setCurrentPixelBuffer:0];
}

- (void)_videoQueue_ensureVideoSessionWithDesiredPlayState:(int64_t)a3
{
  v5 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  if (!v5)
  {
    v6 = [(PXGridInlinePlaybackRecord *)self displayAsset];
    v7 = [v6 playbackStyle];
    v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldPlayLivePhotosWithSettlingEffectIfPossible:self->_playLivePhotosWithSettlingEffectIfPossible];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldStabilizeLivePhotosIfPossible:1];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setIsAudioAllowed:v7 != 3];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldCrossfadeLivePhotosWhenLooping:1];
    [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
    v14[0] = v14[3];
    v14[1] = v14[4];
    v14[2] = v14[5];
    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setLivePhotoLoopTimeRange:v14];
    if (v7 == 5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(PXVideoSessionManagerDisplayAssetOptions *)v8 setAudioSessionKind:v9];
    v10 = +[PXVideoSessionManager sharedInstance];
    v11 = [(PXGridInlinePlaybackRecord *)self displayAsset];
    v12 = [(PXGridInlinePlaybackRecord *)self mediaProvider];
    v5 = [v10 videoSessionForAsset:v11 withOptions:v8 mediaProvider:v12];

    if ([v6 playbackStyle] != 3)
    {
      [v5 prewarmVideoView];
    }

    [v5 loadIfNeededWithPriority:0];
    [v5 registerChangeObserver:self context:PXGridInlineVideoSessionAssetPlaybackRecordVideoSessionObservableContext];
    [v5 requestPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier maxOutputSize:{1920.0, 1080.0}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __98__PXGridInlineVideoSessionAssetPlaybackRecord__videoQueue_ensureVideoSessionWithDesiredPlayState___block_invoke;
    v13[3] = &unk_1E7731640;
    v13[4] = self;
    v13[5] = a3;
    [v5 performChanges:v13 withPresentationContext:0 presenter:0];
    [(PXGridInlineVideoSessionAssetPlaybackRecord *)self setVideoSession:v5];
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
  v3 = [objc_opt_class() videoSessionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXGridInlineVideoSessionAssetPlaybackRecord_prepareForInvisible__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)prepareForVisible
{
  if (!self->_playLivePhotosWithSettlingEffectIfPossible)
  {
    v3 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self desiredPlayState];
    v4 = [objc_opt_class() videoSessionQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PXGridInlineVideoSessionAssetPlaybackRecord_prepareForVisible__block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

- (void)setDesiredPlayState:(int64_t)a3
{
  self->_desiredPlayState = a3;
  v5 = [objc_opt_class() videoSessionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PXGridInlineVideoSessionAssetPlaybackRecord_setDesiredPlayState___block_invoke;
  v6[3] = &unk_1E77498A0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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
  v2 = [(PXGridInlineVideoSessionAssetPlaybackRecord *)self videoSession];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 statusDescription];
  }

  else
  {
    v4 = @"Video Not Loaded";
  }

  return v4;
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

- (PXGridInlineVideoSessionAssetPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 spriteReference:(id)a5 playLivePhotosWithSettlingEffectIfPossible:(BOOL)a6
{
  v10 = a3;
  v24.receiver = self;
  v24.super_class = PXGridInlineVideoSessionAssetPlaybackRecord;
  v11 = [(PXGridInlinePlaybackRecord *)&v24 initWithDisplayAsset:v10 mediaProvider:a4 geometryReference:a5];
  v12 = v11;
  if (v11)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v11, v10);
    v12->_ivarLock._os_unfair_lock_opaque = 0;
    v12->_playLivePhotosWithSettlingEffectIfPossible = a6;
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    v18 = [v13 stringWithFormat:@"%@-%@", v15, v17];

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