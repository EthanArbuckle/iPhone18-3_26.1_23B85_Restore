@interface SPSecureLocationsManager
+ (id)remoteInterface;
- (SPSecureLocationsManager)init;
- (SPSecureLocationsXPCProtocol)proxy;
- (void)currentStewieStateWithCompletion:(id)a3;
- (void)fetchConfigFromServerWithCompletion:(id)a3;
- (void)getAllSharedKeysWithCompletion:(id)a3;
- (void)getSharingKeyWithCompletion:(id)a3;
- (void)isLocationPublishingDeviceWithCompletion:(id)a3;
- (void)latestLocationFromCacheForId:(id)a3 completion:(id)a4;
- (void)performKeyRollWithCompletion:(id)a3;
- (void)processIDSServiceMessage:(id)a3 completion:(id)a4;
- (void)publishCurrentLocationToStewieWithReason:(int64_t)a3 completion:(id)a4;
- (void)publishLocation:(id)a3 completion:(id)a4;
- (void)receivedLocationCommand:(id)a3 completion:(id)a4;
- (void)receivedLocationPayload:(id)a3 completion:(id)a4;
- (void)setLocationUpdateBlock:(id)a3;
- (void)setSharingKey:(id)a3 completion:(id)a4;
- (void)shareCurrentKeyWithId:(id)a3 completion:(id)a4;
- (void)shareCurrentKeyWithId:(id)a3 idsHandles:(id)a4 completion:(id)a5;
- (void)shouldStartLocationMonitorWithCompletion:(id)a3;
- (void)simulateFeatureDisabled:(BOOL)a3 completion:(id)a4;
- (void)startMonitoringFailedSubscriptions:(id)a3;
- (void)startMonitoringStewieStateWithBlock:(id)a3 completion:(id)a4;
- (void)stewiePublishStateWithCompletion:(id)a3;
- (void)stopMonitoringStewieStateWithCompletion:(id)a3;
- (void)subscribeAndFetchLocationForIds:(id)a3 clientApp:(id)a4 completion:(id)a5;
- (void)subscribeAndFetchLocationForIds:(id)a3 context:(id)a4 completion:(id)a5;
- (void)triggerStewieProactiveNotification;
- (void)unsubscribeForId:(id)a3 clientApp:(id)a4 completion:(id)a5;
- (void)unsubscribeForIds:(id)a3 context:(id)a4 completion:(id)a5;
- (void)updateLocationCacheWith:(id)a3 completion:(id)a4;
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
  v3 = [(SPSecureLocationsManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPSecureLocationsManager *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPSecureLocationsManager *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPSecureLocationsManager *)self setSession:v7];

    v8 = LogCategory_SecureLocations();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPSecureLocationsManager *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPSecureLocationsManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPSecureLocationsManager *)self session];
    [v11 resume];
  }

  v12 = [(SPSecureLocationsManager *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setLocationUpdateBlock:(id)a3
{
  v3 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager setLocationUpdateBlock:];
  }
}

- (void)startMonitoringFailedSubscriptions:(id)a3
{
  v3 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager startMonitoringFailedSubscriptions:];
  }
}

- (void)subscribeAndFetchLocationForIds:(id)a3 clientApp:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SPSecureLocationsManager_subscribeAndFetchLocationForIds_clientApp_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __81__SPSecureLocationsManager_subscribeAndFetchLocationForIds_clientApp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)subscribeAndFetchLocationForIds:(id)a3 context:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SPSecureLocationsManager_subscribeAndFetchLocationForIds_context_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __79__SPSecureLocationsManager_subscribeAndFetchLocationForIds_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)unsubscribeForId:(id)a3 clientApp:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPSecureLocationsManager_unsubscribeForId_clientApp_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __66__SPSecureLocationsManager_unsubscribeForId_clientApp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)unsubscribeForIds:(id)a3 context:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPSecureLocationsManager_unsubscribeForIds_context_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __65__SPSecureLocationsManager_unsubscribeForIds_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)latestLocationFromCacheForId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPSecureLocationsManager_latestLocationFromCacheForId_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __68__SPSecureLocationsManager_latestLocationFromCacheForId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)updateLocationCacheWith:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_updateLocationCacheWith_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __63__SPSecureLocationsManager_updateLocationCacheWith_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)publishLocation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SPSecureLocationsManager_publishLocation_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __55__SPSecureLocationsManager_publishLocation_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)receivedLocationPayload:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager receivedLocationPayload:completion:];
  }

  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_receivedLocationPayload_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __63__SPSecureLocationsManager_receivedLocationPayload_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)receivedLocationCommand:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager receivedLocationCommand:completion:];
  }

  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_receivedLocationCommand_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __63__SPSecureLocationsManager_receivedLocationCommand_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)shouldStartLocationMonitorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = LogCategory_SecureLocations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SPSecureLocationsManager shouldStartLocationMonitorWithCompletion:];
  }

  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SPSecureLocationsManager_shouldStartLocationMonitorWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);
}

void __69__SPSecureLocationsManager_shouldStartLocationMonitorWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)publishCurrentLocationToStewieWithReason:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SPSecureLocationsManager_publishCurrentLocationToStewieWithReason_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __80__SPSecureLocationsManager_publishCurrentLocationToStewieWithReason_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)startMonitoringStewieStateWithBlock:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SPSecureLocationsManager_startMonitoringStewieStateWithBlock_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __75__SPSecureLocationsManager_startMonitoringStewieStateWithBlock_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)stopMonitoringStewieStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPSecureLocationsManager_stopMonitoringStewieStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __68__SPSecureLocationsManager_stopMonitoringStewieStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)currentStewieStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_currentStewieStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __61__SPSecureLocationsManager_currentStewieStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 7, v2);
}

- (void)stewiePublishStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_stewiePublishStateWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
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

- (void)shareCurrentKeyWithId:(id)a3 idsHandles:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SPSecureLocationsManager_shareCurrentKeyWithId_idsHandles_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __72__SPSecureLocationsManager_shareCurrentKeyWithId_idsHandles_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)shareCurrentKeyWithId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPSecureLocationsManager_shareCurrentKeyWithId_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __61__SPSecureLocationsManager_shareCurrentKeyWithId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)performKeyRollWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SPSecureLocationsManager_performKeyRollWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __57__SPSecureLocationsManager_performKeyRollWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)isLocationPublishingDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SPSecureLocationsManager_isLocationPublishingDeviceWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __69__SPSecureLocationsManager_isLocationPublishingDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchConfigFromServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPSecureLocationsManager_fetchConfigFromServerWithCompletion___block_invoke;
  block[3] = &unk_279B58EF8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __64__SPSecureLocationsManager_fetchConfigFromServerWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)simulateFeatureDisabled:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPSecureLocationsManager_simulateFeatureDisabled_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __63__SPSecureLocationsManager_simulateFeatureDisabled_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)getAllSharedKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SPSecureLocationsManager_getAllSharedKeysWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__SPSecureLocationsManager_getAllSharedKeysWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 getAllSharedKeysWithCompletion:*(a1 + 40)];
}

- (void)getSharingKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SPSecureLocationsManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SPSecureLocationsManager_getSharingKeyWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__SPSecureLocationsManager_getSharingKeyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 getSharingKeyWithCompletion:*(a1 + 40)];
}

- (void)setSharingKey:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPSecureLocationsManager_setSharingKey_completion___block_invoke;
  block[3] = &unk_279B58EF8;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __53__SPSecureLocationsManager_setSharingKey_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SPSecureLocationsManager featureDisabledError];
  (*(v1 + 16))(v1, v2);
}

- (void)processIDSServiceMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPSecureLocationsManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPSecureLocationsManager_processIDSServiceMessage_completion___block_invoke;
  block[3] = &unk_279B58BD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __64__SPSecureLocationsManager_processIDSServiceMessage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 processIDSServiceMessage:*(a1 + 40) completion:*(a1 + 48)];
}

@end