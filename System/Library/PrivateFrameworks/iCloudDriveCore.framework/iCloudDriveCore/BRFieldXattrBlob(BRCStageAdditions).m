@interface BRFieldXattrBlob(BRCStageAdditions)
@end

@implementation BRFieldXattrBlob(BRCStageAdditions)

+ (void)loadXattrsFromURL:()BRCStageAdditions structuralBlob:contentBlob:localBlob:withMaximumSize:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7 = [a1 path];
  v8 = [v7 fp_prettyPath];
  v10[0] = 67109634;
  v10[1] = v6;
  v11 = 2112;
  v12 = v8;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Failed with %d opening file at: %@%@", v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)loadXattrsFromFD:()BRCStageAdditions structuralBlob:contentBlob:localBlob:withMaximumSize:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: locBlobOut == NULL%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end