@interface NSURLRequest(SafariCoreExtras)
+ (id)safari_nonAppInitiatedRequestWithURL:()SafariCoreExtras;
- (id)safari_requestBySettingIsUserInitiated:()SafariCoreExtras;
- (void)safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:()SafariCoreExtras;
@end

@implementation NSURLRequest(SafariCoreExtras)

+ (id)safari_nonAppInitiatedRequestWithURL:()SafariCoreExtras
{
  v1 = [a1 requestWithURL:?];
  v2 = [v1 safari_requestBySettingIsUserInitiated:1];

  return v2;
}

- (id)safari_requestBySettingIsUserInitiated:()SafariCoreExtras
{
  if (([a1 attribution] != 1) == a3)
  {
    v5 = [a1 mutableCopy];
    [v5 setAttribution:a3];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (void)safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:()SafariCoreExtras
{
  v4 = a1;
  v5 = [a1 mutableCopy];
  if ([v5 _useEnhancedPrivacyMode] != a3)
  {
    [v5 _setUseEnhancedPrivacyMode:a3];
    v4 = v5;
  }

  v6 = v4;

  return v4;
}

@end