@interface UIFocusMapSnapshot
@end

@implementation UIFocusMapSnapshot

void __45___UIFocusMapSnapshot_addRegionsInContainer___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("UIFocus", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_8) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@.\nSuppressing subsequent logging of this error.", &v4, 0xCu);
  }
}

@end