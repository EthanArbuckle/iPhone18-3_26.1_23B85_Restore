@interface SVXPowerLevelListener
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (SVXAudioPowerProviding)audioPowerProvider;
- (SVXPowerLevelListener)init;
- (SVXPowerLevelListener)initWithAudioPowerUpdaterProvider:(id)provider;
- (void)beginListeningToAudioPowerProvider:(id)provider completion:(id)completion;
- (void)dealloc;
- (void)endListening;
@end

@implementation SVXPowerLevelListener

- (SVXAudioPowerProviding)audioPowerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioPowerProvider);

  return WeakRetained;
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1024458752;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1024458752;
  v7 = dispatch_semaphore_create(0);
  WeakRetained = objc_loadWeakRetained(&self->_audioPowerProvider);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SVXPowerLevelListener_getAveragePower_andPeakPower___block_invoke;
  v13[3] = &unk_279C67C38;
  v15 = &v21;
  v16 = &v17;
  v9 = v7;
  v14 = v9;
  [WeakRetained getAudioPower:v13];

  v10 = dispatch_time(0, 500000000);
  v11 = dispatch_semaphore_wait(v9, v10);
  *power = v22[6];
  *peakPower = v18[6];
  LOBYTE(peakPower) = v11 == 0;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return peakPower;
}

intptr_t __54__SVXPowerLevelListener_getAveragePower_andPeakPower___block_invoke(uint64_t a1, float a2, float a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)dealloc
{
  [(SVXPowerLevelListener *)self endListening];
  v3.receiver = self;
  v3.super_class = SVXPowerLevelListener;
  [(SVXPowerLevelListener *)&v3 dealloc];
}

- (void)endListening
{
  objc_storeWeak(&self->_audioPowerProvider, 0);
  [(AFAudioPowerUpdater *)self->_outputAudioPowerUpdater endUpdate];
  [(AFAudioPowerUpdater *)self->_outputAudioPowerUpdater invalidate];
  outputAudioPowerUpdater = self->_outputAudioPowerUpdater;
  self->_outputAudioPowerUpdater = 0;

  outputAudioPowerUpdaterQueue = self->_outputAudioPowerUpdaterQueue;
  self->_outputAudioPowerUpdaterQueue = 0;
}

- (void)beginListeningToAudioPowerProvider:(id)provider completion:(id)completion
{
  completionCopy = completion;
  providerCopy = provider;
  [(SVXPowerLevelListener *)self endListening];
  objc_storeWeak(&self->_audioPowerProvider, providerCopy);

  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v8 = dispatch_queue_create("TTSPowerUpdateQueue", v12);
  outputAudioPowerUpdaterQueue = self->_outputAudioPowerUpdaterQueue;
  self->_outputAudioPowerUpdaterQueue = v8;

  v10 = [(SVXAFAudioPowerUpdaterProvider *)self->_audioPowerUpdaterProvider createWithProvider:self queue:self->_outputAudioPowerUpdaterQueue frequency:[(SVXPowerLevelListener *)self _frequency] delegate:0];
  outputAudioPowerUpdater = self->_outputAudioPowerUpdater;
  self->_outputAudioPowerUpdater = v10;

  [(AFAudioPowerUpdater *)self->_outputAudioPowerUpdater createNewXPCWrapperWithCompletion:completionCopy];
  [(AFAudioPowerUpdater *)self->_outputAudioPowerUpdater beginUpdate];
}

- (SVXPowerLevelListener)initWithAudioPowerUpdaterProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SVXPowerLevelListener;
  v6 = [(SVXPowerLevelListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioPowerUpdaterProvider, provider);
  }

  return v7;
}

- (SVXPowerLevelListener)init
{
  v3 = objc_alloc_init(SVXAFAudioPowerUpdaterProvider);
  v4 = [(SVXPowerLevelListener *)self initWithAudioPowerUpdaterProvider:v3];

  return v4;
}

@end