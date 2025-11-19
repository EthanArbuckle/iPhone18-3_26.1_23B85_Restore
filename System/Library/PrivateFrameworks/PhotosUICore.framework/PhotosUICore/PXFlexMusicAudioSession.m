@interface PXFlexMusicAudioSession
- (PXFlexMusicAudioSession)initWithAsset:(id)a3 volume:(float)a4 startTime:(id *)a5 queue:(id)a6 audioSessionDelegate:(id)a7;
- (void)cancelMediaRequest;
- (void)dealloc;
- (void)requestMediaWithResultHandler:(id)a3;
@end

@implementation PXFlexMusicAudioSession

- (void)cancelMediaRequest
{
  v3 = +[PXFlexMusicMediaProvider sharedInstance];
  [v3 cancelRequest:{-[PXFlexMusicAudioSession audioRequestID](self, "audioRequestID")}];
}

- (void)requestMediaWithResultHandler:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PXFlexMusicLibrary sharedLibrary];
  v6 = [(PXFlexMusicAudioSession *)self flexMusicAsset];
  v7 = [v5 hasLocalResourceForAsset:v6 resourceType:2];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x1E6991F28];
    v24 = *MEMORY[0x1E6991E20];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v25[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v8 sendEvent:@"com.apple.photos.CPAnalytics.flexMusicDownloadRequiredAtPlaybackTime" withPayload:v11];
  }

  v22 = 0uLL;
  v23 = 0;
  v12 = [(PXFlexMusicAudioSession *)self flexMusicAsset];
  v13 = v12;
  if (v12)
  {
    [v12 targetDuration];
  }

  else
  {
    v22 = 0uLL;
    v23 = 0;
  }

  v14 = objc_alloc_init(PXAudioRequestOptions);
  v20 = v22;
  v21 = v23;
  [(PXAudioRequestOptions *)v14 setPreferredDuration:&v20];
  v15 = +[PXFlexMusicMediaProvider sharedInstance];
  v16 = [(PXFlexMusicAudioSession *)self flexMusicAsset];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__PXFlexMusicAudioSession_requestMediaWithResultHandler___block_invoke;
  v18[3] = &unk_1E7734BF0;
  v19 = v4;
  v17 = v4;
  -[PXFlexMusicAudioSession setAudioRequestID:](self, "setAudioRequestID:", [v15 requestMediaForAsset:v16 options:v14 resultHandler:v18]);
}

- (void)dealloc
{
  v3 = +[PXFlexMusicMediaProvider sharedInstance];
  [v3 cancelRequest:{-[PXFlexMusicAudioSession audioRequestID](self, "audioRequestID")}];

  v4.receiver = self;
  v4.super_class = PXFlexMusicAudioSession;
  [(PXAVPlayerAudioSession *)&v4 dealloc];
}

- (PXFlexMusicAudioSession)initWithAsset:(id)a3 volume:(float)a4 startTime:(id *)a5 queue:(id)a6 audioSessionDelegate:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXFlexMusicAudioSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:PXFlexMusicAsset.class]"}];
  }

  v21.receiver = self;
  v21.super_class = PXFlexMusicAudioSession;
  v19 = *&a5->var0;
  var3 = a5->var3;
  v16 = [(PXAVPlayerAudioSession *)&v21 initWithAsset:v13 volume:&v19 startTime:v14 queue:v15 audioSessionDelegate:COERCE_DOUBLE(__PAIR64__(DWORD1(v19), LODWORD(a4)))];

  return v16;
}

@end