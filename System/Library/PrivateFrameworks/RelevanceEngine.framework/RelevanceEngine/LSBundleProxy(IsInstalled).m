@interface LSBundleProxy(IsInstalled)
- (uint64_t)_isInstalled;
@end

@implementation LSBundleProxy(IsInstalled)

- (uint64_t)_isInstalled
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [a1 bundleURL];
  v4 = [v2 initWithURL:v3 allowPlaceholder:1 error:0];

  v5 = [v4 applicationState];
  v6 = [v5 isInstalled];

  return v6;
}

@end