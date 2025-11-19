@interface BRCDirectoryItem(FPFSAdditions)
- (void)_insertZombieForCrossZoneMove;
- (void)documentsDirectoryUpdatedDocumentsScopePublic;
- (void)handlePathMatchConflictForDirectoryCreationIfNecessary;
- (void)markDirectoryMergeOrCrossZonePropagationComplete;
@end

@implementation BRCDirectoryItem(FPFSAdditions)

- (void)_signalPropagationToChildrenForce:()FPFSAdditions .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 diffAgainstOriginalItem];
  v5 = BRCItemFieldsPrettyPrint();
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, a3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We seem to be in a lost scan loop.  Breaking the chain (diffs %@)%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)documentsDirectoryUpdatedDocumentsScopePublic
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't update document scope public when we aren't the documents folder %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)markRemovedFromFilesystemRecursively:()FPFSAdditions .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 16) changeState];
  v6 = [v5 changeToken];
  v7 = [v6 descriptionWithContext:0];
  OUTLINED_FUNCTION_1_0();
  v10 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Setting deletion change token to %@ because item contains a dir faults%@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)markDirectoryMergeOrCrossZonePropagationComplete
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [zombieItem isLost]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)handlePathMatchConflictForDirectoryCreationIfNecessary
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Found item eligible to revive for path-match conflict %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateFromServerItem:()FPFSAdditions .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Server item is a directory fault so now our local item is a directory fault for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)mergeContentsIntoDirectory:()FPFSAdditions .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't merge into a folder which is already accepting a merge %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_insertZombieForCrossZoneMove
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end