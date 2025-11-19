@interface PVLivePlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime;
- (BOOL)_dropFrameForFullQueue;
- (BOOL)_dropFrameForSaturatedPrimaryPlayer;
- (BOOL)testOutOfOrderCompletion:(HGRef<PVRenderLinkJob>)a3;
- (BOOL)throttledBypassRenderLink;
- (PVColorSpace)outputColorSpace;
- (PVLivePlayer)initWithOptions:(id)a3 delegate:(id)a4;
- (id).cxx_construct;
- (id)getTaskToken;
- (id)playerSources;
- (id)readSourceFrameSets:(double)a3;
- (unsigned)_throttledQueueSize_NoLock;
- (void)_notifyDelegateOfDroppedFrame:(int)a3;
- (void)_renderLinkSignal:(id *)a3;
- (void)_statsLogCheck;
- (void)addStats:(const void *)a3;
- (void)bypassRenderLink:(HGRef<PVRenderLinkJob>)a3;
- (void)dealloc;
- (void)flush;
- (void)handleRenderLinkJob:(HGRef<PVRenderLinkJob>)a3;
- (void)printAndClearStats:(BOOL)a3;
- (void)renderLinkJobFinished:(HGRef<PVRenderLinkJob>)a3;
- (void)renderLinkSignal:(id *)a3;
- (void)renderLinkSignalDropped;
- (void)renderLinkSignalSkipped;
- (void)resetRenderTime;
- (void)setName:(id)a3;
- (void)setParentCode:(unsigned int)a3;
- (void)setPrimaryPlayer:(id)a3;
- (void)setRenderLink:(id)a3;
- (void)setSource:(id)a3 inputID:(unsigned int)a4;
- (void)shutdown;
- (void)start;
- (void)stop;
- (void)trackStats:(BOOL)a3;
- (void)updateRenderQueueUnits;
@end

@implementation PVLivePlayer

- (PVLivePlayer)initWithOptions:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = PVLivePlayer;
  if ([(PVLivePlayer *)&v9 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(PVLivePlayer *)self printAndClearStats:1];
  if ([(PVLivePlayer *)self status]!= 3)
  {
    NSLog(&cfstr_DeallocWithout.isa, self);
    [(PVLivePlayer *)self shutdown];
  }

  v3.receiver = self;
  v3.super_class = PVLivePlayer;
  [(PVLivePlayer *)&v3 dealloc];
}

- (void)setSource:(id)a3 inputID:(unsigned int)a4
{
  v6 = a3;
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __34__PVLivePlayer_setSource_inputID___block_invoke;
  block[3] = &unk_279AA7C10;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v8 = *ptr;
  v9 = v6;
  dispatch_sync(v8, block);
}

void __34__PVLivePlayer_setSource_inputID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2)
  {
    v4 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v1 + 16, v3);
    objc_storeStrong(v4 + 5, v2);
  }

  else
  {

    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__erase_unique<unsigned int>(v1 + 16, v3);
  }
}

- (id)playerSources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = objc_opt_new();
  ptr = self->_lock.__ptr_;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __29__PVLivePlayer_playerSources__block_invoke;
  v6[3] = &unk_279AA5C78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(*ptr, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__PVLivePlayer_playerSources__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3 = (v1 + 24);
  if (v2 != (v1 + 24))
  {
    do
    {
      v5 = *(v2 + 8);
      v6 = v2[5];
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      [v7 setObject:v6 forKeyedSubscript:v8];

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

- (BOOL)throttledBypassRenderLink
{
  v3 = [(PVLivePlayer *)self thermalThrottlingPolicy];

  if (!v3)
  {
    v5 = 0;
LABEL_6:
    v8 = [(PVLivePlayer *)self bypassRenderLink];
    goto LABEL_7;
  }

  v4 = [(PVLivePlayer *)self thermalThrottlingPolicy];
  v5 = [v4 populatedControlParametersForCurrentThermalLevel];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 playerBypassRenderLink];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v5 playerBypassRenderLink];
  v8 = [v7 BOOLValue];

LABEL_7:
  return v8;
}

- (void)updateRenderQueueUnits
{
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __38__PVLivePlayer_updateRenderQueueUnits__block_invoke;
  block[3] = &unk_279AA4DD8;
  block[4] = self;
  dispatch_sync(*ptr, block);
}

uint64_t __38__PVLivePlayer_updateRenderQueueUnits__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[20];
  result = [v2 queueSize];
  if (v3 < result)
  {
    HGRenderQueue::AddUserJobQueue(*(*(a1 + 32) + 72));
  }

  return result;
}

- (unsigned)_throttledQueueSize_NoLock
{
  v3 = [(PVLivePlayer *)self queueSize];
  v4 = [(PVLivePlayer *)self thermalThrottlingPolicy];

  if (v4)
  {
    v5 = [(PVLivePlayer *)self thermalThrottlingPolicy];
    v6 = [v5 populatedControlParametersForCurrentThermalLevel];

    v7 = [v6 playerQueueSize];

    if (v7)
    {
      v8 = [v6 playerQueueSize];
      v3 = [v8 unsignedIntegerValue];
    }
  }

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__10;
  v12 = &unk_260C3B1FE;
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __26__PVLivePlayer_renderTime__block_invoke;
  block[3] = &unk_279AA57A8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(*ptr, block);
  *retstr = v8[2];
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __26__PVLivePlayer_renderTime__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 88);
  v2[4].n128_u64[0] = *(v1 + 104);
  v2[3] = result;
  return result;
}

- (void)resetRenderTime
{
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __31__PVLivePlayer_resetRenderTime__block_invoke;
  block[3] = &unk_279AA4DD8;
  block[4] = self;
  dispatch_sync(*ptr, block);
}

__n128 __31__PVLivePlayer_resetRenderTime__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *(v1 + 88) = *MEMORY[0x277CC08F0];
  *(v1 + 104) = *(v2 + 16);
  atomic_store(0, (*(a1 + 32) + 152));
  *(*(a1 + 32) + 136) = 0;
  return result;
}

- (void)start
{
  if ([(PVLivePlayer *)self status]!= 3)
  {
    atomic_store(1u, &self->_playerStatus);
    ptr = self->_statLogTimer.__ptr_;

    PerfTimer::Start(ptr);
  }
}

- (void)stop
{
  if ([(PVLivePlayer *)self status]!= 3)
  {
    atomic_store(0, &self->_playerStatus);

    [(PVLivePlayer *)self printAndClearStats:1];
  }
}

- (void)shutdown
{
  if ([(PVLivePlayer *)self status]!= 3)
  {
    atomic_store(3u, &self->_playerStatus);
    [(PVLivePlayerRenderLink *)self->_renderLink registerWithPlayer:0];
    [(PVLivePlayerRenderLink *)self->_renderLink teardown];
    HGRenderQueue::Pause(self->_playerQueue.m_Obj);
    HGRenderQueue::CancelAllRenderJobs(self->_playerQueue.m_Obj, 1);
    HGRenderQueue::CancelUserJobs(self->_playerQueue.m_Obj, 1);
    HGRenderQueue::Drain(self->_playerQueue.m_Obj);
    m_Obj = self->_playerQueue.m_Obj;

    HGRenderQueue::Shutdown(m_Obj);
  }
}

- (void)flush
{
  HGRenderQueue::Pause(self->_playerQueue.m_Obj);
  HGRenderQueue::CancelAllRenderJobs(self->_playerQueue.m_Obj, 1);
  HGRenderQueue::CancelUserJobs(self->_playerQueue.m_Obj, 1);
  [(PVRendererBase *)self->_renderer cancelAllPendingRequests];
  +[PVEffectResources flushEngine];
  m_Obj = self->_playerQueue.m_Obj;

  HGRenderQueue::Restart(m_Obj);
}

- (PVColorSpace)outputColorSpace
{
  v2 = [(PVRendererBase *)self->_renderer compositingContext];
  v3 = [v2 outputColorSpace];

  return v3;
}

- (void)setPrimaryPlayer:(id)a3
{
  v4 = a3;
  ptr = self->_lock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __33__PVLivePlayer_setPrimaryPlayer___block_invoke;
  v8[3] = &unk_279AA4E00;
  v8[4] = self;
  v9 = v4;
  v6 = *ptr;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  name = self->_name;
  self->_name = v5;

  v7 = [(NSString *)self->_name stringByAppendingString:@"_Renderer"];
  [(PVRendererBase *)self->_renderer setName:v7];

  ptr = self->_perfStatsLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __24__PVLivePlayer_setName___block_invoke;
  block[3] = &unk_279AA4DD8;
  block[4] = self;
  dispatch_sync(*ptr, block);
}

- (void)setParentCode:(unsigned int)a3
{
  ptr = self->_lock.__ptr_;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __30__PVLivePlayer_setParentCode___block_invoke;
  v4[3] = &unk_279AA7C38;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(*ptr, v4);
}

void __30__PVLivePlayer_setParentCode___block_invoke(uint64_t a1)
{
  atomic_store(*(a1 + 40), (*(a1 + 32) + 168));
  v2 = [PVTaskTokenPool alloc];
  v3 = atomic_load((*(a1 + 32) + 168));
  v4 = [(PVTaskTokenPool *)v2 initWithOffset:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = v4;
}

- (id)getTaskToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  ptr = self->_lock.__ptr_;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __28__PVLivePlayer_getTaskToken__block_invoke;
  v5[3] = &unk_279AA57A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(*ptr, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__PVLivePlayer_getTaskToken__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) getToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setRenderLink:(id)a3
{
  v4 = a3;
  ptr = self->_lock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __30__PVLivePlayer_setRenderLink___block_invoke;
  v8[3] = &unk_279AA4E00;
  v8[4] = self;
  v9 = v4;
  v6 = *ptr;
  v7 = v4;
  dispatch_sync(v6, v8);
}

uint64_t __30__PVLivePlayer_setRenderLink___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  if (v3)
  {
    [v3 registerWithPlayer:0];
    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 216), *(a1 + 40));
  v4 = *(*(a1 + 32) + 216);

  return [v4 registerWithPlayer:?];
}

- (void)renderLinkSignalDropped
{
  [(PVLivePlayer *)self getPackedFamilyCode:0];
  if (HGLogger::getLevel("PVSignPost", v2) >= 1)
  {

    kdebug_trace();
  }
}

- (void)renderLinkSignalSkipped
{
  if ([(PVLivePlayer *)self status])
  {
    [(PVLivePlayer *)self getPackedFamilyCode:0];
    if (HGLogger::getLevel("PVSignPost", v3) >= 1)
    {

      kdebug_trace();
    }
  }
}

- (void)renderLinkSignal:(id *)a3
{
  if ([(PVLivePlayer *)self status])
  {
    [(PVLivePlayer *)self getPackedFamilyCode:0];
    if (HGLogger::getLevel("PVSignPost", v5) >= 1)
    {
      kdebug_trace();
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x4812000000;
    v15 = __Block_byref_object_copy__9;
    v16 = __Block_byref_object_dispose__10;
    v17 = &unk_260C3B1FE;
    ptr = self->_lock.__ptr_;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *"";
    block[2] = __33__PVLivePlayer_renderLinkSignal___block_invoke;
    block[3] = &unk_279AA7C60;
    v10 = *&a3->var0;
    var3 = a3->var3;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(*ptr, block);
    v7 = *(v13 + 3);
    v8 = v13[8];
    [(PVLivePlayer *)self _renderLinkSignal:&v7];
    [(PVLivePlayer *)self _statsLogCheck];
    _Block_object_dispose(&v12, 8);
  }
}

__n128 __33__PVLivePlayer_renderLinkSignal___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 136) == 1)
  {
    lhs = *(a1 + 48);
    rhs = *(v2 + 112);
    CMTimeSubtract(&v12, &lhs, &rhs);
  }

  else
  {
    v3 = *(a1 + 48);
    *(v2 + 128) = *(a1 + 64);
    *(v2 + 112) = v3;
    *(*(a1 + 32) + 136) = 1;
    v12 = **&MEMORY[0x277CC08F0];
  }

  rhs = *(*(a1 + 32) + 88);
  v9 = v12;
  CMTimeAdd(&lhs, &rhs, &v9);
  *(*(a1 + 32) + 88) = lhs;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 88);
  *(v5 + 64) = *(v4 + 104);
  *(v5 + 48) = v6;
  v7 = *(a1 + 32);
  result = *(a1 + 48);
  v7[8].n128_u64[0] = *(a1 + 64);
  v7[7] = result;
  return result;
}

- (void)_renderLinkSignal:(id *)a3
{
  if ([(PVLivePlayer *)self status]!= 3 && ![(PVLivePlayer *)self _dropFrameForSaturatedPrimaryPlayer]&& ![(PVLivePlayer *)self _dropFrameForFullQueue])
  {
    v5 = [(PVLivePlayer *)self getTaskToken];
    v6 = CACurrentMediaTime();
    v7 = HGObject::operator new(0xD0uLL);
    v10 = *a3;
    PVRenderLinkJob::PVRenderLinkJob(v7, self, &v10, v6, v5);
    FrameStatsDescription = PVPerfStats::GetFrameStatsDescription(self->_perfStats.__ptr_);
    v9 = (**FrameStatsDescription)(FrameStatsDescription);
    PVPerfStats::FrameStats::Init((v7 + 120), v9, atomic_fetch_add(&self->_frameCount, 1u));
    HGRenderQueue::EnqueueUserJob(self->_playerQueue.m_Obj, v7);
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }
  }
}

- (BOOL)_dropFrameForSaturatedPrimaryPlayer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ptr = self->_lock.__ptr_;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __51__PVLivePlayer__dropFrameForSaturatedPrimaryPlayer__block_invoke;
  v6[3] = &unk_279AA5C78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(*ptr, v6);
  v4 = 0;
  if (*(v8 + 24) == 1)
  {
    [(PVLivePlayer *)self _notifyDelegateOfDroppedFrame:1];
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

void *__51__PVLivePlayer__dropFrameForSaturatedPrimaryPlayer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result status];
    if (result == 2)
    {
      [*(a1 + 32) getPackedFamilyCode:0];
      result = HGLogger::getLevel("PVSignPost", v3);
      if (result >= 1)
      {
        result = kdebug_trace();
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (BOOL)_dropFrameForFullQueue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ptr = self->_lock.__ptr_;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __38__PVLivePlayer__dropFrameForFullQueue__block_invoke;
  v6[3] = &unk_279AA5C78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(*ptr, v6);
  v4 = 0;
  if (*(v8 + 24) == 1)
  {
    [(PVLivePlayer *)self _notifyDelegateOfDroppedFrame:0];
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __38__PVLivePlayer__dropFrameForFullQueue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _throttledQueueSize_NoLock];
  v3 = *(a1 + 32);
  v4 = *(v3 + 84);
  if (v4 >= v2)
  {
    [*(a1 + 32) getPackedFamilyCode:0];
    if (HGLogger::getLevel("PVSignPost", v7) >= 1)
    {
      kdebug_trace();
    }

    result = [*(a1 + 32) setStatus:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *(v3 + 84) = v4 + 1;
    if (*(*(a1 + 32) + 84) >= v2)
    {
      v5 = *(a1 + 32);
      v6 = 2;
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = 1;
    }

    return [v5 setStatus:v6];
  }

  return result;
}

- (void)_notifyDelegateOfDroppedFrame:(int)a3
{
  v3 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(PVLivePlayer *)self readSourceFrameSets:CACurrentMediaTime()];
    [(PVLivePlayer *)self renderTime];
    [WeakRetained livePlayerDroppedFrame:v3 sources:v6 time:v7];
  }
}

- (id)readSourceFrameSets:(double)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = objc_opt_new();
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __36__PVLivePlayer_readSourceFrameSets___block_invoke;
  block[3] = &unk_279AA7C88;
  block[4] = self;
  block[5] = &v9;
  *&block[6] = a3;
  dispatch_sync(*ptr, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__PVLivePlayer_readSourceFrameSets___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2 != (v1 + 24))
  {
    do
    {
      v4 = *(v2 + 8);
      v5 = v2[5];
      v6 = [v5 imageBufferForHostTime:*(a1 + 48)];
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      [v7 setObject:v6 forKeyedSubscript:v8];

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != (*(a1 + 32) + 24));
  }
}

- (void)handleRenderLinkJob:(HGRef<PVRenderLinkJob>)a3
{
  if (HGGLBlendingInfo::GetRGBOperation(*a3.var0) == 4)
  {
    v31 = *a3.var0;
    if (v31)
    {
      (*(*v31 + 16))(v31);
    }

    [(PVLivePlayer *)self renderLinkJobFinished:&v31];
    if (v31)
    {
      (*(*v31 + 24))(v31);
    }
  }

  else
  {
    PerfTimer::PerfTimer(&v30);
    v5 = -[PVLivePlayer getPackedFamilyCode:](self, "getPackedFamilyCode:", [*(*a3.var0 + 112) tokenId]);
    if (HGLogger::getLevel("PVSignPost", v6) >= 1)
    {
      kdebug_trace();
    }

    v7 = [(PVLivePlayer *)self readSourceFrameSets:*(*a3.var0 + 104)];
    v8 = *a3.var0;
    v9 = PerfTimer::End(&v30);
    PVPerfStats::FrameStats::SetValueForIndex(v8 + 120, 0, v9);
    WeakRetained = objc_loadWeakRetained(&self->_weakDelegate);
    if (WeakRetained)
    {
      PerfTimer::PerfTimer(&v28);
      if (HGLogger::getLevel("PVSignPost", v11) >= 1)
      {
        kdebug_trace();
      }

      v12 = *a3.var0;
      v22 = *(*a3.var0 + 80);
      v23 = *(v12 + 96);
      v13 = [WeakRetained buildRenderRequest:v7 time:&v22];
      if ([(PVLivePlayer *)self lowerGCDPriority])
      {
        [v13 setGcdPriority:0];
      }

      if ([(PVLivePlayer *)self lowerGPUPriority])
      {
        [v13 setGpuPriority:0];
      }

      [v13 setParentCode:HIDWORD(v5)];
      [v13 setChildCode:v5];
      if (HGLogger::getLevel("PVSignPost", v14) >= 1)
      {
        kdebug_trace();
      }

      v15 = *a3.var0;
      v16 = PerfTimer::End(&v28);
      PVPerfStats::FrameStats::SetValueForIndex(v15 + 120, 1u, v16);
      *&v22 = 0;
      *(&v22 + 1) = &v22;
      v23 = 0x4012000000;
      v24 = __Block_byref_object_copy__19;
      v25 = __Block_byref_object_dispose__20;
      v26 = &unk_260C3B1FE;
      PerfTimer::PerfTimer(&v27);
      if (HGLogger::getLevel("PVSignPost", v17) >= 1)
      {
        kdebug_trace();
      }

      renderer = self->_renderer;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3321888768;
      v20[2] = __36__PVLivePlayer_handleRenderLinkJob___block_invoke;
      v20[3] = &unk_2871CF058;
      v19 = *a3.var0;
      v20[6] = v5;
      v21 = v19;
      if (v19)
      {
        (*(*v19 + 16))(v19);
      }

      v20[4] = self;
      v20[5] = &v22;
      [(PVRenderer *)renderer startRenderRequest:v13 completionHandler:v20];
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v29 = *a3.var0;
      if (v29)
      {
        (*(*v29 + 16))(v29);
      }

      [(PVLivePlayer *)self renderLinkJobFinished:&v29];
      if (v29)
      {
        (*(*v29 + 24))(v29);
      }
    }
  }
}

void __36__PVLivePlayer_handleRenderLinkJob___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (HGLogger::getLevel("PVSignPost", v7) >= 1)
  {
    kdebug_trace();
  }

  v8 = a1[7];
  v9 = PerfTimer::End((*(a1[5] + 8) + 48));
  PVPerfStats::FrameStats::SetValueForIndex(v8 + 120, 2u, v9);
  v10 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __36__PVLivePlayer_handleRenderLinkJob___block_invoke_2;
  block[3] = &unk_2871CF020;
  v11 = a1[7];
  block[4] = a1[4];
  v17 = v11;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v18 = a1[6];
  v12 = v6;
  v15 = v12;
  v13 = v5;
  v16 = v13;
  dispatch_async(v10, block);

  if (v17)
  {
    (*(*v17 + 24))(v17);
  }
}

void __36__PVLivePlayer_handleRenderLinkJob___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (WeakRetained)
  {
    PerfTimer::PerfTimer(&v21);
    if (HGLogger::getLevel("PVSignPost", v3) >= 1)
    {
      kdebug_trace();
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v20 = v5;
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    v7 = [v4 testOutOfOrderCompletion:&v20];
    if (v20)
    {
      (*(*v20 + 24))(v20);
    }

    if (v7 && HGLogger::getLevel("PVSignPost", v6) >= 1)
    {
      kdebug_trace();
    }

    [WeakRetained renderRequestComplete:*(a1 + 40) results:*(a1 + 48) completedOutOfOrder:v7];
    if (HGLogger::getLevel("PVSignPost", v8) >= 1)
    {
      kdebug_trace();
    }

    v9 = *(a1 + 56);
    v10 = PerfTimer::End(&v21);
    PVPerfStats::FrameStats::SetValueForIndex(v9 + 120, 3u, v10);
    v11 = PVPerfStats::FrameStats::MarkEndTimeForIndex((*(a1 + 56) + 120), 4u);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v19 = v13;
    if (v13)
    {
      (*(*v13 + 16))(v13, v11);
    }

    [v12 renderLinkJobFinished:{&v19, v11}];
    if (v19)
    {
      (*(*v19 + 24))(v19);
    }

    [*(a1 + 32) addStats:*(a1 + 56) + 120];
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v18 = v15;
    if (v15)
    {
      (*(*v15 + 16))(v15);
    }

    [v14 bypassRenderLink:&v18];
    if (v18)
    {
      (*(*v18 + 24))(v18);
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v22 = v17;
    if (v17)
    {
      (*(*v17 + 16))(v17);
    }

    [v16 renderLinkJobFinished:&v22];
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }
  }
}

- (BOOL)testOutOfOrderCompletion:(HGRef<PVRenderLinkJob>)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  ptr = self->_lock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __41__PVLivePlayer_testOutOfOrderCompletion___block_invoke;
  block[3] = &unk_2871CF090;
  v5 = *a3.var0;
  v9 = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5, a2);
  }

  block[4] = self;
  block[5] = &v10;
  dispatch_sync(*ptr, block);
  v6 = *(v11 + 24);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void *__41__PVLivePlayer_testOutOfOrderCompletion___block_invoke(void *result)
{
  v1 = *(result[6] + 104);
  *(*(result[5] + 8) + 24) = v1 < *(result[4] + 144);
  *(result[4] + 144) = v1;
  return result;
}

- (void)renderLinkJobFinished:(HGRef<PVRenderLinkJob>)a3
{
  ptr = self->_lock.__ptr_;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3321888768;
  v6[2] = __38__PVLivePlayer_renderLinkJobFinished___block_invoke;
  v6[3] = &unk_2871CF0C8;
  v5 = *a3.var0;
  v6[4] = self;
  v7 = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5, a2);
  }

  dispatch_sync(*ptr, v6);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }
}

uint64_t __38__PVLivePlayer_renderLinkJobFinished___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 84);
  if ([*(a1 + 32) status] != 3)
  {
    [*(a1 + 32) setStatus:1];
  }

  v2 = *(*(a1 + 32) + 176);
  v3 = *(*(a1 + 40) + 112);

  return [v2 returnToken:v3];
}

- (void)bypassRenderLink:(HGRef<PVRenderLinkJob>)a3
{
  if ([(PVLivePlayer *)self throttledBypassRenderLink])
  {
    if ([(PVLivePlayer *)self _throttledQueueSize_NoLock]== 1)
    {
      memset(&v8, 0, sizeof(v8));
      [(PVLivePlayer *)self renderTime];
      time1 = v8;
      v6 = *(*a3.var0 + 80);
      if (CMTimeCompare(&time1, &v6) >= 1)
      {
        if (HGLogger::getLevel("PVSignPost", v5) >= 1)
        {
          [(PVLivePlayer *)self getPackedFamilyCode:0];
          kdebug_trace();
        }

        time1 = v8;
        [(PVLivePlayer *)self _renderLinkSignal:&time1];
      }
    }
  }
}

- (void)trackStats:(BOOL)a3
{
  ptr = self->_perfStatsLock.__ptr_;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __27__PVLivePlayer_trackStats___block_invoke;
  v4[3] = &unk_279AA56D8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(*ptr, v4);
}

- (void)addStats:(const void *)a3
{
  if (PVPerfStats::FrameStats::GetSize(a3))
  {
    ptr = self->_perfStatsLock.__ptr_;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = *"";
    v6[2] = __25__PVLivePlayer_addStats___block_invoke;
    v6[3] = &unk_279AA7CB0;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(*ptr, v6);
  }
}

void __25__PVLivePlayer_addStats___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 208) == 1)
  {
    PVPerfStats::AddFrameStats(*(v1 + 200), *(a1 + 40));
  }
}

- (void)printAndClearStats:(BOOL)a3
{
  if ((atomic_load_explicit(&qword_280C5CCE8, memory_order_acquire) & 1) == 0)
  {
    [PVLivePlayer printAndClearStats:];
  }

  if ([PVLivePlayer printAndClearStats:]::onceToken != -1)
  {
    [PVLivePlayer printAndClearStats:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __35__PVLivePlayer_printAndClearStats___block_invoke_2;
  v5[3] = &unk_279AA56D8;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(*_MergedGlobals_7, v5);
  PerfTimer::Start(self->_statLogTimer.__ptr_);
}

void __35__PVLivePlayer_printAndClearStats___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 192);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __35__PVLivePlayer_printAndClearStats___block_invoke_3;
  v3[3] = &unk_279AA56D8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  dispatch_sync(*v2, v3);
}

void __35__PVLivePlayer_printAndClearStats___block_invoke_3(uint64_t a1)
{
  PVPerfStats::Print(*(*(a1 + 32) + 200), 0, 1);
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 200);

    PVPerfStats::Reset(v2);
  }
}

- (void)_statsLogCheck
{
  if (PerfTimer::End(self->_statLogTimer.__ptr_) > 5.0)
  {

    [(PVLivePlayer *)self printAndClearStats:1];
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 2) = self + 24;
  *(self + 9) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  return self;
}

- (void)printAndClearStats:.cold.1()
{
  if (__cxa_guard_acquire(&qword_280C5CCE8))
  {
    __cxa_atexit(std::unique_ptr<PVGCDLock>::~unique_ptr[abi:ne200100], &_MergedGlobals_7, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5CCE8);
  }
}

@end