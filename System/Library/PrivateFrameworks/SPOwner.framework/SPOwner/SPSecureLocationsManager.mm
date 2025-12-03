@interface SPSecureLocationsManager
+ (id)remoteInterface;
- (SPSecureLocationsManager)init;
- (SPSecureLocationsXPCProtocol)proxy;
- (void)currentStewieStateWithCompletion:(id)completion;
- (void)fetchConfigFromServerWithCompletion:(id)completion;
- (void)getAllSharedKeysWithCompletion:(id)completion;
- (void)getSharingKeyWithCompletion:(id)completion;
- (void)isLocationPublishingDeviceWithCompletion:(id)completion;
- (void)latestLocationFromCacheForId:(id)id completion:(id)completion;
- (void)performKeyRollWithCompletion:(id)completion;
- (void)processIDSServiceMessage:(id)message completion:(id)completion;
- (void)publishCurrentLocationToStewieWithReason:(int64_t)reason completion:(id)completion;
- (void)publishLocation:(id)location completion:(id)completion;
- (void)receivedLocationCommand:(id)command completion:(id)completion;
- (void)receivedLocationPayload:(id)payload completion:(id)completion;
- (void)setLocationUpdateBlock:(id)block;
- (void)setSharingKey:(id)key completion:(id)completion;
- (void)shareCurrentKeyWithId:(id)id completion:(id)completion;
- (void)shareCurrentKeyWithId:(id)id idsHandles:(id)handles completion:(id)completion;
- (void)shouldStartLocationMonitorWithCompletion:(id)completion;
- (void)simulateFeatureDisabled:(BOOL)disabled completion:(id)completion;
- (void)startMonitoringFailedSubscriptions:(id)subscriptions;
- (void)startMonitoringStewieStateWithBlock:(id)block completion:(id)completion;
- (void)stewiePublishStateWithCompletion:(id)completion;
- (void)stopMonitoringStewieStateWithCompletion:(id)completion;
- (void)subscribeAndFetchLocationForIds:(id)ids clientApp:(id)app completion:(id)completion;
- (void)subscribeAndFetchLocationForIds:(id)ids context:(id)context completion:(id)completion;
- (void)triggerStewieProactiveNotification;
- (void)unsubscribeForId:(id)id clientApp:(id)app completion:(id)completion;
- (void)unsubscribeForIds:(id)ids context:(id)context completion:(id)completion;
- (void)updateLocationCacheWith:(id)with completion:(id)completion;
@end

@implementation SPSecureLocationsManager

- (SPSecureLocationsManager)init
{
  v11.receiver = self;
  v11.super_class = SPSecureLocationsManager;
  v2 = [(SPSecureLocationsManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.findmy.SPSecureLocationsManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    v7 = +[SPSecureLocationsManager remoteInterface];
    v8 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.securelocations" options:0 remoteObjectInterface:v7 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v8;
  }

  return v2;
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_3 != -1)
  {
    +[SPSecureLocationsManager remoteInterface];
  }

  v3 = remoteInterface_remoteInterface;

  return v3;
}

uint64_t __43__SPSecureLocationsManager_remoteInterface__block_invoke()
{
  remoteInterface_remoteInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606BB0];

  return MEMORY[0x2821F96F8]();
}

- (SPSecureLocationsXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPSecureLocationsManager *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPSecureLocationsManager *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPSecureLocationsManager *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPSecureLocationsManager *)self setSession:v7];

    v8 = LogCategory_SecureLocations();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPSecureLocationsManager *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPSecureLocationsManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPSecureLocationsManager *)self session];
    [session2 resume];
  }

  session3 = [(SPSecureLocationsManager *)self session];
  proxy = [session3 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return proxy;
}

- (void)setLocationUpdateBlock:(id)block
{
  v3 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager setLocationUpdateBlock:];
  }
}

- (void)startMonitoringFailedSubscriptions:(id)subscriptions
{
  v3 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager startMonitoringFailedSubscriptions:];
  }
}

- (void)subscribeAndFetchLocationForIds:(id)ids clientApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SPSecureLocationsManager_subscribeAndFetchLocationForIds_clientApp_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __81__SPSecureLocationsManager_subscribeAndFetchLocationForIds_clientApp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)subscribeAndFetchLocationForIds:(id)ids context:(id)context completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SPSecureLocationsManager_subscribeAndFetchLocationForIds_context_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __79__SPSecureLocationsManager_subscribeAndFetchLocationForIds_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)unsubscribeForId:(id)id clientApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPSecureLocationsManager_unsubscribeForId_clientApp_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __66__SPSecureLocationsManager_unsubscribeForId_clientApp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)unsubscribeForIds:(id)ids context:(id)context completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPSecureLocationsManager_unsubscribeForIds_context_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __65__SPSecureLocationsManager_unsubscribeForIds_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)latestLocationFromCacheForId:(id)id completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPSecureLocationsManager_latestLocationFromCacheForId_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __68__SPSecureLocationsManager_latestLocationFromCacheForId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)updateLocationCacheWith:(id)with completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_updateLocationCacheWith_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __63__SPSecureLocationsManager_updateLocationCacheWith_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)publishLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SPSecureLocationsManager_publishLocation_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __55__SPSecureLocationsManager_publishLocation_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)receivedLocationPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  v6 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager receivedLocationPayload:completion:];
  }

  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_receivedLocationPayload_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __63__SPSecureLocationsManager_receivedLocationPayload_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)receivedLocationCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  v6 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager receivedLocationCommand:completion:];
  }

  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_receivedLocationCommand_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __63__SPSecureLocationsManager_receivedLocationCommand_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)shouldStartLocationMonitorWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager shouldStartLocationMonitorWithCompletion:];
  }

  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SPSecureLocationsManager_shouldStartLocationMonitorWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __69__SPSecureLocationsManager_shouldStartLocationMonitorWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)publishCurrentLocationToStewieWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SPSecureLocationsManager_publishCurrentLocationToStewieWithReason_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __80__SPSecureLocationsManager_publishCurrentLocationToStewieWithReason_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)startMonitoringStewieStateWithBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SPSecureLocationsManager_startMonitoringStewieStateWithBlock_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __75__SPSecureLocationsManager_startMonitoringStewieStateWithBlock_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)stopMonitoringStewieStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPSecureLocationsManager_stopMonitoringStewieStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __68__SPSecureLocationsManager_stopMonitoringStewieStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)currentStewieStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_currentStewieStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __61__SPSecureLocationsManager_currentStewieStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 7, v2);
}

- (void)stewiePublishStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_stewiePublishStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __61__SPSecureLocationsManager_stewiePublishStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)triggerStewieProactiveNotification
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"stewie:";
  _os_log_error_impl(&dword_2643D0000, log, OS_LOG_TYPE_ERROR, "%@ feature disabled", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)shareCurrentKeyWithId:(id)id idsHandles:(id)handles completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SPSecureLocationsManager_shareCurrentKeyWithId_idsHandles_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __72__SPSecureLocationsManager_shareCurrentKeyWithId_idsHandles_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)shareCurrentKeyWithId:(id)id completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_shareCurrentKeyWithId_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __61__SPSecureLocationsManager_shareCurrentKeyWithId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)performKeyRollWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SPSecureLocationsManager_performKeyRollWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __57__SPSecureLocationsManager_performKeyRollWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)isLocationPublishingDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SPSecureLocationsManager_isLocationPublishingDeviceWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __69__SPSecureLocationsManager_isLocationPublishingDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchConfigFromServerWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPSecureLocationsManager_fetchConfigFromServerWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

void __64__SPSecureLocationsManager_fetchConfigFromServerWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)simulateFeatureDisabled:(BOOL)disabled completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_simulateFeatureDisabled_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __63__SPSecureLocationsManager_simulateFeatureDisabled_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)getAllSharedKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SPSecureLocationsManager_getAllSharedKeysWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __59__SPSecureLocationsManager_getAllSharedKeysWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 getAllSharedKeysWithCompletion:*(a1 + 40)];
}

- (void)getSharingKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SPSecureLocationsManager_getSharingKeyWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __56__SPSecureLocationsManager_getSharingKeyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 getSharingKeyWithCompletion:*(a1 + 40)];
}

- (void)setSharingKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPSecureLocationsManager_setSharingKey_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);
}

void __53__SPSecureLocationsManager_setSharingKey_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)processIDSServiceMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  queue = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPSecureLocationsManager_processIDSServiceMessage_completion___block_invoke;
  block[3] = &unk_279B58BD0;
  block[4] = self;
  v12 = messageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

void __64__SPSecureLocationsManager_processIDSServiceMessage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 processIDSServiceMessage:*(a1 + 40) completion:*(a1 + 48)];
}

@end