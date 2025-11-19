@interface NCModeConfigurationRemoteSuggestionContentProvider(Testing)
@end

@implementation NCModeConfigurationRemoteSuggestionContentProvider(Testing)

+ (void)_localizedSummaryStringForSuggestionType:()Testing configurationType:scope:semanticType:modeName:bundleDisplayName:preferredSenderSummary:localizedStringForKeyBlock:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInteger:a2];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  OUTLINED_FUNCTION_0_5();
  _os_log_fault_impl(&dword_21E77E000, v6, OS_LOG_TYPE_FAULT, "Received unexpected notification management removal suggestion for mode configuration with configuration type %@ for scope %@", v9, 0x16u);
}

+ (void)_localizedSummaryStringForSuggestionType:()Testing configurationType:scope:semanticType:modeName:bundleDisplayName:preferredSenderSummary:localizedStringForKeyBlock:.cold.2(void *a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_2_1(a1);
  v6 = [v2 numberWithUnsignedInteger:2];
  v7 = [*(v3 + 2992) numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_21E77E000, v8, v9, "Received unexpected notification management suggestion for mode configuration with configuration type %@ for scope %@", v10, v11, v12, v13, v14);
}

+ (void)_localizedSummaryStringForSuggestionType:()Testing configurationType:scope:semanticType:modeName:bundleDisplayName:preferredSenderSummary:localizedStringForKeyBlock:.cold.3(void *a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_2_1(a1);
  v6 = [v2 numberWithUnsignedInteger:a2];
  v13 = [*(v3 + 2992) numberWithUnsignedInteger:1];
  OUTLINED_FUNCTION_4(&dword_21E77E000, v7, v8, "Received unexpected notification management thread suggestion for mode configuration with configuration type %@ for scope %@", v9, v10, v11, v12, 2u);
}

+ (void)_localizedSummaryStringForSuggestionType:()Testing configurationType:scope:semanticType:modeName:bundleDisplayName:preferredSenderSummary:localizedStringForKeyBlock:.cold.4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 description];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_21E77E000, v6, v7, "Ignoring invalid summary format: %{public}@: %@", v8, v9, v10, v11, v12);
}

@end