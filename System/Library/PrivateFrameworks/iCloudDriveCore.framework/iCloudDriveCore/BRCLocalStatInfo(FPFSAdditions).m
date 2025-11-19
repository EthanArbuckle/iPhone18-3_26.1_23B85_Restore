@interface BRCLocalStatInfo(FPFSAdditions)
- (void)clearBouncedName;
@end

@implementation BRCLocalStatInfo(FPFSAdditions)

- (void)_updateStatAliasMeta:()FPFSAdditions .cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: aliasItem.isBRAlias%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithImportObject:()FPFSAdditions error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithImportObject:()FPFSAdditions error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: nobody should import an item from a BR Alias%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithImportObject:()FPFSAdditions error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: nobody should import an item from a fault%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_finderTagsFromImportObject:()FPFSAdditions .cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_finderTagsFromImportObject:()FPFSAdditions .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] read tags: [%@]%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateStatMetaFromServer:()FPFSAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !_aliasTarget || [_aliasTarget isEqualToString:st.aliasTarget]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateFromImportObject:()FPFSAdditions onlyContentDependentProperties:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] dropping tags%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearBouncedName
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Clear bounced name because there is no item at the unbounced location%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end