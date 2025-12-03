@interface NSBundle(UIAccessibilityLoader)
+ (id)_accessibilityBundleWithBundlePath:()UIAccessibilityLoader;
+ (id)accessibilityBundleWithLastPathComponent:()UIAccessibilityLoader;
+ (id)accessibilityInternalBundleWithLastPathComponent:()UIAccessibilityLoader;
+ (id)accessibilityLocalBundleWithLastPathComponent:()UIAccessibilityLoader;
+ (id)accessibilityMacCalystBundleWithLastPathComponent:()UIAccessibilityLoader;
- (id)accessibilityBundlePath;
- (void)_loadAXBundleForBundleOffMainThread;
@end

@implementation NSBundle(UIAccessibilityLoader)

+ (id)accessibilityLocalBundleWithLastPathComponent:()UIAccessibilityLoader
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  mainBundle = [v3 mainBundle];
  bundlePath = [mainBundle bundlePath];
  v7 = [bundlePath stringByAppendingPathComponent:@"AccessibilityBundles"];

  v8 = [v7 stringByAppendingPathComponent:v4];

  v9 = [MEMORY[0x1E696AAE8] bundleWithPath:v8];

  return v9;
}

+ (id)accessibilityInternalBundleWithLastPathComponent:()UIAccessibilityLoader
{
  v3 = a3;
  v4 = AXInternalAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:v5];
  [v6 _accessibilitySetValue:v5 forKey:@"accessibilityBundlePath" storageMode:1];

  return v6;
}

+ (id)_accessibilityBundleWithBundlePath:()UIAccessibilityLoader
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithPath:v4];
  [v5 _accessibilitySetValue:v4 forKey:@"accessibilityBundlePath" storageMode:1];

  return v5;
}

+ (id)accessibilityBundleWithLastPathComponent:()UIAccessibilityLoader
{
  v4 = a3;
  v5 = AXAccessibilityBundlesDirectory();
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [self _accessibilityBundleWithBundlePath:v6];

  return v7;
}

+ (id)accessibilityMacCalystBundleWithLastPathComponent:()UIAccessibilityLoader
{
  v4 = a3;
  v5 = AXAccessibilityMacCatalystBundlesDirectory();
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [self _accessibilityBundleWithBundlePath:v6];

  return v7;
}

- (id)accessibilityBundlePath
{
  bundlePath = [self _accessibilityValueForKey:@"accessibilityBundlePath"];
  if (![bundlePath length])
  {
    v3 = [self safeValueForKey:@"_resolvedPath"];

    if (v3)
    {
      bundlePath = v3;
    }

    else
    {
      bundlePath = [self bundlePath];
      if (!bundlePath)
      {
        goto LABEL_6;
      }
    }

    [self _accessibilitySetValue:bundlePath forKey:@"accessibilityBundlePath" storageMode:1];
  }

LABEL_6:

  return bundlePath;
}

- (void)_loadAXBundleForBundleOffMainThread
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [self safeValueForKey:@"accessibilityBundlePath"];
  v3 = v2;
  if (!v2 || [v2 rangeOfString:kUIAccessibilityBundleExtension] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = AXLogLoading();
    if (os_signpost_enabled(v4))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LoadingBundlePostLaunch", "%@", &v6, 0xCu);
    }

    v5 = AXLogLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, "Bundle is causing _loadAXBundleForBundle (expensive!): %@", &v6, 0xCu);
    }

    [UIAccessibilityLoader loadAccessibilityBundleForBundle:self didLoadCallback:&__block_literal_global_7];
  }
}

@end