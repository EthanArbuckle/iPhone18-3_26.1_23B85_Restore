@interface SBFLockScreenDateView
+ ($01BB1521EC52D44A8E7628F5261DCEC8)metricsForFont:(id)a3;
+ ($01BB1521EC52D44A8E7628F5261DCEC8)timeFontMetrics;
+ (double)defaultHeight;
+ (id)timeFont;
- ($01BB1521EC52D44A8E7628F5261DCEC8)customTimeMetrics;
- (CGRect)_subtitleViewFrameForView:(id)a3 alignmentPercent:(double)a4;
- (CGRect)_timeLabelFrameForAlignmentPercent:(double)a3;
- (CGRect)chargingVisualInformationTimeFrame;
- (CGRect)chargingVisualInformationTimeSubtitleFrame;
- (CGRect)presentationExtentForAlignmentPercent:(double)a3;
- (CGRect)restingFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBFLockScreenDateView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_cachedGlyphInsetsTimeFontForString:(id)a3;
- (UIEdgeInsets)_timeLabelInsetsForTimeString:(id)a3;
- (UIView)timeView;
- (double)subtitleBaselineOffsetFromOrigin;
- (double)timeBaselineOffsetFromOrigin;
- (id)_effectiveTextColor;
- (void)_cacheCustomTimeMetrics;
- (void)_layoutSubtitle;
- (void)_setDate:(id)a3 inTimeZone:(id)a4;
- (void)_setSubtitleAlpha:(double)a3;
- (void)_updateActiveSubtitleView;
- (void)_updateAdaptiveTime;
- (void)_updateForNewFont;
- (void)_updateLabelAlpha;
- (void)_updateLabels;
- (void)_updatePreferredContentSizeCategoryForEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlignmentPercent:(double)a3;
- (void)setCustomSubtitleView:(id)a3;
- (void)setCustomTimeFont:(id)a3;
- (void)setCustomTimeNumberingSystem:(id)a3;
- (void)setDateToTimeStretch:(double)a3;
- (void)setInlineComplicationView:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setMaximumAdaptiveTimeTextHeight:(double)a3;
- (void)setMaximumSubtitleWidth:(double)a3;
- (void)setPosterHasComplications:(BOOL)a3;
- (void)setRestrictsVibrancy:(BOOL)a3;
- (void)setSubtitleHidden:(BOOL)a3;
- (void)setSubtitleLegibilityStrength:(double)a3;
- (void)setSubtitleOnTop:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeAlpha:(double)a3 subtitleAlpha:(double)a4;
- (void)setTimeGlassInterfaceStyle:(int64_t)a3;
- (void)setTimeLegibilityStrength:(double)a3;
- (void)setTimeSupportsStretch:(BOOL)a3;
- (void)setUseCompactDateFormat:(BOOL)a3;
- (void)setUseLandscapeTimeFontSize:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)updateFormat;
@end

@implementation SBFLockScreenDateView

- (void)_updateLabels
{
  v3 = MEMORY[0x1E698E670];
  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v7 = [v3 formatterForDateAsTimeNoAMPMWithLocale:v4];

  [v7 setTimeZone:self->_timeZone];
  v5 = [v7 stringFromDate:self->_date];
  if (self->_date)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F3D19FF0;
  }

  [(SBUILegibilityLabel *)self->_timeLabel setString:v6];
  [(SBFLockScreenDateView *)self _updateUsesCompactDateFormat];
  [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView _setDate:self->_date inTimeZone:self->_timeZone];
  [(SBUILegibilityLabel *)self->_timeLabel sizeToFit];
  [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView sizeToFit];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setDisplayDate:self->_date];
  [(SBFLockScreenDateView *)self setNeedsLayout];
}

- (void)updateFormat
{
  v2 = [MEMORY[0x1E698E670] sharedInstance];
  [v2 resetFormattersIfNecessary];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBFLockScreenDateView;
  [(SBFLockScreenDateView *)&v13 layoutSubviews];
  [(SBFLockScreenDateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController view];
  [v11 setFrame:{v4, v6, v8, v10}];

  timeLabel = self->_timeLabel;
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:self->_alignmentPercent];
  [(SBUILegibilityLabel *)timeLabel setFrame:?];
  [(SBFLockScreenDateView *)self _layoutSubtitle];
}

- (void)_layoutSubtitle
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self->_dateSubtitleView];
  v4 = v3;
  if (self->_customSubtitleView)
  {
    [v3 addObject:?];
  }

  if (self->_inlineComplicationView)
  {
    [v4 addObject:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(SBFLockScreenDateView *)self _subtitleViewFrameForView:v10 alignmentPercent:self->_alignmentPercent, v11];
        [v10 setFrame:?];
        if (objc_opt_respondsToSelector())
        {
          [v10 setAlignmentPercent:self->_alignmentPercent];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (double)defaultHeight
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 115.0;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      v6 = 115.0;
LABEL_12:

      return v6;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = dbl_1BEAD3B60[v9 >= *(MEMORY[0x1E69D4380] + 280)];
  if ((v8 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  return v6;
}

- (SBFLockScreenDateView)initWithFrame:(CGRect)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = SBFLockScreenDateView;
  v3 = [(SBFLockScreenDateView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_timeAlpha = 1.0;
    v3->_subtitleAlpha = 1.0;
    v5 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:1];
    legibilitySettings = v4->_legibilitySettings;
    v4->_legibilitySettings = v5;

    v4->_alignmentPercent = 0.0;
    v4->_maximumSubtitleWidth = INFINITY;
    timeZone = v4->_timeZone;
    v4->_timeZone = 0;

    v8 = [objc_opt_class() timeFont];
    [(SBFLockScreenDateView *)v4 setCustomTimeFont:v8];

    objc_initWeak(&location, v4);
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [MEMORY[0x1E696ADC8] mainQueue];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __39__SBFLockScreenDateView_initWithFrame___block_invoke;
    v30 = &unk_1E807F470;
    objc_copyWeak(&v31, &location);
    v11 = [v9 addObserverForName:*MEMORY[0x1E69DD898] object:0 queue:v10 usingBlock:&v27];

    v12 = objc_opt_self();
    v39[0] = v12;
    v13 = objc_opt_self();
    v39[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:{2, v27, v28, v29, v30}];
    v15 = [(SBFLockScreenDateView *)v4 registerForTraitChanges:v14 withTarget:v4 action:sel__updatePreferredContentSizeCategoryForEnvironment_previousTraitCollection_];
    contentSizeCategoryTraitChangeRegistration = v4->_contentSizeCategoryTraitChangeRegistration;
    v4->_contentSizeCategoryTraitChangeRegistration = v15;

    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v17 = getSBUILegibilityLabelClass_softClass;
    v38 = getSBUILegibilityLabelClass_softClass;
    if (!getSBUILegibilityLabelClass_softClass)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __getSBUILegibilityLabelClass_block_invoke;
      v34[3] = &unk_1E807F028;
      v34[4] = &v35;
      __getSBUILegibilityLabelClass_block_invoke(v34);
      v17 = v36[3];
    }

    v18 = v17;
    _Block_object_dispose(&v35, 8);
    v19 = [v17 alloc];
    v20 = [v19 initWithSettings:v4->_legibilitySettings strength:&stru_1F3D19FF0 string:v4->_customTimeFont font:*MEMORY[0x1E69DE9E8]];
    timeLabel = v4->_timeLabel;
    v4->_timeLabel = v20;

    v22 = v4->_timeLabel;
    v23 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUILegibilityLabel *)v22 setBackgroundColor:v23];

    v24 = [[SBFLockScreenDateSubtitleDateView alloc] initWithDate:0];
    dateSubtitleView = v4->_dateSubtitleView;
    v4->_dateSubtitleView = v24;

    [(SBFLockScreenDateView *)v4 setAccessibilityIdentifier:@"lockscreen-date-view"];
    objc_storeStrong(&v4->_activeSubtitleView, v4->_dateSubtitleView);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(SBFLockScreenDateView *)v4 addSubview:v4->_timeLabel];
      [(SBFLockScreenDateView *)v4 addSubview:v4->_dateSubtitleView];
    }

    [(SBFLockScreenDateView *)v4 updateFormat];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __39__SBFLockScreenDateView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cacheCustomTimeMetrics];
}

- (void)dealloc
{
  [(SBFLockScreenDateView *)self unregisterForTraitChanges:self->_contentSizeCategoryTraitChangeRegistration];
  v3.receiver = self;
  v3.super_class = SBFLockScreenDateView;
  [(SBFLockScreenDateView *)&v3 dealloc];
}

- (void)setSubtitleHidden:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(SBFLockScreenDateView *)self _setSubtitleAlpha:v3];
}

- (void)setUseLandscapeTimeFontSize:(BOOL)a3
{
  if (self->_useLandscapeTimeFontSize != a3)
  {
    self->_useLandscapeTimeFontSize = a3;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setUsesLandscapeTimeFontVariant:?];
  }
}

- (void)setUseCompactDateFormat:(BOOL)a3
{
  if (self->_useCompactDateFormat != a3)
  {
    self->_useCompactDateFormat = a3;
    [(SBFLockScreenDateView *)self _updateUsesCompactDateFormat];
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView sizeToFit];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)_setDate:(id)a3 inTimeZone:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_timeZone, a4);
  v7 = a4;
  date = self->_date;
  self->_date = v6;

  [(SBFLockScreenDateView *)self _updateLabels];
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_overrideTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideTextColor, a3);
    [(SBUILegibilityLabel *)self->_timeLabel setTextColor:self->_overrideTextColor];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTextColor:self->_overrideTextColor];
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    v5 = v6;
  }
}

- (void)setRestrictsVibrancy:(BOOL)a3
{
  if (self->_restrictsVibrancy != a3)
  {
    self->_restrictsVibrancy = a3;
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType];
    }

    prominentDisplayViewController = self->_prominentDisplayViewController;

    [(CSProminentDisplayViewController *)prominentDisplayViewController setEffectType:v5];
  }
}

- (void)setVibrancyConfiguration:(id)a3
{
  v5 = a3;
  if (self->_vibrancyConfiguration != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_vibrancyConfiguration, a3);
    v6 = [(BSUIVibrancyConfiguration *)v16 color];
    overrideTextColor = self->_overrideTextColor;
    self->_overrideTextColor = v6;

    [(SBUILegibilityLabel *)self->_timeLabel setTextColor:self->_overrideTextColor];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTextColor:self->_overrideTextColor];
    prominentDisplayViewController = self->_prominentDisplayViewController;
    if (self->_restrictsVibrancy)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(BSUIVibrancyConfiguration *)v16 effectType];
    }

    [(CSProminentDisplayViewController *)prominentDisplayViewController setEffectType:v9];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setBackgroundType:[(BSUIVibrancyConfiguration *)v16 backgroundType]];
    v10 = self->_prominentDisplayViewController;
    v11 = [(BSUIVibrancyConfiguration *)v16 groupName];
    [(CSProminentDisplayViewController *)v10 setGroupName:v11];

    v12 = [(BSUIVibrancyConfiguration *)v16 alternativeVibrancyEffectLUT];
    v13 = self->_prominentDisplayViewController;
    v14 = [v12 lutIdentifier];
    v15 = [v12 bundleURL];
    [(CSProminentDisplayViewController *)v13 setAlternativeVibrancyEffectLUTIdentifier:v14 alternativeVibrancyEffectLUTBundleURL:v15];

    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    v5 = v16;
  }
}

- (void)setTimeLegibilityStrength:(double)a3
{
  if (self->_timeLegibilityStrength != a3)
  {
    self->_timeLegibilityStrength = a3;
    [(SBUILegibilityLabel *)self->_timeLabel setStrength:?];
  }
}

- (void)setSubtitleLegibilityStrength:(double)a3
{
  if (self->_subtitleLegibilityStrength != a3)
  {
    self->_subtitleLegibilityStrength = a3;
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView setStrength:?];
    customSubtitleView = self->_customSubtitleView;
    subtitleLegibilityStrength = self->_subtitleLegibilityStrength;

    [(SBFLockScreenDateSubtitleView *)customSubtitleView setStrength:subtitleLegibilityStrength];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v7 = a3;
  if (![(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBUILegibilityLabel *)self->_timeLabel setLegibilitySettings:self->_legibilitySettings];
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView setLegibilitySettings:self->_legibilitySettings];
    [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView setLegibilitySettings:self->_legibilitySettings];
    prominentDisplayViewController = self->_prominentDisplayViewController;
    v6 = [(SBFLockScreenDateView *)self _effectiveTextColor];
    [(CSProminentDisplayViewController *)prominentDisplayViewController setTextColor:v6];

    [(SBFLockScreenDateView *)self _updateLabels];
  }
}

- (void)setAlignmentPercent:(double)a3
{
  if (self->_alignmentPercent != a3)
  {
    self->_alignmentPercent = a3;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setDateToTimeStretch:(double)a3
{
  if (self->_dateToTimeStretch != a3)
  {
    self->_dateToTimeStretch = a3;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setMaximumSubtitleWidth:(double)a3
{
  if (self->_maximumSubtitleWidth != a3)
  {
    [(SBFLockScreenDateView *)self bounds];
    Width = CGRectGetWidth(v7);
    if (Width >= a3)
    {
      Width = a3;
    }

    self->_maximumSubtitleWidth = Width;

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setMaximumAdaptiveTimeTextHeight:(double)a3
{
  if (self->_maximumAdaptiveTimeTextHeight != a3)
  {
    self->_maximumAdaptiveTimeTextHeight = a3;
    [(SBFLockScreenDateView *)self _updateAdaptiveTime];
  }
}

- (void)setTimeAlpha:(double)a3 subtitleAlpha:(double)a4
{
  if (BSFloatEqualToFloat())
  {
    p_subtitleAlpha = &self->_subtitleAlpha;
    if (BSFloatEqualToFloat())
    {
      return;
    }

    goto LABEL_5;
  }

  self->_timeAlpha = a3;
  p_subtitleAlpha = &self->_subtitleAlpha;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
LABEL_5:
    *p_subtitleAlpha = a4;
  }

  [(SBFLockScreenDateView *)self _updateLabelAlpha];
}

- (void)setInlineComplicationView:(id)a3
{
  v5 = a3;
  if (self->_inlineComplicationView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inlineComplicationView, a3);
    [(SBFLockScreenDateView *)self _updateActiveSubtitleView];
    v5 = v6;
  }
}

- (void)setCustomSubtitleView:(id)a3
{
  v5 = a3;
  if (self->_customSubtitleView != v5)
  {
    v6 = v5;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      objc_storeStrong(&self->_customSubtitleView, a3);
      [(SBFLockScreenDateSubtitleView *)v6 setLegibilitySettings:self->_legibilitySettings];
      [(SBFLockScreenDateSubtitleView *)v6 setStrength:self->_subtitleLegibilityStrength];
      [(SBFLockScreenDateView *)self _updateActiveSubtitleView];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_updateActiveSubtitleView
{
  v3 = self->_activeSubtitleView;
  customSubtitleView = self->_customSubtitleView;
  if (!customSubtitleView)
  {
    customSubtitleView = self->_inlineComplicationView;
    if (!customSubtitleView)
    {
      customSubtitleView = self->_dateSubtitleView;
    }
  }

  v5 = customSubtitleView;
  objc_storeStrong(&self->_activeSubtitleView, v5);
  [(SBFLockScreenDateSubtitleDateView *)v5 sizeToFit];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
  {
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    v7 = v6;
    v8 = MEMORY[0x1E698E7D0];
    v9 = MEMORY[0x1E698E608];
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    v11 = [v9 settingsWithDuration:v10 timingFunction:v7 * 0.5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke;
    v17[3] = &unk_1E807F178;
    v18 = v3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_2;
    v12[3] = &unk_1E807F4B8;
    v13 = v5;
    v14 = self;
    v15 = v18;
    v16 = v7;
    [v8 animateWithSettings:v11 actions:v17 completion:v12];
  }

  else
  {
    if (v3 != self->_dateSubtitleView)
    {
      [(SBFLockScreenDateSubtitleDateView *)v3 removeFromSuperview];
    }

    [(SBFLockScreenDateView *)self addSubview:v5];
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

void __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (*(a1 + 48) != v2[54])
  {
    [*(a1 + 48) removeFromSuperview];
    v2 = *(a1 + 40);
  }

  [v2 setNeedsLayout];
  v3 = MEMORY[0x1E698E7D0];
  v4 = MEMORY[0x1E698E608];
  v5 = *(a1 + 56) * 0.5;
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v7 = [v4 settingsWithDuration:v6 timingFunction:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_3;
  v8[3] = &unk_1E807F178;
  v8[4] = *(a1 + 40);
  [v3 animateWithSettings:v7 actions:v8 completion:&__block_literal_global_7];
}

- (CGRect)presentationExtentForAlignmentPercent:(double)a3
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v13 = [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView superview];
  if (v13)
  {
    subtitleAlpha = self->_subtitleAlpha;

    if (subtitleAlpha > 0.0)
    {
      [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_customSubtitleView alignmentPercent:a3];
      v34.origin.x = v15;
      v34.origin.y = v16;
      v34.size.width = v17;
      v34.size.height = v18;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectUnion(v30, v34);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }
  }

  v19 = [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView superview];
  if (v19)
  {
    v20 = self->_subtitleAlpha;

    if (v20 > 0.0)
    {
      [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_dateSubtitleView alignmentPercent:a3];
      v35.origin.x = v21;
      v35.origin.y = v22;
      v35.size.width = v23;
      v35.size.height = v24;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      CGRectUnion(v32, v35);
    }
  }

  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)setCustomTimeFont:(id)a3
{
  v4 = [a3 copy];
  v5 = v4;
  if (!v4)
  {
    v5 = +[SBFLockScreenDateView timeFont];
  }

  objc_storeStrong(&self->_customTimeFont, v5);
  if (!v4)
  {
  }

  [(SBFLockScreenDateView *)self _cacheCustomTimeMetrics];

  [(SBFLockScreenDateView *)self _updateForNewFont];
}

- (void)setTimeSupportsStretch:(BOOL)a3
{
  if (self->_timeSupportsStretch != a3)
  {
    self->_timeSupportsStretch = a3;
    [(SBFLockScreenDateView *)self _updateForNewFont];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setPosterHasComplications:(BOOL)a3
{
  if (self->_posterHasComplications != a3)
  {
    self->_posterHasComplications = a3;
    [(SBFLockScreenDateView *)self _updateForNewFont];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setSubtitleOnTop:(BOOL)a3
{
  if (self->_subtitleOnTop != a3)
  {
    self->_subtitleOnTop = a3;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setCustomTimeNumberingSystem:(id)a3
{
  v4 = [a3 copy];
  customTimeNumberingSystem = self->_customTimeNumberingSystem;
  self->_customTimeNumberingSystem = v4;

  prominentDisplayViewController = self->_prominentDisplayViewController;
  v7 = self->_customTimeNumberingSystem;

  [(CSProminentDisplayViewController *)prominentDisplayViewController setNumberingSystem:v7];
}

- (void)_cacheCustomTimeMetrics
{
  v3 = _os_feature_enabled_impl();
  p_customTimeMetrics = &self->_customTimeMetrics;
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v15 = +[SBFLockScreenDateView timeFont];
    [v6 metricsForFont:v15];
    p_customTimeMetrics->ascender = v7;
    self->_customTimeMetrics.descender = v8;
    self->_customTimeMetrics.bodyLeading = v9;
    self->_customTimeMetrics.capHeight = v10;
  }

  else
  {
    [v5 metricsForFont:self->_customTimeFont];
    p_customTimeMetrics->ascender = v11;
    self->_customTimeMetrics.descender = v12;
    self->_customTimeMetrics.bodyLeading = v13;
    self->_customTimeMetrics.capHeight = v14;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:self->_alignmentPercent, a3.height];
  v5 = v4;
  rect = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_dateSubtitleView alignmentPercent:self->_alignmentPercent];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (self->_subtitleOnTop)
  {
    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;
  }

  rect_16 = CGRectGetMaxY(*&v12);
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v16;
  v31.origin.y = v17;
  v31.size.width = v18;
  v31.size.height = v19;
  v21 = CGRectGetMinX(v31);
  if (MinX < v21)
  {
    v21 = MinX;
  }

  rect_8 = v21;
  v32.origin.x = rect;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  v23 = CGRectGetMaxX(v33);
  if (MaxX >= v23)
  {
    v23 = MaxX;
  }

  v24 = v23 - rect_8;
  if (v24 < 0.0)
  {
    v24 = -v24;
  }

  v25 = rect_16;
  result.height = v25;
  result.width = v24;
  return result;
}

- (UIView)timeView
{
  v2 = [(SBFLockScreenDateView *)self prominentDisplayViewController];
  v3 = [v2 view];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getCSProminentDisplayViewClass_softClass;
  v15 = getCSProminentDisplayViewClass_softClass;
  if (!getCSProminentDisplayViewClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getCSProminentDisplayViewClass_block_invoke;
    v11[3] = &unk_1E807F028;
    v11[4] = &v12;
    __getCSProminentDisplayViewClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 timeView];

  return v9;
}

- (CGRect)chargingVisualInformationTimeFrame
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:0.0];
  v6 = self->_restingFrame.origin.x + v5;
  v8 = v7 + self->_restingFrame.origin.y;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGRect)chargingVisualInformationTimeSubtitleFrame
{
  customSubtitleView = self->_customSubtitleView;
  if (!customSubtitleView)
  {
    customSubtitleView = self->_dateSubtitleView;
  }

  [(SBFLockScreenDateView *)self _subtitleViewFrameForView:customSubtitleView alignmentPercent:0.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(SBFLockScreenDateView *)self chargingVisualInformationTimeFrame];
  v11 = v10;
  v12 = v5 + self->_restingFrame.origin.x;
  +[SBFDashBoardViewMetrics timeLabelToSubtitleLabelDifferenceY];
  v14 = v11 + v13;
  v15 = v12;
  v16 = v7;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)_setSubtitleAlpha:(double)a3
{
  if (self->_subtitleAlpha != a3)
  {
    self->_subtitleAlpha = a3;
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
  }
}

- (void)_updateLabelAlpha
{
  [(SBUILegibilityLabel *)self->_timeLabel setAlpha:self->_timeAlpha];
  [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView setAlpha:self->_subtitleAlpha];
  [(UIView *)self->_inlineComplicationView setAlpha:self->_subtitleAlpha];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setContentAlpha:1 forElements:self->_timeAlpha];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setContentAlpha:14 forElements:self->_subtitleAlpha];
  if (self->_customSubtitleView || self->_inlineComplicationView)
  {
    dateSubtitleView = self->_dateSubtitleView;
    subtitleAlpha = 0.0;
  }

  else
  {
    dateSubtitleView = self->_dateSubtitleView;
    subtitleAlpha = self->_subtitleAlpha;
  }

  [(SBFLockScreenDateSubtitleDateView *)dateSubtitleView setAlpha:subtitleAlpha];
}

- (id)_effectiveTextColor
{
  overrideTextColor = self->_overrideTextColor;
  if (overrideTextColor)
  {
    v3 = overrideTextColor;
  }

  else
  {
    v3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return v3;
}

- (CGRect)_timeLabelFrameForAlignmentPercent:(double)a3
{
  [(SBUILegibilityLabel *)self->_timeLabel frame];
  v6 = v5;
  v8 = v7;
  v9 = [(SBUILegibilityLabel *)self->_timeLabel string];
  [(SBFLockScreenDateView *)self _timeLabelInsetsForTimeString:v9];
  v11 = v10;
  v13 = v12;

  [(SBFLockScreenDateView *)self bounds];
  v15 = (a3 + 1.0) * (v14 - v11 - v13 - v6) * 0.5;
  v16 = 0.0;
  if (self->_subtitleOnTop)
  {
    [(SBFLockScreenDateView *)self bounds];
    v16 = CGRectGetHeight(v26) - (self->_customTimeMetrics.capHeight - self->_customTimeMetrics.descender);
  }

  v17 = v11 + v15;
  if (_SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent())
  {
    SBFMainScreenScale();
    BSRectRoundForScale();
    v17 = v18;
    v16 = v19;
    v6 = v20;
    v8 = v21;
  }

  v22 = v17;
  v23 = v16;
  v24 = v6;
  v25 = v8;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (UIEdgeInsets)_timeLabelInsetsForTimeString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 substringWithRange:{0, 1}];
    v6 = [v4 substringWithRange:{objc_msgSend(v4, "length") - 1, 1}];
    [(SBFLockScreenDateView *)self _cachedGlyphInsetsTimeFontForString:v5];
    v8 = v7;
    [(SBFLockScreenDateView *)self _cachedGlyphInsetsTimeFontForString:v6];
    v10 = v9;
    if ([v6 isEqualToString:@"1"])
    {
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      UIRoundToScreenScale();
      v10 = v12;
    }

    v13 = -v8;
    v14 = -v10;

    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v16 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v17 = v15;
  v18 = v13;
  v19 = v16;
  v20 = v14;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (UIEdgeInsets)_cachedGlyphInsetsTimeFontForString:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_cachedGlyphInsetsTimeFontForString__onceToken != -1)
  {
    [SBFLockScreenDateView _cachedGlyphInsetsTimeFontForString:];
  }

  v5 = [_cachedGlyphInsetsTimeFontForString__leadingInsetForNumber objectForKeyedSubscript:v4];
  v6 = [_cachedGlyphInsetsTimeFontForString__trailingInsetForNumber objectForKeyedSubscript:v4];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    customTimeFont = self->_customTimeFont;
    v31 = *MEMORY[0x1E69DB648];
    v32[0] = customTimeFont;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v11 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
    [v4 boundingRectWithSize:8 options:v10 attributes:0 context:{*MEMORY[0x1E695F060], v12}];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    [v4 boundingRectWithSize:0 options:v10 attributes:0 context:{v11, v12}];
    UIRectIntegralWithScale();
    v18 = v17;
    v20 = v14 - v19;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v14 - v19];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v18 - v16 - v20];

    [_cachedGlyphInsetsTimeFontForString__leadingInsetForNumber setObject:v21 forKeyedSubscript:v4];
    [_cachedGlyphInsetsTimeFontForString__trailingInsetForNumber setObject:v22 forKeyedSubscript:v4];

    v7 = v22;
    v5 = v21;
  }

  [v5 floatValue];
  v24 = v23;
  [v7 floatValue];
  v26 = v25;

  v27 = v24;
  v28 = v26;
  v29 = 0.0;
  v30 = 0.0;
  result.right = v28;
  result.bottom = v30;
  result.left = v27;
  result.top = v29;
  return result;
}

uint64_t __61__SBFLockScreenDateView__cachedGlyphInsetsTimeFontForString___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v1 = _cachedGlyphInsetsTimeFontForString__leadingInsetForNumber;
  _cachedGlyphInsetsTimeFontForString__leadingInsetForNumber = v0;

  _cachedGlyphInsetsTimeFontForString__trailingInsetForNumber = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];

  return MEMORY[0x1EEE66BB8]();
}

- (CGRect)_subtitleViewFrameForView:(id)a3 alignmentPercent:(double)a4
{
  [a3 frame];
  v7 = v6;
  v9 = v8;
  [(SBFLockScreenDateView *)self maximumSubtitleWidth];
  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(SBFLockScreenDateView *)self bounds];
    v14 = (v15 - v7) * 0.5 + a4 * ((v15 - v7) * 0.5);
  }

  else
  {
    [(SBFLockScreenDateView *)self bounds];
    v14 = (a4 + 1.0) * (v13 - v7) * 0.5;
  }

  +[SBFDashBoardViewMetrics timeToSubtitleLabelBaselineDifferenceY];
  dateToTimeStretch = self->_dateToTimeStretch;
  if (dateToTimeStretch < 0.0)
  {
    dateToTimeStretch = 0.0;
  }

  v18 = v16 + dateToTimeStretch;
  if (self->_subtitleOnTop)
  {
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    v20 = v19;
    v22 = v21;
    [(SBUILegibilityLabel *)self->_timeLabel origin];
    v24 = v23 + self->_customTimeMetrics.ascender - self->_customTimeMetrics.capHeight - v18 - (v20 - v22);
  }

  else
  {
    [(SBUILegibilityLabel *)self->_timeLabel origin];
    v26 = v18 + v25 + self->_customTimeMetrics.ascender;
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    v24 = v26 - v27;
  }

  if (_SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent())
  {
    SBFMainScreenScale();
    BSRectRoundForScale();
    v14 = v28;
    v24 = v29;
    v7 = v30;
    v9 = v31;
  }

  v32 = v14;
  v33 = v24;
  v34 = v7;
  v35 = v9;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

+ (id)timeFont
{
  if (timeFont_onceToken != -1)
  {
    +[SBFLockScreenDateView timeFont];
  }

  v3 = timeFont_timeFont;
  if (!timeFont_timeFont)
  {
    v4 = __sb__runningInSpringBoard();
    if (v4)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v146 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v118 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v118 userInterfaceIdiom] != 1)
      {
        v146 = 0x100000000;
        goto LABEL_13;
      }
    }

    HIDWORD(v146) = v4 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v5 = __sb__runningInSpringBoard();
      if (v5)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v119 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v119 _referenceBounds];
      }

      LODWORD(v146) = v5 ^ 1;
      BSSizeRoundForScale();
      if (v19 == *(MEMORY[0x1E69D4380] + 288) && v18 == *(MEMORY[0x1E69D4380] + 296))
      {
        v136 = 0;
        v137 = 0;
        v135 = 0;
        v134 = 0;
        v138 = 0;
        v133 = 0;
        v132 = 0;
        v139 = 0;
        v131 = 0;
        v130 = 0;
        v120 = 0;
        v140 = 0;
        v141 = 0;
        v129 = 0;
        v128 = 0;
        v142 = 0;
        v127 = 0;
        v126 = 0;
        v143 = 0;
        v125 = 0;
        v124 = 0;
        v144 = 0;
        v123 = 0;
        v122 = 0;
        v145 = 0;
        v121 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v146) = 0;
    }

LABEL_13:
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v145 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v117 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v117 userInterfaceIdiom] != 1)
      {
        v145 = 0x100000000;
        goto LABEL_22;
      }
    }

    HIDWORD(v145) = v6 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v5 = __sb__runningInSpringBoard();
      if (v5)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v109 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v109 _referenceBounds];
      }

      LODWORD(v145) = v5 ^ 1;
      BSSizeRoundForScale();
      if (v21 >= *(MEMORY[0x1E69D4380] + 440))
      {
        v136 = 0;
        v137 = 0;
        v135 = 0;
        v134 = 0;
        v138 = 0;
        v133 = 0;
        v132 = 0;
        v139 = 0;
        v131 = 0;
        v130 = 0;
        v120 = 0;
        v140 = 0;
        v141 = 0;
        v129 = 0;
        v128 = 0;
        v142 = 0;
        v127 = 0;
        v126 = 0;
        v143 = 0;
        v125 = 0;
        v124 = 0;
        v144 = 0;
        v123 = 0;
        v122 = 0;
        v121 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v145) = 0;
    }

LABEL_22:
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v144 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v116 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v116 userInterfaceIdiom] != 1)
      {
        v144 = 0x100000000;
        goto LABEL_31;
      }
    }

    HIDWORD(v144) = v7 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v5 = __sb__runningInSpringBoard();
      if (v5)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v108 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v108 _referenceBounds];
      }

      LODWORD(v144) = v5 ^ 1;
      BSSizeRoundForScale();
      if (v22 >= *(MEMORY[0x1E69D4380] + 376))
      {
        v136 = 0;
        v137 = 0;
        v135 = 0;
        v134 = 0;
        v138 = 0;
        v133 = 0;
        v132 = 0;
        v139 = 0;
        v131 = 0;
        v130 = 0;
        v120 = 0;
        v140 = 0;
        v141 = 0;
        v129 = 0;
        v128 = 0;
        v142 = 0;
        v127 = 0;
        v126 = 0;
        v143 = 0;
        v125 = 0;
        v124 = 0;
        v122 = 0;
        v123 = 0;
        v121 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v144) = 0;
    }

LABEL_31:
    v8 = __sb__runningInSpringBoard();
    if (v8)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v143 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v115 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v115 userInterfaceIdiom] != 1)
      {
        v143 = 0x100000000;
        goto LABEL_40;
      }
    }

    HIDWORD(v143) = v8 ^ 1;
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v112 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v112 _referenceBounds];
    }

    LODWORD(v143) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v9 >= *(MEMORY[0x1E69D4380] + 280))
    {
      v136 = 0;
      v137 = 0;
      v135 = 0;
      v134 = 0;
      v138 = 0;
      v133 = 0;
      v132 = 0;
      v139 = 0;
      v131 = 0;
      v130 = 0;
      v120 = 0;
      v140 = 0;
      v141 = 0;
      v129 = 0;
      v128 = 0;
      v142 = 0;
      v127 = 0;
      v126 = 0;
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v121 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_40:
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v142 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v114 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v114 userInterfaceIdiom] != 1)
      {
        v142 = 0x100000000;
        goto LABEL_50;
      }
    }

    HIDWORD(v142) = v10 ^ 1;
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v110 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v110 _referenceBounds];
    }

    LODWORD(v142) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v16 >= *(MEMORY[0x1E69D4380] + 264))
    {
      v136 = 0;
      v137 = 0;
      v135 = 0;
      v134 = 0;
      v138 = 0;
      v133 = 0;
      v132 = 0;
      v139 = 0;
      v131 = 0;
      v130 = 0;
      v120 = 0;
      v140 = 0;
      v141 = 0;
      v129 = 0;
      v128 = 0;
      v126 = 0;
      v127 = 0;
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v121 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_50:
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v141 = 0;
        goto LABEL_191;
      }
    }

    else
    {
      v113 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v113 userInterfaceIdiom] != 1)
      {
        v141 = 0x100000000;
        goto LABEL_191;
      }
    }

    HIDWORD(v141) = v17 ^ 1;
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v107 _referenceBounds];
    }

    LODWORD(v141) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x1E69D4380] + 248))
    {
      v136 = 0;
      v137 = 0;
      v135 = 0;
      v134 = 0;
      v138 = 0;
      v133 = 0;
      v132 = 0;
      v139 = 0;
      v131 = 0;
      v130 = 0;
      v120 = 0;
      v140 = 0;
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v121 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_191:
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v111 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v111 userInterfaceIdiom] != 1)
      {
LABEL_193:
        v140 = v5 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_197:
          v139 = 0;
          goto LABEL_207;
        }

        v30 = __sb__runningInSpringBoard();
        if (v30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v105 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v105 userInterfaceIdiom])
          {
            v139 = 0x100000000;
            goto LABEL_207;
          }
        }

        HIDWORD(v139) = v30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v98 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v98 _referenceBounds];
          }

          LODWORD(v139) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v33 >= *(MEMORY[0x1E69D4380] + 200))
          {
            v136 = 0;
            v137 = 0;
            v135 = 0;
            v134 = 0;
            v138 = 0;
            v133 = 0;
            v132 = 0;
            v131 = 0;
            v129 = 0;
            v130 = 0;
            v120 = 0;
            v127 = 0;
            v128 = 0;
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v139) = 0;
        }

LABEL_207:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v138 = 0;
            goto LABEL_217;
          }
        }

        else
        {
          v106 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v106 userInterfaceIdiom])
          {
            v138 = 0x100000000;
            goto LABEL_217;
          }
        }

        HIDWORD(v138) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v101 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v101 _referenceBounds];
          }

          LODWORD(v138) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v31 >= *(MEMORY[0x1E69D4380] + 200))
          {
            goto LABEL_221;
          }
        }

        else
        {
          LODWORD(v138) = 0;
        }

LABEL_217:
        if (_SBF_Private_IsD94Like())
        {
          v136 = 0;
          v137 = 0;
          v135 = 0;
          v134 = 0;
          v133 = 0;
          v132 = 0;
          v131 = 0;
          v129 = 0;
          v130 = 0;
          v120 = 0;
          v127 = 0;
          v128 = 0;
          v125 = 0;
          v126 = 0;
          v123 = 0;
          v124 = 0;
          v121 = 0;
          v122 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_221:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_225:
          v137 = 0;
          goto LABEL_235;
        }

        v32 = __sb__runningInSpringBoard();
        if (v32)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v102 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v102 userInterfaceIdiom])
          {
            v137 = 0x100000000;
            goto LABEL_235;
          }
        }

        HIDWORD(v137) = v32 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v93 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v93 _referenceBounds];
          }

          LODWORD(v137) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v37 >= *(MEMORY[0x1E69D4380] + 136))
          {
            v136 = 0;
            v135 = 0;
            v134 = 0;
            v133 = 0;
            v132 = 0;
            v131 = 0;
            v129 = 0;
            v130 = 0;
            v120 = 0;
            v127 = 0;
            v128 = 0;
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v137) = 0;
        }

LABEL_235:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v136 = 0;
            goto LABEL_245;
          }
        }

        else
        {
          v104 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v104 userInterfaceIdiom])
          {
            v136 = 0x100000000;
            goto LABEL_245;
          }
        }

        HIDWORD(v136) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v97 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v97 _referenceBounds];
          }

          LODWORD(v136) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v34 >= *(MEMORY[0x1E69D4380] + 136))
          {
            goto LABEL_249;
          }
        }

        else
        {
          LODWORD(v136) = 0;
        }

LABEL_245:
        if (_SBF_Private_IsD64Like())
        {
          v135 = 0;
          v134 = 0;
          v133 = 0;
          v132 = 0;
          v131 = 0;
          v129 = 0;
          v130 = 0;
          v120 = 0;
          v127 = 0;
          v128 = 0;
          v125 = 0;
          v126 = 0;
          v123 = 0;
          v124 = 0;
          v121 = 0;
          v122 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_249:
        v35 = __sb__runningInSpringBoard();
        if (v35)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v135 = 0;
            goto LABEL_259;
          }
        }

        else
        {
          v103 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v103 userInterfaceIdiom])
          {
            v135 = 0x100000000;
            goto LABEL_259;
          }
        }

        HIDWORD(v135) = v35 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v94 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v94 _referenceBounds];
          }

          LODWORD(v135) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v36 >= *(MEMORY[0x1E69D4380] + 136))
          {
            v134 = 0;
            v133 = 0;
            v132 = 0;
            v131 = 0;
            v129 = 0;
            v130 = 0;
            v120 = 0;
            v127 = 0;
            v128 = 0;
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v135) = 0;
        }

LABEL_259:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v134 = 0;
            HIDWORD(v133) = 0;
            goto LABEL_269;
          }
        }

        else
        {
          v100 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v100 userInterfaceIdiom])
          {
            HIDWORD(v133) = 0;
            v134 = 1;
            goto LABEL_269;
          }
        }

        v134 = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v92 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v92 _referenceBounds];
          }

          HIDWORD(v133) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v38 >= *(MEMORY[0x1E69D4380] + 136))
          {
            goto LABEL_279;
          }
        }

        else
        {
          HIDWORD(v133) = 0;
        }

LABEL_269:
        if (_SBF_Private_IsD54())
        {
          LODWORD(v133) = 0;
          v132 = 0;
          v131 = 0;
          v129 = 0;
          v130 = 0;
          v120 = 0;
          v127 = 0;
          v128 = 0;
          v125 = 0;
          v126 = 0;
          v123 = 0;
          v124 = 0;
          v121 = 0;
          v122 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_279:
        v39 = __sb__runningInSpringBoard();
        if (v39)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v133) = 0;
            HIDWORD(v132) = 0;
            goto LABEL_289;
          }
        }

        else
        {
          v99 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v99 userInterfaceIdiom])
          {
            HIDWORD(v132) = 0;
            LODWORD(v133) = 1;
            goto LABEL_289;
          }
        }

        LODWORD(v133) = v39 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v40 = __sb__runningInSpringBoard();
          if (v40)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v89 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v89 _referenceBounds];
          }

          v5 = v40 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v132) = v5;
          if (v41 >= *(MEMORY[0x1E69D4380] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            LODWORD(v132) = 0;
            v131 = 0;
            v129 = 0;
            v130 = 0;
            v120 = 0;
            v127 = 0;
            v128 = 0;
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          HIDWORD(v132) = 0;
        }

LABEL_289:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v132) = 0;
            HIDWORD(v131) = 0;
            goto LABEL_299;
          }
        }

        else
        {
          v96 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v96 userInterfaceIdiom])
          {
            HIDWORD(v131) = 0;
            LODWORD(v132) = 1;
            goto LABEL_299;
          }
        }

        LODWORD(v132) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v88 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v88 _referenceBounds];
          }

          HIDWORD(v131) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v42 >= *(MEMORY[0x1E69D4380] + 120))
          {
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v131) = 0;
        }

LABEL_299:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v131) = 0;
          v129 = 0;
          v130 = 0;
          v120 = 0;
          v127 = 0;
          v128 = 0;
          v125 = 0;
          v126 = 0;
          v123 = 0;
          v124 = 0;
          v121 = 0;
          v122 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_308:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_312:
          LODWORD(v131) = 0;
          HIDWORD(v130) = 0;
          goto LABEL_319;
        }

        v43 = __sb__runningInSpringBoard();
        if (v43)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v91 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v91 userInterfaceIdiom])
          {
            HIDWORD(v130) = 0;
            LODWORD(v131) = 1;
            goto LABEL_319;
          }
        }

        LODWORD(v131) = v43 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v82 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v82 _referenceBounds];
          }

          HIDWORD(v130) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v46 >= *(MEMORY[0x1E69D4380] + 184))
          {
            LODWORD(v130) = 0;
            v120 = 0;
            v128 = 0;
            v129 = 0;
            v126 = 0;
            v127 = 0;
            v124 = 0;
            v125 = 0;
            v122 = 0;
            v123 = 0;
            v121 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          HIDWORD(v130) = 0;
        }

LABEL_319:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v130) = 0;
            v120 = 0;
            goto LABEL_329;
          }
        }

        else
        {
          v95 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v95 userInterfaceIdiom])
          {
            v120 = 0;
            LODWORD(v130) = 1;
            goto LABEL_329;
          }
        }

        LODWORD(v130) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v85 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v85 _referenceBounds];
          }

          v120 = v5 ^ 1;
          BSSizeRoundForScale();
          if (v44 >= *(MEMORY[0x1E69D4380] + 184))
          {
            goto LABEL_333;
          }
        }

        else
        {
          v120 = 0;
        }

LABEL_329:
        if (_SBF_Private_IsD93Like())
        {
          v128 = 0;
          v129 = 0;
          v126 = 0;
          v127 = 0;
          v124 = 0;
          v125 = 0;
          v122 = 0;
          v123 = 0;
          v121 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_333:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_337:
          v129 = 0;
          goto LABEL_347;
        }

        v45 = __sb__runningInSpringBoard();
        if (v45)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_337;
          }
        }

        else
        {
          v87 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v87 userInterfaceIdiom])
          {
            v129 = 0x100000000;
            goto LABEL_347;
          }
        }

        HIDWORD(v129) = v45 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v47 = __sb__runningInSpringBoard();
          if (v47)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v78 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v78 _referenceBounds];
          }

          v5 = v47 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v129) = v5;
          if (v50 >= *(MEMORY[0x1E69D4380] + 104))
          {
            v127 = 0;
            v128 = 0;
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v129) = 0;
        }

LABEL_347:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v128 = 0;
            goto LABEL_357;
          }
        }

        else
        {
          v90 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v90 userInterfaceIdiom])
          {
            v128 = 0x100000000;
            goto LABEL_357;
          }
        }

        HIDWORD(v128) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v81 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v81 _referenceBounds];
          }

          LODWORD(v128) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v48 >= *(MEMORY[0x1E69D4380] + 104))
          {
            goto LABEL_361;
          }
        }

        else
        {
          LODWORD(v128) = 0;
        }

LABEL_357:
        if (_SBF_Private_IsD63Like())
        {
          v126 = 0;
          v127 = 0;
          v124 = 0;
          v125 = 0;
          v122 = 0;
          v123 = 0;
          v121 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_361:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_365:
          v127 = 0;
          goto LABEL_375;
        }

        v49 = __sb__runningInSpringBoard();
        if (v49)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_365;
          }
        }

        else
        {
          v83 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v83 userInterfaceIdiom])
          {
            v127 = 0x100000000;
            goto LABEL_375;
          }
        }

        HIDWORD(v127) = v49 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v74 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v74 _referenceBounds];
          }

          LODWORD(v127) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v54 >= *(MEMORY[0x1E69D4380] + 216))
          {
            v125 = 0;
            v126 = 0;
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v127) = 0;
        }

LABEL_375:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v126 = 0;
            goto LABEL_385;
          }
        }

        else
        {
          v86 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v86 userInterfaceIdiom])
          {
            v126 = 0x100000000;
            goto LABEL_385;
          }
        }

        HIDWORD(v126) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v77 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v77 _referenceBounds];
          }

          LODWORD(v126) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v51 >= *(MEMORY[0x1E69D4380] + 216))
          {
            goto LABEL_389;
          }
        }

        else
        {
          LODWORD(v126) = 0;
        }

LABEL_385:
        if (_SBF_Private_IsD23Like())
        {
          v124 = 0;
          v125 = 0;
          v122 = 0;
          v123 = 0;
          v121 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_389:
        v52 = __sb__runningInSpringBoard();
        if (v52)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v125 = 0;
            goto LABEL_399;
          }
        }

        else
        {
          v84 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v84 userInterfaceIdiom])
          {
            v125 = 0x100000000;
            goto LABEL_399;
          }
        }

        HIDWORD(v125) = v52 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v75 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v75 _referenceBounds];
          }

          LODWORD(v125) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v53 >= *(MEMORY[0x1E69D4380] + 120))
          {
            v123 = 0;
            v124 = 0;
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v125) = 0;
        }

LABEL_399:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v124 = 0;
            goto LABEL_409;
          }
        }

        else
        {
          v80 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v80 userInterfaceIdiom])
          {
            v124 = 0x100000000;
            goto LABEL_409;
          }
        }

        HIDWORD(v124) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v73 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v73 _referenceBounds];
          }

          LODWORD(v124) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v55 >= *(MEMORY[0x1E69D4380] + 120))
          {
            goto LABEL_419;
          }
        }

        else
        {
          LODWORD(v124) = 0;
        }

LABEL_409:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v122 = 0;
          v123 = 0;
          v121 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_419:
        v56 = __sb__runningInSpringBoard();
        if (v56)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v123 = 0;
            goto LABEL_429;
          }
        }

        else
        {
          v79 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v79 userInterfaceIdiom])
          {
            v123 = 0x100000000;
            goto LABEL_429;
          }
        }

        HIDWORD(v123) = v56 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v72 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v72 _referenceBounds];
          }

          LODWORD(v123) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v57 >= *(MEMORY[0x1E69D4380] + 104))
          {
            v121 = 0;
            v122 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v123) = 0;
        }

LABEL_429:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v122 = 0;
            goto LABEL_439;
          }
        }

        else
        {
          v76 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v76 userInterfaceIdiom])
          {
            v122 = 0x100000000;
            goto LABEL_439;
          }
        }

        HIDWORD(v122) = v5 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v71 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v71 _referenceBounds];
          }

          LODWORD(v122) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v58 >= *(MEMORY[0x1E69D4380] + 104))
          {
            goto LABEL_446;
          }
        }

        else
        {
          LODWORD(v122) = 0;
        }

LABEL_439:
        if (_SBF_Private_IsD53())
        {
LABEL_452:
          v121 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_446:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice() & 1) != 0)
        {
          goto LABEL_452;
        }

        v59 = __sb__runningInSpringBoard();
        if (v59)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v121 = 0;
            goto LABEL_463;
          }
        }

        else
        {
          v70 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v70 userInterfaceIdiom])
          {
            v121 = 0x100000000;
            goto LABEL_463;
          }
        }

        HIDWORD(v121) = v59 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v67 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v67 _referenceBounds];
          }

          LODWORD(v121) = v5 ^ 1;
          BSSizeRoundForScale();
          if (v63 >= *(MEMORY[0x1E69D4380] + 88))
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v121) = 0;
        }

LABEL_463:
        v60 = __sb__runningInSpringBoard();
        if (v60)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v11 = 0;
            v12 = 0;
            goto LABEL_473;
          }
        }

        else
        {
          v69 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v69 userInterfaceIdiom])
          {
            v12 = 0;
            v11 = 1;
            goto LABEL_473;
          }
        }

        v11 = v60 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = __sb__runningInSpringBoard();
          if (v5)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v66 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v66 _referenceBounds];
          }

          v12 = v5 ^ 1;
          BSSizeRoundForScale();
          if (v64 >= *(MEMORY[0x1E69D4380] + 72))
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          v12 = 0;
        }

LABEL_473:
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v13 = 0;
            v14 = 0;
LABEL_483:
            v62 = __sb__runningInSpringBoard();
            if (v62)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
LABEL_486:
                v15 = 0;
                goto LABEL_499;
              }
            }

            else
            {
              v5 = [MEMORY[0x1E69DC938] currentDevice];
              if ([v5 userInterfaceIdiom])
              {
                v15 = 1;
                goto LABEL_499;
              }
            }

            v15 = v62 ^ 1;
            v65 = __sb__runningInSpringBoard();
            if (v65)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v62 = [MEMORY[0x1E69DCEB0] mainScreen];
              [v62 _referenceBounds];
            }

            BSSizeRoundForScale();
            if (v65 != 1)
            {

              if (v15)
              {
                goto LABEL_500;
              }

              goto LABEL_71;
            }

LABEL_499:
            if (v15)
            {
LABEL_500:

              if (!v14)
              {
LABEL_73:
                if (v13)
                {

                  if (!v12)
                  {
                    goto LABEL_75;
                  }
                }

                else if (!v12)
                {
LABEL_75:
                  if (!v11)
                  {
LABEL_77:
                    if (v121)
                    {
                    }

                    if (HIDWORD(v121))
                    {
                    }

                    if (v122)
                    {
                    }

                    if (HIDWORD(v122))
                    {
                    }

                    if (v123)
                    {
                    }

                    if (HIDWORD(v123))
                    {
                    }

                    if (v124)
                    {
                    }

                    if (HIDWORD(v124))
                    {
                    }

                    if (v125)
                    {
                    }

                    if (HIDWORD(v125))
                    {
                    }

                    if (v126)
                    {
                    }

                    if (HIDWORD(v126))
                    {
                    }

                    if (v127)
                    {
                    }

                    if (HIDWORD(v127))
                    {
                    }

                    if (v128)
                    {
                    }

                    if (HIDWORD(v128))
                    {
                    }

                    if (v129)
                    {
                    }

                    if (HIDWORD(v129))
                    {
                    }

                    if (v120)
                    {
                    }

                    if (v130)
                    {
                    }

                    if (HIDWORD(v130))
                    {
                    }

                    if (v131)
                    {
                    }

                    if (HIDWORD(v131))
                    {
                    }

                    if (v132)
                    {
                    }

                    if (HIDWORD(v132))
                    {
                    }

                    if (v133)
                    {
                    }

                    if (HIDWORD(v133))
                    {
                    }

                    if (v134)
                    {
                    }

                    if (v135)
                    {
                    }

                    if (HIDWORD(v135))
                    {
                    }

                    if (v136)
                    {
                    }

                    if (HIDWORD(v136))
                    {
                    }

                    if (v137)
                    {
                    }

                    if (HIDWORD(v137))
                    {
                    }

                    if (v138)
                    {
                    }

                    if (HIDWORD(v138))
                    {
                    }

                    if (v139)
                    {
                    }

                    if (HIDWORD(v139))
                    {
                    }

                    if (v140)
                    {
                    }

                    if (v141)
                    {
                    }

                    if (HIDWORD(v141))
                    {
                    }

                    if (v142)
                    {
                    }

                    if (HIDWORD(v142))
                    {
                    }

                    if (v143)
                    {
                    }

                    if (HIDWORD(v143))
                    {
                    }

                    if (v144)
                    {
                    }

                    if (HIDWORD(v144))
                    {
                    }

                    if (v145)
                    {
                    }

                    if (HIDWORD(v145))
                    {
                    }

                    if (v146)
                    {
                    }

                    if (HIDWORD(v146))
                    {
                    }

                    v148 = 0;
                    v149 = &v148;
                    v150 = 0x2050000000;
                    v23 = getCSProminentLayoutControllerClass_softClass;
                    v151 = getCSProminentLayoutControllerClass_softClass;
                    if (!getCSProminentLayoutControllerClass_softClass)
                    {
                      v147[0] = MEMORY[0x1E69E9820];
                      v147[1] = 3221225472;
                      v147[2] = __getCSProminentLayoutControllerClass_block_invoke;
                      v147[3] = &unk_1E807F028;
                      v147[4] = &v148;
                      __getCSProminentLayoutControllerClass_block_invoke(v147);
                      v23 = v149[3];
                    }

                    v24 = v23;
                    _Block_object_dispose(&v148, 8);
                    [v23 fontSizeForElementType:1 isLandscapeVariant:{(objc_msgSend(*MEMORY[0x1E69DDA98], "activeInterfaceOrientation") - 3) < 2}];
                    v26 = CTFontCreateWithNameAndOptions(@".SFSoftTime-Semibold", v25, 0, 0x20000uLL);
                    v27 = timeFont_timeFont;
                    timeFont_timeFont = v26;

                    v3 = timeFont_timeFont;
                    goto LABEL_182;
                  }

LABEL_76:

                  goto LABEL_77;
                }

                if (!v11)
                {
                  goto LABEL_77;
                }

                goto LABEL_76;
              }

LABEL_72:

              goto LABEL_73;
            }

LABEL_71:
            if (!v14)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }
        }

        else
        {
          v68 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v68 userInterfaceIdiom])
          {
            v14 = 0;
            v13 = 1;
            goto LABEL_483;
          }
        }

        v13 = v5 ^ 1;
        v5 = __sb__runningInSpringBoard();
        if (v5)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v2 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v2 _referenceBounds];
        }

        v14 = v5 ^ 1;
        BSSizeRoundForScale();
        if (v61 >= *(MEMORY[0x1E69D4380] + 56))
        {
          goto LABEL_486;
        }

        goto LABEL_483;
      }
    }

    v136 = 0;
    v137 = 0;
    v135 = 0;
    v134 = 0;
    v138 = 0;
    v133 = 0;
    v132 = 0;
    v139 = 0;
    v131 = 0;
    v130 = 0;
    v120 = 0;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v121 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v140 = v5 ^ 1;
    goto LABEL_499;
  }

LABEL_182:

  return v3;
}

void __33__SBFLockScreenDateView_timeFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_47];
}

void __33__SBFLockScreenDateView_timeFont__block_invoke_2()
{
  v0 = timeFont_timeFont;
  timeFont_timeFont = 0;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)timeFontMetrics
{
  if (timeFontMetrics_onceToken[0] != -1)
  {
    +[SBFLockScreenDateView timeFontMetrics];
  }

  v3 = *&timeFontMetrics_timeFontMetrics;
  v4 = *&qword_1ED69D270;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(timeFontMetrics_timeFontMetrics, SBFFontMetricsZero), vceqq_f64(*&qword_1ED69D270, unk_1BEAD5BD8)))))
  {
    v7 = [a1 timeFont];
    [a1 metricsForFont:v7];
    *&timeFontMetrics_timeFontMetrics = v8;
    *(&timeFontMetrics_timeFontMetrics + 1) = v9;
    qword_1ED69D270 = v10;
    dbl_1ED69D278 = v11;

    v5 = *(&timeFontMetrics_timeFontMetrics + 1);
    v3 = *&timeFontMetrics_timeFontMetrics;
    v4 = *&qword_1ED69D270;
  }

  else
  {
    v5 = *(&timeFontMetrics_timeFontMetrics + 1);
  }

  v6 = dbl_1ED69D278;
  result.var3 = v6;
  result.var2 = v4;
  result.var1 = v5;
  result.var0 = v3;
  return result;
}

void __40__SBFLockScreenDateView_timeFontMetrics__block_invoke()
{
  timeFontMetrics_timeFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D270 = unk_1BEAD5BD8;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_54];
}

double __40__SBFLockScreenDateView_timeFontMetrics__block_invoke_2()
{
  result = *&SBFFontMetricsZero;
  timeFontMetrics_timeFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D270 = unk_1BEAD5BD8;
  return result;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)metricsForFont:(id)a3
{
  v3 = a3;
  [v3 ascender];
  v5 = v4;
  [v3 descender];
  v7 = v6;
  [v3 _bodyLeading];
  v9 = v8;
  [v3 capHeight];
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (double)timeBaselineOffsetFromOrigin
{
  [(SBUILegibilityLabel *)self->_timeLabel frame];
  MaxY = CGRectGetMaxY(v6);
  [(SBUILegibilityLabel *)self->_timeLabel firstBaselineOffsetFromBottom];
  return MaxY - v4;
}

- (double)subtitleBaselineOffsetFromOrigin
{
  if (self->_customSubtitleView)
  {
    customSubtitleView = self->_customSubtitleView;
  }

  else
  {
    customSubtitleView = self->_dateSubtitleView;
  }

  [(SBFLockScreenDateSubtitleView *)customSubtitleView baselineOffsetFromOrigin];
  return result;
}

- (void)_updatePreferredContentSizeCategoryForEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(SBFLockScreenDateView *)self traitCollection];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 preferredContentSizeCategory];
    v9 = [v5 preferredContentSizeCategory];
    v10 = [v8 isEqualToString:v9];

    v11 = [v7 legibilityWeight];
    v12 = [v5 legibilityWeight];
    if (!v10 || v11 != v12)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __99__SBFLockScreenDateView__updatePreferredContentSizeCategoryForEnvironment_previousTraitCollection___block_invoke;
      block[3] = &unk_1E807F178;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_updateAdaptiveTime
{
  v13 = *MEMORY[0x1E69E9840];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setBaseFont:self->_customTimeFont];
  v3 = _os_feature_enabled_impl();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = !self->_posterHasComplications;
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = self->_timeSupportsStretch && v4;
    goto LABEL_8;
  }

  v4 = 1;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 0;
LABEL_8:
  v6 = v5;
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAdaptsTimeTextHeight:v5];
LABEL_9:
  maximumAdaptiveTimeTextHeight = self->_maximumAdaptiveTimeTextHeight;
  if (objc_opt_respondsToSelector())
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController maximumAdaptiveTimeTextHeight];
    if (v8 >= self->_maximumAdaptiveTimeTextHeight)
    {
      maximumAdaptiveTimeTextHeight = self->_maximumAdaptiveTimeTextHeight;
    }

    else
    {
      maximumAdaptiveTimeTextHeight = v8;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAdaptiveTimeTextHeight:maximumAdaptiveTimeTextHeight];
  }

  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 2048;
    v12 = maximumAdaptiveTimeTextHeight;
    _os_log_impl(&dword_1BEA11000, v9, OS_LOG_TYPE_DEFAULT, "[Adaptive Time] Time adapts text height: %{BOOL}u with maximum height: %f", v10, 0x12u);
  }
}

- (void)_updateForNewFont
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(SBUILegibilityLabel *)self->_timeLabel setFont:self->_customTimeFont];
  }

  [(SBFLockScreenDateView *)self _updateAdaptiveTime];

  [(SBFLockScreenDateView *)self _updateLabels];
}

- (void)setTimeGlassInterfaceStyle:(int64_t)a3
{
  if (self->_timeGlassInterfaceStyle != a3)
  {
    self->_timeGlassInterfaceStyle = a3;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTimeGlassInterfaceStyle:?];
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)customTimeMetrics
{
  ascender = self->_customTimeMetrics.ascender;
  descender = self->_customTimeMetrics.descender;
  bodyLeading = self->_customTimeMetrics.bodyLeading;
  capHeight = self->_customTimeMetrics.capHeight;
  result.var3 = capHeight;
  result.var2 = bodyLeading;
  result.var1 = descender;
  result.var0 = ascender;
  return result;
}

- (CGRect)restingFrame
{
  x = self->_restingFrame.origin.x;
  y = self->_restingFrame.origin.y;
  width = self->_restingFrame.size.width;
  height = self->_restingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end