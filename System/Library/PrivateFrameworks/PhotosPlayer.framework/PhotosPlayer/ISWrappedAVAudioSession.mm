@interface ISWrappedAVAudioSession
+ (ISWrappedAVAudioSession)sharedAmbientInstance;
+ (ISWrappedAVAudioSession)sharedVideoPlaybackInstance;
+ (id)auxiliarySession;
+ (id)sharedInstanceWithKind:(int64_t)kind;
+ (id)sharedMemoryPlaybackInstance;
+ (id)sharedPhotosOneUpInstance;
+ (void)sharedAmbientInstanceWithLoadHandler:(id)handler;
+ (void)sharedInstanceWithKind:(int64_t)kind loadHandler:(id)handler;
+ (void)sharedMemoryPlaybackInstanceWithLoadHandler:(id)handler;
+ (void)sharedPhotosOneUpInstanceWithLoadHandler:(id)handler;
+ (void)sharedVideoPlaybackInstanceWithLoadHandler:(id)handler;
- (BOOL)setCategory:(id)category error:(id *)error;
- (BOOL)setCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options error:(id *)error;
- (BOOL)setCategory:(id)category options:(unint64_t)options error:(id *)error;
- (ISWrappedAVAudioSession)initWithAudioSession:(id)session;
- (ISWrappedAVAudioSession)initWithAudioSession:(id)session category:(id)category;
- (void)_beginObservingOutputVolumeIfNeeded;
- (void)_endObservingOutputVolumeIfNeeded;
- (void)_main_informObserversOfVolumeChangeFrom:(float)from to:(float)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerVolumeObserver:(id)observer;
- (void)unregisterVolumeObserver:(id)observer;
@end

@implementation ISWrappedAVAudioSession

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v11 = changeCopy;
  if (OutputVolumeObservationContext == context)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ISWrappedAVAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v13[3] = &unk_279A2A348;
    v13[4] = self;
    v14 = changeCopy;
    is_dispatch_on_main_queue(v13);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ISWrappedAVAudioSession;
    [(ISWrappedAVAudioSession *)&v12 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
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

- (void)_main_informObserversOfVolumeChangeFrom:(float)from to:(float)to
{
  allObjects = [(NSHashTable *)self->_main_volumeObservers allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ISWrappedAVAudioSession__main_informObserversOfVolumeChangeFrom_to___block_invoke;
  v8[3] = &unk_279A2A108;
  v8[4] = self;
  fromCopy = from;
  toCopy = to;
  [allObjects enumerateObjectsUsingBlock:v8];
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

- (BOOL)setCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  modeCopy = mode;
  v14 = ISGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413314;
    v24 = categoryCopy;
    v25 = 2112;
    v26 = modeCopy;
    v27 = 2048;
    policyCopy = policy;
    v29 = 2048;
    optionsCopy = options;
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E667000, v14, OS_LOG_TYPE_DEFAULT, "Setting category (%@) mode (%@) routeSharingPolicy (%lu) options (%lu) on wrapped audio session %@", &v23, 0x34u);
  }

  v15 = [(AVAudioSession *)self->_audioSession setCategory:categoryCopy mode:modeCopy routeSharingPolicy:policy options:options error:error];
  if (v15)
  {
    v16 = [categoryCopy copy];
    expectedCategory = self->_expectedCategory;
    self->_expectedCategory = v16;

    v18 = [modeCopy copy];
    expectedMode = self->_expectedMode;
    self->_expectedMode = v18;
  }

  else
  {
    expectedMode = ISGetLog();
    if (os_log_type_enabled(expectedMode, OS_LOG_TYPE_ERROR))
    {
      v22 = *error;
      v23 = 138412290;
      v24 = v22;
      _os_log_error_impl(&dword_25E667000, expectedMode, OS_LOG_TYPE_ERROR, "Failed! %@", &v23, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)setCategory:(id)category options:(unint64_t)options error:(id *)error
{
  categoryCopy = category;
  v9 = [(AVAudioSession *)self->_audioSession setCategory:categoryCopy mode:*MEMORY[0x277CB80A8] routeSharingPolicy:0 options:options error:error];
  if (v9)
  {
    v10 = [categoryCopy copy];
    expectedCategory = self->_expectedCategory;
    self->_expectedCategory = v10;
  }

  return v9;
}

- (void)unregisterVolumeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ISWrappedAVAudioSession_unregisterVolumeObserver___block_invoke;
  v6[3] = &unk_279A2A348;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
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

- (void)registerVolumeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ISWrappedAVAudioSession_registerVolumeObserver___block_invoke;
  v6[3] = &unk_279A2A348;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
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

- (BOOL)setCategory:(id)category error:(id *)error
{
  categoryCopy = category;
  v7 = [(AVAudioSession *)self->_audioSession setCategory:categoryCopy error:error];
  if (v7)
  {
    v8 = [categoryCopy copy];
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

- (ISWrappedAVAudioSession)initWithAudioSession:(id)session category:(id)category
{
  sessionCopy = session;
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = ISWrappedAVAudioSession;
  v9 = [(ISWrappedAVAudioSession *)&v13 init];
  if (v9)
  {
    v10 = [categoryCopy copy];
    expectedCategory = v9->_expectedCategory;
    v9->_expectedCategory = v10;

    objc_storeStrong(&v9->_audioSession, session);
  }

  return v9;
}

- (ISWrappedAVAudioSession)initWithAudioSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = ISWrappedAVAudioSession;
  v6 = [(ISWrappedAVAudioSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedCategory, *MEMORY[0x277CB8020]);
    objc_storeStrong(&v7->_expectedMode, *MEMORY[0x277CB80A8]);
    objc_storeStrong(&v7->_audioSession, session);
  }

  return v7;
}

+ (id)auxiliarySession
{
  v2 = [self alloc];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  v4 = [v2 initWithAudioSession:auxiliarySession category:*MEMORY[0x277CB8020]];

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

+ (void)sharedPhotosOneUpInstanceWithLoadHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadOneUpInstance == 1)
    {
      sharedPhotosOneUpInstance = [self sharedPhotosOneUpInstance];
      handlerCopy[2](handlerCopy, sharedPhotosOneUpInstance);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __68__ISWrappedAVAudioSession_sharedPhotosOneUpInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = handlerCopy;
      selfCopy = self;
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

+ (void)sharedVideoPlaybackInstanceWithLoadHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadPlaybackInstance == 1)
    {
      sharedVideoPlaybackInstance = [self sharedVideoPlaybackInstance];
      handlerCopy[2](handlerCopy, sharedVideoPlaybackInstance);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __70__ISWrappedAVAudioSession_sharedVideoPlaybackInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = handlerCopy;
      selfCopy = self;
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

+ (void)sharedAmbientInstanceWithLoadHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadAmbientInstance == 1)
    {
      sharedAmbientInstance = [self sharedAmbientInstance];
      handlerCopy[2](handlerCopy, sharedAmbientInstance);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __64__ISWrappedAVAudioSession_sharedAmbientInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = handlerCopy;
      selfCopy = self;
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

+ (void)sharedMemoryPlaybackInstanceWithLoadHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (mainQueue_ISWrappedAVAudioSessionDidLoadAmbientInstance == 1)
    {
      sharedMemoryPlaybackInstance = [self sharedMemoryPlaybackInstance];
      handlerCopy[2](handlerCopy, sharedMemoryPlaybackInstance);
    }

    else
    {
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __71__ISWrappedAVAudioSession_sharedMemoryPlaybackInstanceWithLoadHandler___block_invoke;
      v7[3] = &unk_279A2A0E0;
      v8 = handlerCopy;
      selfCopy = self;
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

+ (void)sharedInstanceWithKind:(int64_t)kind loadHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (kind < 2)
  {
    [self sharedAmbientInstanceWithLoadHandler:handlerCopy];
    goto LABEL_6;
  }

  if (kind == 2)
  {
LABEL_6:
    [self sharedVideoPlaybackInstanceWithLoadHandler:v7];
    goto LABEL_7;
  }

  if (kind == 3)
  {
LABEL_7:
    [self sharedMemoryPlaybackInstanceWithLoadHandler:v7];
    handlerCopy = v7;
  }
}

+ (id)sharedInstanceWithKind:(int64_t)kind
{
  if (kind < 2)
  {
    sharedAmbientInstance = [self sharedAmbientInstance];
  }

  else if (kind == 2)
  {
    sharedAmbientInstance = [self sharedVideoPlaybackInstance];
  }

  else
  {
    if (kind != 3)
    {
      goto LABEL_8;
    }

    sharedAmbientInstance = [self sharedMemoryPlaybackInstance];
  }

  a2 = sharedAmbientInstance;
LABEL_8:

  return a2;
}

@end