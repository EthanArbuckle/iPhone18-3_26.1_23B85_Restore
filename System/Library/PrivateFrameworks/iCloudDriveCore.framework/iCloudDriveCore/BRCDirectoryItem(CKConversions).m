@interface BRCDirectoryItem(CKConversions)
- (void)folderRootStructureRecord;
@end

@implementation BRCDirectoryItem(CKConversions)

- (void)folderRootStructureRecord
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asked for folder root structure record on a non-folder%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end