@interface _UIStatusBarVisualProvider_Phone
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (_UIStatusBarVisualProvider_Phone)init;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)willUpdateWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
@end

@implementation _UIStatusBarVisualProvider_Phone

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v4 = a3;
  v5 = [v4 _exclusionArea];
  if (objc_opt_respondsToSelector())
  {
    [v5 rect];
LABEL_6:
    v7 = objc_opt_class();
    v8 = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v7, v4, 0);
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

    v4 = [(_UIStatusBarVisualProvider_Phone *)v2 pillRegionCoordinator];
    [v4 setVisualProvider:v2];
  }

  return v2;
}

- (id)willUpdateWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarVisualProvider_Phone;
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_iOS *)&v8 willUpdateWithData:v4];
  v6 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator:v8.receiver];
  [v6 updateDataForBackgroundActivity:v4];

  return v5;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v11 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

    if (v9 != v6)
    {
      v14.receiver = self;
      v14.super_class = _UIStatusBarVisualProvider_Phone;
      v10 = [(_UIStatusBarVisualProvider_iOS *)&v14 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
      goto LABEL_7;
    }

    v11 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityPill];
  }

  v10 = v12;

LABEL_7:

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v11 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

    if (v9 != v6)
    {
      v14.receiver = self;
      v14.super_class = _UIStatusBarVisualProvider_Phone;
      v10 = [(_UIStatusBarVisualProvider_iOS *)&v14 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
      goto LABEL_7;
    }

    v11 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityPill];
  }

  v10 = v12;

LABEL_7:

  return v10;
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v10 = [v9 handledUpdateOfActionable:v8 highlighted:v6 initialPress:v5];

  if ((v10 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = _UIStatusBarVisualProvider_Phone;
    [(_UIStatusBarVisualProvider_iOS *)&v11 actionable:v8 highlighted:v6 initialPress:v5];
  }
}

@end