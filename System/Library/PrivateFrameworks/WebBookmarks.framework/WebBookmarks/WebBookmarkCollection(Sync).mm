@interface WebBookmarkCollection(Sync)
+ (void)_lockSync;
- (void)_markSpecialBookmarks;
- (void)beginSyncTransaction;
@end

@implementation WebBookmarkCollection(Sync)

- (void)_markSpecialBookmarks
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithBookmarksDictionary:()Sync clearHidden:clearSyncData:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithBookmarksDictionary:()Sync clearHidden:clearSyncData:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_syncSetString:()Sync forKey:updatedExistingKey:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_272C20000, v0, v1, "Failed to set sync properties value for key %{private}@. Sqlite error: %d", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setSyncData:()Sync forKey:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_1(&dword_272C20000, v0, v1, "Failed to set sync data for key %{public}@. Sqlite error: %d", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)beginSyncTransaction
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

+ (void)_lockSync
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end