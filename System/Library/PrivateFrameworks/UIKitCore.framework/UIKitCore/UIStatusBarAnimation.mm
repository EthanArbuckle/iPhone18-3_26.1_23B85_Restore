@interface UIStatusBarAnimation
@end

@implementation UIStatusBarAnimation

void __56___UIStatusBarAnimation_prepareAnimations_forStatusBar___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  while ([v4 count])
  {
    v5 = [v6 anyObject];
    [v5 _prepareForStatusBar:a1[4] preparingAnimations:a1[5] exclusiveAnimations:a1[6]];

    v4 = v6;
  }
}

void __45___UIStatusBarAnimation_performForStatusBar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 priority];
  if (v7 <= [*(a1 + 32) priority])
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  else
  {
    [v8 performForStatusBar:*(a1 + 40)];
  }
}

void __45___UIStatusBarAnimation_performForStatusBar___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    [_statusBarRunningAnimations removeObject:*(a1 + 32)];
    v3 = *(a1 + 32);
    if (*(v3 + 10) == 1)
    {
      *(v3 + 10) = 0;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = *(*(a1 + 32) + 120);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            (*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i));
          }

          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

uint64_t __45___UIStatusBarAnimation_performForStatusBar___block_invoke_3(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Status bar animation took longer than expected and was ended early.", buf, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &_statusBarRunningAnimations_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Status bar animation took longer than expected and was ended early.", v5, 2u);
      }
    }

    v3 = *(*(v1 + 32) + 112);
    if (v3)
    {
      (*(v3 + 16))();
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

@end