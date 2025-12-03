@interface AudioDevice
- (PLAudioAgent)ctx;
- (id)initInputDeviceWithCtx:(id)ctx;
- (id)initOutputDeviceWithCtx:(id)ctx;
- (void)cleanAndUpdateDeviceInfo;
- (void)flushAndUpdateDeviceInfoWithBlock:(id)block;
- (void)initAudioPropertyHandler;
@end

@implementation AudioDevice

- (id)initInputDeviceWithCtx:(id)ctx
{
  ctxCopy = ctx;
  v8.receiver = self;
  v8.super_class = AudioDevice;
  v5 = [(AudioDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ctx, ctxCopy);
    v6->_isInput = 1;
    [(AudioDevice *)v6 initAudioPropertyHandler];
  }

  return v6;
}

- (id)initOutputDeviceWithCtx:(id)ctx
{
  ctxCopy = ctx;
  v8.receiver = self;
  v8.super_class = AudioDevice;
  v5 = [(AudioDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ctx, ctxCopy);
    v6->_isInput = 0;
    [(AudioDevice *)v6 initAudioPropertyHandler];
  }

  return v6;
}

- (void)initAudioPropertyHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__AudioDevice_initAudioPropertyHandler__block_invoke;
  v5[3] = &unk_27825E878;
  objc_copyWeak(&v6, &location);
  v3 = _Block_copy(v5);
  audioPropertyHandlerBlock = self->_audioPropertyHandlerBlock;
  self->_audioPropertyHandlerBlock = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__AudioDevice_initAudioPropertyHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained handleAudioDevicePropertyChange:a2 addresses:a3];
    WeakRetained = v6;
  }
}

- (void)flushAndUpdateDeviceInfoWithBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_ctx);
  if (WeakRetained)
  {
    if (self->_isDirty)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      lastUpdateTime = self->_lastUpdateTime;
      self->_lastUpdateTime = monotonicDate;

      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }
    }

    else
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      self->_isDirty = 1;
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v9 = self->_lastUpdateTime;
      self->_lastUpdateTime = monotonicDate2;

      v10 = dispatch_time(0, 10000000000);
      workQueue = [WeakRetained workQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__AudioDevice_flushAndUpdateDeviceInfoWithBlock___block_invoke;
      v12[3] = &unk_278259658;
      v13 = WeakRetained;
      selfCopy = self;
      dispatch_after(v10, workQueue, v12);
    }
  }
}

uint64_t __49__AudioDevice_flushAndUpdateDeviceInfoWithBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventForwardAudioDevice:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setIsDirty:0];
}

- (void)cleanAndUpdateDeviceInfo
{
  [(AudioDevice *)self removeAudioDeviceListener];
  if ([(AudioDevice *)self updateDefaultAudioDeviceInfo])
  {

    [(AudioDevice *)self addAudioDeviceListener];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_ctx);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      if (self->_isInput)
      {
        [WeakRetained setDefaultInputDevice:0];
      }

      else
      {
        [WeakRetained setDefaultOutputDevice:0];
      }

      WeakRetained = v4;
    }
  }
}

- (PLAudioAgent)ctx
{
  WeakRetained = objc_loadWeakRetained(&self->_ctx);

  return WeakRetained;
}

@end