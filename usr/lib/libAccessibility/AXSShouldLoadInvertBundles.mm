@interface AXSShouldLoadInvertBundles
@end

@implementation AXSShouldLoadInvertBundles

void ___AXSShouldLoadInvertBundles_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (_AXSProcessLoadsInvertBundlesForPerAppSmartInvert())
  {
    if (_AXSProcessIsSpringBoard_onceToken != -1)
    {
      ___AXSShouldLoadInvertBundles_block_invoke_cold_1();
    }

    if ((_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard & 1) == 0)
    {
      v0 = CFPreferencesCopyValue(@"AXSSystemUIProcessAppSmartInvertEnabledPreference", kAXSAccessibilityPreferenceDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _kAXSystemUIProcessShouldLoadInvertBundles = [v0 BOOLValue];
      }

      v1 = AXLogInvertColorsLoadBundles();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v2 = [MEMORY[0x1E696AD98] numberWithBool:_kAXSystemUIProcessShouldLoadInvertBundles];
        v4 = 138412290;
        v5 = v2;
        _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "SystemUIProcessShouldLoadInvertBundles: %@", &v4, 0xCu);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end