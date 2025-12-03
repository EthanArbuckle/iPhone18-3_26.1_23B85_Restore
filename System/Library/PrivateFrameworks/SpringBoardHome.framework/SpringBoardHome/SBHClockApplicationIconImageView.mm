@interface SBHClockApplicationIconImageView
+ (BOOL)sweepsSecondsHand;
+ (id)clockIconBackgroundTypeIdentifierForNumberingSystem:(id)system;
+ (id)clockIconBackgroundTypeIdentifierForSystemNumberingSystem;
+ (id)effectiveDate;
+ (id)hoursMinutesHandColorWithImageAppearance:(id)appearance;
+ (id)imageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance;
+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics size:(CGSize)size actions:(id)actions;
+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics size:(CGSize)size path:(CGPath *)path fillColor:(id)color options:(unint64_t)options;
+ (id)makeDotImageWithOuterDiameter:(double)diameter innerDiameter:(double)innerDiameter color:(id)color isSeconds:(BOOL)seconds metrics:(const SBHClockApplicationIconImageMetrics *)metrics;
+ (id)makeDotLayerWithOuterDiameter:(double)diameter innerDiameter:(double)innerDiameter isSeconds:(BOOL)seconds imageSet:(id)set;
+ (id)makeHoursHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance;
+ (id)makeHoursHandLayerWithImageSet:(id)set;
+ (id)makeImageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance;
+ (id)makeMinutesHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance;
+ (id)makeMinutesHandLayerWithImageSet:(id)set;
+ (id)makeSecondsHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance;
+ (id)makeSecondsHandLayerWithImageSet:(id)set;
+ (id)secondsHandColorWithImageAppearance:(id)appearance;
+ (id)systemNumberingSystem;
+ (void)_displayLinkFired:(id)fired;
+ (void)_handleTimeChange:(id)change;
+ (void)_tickTimerFired:(id)fired;
+ (void)configureHandLayer:(id)layer metrics:(const SBHClockApplicationIconImageMetrics *)metrics;
+ (void)getMetrics:(SBHClockApplicationIconImageMetrics *)metrics forIconImageInfo:(SBIconImageInfo *)info;
+ (void)hidesSecondHandDidChange;
+ (void)initialize;
+ (void)precacheDataWithIconImageInfo:(SBIconImageInfo *)info appearance:(id)appearance;
+ (void)setHidesSecondsHand:(BOOL)hand;
+ (void)setOverrideDate:(id)date;
- (BOOL)areOngoingAnimationsAllowed;
- (BOOL)shouldShowSecondsHand;
- (SBHClockApplicationIconImageView)initWithFrame:(CGRect)frame;
- (float)hourMinuteHandOpacity;
- (float)secondsHandOpacity;
- (id)clockIconBackgroundTypeIdentifierForCurrentNumberingSystem;
- (id)iconForImage;
- (void)_setAnimating:(BOOL)animating;
- (void)_timerFiredWithComponents:(id)components flags:(unint64_t)flags;
- (void)_updateUnanimatedWithComponents:(id)components;
- (void)applyMetrics:(const SBHClockApplicationIconImageMetrics *)metrics;
- (void)clearCachedImages;
- (void)controller:(id)controller didChangeOverrideDateFromDate:(id)date;
- (void)didAnimateIconImageInfoChange;
- (void)getMetrics:(SBHClockApplicationIconImageMetrics *)metrics;
- (void)iconImageInfoDidChange;
- (void)layoutSubviews;
- (void)localeDidChange:(id)change;
- (void)noteIconLayerTintColorUpdated;
- (void)prepareForReuse;
- (void)resetForegroundLayers;
- (void)setHandsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated;
- (void)setPaused:(BOOL)paused;
- (void)updateImageAnimated:(BOOL)animated;
- (void)updateOngoingAnimationState;
- (void)updateSecondsHandHidden;
- (void)updateUnanimated;
- (void)willAnimateIconImageInfoChange;
@end

@implementation SBHClockApplicationIconImageView

- (BOOL)areOngoingAnimationsAllowed
{
  overrideDate = [objc_opt_class() overrideDate];
  if (overrideDate)
  {
    areOngoingAnimationsAllowed = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHClockApplicationIconImageView;
    areOngoingAnimationsAllowed = [(SBIconImageView *)&v6 areOngoingAnimationsAllowed];
  }

  return areOngoingAnimationsAllowed;
}

- (void)updateOngoingAnimationState
{
  v6.receiver = self;
  v6.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v6 updateOngoingAnimationState];
  if ([(SBHClockApplicationIconImageView *)self areOngoingAnimationsAllowed])
  {
    icon = [(SBIconImageView *)self icon];
    if (icon)
    {
      overrideDate = [objc_opt_class() overrideDate];
      v5 = overrideDate == 0;
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
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v5 = [v2 numberingSystemForLocaleID:localeIdentifier];

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
  effectiveDate = [objc_opt_class() effectiveDate];
  v5 = [v3 components:224 fromDate:effectiveDate];

  [(SBHClockApplicationIconImageView *)self _updateUnanimatedWithComponents:v5];
}

+ (id)effectiveDate
{
  if (__hasSBFDateTimeOverride)
  {
    mEMORY[0x1E69D3FB8] = [MEMORY[0x1E69D3FB8] sharedInstance];
    currentDate = [mEMORY[0x1E69D3FB8] currentDate];
  }

  else
  {
    currentDate = [objc_opt_class() overrideDate];
  }

  [objc_opt_class() overrideDateOffset];
  v5 = v4;
  if (currentDate)
  {
    date = currentDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v7 = date;
  if (v5 != 0.0)
  {
    v8 = [date dateByAddingTimeInterval:v5];

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
    icon = [(SBIconImageView *)self icon];

    if (icon)
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
  shouldShowHourMinuteHands = [(SBHClockApplicationIconImageView *)self shouldShowHourMinuteHands];
  result = 0.0;
  if (shouldShowHourMinuteHands)
  {
    return 1.0;
  }

  return result;
}

- (float)secondsHandOpacity
{
  shouldShowSecondsHand = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
  result = 0.0;
  if (shouldShowSecondsHand)
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

  if (v3 == self)
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
    mEMORY[0x1E69D3FB8] = [MEMORY[0x1E69D3FB8] sharedInstance];
    __hasSBFDateTimeOverride = [mEMORY[0x1E69D3FB8] hasDateOverride];
    __hidesSecondsHand = SBHPerformanceFlagEnabled(11);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }
}

+ (void)setOverrideDate:(id)date
{
  v3 = [date copy];
  v4 = __overrideDate;
  __overrideDate = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (void)setHidesSecondsHand:(BOOL)hand
{
  if (__hidesSecondsHand != hand)
  {
    __hidesSecondsHand = hand;
    [self hidesSecondHandDidChange];
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  return isLowPowerModeEnabled ^ 1;
}

+ (void)_displayLinkFired:(id)fired
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
  effectiveDate = [self effectiveDate];
  v10 = [__calendar components:v8 fromDate:effectiveDate];
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

+ (void)_tickTimerFired:(id)fired
{
  v21 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  fireDate = [firedCopy fireDate];
  v5 = 224;
  v6 = [__calendar components:224 fromDate:fireDate];
  userInfo = [firedCopy userInfo];
  if (userInfo)
  {
    hour = [v6 hour];
    if (hour == [userInfo hour])
    {
      v9 = 192;
    }

    else
    {
      v9 = 224;
    }

    minute = [v6 minute];
    if (minute == [userInfo minute])
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

+ (void)_handleTimeChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _SBClockIconGetCalendar();
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v4 setTimeZone:systemTimeZone];

  effectiveDate = [self effectiveDate];
  v7 = [v4 components:224 fromDate:effectiveDate];

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

- (SBHClockApplicationIconImageView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SBHClockApplicationIconImageView;
  v3 = [(SBIconImageView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    systemNumberingSystem = [objc_opt_class() systemNumberingSystem];
    v6 = [systemNumberingSystem copy];
    currentNumberingSystem = v3->_currentNumberingSystem;
    v3->_currentNumberingSystem = v6;

    layer = [(SBHClockApplicationIconImageView *)v3 layer];
    [layer setNeedsLayoutOnGeometryChange:0];
  }

  return v3;
}

- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = MEMORY[0x1E69D3FB8];
  locationCopy = location;
  iconCopy = icon;
  sharedInstance = [v8 sharedInstance];
  v12.receiver = self;
  v12.super_class = SBHClockApplicationIconImageView;
  [(SBLiveIconImageView *)&v12 setIcon:iconCopy location:locationCopy animated:animatedCopy];

  if (iconCopy)
  {
    [sharedInstance addObserver:self];
    [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  }

  else
  {
    [sharedInstance removeObserver:self];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  if ([(SBIconImageView *)self isPaused]!= paused)
  {
    v12.receiver = self;
    v12.super_class = SBHClockApplicationIconImageView;
    [(SBIconImageView *)&v12 setPaused:pausedCopy];
    shouldShowSecondsHand = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v6 setDuration:0.2];
    [v6 setFromValue:&unk_1F3DB2B38];
    v7 = -1.0;
    if (shouldShowSecondsHand)
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

- (void)setHandsHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_handsHidden != hidden)
  {
    animatedCopy = animated;
    self->_handsHidden = hidden;
    shouldShowSecondsHand = [(SBHClockApplicationIconImageView *)self shouldShowSecondsHand];
    v8 = shouldShowSecondsHand ? 1.0 : 0.0;
    *&v7 = v8;
    [(CALayer *)self->_seconds setOpacity:v7];
    *&v9 = v8;
    [(CALayer *)self->_secondDot setOpacity:v9];
    shouldShowHourMinuteHands = [(SBHClockApplicationIconImageView *)self shouldShowHourMinuteHands];
    v12 = shouldShowHourMinuteHands ? 1.0 : 0.0;
    *&v11 = v12;
    [(CALayer *)self->_minutes setOpacity:v11];
    *&v13 = v12;
    [(CALayer *)self->_hours setOpacity:v13];
    *&v14 = v12;
    [(CALayer *)self->_hourMinuteDot setOpacity:v14];
    if (animatedCopy)
    {
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v20 setDuration:0.2];
      [v20 setFromValue:&unk_1F3DB2B38];
      if (shouldShowSecondsHand)
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
      if (shouldShowHourMinuteHands)
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
  hidesSecondsHand = [objc_opt_class() hidesSecondsHand];
  seconds = self->_seconds;
  if (hidesSecondsHand)
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

+ (id)secondsHandColorWithImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  appearanceType = [appearanceCopy appearanceType];
  if (appearanceType > 6)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << appearanceType) & 0x1C) != 0)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      goto LABEL_6;
    }

    if (((1 << appearanceType) & 0x43) != 0)
    {
      whiteColor = [MEMORY[0x1E69DC888] orangeColor];
LABEL_6:
      v6 = whiteColor;
      goto LABEL_7;
    }

    tintColor = [appearanceCopy tintColor];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.745098039 alpha:1.0];
    v6 = [tintColor _colorBlendedWithColor:v9 compositingFilter:*MEMORY[0x1E6979CA0]];
  }

LABEL_7:

  return v6;
}

+ (id)hoursMinutesHandColorWithImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  appearanceType = [appearanceCopy appearanceType];
  v5 = 0;
  if (appearanceType > 4)
  {
    if (appearanceType == 5)
    {
      tintColor = [appearanceCopy tintColor];
      goto LABEL_4;
    }

    if (appearanceType == 6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ((appearanceType - 1) < 4)
    {
LABEL_3:
      tintColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_4:
      v5 = tintColor;
      goto LABEL_5;
    }

    if (!appearanceType)
    {
      tintColor = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_4;
    }
  }

LABEL_5:

  return v5;
}

+ (void)configureHandLayer:(id)layer metrics:(const SBHClockApplicationIconImageMetrics *)metrics
{
  v10[2] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  [layerCopy setAllowsEdgeAntialiasing:1];
  [layerCopy setContentsScale:metrics->contentsScale];
  v9[0] = @"transform";
  null = [MEMORY[0x1E695DFB0] null];
  v9[1] = @"transform.rotation";
  v10[0] = null;
  null2 = [MEMORY[0x1E695DFB0] null];
  v10[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [layerCopy setActions:v8];
}

+ (void)getMetrics:(SBHClockApplicationIconImageMetrics *)metrics forIconImageInfo:(SBIconImageInfo *)info
{
  v8 = v4.f64[0] * 0.00263671875;
  v9 = 1.0;
  if (v4.f64[0] * 0.00263671875 < 1.0)
  {
    v8 = 1.0;
  }

  metrics->secondsHandWidth = v8;
  metrics->secondsHandLength = v4.f64[0] * 0.392578125;
  metrics->secondsHandleLength = v4.f64[0] * 0.04296875;
  v10 = vmulq_n_f64(xmmword_1BEE862A0, v4.f64[0]);
  *&metrics->secondsHandRingDiameter = v10;
  v11 = v4.f64[0] * 0.33984375;
  v12 = v4.f64[0] * 0.05078125;
  metrics->minutesHandRingDiameter = v4.f64[0] * 0.05078125;
  metrics->minutesHandRingKnockoutDiameter = v10.f64[0];
  v13 = v4.f64[0] * 0.17578125;
  if (v4.f64[0] * 0.0068359375 >= 1.0)
  {
    v9 = v4.f64[0] * 0.0068359375;
  }

  metrics->shadowRadius = v9;
  metrics->shadowInset = 3.0;
  metrics->separatorWidth = v4.f64[0] * 0.015625;
  v14 = vmulq_n_f64(xmmword_1BEE862B0, v4.f64[0]);
  metrics->minutesHandWidth = v14.f64[0];
  metrics->minutesHandLength = v11;
  metrics->hoursHandWidth = v14.f64[0];
  metrics->hoursHandLength = v13;
  metrics->secondsHandBounds.width = v10.f64[0];
  metrics->secondsHandBounds.height = v4.f64[0] * 0.04296875 + v4.f64[0] * 0.392578125 + v10.f64[0];
  metrics->minutesHandBounds.width = v12;
  metrics->minutesHandBounds.height = v14.f64[0] + v11 + v12;
  metrics->hoursHandBounds.width = v12;
  metrics->hoursHandBounds.height = v14.f64[0] + v13 + v12;
  metrics->contentsScale = v6;
  metrics->iconImageInfo.size.width = v4.f64[0];
  v4.f64[1] = v4.f64[0] / 60.0;
  *&metrics->separatorLength = v14;
  *&metrics->faceRadius = vmulq_f64(v4, xmmword_1BEE862C0);
  metrics->iconImageInfo.size.height = v5;
  metrics->iconImageInfo.scale = v6;
  metrics->iconImageInfo.continuousCornerRadius = v7;
}

- (void)getMetrics:(SBHClockApplicationIconImageMetrics *)metrics
{
  [(SBIconImageView *)self iconImageInfo];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_class();

  [v12 getMetrics:metrics forIconImageInfo:{v5, v7, v9, v11}];
}

+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics size:(CGSize)size actions:(id)actions
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E69DCA80];
  actionsCopy = actions;
  v10 = objc_alloc_init(v8);
  [v10 setScale:metrics->contentsScale];
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v10 format:{width, height}];
  v12 = [v11 imageWithActions:actionsCopy];

  return v12;
}

+ (id)makeComponentImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics size:(CGSize)size path:(CGPath *)path fillColor:(id)color options:(unint64_t)options
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  if (options)
  {
    v14 = metrics->shadowInset + metrics->shadowInset;
    width = width + v14;
    height = height + v14;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__SBHClockApplicationIconImageView_makeComponentImageWithMetrics_size_path_fillColor_options___block_invoke;
  v18[3] = &unk_1E808D6B0;
  v23 = options & 1;
  v19 = colorCopy;
  metricsCopy = metrics;
  pathCopy = path;
  optionsCopy = options;
  v15 = colorCopy;
  v16 = [self makeComponentImageWithMetrics:metrics size:v18 actions:{width, height}];

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

+ (id)makeDotImageWithOuterDiameter:(double)diameter innerDiameter:(double)innerDiameter color:(id)color isSeconds:(BOOL)seconds metrics:(const SBHClockApplicationIconImageMetrics *)metrics
{
  secondsCopy = seconds;
  colorCopy = color;
  Mutable = CGPathCreateMutable();
  v18.origin.x = (diameter - innerDiameter) * 0.5;
  v18.origin.y = v18.origin.x;
  v18.size.width = innerDiameter;
  v18.size.height = innerDiameter;
  CGPathAddEllipseInRect(Mutable, 0, v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = diameter;
  v19.size.height = diameter;
  CGPathAddEllipseInRect(Mutable, 0, v19);
  if (secondsCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  v15 = [self makeComponentImageWithMetrics:metrics size:Mutable path:colorCopy fillColor:v14 options:{diameter, diameter}];

  CGPathRelease(Mutable);

  return v15;
}

+ (id)makeDotLayerWithOuterDiameter:(double)diameter innerDiameter:(double)innerDiameter isSeconds:(BOOL)seconds imageSet:(id)set
{
  setCopy = set;
  layer = [MEMORY[0x1E6979398] layer];
  if (seconds)
  {
    [setCopy secondDot];
  }

  else
  {
    [setCopy hourMinuteDot];
  }
  v10 = ;
  [layer setContents:{objc_msgSend(v10, "CGImage")}];
  [v10 size];
  [layer setBounds:{0.0, 0.0, v11, v12}];
  [v10 scale];
  [layer setContentsScale:?];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  [setCopy getMetrics:v14];
  [self configureHandLayer:layer metrics:v14];

  return layer;
}

+ (id)makeSecondsHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance
{
  v6 = [self secondsHandColorWithImageAppearance:appearance];
  v7 = metrics->secondsHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v12.size.width = metrics->secondsHandWidth;
  v12.size.height = metrics->secondsHandLength;
  v12.origin.x = v7 - metrics->secondsHandWidth * 0.5;
  v12.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v12);
  v13.size.width = metrics->secondsHandWidth;
  v13.origin.x = v7 - metrics->secondsHandWidth * 0.5;
  v13.size.height = metrics->secondsHandleLength;
  v13.origin.y = metrics->secondsHandLength + metrics->secondsHandRingDiameter;
  CGPathAddRect(Mutable, 0, v13);
  v9 = [self makeComponentImageWithMetrics:metrics size:Mutable path:v6 fillColor:0 options:{metrics->secondsHandBounds.width, metrics->secondsHandBounds.height}];
  CGPathRelease(Mutable);

  return v9;
}

+ (id)makeSecondsHandLayerWithImageSet:(id)set
{
  v4 = MEMORY[0x1E6979398];
  setCopy = set;
  layer = [v4 layer];
  seconds = [setCopy seconds];
  [layer setContents:{objc_msgSend(seconds, "CGImage")}];
  [seconds size];
  [layer setBounds:{0.0, 0.0, v8, v9}];
  [seconds scale];
  [layer setContentsScale:?];
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
  [setCopy getMetrics:&v11];

  [layer setAnchorPoint:{0.5, (*(&v11 + 1) + *(&v12 + 1) * 0.5) / *&v14}];
  [self configureHandLayer:layer metrics:&v11];

  return layer;
}

+ (id)makeMinutesHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance
{
  v6 = [self hoursMinutesHandColorWithImageAppearance:appearance];
  v7 = metrics->minutesHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v15.size.width = metrics->separatorWidth;
  v15.origin.x = v7 - v15.size.width * 0.5;
  separatorExtraLength = metrics->separatorExtraLength;
  v15.origin.y = metrics->minutesHandLength - separatorExtraLength;
  v15.size.height = separatorExtraLength + separatorExtraLength + metrics->separatorLength;
  CGPathAddRect(Mutable, 0, v15);
  minutesHandWidth = metrics->minutesHandWidth;
  v11 = minutesHandWidth * 0.5;
  CGPathMoveToPoint(Mutable, 0, v7 - minutesHandWidth * 0.5, minutesHandWidth);
  CGPathAddArc(Mutable, 0, v7, v11, v11, 3.14159265, 0.0, 0);
  CGPathAddLineToPoint(Mutable, 0, v7 + v11, metrics->minutesHandLength - metrics->minutesHandWidth);
  CGPathAddArc(Mutable, 0, v7, metrics->minutesHandLength - v11, v11, 0.0, 3.14159265, 0);
  CGPathCloseSubpath(Mutable);
  v12 = [self makeComponentImageWithMetrics:metrics size:Mutable path:v6 fillColor:1 options:{metrics->minutesHandBounds.width, metrics->minutesHandBounds.height}];
  CGPathRelease(Mutable);

  return v12;
}

+ (id)makeMinutesHandLayerWithImageSet:(id)set
{
  v4 = MEMORY[0x1E6979398];
  setCopy = set;
  layer = [v4 layer];
  minutes = [setCopy minutes];
  [layer setContents:{objc_msgSend(minutes, "CGImage")}];
  [minutes size];
  [layer setBounds:{0.0, 0.0, v8, v9}];
  [minutes scale];
  [layer setContentsScale:?];
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
  [setCopy getMetrics:v11];

  [layer setAnchorPoint:{0.5, (*&v15 + *&v12 + *&v18 + *(&v12 + 1) * 0.5) / (*&v15 + *&v15 + *&v14)}];
  [self configureHandLayer:layer metrics:v11];

  return layer;
}

+ (id)makeHoursHandImageWithMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance
{
  v6 = [self hoursMinutesHandColorWithImageAppearance:appearance];
  v7 = metrics->minutesHandRingDiameter * 0.5;
  Mutable = CGPathCreateMutable();
  v15.size.width = metrics->separatorWidth;
  v15.origin.x = v7 - v15.size.width * 0.5;
  separatorExtraLength = metrics->separatorExtraLength;
  v15.origin.y = metrics->hoursHandLength - separatorExtraLength;
  v15.size.height = separatorExtraLength + separatorExtraLength + metrics->separatorLength;
  CGPathAddRect(Mutable, 0, v15);
  hoursHandWidth = metrics->hoursHandWidth;
  v11 = hoursHandWidth * 0.5;
  CGPathMoveToPoint(Mutable, 0, v7 - hoursHandWidth * 0.5, hoursHandWidth);
  CGPathAddArc(Mutable, 0, v7, v11, v11, 3.14159265, 0.0, 0);
  CGPathAddLineToPoint(Mutable, 0, v7 + v11, metrics->hoursHandLength - metrics->hoursHandWidth);
  CGPathAddArc(Mutable, 0, v7, metrics->hoursHandLength - v11, v11, 0.0, 3.14159265, 0);
  CGPathCloseSubpath(Mutable);
  v12 = [self makeComponentImageWithMetrics:metrics size:Mutable path:v6 fillColor:1 options:{metrics->hoursHandBounds.width, metrics->hoursHandBounds.height}];
  CGPathRelease(Mutable);

  return v12;
}

+ (id)makeHoursHandLayerWithImageSet:(id)set
{
  v4 = MEMORY[0x1E6979398];
  setCopy = set;
  layer = [v4 layer];
  hours = [setCopy hours];
  [layer setContents:{objc_msgSend(hours, "CGImage")}];
  [hours size];
  [layer setBounds:{0.0, 0.0, v8, v9}];
  [hours scale];
  [layer setContentsScale:?];
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
  [setCopy getMetrics:v11];

  [layer setAnchorPoint:{0.5, (*&v15 + *&v16 + *&v18 + *(&v12 + 1) * 0.5) / (*&v15 + *&v15 + *&v17)}];
  [self configureHandLayer:layer metrics:v11];

  return layer;
}

+ (id)makeImageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v7 = objc_alloc_init(SBHClockHandsImageSet);
  [(SBHClockHandsImageSet *)v7 setMetrics:metrics];
  v8 = [self makeHoursHandImageWithMetrics:metrics imageAppearance:appearanceCopy];
  [(SBHClockHandsImageSet *)v7 setHours:v8];
  v9 = [self makeMinutesHandImageWithMetrics:metrics imageAppearance:appearanceCopy];
  [(SBHClockHandsImageSet *)v7 setMinutes:v9];
  if (([self hidesSecondsHand] & 1) == 0)
  {
    v10 = [self makeSecondsHandImageWithMetrics:metrics imageAppearance:appearanceCopy];
    [(SBHClockHandsImageSet *)v7 setSeconds:v10];
  }

  v11 = [self hoursMinutesHandColorWithImageAppearance:appearanceCopy];
  v12 = [self makeDotImageWithOuterDiameter:v11 innerDiameter:0 color:metrics isSeconds:metrics->minutesHandRingDiameter metrics:metrics->minutesHandRingKnockoutDiameter];
  [(SBHClockHandsImageSet *)v7 setHourMinuteDot:v12];
  if (([self hidesSecondsHand] & 1) == 0)
  {
    v13 = [self secondsHandColorWithImageAppearance:appearanceCopy];
    v14 = [self makeDotImageWithOuterDiameter:v13 innerDiameter:1 color:metrics isSeconds:metrics->secondsHandRingDiameter metrics:metrics->secondsHandRingKnockoutDiameter];
    [(SBHClockHandsImageSet *)v7 setSecondDot:v14];
  }

  return v7;
}

+ (id)imageSetForMetrics:(const SBHClockApplicationIconImageMetrics *)metrics imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v7 = +[SBHIconImageAppearanceStore defaultIcon];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:metrics->iconImageInfo.size.width];
  v9 = [imageSetForMetrics_imageAppearance___cachedImageSets objectForKey:v8];
  v10 = [(SBHIconImageAppearanceStore *)v9 imageForIcon:v7 appearance:appearanceCopy];
  if (v10)
  {
    v11 = v10;
    goto LABEL_6;
  }

  v11 = [self makeImageSetForMetrics:metrics imageAppearance:appearanceCopy];
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
  [(SBHIconImageAppearanceStore *)v9 setImage:v11 forIcon:v7 appearance:appearanceCopy];
LABEL_6:

  return v11;
}

- (void)applyMetrics:(const SBHClockApplicationIconImageMetrics *)metrics
{
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  layer = [(SBHClockApplicationIconImageView *)self layer];
  v6 = [objc_opt_class() imageSetForMetrics:metrics imageAppearance:effectiveIconImageAppearance];
  [(SBHClockApplicationIconImageView *)self hourMinuteHandOpacity];
  v8 = v7;
  v9 = [objc_opt_class() makeHoursHandLayerWithImageSet:v6];
  LODWORD(v10) = v8;
  [v9 setOpacity:v10];
  [layer addSublayer:v9];
  [(CALayer *)self->_hours removeFromSuperlayer];
  objc_storeStrong(&self->_hours, v9);
  v11 = [objc_opt_class() makeMinutesHandLayerWithImageSet:v6];
  LODWORD(v12) = v8;
  [v11 setOpacity:v12];
  [layer addSublayer:v11];
  [(CALayer *)self->_minutes removeFromSuperlayer];
  objc_storeStrong(&self->_minutes, v11);
  v13 = [objc_opt_class() makeDotLayerWithOuterDiameter:0 innerDiameter:v6 isSeconds:metrics->minutesHandRingDiameter imageSet:metrics->minutesHandRingKnockoutDiameter];
  LODWORD(v14) = v8;
  [v13 setOpacity:v14];
  [layer addSublayer:v13];
  [(CALayer *)self->_hourMinuteDot removeFromSuperlayer];
  objc_storeStrong(&self->_hourMinuteDot, v13);
  if (([objc_opt_class() hidesSecondsHand] & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self secondsHandOpacity];
    v16 = v15;
    v17 = [objc_opt_class() makeSecondsHandLayerWithImageSet:v6];
    LODWORD(v18) = v16;
    [(CALayer *)v17 setOpacity:v18];
    [layer addSublayer:v17];
    [(CALayer *)self->_seconds removeFromSuperlayer];
    seconds = self->_seconds;
    self->_seconds = v17;
    v20 = v17;

    v21 = [objc_opt_class() makeDotLayerWithOuterDiameter:1 innerDiameter:v6 isSeconds:metrics->secondsHandRingDiameter imageSet:metrics->secondsHandRingKnockoutDiameter];
    LODWORD(v22) = v16;
    [(CALayer *)v21 setOpacity:v22];
    [layer addSublayer:v21];
    [(CALayer *)self->_secondDot removeFromSuperlayer];
    secondDot = self->_secondDot;
    self->_secondDot = v21;
  }

  [(SBHClockApplicationIconImageView *)self setDisplayedHandsAppearance:effectiveIconImageAppearance];
  [(SBIconImageView *)self didAddSublayer];
}

+ (void)precacheDataWithIconImageInfo:(SBIconImageInfo *)info appearance:(id)appearance
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  infoCopy = info;
  [self precacheDataWithIconImageInfo:infoCopy appearance:1 options:{v11, v10, v9, v8}];
  [self precacheDataWithIconImageInfo:infoCopy appearance:0 options:{v11, v10, v9, v8}];
}

+ (id)clockIconBackgroundTypeIdentifierForNumberingSystem:(id)system
{
  systemCopy = system;
  v4 = systemCopy;
  if (systemCopy && [systemCopy caseInsensitiveCompare:@"latn"])
  {
    v5 = [@"com.apple.application-icon.clock.base" stringByAppendingFormat:@".%@", v4];
    v6 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v5];
    isDeclared = [v6 isDeclared];

    if (isDeclared)
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
  systemNumberingSystem = [self systemNumberingSystem];
  v4 = [self clockIconBackgroundTypeIdentifierForNumberingSystem:systemNumberingSystem];

  return v4;
}

- (id)clockIconBackgroundTypeIdentifierForCurrentNumberingSystem
{
  v3 = objc_opt_class();
  currentNumberingSystem = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
  v5 = [v3 clockIconBackgroundTypeIdentifierForNumberingSystem:currentNumberingSystem];

  return v5;
}

- (void)updateImageAnimated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = SBHClockApplicationIconImageView;
  [(SBIconImageView *)&v6 updateImageAnimated:animated];
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  displayedHandsAppearance = [(SBHClockApplicationIconImageView *)self displayedHandsAppearance];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self resetForegroundLayers];
    [(SBHClockApplicationIconImageView *)self setNeedsLayout];
  }
}

- (id)iconForImage
{
  icon = [(SBIconImageView *)self icon];

  if (icon)
  {
    clockBackgroundIcon = [(SBHClockApplicationIconImageView *)self clockBackgroundIcon];
    if (!clockBackgroundIcon)
    {
      currentNumberingSystem = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
      if (!currentNumberingSystem)
      {
        currentNumberingSystem = [objc_opt_class() systemNumberingSystem];
        [(SBHClockApplicationIconImageView *)self setCurrentNumberingSystem:currentNumberingSystem];
      }

      v6 = [SBLeafIcon alloc];
      v7 = [objc_opt_class() clockIconBackgroundTypeIdentifierForNumberingSystem:currentNumberingSystem];
      clockBackgroundIcon = [(SBLeafIcon *)v6 initWithLeafIdentifier:v7 applicationBundleID:0];

      v8 = objc_alloc_init(SBHClockBackgroundIconDataSource);
      [(SBLeafIcon *)clockBackgroundIcon addIconDataSource:v8];
      [(SBHClockApplicationIconImageView *)self setClockBackgroundIcon:clockBackgroundIcon];
    }
  }

  else
  {
    clockBackgroundIcon = 0;
  }

  return clockBackgroundIcon;
}

- (void)_setAnimating:(BOOL)animating
{
  v16 = *MEMORY[0x1E69E9840];
  if (animating)
  {
    [(SBHClockApplicationIconImageView *)self updateUnanimated];
    selfCopy = self;
    if (_SBClockIconInitialize___once != -1)
    {
      _SBClockIconGetCalendar_cold_1();
    }

    if (([__tickClients containsObject:selfCopy] & 1) == 0)
    {
      v5 = SBLogClock();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = selfCopy;
        v14 = 2048;
        v15 = [__tickClients count] + 1;
        _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Add clock icon tick client: %p/%lu", &v12, 0x16u);
      }

      [__tickClients addObject:selfCopy];
      hidesSecondHand = [(SBHClockApplicationIconImageView *)selfCopy hidesSecondHand];
      if (hidesSecondHand != +[SBHClockApplicationIconImageView hidesSecondsHand])
      {
        [(SBHClockApplicationIconImageView *)selfCopy updateSecondsHandHidden];
      }

      _SBClockIconResetTimer();
    }
  }

  else
  {
    selfCopy2 = self;
    if ([__tickClients containsObject:selfCopy2])
    {
      v8 = SBLogClock();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = selfCopy2;
        v14 = 2048;
        v15 = [__tickClients count] - 1;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Remove clock icon tick client: %p/%lu", &v12, 0x16u);
      }

      [__tickClients removeObject:selfCopy2];
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

- (void)_updateUnanimatedWithComponents:(id)components
{
  v4 = MEMORY[0x1E695DF00];
  componentsCopy = components;
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;
  overrideDate = [objc_opt_class() overrideDate];
  v9 = v7 - trunc(v7);
  if (overrideDate)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 + [componentsCopy second];
  v12 = v11 / 60.0 + [componentsCopy minute];
  hour = [componentsCopy hour];

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
  v20 = fmod((v12 / 60.0 + hour) / 6.0 * 3.14159265, 6.28318531);
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

- (void)_timerFiredWithComponents:(id)components flags:(unint64_t)flags
{
  flagsCopy = flags;
  componentsCopy = components;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = 0.0;
  if (flagsCopy < 0 && self->_seconds)
  {
    v9 = v7 - trunc(v7) + [componentsCopy second];
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

  if ((flagsCopy & 0x40) != 0)
  {
    v13 = v8 / 60.0 + [componentsCopy minute];
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
    if ((flagsCopy & 0x20) != 0)
    {
      v18 = v14 / 60.0 + [componentsCopy hour];
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

- (void)localeDidChange:(id)change
{
  systemNumberingSystem = [objc_opt_class() systemNumberingSystem];
  currentNumberingSystem = [(SBHClockApplicationIconImageView *)self currentNumberingSystem];
  if (!currentNumberingSystem || ([systemNumberingSystem isEqualToString:currentNumberingSystem] & 1) == 0)
  {
    [(SBHClockApplicationIconImageView *)self clearCachedImages];
    [(SBHClockApplicationIconImageView *)self updateImageAnimated:0];
    [(SBHClockApplicationIconImageView *)self setCurrentNumberingSystem:systemNumberingSystem];
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

- (void)controller:(id)controller didChangeOverrideDateFromDate:(id)date
{
  __hasSBFDateTimeOverride = [controller hasDateOverride];
  [(SBHClockApplicationIconImageView *)self updateOngoingAnimationState];

  [(SBHClockApplicationIconImageView *)self updateUnanimated];
}

@end