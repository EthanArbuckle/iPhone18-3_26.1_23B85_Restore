@interface WKNavigationAction(SafariSharedUIExtras)
- (BOOL)safari_isNewWindowNavigationActionSpecifiedByAnchorTargetAttribute;
- (uint64_t)safari_isEligibleForContinuedTranslationWithPolicy:()SafariSharedUIExtras;
- (uint64_t)safari_shouldProhibitNavigationToSafariSpecificURL;
@end

@implementation WKNavigationAction(SafariSharedUIExtras)

- (uint64_t)safari_isEligibleForContinuedTranslationWithPolicy:()SafariSharedUIExtras
{
  LOBYTE(v5) = 0;
  if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
  {
    v6 = [a1 navigationType];
    v5 = 0x2Fu >> (v6 + 1);
    if ((v6 + 1) > 5)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)safari_isNewWindowNavigationActionSpecifiedByAnchorTargetAttribute
{
  v1 = [a1 targetFrame];
  v2 = v1 == 0;

  return v2;
}

- (uint64_t)safari_shouldProhibitNavigationToSafariSpecificURL
{
  v2 = [a1 request];
  v3 = [v2 URL];

  if ([v3 safari_isSafariSpecificURL])
  {
    if ([a1 safari_isNewWindowNavigationActionSpecifiedByAnchorTargetAttribute])
    {
      [a1 sourceFrame];
    }

    else
    {
      [a1 targetFrame];
    }
    v5 = ;
    v4 = [v5 isMainFrame] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end