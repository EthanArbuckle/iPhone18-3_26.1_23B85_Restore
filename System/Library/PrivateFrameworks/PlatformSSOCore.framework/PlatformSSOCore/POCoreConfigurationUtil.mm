@interface POCoreConfigurationUtil
+ (BOOL)appSSOEnabled;
+ (BOOL)isInternalBuild;
+ (BOOL)platformSSODevModeEnabled;
+ (BOOL)platformSSOEnabled;
+ (void)appSSOEnabled;
+ (void)platformSSODevModeEnabled;
+ (void)platformSSOEnabled;
+ (void)updateTriggerFile;
+ (void)writeTriggerFileToPath:(id)path;
@end

@implementation POCoreConfigurationUtil

+ (BOOL)platformSSOEnabled
{
  v2 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[POCoreConfigurationUtil platformSSOEnabled];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[POCoreConfigurationUtil platformSSOTriggerFile];
  v5 = [defaultManager fileExistsAtPath:v4];

  if (v5)
  {
    v6 = PO_LOG_POCoreConfigurationUtil();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[POCoreConfigurationUtil platformSSOEnabled];
    }
  }

  return v5;
}

+ (BOOL)appSSOEnabled
{
  v2 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[POCoreConfigurationUtil appSSOEnabled];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/ExtensibleSSO/Configuration/com.apple.AppSSO.configuration.plist"];

  return v4;
}

+ (BOOL)platformSSODevModeEnabled
{
  v3 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[POCoreConfigurationUtil platformSSODevModeEnabled];
  }

  isInternalBuild = [self isInternalBuild];
  if (isInternalBuild)
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), +[POCoreConfigurationUtil platformSSODevModeTriggerFile](POCoreConfigurationUtil, "platformSSODevModeTriggerFile"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, v7))
    {
      v8 = PO_LOG_POCoreConfigurationUtil();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        +[POCoreConfigurationUtil platformSSODevModeEnabled];
      }

      LOBYTE(isInternalBuild) = 1;
    }

    else
    {
      LOBYTE(isInternalBuild) = 0;
    }
  }

  return isInternalBuild;
}

+ (void)writeTriggerFileToPath:(id)path
{
  v25[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  data = [MEMORY[0x277CBEA90] data];
  v23 = 0;
  v5 = [data writeToFile:pathCopy options:268435457 error:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v24 = *MEMORY[0x277CCA180];
    v25[0] = &unk_2870A9270;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v19 = v7;
    v10 = [defaultManager setAttributes:v8 ofItemAtPath:pathCopy error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = PO_LOG_POCoreConfigurationUtil();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[POCoreConfigurationUtil writeTriggerFileToPath:];
      }
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_18;
      v16[3] = &unk_279A3DE00;
      v17 = v11;
      v18 = pathCopy;
      v14 = __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_18(v16);

      v12 = v17;
    }
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke;
    v20[3] = &unk_279A3DE00;
    v11 = v6;
    v21 = v11;
    v22 = pathCopy;
    v13 = __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke(v20);

    v8 = v21;
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to create trigger file"];
  v3 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_18(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to set trigger file attributes"];
  v3 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

+ (void)updateTriggerFile
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __44__POCoreConfigurationUtil_updateTriggerFile__block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 underlyingError:*(a1 + 32) description:@"Did not find configuration files."];
  v2 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

id __44__POCoreConfigurationUtil_updateTriggerFile__block_invoke_28(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove trigger file."];
  v2 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[POCoreConfigurationUtil isInternalBuild];
  }

  return isInternalBuild_internalBuild;
}

void __42__POCoreConfigurationUtil_isInternalBuild__block_invoke()
{
  isInternalBuild_internalBuild = os_variant_has_internal_content();
  v0 = PO_LOG_POCoreConfigurationUtil();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __42__POCoreConfigurationUtil_isInternalBuild__block_invoke_cold_1();
  }
}

+ (void)platformSSOEnabled
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)appSSOEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)platformSSODevModeEnabled
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)writeTriggerFileToPath:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__POCoreConfigurationUtil_writeTriggerFileToPath___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_25E8B1000, v3, v4, "%{public}@, %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __42__POCoreConfigurationUtil_isInternalBuild__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end