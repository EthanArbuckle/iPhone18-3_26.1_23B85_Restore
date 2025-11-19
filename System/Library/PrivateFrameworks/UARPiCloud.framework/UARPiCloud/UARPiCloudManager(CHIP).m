@interface UARPiCloudManager(CHIP)
- (void)performRemoteFetchForCHIPVerificationCertificateSync;
@end

@implementation UARPiCloudManager(CHIP)

- (void)handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:()CHIP productGroup:batchRequest:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  v3 = @"chipAccessories";
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for fetchRecordZoneChangesCompletionBlock callback for zone=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteFetchRequestSyncForCHIPAttestationCertificates:()CHIP subjectKeyIdentifier:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  v3 = @"chipAttestationCertificates";
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for fetchRecordZoneChangesCompletionBlock callback for zone=%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)performRemoteFetchForCHIPVerificationCertificateSync
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_2701F5000, v3, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for CHIPVerificationCertificate callback for zone=%@, record=%@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.1(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 recordID];
  v4 = [v3 recordName];
  v5 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v8 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v8 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processCHIPAccessoriesRecord:()CHIP .cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v8 = [v1 recordName];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processCHIPAttestationCertificateRecord:()CHIP subjectKeyIdentifier:.cold.1(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 ckRecord];
  v4 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)validateCHIPFirmwareRecord:()CHIP inContainer:forAccessory:.cold.1(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 ckRecord];
  v4 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end