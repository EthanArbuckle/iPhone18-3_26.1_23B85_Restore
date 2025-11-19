@interface BRCDocumentItem(BRCFPFSAdditions)
@end

@implementation BRCDocumentItem(BRCFPFSAdditions)

- (void)_initFromPQLResultSet:()BRCFPFSAdditions session:db:error:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isIdleOrRejected%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()BRCFPFSAdditions .cold.5()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownloadWithEtag:()BRCFPFSAdditions downloadKind:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: downloadKind == BRCDownloadKindLoser%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end