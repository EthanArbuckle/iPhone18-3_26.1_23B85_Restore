@interface LSBundleProxy(IsInstalled)
- (uint64_t)_isInstalled;
@end

@implementation LSBundleProxy(IsInstalled)

- (uint64_t)_isInstalled
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleURL = [self bundleURL];
  v4 = [v2 initWithURL:bundleURL allowPlaceholder:1 error:0];

  applicationState = [v4 applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
}

@end