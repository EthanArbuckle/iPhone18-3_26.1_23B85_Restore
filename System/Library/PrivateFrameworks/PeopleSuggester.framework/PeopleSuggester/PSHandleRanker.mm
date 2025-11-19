@interface PSHandleRanker
@end

@implementation PSHandleRanker

void __53___PSHandleRanker_rankedHandlesFromCandidateHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53___PSHandleRanker_rankedHandlesFromCandidateHandles___block_invoke_cold_1(v2, v3);
  }
}

void __53___PSHandleRanker_rankedHandlesFromCandidateHandles___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "XPC Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end