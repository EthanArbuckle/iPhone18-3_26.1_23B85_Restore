@interface SOSManager
+ (BOOL)deviceSupportsSOS;
+ (BOOL)shouldTriggerSOS;
+ (id)sharedInstance;
+ (void)notifySOSTriggerMechanismChanged;
+ (void)triggerSOS;
+ (void)triggerSOSWithUUID:(id)a3 completion:(id)a4;
+ (void)triggerSOSWithUUID:(id)a3 triggerMechanism:(int64_t)a4 completion:(id)a5;
- (BOOL)isSendingLocationUpdate;
- (NSXPCConnection)connection;
- (SOSManager)init;
- (void)_resetStateWithCompletion:(id)a3;
- (void)_waitForInitialState;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)didDismissClientSOSBeforeSOSCall:(int64_t)a3;
- (void)didDismissSOSBeforeSOSCall:(int64_t)a3;
- (void)didUpdateSOSStatus:(id)a3;
- (void)dismissClientSOSWithCompletion:(id)a3;
- (void)dismissSOSWithCompletion:(id)a3;
- (void)mostRecentLocationSentWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setConnection:(id)a3;
- (void)setCurrentSOSButtonPressState:(id)a3;
- (void)setCurrentSOSInitiationState:(int64_t)a3;
- (void)setCurrentSOSInteractiveState:(int64_t)a3;
- (void)startSendingLocationUpdateForReason:(int64_t)a3 withCompletion:(id)a4;
- (void)startSendingLocationUpdateWithCompletion:(id)a3;
- (void)stopSendingLocationUpdate;
- (void)updateClientCurrentSOSButtonPressState:(id)a3;
- (void)updateClientCurrentSOSInitiationState:(int64_t)a3;
- (void)updateClientCurrentSOSInteractiveState:(int64_t)a3;
- (void)willStartSendingLocationUpdate;
@end

@implementation SOSManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SOSManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance_sSOSManager;

  return v2;
}

+ (BOOL)deviceSupportsSOS
{
  v2 = MGGetBoolAnswer();
  v3 = +[SOSUtilities _userSOSDefaults];
  v4 = [v3 objectForKey:@"SOSDeviceSupportedKey"];

  if (v4)
  {
    v2 = [v4 BOOLValue];
  }

  return v2;
}

+ (void)triggerSOS
{
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [a1 triggerSOSWithCompletion:0];
}

+ (void)triggerSOSWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 triggerSOSWithUUID:v7 triggerMechanism:+[SOSUtilities currentSOSTriggerMechanism](SOSUtilities completion:{"currentSOSTriggerMechanism"), v6}];
}

+ (void)triggerSOSWithUUID:(id)a3 triggerMechanism:(int64_t)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = sos_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSManager, triggerSOSWithUUID uuid: %@", buf, 0xCu);
  }

  if ([a1 shouldTriggerSOS])
  {
    if (v10)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke;
      v20[3] = &unk_279B53EE0;
      v21 = v10;
      v12 = MEMORY[0x266735F90](v20);
    }

    else
    {
      v12 = &__block_literal_global_12;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_4;
    block[3] = &unk_279B540A0;
    v17 = v12;
    v18 = a2;
    v16 = v9;
    v19 = a4;
    v13 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_2;
  v2[3] = &unk_279B534C0;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_4(uint64_t a1)
{
  v2 = +[SOSManager sharedInstance];
  v3 = [v2 connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5;
  v7[3] = &unk_279B54078;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = [v3 remoteObjectProxyWithErrorHandler:v7];
  [v5 triggerSOSWithUUID:*(a1 + 32) triggerMechanism:*(a1 + 56) completion:*(a1 + 40)];
}

void __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

+ (BOOL)shouldTriggerSOS
{
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"])
  {
    if ([a1 deviceSupportsSOS])
    {
      return 1;
    }

    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(SOSManager *)v4];
    }
  }

  else
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(SOSManager *)v4];
    }
  }

  return 0;
}

+ (void)notifySOSTriggerMechanismChanged
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSTriggerMechanismChangedNotification", 0, 0, 1u);
}

- (SOSManager)init
{
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"])
  {
    v23.receiver = self;
    v23.super_class = SOSManager;
    v3 = [(SOSManager *)&v23 init];
    if (v3)
    {
      v4 = sos_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "initializing SOSManager", buf, 2u);
      }

      v5 = dispatch_semaphore_create(0);
      initialStateSemaphore = v3->_initialStateSemaphore;
      v3->_initialStateSemaphore = v5;

      objc_initWeak(buf, v3);
      v7 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __18__SOSManager_init__block_invoke;
      handler[3] = &unk_279B53E40;
      objc_copyWeak(&v21, buf);
      notify_register_dispatch(v7, &v3->_connectionRequestNotificationToken, v8, handler);

      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __18__SOSManager_init__block_invoke_369;
      v18 = &unk_279B532A0;
      v10 = v3;
      v19 = v10;
      [(SOSManager *)v10 _resetStateWithCompletion:&v15];
      v11 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      observerToQueue = v10->_observerToQueue;
      v10->_observerToQueue = v11;

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    self = v3;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __18__SOSManager_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by requesting current state", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetStateWithCompletion:&__block_literal_global_367];

  v4 = *MEMORY[0x277D85DE8];
}

void __18__SOSManager_init__block_invoke_365()
{
  v0 = sos_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_264323000, v0, OS_LOG_TYPE_DEFAULT, "Received current SOS state", v1, 2u);
  }
}

intptr_t __18__SOSManager_init__block_invoke_369(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "Received initial SOS state", v4, 2u);
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (void)dealloc
{
  notify_cancel(self->_connectionRequestNotificationToken);
  v3.receiver = self;
  v3.super_class = SOSManager;
  [(SOSManager *)&v3 dealloc];
}

uint64_t __28__SOSManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSOSManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setConnection:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  connection = self->_connection;
  p_connection = &self->_connection;
  v5 = connection;
  if (connection != v8)
  {
    if (v5)
    {
      [(NSXPCConnection *)v5 invalidate];
      [(NSXPCConnection *)*p_connection setInvalidationHandler:0];
      [(NSXPCConnection *)*p_connection setInterruptionHandler:0];
    }

    objc_storeStrong(p_connection, a3);
  }
}

- (NSXPCConnection)connection
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sos" options:4096];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = SOSServerInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = SOSClientInterface();
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __24__SOSManager_connection__block_invoke;
    v13[3] = &unk_279B53930;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __24__SOSManager_connection__block_invoke_375;
    v11[3] = &unk_279B53930;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __24__SOSManager_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOS server connection interrupted", v3, 2u);
  }

  [WeakRetained updateClientCurrentSOSInteractiveState:0];
}

void __24__SOSManager_connection__block_invoke_375(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOS server connection invalidated", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__SOSManager_connection__block_invoke_376;
  block[3] = &unk_279B53930;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __24__SOSManager_connection__block_invoke_376(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (void)willStartSendingLocationUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SOSManager willStartSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(SOSManager *)self connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SOSManager_willStartSendingLocationUpdate__block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a2;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 willStartSendingLocationUpdate];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__SOSManager_willStartSendingLocationUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)startSendingLocationUpdateWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SOSManager startSendingLocationUpdateWithCompletion:]";
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = [(SOSManager *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__SOSManager_startSendingLocationUpdateWithCompletion___block_invoke;
  v14 = &unk_279B54078;
  v15 = v5;
  v16 = a2;
  v8 = v5;
  v9 = [v7 remoteObjectProxyWithErrorHandler:&v11];
  [v9 startSendingLocationUpdateWithCompletion:{v8, v11, v12, v13, v14}];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__SOSManager_startSendingLocationUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

- (void)startSendingLocationUpdateForReason:(int64_t)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = sos_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SOSManager startSendingLocationUpdateForReason:withCompletion:]";
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [(SOSManager *)self connection];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__SOSManager_startSendingLocationUpdateForReason_withCompletion___block_invoke;
  v16 = &unk_279B54078;
  v17 = v7;
  v18 = a2;
  v10 = v7;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v13];
  [v11 startSendingLocationUpdateForReason:a3 WithCompletion:{v10, v13, v14, v15, v16}];

  v12 = *MEMORY[0x277D85DE8];
}

void __65__SOSManager_startSendingLocationUpdateForReason_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

- (void)stopSendingLocationUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SOSManager stopSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(SOSManager *)self connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SOSManager_stopSendingLocationUpdate__block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a2;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 stopSendingLocationUpdate];

  v7 = *MEMORY[0x277D85DE8];
}

void __39__SOSManager_stopSendingLocationUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)mostRecentLocationSentWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SOSManager mostRecentLocationSentWithCompletion:]";
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = [(SOSManager *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51__SOSManager_mostRecentLocationSentWithCompletion___block_invoke;
  v14 = &unk_279B54078;
  v15 = v5;
  v16 = a2;
  v8 = v5;
  v9 = [v7 remoteObjectProxyWithErrorHandler:&v11];
  [v9 mostRecentLocationSentWithCompletion:{v8, v11, v12, v13, v14}];

  v10 = *MEMORY[0x277D85DE8];
}

void __51__SOSManager_mostRecentLocationSentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (BOOL)isSendingLocationUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SOSManager isSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(SOSManager *)self _waitForInitialState];
  result = self->_sendingLocationUpdate;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCurrentSOSInitiationState:(int64_t)a3
{
  self->_sosInitiationState = a3;
  v5 = [(SOSManager *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SOSManager_setCurrentSOSInitiationState___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = a2;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
  [v6 updateCurrentSOSInitiationState:a3];
}

void __43__SOSManager_setCurrentSOSInitiationState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)setCurrentSOSInteractiveState:(int64_t)a3
{
  self->_sosInteractiveState = a3;
  v5 = [(SOSManager *)self connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SOSManager_setCurrentSOSInteractiveState___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a2;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 updateCurrentSOSInteractiveState:a3];

  if (a3 == 1)
  {
    v7 = [MEMORY[0x277CE7E20] sharedInstance];
    [v7 setDidTriggerSOSToday:1];
  }
}

void __44__SOSManager_setCurrentSOSInteractiveState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)setCurrentSOSButtonPressState:(id)a3
{
  objc_storeStrong(&self->_sosButtonPressState, a3);
  v6 = a3;
  v7 = [(SOSManager *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SOSManager_setCurrentSOSButtonPressState___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v9];
  [v8 updateCurrentSOSButtonPressState:v6];
}

void __44__SOSManager_setCurrentSOSButtonPressState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SOSManager_addObserver_queue___block_invoke;
  block[3] = &unk_279B540E8;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __32__SOSManager_addObserver_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SOSManager_removeObserver___block_invoke;
  v6[3] = &unk_279B53BA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v6);
}

void __29__SOSManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)dismissSOSWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSManager attempting to dismiss SOS", buf, 2u);
  }

  v7 = [(SOSManager *)self connection];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __39__SOSManager_dismissSOSWithCompletion___block_invoke;
  v13 = &unk_279B54078;
  v14 = v5;
  v15 = a2;
  v8 = v5;
  v9 = [v7 remoteObjectProxyWithErrorHandler:&v10];
  [v9 dismissSOSWithCompletion:{v8, v10, v11, v12, v13}];
}

void __39__SOSManager_dismissSOSWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)didDismissSOSBeforeSOSCall:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a3;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOS was dismissed before SOS call ended with sosDismissalType: %ld", buf, 0xCu);
  }

  v7 = [(SOSManager *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__SOSManager_didDismissSOSBeforeSOSCall___block_invoke;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = a2;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v10];
  [v8 didDismissSOSBeforeSOSCall:a3];

  v9 = *MEMORY[0x277D85DE8];
}

void __41__SOSManager_didDismissSOSBeforeSOSCall___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1();
  }
}

- (void)updateClientCurrentSOSInitiationState:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sosInitiationState = self->_sosInitiationState;
    *buf = 134218240;
    v23 = sosInitiationState;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSManager updating initiation state from %lu to %lu", buf, 0x16u);
  }

  if (self->_sosInitiationState != a3)
  {
    self->_sosInitiationState = a3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(SOSManager *)self observerToQueue];
    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [(SOSManager *)self observerToQueue];
          v13 = [v12 objectForKey:v11];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __52__SOSManager_updateClientCurrentSOSInitiationState___block_invoke;
          block[3] = &unk_279B53E18;
          block[4] = v11;
          block[5] = a3;
          dispatch_async(v13, block);

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __52__SOSManager_updateClientCurrentSOSInitiationState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 didUpdateCurrentSOSInitiationState:v5];
  }

  return result;
}

- (void)updateClientCurrentSOSInteractiveState:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sosInteractiveState = self->_sosInteractiveState;
    v9 = 134218240;
    v10 = sosInteractiveState;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSManager updating interactive state from %lu to %lu", &v9, 0x16u);
  }

  if (self->_sosInteractiveState != a3)
  {
    self->_sosInteractiveState = a3;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SOSInteractiveStateChangedNotification" object:self userInfo:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateClientCurrentSOSButtonPressState:(id)a3
{
  v4 = a3;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSManager updating button press state", v9, 2u);
  }

  sosButtonPressState = self->_sosButtonPressState;
  self->_sosButtonPressState = v4;
  v7 = v4;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];

  [v8 postNotificationName:@"SOSButtonPressStateChangedNotification" object:self userInfo:0];
}

- (void)dismissClientSOSWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SOSManager_dismissClientSOSWithCompletion___block_invoke;
  v6[3] = &unk_279B53510;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __45__SOSManager_dismissClientSOSWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SOSDismissSOSNotification" object:*(a1 + 32) userInfo:0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) currentSOSInitiationState] == 0;
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

- (void)didDismissClientSOSBeforeSOSCall:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(SOSManager *)self observerToQueue];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(SOSManager *)self observerToQueue];
        v11 = [v10 objectForKey:v9];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__SOSManager_didDismissClientSOSBeforeSOSCall___block_invoke;
        block[3] = &unk_279B53E18;
        block[4] = v9;
        block[5] = a3;
        dispatch_async(v11, block);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SOSManager_didDismissClientSOSBeforeSOSCall___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 didDismissSOSBeforeSOSCall:v5];
  }

  return result;
}

- (void)didUpdateSOSStatus:(id)a3
{
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSManager,callback from SOSEngine that sos status did update", v4, 2u);
  }
}

- (void)_waitForInitialState
{
  initialStateSemaphore = self->_initialStateSemaphore;
  v4 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(initialStateSemaphore, v4);
  v5 = self->_initialStateSemaphore;

  dispatch_semaphore_signal(v5);
}

- (void)_resetStateWithCompletion:(id)a3
{
  v5 = a3;
  state64 = 0;
  notify_get_state(self->_connectionRequestNotificationToken, &state64);
  if (state64)
  {
    v6 = [(SOSManager *)self connection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SOSManager__resetStateWithCompletion___block_invoke;
    v11[3] = &unk_279B54078;
    v13 = a2;
    v7 = v5;
    v12 = v7;
    v8 = [v6 remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SOSManager__resetStateWithCompletion___block_invoke_386;
    v9[3] = &unk_279B54110;
    v9[4] = self;
    v10 = v7;
    [v8 syncState:v9];
  }

  else
  {
    v5[2](v5);
  }
}

void __40__SOSManager__resetStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __40__SOSManager__resetStateWithCompletion___block_invoke_386(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  [v9 setSendingLocationUpdate:a2];
  [*(a1 + 32) updateClientCurrentSOSInitiationState:a3];
  [*(a1 + 32) updateClientCurrentSOSInteractiveState:a4];
  [*(a1 + 32) updateClientCurrentSOSButtonPressState:v10];

  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void __61__SOSManager_triggerSOSWithUUID_triggerMechanism_completion___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_4(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_264323000, v4, v5, "%@ failed due to connection error %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __44__SOSManager_willStartSendingLocationUpdate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_3(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_264323000, v4, v5, "%@ failed due to connection error %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end