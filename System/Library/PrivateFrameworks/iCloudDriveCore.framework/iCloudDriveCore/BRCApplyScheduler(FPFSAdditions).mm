@interface BRCApplyScheduler(FPFSAdditions)
@end

@implementation BRCApplyScheduler(FPFSAdditions)

- (void)monitorFaultingForZone:()FPFSAdditions .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Monitoring faulting for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFaultingForZone:()FPFSAdditions .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Stop monitoring faulting for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end