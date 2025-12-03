@interface MCCCategoryRulesController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)notifyWebRuleWithSender:(id)sender category:(id)category lastModified:(double)modified;
- (MCCCategoryRulesController)init;
- (MCCCategoryRulesDelegate)delegate;
- (void)_checkConnection;
- (void)agentIsAlive;
- (void)dealloc;
- (void)newOldCategoryTimestampsChanged:(id)changed;
- (void)overrideRulesChanged:(id)changed;
- (void)registerForWebRuleNotifications;
- (void)registerForWebRuleNotifications:(unint64_t)notifications;
- (void)setupReconnectTimer;
- (void)syncAllCategoryOverrides:(id)overrides;
@end

@implementation MCCCategoryRulesController

- (MCCCategoryRulesController)init
{
  v21.receiver = self;
  v21.super_class = MCCCategoryRulesController;
  v2 = [(MCCCategoryRulesController *)&v21 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    callbackListener = v2->_callbackListener;
    v2->_callbackListener = anonymousListener;

    [(NSXPCListener *)v2->_callbackListener setDelegate:v2];
    v5 = [[MCCSecretAgentController alloc] initWithCallbackListener:v2->_callbackListener];
    agentController = v2->_agentController;
    v2->_agentController = v5;

    objc_initWeak(&location, v2);
    v7 = [MCCBgTimer alloc];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __34__MCCCategoryRulesController_init__block_invoke;
    v18 = &unk_1E8458168;
    objc_copyWeak(&v19, &location);
    v8 = [(MCCBgTimer *)v7 initWithTimeIntervalSinceNow:&v15 block:630.0];
    bgTimer = v2->_bgTimer;
    v2->_bgTimer = v8;

    [(MCCBgTimer *)v2->_bgTimer start:v15];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.icloudmcckit.reconnect.timer.queue", v10);
    reconnectTimerQueue = v2->reconnectTimerQueue;
    v2->reconnectTimerQueue = v11;

    v13 = _MCCLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MCCCategoryRulesController init];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__MCCCategoryRulesController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkConnection];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_callbackListener invalidate];
  objc_storeWeak(&self->_delegate, 0);
  v3 = _MCCLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [MCCCategoryRulesController dealloc];
  }

  v4.receiver = self;
  v4.super_class = MCCCategoryRulesController;
  [(MCCCategoryRulesController *)&v4 dealloc];
}

- (void)registerForWebRuleNotifications
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier caseInsensitiveCompare:@"com.apple.mobilemail"];

  v6 = _MCCLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "registerForWebRuleNotifications from maild", v9, 2u);
    }

    v8 = 5;
  }

  else if (v7)
  {
    *buf = 0;
    v8 = 2;
    _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "registerForWebRuleNotifications from Mail.app", buf, 2u);
  }

  else
  {
    v8 = 2;
  }

  [(MCCCategoryRulesController *)self registerForWebRuleNotifications:v8];
}

- (void)registerForWebRuleNotifications:(unint64_t)notifications
{
  date = [MEMORY[0x1E695DF00] date];
  lastCheckin = self->_lastCheckin;
  self->_lastCheckin = date;

  agentController = self->_agentController;

  [(MCCSecretAgentController *)agentController registerCategoryRulesCallbackWithNotificationTypes:notifications];
}

- (BOOL)notifyWebRuleWithSender:(id)sender category:(id)category lastModified:(double)modified
{
  categoryCopy = category;
  senderCopy = sender;
  v10 = [[RCAddress alloc] initWithAddress:senderCopy displayName:&stru_1F4F3D0E0];

  v11 = [[RCOverrideRule alloc] initWithEmailAddress:v10 overrideIdentifier:0 category:categoryCopy categoryUpdateTime:modified];
  [(MCCSecretAgentController *)self->_agentController notifyWebRule:v11];

  return 1;
}

- (void)_checkConnection
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(self + 24);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1D3703000, log, OS_LOG_TYPE_DEBUG, "[rules] Checking last:%@ vs now:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)agentIsAlive
{
  date = [MEMORY[0x1E695DF00] date];
  lastCheckin = self->_lastCheckin;
  self->_lastCheckin = date;

  v5 = _MCCLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MCCCategoryRulesController agentIsAlive];
  }
}

- (void)overrideRulesChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveOverrideRules:changedCopy];
    }
  }
}

- (void)newOldCategoryTimestampsChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveNewOldTimestamps:changedCopy];
    }
  }
}

- (void)syncAllCategoryOverrides:(id)overrides
{
  overridesCopy = overrides;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 categoryRulesController:self didReceiveSyncAllOverrideRules:overridesCopy];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  callbackListener = self->_callbackListener;
  if (callbackListener == listenerCopy)
  {
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4F40AC0];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    [v9 setClasses:v15 forSelector:sel_overrideRulesChanged_ argumentIndex:0 ofReply:0];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    [v9 setClasses:v19 forSelector:sel_newOldCategoryTimestampsChanged_ argumentIndex:0 ofReply:0];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    [v9 setClasses:v25 forSelector:sel_syncAllCategoryOverrides_ argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, self);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke;
    v29[3] = &unk_1E8458168;
    objc_copyWeak(&v30, &location);
    [connectionCopy setInterruptionHandler:v29];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95;
    v27[3] = &unk_1E8458168;
    objc_copyWeak(&v28, &location);
    [connectionCopy setInvalidationHandler:v27];
    [connectionCopy resume];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = _MCCLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MCCCategoryRulesController *)listenerCopy listener:v9 shouldAcceptNewConnection:?];
    }
  }

  return callbackListener == listenerCopy;
}

void __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _MCCLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 delegate];

    if (v5)
    {
      v6 = [v4 delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [v4 delegate];
        [v8 categoryRulesController:v4 didAlterConnectionWithReason:1];
      }
    }
  }
}

void __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95(uint64_t a1)
{
  v2 = _MCCLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__MCCCategoryRulesController_listener_shouldAcceptNewConnection___block_invoke_95_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setupReconnectTimer];
  }
}

- (void)setupReconnectTimer
{
  reconnectTimerQueue = self->reconnectTimerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke;
  block[3] = &unk_1E8458190;
  block[4] = self;
  dispatch_async(reconnectTimerQueue, block);
}

void __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  if (*(*(a1 + 32) + 40))
  {
    v2 = _MCCLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3703000, v2, OS_LOG_TYPE_DEFAULT, "[rules] Cancelling previous timer", buf, 2u);
    }

    [*(*(a1 + 32) + 40) cancel];
  }

  v3 = [MCCBgTimer alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96;
  v8[3] = &unk_1E8458168;
  objc_copyWeak(&v9, &location);
  v4 = [(MCCBgTimer *)v3 initWithTimeIntervalSinceNow:v8 block:60.0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "[rules] Starting reconnect timer", buf, 2u);
  }

  [*(*(a1 + 32) + 40) start];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _MCCLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1D3703000, v2, OS_LOG_TYPE_DEFAULT, "[rules] Attempting reconnect to launchagent", &v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = _MCCLogSystem();
  v5 = v4;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1D3703000, v5, OS_LOG_TYPE_DEFAULT, "[rules] Self does exist, firing timer", &v13, 2u);
    }

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 registerForWebRuleNotifications];

    v6 = [v5 delegate];

    if (v6)
    {
      v7 = [v5 delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = _MCCLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v5 delegate];
          v13 = 138412546;
          v14 = v10;
          v15 = 1024;
          v16 = 4;
          _os_log_impl(&dword_1D3703000, v9, OS_LOG_TYPE_DEFAULT, "[rules] Sending to client %@:%d", &v13, 0x12u);
        }

        v11 = [v5 delegate];
        [v11 categoryRulesController:v5 didAlterConnectionWithReason:4];
      }
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__MCCCategoryRulesController_setupReconnectTimer__block_invoke_96_cold_1();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (MCCCategoryRulesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1D3703000, log, OS_LOG_TYPE_ERROR, "[rules] MCCCategoryRulesController NOT accepting new connection: %@ vs %@\n", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end