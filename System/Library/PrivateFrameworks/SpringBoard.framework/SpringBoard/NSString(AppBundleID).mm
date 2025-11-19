@interface NSString(AppBundleID)
- (__CFString)sb_filteredFirstPartyAppBundleID;
@end

@implementation NSString(AppBundleID)

- (__CFString)sb_filteredFirstPartyAppBundleID
{
  if ([a1 hasPrefix:@"com.apple."])
  {
    v2 = [a1 copy];
  }

  else
  {
    v2 = @"third-party-app";
  }

  return v2;
}

@end