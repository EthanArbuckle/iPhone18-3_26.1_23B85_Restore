@interface SBExternalDisplayServiceConnectionListener
@end

@implementation SBExternalDisplayServiceConnectionListener

void __68___SBExternalDisplayServiceConnectionListener_initWithServiceQueue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66A68] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

void __114___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayDidUpdateProperties_requestingClient___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner((a1[4] + 8));
  os_unfair_lock_lock((a1[4] + 8));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1[4] + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7 != a1[5])
        {
          v8 = [v7 connection];
          v9 = [v8 remoteTarget];
          [v9 externalDisplayDidUpdateProperties:a1[6]];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((a1[4] + 8));
}

void __88___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayDidConnect___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) connection];
        v8 = [v7 remoteTarget];
        [v8 externalDisplayDidConnect:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void __92___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayWillDisconnect___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) connection];
        v8 = [v7 remoteTarget];
        [v8 externalDisplayWillDisconnect:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66A68] interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 32)];
  v5 = [MEMORY[0x277D66A68] serviceQuality];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_2783ABE18;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_65;
  v6[3] = &unk_2783ABE18;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogDisplayControlling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2_cold_1();
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

void __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogDisplayControlling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_65_cold_1();
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

void __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [v0 remoteProcess];
  [v1 pid];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_8(&dword_21ED4E000, v2, v3, "SBExternalDisplayService: connection <%p> pid: %i was interrupted", v4, v5, v6, v7, v8);
}

void __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke_65_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [v0 remoteProcess];
  [v1 pid];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_8(&dword_21ED4E000, v2, v3, "SBExternalDisplayService: connection <%p> pid: %i was invalidated", v4, v5, v6, v7, v8);
}

@end