@interface SOSKappaManager
+ (id)sharedInstance;
+ (int64_t)mapSOSFlowStateToKappaState:(int64_t)a3;
+ (unint64_t)mapServerResponseToKappaResponse:(int64_t)a3;
- (NSXPCConnection)connection;
- (SOSKappaManager)init;
- (SOSKappaManager)initWithQueue:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)detectedAnomalyWithElectedDevice:(unint64_t)a3 completion:(id)a4;
- (void)didDismissClientSOSBeforeSOSCall:(int64_t)a3;
- (void)didUpdateSOSStatus:(id)a3;
- (void)dismissClientSOSWithCompletion:(id)a3;
- (void)forceStartConnection;
- (void)removeObserver:(id)a3;
- (void)setConnection:(id)a3;
- (void)setSendingLocationUpdate:(BOOL)a3;
- (void)triggerKappaWithCompletion:(id)a3;
- (void)updateClientCurrentSOSButtonPressState:(id)a3;
- (void)updateClientCurrentSOSInitiationState:(int64_t)a3;
- (void)updateClientCurrentSOSInteractiveState:(int64_t)a3;
- (void)updateObserversWithKappaStatus:(id)a3;
@end

@implementation SOSKappaManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SOSKappaManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_inst_0;

  return v2;
}

void __33__SOSKappaManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.SOS.queue.%@.%p", objc_opt_class(), *(a1 + 32)];
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SOSKappaManager_sharedInstance__block_invoke_2;
  block[3] = &unk_279B53E18;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(v8, block);
}

uint64_t __33__SOSKappaManager_sharedInstance__block_invoke_2(uint64_t a1)
{
  sharedInstance_inst_0 = [objc_alloc(*(a1 + 40)) initWithQueue:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (SOSKappaManager)init
{
  [(SOSKappaManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SOSKappaManager)initWithQueue:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(v5);
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"])
  {
    v19.receiver = self;
    v19.super_class = SOSKappaManager;
    v6 = [(SOSKappaManager *)&v19 init];
    if (v6)
    {
      v7 = sos_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,init", buf, 2u);
      }

      objc_storeStrong(&v6->_serialQueue, a3);
      v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      observers = v6->_observers;
      v6->_observers = v8;

      objc_initWeak(buf, v6);
      v10 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
      v11 = MEMORY[0x277D85CD0];
      v12 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __33__SOSKappaManager_initWithQueue___block_invoke;
      handler[3] = &unk_279B53E40;
      objc_copyWeak(&v17, buf);
      notify_register_dispatch(v10, &v6->_connectionRequestNotificationToken, v11, handler);

      [(SOSKappaManager *)v6 forceStartConnection];
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }

    self = v6;
    v13 = self;
  }

  else
  {
    v14 = sos_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,missing SOSTriggerEntitlement", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __33__SOSKappaManager_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SOSKappaManager_initWithQueue___block_invoke_2;
    block[3] = &unk_279B532A0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __33__SOSKappaManager_initWithQueue___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state([*(a1 + 32) connectionRequestNotificationToken], &state64);
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
    v7 = 2048;
    v8 = state64;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,handling %s,state,%lld", buf, 0x16u);
  }

  if (state64)
  {
    [*(a1 + 32) forceStartConnection];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    v4 = self->_connection;
    self->_connection = 0;
  }

  notify_cancel(self->_connectionRequestNotificationToken);
  v5.receiver = self;
  v5.super_class = SOSKappaManager;
  [(SOSKappaManager *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SOSKappaManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SOSKappaManager_addObserver___block_invoke;
  v7[3] = &unk_279B53BA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __31__SOSKappaManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SOSKappaManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SOSKappaManager_removeObserver___block_invoke;
  v7[3] = &unk_279B53BA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __34__SOSKappaManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)triggerKappaWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = [MEMORY[0x277CCAD78] UUID];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v14[5];
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,Kappa triggered,%@", buf, 0xCu);
  }

  v7 = [(SOSKappaManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke;
  block[3] = &unk_279B53EB8;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v8 = v4;
  dispatch_async(v7, block);

  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2;
  v12[3] = &unk_279B53E68;
  v8 = *(a1 + 40);
  v3 = v8;
  v13 = v8;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v6 + 8) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_36;
  v9[3] = &unk_279B53E90;
  v11 = v6;
  v10 = v5;
  [v4 triggerSOSWithUUID:v7 triggerMechanism:7 completion:v9];
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3, 0);
  }
}

uint64_t __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_36(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x5A) != 0)
    {
      v4 = sos_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 40) + 8) + 40);
        v19 = 67109378;
        *v20 = a2;
        *&v20[4] = 2112;
        *&v20[6] = v5;
        _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,failure response (%d) to Kappa trigger,%@", &v19, 0x12u);
      }

      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
      goto LABEL_6;
    }

    if (a2 == 2)
    {
      v7 = +[SOSKappaManager currentSOSStatus];
      v13 = sos_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(*(a1 + 40) + 8) + 40);
        v15 = [v7 uuid];
        v19 = 138412546;
        *v20 = v14;
        *&v20[8] = 2112;
        *&v20[10] = v15;
        _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,already active response to Kappa trigger,%@,active flow,%@", &v19, 0x16u);
      }

      v16 = [v7 uuid];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      goto LABEL_6;
    }

    if (a2 == 5)
    {
      v7 = sos_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v19 = 138412290;
        *v20 = v10;
        v11 = "SOSKappaManager,successful response to Kappa trigger,%@,pushed to paired device";
LABEL_17:
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, v11, &v19, 0xCu);
        goto LABEL_6;
      }

      goto LABEL_6;
    }
  }

  if (!a2)
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v19 = 138412290;
      *v20 = v12;
      v11 = "SOSKappaManager,successful response to Kappa trigger,%@";
      goto LABEL_17;
    }

LABEL_6:
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2, *(*(*(a1 + 40) + 8) + 40));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)detectedAnomalyWithElectedDevice:(unint64_t)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = sos_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = a3;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,anomaly detected,device,%d", buf, 8u);
  }

  if (a3 == 1)
  {
    v8 = [(SOSKappaManager *)self serialQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke;
    v10[3] = &unk_279B53510;
    v10[4] = self;
    v11 = v6;
    dispatch_async(v8, v10);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2;
  v7[3] = &unk_279B53980;
  v8 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_39;
  v5[3] = &unk_279B53EE0;
  v6 = *(a1 + 40);
  [v3 triggerSOSWithUUID:v4 triggerMechanism:7 completion:v5];
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3);
  }
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 5)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    LOWORD(v11[0]) = 0;
    v6 = "SOSKappaManager,successful response to anomaly detected on paired device";
    goto LABEL_7;
  }

  if (!a2)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    LOWORD(v11[0]) = 0;
    v6 = "SOSKappaManager,successful response to anomaly detected";
LABEL_7:
    v7 = v4;
    v8 = 2;
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v11[0] = 67109120;
  v11[1] = a2;
  v6 = "SOSKappaManager,failure response to anomaly detected,%d";
  v7 = v4;
  v8 = 8;
LABEL_10:
  _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
LABEL_11:

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, [SOSKappaManager mapServerResponseToKappaResponse:a2]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setSendingLocationUpdate:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sending location updates %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateClientCurrentSOSInitiationState:(int64_t)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,initiation state updated to %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateClientCurrentSOSInteractiveState:(int64_t)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,interactive state updated to %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateClientCurrentSOSButtonPressState:(id)a3
{
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,button press state updated", v4, 2u);
  }
}

- (void)dismissClientSOSWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sos dismiss received", v5, 2u);
  }

  v3[2](v3, 1);
}

- (void)didDismissClientSOSBeforeSOSCall:(int64_t)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sos dismissal type is %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateSOSStatus:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,receiving update to SOSStatus: %@", &v9, 0xCu);
  }

  v7 = [[SOSKappaStatus alloc] initWithSOSStatus:v4];
  -[SOSKappaStatus setSosKappaState:](v7, "setSosKappaState:", +[SOSKappaManager mapSOSFlowStateToKappaState:](SOSKappaManager, "mapSOSFlowStateToKappaState:", [v4 flowState]));
  [(SOSKappaManager *)self updateObserversWithKappaStatus:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateObserversWithKappaStatus:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isKappaFlow];
  v6 = sos_default_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,updating observers with status: %@", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(SOSKappaManager *)self observers];
    v6 = [v8 copy];

    v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v14 + 1) + 8 * i) updatedSOSKappaStatus:v4];
        }

        v10 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else if (v7)
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,not a Kappa flow so not updating observers with status: %@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setConnection:(id)a3
{
  v9 = a3;
  v5 = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  connection = self->_connection;
  p_connection = &self->_connection;
  v6 = connection;
  if (connection != v9)
  {
    if (v6)
    {
      [(NSXPCConnection *)v6 invalidate];
      [(NSXPCConnection *)*p_connection setInvalidationHandler:0];
      [(NSXPCConnection *)*p_connection setInterruptionHandler:0];
    }

    objc_storeStrong(p_connection, a3);
  }
}

- (NSXPCConnection)connection
{
  v3 = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  connection = self->_connection;
  if (!connection)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sos" options:4096];
    v6 = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    v8 = [(SOSKappaManager *)self serialQueue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    v9 = self->_connection;
    v10 = SOSServerInterface();
    [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

    v11 = self->_connection;
    v12 = SOSClientInterface();
    [(NSXPCConnection *)v11 setExportedInterface:v12];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_7];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__SOSKappaManager_connection__block_invoke_43;
    v17 = &unk_279B53930;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&v14];
    [(NSXPCConnection *)self->_connection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __29__SOSKappaManager_connection__block_invoke()
{
  v0 = sos_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_264323000, v0, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,SOS server connection interrupted", v1, 2u);
  }
}

void __29__SOSKappaManager_connection__block_invoke_43(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,SOS server connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SOSKappaManager_connection__block_invoke_44;
  block[3] = &unk_279B53930;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
}

void __29__SOSKappaManager_connection__block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (void)forceStartConnection
{
  objc_initWeak(&location, self);
  v3 = [(SOSKappaManager *)self connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_46];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SOSKappaManager_forceStartConnection__block_invoke_47;
  v5[3] = &unk_279B53F08;
  objc_copyWeak(&v6, &location);
  [v4 syncState:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__SOSKappaManager_forceStartConnection__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] SOSKappaManager,failed to send message on sosd launch due to error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __39__SOSKappaManager_forceStartConnection__block_invoke_47(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [SOSKappaStatus alloc];
  v3 = +[SOSKappaManager currentSOSStatus];
  v4 = [(SOSKappaStatus *)v2 initWithSOSStatus:v3];

  v5 = [(SOSKappaStatus *)v4 sosStatus];
  -[SOSKappaStatus setSosKappaState:](v4, "setSosKappaState:", +[SOSKappaManager mapSOSFlowStateToKappaState:](SOSKappaManager, "mapSOSFlowStateToKappaState:", [v5 flowState]));

  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,successfully connected to sosd with current SOSStatus: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateObserversWithKappaStatus:v4];

  v8 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)mapServerResponseToKappaResponse:(int64_t)a3
{
  if ((a3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)mapSOSFlowStateToKappaState:(int64_t)a3
{
  if ((a3 - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_264323000, log, OS_LOG_TYPE_ERROR, "SOSKappaManager,connection failure during Kappa trigger,%@,error,%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSKappaManager,error from remoteObjectProxyWithErrorHandler: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end