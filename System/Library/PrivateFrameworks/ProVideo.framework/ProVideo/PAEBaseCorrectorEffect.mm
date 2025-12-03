@interface PAEBaseCorrectorEffect
+ (unint64_t)colorPrimaries:(id)primaries;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (BOOL)renderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (PAEBaseCorrectorEffect)initWithAPIManager:(id)manager;
- (PROAPIAccessing)apiManager;
- (id)customChannelData:(id)data ofParamID:(unsigned int)d time:(id *)time;
- (id)properties;
- (void)_resyncAtTime:(id *)time apiManager:(id)manager;
- (void)_resyncOnceAtTime:(id *)time apiManager:(id)manager;
- (void)dealloc;
@end

@implementation PAEBaseCorrectorEffect

- (PAEBaseCorrectorEffect)initWithAPIManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = PAEBaseCorrectorEffect;
  v4 = [(PAEBaseCorrectorEffect *)&v6 init];
  if (v4)
  {
    v4->_apiManager = manager;
    v4->_resyncQueue = dispatch_queue_create("com.apple.paeft.effect", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_resyncMutex);
  pthread_cond_destroy(&self->_resyncCondition);
  dispatch_release(self->_resyncQueue);
  resyncOnce = self->_resyncOnce;
  if (resyncOnce)
  {
    MEMORY[0x2666E9F00](resyncOnce, 0x1000C4052888210);
  }

  actionCount = self->_actionCount;
  if (actionCount)
  {
    MEMORY[0x2666E9F00](actionCount, 0x1000C4052888210);
  }

  v5.receiver = self;
  v5.super_class = PAEBaseCorrectorEffect;
  [(PAEBaseCorrectorEffect *)&v5 dealloc];
}

- (id)properties
{
  if ([PAEBaseCorrectorEffect properties]::once != -1)
  {
    [PAEBaseCorrectorEffect properties];
  }

  return [PAEBaseCorrectorEffect properties]::properties;
}

uint64_t __36__PAEBaseCorrectorEffect_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:6];
  result = [v0 initWithObjectsAndKeys:{@"PositionIndependent", MEMORY[0x277CBEC28], @"MayRemapTime", MEMORY[0x277CBEC38], @"SupportsLargeRenderScale", MEMORY[0x277CBEC38], @"SupportsHeliumRendering", v1, @"SDRWorkingSpace", v2, @"HDRWorkingSpace", v3, @"AutoColorProcessingSupport", v4, @"PixelTransformSupport", 0}];
  [PAEBaseCorrectorEffect properties]::properties = result;
  return result;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  if (width)
  {
    *width = input->var0;
  }

  if (height)
  {
    *height = input->var1;
  }

  return 1;
}

- (void)_resyncOnceAtTime:(id *)time apiManager:(id)manager
{
  resyncOnce = self->_resyncOnce;
  if ([(PAEBaseCorrectorEffect *)self hostIsFCP])
  {
    v8 = [manager apiForProtocol:&unk_28736D5F0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __55__PAEBaseCorrectorEffect__resyncOnceAtTime_apiManager___block_invoke;
    v16[3] = &unk_279AA7EA8;
    v16[4] = self;
    v16[5] = manager;
    v16[6] = resyncOnce;
    v16[7] = time;
    [v8 performBlockWithinReadLock:v16];
  }

  else
  {
    v9 = pthread_self();
    v10 = pthread_mach_thread_np(v9);
    v11 = 0;
    atomic_compare_exchange_strong(resyncOnce, &v11, v10);
    if (v11)
    {
      v13 = atomic_load(resyncOnce);
      if ((v13 & 3) != 0)
      {
        pthread_mutex_lock(&self->_resyncMutex);
        while (1)
        {
          v14 = atomic_load(resyncOnce);
          if ((v14 & 3) == 0)
          {
            break;
          }

          pthread_cond_wait(&self->_resyncCondition, &self->_resyncMutex);
        }

        pthread_mutex_unlock(&self->_resyncMutex);
      }
    }

    else
    {
      pthread_mutex_lock(&self->_resyncMutex);
      resyncQueue = self->_resyncQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = *"";
      block[2] = __55__PAEBaseCorrectorEffect__resyncOnceAtTime_apiManager___block_invoke_2;
      block[3] = &unk_279AA7ED0;
      block[4] = self;
      block[5] = manager;
      block[6] = time;
      dispatch_sync(resyncQueue, block);
      atomic_fetch_and(resyncOnce, 0xFFFFFFFC);
      pthread_cond_broadcast(&self->_resyncCondition);
      pthread_mutex_unlock(&self->_resyncMutex);
    }
  }
}

uint64_t __55__PAEBaseCorrectorEffect__resyncOnceAtTime_apiManager___block_invoke(uint64_t a1)
{
  v2 = pthread_self();
  result = pthread_mach_thread_np(v2);
  v4 = 0;
  atomic_compare_exchange_strong(*(a1 + 48), &v4, result);
  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = **(a1 + 56);

    return [v5 resyncOnce:v6 atTime:v7];
  }

  return result;
}

- (void)_resyncAtTime:(id *)time apiManager:(id)manager
{
  if (atomic_load(self->_actionCount))
  {
    v5 = 1;
  }

  else
  {
    v5 = time->var1 == 0;
  }

  if (!v5)
  {
    if ([(PAEBaseCorrectorEffect *)self hostIsFCP])
    {
      v9 = [manager apiForProtocol:&unk_28736D5F0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = *"";
      v11[2] = __51__PAEBaseCorrectorEffect__resyncAtTime_apiManager___block_invoke;
      v11[3] = &unk_279AA7ED0;
      v11[4] = self;
      v11[5] = manager;
      v11[6] = time;
      [v9 performBlockWithinReadLock:v11];
    }

    else
    {
      var1 = time->var1;

      [(PAEBaseCorrectorEffect *)self resync:manager atTime:var1];
    }
  }
}

- (BOOL)renderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v20 = 0;
  }

  [(PAEBaseCorrectorEffect *)self _resyncOnceAtTime:info apiManager:self->_apiManager];
  [(PAEBaseCorrectorEffect *)self _resyncAtTime:info apiManager:self->_apiManager];
  apiManager = self->_apiManager;
  v10 = *&info->var2;
  v17 = *&info->var0.var0;
  v18 = v10;
  v19 = *&info->var4;
  if ([(PAEBaseCorrectorEffect *)self overrideRender:apiManager withOutputImage:output inputImage:input input:v20 withInfo:&v17])
  {
LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  newNodeForCorrector = [(PAEBaseCorrectorEffect *)self newNodeForCorrector];
  if (newNodeForCorrector)
  {
    v12 = self->_apiManager;
    var1 = info->var0.var1;
    if (!info->var0.var1)
    {
      var1 = MEMORY[0x277CC08F0];
    }

    v14 = *(var1 + 2);
    v17 = *var1;
    *&v18 = v14;
    [(PAEBaseCorrectorEffect *)self setParameters:v12 onNodeCorrector:newNodeForCorrector time:&v17];
    (*(*newNodeForCorrector + 120))(newNodeForCorrector, 0, v20);
    (*(*newNodeForCorrector + 16))(newNodeForCorrector);
    *&v17 = newNodeForCorrector;
    [output setHeliumRef:&v17];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    (*(*newNodeForCorrector + 24))(newNodeForCorrector);
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  return v15;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  if (software)
  {
    *software = 0;
  }

  if (hardware)
  {
    *hardware = 1;
  }

  return 1;
}

- (id)customChannelData:(id)data ofParamID:(unsigned int)d time:(id *)time
{
  v6 = 0;
  [(PAEBaseCorrectorEffect *)self resync:data atTime:time paramID:*&d customChannelData:&v6];
  return v6;
}

- (PROAPIAccessing)apiManager
{
  v2 = self->_apiManager;

  return v2;
}

+ (unint64_t)colorPrimaries:(id)primaries
{
  v3 = [primaries apiForProtocol:&unk_287359A98];

  return [v3 colorPrimaries];
}

@end