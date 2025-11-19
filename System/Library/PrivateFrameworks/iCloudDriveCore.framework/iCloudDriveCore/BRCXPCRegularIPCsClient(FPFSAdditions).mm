@interface BRCXPCRegularIPCsClient(FPFSAdditions)
@end

@implementation BRCXPCRegularIPCsClient(FPFSAdditions)

- (void)accessItemIdentifier:()FPFSAdditions dbAccessKind:synchronouslyIfPossible:LocalItemHandler:ServerItemHandler:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: (localItemHandler || serverItemHandler) && !(localItemHandler && serverItemHandler)%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeFPFSDomain:()FPFSAdditions .cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Got an error while looking for the domain: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeFPFSDomain:()FPFSAdditions .cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Didn't find any FPFS domain to remove for persona = %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createItemBasedOnTemplate:()FPFSAdditions fields:contents:options:additionalItemAttributes:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to parse bookmark data on %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)createItemBasedOnTemplate:()FPFSAdditions fields:contents:options:additionalItemAttributes:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: urlWrapper == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createFileProvidingRequestOperationOfFileObject:()FPFSAdditions existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] We asked FP to reingest item %@, but we still don't have the fileID to upload%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createFileProvidingRequestOperationOfFileObject:()FPFSAdditions existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Item %@ is waiting for re-apply from the server truth%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createFileProvidingRequestOperationOfFileObject:()FPFSAdditions existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Got a nil etag for %@ - returning an error to FP%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createFileProvidingRequestOperationOfFileObject:()FPFSAdditions existingContents:localItem:etagIfLoser:etagToDownload:progress:options:reply:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Priming MMCS cache before download for %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reimportItemIdentifier:()FPFSAdditions reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Starting BRCXPCClient(FPFS)::reimport%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateConnectionDomainWithDomainIdentifier:()FPFSAdditions databaseID:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Extension is using a valid domain ID and database ID, we are open for business...%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end