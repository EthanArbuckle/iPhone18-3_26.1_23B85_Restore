@interface STXPCClient
@end

@implementation STXPCClient

void __41___STXPCClient_synchronousTranslatorPeer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __41___STXPCClient_synchronousTranslatorPeer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
  }
}

void __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "client: %{public}@ interrupted", &v4, 0xCu);
    }

    [WeakRetained invalidate];
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "client: %{public}@ invalidated", &v4, 0xCu);
    }

    [WeakRetained invalidate];
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
  }
}

void __41___STXPCClient_synchronousTranslatorPeer__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Unable to obtain synchronous peer object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(&dword_26B5BC000, v0, v1, "Unable to obtain remote object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end