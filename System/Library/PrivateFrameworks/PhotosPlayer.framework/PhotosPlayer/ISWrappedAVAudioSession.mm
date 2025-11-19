@interface ISWrappedAVAudioSession
+ (ISWrappedAVAudioSession)sharedAmbientInstance;
+ (ISWrappedAVAudioSession)sharedVideoPlaybackInstance;
+ (id)auxiliarySession;
+ (id)sharedInstanceWithKind:(int64_t)a3;
+ (id)sharedMemoryPlaybackInstance;
+ (id)sharedPhotosOneUpInstance;
+ (void)sharedAmbientInstanceWithLoadHandler:(id)a3;
+ (void)sharedInstanceWithKind:(int64_t)a3 loadHandler:(id)a4;
+ (void)sharedMemoryPlaybackInstanceWithLoadHandler:(id)a3;
+ (void)sharedPhotosOneUpInstanceWithLoadHandler:(id)a3;
+ (void)sharedVideoPlaybackInstanceWithLoadHandler:(id)a3;
- (BOOL)setCategory:(id)a3 error:(id *)a4;
- (BOOL)setCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6 error:(id *)a7;
- (BOOL)setCategory:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (ISWrappedAVAudioSession)initWithAudioSession:(id)a3;
- (ISWrappedAVAudioSession)initWithAudioSession:(id)a3 category:(id)a4;
- (void)_beginObservingOutputVolumeIfNeeded;
- (void)_endObservingOutputVolumeIfNeeded;
- (void)_main_informObserversOfVolumeChangeFrom:(float)a3 to:(float)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerVolumeObserver:(id)a3;
- (void)unregisterVolumeObserver:(id)a3;
@end

@implementation ISWrappedAVAudioSession

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = v10;
  if (OutputVolumeObservationContext == a6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ISWrappedAVAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v13[3] = &unk_279A2A348;
    v13[4] = self;
    v14 = v10;
    is_dispatch_on_main_queue(v13);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ISWrappedAVAudioSession;
    [(ISWrappedAVAudioSession *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

void __74__ISWrappedAVAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  [v9 floatValue];
  v4 = v3;
  v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  [v5 floatValue];
  LODWORD(v7) = v6;
  LODWORD(v8) = v4;
  [v2 _main_informObserversOfVolumeChangeFrom:v8 to:v7];
}

- (void)_main_informObserversOfVolumeChangeFrom:(float)a3 to:(float)a4
{
  v7 = [(NSHashTable *)self->_main_volumeObservers allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ISWrappedAVAudioSession__main_informObserversOfVolumeChangeFrom_to___block_invoke;
  v8[3] = &unk_279A2A108;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  [v7 enumerateObjectsUsingBlock:v8];
}

uint64_t __70__ISWrappedAVAudioSession__main_informObserversOfVolumeChangeFrom_to___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  LODWORD(a3) = *(a1 + 40);
  LODWORD(a4) = *(a1 + 44);
  return [a2 wrappedAudioSession:*(a1 + 32) didChangeVolumeFrom:a3 to:a4];
}

- (void)_endObservingOutputVolumeIfNeeded
{
  if (self->_didBeginObservingOutputVolume)
  {
    self->_didBeginObservingOutputVolume = 0;
    [(AVAudioSession *)self->_audioSession removeObserver:self forKeyPath:@"outputVolume" context:OutputVolumeObservationContext];
  }
}

- (void)_beginObservingOutputVolumeIfNeeded
{
  if (!self->_didBeginObservingOutputVolume)
  {
    self->_didBeginObservingOutputVolume = 1;
    [(AVAudioSession *)self->_audioSession addObserver:self forKeyPath:@"outputVolume" options:3 context:OutputVolumeObservationContext];
  }
}

- (BOOL)setCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6 error:(id *)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = ISGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413314;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2048;
    v28 = a5;
    v29 = 2048;
    v30 = a6;
    v31 = 2112;
    v32 = self;
    _os_log_impl(&dword_25E667000, v14, OS_LOG_TYPE_DEFAULT, "Setting category (%@) mode (%@) routeSharingPolicy (%lu) options (%lu) on wrapped audio session %@", &v23, 0x34u);
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategory:v12 mode:v13 routeSharingPolicy:a5 options:a6 error:a7];
  if (v15)
  {
    v16 = [v12 copy];
    expectedCategory = self->_expectedCategory;
    self->_expectedCategory = v16;

    v18 = [v13 copy];
    expectedMode = self->_expectedMode;
    self->_expectedMode = v18;
  }

  else
  {
    expectedMode = ISGetLog();
    if (os_log_type_enabled(expectedMode, OS_LOG_TYPE_ERROR))
    {
      v22 = *a7;
      v23 = 138412290;
      v24 = v22;
      _os_log_error_impl(&dword_25E667000, expectedMode, OS_LOG_TYPE_ERROR, "Failed! %@", &v23, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)setCategory:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(AVAudioSession *)self->_audioSession setCategory:v8 mode:*MEMORY[0x277CB80A8] routeSharingPolicy:0 options:a4 error:a5];
  if (v9)
  {
    v10 = [v8 copy];
    expectedCategory = self->_expectedCategory;
    self->_expectedCategory = v10;
  }

  return v9;
}

- (void)unregisterVolumeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ISWrappedAVAudioSession_unregisterVolumeObserver___block_invoke;
  v6[3] = &unk_279A2A348;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  is_dispatch_on_main_queue(v6);
}

uint64_t __52__ISWrappedAVAudioSession_unregisterVolumeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _endObservingOutputVolumeIfNeeded];
  }

  return result;
}

- (void)registerVolumeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ISWrappedAVAudioSession_registerVolumeObserver___block_invoke;
  v6[3] = &unk_279A2A348;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  is_dispatch_on_main_queue(v6);
}

uint64_t __50__ISWrappedAVAudioSession_registerVolumeObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);

  return [v6 _beginObservingOutputVolumeIfNeeded];
}

- (BOOL)setCategory:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVAudioSession *)self->_audioSession setCategory:v6 error:a4];
  if (v7)
  {
    v8 = [v6 copy];
    expectedCategory = self->_expectedCategory;
    self->_expectedCategory = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(ISWrappedAVAudioSession *)self _endObservingOutputVolumeIfNeeded];
  v3 = self->_audioSession;
  v4 = +[ISDeferredDealloc sharedInstance];
  [v4 _performDeferredDealloc:v3];

  v5.receiver = self;
  v5.super_class = ISWrappedAVAudioSession;
  [(ISWrappedAVAudioSession *)&v5 dealloc];
}

- (ISWrappedAVAudioSession)initWithAudioSession:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ISWrappedAVAudioSession;
  v9 = [(ISWrappedAVAudioSession *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    expectedCategory = v9->_expectedCategory;
    v9->_expectedCategory = v10;

    objc_storeStrong(&v9->_audioSession, a3);
  }

  return v9;
}

- (ISWrappedAVAudioSession)initWithAudioSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISWrappedAVAudioSession;
  v6 = [(ISWrappedAVAudioSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedCategory, *MEMORY[0x277CB8020]);
    objc_storeStrong(&v7->_expectedMode, *MEMORY[0x277CB80A8]);
    objc_storeStrong(&v7->_audioSession, a3);
  }

  return v7;
}

+ (id)auxiliarySession
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CB83F8] auxiliarySession];
  v4 = [v2 initWithAudioSession:v3 category:*MEMORY[0x277CB8020]];

  return v4;
}

+ (id)sharedPhotosOneUpInstance
{
  if (sharedPhotosOneUpInstance_onceToken != -1)
  {
    dispatch_once(&sharedPhotosOneUpInstance_onceToken, &__block_literal_global_14);
  }

  v3 = sharedPhotosOneUpInstance_sharedVideoPlaybackInstance;

  return v3;
}

void __52__ISWrappedAVAudioSession_sharedPhotosOneUpInstance__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = +[ISWrappedAVAudioSession auxiliarySession];
  v1 = sharedPhotosOneUpInstance_sharedVideoPlaybackInstance;
  sharedPhotosOneUpInstance_sharedVideoPlaybackInstance = v0;

  v2 = *MEMORY[0x277CB8020];
  v3 = *MEMORY[0x277CB80A8];
  v8 = 0;
  v4 = [sharedPhotosOneUpInstance_sharedVideoPlaybackInstance setCategory:v2 mode:v3 routeSharingPolicy:0 options:0 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = ISGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_25E667000, v6, OS_LOG_TYPE_ERROR, "Unable to configure Playback audio session. Error: %@", buf, 0xCu);
    }
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_17);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)sharedPhotosOneUpInstanceWithLoadHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadOneUpInstance == 1)
    {
      v5 = [a1 sharedPhotosOneUpInstance];
      v4[2](v4, v5);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __68__ISWrappedAVAudioSession_sharedPhotosOneUpInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = v4;
      v9 = a1;
      dispatch_async(v6, v7);
    }
  }
}

void __68__ISWrappedAVAudioSession_sharedPhotosOneUpInstanceWithLoadHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sharedPhotosOneUpInstance];
  (*(v1 + 16))(v1, v2);
}

+ (void)sharedVideoPlaybackInstanceWithLoadHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadPlaybackInstance == 1)
    {
      v5 = [a1 sharedVideoPlaybackInstance];
      v4[2](v4, v5);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __70__ISWrappedAVAudioSession_sharedVideoPlaybackInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = v4;
      v9 = a1;
      dispatch_async(v6, v7);
    }
  }
}

void __70__ISWrappedAVAudioSession_sharedVideoPlaybackInstanceWithLoadHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sharedVideoPlaybackInstance];
  (*(v1 + 16))(v1, v2);
}

+ (ISWrappedAVAudioSession)sharedVideoPlaybackInstance
{
  if (sharedVideoPlaybackInstance_onceToken != -1)
  {
    dispatch_once(&sharedVideoPlaybackInstance_onceToken, &__block_literal_global_9);
  }

  v3 = sharedVideoPlaybackInstance_sharedVideoPlaybackInstance;

  return v3;
}

void __54__ISWrappedAVAudioSession_sharedVideoPlaybackInstance__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = +[ISWrappedAVAudioSession auxiliarySession];
  v1 = sharedVideoPlaybackInstance_sharedVideoPlaybackInstance;
  sharedVideoPlaybackInstance_sharedVideoPlaybackInstance = v0;

  v2 = *MEMORY[0x277CB8020];
  v3 = *MEMORY[0x277CB80A8];
  v8 = 0;
  v4 = [sharedVideoPlaybackInstance_sharedVideoPlaybackInstance setCategory:v2 mode:v3 routeSharingPolicy:0 options:0 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = ISGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_25E667000, v6, OS_LOG_TYPE_ERROR, "Unable to configure Playback audio session. Error: %@", buf, 0xCu);
    }
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_12);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)sharedAmbientInstanceWithLoadHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadAmbientInstance == 1)
    {
      v5 = [a1 sharedAmbientInstance];
      v4[2](v4, v5);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __64__ISWrappedAVAudioSession_sharedAmbientInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = v4;
      v9 = a1;
      dispatch_async(v6, v7);
    }
  }
}

void __64__ISWrappedAVAudioSession_sharedAmbientInstanceWithLoadHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sharedAmbientInstance];
  (*(v1 + 16))(v1, v2);
}

+ (ISWrappedAVAudioSession)sharedAmbientInstance
{
  if (sharedAmbientInstance_onceToken != -1)
  {
    dispatch_once(&sharedAmbientInstance_onceToken, &__block_literal_global_4);
  }

  v3 = sharedAmbientInstance_sharedAmbientInstance;

  return v3;
}

void __48__ISWrappedAVAudioSession_sharedAmbientInstance__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = +[ISWrappedAVAudioSession auxiliarySession];
  v1 = sharedAmbientInstance_sharedAmbientInstance;
  sharedAmbientInstance_sharedAmbientInstance = v0;

  v2 = *MEMORY[0x277CB8020];
  v3 = *MEMORY[0x277CB80A8];
  v8 = 0;
  v4 = [sharedAmbientInstance_sharedAmbientInstance setCategory:v2 mode:v3 routeSharingPolicy:0 options:0 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = ISGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_25E667000, v6, OS_LOG_TYPE_ERROR, "Unable to configure Ambient audio session. Error: %@", buf, 0xCu);
    }
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_7);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)sharedMemoryPlaybackInstanceWithLoadHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadAmbientInstance == 1)
    {
      v5 = [a1 sharedMemoryPlaybackInstance];
      v4[2](v4, v5);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __71__ISWrappedAVAudioSession_sharedMemoryPlaybackInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = v4;
      v9 = a1;
      dispatch_async(v6, v7);
    }
  }
}

void __71__ISWrappedAVAudioSession_sharedMemoryPlaybackInstanceWithLoadHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sharedMemoryPlaybackInstance];
  (*(v1 + 16))(v1, v2);
}

+ (id)sharedMemoryPlaybackInstance
{
  if (sharedMemoryPlaybackInstance_onceToken != -1)
  {
    dispatch_once(&sharedMemoryPlaybackInstance_onceToken, &__block_literal_global_3928);
  }

  v3 = sharedMemoryPlaybackInstance_sharedMemoryPlaybackInstance;

  return v3;
}

void __55__ISWrappedAVAudioSession_sharedMemoryPlaybackInstance__block_invoke()
{
  v0 = +[ISWrappedAVAudioSession auxiliarySession];
  v1 = sharedMemoryPlaybackInstance_sharedMemoryPlaybackInstance;
  sharedMemoryPlaybackInstance_sharedMemoryPlaybackInstance = v0;

  v2 = MEMORY[0x277D85CD0];

  dispatch_async(v2, &__block_literal_global_2);
}

+ (void)sharedInstanceWithKind:(int64_t)a3 loadHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 < 2)
  {
    [a1 sharedAmbientInstanceWithLoadHandler:v6];
    goto LABEL_6;
  }

  if (a3 == 2)
  {
LABEL_6:
    [a1 sharedVideoPlaybackInstanceWithLoadHandler:v7];
    goto LABEL_7;
  }

  if (a3 == 3)
  {
LABEL_7:
    [a1 sharedMemoryPlaybackInstanceWithLoadHandler:v7];
    v6 = v7;
  }
}

+ (id)sharedInstanceWithKind:(int64_t)a3
{
  if (a3 < 2)
  {
    v3 = [a1 sharedAmbientInstance];
  }

  else if (a3 == 2)
  {
    v3 = [a1 sharedVideoPlaybackInstance];
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_8;
    }

    v3 = [a1 sharedMemoryPlaybackInstance];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

@end