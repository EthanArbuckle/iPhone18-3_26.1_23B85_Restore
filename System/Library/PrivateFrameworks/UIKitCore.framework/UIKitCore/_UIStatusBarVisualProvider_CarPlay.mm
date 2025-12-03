@interface _UIStatusBarVisualProvider_CarPlay
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (_UIStatusBar)statusBar;
- (_UIStatusBarVisualProvider_CarPlay)init;
- (id)_animationForSensorIndicator;
- (id)_defaultScaleAnimationWithIdentifier:(id)identifier;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)willUpdateWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)itemCreated:(id)created;
@end

@implementation _UIStatusBarVisualProvider_CarPlay

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  infoCopy = info;
  v5 = objc_opt_class();
  if (infoCopy)
  {
    v6 = [infoCopy objectForKey:@"_UIStatusBarCarPlayHorizontalLayoutKey"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v5 = objc_opt_class();
    }
  }

  v8 = v5;

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
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

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)v2 pillRegionCoordinator];
    [pillRegionCoordinator setVisualProvider:v2];
  }

  return v2;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = createdCopy;
    [v4 setReducesFontSize:0];
    [v4 setTypeStringProvider:self];
  }
}

- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed
{
  v4 = @"􀛱";
  if (type != 9)
  {
    v4 = 0;
  }

  if (type == 8)
  {
    v4 = @"􀛰";
  }

  if (condensed)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  v6 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  if (style == 2)
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

  statusBar2 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  traitCollection = [statusBar2 traitCollection];
  v12 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1" compatibleWithTraitCollection:traitCollection];

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
  statusBar3 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  traitCollection2 = [statusBar3 traitCollection];
  v16 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" design:0 variant:1024 compatibleWithTraitCollection:traitCollection2];
  [v6 setEmphasizedFont:v16];

  imageTintColor = [v6 imageTintColor];
  v18 = [imageTintColor colorWithAlphaComponent:0.2];
  [v6 setImageDimmedTintColor:v18];

  return v6;
}

- (id)willUpdateWithData:(id)data
{
  dataCopy = data;
  sensorActivityEntry = [dataCopy sensorActivityEntry];
  v6 = sensorActivityEntry;
  if (sensorActivityEntry)
  {
    -[_UIStatusBarVisualProvider_CarPlay setShowingSensorActivityIndicator:](self, "setShowingSensorActivityIndicator:", [sensorActivityEntry isEnabled]);
  }

  backgroundActivityEntry = [dataCopy backgroundActivityEntry];
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [pillRegionCoordinator updateDataForBackgroundActivity:dataCopy];

  if (backgroundActivityEntry)
  {
    -[_UIStatusBarVisualProvider_CarPlay setShowingPill:](self, "setShowingPill:", [backgroundActivityEntry isEnabled]);
  }

  radarEntry = [dataCopy radarEntry];
  v10 = radarEntry;
  if (radarEntry)
  {
    if ([radarEntry isEnabled])
    {
      radarRegion2 = [_UIStatusBarActivityAction actionForBackgroundActivityType:29];
      radarRegion = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [radarRegion setAction:radarRegion2];
    }

    else
    {
      radarRegion2 = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [radarRegion2 setAction:0];
    }
  }

  return MEMORY[0x1E695E0F0];
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [pillRegionCoordinator animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
  if (v9 == identifierCopy)
  {
    goto LABEL_11;
  }

  v10 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == identifierCopy)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != identifierCopy)
  {
    v13 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];

    if (v13 == identifierCopy)
    {
      _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == identifierCopy || (+[_UIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == identifierCopy))
      {
        _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        _animationForSensorIndicator = animationCopy;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:identifierCopy];
LABEL_13:
  v18 = _animationForSensorIndicator;
LABEL_14:

  return v18;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [pillRegionCoordinator animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
  if (v9 == identifierCopy)
  {
    goto LABEL_11;
  }

  v10 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == identifierCopy)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != identifierCopy)
  {
    v13 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];

    if (v13 == identifierCopy)
    {
      _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == identifierCopy || (+[_UIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == identifierCopy))
      {
        _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        _animationForSensorIndicator = animationCopy;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  _animationForSensorIndicator = [(_UIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:identifierCopy];
LABEL_13:
  v18 = _animationForSensorIndicator;
LABEL_14:

  return v18;
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  actionableCopy = actionable;
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  if (([pillRegionCoordinator handledUpdateOfActionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = actionableCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    pillRegionCoordinator = actionableCopy;
    radarRegion = [(_UIStatusBarVisualProvider_CarPlay *)self radarRegion];

    if (radarRegion == pillRegionCoordinator)
    {
      pillRegionCoordinator2 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
      [pillRegionCoordinator2 updateRegion:pillRegionCoordinator highlighted:highlightedCopy initialPress:pressCopy cornerRadius:8.0];
    }
  }

  v10 = actionableCopy;
LABEL_6:
}

- (id)_defaultScaleAnimationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  CGAffineTransformMakeScale(&v7, 0.25, 0.25);
  v5 = _UIStatusBarDefaultAnimation(self, identifierCopy, &v7, 0.25, 0.25, 0.0);

  return v5;
}

- (id)_animationForSensorIndicator
{
  v3 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
  CGAffineTransformMakeScale(&v6, 0.25, 0.25);
  v4 = _UIStatusBarDefaultAnimation(self, v3, &v6, 0.25, 0.25, 0.0);

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    v6 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    statusBar = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
    traitCollection = [statusBar traitCollection];
    v9 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption2" design:0 variant:1024 compatibleWithTraitCollection:traitCollection];
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