@interface NSAttributedString
@end

@implementation NSAttributedString

void __108__NSAttributedString_REMCRMergeableStringDocument_Hashtags__rem_enumerateHashtagInRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  if (v9)
  {
    v10 = [REMTTHashtag alloc];
    v11 = [v9 objectIdentifier];
    v12 = [(REMTTHashtag *)v10 initWithObjectIdentifier:v11];
  }

  else
  {
    if (v7)
    {
      v13 = +[REMLog crdt];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14.location = a3;
        v14.length = a4;
        __108__NSAttributedString_REMCRMergeableStringDocument_Hashtags__rem_enumerateHashtagInRange_options_usingBlock___block_invoke_cold_1(v7, v14);
      }
    }

    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __108__NSAttributedString_REMCRMergeableStringDocument_Hashtags__rem_enumerateHashtagInRange_options_usingBlock___block_invoke_cold_1(int a1, NSRange range)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromRange(range);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end