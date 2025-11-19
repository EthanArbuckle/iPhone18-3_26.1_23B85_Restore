@interface BRCWritePackageExtensions
@end

@implementation BRCWritePackageExtensions

uint64_t ___BRCWritePackageExtensions_block_invoke()
{
  v0 = [BRCUserDefaults defaultsForMangledID:0];
  [v0 packageExtensionPlistWriteInterval];
  v1 = dispatch_get_global_queue(9, 0);
  v2 = br_pacer_create();
  v3 = _BRCWritePackageExtensions_pacer;
  _BRCWritePackageExtensions_pacer = v2;

  br_pacer_set_event_handler();

  return br_pacer_resume();
}

void ___BRCWritePackageExtensions_block_invoke_2()
{
  pthread_rwlock_rdlock(&_forcedPackageExtensionsMutex);
  [_loadedPersonaIDs enumerateKeysAndObjectsUsingBlock:&__block_literal_global_20];
  v0 = [_unifiedForcedPackageExtensions allObjects];
  v1 = brc_bread_crumbs();
  v2 = brc_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___BRCWritePackageExtensions_block_invoke_2_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.fileproviderd"];
  [v3 setObject:v0 forKey:@"iCDPackageExtensions"];
  pthread_rwlock_unlock(&_forcedPackageExtensionsMutex);
}

void ___BRCWritePackageExtensions_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      ___BRCWritePackageExtensions_block_invoke_4_cold_1();
    }
  }

  else
  {
    v5 = [_unifiedForcedPackageExtensions allObjects];
    v4 = extension_array_path();
    [v5 writeToFile:v4 atomically:1];
  }
}

void ___BRCWritePackageExtensions_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] Persisting %@ for FileProvider%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ___BRCWritePackageExtensions_block_invoke_4_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't change personas while saving package extensions list%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end