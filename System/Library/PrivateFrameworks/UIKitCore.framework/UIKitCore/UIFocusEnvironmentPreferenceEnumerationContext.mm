@interface UIFocusEnvironmentPreferenceEnumerationContext
@end

@implementation UIFocusEnvironmentPreferenceEnumerationContext

void __92___UIFocusEnvironmentPreferenceEnumerationContext_initWithFocusEnvironment_enumerationMode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 allowsWeakReference])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = _UIFocusEnvironmentEffectivePreferredFocusEnvironments(v6, 0);
    [*(a1 + 32) setObject:v9 forKey:v6];
    if ([v9 count] > 1 || (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v6))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Trying to enumerate a focus hierarchy with a focus environment that is in the process of deallocating. This should never happen.", buf, 2u);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_7) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Trying to enumerate a focus hierarchy with a focus environment that is in the process of deallocating. This should never happen.", v13, 2u);
      }
    }

    *a3 = 1;
  }
}

@end