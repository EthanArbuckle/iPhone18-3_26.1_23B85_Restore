@interface FBExtensionProcess(SBHelpers)
- (id)sb_bundleIdentifierWithFallback;
@end

@implementation FBExtensionProcess(SBHelpers)

- (id)sb_bundleIdentifierWithFallback
{
  extensionInfo = [self extensionInfo];
  bundleIdentifier = [extensionInfo bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &off_28359CB80;
    v5 = objc_msgSendSuper2(&v8, sel_sb_bundleIdentifierWithFallback);
  }

  v6 = v5;

  return v6;
}

@end