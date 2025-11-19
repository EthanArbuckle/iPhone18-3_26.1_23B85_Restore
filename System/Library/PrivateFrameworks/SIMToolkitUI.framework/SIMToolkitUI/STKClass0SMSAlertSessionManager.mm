@interface STKClass0SMSAlertSessionManager
- (STKClass0SMSAlertSessionManager)initWithSubscriptionMonitor:(id)a3;
- (id)remoteAlertDescriptorForSession:(id)a3;
- (void)_queue_enqueueSession:(id)a3;
- (void)_queue_handleClass0SMSBody:(id)a3 address:(id)a4 responder:(id)a5 forSlot:(int64_t)a6;
- (void)_queue_setCurrentSession:(id)a3;
- (void)handleClass0SMSBody:(id)a3 address:(id)a4 responder:(id)a5 forSlot:(int64_t)a6;
- (void)incomingCallUIStateDidChange:(BOOL)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)smsMessageClass0Received:(id)a3 body:(id)a4 address:(id)a5;
@end

@implementation STKClass0SMSAlertSessionManager

- (STKClass0SMSAlertSessionManager)initWithSubscriptionMonitor:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = STKClass0SMSLog();
  v16.receiver = self;
  v16.super_class = STKClass0SMSAlertSessionManager;
  v8 = [(STKAlertSessionManager *)&v16 initWithEventQueue:v6 logger:v7];

  if (v8)
  {
    v9 = BSDispatchQueueCreateWithQualityOfService();
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_subscriptionMonitor, a3);
    v11 = +[STKIncomingCallUIStateMonitor sharedInstance];
    queue_incomingCallStateMonitor = v8->_queue_incomingCallStateMonitor;
    v8->_queue_incomingCallStateMonitor = v11;

    [(STKIncomingCallUIStateMonitor *)v8->_queue_incomingCallStateMonitor addObserver:v8];
    v13 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8->_queue];
    telephonyClient = v8->_telephonyClient;
    v8->_telephonyClient = v13;

    [(CoreTelephonyClient *)v8->_telephonyClient setDelegate:v8];
  }

  return v8;
}

- (id)remoteAlertDescriptorForSession:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 options];
    v5 = [STKClass0SMSSessionData alloc];
    v6 = [v4 objectForKeyedSubscript:@"Class0SMSBody"];
    v7 = [v4 objectForKeyedSubscript:@"Class0SMSAddress"];
    v8 = [v4 objectForKeyedSubscript:@"Class0SMSShowFromField"];
    v9 = -[STKClass0SMSSessionData initWithBody:address:showsFromAddress:](v5, "initWithBody:address:showsFromAddress:", v6, v7, [v8 BOOLValue]);

    v10 = [STKClass0SMSSessionAction alloc];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__STKClass0SMSAlertSessionManager_remoteAlertDescriptorForSession___block_invoke;
    v14[3] = &unk_279B4C5F8;
    v15 = v3;
    v11 = [(STKClass0SMSSessionAction *)v10 initWithInputData:v9 response:v14];
    v12 = [[_STKRemoteAlertDescriptor alloc] initWithAction:v11 viewControllerName:@"STKClass0SMSViewController"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)handleClass0SMSBody:(id)a3 address:(id)a4 responder:(id)a5 forSlot:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__STKClass0SMSAlertSessionManager_handleClass0SMSBody_address_responder_forSlot___block_invoke;
  block[3] = &unk_279B4C450;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)smsMessageClass0Received:(id)a3 body:(id)a4 address:(id)a5
{
  queue = self->_queue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  BSDispatchQueueAssert();
  v12 = [_STKClass0SMSResponseProvider alloc];
  v15 = [(STKAlertSessionManager *)self log];
  v13 = [(_STKClass0SMSResponseProvider *)v12 initWithLogger:v15];
  v14 = [v11 slotID];

  [(STKClass0SMSAlertSessionManager *)self _queue_handleClass0SMSBody:v10 address:v9 responder:v13 forSlot:v14];
}

- (void)incomingCallUIStateDidChange:(BOOL)a3
{
  if (!a3)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__STKClass0SMSAlertSessionManager_incomingCallUIStateDidChange___block_invoke;
    block[3] = &unk_279B4C428;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __64__STKClass0SMSAlertSessionManager_incomingCallUIStateDidChange___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 134217984;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [*(a1 + 32) log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v20 = v11;
          _os_log_impl(&dword_262BB4000, v12, OS_LOG_TYPE_DEFAULT, "Enqueing session (%p) because incoming call UI was dismissed.", buf, 0xCu);
        }

        [*(a1 + 32) _queue_enqueueSession:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__STKClass0SMSAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_279B4C4C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __66__STKClass0SMSAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 _queue_setCurrentSession:0];
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  [v5 removeObserver:self];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__STKClass0SMSAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  v8[3] = &unk_279B4C4C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __76__STKClass0SMSAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 _queue_setCurrentSession:0];
  }
}

- (void)_queue_setCurrentSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  currentSession = self->_currentSession;
  if (currentSession != v4)
  {
    v7 = [(STKAlertSession *)currentSession alertHandle];
    [v7 removeObserver:self];

    [(STKAlertSession *)self->_currentSession invalidate];
  }

  v8 = self->_currentSession;
  self->_currentSession = v4;
  v9 = v4;

  v10 = [(STKAlertSession *)self->_currentSession alertHandle];

  [v10 addObserver:self];
}

- (void)_queue_handleClass0SMSBody:(id)a3 address:(id)a4 responder:(id)a5 forSlot:(int64_t)a6
{
  queue = self->_queue;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  BSDispatchQueueAssert();
  v20 = [(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor subscriptionInfoForSlot:a6];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:v13 forKeyedSubscript:@"Class0SMSBody"];

  [v14 setObject:v12 forKeyedSubscript:@"Class0SMSAddress"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v20, "showClass0SMSFromField")}];
  [v14 setObject:v15 forKeyedSubscript:@"Class0SMSShowFromField"];

  v16 = [STKClass0SMSAlertSession alloc];
  v17 = [(STKAlertSessionManager *)self log];
  v18 = +[STKSoundFactory class0SMSSound];
  v19 = [(STKClass0SMSAlertSession *)v16 initWithLogger:v17 responseProvider:v11 options:v14 sound:v18 slot:a6];

  [(STKClass0SMSAlertSessionManager *)self _queue_enqueueSession:v19];
}

- (void)_queue_enqueueSession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[STKCarrierSubscriptionMonitor subscriptionInfoForSlot:](self->_subscriptionMonitor, "subscriptionInfoForSlot:", [v4 slot]);
  if ([(STKIncomingCallUIStateMonitor *)self->_queue_incomingCallStateMonitor isShowingIncomingCallUI])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ([v5 canShowClass0SMSOverInCallAlerts] & 1) != 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__STKClass0SMSAlertSessionManager__queue_enqueueSession___block_invoke;
    v11[3] = &unk_279B4C620;
    v11[4] = self;
    v12 = v4;
    [(STKAlertSessionManager *)self enqueuePresentationForSession:v12 completion:v11];
  }

  else
  {
    if (!self->_queue_pendingAlertSessionsDueToInCallUI)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      queue_pendingAlertSessionsDueToInCallUI = self->_queue_pendingAlertSessionsDueToInCallUI;
      self->_queue_pendingAlertSessionsDueToInCallUI = v7;
    }

    v9 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&dword_262BB4000, v9, OS_LOG_TYPE_DEFAULT, "Pending session (%p) due to incoming call UI up and carrier wanting alerts suppressed over incoming call alerts.", buf, 0xCu);
    }

    [(NSMutableArray *)self->_queue_pendingAlertSessionsDueToInCallUI addObject:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __57__STKClass0SMSAlertSessionManager__queue_enqueueSession___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__STKClass0SMSAlertSessionManager__queue_enqueueSession___block_invoke_2;
    v5[3] = &unk_279B4C4C8;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

@end