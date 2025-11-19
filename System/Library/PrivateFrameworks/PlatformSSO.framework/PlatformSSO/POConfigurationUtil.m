@interface POConfigurationUtil
+ (BOOL)appSSOEnabled;
+ (BOOL)platformSSOEnabled;
+ (BOOL)platformSSOEnabledForUsername:(id)a3;
+ (void)appSSOEnabled;
+ (void)platformSSOEnabled;
+ (void)updateTriggerFile;
@end

@implementation POConfigurationUtil

+ (BOOL)platformSSOEnabled
{
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[POConfigurationUtil platformSSOEnabled];
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[POConfigurationUtil platformSSOTriggerFile];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = PO_LOG_POConfigurationUtil();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[POConfigurationUtil platformSSOEnabled];
    }
  }

  return v5;
}

+ (BOOL)appSSOEnabled
{
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[POConfigurationUtil appSSOEnabled];
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/ExtensibleSSO/Configuration/com.apple.AppSSO.configuration.plist"];

  return v4;
}

+ (BOOL)platformSSOEnabledForUsername:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [[POConfigurationManager alloc] initWithUserName:v3];

  v5 = [(POConfigurationManager *)v4 currentDeviceConfiguration];
  if ([v5 registrationCompleted])
  {
    v6 = [(POConfigurationManager *)v4 currentUserConfiguration];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)updateTriggerFile
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

id __40__POConfigurationUtil_updateTriggerFile__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 underlyingError:*(a1 + 32) description:@"Did not find configuration files."];
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __40__POConfigurationUtil_updateTriggerFile__block_invoke_12(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to create trigger file"];
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __40__POConfigurationUtil_updateTriggerFile__block_invoke_18(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to set trigger file attributes"];
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __40__POConfigurationUtil_updateTriggerFile__block_invoke_25(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove trigger file."];
  v2 = PO_LOG_POConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

+ (void)platformSSOEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)appSSOEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end