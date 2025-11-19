@interface BRCPackageItem(FPFSAdditions)
@end

@implementation BRCPackageItem(FPFSAdditions)

- (void)_initWithURL:()FPFSAdditions inPackage:forItem:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to get canonical path for pkg item in %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end