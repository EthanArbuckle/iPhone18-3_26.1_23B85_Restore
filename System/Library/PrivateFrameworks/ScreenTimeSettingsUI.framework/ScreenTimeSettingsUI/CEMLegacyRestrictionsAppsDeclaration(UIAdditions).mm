@interface CEMLegacyRestrictionsAppsDeclaration(UIAdditions)
- (uint64_t)st_payloadAllowMail;
- (uint64_t)st_payloadAllowWallet;
- (void)setSt_payloadAllowMail:()UIAdditions;
- (void)setSt_payloadAllowWallet:()UIAdditions;
@end

@implementation CEMLegacyRestrictionsAppsDeclaration(UIAdditions)

- (uint64_t)st_payloadAllowMail
{
  v1 = [a1 payloadBlacklistedAppBundleIDs];
  v2 = [v1 containsObject:*MEMORY[0x277D4BC08]];

  return v2 ^ 1u;
}

- (void)setSt_payloadAllowMail:()UIAdditions
{
  v5 = [a1 payloadBlacklistedAppBundleIDs];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = v8;

  v9 = *MEMORY[0x277D4BC08];
  if (a3)
  {
    [v10 removeObject:v9];
  }

  else
  {
    [v10 addObject:v9];
  }

  [a1 setPayloadBlacklistedAppBundleIDs:v10];
}

- (uint64_t)st_payloadAllowWallet
{
  v1 = [a1 payloadBlacklistedAppBundleIDs];
  v2 = [v1 containsObject:*MEMORY[0x277D4BC58]];

  return v2 ^ 1u;
}

- (void)setSt_payloadAllowWallet:()UIAdditions
{
  v5 = [a1 payloadBlacklistedAppBundleIDs];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = v8;

  v9 = *MEMORY[0x277D4BC58];
  if (a3)
  {
    [v10 removeObject:v9];
  }

  else
  {
    [v10 addObject:v9];
  }

  [a1 setPayloadBlacklistedAppBundleIDs:v10];
}

@end