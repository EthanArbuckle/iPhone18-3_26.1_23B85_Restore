@interface WFAutoShortcutContextualAction(WFCSSearchableItemConvertible)
- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible;
@end

@implementation WFAutoShortcutContextualAction(WFCSSearchableItemConvertible)

- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  spotlightItem = [self spotlightItem];
  if ([self isTopHitEligible])
  {
    attributeSet = [spotlightItem attributeSet];
    phrase = [self phrase];
    signature = [phrase signature];
    bundleIdentifier = [self bundleIdentifier];
    associatedAppBundleIdentifier = [self associatedAppBundleIdentifier];
    if (associatedAppBundleIdentifier)
    {
      [attributeSet setAppShortcutDisplayRepresentationForPhraseSignature:signature bundleIdentifier:bundleIdentifier associatedAppBundleIdentifier:associatedAppBundleIdentifier];
    }

    else
    {
      bundleIdentifier2 = [self bundleIdentifier];
      [attributeSet setAppShortcutDisplayRepresentationForPhraseSignature:signature bundleIdentifier:bundleIdentifier associatedAppBundleIdentifier:bundleIdentifier2];
    }

    attributeSet2 = [spotlightItem attributeSet];
    [attributeSet2 associateWithAppEntityForContextualAction:self];
  }

  v13[2](v13, spotlightItem, 0);

  objc_autoreleasePoolPop(v4);
}

@end