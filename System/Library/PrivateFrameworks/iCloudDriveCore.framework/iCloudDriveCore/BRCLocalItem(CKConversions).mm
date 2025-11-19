@interface BRCLocalItem(CKConversions)
- (void)baseStructureRecord;
- (void)sideCarRecordID;
- (void)structureRecordID;
@end

@implementation BRCLocalItem(CKConversions)

- (void)baseStructureRecord
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't get the structure record of a shared-top-level document without the zone of the alias record%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)structureRecordBeingDeadInServerTruth:()CKConversions stageID:shouldPCSChainStatus:saltGetter:childBasehashSaltGetter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sideCarRecordID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked for side car recordID on an item that doesn't have side cars%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)structureRecordID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't get the structure record without a zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end