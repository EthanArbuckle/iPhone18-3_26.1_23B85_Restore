@interface BRCAppLibrary(FPFSAdditions)
- (void)deleteAppLibrary;
- (void)documentsFolderFileObjectID;
- (void)recreateDocumentsFolderIfNeededInDB;
@end

@implementation BRCAppLibrary(FPFSAdditions)

- (void)documentsFolderFileObjectID
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: App library %@ doesn't have a documents folder%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)recreateDocumentsFolderIfNeededInDB
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(self + 48);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_223E7A000, v2, 0x90u, "[ERROR] Failed to create documents folder for app library %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_recursivelyDeleteItemsUnderItemID:()FPFSAdditions filterPredicate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to save to db without an error%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deleteAppLibrary
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleting app library %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end