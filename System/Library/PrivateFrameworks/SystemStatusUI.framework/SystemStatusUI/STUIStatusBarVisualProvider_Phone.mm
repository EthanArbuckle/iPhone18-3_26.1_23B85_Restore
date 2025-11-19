@interface STUIStatusBarVisualProvider_Phone
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (STUIStatusBarVisualProvider_Phone)init;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)willUpdateWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
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

    v4 = [(STUIStatusBarVisualProvider_Phone *)v2 pillRegionCoordinator];
    [v4 setVisualProvider:v2];
  }

  return v2;
}

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v4 = a3;
  v5 = [v4 _exclusionArea];
  if (objc_opt_respondsToSelector())
  {
    [v5 rect];
  }

  else
  {
    v6 = +[STUIStatusBarSettingsDomain rootSettings];
    v7 = [v6 visualProviderSettings];
    v8 = [v7 legacyPhoneUsesiPadLayout];

    if (v8)
    {
      v9 = objc_opt_class();
      goto LABEL_6;
    }
  }

  v10 = objc_opt_class();
  v9 = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v10, v4, 0);
LABEL_6:
  v11 = v9;

  return v11;
}

- (id)willUpdateWithData:(id)a3
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarVisualProvider_Phone;
  v4 = a3;
  v5 = [(STUIStatusBarVisualProvider_iOS *)&v8 willUpdateWithData:v4];
  v6 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator:v8.receiver];
  [v6 updateDataForBackgroundActivity:v4];

  return v5;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v11 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

    if (v9 != v6)
    {
      v14.receiver = self;
      v14.super_class = STUIStatusBarVisualProvider_Phone;
      v10 = [(STUIStatusBarVisualProvider_iOS *)&v14 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
      goto LABEL_7;
    }

    v11 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
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
  v8 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v11 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
    v12 = [v11 animationForBackgroundActivityIcon];
  }

  else
  {
    v9 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

    if (v9 != v6)
    {
      v14.receiver = self;
      v14.super_class = STUIStatusBarVisualProvider_Phone;
      v10 = [(STUIStatusBarVisualProvider_iOS *)&v14 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
      goto LABEL_7;
    }

    v11 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
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
  v9 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v10 = [v9 handledUpdateOfActionable:v8 highlighted:v6 initialPress:v5];

  if ((v10 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = STUIStatusBarVisualProvider_Phone;
    [(STUIStatusBarVisualProvider_iOS *)&v11 actionable:v8 highlighted:v6 initialPress:v5];
  }
}

@end