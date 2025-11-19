@interface PTEffect
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithFormat:(opaqueCMFormatDescription *)a3 metalCommandQueue:(id)a4 effectType:(unint64_t)a5 sharedResources:(id)a6;
+ (void)_createQueuesIfNotProvidedOnDescriptor:(id)a3 orCopyFromPreviousDescriptor:(id)a4;
+ (void)prewarmForCameraCaptured;
- (BOOL)isRenderRequiredForRequest:(id)a3;
- (BOOL)validPixelBuffer:(__CVBuffer *)a3;
- (PTEffect)initWithDescriptor:(id)a3;
- (PTEffect)initWithDescriptor:(id)a3 sharedResources:(id)a4;
- (PTEffect)initWithFormat:(opaqueCMFormatDescription *)a3 metalCommandQueue:(id)a4 availableEffectTypes:(unint64_t)a5 activeEffectType:(unint64_t)a6 prewarmOnly:(BOOL)a7 effectQuality:(int64_t)a8;
- (id)activeReactions;
- (id)reconfigureWithNewSize:(id)a3;
- (int)_setEffectType:(unint64_t)a3;
- (int)reconfigure:(id)a3 isInitialized:(BOOL)a4;
- (int)render:(id)a3;
- (int)renderReaction:(id)a3 effectRenderRequest:(id)a4;
- (int)updateEffectDelegate:(BOOL)a3;
- (int)waitForInitialization;
- (void)_setEffectQuality:(int64_t)a3;
- (void)dealloc;
- (void)keepOldDelegateAlive:(id)a3;
- (void)removeAllActiveReactions;
- (void)resetIfNeeded;
- (void)setDebug:(int64_t)a3;
- (void)updateHumanDetections:(id)a3;
@end

@implementation PTEffect

- (PTEffect)initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PTEffect *)self initWithDescriptor:v4 sharedResources:v5];

  return v6;
}

- (PTEffect)initWithDescriptor:(id)a3 sharedResources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = PTEffect;
  v8 = [(PTEffect *)&v36 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_25;
  }

  PTKTraceInit();
  [(PTEffect *)v8 reset];
  if ([v6 prewarmOnly] && (objc_msgSend(v6, "availableEffectTypes") & 4) != 0)
  {
    [v6 setSyncInitialization:1];
  }

  [PTEffect _createQueuesIfNotProvidedOnDescriptor:v6 orCopyFromPreviousDescriptor:0];
  v10 = [v6 copy];
  effectDescriptor = v8->_effectDescriptor;
  v8->_effectDescriptor = v10;

  v8->_frameId = 0;
  v8->_debugType = 0;
  v8->_delegateLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v8->_resources, a4);
  [(PTEffectDescriptor *)v8->_effectDescriptor setAvailableEffectTypes:[(PTEffectDescriptor *)v8->_effectDescriptor availableEffectTypes]| [(PTEffectDescriptor *)v8->_effectDescriptor activeEffectType]];
  v12 = [(PTEffectDescriptor *)v8->_effectDescriptor metalCommandQueue];

  if (v12)
  {
    v13 = [PTMetalContext alloc];
    v14 = [(PTEffectDescriptor *)v9->_effectDescriptor metalCommandQueue];
    v15 = [(PTMetalContext *)v13 initWithCommandQueue:v14 bundleClass:objc_opt_class()];
    metalContext = v9->_metalContext;
    v9->_metalContext = v15;

    v9->_hasExternalCommandQueue = 1;
  }

  else
  {
    v17 = MTLCreateSystemDefaultDevice();
    v18 = [PTMetalContext alloc];
    v19 = [v17 newCommandQueue];
    v20 = [(PTMetalContext *)v18 initWithCommandQueue:v19 bundleClass:objc_opt_class()];
    v21 = v9->_metalContext;
    v9->_metalContext = v20;

    v22 = [(PTMetalContext *)v9->_metalContext commandQueue];
    [v22 setGPUPriority:4];

    v23 = [(PTMetalContext *)v9->_metalContext commandQueue];
    [(PTEffectDescriptor *)v9->_effectDescriptor setMetalCommandQueue:v23];

    v9->_hasExternalCommandQueue = 0;
  }

  [(PTMetalContext *)v9->_metalContext setAllowCommandbufferAllocation:0];
  v24 = [v7 util];

  if (!v24)
  {
    v25 = [[PTUtil alloc] initWithMetalContext:v9->_metalContext];
    [v7 setUtil:v25];

    v26 = [v7 util];

    if (!v26)
    {
      v33 = _PTLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [PTEffect initWithDescriptor:sharedResources:];
      }

      goto LABEL_24;
    }
  }

  v27 = [v7 effectUtil];

  if (!v27)
  {
    v28 = [[PTEffectUtil alloc] initWithMetalContext:v9->_metalContext];
    [v7 setEffectUtil:v28];

    v29 = [v7 effectUtil];

    if (!v29)
    {
      v33 = _PTLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [PTEffect initWithDescriptor:sharedResources:];
      }

      goto LABEL_24;
    }
  }

  v30 = [[PTHumanDetections alloc] initWithMetalContext:v9->_metalContext];
  humanDetections = v9->_humanDetections;
  v9->_humanDetections = v30;

  if (!v9->_humanDetections)
  {
    v33 = _PTLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PTEffect initWithDescriptor:sharedResources:];
    }

LABEL_24:

LABEL_25:
    v34 = 0;
    goto LABEL_26;
  }

  if ([(PTEffect *)v9 reconfigure:v9->_effectDescriptor isInitialized:0])
  {
    v32 = _PTLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTEffect initWithDescriptor:sharedResources:];
    }

    goto LABEL_25;
  }

  v34 = v9;
LABEL_26:

  return v34;
}

+ (void)_createQueuesIfNotProvidedOnDescriptor:(id)a3 orCopyFromPreviousDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTEffect _createQueuesIfNotProvidedOnDescriptor:orCopyFromPreviousDescriptor:];
    }
  }

  v8 = [v5 asyncInitQueue];

  if (!v8)
  {
    v9 = [v6 asyncInitQueue];
    [v5 setAsyncInitQueue:v9];

    v10 = [v5 asyncInitQueue];

    if (!v10)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2243FB000, v11, OS_LOG_TYPE_INFO, "Async init queue not provided, creating one", buf, 2u);
      }

      v12 = dispatch_queue_create("com.apple.portrait.effect_init", 0);
      [v5 setAsyncInitQueue:v12];
    }
  }

  v13 = [v5 asyncProcessingQueue];

  if (!v13)
  {
    v14 = [v6 asyncProcessingQueue];
    [v5 setAsyncProcessingQueue:v14];

    v15 = [v5 asyncProcessingQueue];

    if (!v15)
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_2243FB000, v16, OS_LOG_TYPE_INFO, "Async processing queue not provided, creating one", v18, 2u);
      }

      v17 = dispatch_queue_create("com.apple.portrait.effect_processing", 0);
      [v5 setAsyncProcessingQueue:v17];
    }
  }
}

- (int)reconfigure:(id)a3 isInitialized:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(PTEffectDescriptor *)self->_effectDescriptor isEqual:v6 includeSyncInit:0]&& v4)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PTEffect reconfigure:isInitialized:];
    }

    [(PTEffect *)self reset];
    v8 = 0;
  }

  else
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 activeEffectType];
      v11 = [v6 availableEffectTypes];
      v12 = [v6 effectQuality];
      [v6 colorSize];
      v14 = v13;
      [v6 colorSize];
      v22 = 134219520;
      v23 = self;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v15;
      v34 = 1024;
      v35 = v4;
      _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_DEFAULT, "Configure PTEffect (ptr %p). Type: %lu AvailableTypes: %lu quality: %lu size: %f x %f init: %i", &v22, 0x44u);
    }

    os_unfair_lock_lock(&self->_delegateLock);
    [PTEffect _createQueuesIfNotProvidedOnDescriptor:v6 orCopyFromPreviousDescriptor:self->_effectDescriptor];
    v16 = [v6 copy];
    effectDescriptor = self->_effectDescriptor;
    self->_effectDescriptor = v16;

    delegate = self->_delegate;
    self->_delegate = 0;

    os_unfair_lock_unlock(&self->_delegateLock);
    v8 = [(PTEffect *)self updateEffectDelegate:0];
    if ([(PTEffectDescriptor *)self->_effectDescriptor syncInitialization]|| sForceSynchronousInitialization == 1)
    {
      v19 = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
      dispatch_sync(v19, &__block_literal_global_6);

      if (sForceSynchronousInitialization == 1)
      {
        v20 = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
        dispatch_sync(v20, &__block_literal_global_138);
      }
    }
  }

  return v8;
}

- (id)reconfigureWithNewSize:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PTEffectDescriptor *)self->_effectDescriptor isEqual:v4 includeSyncInit:0])
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_DEFAULT, "Ignore reconfigureWithNewSize: due to equal descriptor", &v17, 2u);
    }

    v6 = self;
  }

  else
  {
    [PTEffect _createQueuesIfNotProvidedOnDescriptor:v4 orCopyFromPreviousDescriptor:self->_effectDescriptor];
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 activeEffectType];
      v9 = [v4 availableEffectTypes];
      v10 = [v4 effectQuality];
      [v4 colorSize];
      v12 = v11;
      [v4 colorSize];
      v17 = 134219264;
      v18 = self;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_2243FB000, v7, OS_LOG_TYPE_DEFAULT, "Reconfigure PTEffect (ptr %p). Type: %lu AvailableTypes: %lu quality: %lu size: %f x %f", &v17, 0x3Eu);
    }

    v14 = [v4 copy];
    [v14 setSyncInitialization:1];
    v15 = [(PTEffectDescriptor *)self->_effectDescriptor metalCommandQueue];
    [v14 setMetalCommandQueue:v15];

    v6 = [[PTEffect alloc] initWithDescriptor:v14 sharedResources:self->_resources];
  }

  return v6;
}

- (PTEffect)initWithFormat:(opaqueCMFormatDescription *)a3 metalCommandQueue:(id)a4 availableEffectTypes:(unint64_t)a5 activeEffectType:(unint64_t)a6 prewarmOnly:(BOOL)a7 effectQuality:(int64_t)a8
{
  v9 = a7;
  v14 = a4;
  v15 = objc_opt_new();
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  [v15 setMetalCommandQueue:v14];
  [v15 setColorSize:{Dimensions.width, Dimensions.height}];
  [v15 setAvailableEffectTypes:a5];
  [v15 setActiveEffectType:a6];
  [v15 setPrewarmOnly:v9];
  [v15 setEffectQuality:a8];
  v17 = [(PTEffect *)self initWithDescriptor:v15];

  return v17;
}

- (int)_setEffectType:(unint64_t)a3
{
  if ([(PTEffectDescriptor *)self->_effectDescriptor activeEffectType]!= a3)
  {
    [(PTEffectDescriptor *)self->_effectDescriptor setActiveEffectType:a3];
  }

  return 0;
}

- (int)updateEffectDelegate:(BOOL)a3
{
  v3 = a3;
  v54 = *MEMORY[0x277D85DE8];
  v5 = [(PTEffectDescriptor *)self->_effectDescriptor copy];
  v27 = v5;
  v6 = [v5 activeEffectType];
  os_unfair_lock_lock(&self->_delegateLock);
  v28 = self->_delegate;
  os_unfair_lock_unlock(&self->_delegateLock);
  v7 = [(PTEffectDescriptor *)self->_effectDescriptor syncInitialization];
  v8 = sForceSynchronousInitialization;
  v9 = _PTLogSystem();
  v10 = (v7 | v8) & 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v49 = [v5 activeEffectType];
    v50 = 1024;
    v51 = v10;
    v52 = 1024;
    v53 = v3;
    _os_log_debug_impl(&dword_2243FB000, v9, OS_LOG_TYPE_DEBUG, "Schedule set effect type: %i sync: %i forceImmediatePassthrough: %i", buf, 0x14u);
  }

  v11 = 0;
  if (v28)
  {
    v12 = v5;
    if (v3)
    {
      goto LABEL_11;
    }

    v13 = [(PTMetalContext *)self->_metalContext commandQueue];
    v14 = [v13 commandBuffer];

    if (!v14)
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v14 setLabel:@"PTEffect copyTemporalState"];
    v11 = [(PTEffectRenderer *)v28 copyTemporalState:v14];
    [v14 commit];
    [v14 waitUntilScheduled];
  }

  v12 = v27;
LABEL_11:
  v16 = +[PTCVMNetwork depthPrioritizationFromEffectQuality:](PTCVMNetwork, "depthPrioritizationFromEffectQuality:", [v12 effectQuality]);
  v17 = [v12 prewarmOnly];
  v18 = [(PTMetalContext *)self->_metalContext copy];
  [v18 setAllowCommandbufferAllocation:1];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __33__PTEffect_updateEffectDelegate___block_invoke;
  v40[3] = &unk_278523168;
  v42 = v6;
  v43 = v16;
  v45 = v10;
  v46 = v3;
  v40[4] = self;
  v19 = v12;
  v41 = v19;
  v44 = self;
  v47 = v17;
  v20 = MEMORY[0x22AA50020](v40);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __33__PTEffect_updateEffectDelegate___block_invoke_2;
  v29[3] = &unk_278523190;
  v34 = v6;
  v35 = v16;
  v37 = v10;
  v38 = v3;
  v21 = v19;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  v32 = self;
  v23 = v11;
  v33 = v23;
  v36 = self;
  v39 = v17;
  v24 = MEMORY[0x22AA50020](v29);
  if (v3)
  {
    v20[2](v20);
  }

  v25 = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
  dispatch_async(v25, v24);

  self->_rebuildEffect = 0;
  return 0;
}

uint64_t __33__PTEffect_updateEffectDelegate___block_invoke(uint64_t a1)
{
  kdebug_trace();
  os_unfair_lock_lock((*(a1 + 32) + 104));
  [*(a1 + 32) keepOldDelegateAlive:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 104));
  [*(a1 + 40) availableEffectTypes];
  [*(a1 + 40) laguna];

  return kdebug_trace();
}

void __33__PTEffect_updateEffectDelegate___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  v2 = [[PTEffectRenderer alloc] initWithDescriptor:*(a1 + 32) metalContext:*(a1 + 40) depthPrioritization:*(a1 + 72) humanDetections:*(*(a1 + 48) + 80) prevTemporalState:*(a1 + 56) sharedResources:*(*(a1 + 48) + 48)];
  if (!v2)
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __33__PTEffect_updateEffectDelegate___block_invoke_2_cold_1();
    }
  }

  [(PTEffectRenderer *)v2 setDebug:*(*(a1 + 48) + 72)];
  os_unfair_lock_lock((*(a1 + 48) + 104));
  [*(a1 + 48) keepOldDelegateAlive:*(*(a1 + 48) + 8)];
  objc_storeStrong((*(a1 + 48) + 8), v2);
  [*(a1 + 48) reset];
  os_unfair_lock_unlock((*(a1 + 48) + 104));
  [*(a1 + 32) availableEffectTypes];
  [*(a1 + 32) laguna];
  kdebug_trace();
}

- (void)keepOldDelegateAlive:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PTMetalContext *)self->_metalContext commandQueue];
    v6 = [v5 commandBuffer];

    if (!v6)
    {
      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v6 setLabel:@"PTEffect keepOldDelegateAlive"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__PTEffect_keepOldDelegateAlive___block_invoke;
    v8[3] = &unk_2785231B8;
    v9 = v4;
    [v6 addCompletedHandler:v8];
    [v6 commit];
  }
}

void __33__PTEffect_keepOldDelegateAlive___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = _PTLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __33__PTEffect_keepOldDelegateAlive___block_invoke_cold_1(v1, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__PTEffect_keepOldDelegateAlive___block_invoke_cold_2();
  }
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
  }

  pixelRotationSession = self->_pixelRotationSession;
  if (pixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(pixelRotationSession);
    CFRelease(self->_pixelRotationSession);
  }

  v5.receiver = self;
  v5.super_class = PTEffect;
  [(PTEffect *)&v5 dealloc];
}

+ (int)prewarmWithFormat:(opaqueCMFormatDescription *)a3 metalCommandQueue:(id)a4 effectType:(unint64_t)a5 sharedResources:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = objc_opt_new();
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  [v12 setMetalCommandQueue:v9];
  [v12 setColorSize:{Dimensions.width, Dimensions.height}];
  [v12 setAvailableEffectTypes:a5];
  [v12 setActiveEffectType:a5];
  [v12 setPrewarmOnly:1];
  [v12 setSyncInitialization:1];
  [v12 setEffectQuality:100];
  v14 = [[PTEffect alloc] initWithDescriptor:v12 sharedResources:v10];
  [(PTEffect *)v14 waitForInitialization];

  objc_autoreleasePoolPop(v11);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

+ (int)prewarmForCameraCaptured
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = CACurrentMediaTime();
  v15 = MTLCreateSystemDefaultDevice();
  v16 = [v15 newCommandQueue];
  v3 = objc_opt_new();
  v4 = 0;
  v5 = *MEMORY[0x277CBECE8];
  do
  {
    if (v4 == 1)
    {
      v6 = 720;
    }

    else
    {
      v6 = 540;
    }

    if (v4 == 1)
    {
      v7 = 1280;
    }

    else
    {
      v7 = 960;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1080;
    }

    if (v4)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1920;
    }

    formatDescriptionOut = 0;
    CMVideoFormatDescriptionCreate(v5, 0x34323076u, v9, v8, 0, &formatDescriptionOut);
    v10 = [PTEffect prewarmWithFormat:formatDescriptionOut metalCommandQueue:v16 effectType:83 sharedResources:v3];
    if (v10)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v19 = v10;
        _os_log_error_impl(&dword_2243FB000, v11, OS_LOG_TYPE_ERROR, "Failed to prewarm PTEffect SL+SDOF (%d)", buf, 8u);
      }
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    ++v4;
  }

  while (v4 != 3);
  v12 = CACurrentMediaTime() - v2;
  if (v12 <= 1.0)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[(PTEffect *)v13];
    }
  }

  else
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[PTEffect prewarmForCameraCaptured];
    }
  }

  return v10;
}

- (BOOL)validPixelBuffer:(__CVBuffer *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (!CVPixelBufferGetIOSurface(a3))
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTEffect validPixelBuffer:];
    }

    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  result = 1;
  if (PixelFormatType > 792229423)
  {
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType == 792229424)
      {
        return result;
      }

      v6 = 875704422;
      goto LABEL_18;
    }

    if (PixelFormatType != 875704438 && PixelFormatType != 2084070960)
    {
      v6 = 2084075056;
      goto LABEL_18;
    }
  }

  else
  {
    if (PixelFormatType <= 758670895)
    {
      if (PixelFormatType == 641230384)
      {
        return result;
      }

      v6 = 641234480;
      goto LABEL_18;
    }

    if (PixelFormatType != 758670896 && PixelFormatType != 758674992)
    {
      v6 = 792225328;
LABEL_18:
      if (PixelFormatType == v6)
      {
        return result;
      }

      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromFourCharCode(PixelFormatType);
        [(PTEffect *)v8 validPixelBuffer:v9, v7];
      }

LABEL_9:

      return 0;
    }
  }

  return result;
}

- (void)updateHumanDetections:(id)a3
{
  v7 = a3;
  [v7 frameTimeSeconds];
  v5 = v4;
  if (self->_frameId)
  {
    if (self->_lastDetectionUpdate == v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    self->_lastFrameTime = v4 + -0.0333333333;
    self->_lastDetectionUpdate = v4 + -0.0333333333;
  }

  [v7 detectedObjects];
  [(PTHumanDetections *)self->_humanDetections unpackDetections:?];
  humanDetections = self->_humanDetections;
  if (self->_frameId && v5 - self->_lastDetectionUpdate <= 1.0)
  {
    [(PTHumanDetections *)humanDetections filterDetections];
  }

  else
  {
    [(PTHumanDetections *)humanDetections clearFilterDetections];
  }

  self->_lastDetectionUpdate = v5;
LABEL_10:
}

- (void)resetIfNeeded
{
  if (atomic_exchange(&self->_reset, 0))
  {
    v3 = _PTLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2243FB000, v3, OS_LOG_TYPE_INFO, "PTEffect reset", v7, 2u);
    }

    v4 = [(PTMetalContext *)self->_metalContext commandQueue];
    v5 = [v4 commandBuffer];

    if (!v5)
    {
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [v5 setLabel:@"PTEffect reset"];
    [(PTEffectRenderer *)self->_delegate reset:v5];
    [(PTHumanDetections *)self->_humanDetections reset];
    [v5 commit];
    [v5 waitUntilScheduled];
  }
}

- (int)render:(id)a3
{
  v4 = a3;
  [(PTEffect *)self resetIfNeeded];
  [v4 setGestureCount:0];
  if ([(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
  {
    CMRemoveAttachment([v4 outColorBuffer], @"ReactionEffectComplexity");
    if ([v4 effectQuality] == -1)
    {
      [v4 setEffectQuality:{-[PTEffectDescriptor effectQuality](self->_effectDescriptor, "effectQuality")}];
    }

    else
    {
      -[PTEffect _setEffectQuality:](self, "_setEffectQuality:", [v4 effectQuality]);
    }

    if ([v4 effectType] == -1)
    {
      [v4 setEffectType:{-[PTEffectDescriptor activeEffectType](self->_effectDescriptor, "activeEffectType")}];
    }

    else
    {
      -[PTEffect _setEffectType:](self, "_setEffectType:", [v4 effectType]);
    }

    v7 = [v4 inColorBuffer];
    v8 = [v4 outColorBuffer];
    [v4 frameTimeSeconds];
    v10 = v9;
    if (!self->_frameId)
    {
      self->_lastFrameTime = v9 + -0.0333333333;
      self->_lastDetectionUpdate = v9 + -0.0333333333;
    }

    if (self->_rebuildEffect && (v6 = [(PTEffect *)self updateEffectDelegate:v9 - self->_lastFrameTime > 0.5]) != 0)
    {
      v5 = _PTLogSystem();
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_delegateLock);
      v5 = self->_delegate;
      os_unfair_lock_unlock(&self->_delegateLock);
      -[PTEffectRenderer setEffectQuality:](v5, "setEffectQuality:", [v4 effectQuality]);
      if (!v5 || (v6 = [(PTEffect *)self validateRenderRequest:v4 reactionOnly:0]) == 0)
      {
        frameId = self->_frameId;
        CVPixelBufferGetWidth(v7);
        CVPixelBufferGetHeight(v7);
        [v4 effectType];
        kdebug_trace();
        CVBufferPropagateAttachments(v7, v8);
        v12 = [(PTEffect *)self updateHumanDetections:v4];
        if (v5)
        {
          hasExternalCommandQueue = self->_hasExternalCommandQueue;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __19__PTEffect_render___block_invoke;
          v19[3] = &unk_2785231E0;
          v20 = v4;
          v22 = frameId;
          v21 = v5;
          v6 = [(PTEffectRenderer *)v21 render:v20 waitUntilCompleted:!hasExternalCommandQueue gpuCompleted:v19];
          if (v6)
          {
            v14 = _PTLogSystem();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [PTEffect render:];
            }
          }
        }

        else
        {
          PTDefaultsFlush(v12);
          [v4 setOutColorBufferWriteSkipped:{-[PTEffectDescriptor allowSkipOutColorBufferWrite](self->_effectDescriptor, "allowSkipOutColorBufferWrite")}];
          if ([(PTEffectDescriptor *)self->_effectDescriptor allowSkipOutColorBufferWrite])
          {
            v6 = 0;
          }

          else
          {
            if (!self->_pixelTransferSession && VTPixelTransferSessionCreate(0, &self->_pixelTransferSession))
            {
              v15 = _PTLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [PTEffect render:];
              }
            }

            v6 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, v7, v8);
            if (v6)
            {
              v16 = _PTLogSystem();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [PTEffect render:];
              }
            }
          }

          [v4 setOutPersonSegmentationMatteBuffer:0];
          [(PTMetalContext *)self->_metalContext commit];
          [v4 outColorBufferWriteSkipped];
          kdebug_trace();
        }

        if (![(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
        {
          v17 = _PTLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [PTEffect render:];
          }

          v6 = -9;
        }

        self->_lastFrameTime = v10;
        ++self->_frameId;
      }
    }
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [PTEffect render:];
    }

    v6 = -9;
  }

  return v6;
}

void __19__PTEffect_render___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [PTUtil getRotationDegreesFromAffineTransform:v5];
  [*(a1 + 40) effectQuality];
  [*(a1 + 32) outColorBufferWriteSkipped];
  kdebug_trace();
}

- (int)renderReaction:(id)a3 effectRenderRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  CMRemoveAttachment([v7 outColorBuffer], @"ReactionEffectComplexity");
  [(PTMetalContext *)self->_metalContext setCommandBuffer:v6];
  v8 = [(PTEffect *)self validateRenderRequest:v7 reactionOnly:1];
  if (!v8)
  {
    os_unfair_lock_lock(&self->_delegateLock);
    v9 = self->_delegate;
    os_unfair_lock_unlock(&self->_delegateLock);
    v8 = [(PTEffectRenderer *)v9 renderReaction:v6 effectRenderRequest:v7];
    if ([(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTEffect renderReaction:effectRenderRequest:];
      }

      v8 = -14;
    }

    [(PTMetalContext *)self->_metalContext setCommandBuffer:0];
  }

  return v8;
}

- (void)removeAllActiveReactions
{
  os_unfair_lock_lock(&self->_delegateLock);
  [(PTEffectRenderer *)self->_delegate removeAllActiveReactions];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (id)activeReactions
{
  os_unfair_lock_lock(&self->_delegateLock);
  v3 = [(PTEffectRenderer *)self->_delegate activeReactions];
  os_unfair_lock_unlock(&self->_delegateLock);

  return v3;
}

- (void)_setEffectQuality:(int64_t)a3
{
  if ([(PTEffectDescriptor *)self->_effectDescriptor effectQuality]!= a3)
  {
    v5 = [PTCVMNetwork depthPrioritizationFromEffectQuality:[(PTEffectDescriptor *)self->_effectDescriptor effectQuality]];
    self->_rebuildEffect |= v5 != [PTCVMNetwork depthPrioritizationFromEffectQuality:a3];
    effectDescriptor = self->_effectDescriptor;

    [(PTEffectDescriptor *)effectDescriptor setEffectQuality:a3];
  }
}

- (void)setDebug:(int64_t)a3
{
  self->_debugType = a3;
  os_unfair_lock_lock(&self->_delegateLock);
  [(PTEffectRenderer *)self->_delegate setDebug:self->_debugType];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (int)waitForInitialization
{
  v2 = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
  dispatch_async_and_wait(v2, &__block_literal_global_156);

  return 0;
}

- (BOOL)isRenderRequiredForRequest:(id)a3
{
  v4 = a3;
  [(PTEffect *)self resetIfNeeded];
  [(PTEffect *)self updateHumanDetections:v4];
  os_unfair_lock_lock(&self->_delegateLock);
  v5 = self->_delegate;
  os_unfair_lock_unlock(&self->_delegateLock);
  if ([(PTEffectRenderer *)v5 isRenderRequiredForRequest:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PTEffectDescriptor *)self->_effectDescriptor activeEffectType];
    v6 = v7 != [v4 effectType];
  }

  [v4 frameTimeSeconds];
  [v4 effectType];
  v8 = [v4 reactions];
  [v8 count];
  kdebug_trace();

  return v6;
}

void __33__PTEffect_updateEffectDelegate___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__PTEffect_keepOldDelegateAlive___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "Releasing reference to %@", &v3, 0xCu);
}

void __33__PTEffect_keepOldDelegateAlive___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)prewarmForCameraCaptured
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "Prewarm pteffect took %f seconds", &v2, 0xCu);
}

- (void)validPixelBuffer:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Unexpected pixelformat %@", buf, 0xCu);
}

- (void)validPixelBuffer:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)render:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)render:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)render:.cold.3()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)renderReaction:effectRenderRequest:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end