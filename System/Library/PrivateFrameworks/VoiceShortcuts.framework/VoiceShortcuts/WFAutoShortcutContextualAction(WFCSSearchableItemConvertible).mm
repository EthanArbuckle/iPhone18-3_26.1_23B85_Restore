@interface WFAutoShortcutContextualAction(WFCSSearchableItemConvertible)
- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible;
@end

@implementation WFAutoShortcutContextualAction(WFCSSearchableItemConvertible)

- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 spotlightItem];
  if ([a1 isTopHitEligible])
  {
    v6 = [v5 attributeSet];
    v7 = [a1 phrase];
    v8 = [v7 signature];
    v9 = [a1 bundleIdentifier];
    v10 = [a1 associatedAppBundleIdentifier];
    if (v10)
    {
      [v6 setAppShortcutDisplayRepresentationForPhraseSignature:v8 bundleIdentifier:v9 associatedAppBundleIdentifier:v10];
    }

    else
    {
      v11 = [a1 bundleIdentifier];
      [v6 setAppShortcutDisplayRepresentationForPhraseSignature:v8 bundleIdentifier:v9 associatedAppBundleIdentifier:v11];
    }

    v12 = [v5 attributeSet];
    [v12 associateWithAppEntityForContextualAction:a1];
  }

  v13[2](v13, v5, 0);

  objc_autoreleasePoolPop(v4);
}

@end