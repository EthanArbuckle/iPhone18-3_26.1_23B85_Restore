@interface UIFenceTask
@end

@implementation UIFenceTask

void __20___UIFenceTask_init__block_invoke(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0 && os_variant_has_internal_diagnostics())
  {
    v3 = *(__UILogGetCategoryCachedImpl("Fence", &_block_invoke___s_category_10) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "_UIFenceTask:%llu failed to acquire underlying assertion", &v5, 0xCu);
    }
  }
}

@end