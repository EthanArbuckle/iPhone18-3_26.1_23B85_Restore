@interface PTEffect
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithFormat:(opaqueCMFormatDescription *)format metalCommandQueue:(id)queue effectType:(unint64_t)type sharedResources:(id)resources;
+ (void)_createQueuesIfNotProvidedOnDescriptor:(id)descriptor orCopyFromPreviousDescriptor:(id)previousDescriptor;
+ (void)prewarmForCameraCaptured;
- (BOOL)isRenderRequiredForRequest:(id)request;
- (BOOL)validPixelBuffer:(__CVBuffer *)buffer;
- (PTEffect)initWithDescriptor:(id)descriptor;
- (PTEffect)initWithDescriptor:(id)descriptor sharedResources:(id)resources;
- (PTEffect)initWithFormat:(opaqueCMFormatDescription *)format metalCommandQueue:(id)queue availableEffectTypes:(unint64_t)types activeEffectType:(unint64_t)type prewarmOnly:(BOOL)only effectQuality:(int64_t)quality;
- (id)activeReactions;
- (id)reconfigureWithNewSize:(id)size;
- (int)_setEffectType:(unint64_t)type;
- (int)reconfigure:(id)reconfigure isInitialized:(BOOL)initialized;
- (int)render:(id)render;
- (int)renderReaction:(id)reaction effectRenderRequest:(id)request;
- (int)updateEffectDelegate:(BOOL)delegate;
- (int)waitForInitialization;
- (void)_setEffectQuality:(int64_t)quality;
- (void)dealloc;
- (void)keepOldDelegateAlive:(id)alive;
- (void)removeAllActiveReactions;
- (void)resetIfNeeded;
- (void)setDebug:(int64_t)debug;
- (void)updateHumanDetections:(id)detections;
@end

@implementation PTEffect

- (PTEffect)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_opt_new();
  v6 = [(PTEffect *)self initWithDescriptor:descriptorCopy sharedResources:v5];

  return v6;
}

- (PTEffect)initWithDescriptor:(id)descriptor sharedResources:(id)resources
{
  descriptorCopy = descriptor;
  resourcesCopy = resources;
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
  if ([descriptorCopy prewarmOnly] && (objc_msgSend(descriptorCopy, "availableEffectTypes") & 4) != 0)
  {
    [descriptorCopy setSyncInitialization:1];
  }

  [PTEffect _createQueuesIfNotProvidedOnDescriptor:descriptorCopy orCopyFromPreviousDescriptor:0];
  v10 = [descriptorCopy copy];
  effectDescriptor = v8->_effectDescriptor;
  v8->_effectDescriptor = v10;

  v8->_frameId = 0;
  v8->_debugType = 0;
  v8->_delegateLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v8->_resources, resources);
  [(PTEffectDescriptor *)v8->_effectDescriptor setAvailableEffectTypes:[(PTEffectDescriptor *)v8->_effectDescriptor availableEffectTypes]| [(PTEffectDescriptor *)v8->_effectDescriptor activeEffectType]];
  metalCommandQueue = [(PTEffectDescriptor *)v8->_effectDescriptor metalCommandQueue];

  if (metalCommandQueue)
  {
    v13 = [PTMetalContext alloc];
    metalCommandQueue2 = [(PTEffectDescriptor *)v9->_effectDescriptor metalCommandQueue];
    v15 = [(PTMetalContext *)v13 initWithCommandQueue:metalCommandQueue2 bundleClass:objc_opt_class()];
    metalContext = v9->_metalContext;
    v9->_metalContext = v15;

    v9->_hasExternalCommandQueue = 1;
  }

  else
  {
    v17 = MTLCreateSystemDefaultDevice();
    v18 = [PTMetalContext alloc];
    newCommandQueue = [v17 newCommandQueue];
    v20 = [(PTMetalContext *)v18 initWithCommandQueue:newCommandQueue bundleClass:objc_opt_class()];
    v21 = v9->_metalContext;
    v9->_metalContext = v20;

    commandQueue = [(PTMetalContext *)v9->_metalContext commandQueue];
    [commandQueue setGPUPriority:4];

    commandQueue2 = [(PTMetalContext *)v9->_metalContext commandQueue];
    [(PTEffectDescriptor *)v9->_effectDescriptor setMetalCommandQueue:commandQueue2];

    v9->_hasExternalCommandQueue = 0;
  }

  [(PTMetalContext *)v9->_metalContext setAllowCommandbufferAllocation:0];
  util = [resourcesCopy util];

  if (!util)
  {
    v25 = [[PTUtil alloc] initWithMetalContext:v9->_metalContext];
    [resourcesCopy setUtil:v25];

    util2 = [resourcesCopy util];

    if (!util2)
    {
      v33 = _PTLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [PTEffect initWithDescriptor:sharedResources:];
      }

      goto LABEL_24;
    }
  }

  effectUtil = [resourcesCopy effectUtil];

  if (!effectUtil)
  {
    v28 = [[PTEffectUtil alloc] initWithMetalContext:v9->_metalContext];
    [resourcesCopy setEffectUtil:v28];

    effectUtil2 = [resourcesCopy effectUtil];

    if (!effectUtil2)
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

+ (void)_createQueuesIfNotProvidedOnDescriptor:(id)descriptor orCopyFromPreviousDescriptor:(id)previousDescriptor
{
  descriptorCopy = descriptor;
  previousDescriptorCopy = previousDescriptor;
  if (!descriptorCopy)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTEffect _createQueuesIfNotProvidedOnDescriptor:orCopyFromPreviousDescriptor:];
    }
  }

  asyncInitQueue = [descriptorCopy asyncInitQueue];

  if (!asyncInitQueue)
  {
    asyncInitQueue2 = [previousDescriptorCopy asyncInitQueue];
    [descriptorCopy setAsyncInitQueue:asyncInitQueue2];

    asyncInitQueue3 = [descriptorCopy asyncInitQueue];

    if (!asyncInitQueue3)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2243FB000, v11, OS_LOG_TYPE_INFO, "Async init queue not provided, creating one", buf, 2u);
      }

      v12 = dispatch_queue_create("com.apple.portrait.effect_init", 0);
      [descriptorCopy setAsyncInitQueue:v12];
    }
  }

  asyncProcessingQueue = [descriptorCopy asyncProcessingQueue];

  if (!asyncProcessingQueue)
  {
    asyncProcessingQueue2 = [previousDescriptorCopy asyncProcessingQueue];
    [descriptorCopy setAsyncProcessingQueue:asyncProcessingQueue2];

    asyncProcessingQueue3 = [descriptorCopy asyncProcessingQueue];

    if (!asyncProcessingQueue3)
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_2243FB000, v16, OS_LOG_TYPE_INFO, "Async processing queue not provided, creating one", v18, 2u);
      }

      v17 = dispatch_queue_create("com.apple.portrait.effect_processing", 0);
      [descriptorCopy setAsyncProcessingQueue:v17];
    }
  }
}

- (int)reconfigure:(id)reconfigure isInitialized:(BOOL)initialized
{
  initializedCopy = initialized;
  v36 = *MEMORY[0x277D85DE8];
  reconfigureCopy = reconfigure;
  if ([(PTEffectDescriptor *)self->_effectDescriptor isEqual:reconfigureCopy includeSyncInit:0]&& initializedCopy)
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
      activeEffectType = [reconfigureCopy activeEffectType];
      availableEffectTypes = [reconfigureCopy availableEffectTypes];
      effectQuality = [reconfigureCopy effectQuality];
      [reconfigureCopy colorSize];
      v14 = v13;
      [reconfigureCopy colorSize];
      v22 = 134219520;
      selfCopy = self;
      v24 = 2048;
      v25 = activeEffectType;
      v26 = 2048;
      v27 = availableEffectTypes;
      v28 = 2048;
      v29 = effectQuality;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v15;
      v34 = 1024;
      v35 = initializedCopy;
      _os_log_impl(&dword_2243FB000, v9, OS_LOG_TYPE_DEFAULT, "Configure PTEffect (ptr %p). Type: %lu AvailableTypes: %lu quality: %lu size: %f x %f init: %i", &v22, 0x44u);
    }

    os_unfair_lock_lock(&self->_delegateLock);
    [PTEffect _createQueuesIfNotProvidedOnDescriptor:reconfigureCopy orCopyFromPreviousDescriptor:self->_effectDescriptor];
    v16 = [reconfigureCopy copy];
    effectDescriptor = self->_effectDescriptor;
    self->_effectDescriptor = v16;

    delegate = self->_delegate;
    self->_delegate = 0;

    os_unfair_lock_unlock(&self->_delegateLock);
    v8 = [(PTEffect *)self updateEffectDelegate:0];
    if ([(PTEffectDescriptor *)self->_effectDescriptor syncInitialization]|| sForceSynchronousInitialization == 1)
    {
      asyncInitQueue = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
      dispatch_sync(asyncInitQueue, &__block_literal_global_6);

      if (sForceSynchronousInitialization == 1)
      {
        asyncInitQueue2 = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
        dispatch_sync(asyncInitQueue2, &__block_literal_global_138);
      }
    }
  }

  return v8;
}

- (id)reconfigureWithNewSize:(id)size
{
  v29 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  if ([(PTEffectDescriptor *)self->_effectDescriptor isEqual:sizeCopy includeSyncInit:0])
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_DEFAULT, "Ignore reconfigureWithNewSize: due to equal descriptor", &v17, 2u);
    }

    selfCopy = self;
  }

  else
  {
    [PTEffect _createQueuesIfNotProvidedOnDescriptor:sizeCopy orCopyFromPreviousDescriptor:self->_effectDescriptor];
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      activeEffectType = [sizeCopy activeEffectType];
      availableEffectTypes = [sizeCopy availableEffectTypes];
      effectQuality = [sizeCopy effectQuality];
      [sizeCopy colorSize];
      v12 = v11;
      [sizeCopy colorSize];
      v17 = 134219264;
      selfCopy2 = self;
      v19 = 2048;
      v20 = activeEffectType;
      v21 = 2048;
      v22 = availableEffectTypes;
      v23 = 2048;
      v24 = effectQuality;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_2243FB000, v7, OS_LOG_TYPE_DEFAULT, "Reconfigure PTEffect (ptr %p). Type: %lu AvailableTypes: %lu quality: %lu size: %f x %f", &v17, 0x3Eu);
    }

    v14 = [sizeCopy copy];
    [v14 setSyncInitialization:1];
    metalCommandQueue = [(PTEffectDescriptor *)self->_effectDescriptor metalCommandQueue];
    [v14 setMetalCommandQueue:metalCommandQueue];

    selfCopy = [[PTEffect alloc] initWithDescriptor:v14 sharedResources:self->_resources];
  }

  return selfCopy;
}

- (PTEffect)initWithFormat:(opaqueCMFormatDescription *)format metalCommandQueue:(id)queue availableEffectTypes:(unint64_t)types activeEffectType:(unint64_t)type prewarmOnly:(BOOL)only effectQuality:(int64_t)quality
{
  onlyCopy = only;
  queueCopy = queue;
  v15 = objc_opt_new();
  Dimensions = CMVideoFormatDescriptionGetDimensions(format);
  [v15 setMetalCommandQueue:queueCopy];
  [v15 setColorSize:{Dimensions.width, Dimensions.height}];
  [v15 setAvailableEffectTypes:types];
  [v15 setActiveEffectType:type];
  [v15 setPrewarmOnly:onlyCopy];
  [v15 setEffectQuality:quality];
  v17 = [(PTEffect *)self initWithDescriptor:v15];

  return v17;
}

- (int)_setEffectType:(unint64_t)type
{
  if ([(PTEffectDescriptor *)self->_effectDescriptor activeEffectType]!= type)
  {
    [(PTEffectDescriptor *)self->_effectDescriptor setActiveEffectType:type];
  }

  return 0;
}

- (int)updateEffectDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v54 = *MEMORY[0x277D85DE8];
  v5 = [(PTEffectDescriptor *)self->_effectDescriptor copy];
  v27 = v5;
  activeEffectType = [v5 activeEffectType];
  os_unfair_lock_lock(&self->_delegateLock);
  v28 = self->_delegate;
  os_unfair_lock_unlock(&self->_delegateLock);
  syncInitialization = [(PTEffectDescriptor *)self->_effectDescriptor syncInitialization];
  v8 = sForceSynchronousInitialization;
  v9 = _PTLogSystem();
  v10 = (syncInitialization | v8) & 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    activeEffectType2 = [v5 activeEffectType];
    v50 = 1024;
    v51 = v10;
    v52 = 1024;
    v53 = delegateCopy;
    _os_log_debug_impl(&dword_2243FB000, v9, OS_LOG_TYPE_DEBUG, "Schedule set effect type: %i sync: %i forceImmediatePassthrough: %i", buf, 0x14u);
  }

  v11 = 0;
  if (v28)
  {
    v12 = v5;
    if (delegateCopy)
    {
      goto LABEL_11;
    }

    commandQueue = [(PTMetalContext *)self->_metalContext commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (!commandBuffer)
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [commandBuffer setLabel:@"PTEffect copyTemporalState"];
    v11 = [(PTEffectRenderer *)v28 copyTemporalState:commandBuffer];
    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
  }

  v12 = v27;
LABEL_11:
  v16 = +[PTCVMNetwork depthPrioritizationFromEffectQuality:](PTCVMNetwork, "depthPrioritizationFromEffectQuality:", [v12 effectQuality]);
  prewarmOnly = [v12 prewarmOnly];
  v18 = [(PTMetalContext *)self->_metalContext copy];
  [v18 setAllowCommandbufferAllocation:1];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __33__PTEffect_updateEffectDelegate___block_invoke;
  v40[3] = &unk_278523168;
  v42 = activeEffectType;
  v43 = v16;
  v45 = v10;
  v46 = delegateCopy;
  v40[4] = self;
  v19 = v12;
  v41 = v19;
  selfCopy = self;
  v47 = prewarmOnly;
  v20 = MEMORY[0x22AA50020](v40);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __33__PTEffect_updateEffectDelegate___block_invoke_2;
  v29[3] = &unk_278523190;
  v34 = activeEffectType;
  v35 = v16;
  v37 = v10;
  v38 = delegateCopy;
  v21 = v19;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  selfCopy2 = self;
  v23 = v11;
  v33 = v23;
  selfCopy3 = self;
  v39 = prewarmOnly;
  v24 = MEMORY[0x22AA50020](v29);
  if (delegateCopy)
  {
    v20[2](v20);
  }

  asyncInitQueue = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
  dispatch_async(asyncInitQueue, v24);

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

- (void)keepOldDelegateAlive:(id)alive
{
  aliveCopy = alive;
  if (aliveCopy)
  {
    commandQueue = [(PTMetalContext *)self->_metalContext commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (!commandBuffer)
    {
      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [commandBuffer setLabel:@"PTEffect keepOldDelegateAlive"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__PTEffect_keepOldDelegateAlive___block_invoke;
    v8[3] = &unk_2785231B8;
    v9 = aliveCopy;
    [commandBuffer addCompletedHandler:v8];
    [commandBuffer commit];
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

+ (int)prewarmWithFormat:(opaqueCMFormatDescription *)format metalCommandQueue:(id)queue effectType:(unint64_t)type sharedResources:(id)resources
{
  queueCopy = queue;
  resourcesCopy = resources;
  v11 = objc_autoreleasePoolPush();
  v12 = objc_opt_new();
  Dimensions = CMVideoFormatDescriptionGetDimensions(format);
  [v12 setMetalCommandQueue:queueCopy];
  [v12 setColorSize:{Dimensions.width, Dimensions.height}];
  [v12 setAvailableEffectTypes:type];
  [v12 setActiveEffectType:type];
  [v12 setPrewarmOnly:1];
  [v12 setSyncInitialization:1];
  [v12 setEffectQuality:100];
  v14 = [[PTEffect alloc] initWithDescriptor:v12 sharedResources:resourcesCopy];
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
  newCommandQueue = [v15 newCommandQueue];
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
    v10 = [PTEffect prewarmWithFormat:formatDescriptionOut metalCommandQueue:newCommandQueue effectType:83 sharedResources:v3];
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

- (BOOL)validPixelBuffer:(__CVBuffer *)buffer
{
  v10 = *MEMORY[0x277D85DE8];
  if (!CVPixelBufferGetIOSurface(buffer))
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTEffect validPixelBuffer:];
    }

    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
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

- (void)updateHumanDetections:(id)detections
{
  detectionsCopy = detections;
  [detectionsCopy frameTimeSeconds];
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

  [detectionsCopy detectedObjects];
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

    commandQueue = [(PTMetalContext *)self->_metalContext commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (!commandBuffer)
    {
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [commandBuffer setLabel:@"PTEffect reset"];
    [(PTEffectRenderer *)self->_delegate reset:commandBuffer];
    [(PTHumanDetections *)self->_humanDetections reset];
    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
  }
}

- (int)render:(id)render
{
  renderCopy = render;
  [(PTEffect *)self resetIfNeeded];
  [renderCopy setGestureCount:0];
  if ([(PTMetalContext *)self->_metalContext isCommandBufferCommitted])
  {
    CMRemoveAttachment([renderCopy outColorBuffer], @"ReactionEffectComplexity");
    if ([renderCopy effectQuality] == -1)
    {
      [renderCopy setEffectQuality:{-[PTEffectDescriptor effectQuality](self->_effectDescriptor, "effectQuality")}];
    }

    else
    {
      -[PTEffect _setEffectQuality:](self, "_setEffectQuality:", [renderCopy effectQuality]);
    }

    if ([renderCopy effectType] == -1)
    {
      [renderCopy setEffectType:{-[PTEffectDescriptor activeEffectType](self->_effectDescriptor, "activeEffectType")}];
    }

    else
    {
      -[PTEffect _setEffectType:](self, "_setEffectType:", [renderCopy effectType]);
    }

    inColorBuffer = [renderCopy inColorBuffer];
    outColorBuffer = [renderCopy outColorBuffer];
    [renderCopy frameTimeSeconds];
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
      -[PTEffectRenderer setEffectQuality:](v5, "setEffectQuality:", [renderCopy effectQuality]);
      if (!v5 || (v6 = [(PTEffect *)self validateRenderRequest:renderCopy reactionOnly:0]) == 0)
      {
        frameId = self->_frameId;
        CVPixelBufferGetWidth(inColorBuffer);
        CVPixelBufferGetHeight(inColorBuffer);
        [renderCopy effectType];
        kdebug_trace();
        CVBufferPropagateAttachments(inColorBuffer, outColorBuffer);
        v12 = [(PTEffect *)self updateHumanDetections:renderCopy];
        if (v5)
        {
          hasExternalCommandQueue = self->_hasExternalCommandQueue;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __19__PTEffect_render___block_invoke;
          v19[3] = &unk_2785231E0;
          v20 = renderCopy;
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
          [renderCopy setOutColorBufferWriteSkipped:{-[PTEffectDescriptor allowSkipOutColorBufferWrite](self->_effectDescriptor, "allowSkipOutColorBufferWrite")}];
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

            v6 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, inColorBuffer, outColorBuffer);
            if (v6)
            {
              v16 = _PTLogSystem();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [PTEffect render:];
              }
            }
          }

          [renderCopy setOutPersonSegmentationMatteBuffer:0];
          [(PTMetalContext *)self->_metalContext commit];
          [renderCopy outColorBufferWriteSkipped];
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

- (int)renderReaction:(id)reaction effectRenderRequest:(id)request
{
  reactionCopy = reaction;
  requestCopy = request;
  CMRemoveAttachment([requestCopy outColorBuffer], @"ReactionEffectComplexity");
  [(PTMetalContext *)self->_metalContext setCommandBuffer:reactionCopy];
  v8 = [(PTEffect *)self validateRenderRequest:requestCopy reactionOnly:1];
  if (!v8)
  {
    os_unfair_lock_lock(&self->_delegateLock);
    v9 = self->_delegate;
    os_unfair_lock_unlock(&self->_delegateLock);
    v8 = [(PTEffectRenderer *)v9 renderReaction:reactionCopy effectRenderRequest:requestCopy];
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
  activeReactions = [(PTEffectRenderer *)self->_delegate activeReactions];
  os_unfair_lock_unlock(&self->_delegateLock);

  return activeReactions;
}

- (void)_setEffectQuality:(int64_t)quality
{
  if ([(PTEffectDescriptor *)self->_effectDescriptor effectQuality]!= quality)
  {
    v5 = [PTCVMNetwork depthPrioritizationFromEffectQuality:[(PTEffectDescriptor *)self->_effectDescriptor effectQuality]];
    self->_rebuildEffect |= v5 != [PTCVMNetwork depthPrioritizationFromEffectQuality:quality];
    effectDescriptor = self->_effectDescriptor;

    [(PTEffectDescriptor *)effectDescriptor setEffectQuality:quality];
  }
}

- (void)setDebug:(int64_t)debug
{
  self->_debugType = debug;
  os_unfair_lock_lock(&self->_delegateLock);
  [(PTEffectRenderer *)self->_delegate setDebug:self->_debugType];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (int)waitForInitialization
{
  asyncInitQueue = [(PTEffectDescriptor *)self->_effectDescriptor asyncInitQueue];
  dispatch_async_and_wait(asyncInitQueue, &__block_literal_global_156);

  return 0;
}

- (BOOL)isRenderRequiredForRequest:(id)request
{
  requestCopy = request;
  [(PTEffect *)self resetIfNeeded];
  [(PTEffect *)self updateHumanDetections:requestCopy];
  os_unfair_lock_lock(&self->_delegateLock);
  v5 = self->_delegate;
  os_unfair_lock_unlock(&self->_delegateLock);
  if ([(PTEffectRenderer *)v5 isRenderRequiredForRequest:requestCopy])
  {
    v6 = 1;
  }

  else
  {
    activeEffectType = [(PTEffectDescriptor *)self->_effectDescriptor activeEffectType];
    v6 = activeEffectType != [requestCopy effectType];
  }

  [requestCopy frameTimeSeconds];
  [requestCopy effectType];
  reactions = [requestCopy reactions];
  [reactions count];
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