@interface INImage
@end

@implementation INImage

void __73__INImage_Workflow__wf_transformUsingCodableAttribute_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[INImage(Workflow) wf_transformUsingCodableAttribute:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to retrieve INImage data with error: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

@end