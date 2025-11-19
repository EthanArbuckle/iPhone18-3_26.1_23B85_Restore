@interface TUINetworkMonitor
- (TUINetworkMonitor)init;
- (TUINetworkMonitorDelegate)delegate;
- (void)_setNetworkMonitorUpdateHandlerWithPath:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)init;
- (void)setUpNetworkPathMonitor;
@end

@implementation TUINetworkMonitor

- (TUINetworkMonitor)init
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
  {
    [TUINetworkMonitor init];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_DEBUG))
  {
    [TUINetworkMonitor init];
  }

  v10.receiver = self;
  v10.super_class = TUINetworkMonitor;
  v3 = [(TUINetworkMonitor *)&v10 init];
  if (v3)
  {
    v4 = nw_path_monitor_create();
    networkPathMonitor = v3->_networkPathMonitor;
    v3->_networkPathMonitor = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.TransparencyUI.network.monitor", v6);
    networkMonitorQueue = v3->_networkMonitorQueue;
    v3->_networkMonitorQueue = v7;
  }

  return v3;
}

uint64_t __25__TUINetworkMonitor_init__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __28__TUINetworkMonitor_dealloc__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)setUpNetworkPathMonitor
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_10(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_initWeak(location, WeakRetained);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_13;
    v7[3] = &unk_279DDAB28;
    objc_copyWeak(&v8, location);
    [WeakRetained _setNetworkMonitorUpdateHandlerWithPath:v3 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
    {
      __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_10_cold_1();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TUINetworkMonitor setUpNetworkPathMonitor]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", location, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_13(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    [v3 activeConnectionChanged];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
    {
      __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_13_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUINetworkMonitor setUpNetworkPathMonitor]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __44__TUINetworkMonitor_setUpNetworkPathMonitor__block_invoke_2_14()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setNetworkMonitorUpdateHandlerWithPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
  {
    [TUINetworkMonitor _setNetworkMonitorUpdateHandlerWithPath:completion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_DEBUG))
  {
    [TUINetworkMonitor _setNetworkMonitorUpdateHandlerWithPath:completion:];
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20;
  v10[3] = &unk_279DDB4F8;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[8] = nw_path_get_status(*(a1 + 32)) == nw_path_status_satisfied;
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
    {
      __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_DEBUG))
    {
      __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20_cold_2(v3, WeakRetained, WeakRetained);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
    {
      __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20_cold_3();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[TUINetworkMonitor _setNetworkMonitorUpdateHandlerWithPath:completion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", &v8, 0xCu);
    }

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_23 != -1)
    {
      __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20_cold_4();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[TUINetworkMonitor _setNetworkMonitorUpdateHandlerWithPath:completion:]_block_invoke_2";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block self is nil", &v8, 0xCu);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_23()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_26()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_23 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUINetworkMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setNetworkMonitorUpdateHandlerWithPath:completion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__TUINetworkMonitor__setNetworkMonitorUpdateHandlerWithPath_completion___block_invoke_20_cold_2(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 138543618;
  v8 = a3;
  v9 = 1024;
  v10 = [a2 hasActiveConnection];
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ hasActiveConnection = %d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end