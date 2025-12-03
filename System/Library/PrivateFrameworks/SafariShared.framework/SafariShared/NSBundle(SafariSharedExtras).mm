@interface NSBundle(SafariSharedExtras)
+ (id)safari_bundlesFromDirectory:()SafariSharedExtras bundleType:;
+ (id)safari_safariSharedBundle;
@end

@implementation NSBundle(SafariSharedExtras)

+ (id)safari_safariSharedBundle
{
  v2 = safari_safariSharedBundle_bundle;
  if (!safari_safariSharedBundle_bundle)
  {
    v3 = [self bundleForClass:objc_opt_class()];
    v4 = safari_safariSharedBundle_bundle;
    safari_safariSharedBundle_bundle = v3;

    v2 = safari_safariSharedBundle_bundle;
  }

  return v2;
}

+ (id)safari_bundlesFromDirectory:()SafariSharedExtras bundleType:
{
  v21 = *MEMORY[0x1E69E9840];
  BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(0, directoryURL, bundleType);
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](BundlesFromDirectory, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = BundlesFromDirectory;
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x1E696AAE8]);
        v13 = CFBundleCopyBundleURL(v11);
        v14 = [v12 initWithURL:{v13, v16}];
        [v5 addObject:v14];
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

@end