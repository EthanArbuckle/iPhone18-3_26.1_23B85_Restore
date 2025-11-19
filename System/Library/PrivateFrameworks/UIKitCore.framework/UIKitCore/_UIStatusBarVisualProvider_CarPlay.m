@interface _UIStatusBarVisualProvider_CarPlay
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (_UIStatusBar)statusBar;
- (_UIStatusBarVisualProvider_CarPlay)init;
- (id)_animationForSensorIndicator;
- (id)_defaultScaleAnimationWithIdentifier:(id)a3;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)willUpdateWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)itemCreated:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_CarPlay

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = [v4 objectForKey:@"_UIStatusBarCarPlayHorizontalLayoutKey"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v5 = objc_opt_class();
    }
  }

  v8 = v5;

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = -1.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_UIStatusBarVisualProvider_CarPlay)init
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarVisualProvider_CarPlay;
  v2 = [(_UIStatusBarVisualProvider_CarPlay *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(_UIStatusBarVisualProvider_CarPlay *)v2 setPillRegionCoordinator:v3];

    v4 = [(_UIStatusBarVisualProvider_CarPlay *)v2 pillRegionCoordinator];
    [v4 setVisualProvider:v2];
  }

  return v2;
}

- (void)itemCreated:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    [v4 setReducesFontSize:0];
    [v4 setTypeStringProvider:self];
  }
}

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  v4 = @"􀛱";
  if (a3 != 9)
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = @"􀛰";
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v5 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  v6 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:v5 style:a3];

  if (a3 == 2)
  {
    v7 = +[UIColor blackColor];
    [v6 setTextColor:v7];

    +[UIColor blackColor];
  }

  else
  {
    v8 = +[UIColor whiteColor];
    [v6 setTextColor:v8];

    +[UIColor whiteColor];
  }
  v9 = ;
  [v6 setImageTintColor:v9];

  v10 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  v11 = [v10 traitCollection];
  v12 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1" compatibleWithTraitCollection:v11];

  if (v12)
  {
    CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  }

  else
  {
    CopyOfSystemUIFontWithGrade = 0;
  }

  [v6 setFont:CopyOfSystemUIFontWithGrade];
  [v6 setSmallFont:CopyOfSystemUIFontWithGrade];
  v14 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  v15 = [v14 traitCollection];
  v16 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" design:0 variant:1024 compatibleWithTraitCollection:v15];
  [v6 setEmphasizedFont:v16];

  v17 = [v6 imageTintColor];
  v18 = [v17 colorWithAlphaComponent:0.2];
  [v6 setImageDimmedTintColor:v18];

  return v6;
}

- (id)willUpdateWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 sensorActivityEntry];
  v6 = v5;
  if (v5)
  {
    -[_UIStatusBarVisualProvider_CarPlay setShowingSensorActivityIndicator:](self, "setShowingSensorActivityIndicator:", [v5 isEnabled]);
  }

  v7 = [v4 backgroundActivityEntry];
  v8 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [v8 updateDataForBackgroundActivity:v4];

  if (v7)
  {
    -[_UIStatusBarVisualProvider_CarPlay setShowingPill:](self, "setShowingPill:", [v7 isEnabled]);
  }

  v9 = [v4 radarEntry];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEnabled])
    {
      v11 = [_UIStatusBarActivityAction actionForBackgroundActivityType:29];
      v12 = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [v12 setAction:v11];
    }

    else
    {
      v11 = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [v11 setAction:0];
    }
  }

  return MEMORY[0x1E695E0F0];
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v17 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [v17 animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
  if (v9 == v6)
  {
    goto LABEL_11;
  }

  v10 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == v6)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != v6)
  {
    v13 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];

    if (v13 == v6)
    {
      v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == v6 || (+[_UIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v6))
      {
        v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        v16 = v7;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:v6];
LABEL_13:
  v18 = v16;
LABEL_14:

  return v18;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v17 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [v17 animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
  if (v9 == v6)
  {
    goto LABEL_11;
  }

  v10 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == v6)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != v6)
  {
    v13 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];

    if (v13 == v6)
    {
      v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == v6 || (+[_UIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v6))
      {
        v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        v16 = v7;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  v16 = [(_UIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:v6];
LABEL_13:
  v18 = v16;
LABEL_14:

  return v18;
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v13 = a3;
  v8 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  if (([v8 handledUpdateOfActionable:v13 highlighted:v6 initialPress:v5] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = v13;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = v13;
    v11 = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];

    if (v11 == v8)
    {
      v12 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
      [v12 updateRegion:v8 highlighted:v6 initialPress:v5 cornerRadius:8.0];
    }
  }

  v10 = v13;
LABEL_6:
}

- (id)_defaultScaleAnimationWithIdentifier:(id)a3
{
  v4 = a3;
  CGAffineTransformMakeScale(&v7, 0.25, 0.25);
  v5 = _UIStatusBarDefaultAnimation(self, v4, &v7, 0.25, 0.25, 0.0);

  return v5;
}

- (id)_animationForSensorIndicator
{
  v3 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
  CGAffineTransformMakeScale(&v6, 0.25, 0.25);
  v4 = _UIStatusBarDefaultAnimation(self, v3, &v6, 0.25, 0.25, 0.0);

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v7 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
    v8 = [v7 traitCollection];
    v9 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption2" design:0 variant:1024 compatibleWithTraitCollection:v8];
    [v6 setEmphasizedFont:v9];

    v10 = +[UIColor whiteColor];
    [v6 setTextColor:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end