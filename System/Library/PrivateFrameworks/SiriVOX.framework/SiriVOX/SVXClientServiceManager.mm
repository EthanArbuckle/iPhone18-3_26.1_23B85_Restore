@interface SVXClientServiceManager
+ (id)sharedManager;
- (SVXClientServiceManager)init;
- (id)_connection;
- (void)_connect;
- (void)clientServiceConnectionDidInvalidate:(id)invalidate;
- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler;
@end

@implementation SVXClientServiceManager

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [SVXClientServiceConnection alloc];
    performer = self->_performer;
    v18 = v4;
    activationService = self->_activationService;
    deviceService = self->_deviceService;
    audioSystemService = self->_audioSystemService;
    sessionService = self->_sessionService;
    inputAudioPowerService = self->_inputAudioPowerService;
    outputAudioPowerService = self->_outputAudioPowerService;
    speechSynthesisService = self->_speechSynthesisService;
    keepAliveService = self->_keepAliveService;
    currentContext = [MEMORY[0x277CEF2C8] currentContext];
    v14 = [(SVXClientServiceConnection *)v18 initWithQueuePerformer:performer activationService:activationService audioSystemService:audioSystemService deviceService:deviceService inputAudioPowerService:inputAudioPowerService outputAudioPowerService:outputAudioPowerService sessionService:sessionService speechSynthesisService:speechSynthesisService keepAliveService:keepAliveService instanceContext:currentContext delegate:self];
    v15 = self->_connection;
    self->_connection = v14;

    connection = self->_connection;
  }

  return connection;
}

- (void)_connect
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__SVXClientServiceManager__connect__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3 withOptions:0];
}

- (void)clientServiceConnectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SVXClientServiceManager_clientServiceConnectionDidInvalidate___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = invalidateCopy;
  v6 = invalidateCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

uint64_t __64__SVXClientServiceManager_clientServiceConnectionDidInvalidate___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 24);
  if (v3 == *(result + 40))
  {
    v4 = result;
    *(v2 + 24) = 0;

    v5 = *(v4 + 32);

    return [v5 _connect];
  }

  return result;
}

- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SVXClientServiceManager_getClientServiceUsingBlock_errorHandler___block_invoke;
  v8[3] = &unk_279C68EF8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __67__SVXClientServiceManager_getClientServiceUsingBlock_errorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _connection];
    (*(v1 + 16))(v1, v2);
  }
}

- (SVXClientServiceManager)init
{
  v26.receiver = self;
  v26.super_class = SVXClientServiceManager;
  v2 = [(SVXClientServiceManager *)&v26 init];
  if (v2)
  {
    v3 = +[SVXQueuePerformer sharedMainQueuePerformer];
    performer = v2->_performer;
    v2->_performer = v3;

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    analytics = v2->_analytics;
    v2->_analytics = mEMORY[0x277CEF158];

    v7 = [[SVXClientActivationService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    activationService = v2->_activationService;
    v2->_activationService = v7;

    v9 = [[SVXClientAudioSystemService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    audioSystemService = v2->_audioSystemService;
    v2->_audioSystemService = v9;

    v11 = [[SVXClientDeviceService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    deviceService = v2->_deviceService;
    v2->_deviceService = v11;

    v13 = [[SVXClientAudioPowerService alloc] initWithType:1 clientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    inputAudioPowerService = v2->_inputAudioPowerService;
    v2->_inputAudioPowerService = v13;

    v15 = [[SVXClientAudioPowerService alloc] initWithType:2 clientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    outputAudioPowerService = v2->_outputAudioPowerService;
    v2->_outputAudioPowerService = v15;

    v17 = [[SVXClientSessionService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    sessionService = v2->_sessionService;
    v2->_sessionService = v17;

    v19 = [[SVXClientSpeechSynthesisService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    speechSynthesisService = v2->_speechSynthesisService;
    v2->_speechSynthesisService = v19;

    v21 = [[SVXClientSessionStateService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    sessionStateService = v2->_sessionStateService;
    v2->_sessionStateService = v21;

    v23 = [[SVXClientKeepAliveService alloc] initWithClientServiceProvider:v2 analytics:v2->_analytics performer:v2->_performer];
    keepAliveService = v2->_keepAliveService;
    v2->_keepAliveService = v23;

    [(SVXClientServiceManager *)v2 _connect];
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_3044);
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __40__SVXClientServiceManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(SVXClientServiceManager);

  return MEMORY[0x2821F96F8]();
}

@end