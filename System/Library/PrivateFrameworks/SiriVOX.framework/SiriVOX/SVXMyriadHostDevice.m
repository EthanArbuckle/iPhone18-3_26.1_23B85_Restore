@interface SVXMyriadHostDevice
- (SVXMyriadHostDevice)initWithDelegate:(id)a3 queue:(id)a4;
- (void)_armEmergencyDispatchTimerFor:(double)a3 toExecute:(id)a4;
- (void)_disarmMyriadEmergencyTimer;
- (void)_initializeMyriadEmergencyTimer;
- (void)_signalEmergencyCallHandledStatus:(BOOL)a3;
- (void)_startAdvertisingEmergency:(id)a3;
- (void)preheatMyriad;
- (void)resetMyriad;
- (void)scdaCoordinatorDidHandleEmergency:(id)a3;
- (void)scdaShouldAbortAnotherDeviceBetter:(id)a3;
- (void)scdaShouldContinue:(id)a3;
- (void)scdaShouldUnduck:(id)a3;
- (void)setupEnabled:(BOOL)a3;
- (void)startAdvertising:(unint64_t)a3 withSCDAGoodnessScoreContext:(id)a4 withSCDAAudioContext:(id)a5 completion:(id)a6;
@end

@implementation SVXMyriadHostDevice

- (void)scdaCoordinatorDidHandleEmergency:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SVXMyriadHostDevice scdaCoordinatorDidHandleEmergency:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s #myriad", &v6, 0xCu);
  }

  [(SVXMyriadHostDevice *)self _signalEmergencyCallHandledStatus:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scdaShouldUnduck:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SVXMyriadHostDevice_scdaShouldUnduck___block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__SVXMyriadHostDevice_scdaShouldUnduck___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained unduckDevice];
}

- (void)scdaShouldAbortAnotherDeviceBetter:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SVXMyriadHostDevice_scdaShouldAbortAnotherDeviceBetter___block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__SVXMyriadHostDevice_scdaShouldAbortAnotherDeviceBetter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _releaseWiFiAssertion];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained deviceLostMyriadElection];
}

- (void)scdaShouldContinue:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SVXMyriadHostDevice_scdaShouldContinue___block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__SVXMyriadHostDevice_scdaShouldContinue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _releaseWiFiAssertion];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained deviceWonMyriadElection];
}

- (void)_signalEmergencyCallHandledStatus:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SVXMyriadHostDevice__signalEmergencyCallHandledStatus___block_invoke;
  v4[3] = &unk_279C681F8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

void __57__SVXMyriadHostDevice__signalEmergencyCallHandledStatus___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _disarmMyriadEmergencyTimer];
  v2 = MEMORY[0x26D642680](*(*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v9 = 136315394;
    v10 = "[SVXMyriadHostDevice _signalEmergencyCallHandledStatus:]_block_invoke";
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s #myriad Emergency call handled status: %d", &v9, 0x12u);
  }

  if (v2)
  {
    if (*(a1 + 40) == 1)
    {
      +[SVXServiceCommandResult resultSuccess];
    }

    else
    {
      [SVXServiceCommandResult resultFailureWithErrorCode:-1 reason:@"Myriad failed to handle emergency"];
    }
    v7 = ;
    (v2)[2](v2, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startAdvertisingEmergency:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXMyriadHostDevice _startAdvertisingEmergency:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s #myriad Begin Emergency Call", buf, 0xCu);
  }

  [(SCDACoordinator *)self->_scdaCoordinator startAdvertisingEmergency];
  v6 = [v4 copy];
  completion = self->_emergencyContext.completion;
  self->_emergencyContext.completion = v6;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SVXMyriadHostDevice__startAdvertisingEmergency___block_invoke;
  v9[3] = &unk_279C68FC0;
  v9[4] = self;
  [(SVXMyriadHostDevice *)self _armEmergencyDispatchTimerFor:v9 toExecute:2.75];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_disarmMyriadEmergencyTimer
{
  timer = self->_emergencyContext.timer;
  v4 = dispatch_time(0, 0);
  dispatch_source_set_timer(timer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v5 = self->_emergencyContext.timer;

  dispatch_source_set_event_handler(v5, &__block_literal_global_3);
}

void __50__SVXMyriadHostDevice__disarmMyriadEmergencyTimer__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[SVXMyriadHostDevice _disarmMyriadEmergencyTimer]_block_invoke";
    _os_log_impl(&dword_2695B9000, v0, OS_LOG_TYPE_INFO, "%s #myriad Myriad emergency timer disarmed", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_armEmergencyDispatchTimerFor:(double)a3 toExecute:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  timer = self->_emergencyContext.timer;
  v6 = (a3 * 1000000000.0);
  v7 = a4;
  v8 = dispatch_time(0, v6);
  dispatch_source_set_timer(timer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  dispatch_source_set_event_handler(self->_emergencyContext.timer, v7);

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[SVXMyriadHostDevice _armEmergencyDispatchTimerFor:toExecute:]";
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s #myriad Myriad emergency timer armed", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_initializeMyriadEmergencyTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  timer = self->_emergencyContext.timer;
  self->_emergencyContext.timer = v3;

  dispatch_source_set_event_handler(self->_emergencyContext.timer, &__block_literal_global_10953);
  v5 = self->_emergencyContext.timer;

  dispatch_resume(v5);
}

- (void)startAdvertising:(unint64_t)a3 withSCDAGoodnessScoreContext:(id)a4 withSCDAAudioContext:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SVXMyriadHostDevice_startAdvertising_withSCDAGoodnessScoreContext_withSCDAAudioContext_completion___block_invoke;
  block[3] = &unk_279C67FC0;
  v21 = v12;
  v22 = a3;
  v18 = v11;
  v19 = v10;
  v20 = self;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(queue, block);
}

void __101__SVXMyriadHostDevice_startAdvertising_withSCDAGoodnessScoreContext_withSCDAAudioContext_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 136315906;
    v9 = "[SVXMyriadHostDevice startAdvertising:withSCDAGoodnessScoreContext:withSCDAAudioContext:completion:]_block_invoke";
    v10 = 2048;
    v11 = v2;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s #myriad queueAdvertisementType:%lu, context=%@, goodnessScoreContext=%@", &v8, 0x2Au);
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_19;
      }

      [*(*(a1 + 48) + 8) startAdvertisingFromDirectTriggerWithContext:*(a1 + 32)];
      goto LABEL_17;
    }
  }

  else
  {
    if (v2 == 2)
    {
      [*(*(a1 + 48) + 8) startAdvertisingFromAlertFiringVoiceTriggerWithContext:*(a1 + 32)];
      goto LABEL_17;
    }

    if (v2 == 4)
    {
      [*(a1 + 48) _startAdvertisingEmergency:*(a1 + 56)];
      goto LABEL_19;
    }

    if (v2 != 3)
    {
      goto LABEL_19;
    }
  }

  [*(a1 + 48) _acquireWiFiAssertion];
  if (v2 > 1)
  {
    [*(*(a1 + 48) + 8) startAdvertisingFromInTaskVoiceTriggerWithContext:0];
  }

  else
  {
    [*(*(a1 + 48) + 8) startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:*(a1 + 40) withContext:*(a1 + 32)];
  }

LABEL_17:
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

LABEL_19:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupEnabled:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SVXMyriadHostDevice_setupEnabled___block_invoke;
  v4[3] = &unk_279C681F8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)resetMyriad
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SVXMyriadHostDevice_resetMyriad__block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)preheatMyriad
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SVXMyriadHostDevice_preheatMyriad__block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (SVXMyriadHostDevice)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SVXMyriadHostDevice;
  v8 = [(SVXMyriadHostDevice *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D55AF8]) initWithDelegate:v8];
    scdaCoordinator = v8->_scdaCoordinator;
    v8->_scdaCoordinator = v9;

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_queue, a4);
    [(SVXMyriadHostDevice *)v8 _initializeMyriadEmergencyTimer];
    v11 = [[SVXMyriadWiFiAssertion alloc] initWithQueue:v8->_queue delegate:0];
    wifiAssertion = v8->_wifiAssertion;
    v8->_wifiAssertion = v11;
  }

  return v8;
}

@end