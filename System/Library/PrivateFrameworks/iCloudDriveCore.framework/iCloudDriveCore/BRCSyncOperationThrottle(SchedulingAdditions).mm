@interface BRCSyncOperationThrottle(SchedulingAdditions)
@end

@implementation BRCSyncOperationThrottle(SchedulingAdditions)

- (void)scheduleIfPossibleWithCurrentTimestamp:()SchedulingAdditions signalSourceIfFailed:description:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  brc_interval_from_nsec();
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Not ready to sync yet, sleeping for %.3fs%@", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleIfPossibleWithCurrentTimestamp:()SchedulingAdditions signalSourceIfFailed:description:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No sync required anymore at that time%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end