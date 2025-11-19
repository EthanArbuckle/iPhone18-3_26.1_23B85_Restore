@interface WKWebpagePreferences(SafariSharedUIExtras)
- (uint64_t)safari_setAdvancedPrivacyProtectionsEnabled:()SafariSharedUIExtras privateBrowsing:;
@end

@implementation WKWebpagePreferences(SafariSharedUIExtras)

- (uint64_t)safari_setAdvancedPrivacyProtectionsEnabled:()SafariSharedUIExtras privateBrowsing:
{
  v4 = 321;
  if (a4)
  {
    v4 = 449;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return [a1 _setNetworkConnectionIntegrityPolicy:v5];
}

@end