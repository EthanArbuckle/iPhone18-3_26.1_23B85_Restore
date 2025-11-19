@interface UIDisplayObserver
@end

@implementation UIDisplayObserver

void __36___UIDisplayObserver_sharedObserver__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1119;
  _MergedGlobals_1119 = v1;
}

void __74___UIDisplayObserver_displayMonitor_didConnectIdentity_withConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) pendingCarDisplays];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    if (a2)
    {
      [*(a1 + 32) connectDisplayWithConfiguration:v5];
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("DisplayObserver", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_10) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = *(a1 + 40);
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Timed out waiting for CarPlay session with display: %{public}@", &v9, 0xCu);
      }
    }
  }

  v8 = [*(a1 + 32) pendingCarDisplays];
  [v8 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

@end