@interface STUIStatusBarVisualProvider_CarPlay
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (STUIStatusBar)statusBar;
- (STUIStatusBarVisualProvider_CarPlay)init;
- (id)_animationForSensorIndicator;
- (id)_defaultScaleAnimationWithIdentifier:(id)identifier;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset;
- (id)emphasizedFont;
- (id)emphasizedPillTimeFont;
- (id)emphasizedSoftFont;
- (id)emphasizedSoftPillTimeFont;
- (id)gradedBaseFont;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)willUpdateWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)itemCreated:(id)created;
@end

@implementation STUIStatusBarVisualProvider_CarPlay

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  infoCopy = info;
  v5 = objc_opt_class();
  if (infoCopy)
  {
    v6 = [infoCopy objectForKey:@"STUIStatusBarCarPlayHorizontalLayoutKey"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue & 1) != 0 || ([infoCopy objectForKey:@"STUIStatusBarCarPlayDualLayoutDriverKey"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, (v9) || (objc_msgSend(infoCopy, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutPassengerKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, (v11) || (objc_msgSend(infoCopy, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutTopStatusKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, (v13) || (objc_msgSend(infoCopy, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutAppDockKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v15))
    {
      v5 = objc_opt_class();
    }
  }

  v16 = v5;

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = *MEMORY[0x277D77260];
  result.height = v4;
  result.width = v3;
  return result;
}

- (STUIStatusBarVisualProvider_CarPlay)init
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_CarPlay;
  v2 = [(STUIStatusBarVisualProvider_CarPlay *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(STUIStatusBarVisualProvider_CarPlay *)v2 setPillRegionCoordinator:v3];

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)v2 pillRegionCoordinator];
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

  else
  {
    identifier = [createdCopy identifier];
    v6 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (identifier != v6)
    {
      goto LABEL_6;
    }

    v7 = createdCopy;
    [v7 setPillSize:{15.0, 15.0}];
    [v7 setPillPadding:3.0];
  }

LABEL_6:
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

- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset
{
  fontCopy = font;
  v7 = fontCopy;
  v8 = fontCopy;
  if (type <= 0xF)
  {
    v8 = fontCopy;
    if (((1 << type) & 0xF8C0) != 0)
    {
      v9 = MEMORY[0x277D74300];
      [fontCopy pointSize];
      v10 = [v9 systemFontOfSize:? weight:?];
      fontDescriptor = [v10 fontDescriptor];
      v12 = [fontDescriptor fontDescriptorWithSymbolicTraits:64];

      v8 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
    }
  }

  return v8;
}

- (id)gradedBaseFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = qword_280C1E888;
  if (qword_280C1E888)
  {
    v5 = _MergedGlobals_56 == IsBoldTextEnabled;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    _MergedGlobals_56 = IsBoldTextEnabled;
    v6 = MEMORY[0x277D74300];
    v7 = *MEMORY[0x277D76938];
    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    traitCollection = [statusBar traitCollection];
    [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:traitCollection];
    CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
    v11 = qword_280C1E888;
    qword_280C1E888 = CopyOfSystemUIFontWithGrade;

    v4 = qword_280C1E888;
  }

  return v4;
}

- (id)emphasizedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = unk_280C1E890;
  if (unk_280C1E890)
  {
    v5 = byte_280C1E881 == IsBoldTextEnabled;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    byte_280C1E881 = IsBoldTextEnabled;
    v6 = MEMORY[0x277D74300];
    v7 = *MEMORY[0x277D76938];
    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    traitCollection = [statusBar traitCollection];
    v10 = [v6 _preferredFontForTextStyle:v7 design:0 variant:1024 compatibleWithTraitCollection:traitCollection];
    v11 = unk_280C1E890;
    unk_280C1E890 = v10;

    v4 = unk_280C1E890;
  }

  return v4;
}

- (id)emphasizedSoftFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E898;
  if (unk_280C1E898)
  {
    v4 = byte_280C1E882 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E882 = IsBoldTextEnabled;
    v5 = CTFontCreateWithNameAndOptions(@".SFSoftNumeric-Semibold", 14.0, 0, 0x20000uLL);
    v6 = unk_280C1E898;
    unk_280C1E898 = v5;

    v3 = unk_280C1E898;
  }

  return v3;
}

- (id)emphasizedPillTimeFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = unk_280C1E8A0;
  if (unk_280C1E8A0)
  {
    v5 = byte_280C1E883 == IsBoldTextEnabled;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    byte_280C1E883 = IsBoldTextEnabled;
    v6 = MEMORY[0x277D74300];
    v7 = *MEMORY[0x277D76940];
    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    traitCollection = [statusBar traitCollection];
    v10 = [v6 _preferredFontForTextStyle:v7 design:0 variant:1024 compatibleWithTraitCollection:traitCollection];
    v11 = unk_280C1E8A0;
    unk_280C1E8A0 = v10;

    v4 = unk_280C1E8A0;
  }

  return v4;
}

- (id)emphasizedSoftPillTimeFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E8A8;
  if (unk_280C1E8A8)
  {
    v4 = byte_280C1E884 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E884 = IsBoldTextEnabled;
    v5 = CTFontCreateWithNameAndOptions(@".SFSoftNumeric-Semibold", 12.0, 0, 0x20000uLL);
    v6 = unk_280C1E8A8;
    unk_280C1E8A8 = v5;

    v3 = unk_280C1E8A8;
  }

  return v3;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  v6 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  if (style == 2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v6 setTextColor:blackColor];

    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v6 setTextColor:whiteColor];

    [MEMORY[0x277D75348] whiteColor];
  }
  v9 = ;
  [v6 setImageTintColor:v9];

  gradedBaseFont = [(STUIStatusBarVisualProvider_CarPlay *)self gradedBaseFont];
  [v6 setFont:gradedBaseFont];

  gradedBaseFont2 = [(STUIStatusBarVisualProvider_CarPlay *)self gradedBaseFont];
  [v6 setSmallFont:gradedBaseFont2];

  emphasizedFont = [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedFont];
  [v6 setEmphasizedFont:emphasizedFont];

  imageTintColor = [v6 imageTintColor];
  v14 = [imageTintColor colorWithAlphaComponent:0.2];
  [v6 setImageDimmedTintColor:v14];

  return v6;
}

- (id)willUpdateWithData:(id)data
{
  dataCopy = data;
  sensorActivityEntry = [dataCopy sensorActivityEntry];
  v6 = sensorActivityEntry;
  if (sensorActivityEntry)
  {
    -[STUIStatusBarVisualProvider_CarPlay setShowingSensorActivityIndicator:](self, "setShowingSensorActivityIndicator:", [sensorActivityEntry isEnabled]);
  }

  backgroundActivityEntry = [dataCopy backgroundActivityEntry];
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [pillRegionCoordinator updateDataForBackgroundActivity:dataCopy];

  if (backgroundActivityEntry)
  {
    -[STUIStatusBarVisualProvider_CarPlay setShowingPill:](self, "setShowingPill:", [backgroundActivityEntry isEnabled]);
  }

  radarEntry = [dataCopy radarEntry];
  v10 = radarEntry;
  if (radarEntry)
  {
    if ([radarEntry isEnabled])
    {
      radarRegion2 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:*MEMORY[0x277D6BCF0]];
      radarRegion = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [radarRegion setAction:radarRegion2];
    }

    else
    {
      radarRegion2 = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [radarRegion2 setAction:0];
    }
  }

  return MEMORY[0x277CBEBF8];
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [pillRegionCoordinator animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
  if (v9 == identifierCopy)
  {
    goto LABEL_11;
  }

  v10 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == identifierCopy)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != identifierCopy)
  {
    v13 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];

    if (v13 == identifierCopy)
    {
      _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == identifierCopy || (+[STUIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == identifierCopy))
      {
        _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        _animationForSensorIndicator = animationCopy;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:identifierCopy];
LABEL_13:
  v18 = _animationForSensorIndicator;
LABEL_14:

  return v18;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == identifierCopy)
  {
    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [pillRegionCoordinator animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
  if (v9 == identifierCopy)
  {
    goto LABEL_11;
  }

  v10 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == identifierCopy)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != identifierCopy)
  {
    v13 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];

    if (v13 == identifierCopy)
    {
      _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == identifierCopy || (+[STUIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == identifierCopy))
      {
        _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        _animationForSensorIndicator = animationCopy;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  _animationForSensorIndicator = [(STUIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:identifierCopy];
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
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
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
    radarRegion = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];

    if (radarRegion == pillRegionCoordinator)
    {
      pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
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
  v5 = STUIStatusBarDefaultAnimation(self, identifierCopy, &v7, 0.25, 0.25, 0.0);

  return v5;
}

- (id)_animationForSensorIndicator
{
  v3 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
  CGAffineTransformMakeScale(&v6, 0.25, 0.25);
  v4 = STUIStatusBarDefaultAnimation(self, v3, &v6, 0.25, 0.25, 0.0);

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v5 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
  v6 = v5;
  if (v5 == identifierCopy)
  {

    goto LABEL_9;
  }

  v7 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];

  if (v7 == identifierCopy)
  {
LABEL_9:
    v9 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    emphasizedSoftFont = [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedSoftFont];
    [v9 setEmphasizedFont:emphasizedSoftFont];
    goto LABEL_12;
  }

LABEL_4:
  v8 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

  if (v8 != identifierCopy)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  if (_UISolariumEnabled())
  {
    [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedSoftPillTimeFont];
  }

  else
  {
    [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedPillTimeFont];
  }
  v11 = ;
  [v9 setEmphasizedFont:v11];

  emphasizedSoftFont = [MEMORY[0x277D75348] whiteColor];
  [v9 setTextColor:emphasizedSoftFont];
LABEL_12:

LABEL_13:

  return v9;
}

@end