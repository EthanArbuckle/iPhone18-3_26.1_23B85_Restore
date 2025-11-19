@interface PAEBaseCorrectorEffect
+ (unint64_t)colorPrimaries:(id)a3;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (BOOL)renderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (PAEBaseCorrectorEffect)initWithAPIManager:(id)a3;
- (PROAPIAccessing)apiManager;
- (id)customChannelData:(id)a3 ofParamID:(unsigned int)a4 time:(id *)a5;
- (id)properties;
- (void)_resyncAtTime:(id *)a3 apiManager:(id)a4;
- (void)_resyncOnceAtTime:(id *)a3 apiManager:(id)a4;
- (void)dealloc;
@end

@implementation PAEBaseCorrectorEffect

- (PAEBaseCorrectorEffect)initWithAPIManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = PAEBaseCorrectorEffect;
  v4 = [(PAEBaseCorrectorEffect *)&v6 init];
  if (v4)
  {
    v4->_apiManager = a3;
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

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  if (a3)
  {
    *a3 = a5->var0;
  }

  if (a4)
  {
    *a4 = a5->var1;
  }

  return 1;
}

- (void)_resyncOnceAtTime:(id *)a3 apiManager:(id)a4
{
  resyncOnce = self->_resyncOnce;
  if ([(PAEBaseCorrectorEffect *)self hostIsFCP])
  {
    v8 = [a4 apiForProtocol:&unk_28736D5F0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __55__PAEBaseCorrectorEffect__resyncOnceAtTime_apiManager___block_invoke;
    v16[3] = &unk_279AA7EA8;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = resyncOnce;
    v16[7] = a3;
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
      block[5] = a4;
      block[6] = a3;
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

- (void)_resyncAtTime:(id *)a3 apiManager:(id)a4
{
  if (atomic_load(self->_actionCount))
  {
    v5 = 1;
  }

  else
  {
    v5 = a3->var1 == 0;
  }

  if (!v5)
  {
    if ([(PAEBaseCorrectorEffect *)self hostIsFCP])
    {
      v9 = [a4 apiForProtocol:&unk_28736D5F0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = *"";
      v11[2] = __51__PAEBaseCorrectorEffect__resyncAtTime_apiManager___block_invoke;
      v11[3] = &unk_279AA7ED0;
      v11[4] = self;
      v11[5] = a4;
      v11[6] = a3;
      [v9 performBlockWithinReadLock:v11];
    }

    else
    {
      var1 = a3->var1;

      [(PAEBaseCorrectorEffect *)self resync:a4 atTime:var1];
    }
  }
}

- (BOOL)renderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v20 = 0;
  }

  [(PAEBaseCorrectorEffect *)self _resyncOnceAtTime:a5 apiManager:self->_apiManager];
  [(PAEBaseCorrectorEffect *)self _resyncAtTime:a5 apiManager:self->_apiManager];
  apiManager = self->_apiManager;
  v10 = *&a5->var2;
  v17 = *&a5->var0.var0;
  v18 = v10;
  v19 = *&a5->var4;
  if ([(PAEBaseCorrectorEffect *)self overrideRender:apiManager withOutputImage:a3 inputImage:a4 input:v20 withInfo:&v17])
  {
LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  v11 = [(PAEBaseCorrectorEffect *)self newNodeForCorrector];
  if (v11)
  {
    v12 = self->_apiManager;
    var1 = a5->var0.var1;
    if (!a5->var0.var1)
    {
      var1 = MEMORY[0x277CC08F0];
    }

    v14 = *(var1 + 2);
    v17 = *var1;
    *&v18 = v14;
    [(PAEBaseCorrectorEffect *)self setParameters:v12 onNodeCorrector:v11 time:&v17];
    (*(*v11 + 120))(v11, 0, v20);
    (*(*v11 + 16))(v11);
    *&v17 = v11;
    [a3 setHeliumRef:&v17];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    (*(*v11 + 24))(v11);
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

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 1;
  }

  return 1;
}

- (id)customChannelData:(id)a3 ofParamID:(unsigned int)a4 time:(id *)a5
{
  v6 = 0;
  [(PAEBaseCorrectorEffect *)self resync:a3 atTime:a5 paramID:*&a4 customChannelData:&v6];
  return v6;
}

- (PROAPIAccessing)apiManager
{
  v2 = self->_apiManager;

  return v2;
}

+ (unint64_t)colorPrimaries:(id)a3
{
  v3 = [a3 apiForProtocol:&unk_287359A98];

  return [v3 colorPrimaries];
}

@end