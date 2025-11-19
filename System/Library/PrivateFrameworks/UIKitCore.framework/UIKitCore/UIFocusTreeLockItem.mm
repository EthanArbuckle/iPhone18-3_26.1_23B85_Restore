@interface UIFocusTreeLockItem
@end

@implementation UIFocusTreeLockItem

uint64_t __63___UIFocusTreeLockItem_initWithEnvironment_finalUnlockHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 64))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v9 = *(*(a1 + 32) + 56);
        Current = CFAbsoluteTimeGetCurrent();
        v11 = *(a1 + 32);
        v12 = Current - *(v11 + 72);
        v13 = 138412802;
        v14 = v9;
        v15 = 2048;
        v16 = v12;
        v17 = 2112;
        v18 = v11;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Locked environment %@ was deallocated after being locked for %.2f seconds. This should never happen. Additional info:\n%@", &v13, 0x20u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_FocusTreeLockVerboseLogging_block_invoke___s_category) + 8);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        return [*(a1 + 32) _cleanup:1];
      }

      v4 = *(*(a1 + 32) + 56);
      v5 = v3;
      v6 = CFAbsoluteTimeGetCurrent();
      v7 = *(a1 + 32);
      v8 = v6 - *(v7 + 72);
      v13 = 138412802;
      v14 = v4;
      v15 = 2048;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Locked environment %@ was deallocated after being locked for %.2f seconds. This should never happen. Additional info:\n%@", &v13, 0x20u);
    }
  }

  return [*(a1 + 32) _cleanup:1];
}

@end