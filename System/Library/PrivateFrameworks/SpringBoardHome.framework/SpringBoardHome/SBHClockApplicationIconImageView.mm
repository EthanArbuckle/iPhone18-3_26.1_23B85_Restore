@interface SBHClockApplicationIconImageView
+ (BOOL)sweepsSecondsHand;
+ (id)clockIconBackgroundTypeIdentifierForNumberingSystem:(id)a3;
+ (id)clockIconBackgroundTypeIdentifierForSystemNumberingSystem;
+ (id)effectiveDate;
+ (id)hoursMinutesHandColorWithImageAppearance:(id)a3;
+ (id)imageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4;
+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 size:(CGSize)a4 actions:(id)a5;
+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 size:(CGSize)a4 path:(CGPath *)a5 fillColor:(id)a6 options:(unint64_t)a7;
+ (id)makeDotImageWithOuterDiameter:(double)a3 innerDiameter:(double)a4 color:(id)a5 isSeconds:(BOOL)a6 metrics:(const SBHClockApplicationIconImageMetrics *)a7;
+ (id)makeDotLayerWithOuterDiameter:(double)a3 innerDiameter:(double)a4 isSeconds:(BOOL)a5 imageSet:(id)a6;
+ (id)makeHoursHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4;
+ (id)makeHoursHandLayerWithImageSet:(id)a3;
+ (id)makeImageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4;
+ (id)makeMinutesHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4;
+ (id)makeMinutesHandLayerWithImageSet:(id)a3;
+ (id)makeSecondsHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4;
+ (id)makeSecondsHandLayerWithImageSet:(id)a3;
+ (id)secondsHandColorWithImageAppearance:(id)a3;
+ (id)systemNumberingSystem;
+ (void)_displayLinkFired:(id)a3;
+ (void)_handleTimeChange:(id)a3;
+ (void)_tickTimerFired:(id)a3;
+ (void)configureHandLayer:(id)a3 metrics:(const SBHClockApplicationIconImageMetrics *)a4;
+ (void)getMetrics:(SBHClockApplicationIconImageMetrics *)a3 forIconImageInfo:(SBIconImageInfo *)a4;
+ (void)hidesSecondHandDidChange;
+ (void)initialize;
+ (void)precacheDataWithIconImageInfo:(SBIconImageInfo *)a3 appearance:(id)a4;
+ (void)setHidesSecondsHand:(BOOL)a3;
+ (void)setOverrideDate:(id)a3;
- (BOOL)areOngoingAnimationsAllowed;
- (BOOL)shouldShowSecondsHand;
- (SBHClockApplicationIconImageView)initWithFrame:(CGRect)a3;
- (float)hourMinuteHandOpacity;
- (float)secondsHandOpacity;
- (id)clockIconBackgroundTypeIdentifierForCurrentNumberingSystem;
- (id)iconForImage;
- (void)_setAnimating:(BOOL)a3;
- (void)_timerFiredWithComponents:(id)a3 flags:(unint64_t)a4;
- (void)_updateUnanimatedWithComponents:(id)a3;
- (void)applyMetrics:(const SBHClockApplicationIconImageMetrics *)a3;
- (void)clearCachedImages;
- (void)controller:(id)a3 didChangeOverrideDateFromDate:(id)a4;
- (void)didAnimateIconImageInfoChange;
- (void)getMetrics:(SBHClockApplicationIconImageMetrics *)a3;
- (void)iconImageInfoDidChange;
- (void)layoutSubviews;
- (void)localeDidChange:(id)a3;
- (void)noteIconLayerTintColorUpdated;
- (void)prepareForReuse;
- (void)resetForegroundLayers;
- (void)setHandsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5;
- (void)setPaused:(BOOL)a3;
- (void)updateImageAnimated:(BOOL)a3;
- (void)updateOngoingAnimationState;
- (void)updateSecondsHandHidden;
- (void)updateUnanimated;
- (void)willAnimateIconImageInfoChange;
@end

@implementation SBHClockApplicationIconImageView

- (BOOL)areOngoingAnimationsAllowed
{
  v3 = [objc_opt_class() overrideDate];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHClockApplicationIconImageView;
    v4 = [(SBIconImageView *)&v6 areOngoingAnimationsAllowed];
  }

  return v4;
}

- (void)updateOngoingAnimationState
{
  v6.receiver = self;
  v6.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v6 updateOngoingAnimationState];
  if ([(SBHClockApplicationIconImageView *)self areOngoingAnimationsAllowed])
  {
    v3 = [(SBIconImageView *)self icon];
    if (v3)
    {
      v4 = [objc_opt_class() overrideDate];
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  [(SBHClockApplicationIconImageView *)self _setAnimating:v5];
}

- (BOOL)shouldShowSecondsHand
{
  if ([(SBIconImageView *)self isPaused])
  {
    return 0;
  }

  else
  {
    return ![(SBHClockApplicationIconImageView *)self areHandsHidden];
  }
}

+ (id)systemNumberingSystem
{
  v2 = MEMORY[0x1E69AAE08];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];
  v5 = [v2 numberingSystemForLocaleID:v4];

  return v5;
}

- (void)resetForegroundLayers
{
  [(CALayer *)self->_hours removeFromSuperlayer];
  hours = self->_hours;
  self->_hours = 0;

  [(CALayer *)self->_minutes removeFromSuperlayer];
  minutes = self->_minutes;
  self->_minutes = 0;

  [(CALayer *)self->_seconds removeFromSuperlayer];
  seconds = self->_seconds;
  self->_seconds = 0;

  [(CALayer *)self->_secondDot removeFromSuperlayer];
  secondDot = self->_secondDot;
  self->_secondDot = 0;

  [(CALayer *)self->_hourMinuteDot removeFromSuperlayer];
  hourMinuteDot = self->_hourMinuteDot;
  self->_hourMinuteDot = 0;
}

- (void)updateUnanimated
{
  v6.receiver = self;
  v6.super_class = SBHClockApplicationIconImageView;
  [(SBLiveIconImageView *)&v6 updateUnanimated];
  v3 = _SBClockIconGetCalendar();
  v4 = [objc_opt_class() effectiveDate];
  v5 = [v3 components:224 fromDate:v4];

  [(SBHClockApplicationIconImageView *)self _updateUnanimatedWithComponents:v5];
}

+ (id)effectiveDate
{
  if (__hasSBFDateTimeOverride)
  {
    v2 = [MEMORY[0x1E69D3FB8] sharedInstance];
    v3 = [v2 currentDate];
  }

  else
  {
    v3 = [objc_opt_class() overrideDate];
  }

  [objc_opt_class() overrideDateOffset];
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] date];
  }

  v7 = v6;
  if (v5 != 0.0)
  {
    v8 = [v6 dateByAddingTimeInterval:v5];

    v7 = v8;
  }

  return v7;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v10 layoutSubviews];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  [(SBHClockApplicationIconImageView *)self getMetrics:v8];
  if (!self->_minutes)
  {
    v3 = [(SBIconImageView *)self icon];

    if (v3)
    {
      [(SBHClockApplicationIconImageView *)self applyMetrics:v8];
      [(SBHClockApplicationIconImageView *)self updateUnanimated];
    }
  }

  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  [(CALayer *)self->_hourMinuteDot setPosition:?];
  [(CALayer *)self->_hours setPosition:v5, v7];
  [(CALayer *)self->_minutes setPosition:v5, v7];
  [(CALayer *)self->_seconds setPosition:v5, v7];
  [(CALayer *)self->_secondDot setPosition:v5, v7];
}

- (float)hourMinuteHandOpacity
{
  v2 = [(SBHClockApplicationIconImageView *)self shouldShowHourMinuteHands];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (float)secondsHandOpacity
{
  v2 = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 prepareForReuse];
  [(SBHClockApplicationIconImageView *)self resetForegroundLayers];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = MGGetBoolAnswer();
    v5 = 10.0;
    if (v4)
    {
      v5 = 8.0;
    }

    v9 = CAFrameRateRangeMake(v5, 120.0, v5);
    __secondFrameRange_0 = LODWORD(v9.minimum);
    __secondFrameRange_1 = LODWORD(v9.maximum);
    __secondFrameRange_2 = LODWORD(v9.preferred);
    *&__cachedTransform = 0x3FF0000000000000;
    *(&xmmword_1ED7EE3A8 + 1) = 0x3FF0000000000000;
    qword_1ED7EE3D8 = 0x3FF0000000000000;
    qword_1ED7EE400 = 0x3FF0000000000000;
    v7 = [MEMORY[0x1E69D3FB8] sharedInstance];
    __hasSBFDateTimeOverride = [v7 hasDateOverride];
    __hidesSecondsHand = SBHPerformanceFlagEnabled(11);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:a1 selector:sel_lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }
}

+ (void)setOverrideDate:(id)a3
{
  v3 = [a3 copy];
  v4 = __overrideDate;
  __overrideDate = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (void)setHidesSecondsHand:(BOOL)a3
{
  if (__hidesSecondsHand != a3)
  {
    __hidesSecondsHand = a3;
    [a1 hidesSecondHandDidChange];
  }
}

+ (void)hidesSecondHandDidChange
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = __tickClients;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateSecondsHandHidden];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  _SBClockIconResetTimer();
}

+ (BOOL)sweepsSecondsHand
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3 ^ 1;
}

+ (void)_displayLinkFired:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *&__secondFrameRange_2;
  v4 = 128;
  if (!(__frameCount % (60 * *&__secondFrameRange_2)))
  {
    v4 = 192;
  }

  v5 = 3600 * v3;
  v6 = __frameCount + v3;
  if (v5 == __frameCount)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v5 == __frameCount)
  {
    v8 = v4 | 0x20;
  }

  else
  {
    v8 = v4;
  }

  __frameCount = v7;
  v9 = [a1 effectiveDate];
  v10 = [__calendar components:v8 fromDate:v9];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = __tickClients;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * i) _timerFiredWithComponents:v10 flags:{v8, v16}];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

+ (void)_tickTimerFired:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 fireDate];
  v5 = 224;
  v6 = [__calendar components:224 fromDate:v4];
  v7 = [v3 userInfo];
  if (v7)
  {
    v8 = [v6 hour];
    if (v8 == [v7 hour])
    {
      v9 = 192;
    }

    else
    {
      v9 = 224;
    }

    v10 = [v6 minute];
    if (v10 == [v7 minute])
    {
      v5 = v9 & 0xFFFFFFFFFFFFFFBFLL;
    }

    else
    {
      v5 = v9;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = __tickClients;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * i) _timerFiredWithComponents:v6 flags:{v5, v16}];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  _SBClockIconResetTickTimer();
}

+ (void)_handleTimeChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _SBClockIconGetCalendar();
  v5 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v4 setTimeZone:v5];

  v6 = [a1 effectiveDate];
  v7 = [v4 components:224 fromDate:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = __tickClients;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _updateUnanimatedWithComponents:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (SBHClockApplicationIconImageView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SBHClockApplicationIconImageView;
  v3 = [(SBIconImageView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = [objc_opt_class() systemNumberingSystem];
    v6 = [v5 copy];
    currentNumberingSystem = v3->_currentNumberingSystem;
    v3->_currentNumberingSystem = v6;

    v8 = [(SBHClockApplicationIconImageView *)v3 layer];
    [v8 setNeedsLayoutOnGeometryChange:0];
  }

  return v3;
}

- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69D3FB8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 sharedInstance];
  v12.receiver = self;
  v12.super_class = SBHClockApplicationIconImageView;
  [(SBLiveIconImageView *)&v12 setIcon:v10 location:v9 animated:v5];

  if (v10)
  {
    [v11 addObserver:self];
    [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  }

  else
  {
    [v11 removeObserver:self];
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  if ([(SBIconImageView *)self isPaused]!= a3)
  {
    v12.receiver = self;
    v12.super_class = SBHClockApplicationIconImageView;
    [(SBIconImageView *)&v12 setPaused:v3];
    v5 = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v6 setDuration:0.2];
    [v6 setFromValue:&unk_1F3DB2B38];
    v7 = -1.0;
    if (v5)
    {
      v7 = 1.0;
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [v6 setToValue:v9];

    [v6 setAdditive:1];
    [(CALayer *)self->_seconds addAnimation:v6 forKey:@"Paused"];
    [(CALayer *)self->_secondDot addAnimation:v6 forKey:@"Paused"];
    *&v10 = v8;
    [(CALayer *)self->_seconds setOpacity:v10];
    *&v11 = v8;
    [(CALayer *)self->_secondDot setOpacity:v11];
  }
}

- (void)setHandsHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_handsHidden != a3)
  {
    v4 = a4;
    self->_handsHidden = a3;
    v6 = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
    v8 = v6 ? 1.0 : 0.0;
    *&v7 = v8;
    [(CALayer *)self->_seconds setOpacity:v7];
    *&v9 = v8;
    [(CALayer *)self->_secondDot setOpacity:v9];
    v10 = [(SBHClockApplicationIconImageView *)self shouldShowHourMinuteHands];
    v12 = v10 ? 1.0 : 0.0;
    *&v11 = v12;
    [(CALayer *)self->_minutes setOpacity:v11];
    *&v13 = v12;
    [(CALayer *)self->_hours setOpacity:v13];
    *&v14 = v12;
    [(CALayer *)self->_hourMinuteDot setOpacity:v14];
    if (v4)
    {
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v20 setDuration:0.2];
      [v20 setFromValue:&unk_1F3DB2B38];
      if (v6)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = -1.0;
      }

      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      [v20 setToValue:v16];

      [v20 setAdditive:1];
      [(CALayer *)self->_seconds addAnimation:v20 forKey:@"HandsHidden"];
      [(CALayer *)self->_secondDot addAnimation:v20 forKey:@"HandsHidden"];
      v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v17 setDuration:0.2];
      [v17 setFromValue:&unk_1F3DB2B38];
      if (v10)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = -1.0;
      }

      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      [v17 setToValue:v19];

      [v17 setAdditive:1];
      [(CALayer *)self->_minutes addAnimation:v17 forKey:@"HandsHidden"];
      [(CALayer *)self->_hours addAnimation:v17 forKey:@"HandsHidden"];
      [(CALayer *)self->_hourMinuteDot addAnimation:v17 forKey:@"HandsHidden"];
    }
  }
}

- (void)updateSecondsHandHidden
{
  v3 = [objc_opt_class() hidesSecondsHand];
  seconds = self->_seconds;
  if (v3)
  {
    if (seconds)
    {
      [(CALayer *)seconds removeFromSuperlayer];
      v5 = self->_seconds;
      self->_seconds = 0;

      [(CALayer *)self->_secondDot removeFromSuperlayer];
      secondDot = self->_secondDot;
      self->_secondDot = 0;
    }
  }

  else if (!seconds)
  {
    [(SBHClockApplicationIconImageView *)self resetForegroundLayers];

    [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  }
}

+ (id)secondsHandColorWithImageAppearance:(id)a3
{
  v3 = a3;
  v4 = [v3 appearanceType];
  if (v4 > 6)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << v4) & 0x1C) != 0)
    {
      v5 = [MEMORY[0x1E69DC888] whiteColor];
      goto LABEL_6;
    }

    if (((1 << v4) & 0x43) != 0)
    {
      v5 = [MEMORY[0x1E69DC888] orangeColor];
LABEL_6:
      v6 = v5;
      goto LABEL_7;
    }

    v8 = [v3 tintColor];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.745098039 alpha:1.0];
    v6 = [v8 _colorBlendedWithColor:v9 compositingFilter:*MEMORY[0x1E6979CA0]];
  }

LABEL_7:

  return v6;
}

+ (id)hoursMinutesHandColorWithImageAppearance:(id)a3
{
  v3 = a3;
  v4 = [v3 appearanceType];
  v5 = 0;
  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v6 = [v3 tintColor];
      goto LABEL_4;
    }

    if (v4 == 6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((v4 - 1) < 4)
    {
LABEL_3:
      v6 = [MEMORY[0x1E69DC888] whiteColor];
LABEL_4:
      v5 = v6;
      goto LABEL_5;
    }

    if (!v4)
    {
      v6 = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_4;
    }
  }

LABEL_5:

  return v5;
}

+ (void)configureHandLayer:(id)a3 metrics:(const SBHClockApplicationIconImageMetrics *)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 setAllowsEdgeAntialiasing:1];
  [v5 setContentsScale:a4->contentsScale];
  v9[0] = @"transform";
  v6 = [MEMORY[0x1E695DFB0] null];
  v9[1] = @"transform.rotation";
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DFB0] null];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v5 setActions:v8];
}

+ (void)getMetrics:(SBHClockApplicationIconImageMetrics *)a3 forIconImageInfo:(SBIconImageInfo *)a4
{
  v8 = v4.f64[0] * 0.00263671875;
  v9 = 1.0;
  if (v4.f64[0] * 0.00263671875 < 1.0)
  {
    v8 = 1.0;
  }

  a3->secondsHandWidth = v8;
  a3->secondsHandLength = v4.f64[0] * 0.392578125;
  a3->secondsHandleLength = v4.f64[0] * 0.04296875;
  v10 = vmulq_n_f64(xmmword_1BEE862A0, v4.f64[0]);
  *&a3->secondsHandRingDiameter = v10;
  v11 = v4.f64[0] * 0.33984375;
  v12 = v4.f64[0] * 0.05078125;
  a3->minutesHandRingDiameter = v4.f64[0] * 0.05078125;
  a3->minutesHandRingKnockoutDiameter = v10.f64[0];
  v13 = v4.f64[0] * 0.17578125;
  if (v4.f64[0] * 0.0068359375 >= 1.0)
  {
    v9 = v4.f64[0] * 0.0068359375;
  }

  a3->shadowRadius = v9;
  a3->shadowInset = 3.0;
  a3->separatorWidth = v4.f64[0] * 0.015625;
  v14 = vmulq_n_f64(xmmword_1BEE862B0, v4.f64[0]);
  a3->minutesHandWidth = v14.f64[0];
  a3->minutesHandLength = v11;
  a3->hoursHandWidth = v14.f64[0];
  a3->hoursHandLength = v13;
  a3->secondsHandBounds.width = v10.f64[0];
  a3->secondsHandBounds.height = v4.f64[0] * 0.04296875 + v4.f64[0] * 0.392578125 + v10.f64[0];
  a3->minutesHandBounds.width = v12;
  a3->minutesHandBounds.height = v14.f64[0] + v11 + v12;
  a3->hoursHandBounds.width = v12;
  a3->hoursHandBounds.height = v14.f64[0] + v13 + v12;
  a3->contentsScale = v6;
  a3->iconImageInfo.size.width = v4.f64[0];
  v4.f64[1] = v4.f64[0] / 60.0;
  *&a3->separatorLength = v14;
  *&a3->faceRadius = vmulq_f64(v4, xmmword_1BEE862C0);
  a3->iconImageInfo.size.height = v5;
  a3->iconImageInfo.scale = v6;
  a3->iconImageInfo.continuousCornerRadius = v7;
}

- (void)getMetrics:(SBHClockApplicationIconImageMetrics *)a3
{
  [(SBIconImageView *)self iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_class();

  [v12 getMetrics:a3 forIconImageInfo:{v5, v7, v9, v11}];
}

+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 size:(CGSize)a4 actions:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x1E69DCA80];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  [v10 setScale:a3->contentsScale];
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v10 format:{width, height}];
  v12 = [v11 imageWithActions:v9];

  return v12;
}

+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 size:(CGSize)a4 path:(CGPath *)a5 fillColor:(id)a6 options:(unint64_t)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a6;
  if (a7)
  {
    v14 = a3->shadowInset + a3->shadowInset;
    width = width + v14;
    height = height + v14;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__SBHClockApplicationIconImageView_makeComponentImageWithMetrics_size_path_fillColor_options___block_invoke;
  v18[3] = &unk_1E808D6B0;
  v23 = a7 & 1;
  v19 = v13;
  v20 = a3;
  v21 = a5;
  v22 = a7;
  v15 = v13;
  v16 = [a1 makeComponentImageWithMetrics:a3 size:v18 actions:{width, height}];

  return v16;
}

void __94__SBHClockApplicationIconImageView_makeComponentImageWithMetrics_size_path_fillColor_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = v3;
  if (*(a1 + 64) == 1)
  {
    CGContextTranslateCTM(v3, *(*(a1 + 40) + 112), *(*(a1 + 40) + 112));
  }

  [*(a1 + 32) set];
  if (*(a1 + 64) == 1)
  {
    GenericGray = CGColorCreateGenericGray(0.0, 0.3);
    CGContextSetShadowWithColor(v4, *MEMORY[0x1E695F060], *(*(a1 + 40) + 104), GenericGray);
    CGColorRelease(GenericGray);
  }

  CGContextAddPath(v4, *(a1 + 48));
  v6 = (*(a1 + 56) >> 1) & 1;

  CGContextDrawPath(v4, v6);
}

+ (id)makeDotImageWithOuterDiameter:(double)a3 innerDiameter:(double)a4 color:(id)a5 isSeconds:(BOOL)a6 metrics:(const SBHClockApplicationIconImageMetrics *)a7
{
  v8 = a6;
  v12 = a5;
  Mutable = CGPathCreateMutable();
  v18.origin.x = (a3 - a4) * 0.5;
  v18.origin.y = v18.origin.x;
  v18.size.width = a4;
  v18.size.height = a4;
  CGPathAddEllipseInRect(Mutable, 0, v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a3;
  v19.size.height = a3;
  CGPathAddEllipseInRect(Mutable, 0, v19);
  if (v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  v15 = [a1 makeComponentImageWithMetrics:a7 size:Mutable path:v12 fillColor:v14 options:{a3, a3}];

  CGPathRelease(Mutable);

  return v15;
}

+ (id)makeDotLayerWithOuterDiameter:(double)a3 innerDiameter:(double)a4 isSeconds:(BOOL)a5 imageSet:(id)a6
{
  v8 = a6;
  v9 = [MEMORY[0x1E6979398] layer];
  if (a5)
  {
    [v8 secondDot];
  }

  else
  {
    [v8 hourMinuteDot];
  }
  v10 = ;
  [v9 setContents:{objc_msgSend(v10, "CGImage")}];
  [v10 size];
  [v9 setBounds:{0.0, 0.0, v11, v12}];
  [v10 scale];
  [v9 setContentsScale:?];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  [v8 getMetrics:v14];
  [a1 configureHandLayer:v9 metrics:v14];

  return v9;
}

+ (id)makeSecondsHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4
{
  v6 = [a1 secondsHandColorWithImageAppearance:a4];
  v7 = a3->secondsHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v12.size.width = a3->secondsHandWidth;
  v12.size.height = a3->secondsHandLength;
  v12.origin.x = v7 - a3->secondsHandWidth * 0.5;
  v12.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v12);
  v13.size.width = a3->secondsHandWidth;
  v13.origin.x = v7 - a3->secondsHandWidth * 0.5;
  v13.size.height = a3->secondsHandleLength;
  v13.origin.y = a3->secondsHandLength + a3->secondsHandRingDiameter;
  CGPathAddRect(Mutable, 0, v13);
  v9 = [a1 makeComponentImageWithMetrics:a3 size:Mutable path:v6 fillColor:0 options:{a3->secondsHandBounds.width, a3->secondsHandBounds.height}];
  CGPathRelease(Mutable);

  return v9;
}

+ (id)makeSecondsHandLayerWithImageSet:(id)a3
{
  v4 = MEMORY[0x1E6979398];
  v5 = a3;
  v6 = [v4 layer];
  v7 = [v5 seconds];
  [v6 setContents:{objc_msgSend(v7, "CGImage")}];
  [v7 size];
  [v6 setBounds:{0.0, 0.0, v8, v9}];
  [v7 scale];
  [v6 setContentsScale:?];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [v5 getMetrics:&v11];

  [v6 setAnchorPoint:{0.5, (*(&v11 + 1) + *(&v12 + 1) * 0.5) / *&v14}];
  [a1 configureHandLayer:v6 metrics:&v11];

  return v6;
}

+ (id)makeMinutesHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4
{
  v6 = [a1 hoursMinutesHandColorWithImageAppearance:a4];
  v7 = a3->minutesHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v15.size.width = a3->separatorWidth;
  v15.origin.x = v7 - v15.size.width * 0.5;
  separatorExtraLength = a3->separatorExtraLength;
  v15.origin.y = a3->minutesHandLength - separatorExtraLength;
  v15.size.height = separatorExtraLength + separatorExtraLength + a3->separatorLength;
  CGPathAddRect(Mutable, 0, v15);
  minutesHandWidth = a3->minutesHandWidth;
  v11 = minutesHandWidth * 0.5;
  CGPathMoveToPoint(Mutable, 0, v7 - minutesHandWidth * 0.5, minutesHandWidth);
  CGPathAddArc(Mutable, 0, v7, v11, v11, 3.14159265, 0.0, 0);
  CGPathAddLineToPoint(Mutable, 0, v7 + v11, a3->minutesHandLength - a3->minutesHandWidth);
  CGPathAddArc(Mutable, 0, v7, a3->minutesHandLength - v11, v11, 0.0, 3.14159265, 0);
  CGPathCloseSubpath(Mutable);
  v12 = [a1 makeComponentImageWithMetrics:a3 size:Mutable path:v6 fillColor:1 options:{a3->minutesHandBounds.width, a3->minutesHandBounds.height}];
  CGPathRelease(Mutable);

  return v12;
}

+ (id)makeMinutesHandLayerWithImageSet:(id)a3
{
  v4 = MEMORY[0x1E6979398];
  v5 = a3;
  v6 = [v4 layer];
  v7 = [v5 minutes];
  [v6 setContents:{objc_msgSend(v7, "CGImage")}];
  [v7 size];
  [v6 setBounds:{0.0, 0.0, v8, v9}];
  [v7 scale];
  [v6 setContentsScale:?];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  [v5 getMetrics:v11];

  [v6 setAnchorPoint:{0.5, (*&v15 + *&v12 + *&v18 + *(&v12 + 1) * 0.5) / (*&v15 + *&v15 + *&v14)}];
  [a1 configureHandLayer:v6 metrics:v11];

  return v6;
}

+ (id)makeHoursHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4
{
  v6 = [a1 hoursMinutesHandColorWithImageAppearance:a4];
  v7 = a3->minutesHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v15.size.width = a3->separatorWidth;
  v15.origin.x = v7 - v15.size.width * 0.5;
  separatorExtraLength = a3->separatorExtraLength;
  v15.origin.y = a3->hoursHandLength - separatorExtraLength;
  v15.size.height = separatorExtraLength + separatorExtraLength + a3->separatorLength;
  CGPathAddRect(Mutable, 0, v15);
  hoursHandWidth = a3->hoursHandWidth;
  v11 = hoursHandWidth * 0.5;
  CGPathMoveToPoint(Mutable, 0, v7 - hoursHandWidth * 0.5, hoursHandWidth);
  CGPathAddArc(Mutable, 0, v7, v11, v11, 3.14159265, 0.0, 0);
  CGPathAddLineToPoint(Mutable, 0, v7 + v11, a3->hoursHandLength - a3->hoursHandWidth);
  CGPathAddArc(Mutable, 0, v7, a3->hoursHandLength - v11, v11, 0.0, 3.14159265, 0);
  CGPathCloseSubpath(Mutable);
  v12 = [a1 makeComponentImageWithMetrics:a3 size:Mutable path:v6 fillColor:1 options:{a3->hoursHandBounds.width, a3->hoursHandBounds.height}];
  CGPathRelease(Mutable);

  return v12;
}

+ (id)makeHoursHandLayerWithImageSet:(id)a3
{
  v4 = MEMORY[0x1E6979398];
  v5 = a3;
  v6 = [v4 layer];
  v7 = [v5 hours];
  [v6 setContents:{objc_msgSend(v7, "CGImage")}];
  [v7 size];
  [v6 setBounds:{0.0, 0.0, v8, v9}];
  [v7 scale];
  [v6 setContentsScale:?];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  [v5 getMetrics:v11];

  [v6 setAnchorPoint:{0.5, (*&v15 + *&v16 + *&v18 + *(&v12 + 1) * 0.5) / (*&v15 + *&v15 + *&v17)}];
  [a1 configureHandLayer:v6 metrics:v11];

  return v6;
}

+ (id)makeImageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(SBHClockHandsImageSet);
  [(SBHClockHandsImageSet *)v7 setMetrics:a3];
  v8 = [a1 makeHoursHandImageWithMetrics:a3 imageAppearance:v6];
  [(SBHClockHandsImageSet *)v7 setHours:v8];
  v9 = [a1 makeMinutesHandImageWithMetrics:a3 imageAppearance:v6];
  [(SBHClockHandsImageSet *)v7 setMinutes:v9];
  if (([a1 hidesSecondsHand] & 1) == 0)
  {
    v10 = [a1 makeSecondsHandImageWithMetrics:a3 imageAppearance:v6];
    [(SBHClockHandsImageSet *)v7 setSeconds:v10];
  }

  v11 = [a1 hoursMinutesHandColorWithImageAppearance:v6];
  v12 = [a1 makeDotImageWithOuterDiameter:v11 innerDiameter:0 color:a3 isSeconds:a3->minutesHandRingDiameter metrics:a3->minutesHandRingKnockoutDiameter];
  [(SBHClockHandsImageSet *)v7 setHourMinuteDot:v12];
  if (([a1 hidesSecondsHand] & 1) == 0)
  {
    v13 = [a1 secondsHandColorWithImageAppearance:v6];
    v14 = [a1 makeDotImageWithOuterDiameter:v13 innerDiameter:1 color:a3 isSeconds:a3->secondsHandRingDiameter metrics:a3->secondsHandRingKnockoutDiameter];
    [(SBHClockHandsImageSet *)v7 setSecondDot:v14];
  }

  return v7;
}

+ (id)imageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)a3 imageAppearance:(id)a4
{
  v6 = a4;
  v7 = +[SBHIconImageAppearanceStore defaultIcon];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3->iconImageInfo.size.width];
  v9 = [imageSetForMetrics_imageAppearance___cachedImageSets objectForKey:v8];
  v10 = [(SBHIconImageAppearanceStore *)v9 imageForIcon:v7 appearance:v6];
  if (v10)
  {
    v11 = v10;
    goto LABEL_6;
  }

  v11 = [a1 makeImageSetForMetrics:a3 imageAppearance:v6];
  if (!imageSetForMetrics_imageAppearance___cachedImageSets)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = imageSetForMetrics_imageAppearance___cachedImageSets;
    imageSetForMetrics_imageAppearance___cachedImageSets = v13;

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = objc_alloc_init(SBHIconImageAppearanceStore);
    [imageSetForMetrics_imageAppearance___cachedImageSets setObject:v9 forKey:v8];
    goto LABEL_5;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  [(SBHIconImageAppearanceStore *)v9 setImage:v11 forIcon:v7 appearance:v6];
LABEL_6:

  return v11;
}

- (void)applyMetrics:(const SBHClockApplicationIconImageMetrics *)a3
{
  v24 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v5 = [(SBHClockApplicationIconImageView *)self layer];
  v6 = [objc_opt_class() imageSetForMetrics:a3 imageAppearance:v24];
  [(SBHClockApplicationIconImageView *)self hourMinuteHandOpacity];
  v8 = v7;
  v9 = [objc_opt_class() makeHoursHandLayerWithImageSet:v6];
  LODWORD(v10) = v8;
  [v9 setOpacity:v10];
  [v5 addSublayer:v9];
  [(CALayer *)self->_hours removeFromSuperlayer];
  objc_storeStrong(&self->_hours, v9);
  v11 = [objc_opt_class() makeMinutesHandLayerWithImageSet:v6];
  LODWORD(v12) = v8;
  [v11 setOpacity:v12];
  [v5 addSublayer:v11];
  [(CALayer *)self->_minutes removeFromSuperlayer];
  objc_storeStrong(&self->_minutes, v11);
  v13 = [objc_opt_class() makeDotLayerWithOuterDiameter:0 innerDiameter:v6 isSeconds:a3->minutesHandRingDiameter imageSet:a3->minutesHandRingKnockoutDiameter];
  LODWORD(v14) = v8;
  [v13 setOpacity:v14];
  [v5 addSublayer:v13];
  [(CALayer *)self->_hourMinuteDot removeFromSuperlayer];
  objc_storeStrong(&self->_hourMinuteDot, v13);
  if (([objc_opt_class() hidesSecondsHand] & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self secondsHandOpacity];
    v16 = v15;
    v17 = [objc_opt_class() makeSecondsHandLayerWithImageSet:v6];
    LODWORD(v18) = v16;
    [(CALayer *)v17 setOpacity:v18];
    [v5 addSublayer:v17];
    [(CALayer *)self->_seconds removeFromSuperlayer];
    seconds = self->_seconds;
    self->_seconds = v17;
    v20 = v17;

    v21 = [objc_opt_class() makeDotLayerWithOuterDiameter:1 innerDiameter:v6 isSeconds:a3->secondsHandRingDiameter imageSet:a3->secondsHandRingKnockoutDiameter];
    LODWORD(v22) = v16;
    [(CALayer *)v21 setOpacity:v22];
    [v5 addSublayer:v21];
    [(CALayer *)self->_secondDot removeFromSuperlayer];
    secondDot = self->_secondDot;
    self->_secondDot = v21;
  }

  [(SBHClockApplicationIconImageView *)self setDisplayedHandsAppearance:v24];
  [(SBIconImageView *)self didAddSublayer];
}

+ (void)precacheDataWithIconImageInfo:(SBIconImageInfo *)a3 appearance:(id)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  [a1 precacheDataWithIconImageInfo:v13 appearance:1 options:{v11, v10, v9, v8}];
  [a1 precacheDataWithIconImageInfo:v13 appearance:0 options:{v11, v10, v9, v8}];
}

+ (id)clockIconBackgroundTypeIdentifierForNumberingSystem:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 caseInsensitiveCompare:@"latn"])
  {
    v5 = [@"com.apple.application-icon.clock.base" stringByAppendingFormat:@".%@", v4];
    v6 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v5];
    v7 = [v6 isDeclared];

    if (v7)
    {
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v5 = @"com.apple.application-icon.clock.base";
LABEL_8:

  return v5;
}

+ (id)clockIconBackgroundTypeIdentifierForSystemNumberingSystem
{
  v3 = [a1 systemNumberingSystem];
  v4 = [a1 clockIconBackgroundTypeIdentifierForNumberingSystem:v3];

  return v4;
}

- (id)clockIconBackgroundTypeIdentifierForCurrentNumberingSystem
{
  v3 = objc_opt_class();
  v4 = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
  v5 = [v3 clockIconBackgroundTypeIdentifierForNumberingSystem:v4];

  return v5;
}

- (void)updateImageAnimated:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v6 updateImageAnimated:a3];
  v4 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v5 = [(SBHClockApplicationIconImageView *)self displayedHandsAppearance];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self resetForegroundLayers];
    [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  }
}

- (id)iconForImage
{
  v3 = [(SBIconImageView *)self icon];

  if (v3)
  {
    v4 = [(SBHClockApplicationIconImageView *)self clockBackgroundIcon];
    if (!v4)
    {
      v5 = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
      if (!v5)
      {
        v5 = [objc_opt_class() systemNumberingSystem];
        [(SBHClockApplicationIconImageView *)self setCurrentNumberingSystem:v5];
      }

      v6 = [SBLeafIcon alloc];
      v7 = [objc_opt_class() clockIconBackgroundTypeIdentifierForNumberingSystem:v5];
      v4 = [(SBLeafIcon *)v6 initWithLeafIdentifier:v7 applicationBundleID:0];

      v8 = objc_alloc_init(SBHClockBackgroundIconDataSource);
      [(SBLeafIcon *)v4 addIconDataSource:v8];
      [(SBHClockApplicationIconImageView *)self setClockBackgroundIcon:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setAnimating:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(SBHClockApplicationIconImageView *)self updateUnanimated];
    v4 = self;
    if (_SBClockIconInitialize___once != -1)
    {
      _SBClockIconGetCalendar_cold_1();
    }

    if (([__tickClients containsObject:v4] & 1) == 0)
    {
      v5 = SBLogClock();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v4;
        v14 = 2048;
        v15 = [__tickClients count] + 1;
        _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Add clock icon tick client: %p/%lu", &v12, 0x16u);
      }

      [__tickClients addObject:v4];
      v6 = [(SBHClockApplicationIconImageView *)v4 hidesSecondHand];
      if (v6 != +[SBHClockApplicationIconImageView hidesSecondsHand])
      {
        [(SBHClockApplicationIconImageView *)v4 updateSecondsHandHidden];
      }

      _SBClockIconResetTimer();
    }
  }

  else
  {
    v7 = self;
    if ([__tickClients containsObject:v7])
    {
      v8 = SBLogClock();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v7;
        v14 = 2048;
        v15 = [__tickClients count] - 1;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Remove clock icon tick client: %p/%lu", &v12, 0x16u);
      }

      [__tickClients removeObject:v7];
      if (![__tickClients count])
      {
        [__displayLink invalidate];
        v9 = __displayLink;
        __displayLink = 0;

        [__tickTimer invalidate];
        v10 = __tickTimer;
        __tickTimer = 0;

        v11 = SBLogClock();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Stopped clock icon tick timer", &v12, 2u);
        }
      }
    }
  }
}

- (void)_updateUnanimatedWithComponents:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [objc_opt_class() overrideDate];
  v9 = v7 - trunc(v7);
  if (v8)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 + [v5 second];
  v12 = v11 / 60.0 + [v5 minute];
  v13 = [v5 hour];

  v14 = fmod(v11 / 30.0 * 3.14159265, 6.28318531);
  v15 = __sincos_stret(v14);
  *&__cachedTransform = v15.__cosval;
  *(&__cachedTransform + 1) = *&v15.__sinval;
  *&xmmword_1ED7EE3A8 = -v15.__sinval;
  *(&xmmword_1ED7EE3A8 + 1) = *&v15.__cosval;
  seconds = self->_seconds;
  v27 = xmmword_1ED7EE3C8;
  v28 = *&qword_1ED7EE3D8;
  v29 = xmmword_1ED7EE3E8;
  v30 = unk_1ED7EE3F8;
  v23 = __cachedTransform;
  v24 = unk_1ED7EE398;
  v25 = xmmword_1ED7EE3A8;
  v26 = unk_1ED7EE3B8;
  [(CALayer *)seconds setTransform:&v23];
  v17 = fmod(v12 / 30.0 * 3.14159265, 6.28318531);
  v18 = __sincos_stret(v17);
  *&__cachedTransform = v18.__cosval;
  *(&__cachedTransform + 1) = *&v18.__sinval;
  *&xmmword_1ED7EE3A8 = -v18.__sinval;
  *(&xmmword_1ED7EE3A8 + 1) = *&v18.__cosval;
  minutes = self->_minutes;
  v27 = xmmword_1ED7EE3C8;
  v28 = *&qword_1ED7EE3D8;
  v29 = xmmword_1ED7EE3E8;
  v30 = unk_1ED7EE3F8;
  v23 = __cachedTransform;
  v24 = unk_1ED7EE398;
  v25 = xmmword_1ED7EE3A8;
  v26 = unk_1ED7EE3B8;
  [(CALayer *)minutes setTransform:&v23];
  v20 = fmod((v12 / 60.0 + v13) / 6.0 * 3.14159265, 6.28318531);
  v21 = __sincos_stret(v20);
  *&__cachedTransform = v21.__cosval;
  *(&__cachedTransform + 1) = *&v21.__sinval;
  *&xmmword_1ED7EE3A8 = -v21.__sinval;
  *(&xmmword_1ED7EE3A8 + 1) = *&v21.__cosval;
  hours = self->_hours;
  v27 = xmmword_1ED7EE3C8;
  v28 = *&qword_1ED7EE3D8;
  v29 = xmmword_1ED7EE3E8;
  v30 = unk_1ED7EE3F8;
  v23 = __cachedTransform;
  v24 = unk_1ED7EE398;
  v25 = xmmword_1ED7EE3A8;
  v26 = unk_1ED7EE3B8;
  [(CALayer *)hours setTransform:&v23];
}

- (void)_timerFiredWithComponents:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = 0.0;
  if (v4 < 0 && self->_seconds)
  {
    v9 = v7 - trunc(v7) + [v6 second];
    v8 = v9;
    v10 = fmod(v9 / 30.0 * 3.14159265, 6.28318531);
    v11 = __sincos_stret(v10);
    *&__cachedTransform = v11.__cosval;
    *(&__cachedTransform + 1) = *&v11.__sinval;
    *&xmmword_1ED7EE3A8 = -v11.__sinval;
    *(&xmmword_1ED7EE3A8 + 1) = *&v11.__cosval;
    seconds = self->_seconds;
    v26 = xmmword_1ED7EE3C8;
    v27 = *&qword_1ED7EE3D8;
    v28 = xmmword_1ED7EE3E8;
    v29 = unk_1ED7EE3F8;
    v22 = __cachedTransform;
    v23 = unk_1ED7EE398;
    v24 = xmmword_1ED7EE3A8;
    v25 = unk_1ED7EE3B8;
    [(CALayer *)seconds setTransform:&v22];
  }

  if ((v4 & 0x40) != 0)
  {
    v13 = v8 / 60.0 + [v6 minute];
    v14 = v13;
    v15 = fmod(v13 / 30.0 * 3.14159265, 6.28318531);
    v16 = __sincos_stret(v15);
    *&__cachedTransform = v16.__cosval;
    *(&__cachedTransform + 1) = *&v16.__sinval;
    *&xmmword_1ED7EE3A8 = -v16.__sinval;
    *(&xmmword_1ED7EE3A8 + 1) = *&v16.__cosval;
    minutes = self->_minutes;
    v26 = xmmword_1ED7EE3C8;
    v27 = *&qword_1ED7EE3D8;
    v28 = xmmword_1ED7EE3E8;
    v29 = unk_1ED7EE3F8;
    v22 = __cachedTransform;
    v23 = unk_1ED7EE398;
    v24 = xmmword_1ED7EE3A8;
    v25 = unk_1ED7EE3B8;
    [(CALayer *)minutes setTransform:&v22];
    if ((v4 & 0x20) != 0)
    {
      v18 = v14 / 60.0 + [v6 hour];
      v19 = fmod(v18 / 6.0 * 3.14159265, 6.28318531);
      v20 = __sincos_stret(v19);
      *&__cachedTransform = v20.__cosval;
      *(&__cachedTransform + 1) = *&v20.__sinval;
      *&xmmword_1ED7EE3A8 = -v20.__sinval;
      *(&xmmword_1ED7EE3A8 + 1) = *&v20.__cosval;
      hours = self->_hours;
      v26 = xmmword_1ED7EE3C8;
      v27 = *&qword_1ED7EE3D8;
      v28 = xmmword_1ED7EE3E8;
      v29 = unk_1ED7EE3F8;
      v22 = __cachedTransform;
      v23 = unk_1ED7EE398;
      v24 = xmmword_1ED7EE3A8;
      v25 = unk_1ED7EE3B8;
      [(CALayer *)hours setTransform:&v22];
    }
  }
}

- (void)clearCachedImages
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 clearCachedImages];
  [(SBHClockApplicationIconImageView *)self setClockBackgroundIcon:0];
}

- (void)localeDidChange:(id)a3
{
  v5 = [objc_opt_class() systemNumberingSystem];
  v4 = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
  if (!v4 || ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self clearCachedImages];
    [(SBHClockApplicationIconImageView *)self updateImageAnimated:0];
    [(SBHClockApplicationIconImageView *)self setCurrentNumberingSystem:v5];
  }
}

- (void)willAnimateIconImageInfoChange
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 willAnimateIconImageInfoChange];
  [(SBHClockApplicationIconImageView *)self setHandsHidden:1];
}

- (void)didAnimateIconImageInfoChange
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 didAnimateIconImageInfoChange];
  [(SBHClockApplicationIconImageView *)self setHandsHidden:0 animated:1];
}

- (void)iconImageInfoDidChange
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 iconImageInfoDidChange];
  [(SBHClockApplicationIconImageView *)self resetForegroundLayers];
  [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  [(SBHClockApplicationIconImageView *)self layoutIfNeeded];
}

- (void)noteIconLayerTintColorUpdated
{
  v3.receiver = self;
  v3.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v3 noteIconLayerTintColorUpdated];
  [(SBHClockApplicationIconImageView *)self resetForegroundLayers];
  [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  [(SBHClockApplicationIconImageView *)self layoutIfNeeded];
}

- (void)controller:(id)a3 didChangeOverrideDateFromDate:(id)a4
{
  __hasSBFDateTimeOverride = [a3 hasDateOverride];
  [(SBHClockApplicationIconImageView *)self updateOngoingAnimationState];

  [(SBHClockApplicationIconImageView *)self updateUnanimated];
}

@end