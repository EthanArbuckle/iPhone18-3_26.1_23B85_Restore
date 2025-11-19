@interface SKGJob(Updates)
@end

@implementation SKGJob(Updates)

- (void)_reindexCoreSpotlightIdentifiers:()Updates bundleIdentifier:protectionClass:batchProcessedBlock:cancelBlock:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(&dword_231B25000, a2, a3, "Timeout reindexing items from %{public}@ in SKGJob+Text", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_runCSCleanupForQueryString:()Updates trackingAttributes:queryContext:batchUpdatedBlock:cancelBlock:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_231B25000, log, OS_LOG_TYPE_DEBUG, "Batch cleanup task has %llu spurious results for query %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end