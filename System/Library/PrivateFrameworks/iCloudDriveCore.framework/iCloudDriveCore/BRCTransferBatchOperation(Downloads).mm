@interface BRCTransferBatchOperation(Downloads)
@end

@implementation BRCTransferBatchOperation(Downloads)

- (void)fetchOperationForTransfers:()Downloads traceCode:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: ![[BRCAccountsManager sharedManager] isInSyncBubble]%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end