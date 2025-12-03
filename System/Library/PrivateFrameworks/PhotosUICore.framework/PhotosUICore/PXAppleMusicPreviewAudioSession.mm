@interface PXAppleMusicPreviewAudioSession
- (PXAppleMusicPreviewAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate;
- (void)_handleRequestedAsset:(id)asset audioMix:(id)mix info:(id)info resultHandler:(id)handler;
- (void)cancelMediaRequest;
- (void)requestMediaWithResultHandler:(id)handler;
@end

@implementation PXAppleMusicPreviewAudioSession

- (void)_handleRequestedAsset:(id)asset audioMix:(id)mix info:(id)info resultHandler:(id)handler
{
  assetCopy = asset;
  mixCopy = mix;
  infoCopy = info;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (assetCopy)
  {
    assetCopy;
    PXExists();
  }

  self->_requestID = 0;
  (*(handlerCopy + 2))(handlerCopy, 0, mixCopy, infoCopy);
}

void __85__PXAppleMusicPreviewAudioSession__handleRequestedAsset_audioMix_info_resultHandler___block_invoke_7(uint64_t a1)
{
  v2 = PLAudioPlaybackGetLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, OS_SIGNPOST_INTERVAL_END, v4, "PXAppleMusicPreviewAudioSessionLoadAssetKeys", " enableTelemetry=YES ", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleValuesLoadedForAsset:*(a1 + 40) audioMix:*(a1 + 48) info:*(a1 + 56) resultHandler:*(a1 + 64)];
}

- (void)cancelMediaRequest
{
  v3 = +[PXAppleMusicMediaProvider sharedInstance];
  [v3 cancelRequest:self->_requestID];
}

- (void)requestMediaWithResultHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_requestID)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(PXAudioRequestOptions);
    [(PXAudioRequestOptions *)v5 setIntent:1];
    CMTimeMakeWithSeconds(&v16, 1.0, PXAudioDefaultCMTimeScale);
    buf = v16;
    [(PXAudioRequestOptions *)v5 setFadeOutDuration:&buf];
    CMTimeMakeWithSeconds(&v14, 30.0, PXAudioDefaultCMTimeScale);
    buf = v14;
    [(PXAudioRequestOptions *)v5 setMaximumDuration:&buf];
    v6 = PLAudioPlaybackGetLog();
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PXAppleMusicPreviewAudioSessionRequestMedia", " enableTelemetry=YES ", &buf, 2u);
      }
    }

    v9 = +[PXAppleMusicMediaProvider sharedInstance];
    asset = [(PXAudioSession *)self asset];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PXAppleMusicPreviewAudioSession_requestMediaWithResultHandler___block_invoke;
    v11[3] = &unk_1E7737B28;
    v11[4] = self;
    objc_copyWeak(&v13, &location);
    v12 = handlerCopy;
    self->_requestID = [v9 requestMediaForAsset:asset options:v5 resultHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __65__PXAppleMusicPreviewAudioSession_requestMediaWithResultHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = PLAudioPlaybackGetLog();
  v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 32));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_END, v12, "PXAppleMusicPreviewAudioSessionRequestMedia", " enableTelemetry=YES ", v14, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleRequestedAsset:v9 audioMix:v8 info:v7 resultHandler:*(a1 + 40)];
}

- (PXAppleMusicPreviewAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = PXAppleMusicPreviewAudioSession;
  v8 = *time;
  result = [(PXAVPlayerAudioSession *)&v9 initWithAsset:asset volume:&v8 startTime:queue queue:delegate audioSessionDelegate:?];
  if (result)
  {
    result->_requestID = 0;
  }

  return result;
}

@end