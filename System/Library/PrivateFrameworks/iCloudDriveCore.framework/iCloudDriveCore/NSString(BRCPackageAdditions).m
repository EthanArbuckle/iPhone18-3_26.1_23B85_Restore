@interface NSString(BRCPackageAdditions)
+ (uint64_t)brc_addForcedPackageExtension:()BRCPackageAdditions;
+ (uint64_t)brc_closeForcedPackageExtensionsForPersona:()BRCPackageAdditions;
+ (void)brc_loadForcedPackageExtensionsForCurrentPersona;
- (uint64_t)brc_isBlacklistedPackageExtension;
- (uint64_t)brc_isForcedPackageExtension;
@end

@implementation NSString(BRCPackageAdditions)

- (uint64_t)brc_isBlacklistedPackageExtension
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [v2 blacklistedPackageExtensions];
  v4 = [a1 lowercaseString];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (uint64_t)brc_isForcedPackageExtension
{
  pthread_rwlock_rdlock(&_forcedPackageExtensionsMutex);
  v2 = _unifiedForcedPackageExtensions;
  v3 = [a1 lowercaseString];
  v4 = [v2 containsObject:v3];

  pthread_rwlock_unlock(&_forcedPackageExtensionsMutex);
  return v4;
}

+ (uint64_t)brc_closeForcedPackageExtensionsForPersona:()BRCPackageAdditions
{
  v3 = a3;
  pthread_rwlock_wrlock(&_forcedPackageExtensionsMutex);
  [_loadedPersonaIDs removeObjectForKey:v3];

  return pthread_rwlock_unlock(&_forcedPackageExtensionsMutex);
}

+ (void)brc_loadForcedPackageExtensionsForCurrentPersona
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] migration completed already%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)brc_addForcedPackageExtension:()BRCPackageAdditions
{
  v3 = a3;
  pthread_rwlock_wrlock(&_forcedPackageExtensionsMutex);
  v4 = _unifiedForcedPackageExtensions;
  v5 = [v3 lowercaseString];

  [v4 addObject:v5];
  pthread_rwlock_unlock(&_forcedPackageExtensionsMutex);

  return _BRCWritePackageExtensions();
}

@end