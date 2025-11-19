@interface FBProcess(SBHelpers)
- (id)sb_bundleIdentifierWithFallback;
- (uint64_t)sb_isProbablyUIApplication;
@end

@implementation FBProcess(SBHelpers)

- (id)sb_bundleIdentifierWithFallback
{
  v2 = [a1 bundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 handle];
    v4 = [v5 bundleIdentifier];
  }

  return v4;
}

- (uint64_t)sb_isProbablyUIApplication
{
  if ([a1 isApplicationProcess])
  {
    return 1;
  }

  v3 = [a1 sb_bundleIdentifierWithFallback];
  v4 = _SBApp(v3);
  v2 = v4 != 0;

  return v2;
}

@end