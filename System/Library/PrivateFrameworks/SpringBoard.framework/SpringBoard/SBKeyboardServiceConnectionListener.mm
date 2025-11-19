@interface SBKeyboardServiceConnectionListener
@end

@implementation SBKeyboardServiceConnectionListener

void __61___SBKeyboardServiceConnectionListener_initWithServiceQueue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66B08] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

void __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66B08] interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v5 = [MEMORY[0x277D66B08] serviceQuality];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_2783ABE18;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_44;
  v6[3] = &unk_2783ABE18;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2_cold_1();
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

void __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_44_cold_1();
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

void __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [v0 remoteProcess];
  [v1 pid];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_8(&dword_21ED4E000, v2, v3, "SBKeyboardFocusService: connection <%p> pid: %i was interrupted", v4, v5, v6, v7, v8);
}

void __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [v0 remoteProcess];
  [v1 pid];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_8(&dword_21ED4E000, v2, v3, "SBKeyboardFocusService: connection <%p> pid: %i was invalidated", v4, v5, v6, v7, v8);
}

@end