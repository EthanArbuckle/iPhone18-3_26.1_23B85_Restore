@interface NSBundle
@end

@implementation NSBundle

void __70__NSBundle_UIAccessibilityLoader___loadAXBundleForBundleOffMainThread__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || a2)
  {
    v5 = AXLogLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_DEBUG, "Main bundle: %{public}@", buf, 0xCu);
    }

    v12 = v4;
    v6 = [UIAccessibilityLoader _accessibilityBundlesForBundle:v4];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            _AXAssert();
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [UIAccessibilityLoader loadAccessibilityBundleForBundle:v11 didLoadCallback:0];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    AXPerformBlockAsynchronouslyOnMainThread();

    v4 = v12;
  }
}

void __70__NSBundle_UIAccessibilityLoader___loadAXBundleForBundleOffMainThread__block_invoke_2()
{
  v0 = +[UIAccessibilityInformationLoader sharedInstance];
  [v0 setNeedsLoadAccessibilityInformation];
}

@end