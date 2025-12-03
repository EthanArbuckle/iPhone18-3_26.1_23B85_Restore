@interface _UIStatusBarVisualProvider_Phone
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (_UIStatusBarVisualProvider_Phone)init;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)willUpdateWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
@end

@implementation _UIStatusBarVisualProvider_Phone

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  _exclusionArea = [screenCopy _exclusionArea];
  if (objc_opt_respondsToSelector())
  {
    [_exclusionArea rect];
LABEL_6:
    v7 = objc_opt_class();
    v8 = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v7, screenCopy, 0);
    goto LABEL_7;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_6;
  }

  v11 = _UIInternalPreference_LegacyPhonesStatusBarUsesiPadLayout;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_LegacyPhonesStatusBarUsesiPadLayout)
  {
    goto LABEL_6;
  }

  while (v6 >= v11)
  {
    _UIInternalPreferenceSync(v6, &_UIInternalPreference_LegacyPhonesStatusBarUsesiPadLayout, @"LegacyPhonesStatusBarUsesiPadLayout", _UIInternalPreferenceUpdateBool);
    v11 = _UIInternalPreference_LegacyPhonesStatusBarUsesiPadLayout;
    if (v6 == _UIInternalPreference_LegacyPhonesStatusBarUsesiPadLayout)
    {
      goto LABEL_6;
    }
  }

  if (!byte_1EA95E6AC)
  {
    goto LABEL_6;
  }

  v8 = objc_opt_class();
LABEL_7:
  v9 = v8;

  return v9;
}

- (_UIStatusBarVisualProvider_Phone)init
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarVisualProvider_Phone;
  v2 = [(_UIStatusBarVisualProvider_iOS *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(_UIStatusBarVisualProvider_Phone *)v2 setPillRegionCoordinator:v3];

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)v2 pillRegionCoordinator];
    [pillRegionCoordinator setVisualProvider:v2];
  }

  return v2;
}

- (id)willUpdateWithData:(id)data
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarVisualProvider_Phone;
  dataCopy = data;
  v5 = [(_UIStatusBarVisualProvider_iOS *)&v8 willUpdateWithData:dataCopy];
  v6 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator:v8.receiver];
  [v6 updateDataForBackgroundActivity:dataCopy];

  return v5;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

    if (v9 != identifierCopy)
    {
      v14.receiver = self;
      v14.super_class = _UIStatusBarVisualProvider_Phone;
      v10 = [(_UIStatusBarVisualProvider_iOS *)&v14 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
      goto LABEL_7;
    }

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
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
  v8 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    animationForBackgroundActivityIcon = [pillRegionCoordinator animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

    if (v9 != identifierCopy)
    {
      v14.receiver = self;
      v14.super_class = _UIStatusBarVisualProvider_Phone;
      v10 = [(_UIStatusBarVisualProvider_iOS *)&v14 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
      goto LABEL_7;
    }

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
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
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v10 = [pillRegionCoordinator handledUpdateOfActionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];

  if ((v10 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = _UIStatusBarVisualProvider_Phone;
    [(_UIStatusBarVisualProvider_iOS *)&v11 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
  }
}

@end