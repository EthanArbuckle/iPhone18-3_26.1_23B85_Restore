@interface WBSParsecDictionarySchema
@end

@implementation WBSParsecDictionarySchema

void __93___WBSParsecDictionarySchema__validateChild_ofParent_withParentAssociatedError_errorHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];
  v9 = [v7 _validateChild:v8 ofParent:a1[4] withParentAssociatedError:a1[5] errorHandler:a1[6]];

  if ((v9 & 1) == 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __93___WBSParsecDictionarySchema__validateChild_ofParent_withParentAssociatedError_errorHandler___block_invoke_cold_1(v5, a1 + 4, v10);
    }

    *(*(a1[7] + 8) + 24) = 0;
  }
}

void __93___WBSParsecDictionarySchema__validateChild_ofParent_withParentAssociatedError_errorHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_22(&dword_1BB6F3000, a2, a3, "Dictionary schema validation failed for key %{public}@ of dictionary %p", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end