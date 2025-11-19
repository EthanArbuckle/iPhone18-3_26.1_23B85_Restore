@interface WBSTranslationContext
- (void)_startProgressForExtractingContent;
@end

@implementation WBSTranslationContext

void __88__WBSTranslationContext_setWebpageLocaleWithExtractedTextSamples_url_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218243;
  *&v3[4] = a2;
  *&v3[12] = 2117;
  *&v3[14] = *(a1 + 48);
  OUTLINED_FUNCTION_4(&dword_1C6968000, a2, a3, "Ignoring text samples of count %lu. URL: %{sensitive}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __66__WBSTranslationContext_requestSendFeedbackWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_3();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  _os_log_error_impl(&dword_1C6968000, v1, OS_LOG_TYPE_ERROR, "Delegate <%{public}@> does not implement selector -translationContext:showFeedbackConsentAlertWithCompletionHandler:, so we can't send feedback", v5, 0xCu);
}

void __72__WBSTranslationContext_contentFiller_didCompleteFillingItem_withError___block_invoke_2_cold_1(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 safari_privacyPreservingDescription];
  v7 = [*(a3 + 48) safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(&dword_1C6968000, v8, v9, "Failed to fill translated content into webpage with error: %{public}@; content: %{public}@", v10, v11, v12, v13, v14);
}

void __72__WBSTranslationContext_contentFiller_didCompleteFillingItem_withError___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C6968000, v2, OS_LOG_TYPE_DEBUG, "Successfully filled translated item: %{public}@", v5, 0xCu);
}

- (void)errorController:(uint8_t *)buf didReachThresholdForError:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C6968000, log, OS_LOG_TYPE_FAULT, "Reached error threshold but can't show user an error message because delegate '%{public}@' doesn't respond to the selector. Error: %{public}@", buf, 0x16u);
}

- (void)_promptIfNeededToConsentToTranslationWithCompletionHandler:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_fault_impl(&dword_1C6968000, a3, OS_LOG_TYPE_FAULT, "Delegate <%{public}@> does not implement selector -translationContext:showFirstTimeConsentAlertWithCompletionHandler:, so we can't perform translation", a2, 0xCu);
}

- (void)_generateJSONVersionOfContent:(void *)a1 forPurpose:(void *)a2 completionHandler:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(&dword_1C6968000, v5, v6, "Failed to generate JSON version of extracted paragraphs with count %lu and with error %{public}@", v7, v8, v9, v10, v11);
}

- (void)_generateJSONVersionOfErrors:(void *)a1 completionHandler:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  v4 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(&dword_1C6968000, v5, v6, "Failed to generate JSON version of errors with count %lu and with error %{public}@", v7, v8, v9, v10, v11);
}

- (void)_startProgressForExtractingContent
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C6968000, v0, OS_LOG_TYPE_DEBUG, "Progress for %{public}@: Starting progress for extracting content", v1, 0xCu);
}

void __69__WBSTranslationContext__updateProgressWithTranslatedParagraphCount___block_invoke_109_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Progress for %{public}@: Finished translating initial content, animating progress bar completion", &v3, 0xCu);
}

@end