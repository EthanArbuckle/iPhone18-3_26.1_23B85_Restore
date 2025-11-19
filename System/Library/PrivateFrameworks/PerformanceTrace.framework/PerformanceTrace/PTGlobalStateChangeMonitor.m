@interface PTGlobalStateChangeMonitor
- (PTGlobalStateChangeMonitor)initWithQueue:(id)a3 stateChangeBlock:(id)a4;
- (void)dealloc;
@end

@implementation PTGlobalStateChangeMonitor

- (PTGlobalStateChangeMonitor)initWithQueue:(id)a3 stateChangeBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = PTGlobalStateChangeMonitor;
  v9 = [(PTGlobalStateChangeMonitor *)&v24 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v9->_targetQueue, a3);
  v11 = MEMORY[0x25F8B17E0](v8);
  stateChangeBlock = v10->_stateChangeBlock;
  v10->_stateChangeBlock = v11;

  objc_initWeak(&location, v10);
  out_token = 0;
  v13 = [(PTGlobalStateChangeMonitor *)v10 targetQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__PTGlobalStateChangeMonitor_initWithQueue_stateChangeBlock___block_invoke;
  handler[3] = &unk_279A18CF8;
  objc_copyWeak(&v21, &location);
  v14 = notify_register_dispatch("com.apple.performancetrace.global_state_did_change", &out_token, v13, handler);

  if (!v14)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    notify_token = v10->_notify_token;
    v10->_notify_token = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
LABEL_7:
    v16 = v10;
    goto LABEL_8;
  }

  v15 = _stateChangeMonitorHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [PTGlobalStateChangeMonitor initWithQueue:stateChangeBlock:];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  v16 = 0;
LABEL_8:

  return v16;
}

void __61__PTGlobalStateChangeMonitor_initWithQueue_stateChangeBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateChangeBlock];
  v2[2]();

  v3 = _stateChangeMonitorHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E3D3000, v3, OS_LOG_TYPE_DEFAULT, "Fired notification handler block", v4, 2u);
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithQueue:stateChangeBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end