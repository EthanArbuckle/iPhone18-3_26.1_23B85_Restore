@interface BRCMetricEndpoint
- (BRCMetricEndpoint)initWithSession:(id)a3;
@end

@implementation BRCMetricEndpoint

- (BRCMetricEndpoint)initWithSession:(id)a3
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCMetricEndpoint initWithSession:];
  }

  return 0;
}

- (void)initWithSession:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: needs override%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end