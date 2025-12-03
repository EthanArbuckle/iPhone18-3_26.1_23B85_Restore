@interface SBApplication(DefaultImage_ManifestIngestion)
- (void)_resetLaunchImageIngestionStatus;
@end

@implementation SBApplication(DefaultImage_ManifestIngestion)

- (void)_resetLaunchImageIngestionStatus
{
  bundleIdentifier = [self bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "[.png ingestor] [%{public}@] Resetting ingestion status.", v4, v5, v6, v7, v8);
}

- (void)_ingestDefaultPNGsInManifest:()DefaultImage_ManifestIngestion withLaunchImageBaseName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication+DefaultImage.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"launchImageBaseName != nil"}];
}

- (void)_ingestDefaultPNGsInManifest:()DefaultImage_ManifestIngestion withLaunchImageBaseName:.cold.2(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "[legacy ingest] [%{public}@] Found no candidate PNGs...", v4, v5, v6, v7, v8);
}

- (void)_ingestInfoPlistImagesInManifest:()DefaultImage_ManifestIngestion .cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "[.plist ingest] [%{public}@] Found no candidate plist entries...", v4, v5, v6, v7, v8);
}

@end