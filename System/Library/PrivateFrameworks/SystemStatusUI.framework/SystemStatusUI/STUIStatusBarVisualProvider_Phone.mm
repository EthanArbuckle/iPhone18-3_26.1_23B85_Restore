@interface STUIStatusBarVisualProvider_Phone
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (STUIStatusBarVisualProvider_Phone)init;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)willUpdateWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
@end

@implementation STUIStatusBarVisualProvider_Phone

- (STUIStatusBarVisualProvider_Phone)init
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_Phone;
  v2 = [(STUIStatusBarVisualProvider_iOS *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(STUIStatusBarVisualProvider_Phone *)v2 setPillRegionCoordinator:v3];

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)v2 pillRegionCoordinator];
    [pillRegionCoordinator setVisualProvider:v2];
  }

  return v2;
}

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  _exclusionArea = [screenCopy _exclusionArea];
  if (objc_opt_respondsToSelector())
  {
    [_exclusionArea rect];
  }

  else
  {
    v6 = +[STUIStatusBarSettingsDomain rootSettings];
    visualProviderSettings = [v6 visualProviderSettings];
    legacyPhoneUsesiPadLayout = [visualProviderSettings legacyPhoneUsesiPadLayout];

    if (legacyPhoneUsesiPadLayout)
    {
      v9 = objc_opt_class();
      goto LABEL_6;
    }
  }

  v10 = objc_opt_class();
  v9 = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v10, screenCopy, 0);
LABEL_6:
  v11 = v9;

  return v11;
}

- (id)willUpdateWithData:(id)data
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarVisualProvider_Phone;
  dataCopy = data;
  v5 = [(STUIStatusBarVisualProvider_iOS *)&v8 willUpdateWithData:dataCopy];
  v6 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator:v8.receiver];
  [v6 updateDataForBackgroundActivity:dataCopy];

  return v5;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

    if (v9 != identifierCopy)
    {
      v14.receiver = self;
      v14.super_class = STUIStatusBarVisualProvider_Phone;
      v10 = [(STUIStatusBarVisualProvider_iOS *)&v14 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
      goto LABEL_7;
    }

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityPill];
  }

  v10 = animationForBackgroundActivityIcon;

LABEL_7:

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

    if (v9 != identifierCopy)
    {
      v14.receiver = self;
      v14.super_class = STUIStatusBarVisualProvider_Phone;
      v10 = [(STUIStatusBarVisualProvider_iOS *)&v14 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
      goto LABEL_7;
    }

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityPill];
  }

  v10 = animationForBackgroundActivityIcon;

LABEL_7:

  return v10;
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  actionableCopy = actionable;
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v10 = [pillRegionCoordinator handledUpdateOfActionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];

  if ((v10 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = STUIStatusBarVisualProvider_Phone;
    [(STUIStatusBarVisualProvider_iOS *)&v11 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
  }
}

@end