@interface PSMediaAnalysisProcessingTask
@end

@implementation PSMediaAnalysisProcessingTask

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging mediaAnalysisChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_239(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[_PSLogging mediaAnalysisChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) uuid];
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "%{BOOL}d, updated interaction %@ for media analysis", v7, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *MEMORY[0x1E69E9840];
}

void __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "XPC Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end