@interface FBProcess(SBHelpers)
- (id)sb_bundleIdentifierWithFallback;
- (uint64_t)sb_isProbablyUIApplication;
@end

@implementation FBProcess(SBHelpers)

- (id)sb_bundleIdentifierWithFallback
{
  bundleIdentifier = [self bundleIdentifier];
  v3 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier2 = bundleIdentifier;
  }

  else
  {
    handle = [self handle];
    bundleIdentifier2 = [handle bundleIdentifier];
  }

  return bundleIdentifier2;
}

- (uint64_t)sb_isProbablyUIApplication
{
  if ([self isApplicationProcess])
  {
    return 1;
  }

  sb_bundleIdentifierWithFallback = [self sb_bundleIdentifierWithFallback];
  v4 = _SBApp(sb_bundleIdentifierWithFallback);
  v2 = v4 != 0;

  return v2;
}

@end