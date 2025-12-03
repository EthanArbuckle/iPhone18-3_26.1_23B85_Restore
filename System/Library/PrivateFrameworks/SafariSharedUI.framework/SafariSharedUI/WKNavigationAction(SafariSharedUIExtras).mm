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
    navigationType = [self navigationType];
    v5 = 0x2Fu >> (navigationType + 1);
    if ((navigationType + 1) > 5)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)safari_isNewWindowNavigationActionSpecifiedByAnchorTargetAttribute
{
  targetFrame = [self targetFrame];
  v2 = targetFrame == 0;

  return v2;
}

- (uint64_t)safari_shouldProhibitNavigationToSafariSpecificURL
{
  request = [self request];
  v3 = [request URL];

  if ([v3 safari_isSafariSpecificURL])
  {
    if ([self safari_isNewWindowNavigationActionSpecifiedByAnchorTargetAttribute])
    {
      [self sourceFrame];
    }

    else
    {
      [self targetFrame];
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