@interface NSBundle(TelephonyUtilities)
+ (id)tu_assumedIdentityForBundleIdentifier:()TelephonyUtilities;
- (id)tu_assumedIdentity;
@end

@implementation NSBundle(TelephonyUtilities)

- (id)tu_assumedIdentity
{
  bundleIdentifier = [self bundleIdentifier];
  if ([bundleIdentifier length])
  {
    v2 = [objc_opt_class() tu_assumedIdentityForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)tu_assumedIdentityForBundleIdentifier:()TelephonyUtilities
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 isEqualToString:@"com.apple.TelephonyUtilities"])
    {
      uTF8String = "/System/Library/PrivateFrameworks/TelephonyUtilities.framework/callservicesd";
      v5 = 1;
    }

    else
    {
      uTF8String = [v3 UTF8String];
      v5 = 0;
    }

    v6 = tu_tcc_identity_create(v5, uTF8String);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end