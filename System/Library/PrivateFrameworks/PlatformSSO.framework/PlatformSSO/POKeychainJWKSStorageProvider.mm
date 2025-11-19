@interface POKeychainJWKSStorageProvider
- (POKeychainJWKSStorageProvider)initWithSystem:(BOOL)a3;
- (id)jwksCacheForExtensionIdentifier:(id)a3;
- (void)setJwksCache:(id)a3 forExtensionIdentifier:(id)a4;
@end

@implementation POKeychainJWKSStorageProvider

- (POKeychainJWKSStorageProvider)initWithSystem:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = POKeychainJWKSStorageProvider;
  v4 = [(POKeychainJWKSStorageProvider *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_isSystem = a3;
    v6 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v5->_keychainHelper;
    v5->_keychainHelper = v6;
  }

  return v5;
}

- (id)jwksCacheForExtensionIdentifier:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainJWKSStorageProvider jwksCacheForExtensionIdentifier:];
  }

  v6 = [(POKeychainJWKSStorageProvider *)self keychainHelper];
  v12 = 0;
  v7 = [v6 retrieveTokensFromKeychainForService:v4 username:@"com.apple.jwksCache" system:-[POKeychainJWKSStorageProvider isSystem](self returningTokens:"isSystem") metaData:{&v12, 0}];

  v8 = v12;
  if (v7)
  {
    v9 = __65__POKeychainJWKSStorageProvider_jwksCacheForExtensionIdentifier___block_invoke();
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

id __65__POKeychainJWKSStorageProvider_jwksCacheForExtensionIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"JWKS data not found in cache."];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setJwksCache:(id)a3 forExtensionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainJWKSStorageProvider setJwksCache:forExtensionIdentifier:];
  }

  v9 = [(POKeychainJWKSStorageProvider *)self keychainHelper];
  v10 = [(POKeychainJWKSStorageProvider *)self isSystem];
  if (v6)
  {
    v11 = [v9 addTokens:v6 metaData:0 toKeychainForService:v7 username:@"com.apple.jwksCache" system:v10];

    if (v11)
    {
      v12 = __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke();
    }
  }

  else
  {
    v13 = [v9 removeTokensFromKeychainWithService:v7 username:@"com.apple.jwksCache" system:v10];

    if (v13 != -25300 && v13)
    {
      v14 = __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11();
    }
  }
}

id __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save JWKS data in cache."];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Error removing jwks data from cache"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

- (void)jwksCacheForExtensionIdentifier:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setJwksCache:forExtensionIdentifier:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end