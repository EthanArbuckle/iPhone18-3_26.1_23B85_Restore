@interface NSString(AppBundleID)
- (__CFString)sb_filteredFirstPartyAppBundleID;
@end

@implementation NSString(AppBundleID)

- (__CFString)sb_filteredFirstPartyAppBundleID
{
  if ([self hasPrefix:@"com.apple."])
  {
    v2 = [self copy];
  }

  else
  {
    v2 = @"third-party-app";
  }

  return v2;
}

@end