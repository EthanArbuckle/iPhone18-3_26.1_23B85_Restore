@interface REMMutableCRMergeableStringDocument(Hashtags)
@end

@implementation REMMutableCRMergeableStringDocument(Hashtags)

- (void)addHashtag:()Hashtags range:.cold.1(void *a1, NSUInteger a2, NSUInteger a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 replicaIDSource];
  v14.location = a2;
  v14.length = a3;
  v12 = NSStringFromRange(v14);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

@end