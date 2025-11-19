@interface QLServerThread(ExternalCache)
@end

@implementation QLServerThread(ExternalCache)

- (void)findUncachedThumbnailInExternalThumbnailCacheForRequest:()ExternalCache item:URL:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_2615D3000, v0, OS_LOG_TYPE_DEBUG, "Trying external cache for %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)receivedExternalCacheConnection:()ExternalCache error:forProviderDomainID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2(&dword_2615D3000, v0, v1, "Could not get connection to external thumbnail cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end