@interface STUIStatusBarVisualProvider_CarPlay
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (STUIStatusBar)statusBar;
- (STUIStatusBarVisualProvider_CarPlay)init;
- (id)_animationForSensorIndicator;
- (id)_defaultScaleAnimationWithIdentifier:(id)a3;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5;
- (id)emphasizedFont;
- (id)emphasizedPillTimeFont;
- (id)emphasizedSoftFont;
- (id)emphasizedSoftPillTimeFont;
- (id)gradedBaseFont;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)willUpdateWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)itemCreated:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_CarPlay

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = [v4 objectForKey:@"STUIStatusBarCarPlayHorizontalLayoutKey"];
    v7 = [v6 BOOLValue];

    if (v7 & 1) != 0 || ([v4 objectForKey:@"STUIStatusBarCarPlayDualLayoutDriverKey"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, (v9) || (objc_msgSend(v4, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutPassengerKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, (v11) || (objc_msgSend(v4, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutTopStatusKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, (v13) || (objc_msgSend(v4, "objectForKey:", @"STUIStatusBarCarPlayDualLayoutAppDockKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v15))
    {
      v5 = objc_opt_class();
    }
  }

  v16 = v5;

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
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

    v4 = [(STUIStatusBarVisualProvider_CarPlay *)v2 pillRegionCoordinator];
    [v4 setVisualProvider:v2];
  }

  return v2;
}

- (void)itemCreated:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
    [v4 setReducesFontSize:0];
    [v4 setTypeStringProvider:self];
  }

  else
  {
    v5 = [v8 identifier];
    v6 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (v5 != v6)
    {
      goto LABEL_6;
    }

    v7 = v8;
    [v7 setPillSize:{15.0, 15.0}];
    [v7 setPillPadding:3.0];
  }

LABEL_6:
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

- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5
{
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (a3 <= 0xF)
  {
    v8 = v6;
    if (((1 << a3) & 0xF8C0) != 0)
    {
      v9 = MEMORY[0x277D74300];
      [v6 pointSize];
      v10 = [v9 systemFontOfSize:? weight:?];
      v11 = [v10 fontDescriptor];
      v12 = [v11 fontDescriptorWithSymbolicTraits:64];

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
    v8 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v9 = [v8 traitCollection];
    [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v9];
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
    v8 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v9 = [v8 traitCollection];
    v10 = [v6 _preferredFontForTextStyle:v7 design:0 variant:1024 compatibleWithTraitCollection:v9];
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
    v8 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v9 = [v8 traitCollection];
    v10 = [v6 _preferredFontForTextStyle:v7 design:0 variant:1024 compatibleWithTraitCollection:v9];
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

- (id)styleAttributesForStyle:(int64_t)a3
{
  v5 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  v6 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:v5 style:a3];

  if (a3 == 2)
  {
    v7 = [MEMORY[0x277D75348] blackColor];
    [v6 setTextColor:v7];

    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v6 setTextColor:v8];

    [MEMORY[0x277D75348] whiteColor];
  }
  v9 = ;
  [v6 setImageTintColor:v9];

  v10 = [(STUIStatusBarVisualProvider_CarPlay *)self gradedBaseFont];
  [v6 setFont:v10];

  v11 = [(STUIStatusBarVisualProvider_CarPlay *)self gradedBaseFont];
  [v6 setSmallFont:v11];

  v12 = [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedFont];
  [v6 setEmphasizedFont:v12];

  v13 = [v6 imageTintColor];
  v14 = [v13 colorWithAlphaComponent:0.2];
  [v6 setImageDimmedTintColor:v14];

  return v6;
}

- (id)willUpdateWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 sensorActivityEntry];
  v6 = v5;
  if (v5)
  {
    -[STUIStatusBarVisualProvider_CarPlay setShowingSensorActivityIndicator:](self, "setShowingSensorActivityIndicator:", [v5 isEnabled]);
  }

  v7 = [v4 backgroundActivityEntry];
  v8 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [v8 updateDataForBackgroundActivity:v4];

  if (v7)
  {
    -[STUIStatusBarVisualProvider_CarPlay setShowingPill:](self, "setShowingPill:", [v7 isEnabled]);
  }

  v9 = [v4 radarEntry];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEnabled])
    {
      v11 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:*MEMORY[0x277D6BCF0]];
      v12 = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [v12 setAction:v11];
    }

    else
    {
      v11 = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];
      [v11 setAction:0];
    }
  }

  return MEMORY[0x277CBEBF8];
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [v17 animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
  if (v9 == v6)
  {
    goto LABEL_11;
  }

  v10 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == v6)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != v6)
  {
    v13 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];

    if (v13 == v6)
    {
      v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == v6 || (+[STUIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v6))
      {
        v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        v16 = v7;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:v6];
LABEL_13:
  v18 = v16;
LABEL_14:

  return v18;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];

  if (v8 == v6)
  {
    v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v18 = [v17 animationForBackgroundActivityPillWithDuration:0.25 scale:0.25];

    goto LABEL_14;
  }

  v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
  if (v9 == v6)
  {
    goto LABEL_11;
  }

  v10 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
  v11 = v10;
  if (v10 == v6)
  {

LABEL_11:
    goto LABEL_12;
  }

  v12 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];

  if (v12 != v6)
  {
    v13 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];

    if (v13 == v6)
    {
      v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForSensorIndicator];
    }

    else
    {
      v14 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

      if (v14 == v6 || (+[STUIStatusBarTimeItem shortTimeDisplayIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v6))
      {
        v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _animationForPillTime];
      }

      else
      {
        v16 = v7;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  v16 = [(STUIStatusBarVisualProvider_CarPlay *)self _defaultScaleAnimationWithIdentifier:v6];
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
  v8 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
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
    v11 = [(STUIStatusBarVisualProvider_CarPlay *)self radarRegion];

    if (v11 == v8)
    {
      v12 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
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
  v5 = STUIStatusBarDefaultAnimation(self, v4, &v7, 0.25, 0.25, 0.0);

  return v5;
}

- (id)_animationForSensorIndicator
{
  v3 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
  CGAffineTransformMakeScale(&v6, 0.25, 0.25);
  v4 = STUIStatusBarDefaultAnimation(self, v3, &v6, 0.25, 0.25, 0.0);

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v5 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_9;
  }

  v7 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];

  if (v7 == v4)
  {
LABEL_9:
    v9 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    v10 = [(STUIStatusBarVisualProvider_CarPlay *)self emphasizedSoftFont];
    [v9 setEmphasizedFont:v10];
    goto LABEL_12;
  }

LABEL_4:
  v8 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];

  if (v8 != v4)
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

  v10 = [MEMORY[0x277D75348] whiteColor];
  [v9 setTextColor:v10];
LABEL_12:

LABEL_13:

  return v9;
}

@end