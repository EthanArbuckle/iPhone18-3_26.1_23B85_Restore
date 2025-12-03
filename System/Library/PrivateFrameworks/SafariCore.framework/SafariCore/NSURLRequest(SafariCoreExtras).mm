@interface NSURLRequest(SafariCoreExtras)
+ (id)safari_nonAppInitiatedRequestWithURL:()SafariCoreExtras;
- (id)safari_requestBySettingIsUserInitiated:()SafariCoreExtras;
- (void)safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:()SafariCoreExtras;
@end

@implementation NSURLRequest(SafariCoreExtras)

+ (id)safari_nonAppInitiatedRequestWithURL:()SafariCoreExtras
{
  v1 = [self requestWithURL:?];
  v2 = [v1 safari_requestBySettingIsUserInitiated:1];

  return v2;
}

- (id)safari_requestBySettingIsUserInitiated:()SafariCoreExtras
{
  if (([self attribution] != 1) == a3)
  {
    selfCopy = [self mutableCopy];
    [selfCopy setAttribution:a3];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:()SafariCoreExtras
{
  selfCopy = self;
  v5 = [self mutableCopy];
  if ([v5 _useEnhancedPrivacyMode] != a3)
  {
    [v5 _setUseEnhancedPrivacyMode:a3];
    selfCopy = v5;
  }

  v6 = selfCopy;

  return selfCopy;
}

@end