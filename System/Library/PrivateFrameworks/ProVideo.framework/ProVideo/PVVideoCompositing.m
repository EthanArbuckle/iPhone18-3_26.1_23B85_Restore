@interface PVVideoCompositing
- (BOOL)canConformColorOfSourceFrames;
- (BOOL)shouldDoLowPowerExport;
- (NSDictionary)requiredPixelBufferAttributesForRenderContext;
- (NSDictionary)sourcePixelBufferAttributes;
- (PVVideoCompositing)init;
- (float)playerRate;
- (id).cxx_construct;
- (id)refreshCompletionBlock;
- (void)_validateDestinationBufferColorSpace:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)callRefreshCompletionBlock:(BOOL)a3;
- (void)cancelAllPendingVideoCompositionRequests;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)didRecieveMemoryWarning:(id)a3;
- (void)renderContextChanged:(id)a3;
- (void)renderRequestFinished:(HGRef<PVRenderJob>)a3;
- (void)setCancelsPendingRequests:(BOOL)a3;
- (void)setColorSpacesFromDestinationBuffer:(id)a3;
- (void)setPlayerRate:(float)a3;
- (void)setRefreshCompletionBlock:(id)a3;
- (void)setSchedulingTime:(id *)a3;
- (void)setupEffectScheduler;
- (void)signalScheduling:(id *)a3 playerRate:(float)a4;
- (void)startVideoCompositionRequest:(id)a3;
- (void)updateDestinationFormatForOutputColorSpace;
- (void)videoCompositionChanged:(id)a3;
- (void)willEnterForeground:(id)a3;
@end

@implementation PVVideoCompositing

- (NSDictionary)sourcePixelBufferAttributes
{
  v16[3] = *MEMORY[0x277D85DE8];
  sourceAttributes = self->_sourceAttributes;
  if (!sourceAttributes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (+[PVEnvironment PV_DISABLE_YCBCR_INPUTS])
    {
      v16[0] = &unk_28732D298;
      v16[1] = &unk_28732D2B0;
      v16[2] = &unk_28732D2C8;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
LABEL_10:
      [(NSDictionary *)v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CC4E30]];
      [(NSDictionary *)v4 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
      v11 = self->_sourceAttributes;
      self->_sourceAttributes = v4;

      sourceAttributes = self->_sourceAttributes;
      goto LABEL_11;
    }

    v15[0] = &unk_28732D310;
    v15[1] = &unk_28732D328;
    v15[2] = &unk_28732D340;
    v15[3] = &unk_28732D358;
    v15[4] = &unk_28732D2B0;
    v15[5] = &unk_28732D2C8;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
    v14[0] = &unk_28732D2E0;
    v14[1] = &unk_28732D2F8;
    v14[2] = &unk_28732D310;
    v14[3] = &unk_28732D328;
    v14[4] = &unk_28732D340;
    v14[5] = &unk_28732D358;
    v14[6] = &unk_28732D298;
    v14[7] = &unk_28732D2B0;
    v14[8] = &unk_28732D2C8;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:9];
    v7 = [(PVRendererBase *)self compositingContext];
    v8 = [v7 outputColorSpace];
    if ([v8 isHDRSpace])
    {
      v9 = [(PVVideoCompositing *)self canConformColorOfSourceFrames];

      v10 = v13;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = v6;
LABEL_9:
    v5 = v10;

    goto LABEL_10;
  }

LABEL_11:

  return sourceAttributes;
}

- (NSDictionary)requiredPixelBufferAttributesForRenderContext
{
  v16[1] = *MEMORY[0x277D85DE8];
  destinationBufferPoolAttributes = self->_destinationBufferPoolAttributes;
  if (!destinationBufferPoolAttributes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (+[PVEnvironment PV_ENABLE_420V_OUTPUT])
    {
      v5 = &unk_28732D2E0;
LABEL_10:
      v16[0] = v5;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [(NSDictionary *)v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CC4E30]];

      [(NSDictionary *)v4 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
      v14 = self->_destinationBufferPoolAttributes;
      self->_destinationBufferPoolAttributes = v4;

      destinationBufferPoolAttributes = self->_destinationBufferPoolAttributes;
      goto LABEL_11;
    }

    v6 = [(PVRendererBase *)self compositingContext];
    v7 = [v6 outputColorSpace];
    v8 = [v7 isP3d65GammaColorSpace];

    if ((v8 & 1) == 0)
    {
      v9 = [(PVRendererBase *)self compositingContext];
      v10 = [v9 outputColorSpace];
      if ([v10 isWideGamutSpace])
      {
        v11 = [(PVRendererBase *)self compositingContext];
        v12 = [v11 gpuRenderAPI];

        if (v12)
        {
          v5 = &unk_28732D310;
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v5 = &unk_28732D298;
    goto LABEL_10;
  }

LABEL_11:

  return destinationBufferPoolAttributes;
}

- (BOOL)canConformColorOfSourceFrames
{
  v3 = +[PVEnvironment PV_ENABLE_AVF_COLOR_CONFORM_INPUTS];
  v4 = [(PVRendererBase *)self compositingContext];
  v5 = [v4 workingColorSpace];
  v6 = [v5 isRec2020LinearColorSpace];

  return !v3 & v6;
}

- (PVVideoCompositing)init
{
  v19[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PVVideoCompositing;
  v2 = [(PVRendererBase *)&v17 init];
  if (v2)
  {
    if ([PVVideoCompositing init]::onceToken != -1)
    {
      [PVVideoCompositing init];
    }

    v3 = sRefCountLock;
    v15 = sRefCountLock;
    v16 = 0;
    HGSynchronizable::Lock(sRefCountLock);
    ++sLivingCompositorRefCount;
    v4 = +[PVEnvironment PV_MAX_EXPECTED_LIVE_COMPOSITORS];
    if (sLivingCompositorRefCount > v4)
    {
      v18[0] = @"kPVVideoCompositingTooManyLiveCompositorsWarning_LiveCount";
      v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
      v18[1] = @"kPVVideoCompositingTooManyLiveCompositorsWarning_MaxExpected";
      v19[0] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      v19[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"kPVVideoCompositingTooManyCompositorsWarning" object:v7];
    }

    v9 = HGSynchronizable::Unlock(v3);
    PVRenderManager::INSTANCE(v9, &v15);
    m_Obj = v2->_renderManager.m_Obj;
    v11 = v15;
    if (m_Obj == v15)
    {
      if (m_Obj)
      {
        (*(*v15 + 24))(v15);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        v11 = v15;
      }

      v2->_renderManager.m_Obj = v11;
    }

    [(PVVideoCompositing *)v2 setupTextureFactories];
    PVRenderManager::FreeTexturePools(v2->_renderManager.m_Obj);
    [(PVVideoCompositing *)v2 setupEffectScheduler];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    *&v2->_videoCompositionDuration.value = *MEMORY[0x277CC08F0];
    v2->_videoCompositionDuration.epoch = v12;
    v13 = +[PVVideoCompositingContext createContextForGPU];
    [(PVRendererBase *)v2 setCompositingContext:v13];

    operator new();
  }

  return 0;
}

- (void)setupEffectScheduler
{
  v3 = objc_alloc_init(PVEffectScheduler);
  effectScheduler = self->_effectScheduler;
  self->_effectScheduler = v3;

  v5 = *(MEMORY[0x277CC0898] + 16);
  *&self->_schedulingTime.value = *MEMORY[0x277CC0898];
  self->_schedulingTime.epoch = v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76770] object:0];

  [(PVVideoCompositing *)self cancelAllPendingVideoCompositionRequests];
  v5 = sRefCountLock;
  v14 = sRefCountLock;
  v15 = 0;
  HGSynchronizable::Lock(sRefCountLock);
  v6 = --sLivingCompositorRefCount;
  if (!sLivingCompositorRefCount)
  {
    [(PVVideoCompositing *)self setPlayerRate:0.0];
    v12 = *MEMORY[0x277CC0898];
    v13 = *(MEMORY[0x277CC0898] + 16);
    [(PVVideoCompositing *)self setSchedulingTime:&v12];
    [PVInstructionGraphImageSourceNode purgeBitmapCache:1];
  }

  HGSynchronizable::Unlock(v5);
  [(PVRendererBase *)self printAndClearStats];
  PVRenderManager::FlushTextureFactories(self->_renderManager.m_Obj);
  PVRenderManager::TearDownTextureFactories(self->_renderManager.m_Obj);
  if (!v6 && [objc_opt_class() flushOnFinalRelease])
  {
    +[PVEffectResources flushEngine];
  }

  notificationStateLock = self->_notificationStateLock;
  if (notificationStateLock)
  {
    (*(notificationStateLock->var0 + 1))(notificationStateLock);
  }

  throttleLock = self->_throttleLock;
  if (throttleLock)
  {
    (*(throttleLock->var0 + 1))(throttleLock);
  }

  playerRateLock = self->_playerRateLock;
  if (playerRateLock)
  {
    (*(playerRateLock->var0 + 1))(playerRateLock);
  }

  trackerLock = self->_trackerLock;
  if (trackerLock)
  {
    (*(trackerLock->var0 + 1))(trackerLock);
  }

  v11.receiver = self;
  v11.super_class = PVVideoCompositing;
  [(PVRendererBase *)&v11 dealloc];
}

- (void)renderContextChanged:(id)a3
{
  v4 = a3;
  v5 = [(PVRendererBase *)self compositingContext];
  v6 = HGObject::operator new(0x88uLL);
  PVAVFInstructionGraphContext::PVAVFInstructionGraphContext(v6, v5, v4, self->_thumbnailCompositing);

  effectScheduler = self->_effectScheduler;
  v15 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  [(PVEffectScheduler *)effectScheduler setEffectLoadingRenderContext:&v15];
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v13 = 0uLL;
  v14 = 0;
  [(PVVideoCompositing *)self schedulingTime];
  if (0 >> 96)
  {
    v8 = self->_effectScheduler;
    [(PVVideoCompositing *)self playerRate:v13];
    [(PVEffectScheduler *)v8 loadEffects:&v12 playerRate:?];
  }

  videoComposition = self->_videoComposition;
  v10 = [(AVVideoCompositionRenderContext *)v4 videoComposition];

  if (videoComposition != v10)
  {
    v11 = [(AVVideoCompositionRenderContext *)v4 videoComposition];
    [(PVVideoCompositing *)self videoCompositionChanged:v11];
  }

  [(PVVideoCompositing *)self _validateDestinationBufferColorSpace:v4];
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }
}

- (void)setColorSpacesFromDestinationBuffer:(id)a3
{
  v4 = [a3 newPixelBuffer];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CVBufferCopyAttachment(v4, *MEMORY[0x277CC4C00], 0);
  if (v6)
  {
    v7 = v6;
    if (CFEqual(v6, *MEMORY[0x277CC4C30]))
    {
      v8 = +[PVColorSpace p3d65GammaColorSpace];
      v9 = [(PVRendererBase *)self compositingContext];
      [v9 setWorkingColorSpace:v8];

      v10 = +[PVColorSpace p3d65GammaColorSpace];
      v11 = [(PVRendererBase *)self compositingContext];
      [v11 setOutputColorSpace:v10];

      v12 = [(PVRendererBase *)self compositingContext];
      [v12 setWorkingColorSpaceConformIntent:0];

      v13 = [(PVRendererBase *)self compositingContext];
      [v13 setBufferFormat:24];
    }

    else
    {
      if (!CFEqual(v7, *MEMORY[0x277CC4C20]))
      {
LABEL_9:
        CFRelease(v7);
        goto LABEL_10;
      }

      v14 = +[PVColorSpace rec709GammaColorSpace];
      v15 = [(PVRendererBase *)self compositingContext];
      [v15 setWorkingColorSpace:v14];

      v16 = +[PVColorSpace rec709GammaColorSpace];
      v17 = [(PVRendererBase *)self compositingContext];
      [v17 setOutputColorSpace:v16];

      v18 = [(PVRendererBase *)self compositingContext];
      [v18 setWorkingColorSpaceConformIntent:0];

      v13 = [(PVRendererBase *)self compositingContext];
      [v13 setBufferFormat:24];
    }

    goto LABEL_9;
  }

LABEL_10:

  CVPixelBufferRelease(v5);
}

- (void)_validateDestinationBufferColorSpace:(id)a3
{
  v11 = a3;
  v4 = [v11 newPixelBuffer];
  if (v4)
  {
    v5 = [PVColorSpace pvColorSpaceForCVPixelBuffer:v4];
    v6 = [(PVRendererBase *)self compositingContext];
    v7 = [v6 outputColorSpace];
    v8 = [v5 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(PVRendererBase *)self compositingContext];
      v10 = [v9 outputColorSpace];
      NSLog(&cfstr_WarningDestina.isa, self, v5, v10);
    }

    CVPixelBufferRelease(v4);
  }

  else
  {
    NSLog(&cfstr_WarningUnableT.isa, self);
  }
}

- (void)updateDestinationFormatForOutputColorSpace
{
  if (self->_destinationBufferPoolAttributes)
  {
    NSLog(&cfstr_WarningComposi.isa, a2, self);
  }
}

- (void)videoCompositionChanged:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_videoComposition, a3);
  p_videoCompositionDuration = &self->_videoCompositionDuration;
  v7 = *(MEMORY[0x277CC08F0] + 16);
  *&self->_videoCompositionDuration.value = *MEMORY[0x277CC08F0];
  self->_videoCompositionDuration.epoch = v7;
  [(AVVideoComposition *)self->_videoComposition instructions];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        *&lhs.value = *&p_videoCompositionDuration->value;
        lhs.epoch = self->_videoCompositionDuration.epoch;
        if (v12)
        {
          [v12 timeRange];
        }

        else
        {
          memset(v13, 0, sizeof(v13));
        }

        rhs = *&v13[1];
        CMTimeAdd(&v16, &lhs, &rhs);
        *&p_videoCompositionDuration->value = *&v16.value;
        self->_videoCompositionDuration.epoch = v16.epoch;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(PVEffectScheduler *)self->_effectScheduler resetSchedule:self->_videoComposition];
}

- (void)startVideoCompositionRequest:(id)a3
{
  v4 = a3;
  notificationStateLock = self->_notificationStateLock;
  HGSynchronizable::Lock(notificationStateLock);
  hostAppIsShuttingDown = self->_hostAppIsShuttingDown;
  HGSynchronizable::Unlock(notificationStateLock);
  if (hostAppIsShuttingDown)
  {
    [v4 finishCancelledRequest];
  }

  else
  {
    v7 = [v4 renderContext];
    [(PVVideoCompositing *)self _validateDestinationBufferColorSpace:v7];

    memset(&v35, 0, sizeof(v35));
    if (v4)
    {
      [v4 compositionTime];
      timescale = v35.timescale;
    }

    else
    {
      timescale = 0;
    }

    time1 = v35;
    CMTimeMake(&time2, 0, timescale);
    CMTimeMaximum(&time, &time1, &time2);
    v35 = time;
    time1 = time;
    lhs = self->_videoCompositionDuration;
    CMTimeMake(&rhs, 1, self->_videoCompositionDuration.timescale);
    CMTimeSubtract(&time2, &lhs, &rhs);
    CMTimeMinimum(&time, &time1, &time2);
    v35 = time;
    v9 = [(PVTaskTokenPool *)self->_tokenPool getToken];
    v10 = [PVAVFRenderJobDelegate alloc];
    time = v35;
    v11 = [(PVAVFRenderJobDelegate *)v10 initWithCompositor:self request:v4 compositionTime:&time thumbnailCompositing:self->_thumbnailCompositing];
    [(PVAVFRenderJobDelegate *)v11 setMinimumRequestCompletionTimeMS:self->_minimumRequestCompletionTimeMS];
    [(PVAVFRenderJobDelegate *)v11 setParentCode:[(PVVideoCompositing *)self parentCode]];
    -[PVAVFRenderJobDelegate setChildCode:](v11, "setChildCode:", [v9 tokenId]);
    [(PVAVFRenderJobDelegate *)v11 setToken:v9];
    throttleLock = self->_throttleLock;
    time.value = throttleLock;
    LOBYTE(time.timescale) = 0;
    HGSynchronizable::Lock(throttleLock);
    if (+[PVEnvironment PV_THROTTLE_EXPORT_ON_MEM_WARNING]&& (throttleRequestHandling = self->_throttleRequestHandling) != 0)
    {
      self->_throttleRequestHandling = throttleRequestHandling - 1;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    HGSynchronizable::Unlock(throttleLock);
    v15 = [v4 renderContext];
    v16 = [v15 highQualityRendering];

    if (v16)
    {
      PVRenderManager::FlushTextureFactories(self->_renderManager.m_Obj);
      if (v14)
      {
        if (HGLogger::getLevel("PVSignPost", v17) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }

        usleep(0x7A120u);
        if (HGLogger::getLevel("PVSignPost", v18) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }
      }
    }

    if (+[PVEnvironment PV_THROTTLE_AVF_EXPORT_REQUEST_HANDLING_MS])
    {
      v19 = [v4 renderContext];
      v20 = [v19 highQualityRendering];

      if (v20)
      {
        if (HGLogger::getLevel("PVSignPost", v21) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }

        usleep(1000 * +[PVEnvironment PV_THROTTLE_AVF_EXPORT_REQUEST_HANDLING_MS]);
        if (HGLogger::getLevel("PVSignPost", v22) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }
      }
    }

    v23 = [v4 renderContext];
    if ([v23 highQualityRendering])
    {
      v24 = +[PVDeviceCharacteristics isLowMemDevice];

      if (v24)
      {
        if (HGLogger::getLevel("PVSignPost", v25) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }

        usleep(0x88B8u);
        if (HGLogger::getLevel("PVSignPost", v26) >= 1)
        {
          [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
          kdebug_trace();
        }
      }
    }

    else
    {
    }

    if (HGLogger::getLevel("PVSignPost", v25) >= 1)
    {
      if (v4)
      {
        [v4 compositionTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time = time1;
      CMTimeGetSeconds(&time);
      [(PVAVFRenderJobDelegate *)v11 packedFamilyCode];
      kdebug_trace();
    }

    time = v35;
    [(PVRendererBase *)self startJobForDelegate:v11 time:&time playback:[(PVVideoCompositing *)self inPlayback]];
    if (+[PVEnvironment PV_SERIALIZE_EXPORT_REQUESTS])
    {
      v27 = [v4 renderContext];
      v28 = [v27 highQualityRendering];

      if (v28)
      {
        PVRenderJob::WaitForFinish(time1.value);
      }
    }

    v29 = [v4 renderContext];
    v30 = v14 & [v29 highQualityRendering];

    if (v30 == 1)
    {
      PVRenderJob::WaitForFinish(time1.value);
    }

    if (time1.value)
    {
      (*(*time1.value + 24))(time1.value);
    }
  }
}

- (void)setCancelsPendingRequests:(BOOL)a3
{
  if (self->_cancelsPendingRequests != a3)
  {
    cancelPendingLock = self->_cancelPendingLock;
    HGSynchronizable::Lock(cancelPendingLock);
    self->_cancelsPendingRequests = a3;
    HGSynchronizable::Unlock(cancelPendingLock);
  }
}

- (void)cancelAllPendingVideoCompositionRequests
{
  cancelPendingLock = self->_cancelPendingLock;
  LOBYTE(v4) = 0;
  HGSynchronizable::Lock(cancelPendingLock);
  if (self->_cancelsPendingRequests)
  {
    [(PVRendererBase *)self cancelAllPendingRequests:cancelPendingLock];
  }

  HGSynchronizable::Unlock(cancelPendingLock);
}

- (void)signalScheduling:(id *)a3 playerRate:(float)a4
{
  [(PVVideoCompositing *)self setPlayerRate:?];
  v7 = *a3;
  [(PVVideoCompositing *)self setSchedulingTime:&v7];
  [(PVEffectScheduler *)self->_effectScheduler loadEffects:&v7 playerRate:COERCE_DOUBLE(__PAIR64__(HIDWORD(a3->var0), LODWORD(a4)))];
}

- (void)setPlayerRate:(float)a3
{
  playerRateLock = self->_playerRateLock;
  LOBYTE(v12) = 0;
  HGSynchronizable::Lock(playerRateLock);
  if (a3 == 0.0 && self->_playerRate != 0.0)
  {
    [(PVRendererBase *)self printAndClearStats:playerRateLock];
    self->_windowedDropTotal = 0;
    begin = self->_dropFrameTracker.__map_.__begin_;
    end = self->_dropFrameTracker.__map_.__end_;
    self->_dropFrameTracker.__size_ = 0;
    v8 = end - begin;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*begin);
        v9 = self->_dropFrameTracker.__map_.__end_;
        begin = self->_dropFrameTracker.__map_.__begin_ + 1;
        self->_dropFrameTracker.__map_.__begin_ = begin;
        v8 = v9 - begin;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 512;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_10;
      }

      v10 = 1024;
    }

    self->_dropFrameTracker.__start_ = v10;
  }

LABEL_10:
  self->_playerRate = a3;
  HGSynchronizable::Unlock(playerRateLock);
  m_Obj = self->_renderManager.m_Obj;

  PVRenderManager::SetMinRenderPriority(m_Obj, a3 != 0.0);
}

- (float)playerRate
{
  playerRateLock = self->_playerRateLock;
  HGSynchronizable::Lock(playerRateLock);
  playerRate = self->_playerRate;
  HGSynchronizable::Unlock(playerRateLock);
  return playerRate;
}

- (void)setSchedulingTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_schedulingTime.value = *&a3->var0;
  self->_schedulingTime.epoch = var3;
}

- (void)setRefreshCompletionBlock:(id)a3
{
  v4 = a3;
  refreshCompletionCallbackQueue = self->_refreshCompletionCallbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __48__PVVideoCompositing_setRefreshCompletionBlock___block_invoke;
  v7[3] = &unk_279AA5CE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(refreshCompletionCallbackQueue, v7);
}

void __48__PVVideoCompositing_setRefreshCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2666EAFC0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;
}

- (id)refreshCompletionBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  refreshCompletionCallbackQueue = self->_refreshCompletionCallbackQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __44__PVVideoCompositing_refreshCompletionBlock__block_invoke;
  v5[3] = &unk_279AA57A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(refreshCompletionCallbackQueue, v5);
  v3 = MEMORY[0x2666EAFC0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__PVVideoCompositing_refreshCompletionBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2666EAFC0](*(*(a1 + 32) + 328));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)callRefreshCompletionBlock:(BOOL)a3
{
  refreshCompletionCallbackQueue = self->_refreshCompletionCallbackQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __49__PVVideoCompositing_callRefreshCompletionBlock___block_invoke;
  v4[3] = &unk_279AA56D8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(refreshCompletionCallbackQueue, v4);
}

uint64_t __49__PVVideoCompositing_callRefreshCompletionBlock___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 328);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 328), *(result + 40));
  }

  return result;
}

- (void)renderRequestFinished:(HGRef<PVRenderJob>)a3
{
  v5 = PVRenderJob::GetDelegate(*a3.var0);
  tokenPool = self->_tokenPool;
  v7 = [v5 token];
  [(PVTaskTokenPool *)tokenPool returnToken:v7];

  v8 = *a3.var0;
  v15 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  [(PVRendererBase *)self renderJobFinished:&v15];
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v9 = PVRenderJob::State(*a3.var0);
  if (HGLogger::getLevel("PVSignPost", v10) >= 1)
  {
    v11 = [v5 compositionRequest];
    v12 = v11;
    if (v11)
    {
      [v11 compositionTime];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    time = v14;
    CMTimeGetSeconds(&time);
    [v5 packedFamilyCode];
    kdebug_trace();
  }

  playerRateLock = self->_playerRateLock;
  time.value = playerRateLock;
  LOBYTE(time.timescale) = 0;
  HGSynchronizable::Lock(playerRateLock);
  if (self->_playerRate == 0.0)
  {
    [(PVVideoCompositing *)self callRefreshCompletionBlock:v9 == 4];
  }

  HGSynchronizable::Unlock(playerRateLock);
}

- (BOOL)shouldDoLowPowerExport
{
  notificationStateLock = self->_notificationStateLock;
  HGSynchronizable::Lock(notificationStateLock);
  didEnterBackground = self->_didEnterBackground;
  HGSynchronizable::Unlock(notificationStateLock);
  v5 = [(PVRendererBase *)self compositingContext];
  LOBYTE(notificationStateLock) = [v5 powerFriendlyExport] | didEnterBackground;

  return notificationStateLock & 1;
}

- (void)didRecieveMemoryWarning:(id)a3
{
  v5 = a3;
  PVRenderManager::FreeTexturePools(self->_renderManager.m_Obj);
  throttleLock = self->_throttleLock;
  HGSynchronizable::Lock(throttleLock);
  self->_throttleRequestHandling = 10;
  HGSynchronizable::Unlock(throttleLock);
}

- (void)applicationWillTerminate:(id)a3
{
  v5 = a3;
  notificationStateLock = self->_notificationStateLock;
  HGSynchronizable::Lock(notificationStateLock);
  self->_hostAppIsShuttingDown = 1;
  HGSynchronizable::Unlock(notificationStateLock);
}

- (void)didEnterBackground:(id)a3
{
  v4 = a3;
  notificationStateLock = self->_notificationStateLock;
  v8 = v4;
  HGSynchronizable::Lock(notificationStateLock);
  self->_didEnterBackground = 1;
  v6 = +[PVEnvironment PVPageSizeBackgrounded];
  v7 = [(PVRendererBase *)self compositingContext];
  [v7 setPageSize:v6];

  HGSynchronizable::Unlock(notificationStateLock);
}

- (void)willEnterForeground:(id)a3
{
  v4 = a3;
  notificationStateLock = self->_notificationStateLock;
  v8 = v4;
  HGSynchronizable::Lock(notificationStateLock);
  self->_didEnterBackground = 0;
  v6 = +[PVEnvironment PVPageSize];
  v7 = [(PVRendererBase *)self compositingContext];
  [v7 setPageSize:v6];

  HGSynchronizable::Unlock(notificationStateLock);
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 36) = 0;
  return self;
}

@end