@interface WebBookmark(Internal)
@end

@implementation WebBookmark(Internal)

- (void)initWithSQLiteStatement:()Internal deviceIdentifier:hasIcon:collectionType:skipDecodingSyncData:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v5, v6, "Error reading bookmark extra attributes: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithSQLiteStatement:()Internal deviceIdentifier:hasIcon:collectionType:skipDecodingSyncData:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v5, v6, "Error reading bookmark local attributes: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setID:()Internal .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Setting bookmark identifier to its parent identifier %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end