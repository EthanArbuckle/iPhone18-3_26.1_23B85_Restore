@interface RMStoreKeychainController
@end

@implementation RMStoreKeychainController

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6_cold_2(v5);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7_cold_2(v5);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed XPC connection while setting certificate trust: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Could not set certificate trust: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed XPC connection while removing certificate trust: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Could not remove certificate trust: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end