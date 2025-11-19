@interface WBSLPLinkMetadataCache
- (BOOL)_isUsingInMemoryDatabase;
@end

@implementation WBSLPLinkMetadataCache

- (BOOL)_isUsingInMemoryDatabase
{
  v2 = [(WBSSQLiteStore *)self->_metadataDatabase databaseURL];
  v3 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __134__WBSLPLinkMetadataCache__setMetadata_forURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_existingInfo_completionHandler___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 64);
  v3 = a2;
  v4 = [v2 path];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Skipping LP metadata disk cache write despite successful fetch due to failed UUID write to database at %{public}@", v7, v8, v9, v10, 2u);
}

void __134__WBSLPLinkMetadataCache__setMetadata_forURLString_lastFetchDate_lastFetchDidSucceed_metadataHasImage_existingInfo_completionHandler___block_invoke_3_cold_2(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 64);
  v3 = a2;
  v4 = [v2 path];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Skipping LP metadata disk cache write due to failed database write at %{public}@", v7, v8, v9, v10, 2u);
}

- (void)sqliteStoreDidFailDatabaseIntegrityCheck:(void *)a3 completionHandler:.cold.1(void **a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = [v4 path];
  v7 = [a3 safari_privacyPreservingDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1C6968000, v5, OS_LOG_TYPE_ERROR, "Failed to remove corrupted database at %{public}@, error: %{public}@", &v8, 0x16u);
}

@end