@interface _UIBatteryView
+ (CGSize)_batterySizeForIconSize:(int64_t)size;
+ (CGSize)_pinSizeForIconSize:(int64_t)size;
+ (double)_insideCornerRadiusForIconSize:(int64_t)size;
+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)size;
+ (double)_outsideCornerRadiusForIconSize:(int64_t)size;
+ (id)_boltBezierPathForSize:(CGSize)size;
+ (id)_boltMaskBezierPath;
+ (id)_pinBezierPathForSize:(CGSize)size isComplex:(BOOL)complex;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_batteryTextIsCutout;
- (BOOL)_percentageFontCondensedWhenChargingForTraitCollection:(id)collection;
- (BOOL)isLowBattery;
- (CGRect)_bodyRectForTraitCollection:(id)collection;
- (CGRect)_updateBodyLayers;
- (CGSize)_batterySizeForTraitCollection:(id)collection;
- (CGSize)_pinSizeForIconSize:(int64_t)size;
- (CGSize)_pinSizeForTraitCollection:(id)collection;
- (CGSize)intrinsicContentSize;
- (UIColor)bodyColor;
- (UIColor)boltColor;
- (UIColor)boltInactiveColor;
- (UIColor)fillColor;
- (UIColor)inactiveColor;
- (UIColor)pinColor;
- (_UIBatteryView)initWithCoder:(id)coder;
- (_UIBatteryView)initWithFrame:(CGRect)frame;
- (_UIBatteryView)initWithSizeCategory:(int64_t)category;
- (double)_batteryBoltPositionOffsetForTraitCollection:(id)collection;
- (double)_batteryBoltScaleFactorMultiplier;
- (double)_insideCornerRadiusForTraitCollection:(id)collection;
- (double)_lineWidthAndInterspaceForTraitCollection:(id)collection;
- (double)_outsideCornerRadiusForTraitCollection:(id)collection;
- (double)_percentTextVerticalAdjustmentForIconSize:(int64_t)size;
- (double)_percentTextVerticalAdjustmentForTraitCollection:(id)collection;
- (double)_percentTextXAdjustmentWhenFullForIconSize:(int64_t)size;
- (double)_percentTextXAdjustmentWhenFullForTraitCollection:(id)collection;
- (double)_percentageBatteryBoltScaleFactorMultiplier;
- (double)_percentageFontCondensedWhenChargingForIconSize:(int64_t)size;
- (double)_percentageFontSizeForIconSize:(int64_t)size;
- (double)_percentageFontSizeForTraitCollection:(id)collection;
- (id)_batteryFillColor;
- (id)_batteryTextColor;
- (id)_batteryUnfilledColor;
- (id)_textBoltInactiveColor;
- (id)accessibilityHUDRepresentation;
- (void)__resetBoltLayers;
- (void)__updateFillLayer;
- (void)_commonInit;
- (void)_createBodyLayers;
- (void)_createBoltLayersWithSize:(CGSize)size;
- (void)_createFillLayer;
- (void)_fillLayerFrame:(CGRect *)frame cornerRadius:(double *)radius;
- (void)_notifyDidFinishAnimatingBoltToVisible:(BOOL)visible;
- (void)_notifyWillBeginAnimatingBoltToVisible:(BOOL)visible;
- (void)_unflipBoltIfNecessary;
- (void)_updateBatteryFillColor;
- (void)_updateBodyColors;
- (void)_updateBolt;
- (void)_updateFillColor;
- (void)_updateFillLayer;
- (void)_updateForObservedTraitChange;
- (void)_updateLightningBoltAndPercentagePosition;
- (void)_updatePercentage;
- (void)_updatePercentageFont;
- (void)_updateTransform;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBodyColor:(id)color;
- (void)setBodyColorAlpha:(double)alpha;
- (void)setBoltColor:(id)color;
- (void)setBoltInactiveColor:(id)color;
- (void)setChargePercent:(double)percent;
- (void)setChargingState:(int64_t)state;
- (void)setFillColor:(id)color;
- (void)setInactiveColor:(id)color;
- (void)setInternalSizeCategory:(int64_t)category;
- (void)setLowBatteryMode:(int64_t)mode;
- (void)setPinColor:(id)color;
- (void)setPinColorAlpha:(double)alpha;
- (void)setRounded:(BOOL)rounded iconSize:(int64_t)size;
- (void)setSaverModeActive:(BOOL)active;
- (void)setShowsInlineChargingIndicator:(BOOL)indicator;
- (void)setShowsPercentage:(BOOL)percentage;
- (void)setSizeCategory:(int64_t)category;
@end

@implementation _UIBatteryView

- (void)_commonInit
{
  v13 = *MEMORY[0x1E69E9840];
  [(_UIBatteryView *)self _createBodyLayers];
  [(_UIBatteryView *)self _createFillLayer];
  self->_bodyColorAlpha = 0.4;
  self->_pinColorAlpha = 0.5;
  [(_UIBatteryView *)self setSizeCategory:0];
  v3 = +[UIDevice currentDevice];
  -[_UIBatteryView setLowBatteryChargePercentThreshold:](self, "setLowBatteryChargePercentThreshold:", dbl_18A6795C0[[v3 userInterfaceIdiom] == 1]);

  v4 = objc_opt_self();
  v10 = v4;
  v5 = objc_opt_self();
  v11 = v5;
  v6 = objc_opt_self();
  v12 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
  v8 = [(UIView *)self registerForTraitChanges:v7 withAction:sel__updateForObservedTraitChange, v10, v11];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updatePercentage name:0x1EFB8EEF0 object:UIApp];

  [(_UIBatteryView *)self _updateTransform];
}

- (void)__resetBoltLayers
{
  [(CALayer *)self->_boltMaskLayer removeFromSuperlayer];
  boltMaskLayer = self->_boltMaskLayer;
  self->_boltMaskLayer = 0;

  [(CALayer *)self->_boltLayer removeFromSuperlayer];
  boltLayer = self->_boltLayer;
  self->_boltLayer = 0;

  [(_UIBatteryView *)self _updateBolt];
}

- (double)_batteryBoltScaleFactorMultiplier
{
  result = 1.30434783;
  if (self->_internalSizeCategory != 2)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateTransform
{
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    CATransform3DMakeScale(&v18, -1.0, 1.0, 1.0);
    layer = [(UIView *)self layer];
    v4 = layer;
    v14 = *&v18.m31;
    v15 = *&v18.m33;
    v16 = *&v18.m41;
    v17 = *&v18.m43;
    v10 = *&v18.m11;
    v11 = *&v18.m13;
    v5 = *&v18.m21;
    v6 = *&v18.m23;
  }

  else
  {
    layer = [(UIView *)self layer];
    v4 = layer;
    v7 = *(MEMORY[0x1E69792E8] + 80);
    v14 = *(MEMORY[0x1E69792E8] + 64);
    v15 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 112);
    v16 = *(MEMORY[0x1E69792E8] + 96);
    v17 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 16);
    v10 = *MEMORY[0x1E69792E8];
    v11 = v9;
    v5 = *(MEMORY[0x1E69792E8] + 32);
    v6 = *(MEMORY[0x1E69792E8] + 48);
  }

  v12 = v5;
  v13 = v6;
  [layer setSublayerTransform:&v10];
}

- (void)_updatePercentage
{
  if (self->_showsPercentage)
  {
    v3 = self->_chargePercent * 100.0;
    if (v3 < 1.0)
    {
      v3 = 1.0;
    }

    v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%.0f", *&v3];
    text = [(UILabel *)self->_percentageLabel text];
    v6 = [v4 isEqualToString:text];

    if ((v6 & 1) == 0)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v7 = _StatusBar_UIAttributedStringForIsolatedNumericStringIfNecessary(v4);
      percentageLabel = self->_percentageLabel;
      if (v7)
      {
        [(UILabel *)percentageLabel setAttributedText:v7];
      }

      else
      {
        [(UILabel *)percentageLabel setText:v4];
      }

      [(_UIBatteryView *)self _updateLightningBoltAndPercentagePosition];
      [MEMORY[0x1E6979518] commit];
    }

    [(UIView *)self->_percentageLabel alpha];
    if (v10 < 1.0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __35___UIBatteryView__updatePercentage__block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [UIView animateWithDuration:v12 animations:0.5];
    }
  }

  else
  {
    [(UIView *)self->_percentageLabel alpha];
    if (v9 > 0.0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35___UIBatteryView__updatePercentage__block_invoke_2;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      [UIView animateWithDuration:v11 animations:0.25];
    }
  }

  [(_UIBatteryView *)self __updateFillLayer];
}

- (void)__updateFillLayer
{
  if (self->_internalSizeCategory || [(_UIBatteryView *)self hasValidIconSize])
  {
    [(_UIBatteryView *)self _updateFillLayer];

    [(_UIBatteryView *)self _updateFillColor];
  }
}

- (UIColor)fillColor
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    v3 = fillColor;
  }

  else
  {
    v3 = +[UIColor labelColor];
  }

  return v3;
}

- (UIColor)boltColor
{
  boltColor = self->_boltColor;
  if (boltColor)
  {
    v3 = boltColor;
  }

  else
  {
    bodyColor = [(_UIBatteryView *)self bodyColor];
    v3 = [bodyColor colorWithAlphaComponent:1.0];
  }

  return v3;
}

- (void)_updateFillColor
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v3 = __34___UIBatteryView__updateFillColor__block_invoke;
  v4 = &unk_1E70F3590;
  selfCopy = self;
  if ([MEMORY[0x1E6979518] currentState])
  {
    v3(v2);
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    if (+[UIView areAnimationsEnabled])
    {
      [MEMORY[0x1E6979518] setAnimationDuration:0.5];
    }

    else
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    v3(v2);
    [MEMORY[0x1E6979518] commit];
  }
}

- (BOOL)isLowBattery
{
  lowBatteryMode = self->_lowBatteryMode;
  if (lowBatteryMode)
  {
    return lowBatteryMode == 2;
  }

  [(_UIBatteryView *)self chargePercent];
  v6 = v5;
  [(_UIBatteryView *)self lowBatteryChargePercentThreshold];
  return v6 <= v7;
}

- (void)_unflipBoltIfNecessary
{
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    boltLayer = self->_boltLayer;
    if (boltLayer)
    {
      [(CALayer *)boltLayer transform];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    CATransform3DMakeScale(&b, -1.0, 1.0, 1.0);
    CATransform3DConcat(&v10, &a, &b);
    v4 = self->_boltLayer;
    a = v10;
    [(CALayer *)v4 setTransform:&a];
    boltMaskLayer = self->_boltMaskLayer;
    if (boltMaskLayer)
    {
      [(CALayer *)boltMaskLayer transform];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    CATransform3DMakeScale(&b, -1.0, 1.0, 1.0);
    CATransform3DConcat(&v7, &a, &b);
    v6 = self->_boltMaskLayer;
    a = v7;
    [(CALayer *)v6 setTransform:&a];
  }
}

- (void)_updateBolt
{
  _shouldShowBolt = [(_UIBatteryView *)self _shouldShowBolt];
  [(CALayer *)self->_boltLayer opacity];
  v5 = v4;
  showsPercentage = self->_showsPercentage;
  [(_UIBatteryView *)self _batteryBoltLargeScaleFactor];
  v8 = v7;
  if (showsPercentage)
  {
    [(_UIBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
  }

  else
  {
    [(_UIBatteryView *)self _batteryBoltScaleFactorMultiplier];
  }

  v10 = v8 * v9;
  [(_UIBatteryView *)self _batteryBoltSmallScaleFactor];
  v12 = v11;
  [(_UIBatteryView *)self _batteryBoltScaleFactorMultiplier];
  v14 = v12 * v13;
  memset(&v32, 0, sizeof(v32));
  CATransform3DMakeScale(&v32, v10, v10, 1.0);
  memset(&v31, 0, sizeof(v31));
  CATransform3DMakeScale(&v31, v14, v14, 1.0);
  v15 = !_shouldShowBolt;
  if (_shouldShowBolt && v5 == 0.0)
  {
    if (!self->_boltLayer)
    {
      [(_UIBatteryView *)self _createBoltLayersWithSize:32.0, 40.0];
    }

    layer = [(UIView *)self layer];
    [layer addSublayer:self->_boltMaskLayer];

    layer2 = [(UIView *)self layer];
    [layer2 addSublayer:self->_boltLayer];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v30 = v32;
    v27 = __29___UIBatteryView__updateBolt__block_invoke;
    v28 = &unk_1E7103ED8;
    selfCopy = self;
    if (+[UIView areAnimationsEnabled])
    {
      v25 = v31;
      [(CALayer *)self->_boltLayer setTransform:&v25];
      [(CALayer *)self->_boltLayer setOpacity:0.0];
      v25 = v31;
      [(CALayer *)self->_boltMaskLayer setTransform:&v25];
      [(CALayer *)self->_boltMaskLayer setOpacity:0.0];
      [(_UIBatteryView *)self _unflipBoltIfNecessary];
      [(_UIBatteryView *)self _notifyWillBeginAnimatingBoltToVisible:1];
      [MEMORY[0x1E6979518] begin];
      v18 = 0.5;
      if (self->_showsPercentage)
      {
        v18 = 0.25;
      }

      [MEMORY[0x1E6979518] setAnimationDuration:v18];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __29___UIBatteryView__updateBolt__block_invoke_2;
      v23[3] = &unk_1E70F35E0;
      v23[4] = self;
      v24 = _shouldShowBolt;
      [MEMORY[0x1E6979518] setCompletionBlock:v23];
      v27(v26);
      v19 = MEMORY[0x1E6979518];
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v27(v26);
      v19 = MEMORY[0x1E6979518];
    }

    goto LABEL_25;
  }

  if (!_shouldShowBolt && v5 != 0.0)
  {
    [(_UIBatteryView *)self _notifyWillBeginAnimatingBoltToVisible:0];
    [MEMORY[0x1E6979518] begin];
    if (+[UIView areAnimationsEnabled])
    {
      [MEMORY[0x1E6979518] setAnimationDuration:0.5];
    }

    else
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __29___UIBatteryView__updateBolt__block_invoke_3;
    v21[3] = &unk_1E70F35E0;
    v21[4] = self;
    v22 = _shouldShowBolt;
    [MEMORY[0x1E6979518] setCompletionBlock:v21];
    v25 = v31;
    [(CALayer *)self->_boltLayer setTransform:&v25];
    [(CALayer *)self->_boltLayer setOpacity:0.0];
    v25 = v31;
    [(CALayer *)self->_boltMaskLayer setTransform:&v25];
    [(CALayer *)self->_boltMaskLayer setOpacity:0.0];
    [(_UIBatteryView *)self _unflipBoltIfNecessary];
    v19 = MEMORY[0x1E6979518];
LABEL_25:
    [v19 commit];
    return;
  }

  if (v5 == 0.0)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v25 = v32;
    [(CALayer *)self->_boltLayer setTransform:&v25];
    v25 = v32;
    [(CALayer *)self->_boltMaskLayer setTransform:&v25];
    LODWORD(v20) = 1.0;
    if (self->_showsPercentage)
    {
      *&v20 = 0.0;
    }

    [(CALayer *)self->_boltMaskLayer setOpacity:v20];
    [(_UIBatteryView *)self _unflipBoltIfNecessary];
  }
}

- (UIColor)bodyColor
{
  bodyColor = self->_bodyColor;
  if (bodyColor)
  {
    v3 = bodyColor;
  }

  else
  {
    fillColor = [(_UIBatteryView *)self fillColor];
    v3 = [fillColor colorWithAlphaComponent:self->_bodyColorAlpha];
  }

  return v3;
}

- (BOOL)_batteryTextIsCutout
{
  chargingState = [(_UIBatteryView *)self chargingState];
  saverModeActive = [(_UIBatteryView *)self saverModeActive];
  result = 0;
  if (!saverModeActive && (chargingState & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    return ![(_UIBatteryView *)self isLowBattery];
  }

  return result;
}

- (UIColor)pinColor
{
  pinColor = self->_pinColor;
  if (pinColor)
  {
    v3 = pinColor;
  }

  else
  {
    bodyColor = [(_UIBatteryView *)self bodyColor];
    v3 = [bodyColor colorWithAlphaComponent:self->_pinColorAlpha];
  }

  return v3;
}

- (id)_batteryTextColor
{
  if ([(_UIBatteryView *)self saverModeActive])
  {
    +[UIColor systemBlackColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v2 = ;

  return v2;
}

- (id)_batteryFillColor
{
  if ([(_UIBatteryView *)self saverModeActive])
  {
    traitCollection = [(UIView *)self traitCollection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35___UIBatteryView__batteryFillColor__block_invoke;
    v15[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v15[4] = 0;
    v4 = [traitCollection traitCollectionByModifyingTraits:v15];

    v5 = +[UIColor systemYellowColor];
LABEL_8:
    v8 = v5;
    fillColor = [v5 resolvedColorWithTraitCollection:v4];

    goto LABEL_9;
  }

  if ([(_UIBatteryView *)self isLowBattery])
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35___UIBatteryView__batteryFillColor__block_invoke_2;
    v13[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
    v14 = xmmword_18A64C520;
    v4 = [traitCollection2 traitCollectionByModifyingTraits:v13];

    v5 = +[UIColor systemRedColor];
    goto LABEL_8;
  }

  if ([(_UIBatteryView *)self chargingState]!= 4 && [(_UIBatteryView *)self chargingState])
  {
    traitCollection3 = [(UIView *)self traitCollection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35___UIBatteryView__batteryFillColor__block_invoke_3;
    v11[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
    v12 = xmmword_18A64C520;
    v4 = [traitCollection3 traitCollectionByModifyingTraits:v11];

    v5 = +[UIColor systemGreenColor];
    goto LABEL_8;
  }

  fillColor = [(_UIBatteryView *)self fillColor];
LABEL_9:

  return fillColor;
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(UIView *)self traitCollection];
  [(_UIBatteryView *)self _batterySizeForTraitCollection:traitCollection];
  v5 = v4;
  v7 = v6;
  [(_UIBatteryView *)self _pinSizeForTraitCollection:traitCollection];
  v9 = v8;
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
  v11 = v9 + v5 + v10;

  v12 = v11;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateForObservedTraitChange
{
  [(_UIBatteryView *)self _updateFillColor];
  [(_UIBatteryView *)self _updateTransform];
  [(_UIBatteryView *)self _updateBolt];
  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBatteryView *)self _updateBodyLayers];
  [(CALayer *)self->_bodyLayer setFrame:v4, v6, v8, v10];
  [(_UIBatteryView *)self _updateLightningBoltAndPercentagePosition];
  [(_UIBatteryView *)self _updateBodyColors];
  [(_UIBatteryView *)self __updateFillLayer];
  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)_updateLightningBoltAndPercentagePosition
{
  if (self->_internalSizeCategory || [(_UIBatteryView *)self hasValidIconSize])
  {
    traitCollection = [(UIView *)self traitCollection];
    [(_UIBatteryView *)self _bodyRectForTraitCollection:traitCollection];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (self->_showsPercentage)
    {
      _shouldShowBolt = [(_UIBatteryView *)self _shouldShowBolt];
      [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
      v14 = v13;
      [(_UIBatteryView *)self _updatePercentageFont];
      [(UIView *)self->_percentageLabel sizeToFit];
      v48.origin.x = v8;
      v48.origin.y = v9;
      v48.size.width = v10;
      v48.size.height = v11;
      MidY = CGRectGetMidY(v48);
      [(_UIBatteryView *)self _percentTextVerticalAdjustmentForTraitCollection:traitCollection];
      v17 = MidY + v16;
      if (_shouldShowBolt)
      {
        [(UIView *)self _currentScreenScale];
        v19 = v14 + v14 + 2.0 / v18;
        [(_UIBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
        v21 = v19 + v20 * 0.333333333 * 10.6666667;
        v49.origin.x = v8;
        v49.origin.y = v9;
        v49.size.width = v10;
        v49.size.height = v11;
        MidX = CGRectGetMidX(v49) + v21 * -0.5;
      }

      else
      {
        chargePercent = self->_chargePercent;
        v51.origin.x = v8;
        v51.origin.y = v9;
        v51.size.width = v10;
        v51.size.height = v11;
        MidX = CGRectGetMidX(v51);
        if (chargePercent >= 0.995)
        {
          [(_UIBatteryView *)self _percentTextXAdjustmentWhenFullForTraitCollection:traitCollection];
          MidX = MidX + v29;
        }
      }

      [(UIView *)self->_percentageLabel bounds];
      v31 = MidX - v30 * 0.5;
      [(UIView *)self->_percentageLabel bounds];
      v33 = v17 - v32 * 0.5;
      UIRoundToViewScale(self->_percentageLabel);
      v35 = MidX + v31 - v34;
      UIRoundToViewScale(self->_percentageLabel);
      [(UIView *)self->_percentageLabel setCenter:v35, v17 - (v33 - v36)];
      if ([(UIView *)self _shouldReverseLayoutDirection])
      {
        CGAffineTransformMakeScale(&v46, -1.0, 1.0);
        percentageLabel = self->_percentageLabel;
        v43 = *&v46.a;
        v44 = *&v46.c;
        v38 = *&v46.tx;
      }

      else
      {
        percentageLabel = self->_percentageLabel;
        v39 = *(MEMORY[0x1E695EFD0] + 16);
        v43 = *MEMORY[0x1E695EFD0];
        v44 = v39;
        v38 = *(MEMORY[0x1E695EFD0] + 32);
      }

      v45 = v38;
      [(UIView *)percentageLabel setTransform:&v43];
      [(UIView *)self->_percentageLabel frame:v43];
      v41 = v40;
      v52.origin.x = v8;
      v52.origin.y = v9;
      v52.size.width = v10;
      v52.size.height = v11;
      v42 = CGRectGetMidX(v52) + v41 * 0.5;
      [(CALayer *)self->_boltMaskLayer setPosition:v42, v17];
      boltLayer = self->_boltLayer;
      v26 = v42;
      v27 = v17;
    }

    else
    {
      v23 = CGRectGetMidX(*&v4);
      v50.origin.x = v8;
      v50.origin.y = v9;
      v50.size.width = v10;
      v50.size.height = v11;
      v24 = CGRectGetMidY(v50);
      [(CALayer *)self->_boltMaskLayer setPosition:v23, v24];
      boltLayer = self->_boltLayer;
      v26 = v23;
      v27 = v24;
    }

    [(CALayer *)boltLayer setPosition:v26, v27];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFB8EEF0 object:UIApp];

  v4.receiver = self;
  v4.super_class = _UIBatteryView;
  [(UIView *)&v4 dealloc];
}

- (void)_createFillLayer
{
  layer = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setFillLayer:layer];

  [(CALayer *)self->_fillLayer setMasksToBounds:1];
  [(CALayer *)self->_fillLayer setCornerCurve:*MEMORY[0x1E69796E8]];
  bodyLayer = self->_bodyLayer;
  fillLayer = self->_fillLayer;

  [(CALayer *)bodyLayer addSublayer:fillLayer];
}

- (void)_createBodyLayers
{
  layer = [MEMORY[0x1E69794A0] layer];
  [(_UIBatteryView *)self setBodyLayer:layer];

  v4 = +[UIColor clearColor];
  cGColor = [v4 CGColor];
  bodyShapeLayer = [(_UIBatteryView *)self bodyShapeLayer];
  [bodyShapeLayer setFillColor:cGColor];

  layer2 = [(UIView *)self layer];
  [layer2 addSublayer:self->_bodyLayer];

  layer3 = [MEMORY[0x1E69794A0] layer];
  [(_UIBatteryView *)self setPinLayer:layer3];

  layer4 = [(UIView *)self layer];
  [layer4 addSublayer:self->_pinLayer];

  layer5 = [MEMORY[0x1E69794A0] layer];
  [(_UIBatteryView *)self setPercentFillLayer:layer5];

  v14 = objc_alloc_init(MEMORY[0x1E6979398]);
  v11 = +[UIColor blackColor];
  [v14 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  percentFillLayer = [(_UIBatteryView *)self percentFillLayer];
  [percentFillLayer setMask:v14];

  layer6 = [(UIView *)self layer];
  [layer6 addSublayer:self->_percentFillLayer];
}

- (void)_createBoltLayersWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v20 = [objc_opt_class() _boltBezierPathForSize:{size.width, size.height}];
  _boltMaskBezierPath = [objc_opt_class() _boltMaskBezierPath];
  layer = [MEMORY[0x1E69794A0] layer];
  boltMaskLayer = self->_boltMaskLayer;
  self->_boltMaskLayer = layer;

  cGPath = [_boltMaskBezierPath CGPath];
  boltMaskShapeLayer = [(_UIBatteryView *)self boltMaskShapeLayer];
  [boltMaskShapeLayer setPath:cGPath];

  v11 = +[UIColor blackColor];
  cGColor = [v11 CGColor];
  boltMaskShapeLayer2 = [(_UIBatteryView *)self boltMaskShapeLayer];
  [boltMaskShapeLayer2 setFillColor:cGColor];

  v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [(CALayer *)self->_boltMaskLayer setCompositingFilter:v14];

  [(CALayer *)self->_boltMaskLayer setBounds:0.0, 0.0, width, height];
  layer2 = [MEMORY[0x1E69794A0] layer];
  boltLayer = self->_boltLayer;
  self->_boltLayer = layer2;

  v17 = v20;
  cGPath2 = [v20 CGPath];
  boltShapeLayer = [(_UIBatteryView *)self boltShapeLayer];
  [boltShapeLayer setPath:cGPath2];

  [(CALayer *)self->_boltLayer setBounds:0.0, 0.0, width, height];
}

- (_UIBatteryView)initWithSizeCategory:(int64_t)category
{
  v6.receiver = self;
  v6.super_class = _UIBatteryView;
  v4 = [(UIView *)&v6 init];
  [(_UIBatteryView *)v4 _commonInit];
  [(_UIBatteryView *)v4 setSizeCategory:category];
  return v4;
}

- (_UIBatteryView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIBatteryView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIBatteryView *)v3 _commonInit];
  return v3;
}

- (_UIBatteryView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIBatteryView;
  v3 = [(UIView *)&v5 initWithCoder:coder];
  [(_UIBatteryView *)v3 _commonInit];
  return v3;
}

- (id)_batteryUnfilledColor
{
  if (self->_showsPercentage && self->_chargePercent < 0.995)
  {
    inactiveColor = [(_UIBatteryView *)self inactiveColor];
  }

  else
  {
    inactiveColor = [(_UIBatteryView *)self _batteryFillColor];
  }

  return inactiveColor;
}

- (id)_textBoltInactiveColor
{
  _batteryTextColor = [(_UIBatteryView *)self _batteryTextColor];
  if (![(_UIBatteryView *)self _batteryTextIsCutout])
  {
    v4 = [_batteryTextColor colorWithAlphaComponent:0.6];

    _batteryTextColor = v4;
  }

  return _batteryTextColor;
}

+ (CGSize)_batterySizeForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:291 description:@"Subclass must implement"];

  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)_batterySizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    [collectionCopy displayScale];
    v10 = 15.0;
    *&v8 = 33.0;
  }

  else if (internalSizeCategory == 1)
  {
    [collectionCopy displayScale];
    if (v11 <= 2.5)
    {
      v10 = 11.5;
      *&v8 = 23.5;
    }

    else
    {
      *&v8 = 23.6666667;
      v10 = 11.3333333;
    }
  }

  else if (internalSizeCategory)
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [objc_opt_class() _batterySizeForIconSize:{-[_UIBatteryView iconSize](self, "iconSize")}];
    v8 = v7;
    v10 = v9;
  }

  if (self->_showsPercentage)
  {
    [(UIView *)self _currentScreenScale];
    v10 = v10 + 2.0 / v12;
  }

  v13 = *&v8;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  if (self->_showsPercentage)
  {
    [(UIView *)self _currentScreenScale:size.width];
    v6 = 1.0 / v5;
  }

  else
  {
    v6 = 2.22507386e-308;
  }

  v7 = 2.22507386e-308;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

+ (CGSize)_pinSizeForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:336 description:@"Subclass must implement"];

  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)_pinSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = collectionCopy;
  internalSizeCategory = self->_internalSizeCategory;
  switch(internalSizeCategory)
  {
    case 2:
      [collectionCopy displayScale];
      v3 = 5.0;
      v4 = 2.0;
      break;
    case 1:
      [collectionCopy displayScale];
      if (v11 <= 2.5)
      {
        v3 = 3.0;
        v4 = 1.0;
      }

      else
      {
        v3 = 4.66666667;
        v4 = 1.33333333;
      }

      break;
    case 0:
      [(_UIBatteryView *)self _pinSizeForIconSize:[(_UIBatteryView *)self iconSize]];
      v4 = v9;
      v3 = v10;
      break;
  }

  v12 = v4;
  v13 = v3;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:360 description:@"Subclass must implement"];

  return 0.0;
}

- (double)_lineWidthAndInterspaceForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    [collectionCopy displayScale];
    if (v9 <= 2.5)
    {
      v7 = 1.25;
    }

    else
    {
      v7 = 1.16666667;
    }
  }

  else
  {
    v7 = 1.0;
    if (!internalSizeCategory)
    {
      [objc_opt_class() _lineWidthAndInterspaceForIconSize:{-[_UIBatteryView iconSize](self, "iconSize")}];
      v7 = v8;
    }
  }

  return v7;
}

+ (double)_outsideCornerRadiusForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:380 description:@"Subclass must implement"];

  return 0.0;
}

- (double)_outsideCornerRadiusForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  internalSizeCategory = self->_internalSizeCategory;
  switch(internalSizeCategory)
  {
    case 2:
      [collectionCopy displayScale];
      if (v10 <= 2.5)
      {
        v3 = 4.25;
      }

      else
      {
        v3 = 4.16666667;
      }

      break;
    case 1:
      [collectionCopy displayScale];
      if (v9 <= 2.5)
      {
        v3 = 3.25;
      }

      else
      {
        v3 = 3.0;
      }

      break;
    case 0:
      [objc_opt_class() _outsideCornerRadiusForIconSize:{-[_UIBatteryView iconSize](self, "iconSize")}];
      v3 = v8;
      break;
  }

  return v3;
}

+ (double)_insideCornerRadiusForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:404 description:@"Subclass must implement"];

  return 0.0;
}

- (double)_insideCornerRadiusForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  internalSizeCategory = self->_internalSizeCategory;
  switch(internalSizeCategory)
  {
    case 2:
      [collectionCopy displayScale];
      if (v9 <= 2.5)
      {
        v3 = 2.0;
      }

      else
      {
        v3 = 1.83333333;
      }

      break;
    case 1:
      [collectionCopy displayScale];
      v3 = 1.5;
      break;
    case 0:
      [objc_opt_class() _insideCornerRadiusForIconSize:{-[_UIBatteryView iconSize](self, "iconSize")}];
      v3 = v8;
      break;
  }

  return v3;
}

- (double)_percentageFontSizeForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:428 description:@"Subclass must implement"];

  return 0.0;
}

- (double)_percentageFontSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    v6 = 13.0;
  }

  else
  {
    v6 = 9.0;
    if (!internalSizeCategory)
    {
      [(_UIBatteryView *)self _percentageFontSizeForIconSize:[(_UIBatteryView *)self iconSize]];
      v6 = v7;
    }
  }

  return v6;
}

- (double)_percentageFontCondensedWhenChargingForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:444 description:@"Subclass must implement"];

  return 0.0;
}

- (BOOL)_percentageFontCondensedWhenChargingForTraitCollection:(id)collection
{
  if (self->_internalSizeCategory)
  {
    return 1;
  }

  [(_UIBatteryView *)self _percentageFontCondensedWhenChargingForIconSize:[(_UIBatteryView *)self iconSize]];
  return v4 != 0.0;
}

- (double)_percentTextVerticalAdjustmentForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:459 description:@"Subclass must implement"];

  return 0.0;
}

- (double)_percentTextVerticalAdjustmentForTraitCollection:(id)collection
{
  if (self->_internalSizeCategory)
  {
    return 0.0;
  }

  iconSize = [(_UIBatteryView *)self iconSize];

  [(_UIBatteryView *)self _percentTextVerticalAdjustmentForIconSize:iconSize];
  return result;
}

- (double)_percentTextXAdjustmentWhenFullForIconSize:(int64_t)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBatteryView.m" lineNumber:474 description:@"Subclass must implement"];

  return 0.0;
}

- (CGSize)_pinSizeForIconSize:(int64_t)size
{
  v4 = objc_opt_class();

  [v4 _pinSizeForIconSize:size];
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_percentTextXAdjustmentWhenFullForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] == 6)
  {
    [collectionCopy displayScale];
    v7 = 1.0;
LABEL_5:
    v3 = v7 / v6;
    goto LABEL_6;
  }

  internalSizeCategory = self->_internalSizeCategory;
  if ((internalSizeCategory - 1) < 2)
  {
    [collectionCopy displayScale];
    v7 = -1.0;
    goto LABEL_5;
  }

  if (!internalSizeCategory)
  {
    [(_UIBatteryView *)self _percentTextVerticalAdjustmentForIconSize:[(_UIBatteryView *)self iconSize]];
    v3 = v10;
  }

LABEL_6:

  return v3;
}

- (CGRect)_bodyRectForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(_UIBatteryView *)self _batterySizeForTraitCollection:collectionCopy];
  v6 = v5;
  v8 = v7;
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:collectionCopy];
  v10 = v9;

  [(UIView *)self bounds];
  if (!self->_showsPercentage)
  {
    v11 = v10 * 0.5 + v11;
    v6 = v6 - v10 * 0.5 - v10 * 0.5;
    v12 = v10 * 0.5 + v12;
    v8 = v8 - v10 * 0.5 - v10 * 0.5;
  }

  v13 = v6;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)_batteryBoltPositionOffsetForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(_UIBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
  v6 = v5 * 0.333333333 * 10.6666667;
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:collectionCopy];
  v8 = v7;

  return v8 + v6;
}

- (CGRect)_updateBodyLayers
{
  traitCollection = [(UIView *)self traitCollection];
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
  v5 = v4;
  [(_UIBatteryView *)self _batterySizeForTraitCollection:traitCollection];
  v43 = v6;
  [(_UIBatteryView *)self _pinSizeForTraitCollection:traitCollection];
  v44 = v7;
  v9 = v8;
  [(_UIBatteryView *)self _bodyRectForTraitCollection:traitCollection];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self bounds];
  v41 = v19;
  v42 = v18;
  v21 = v20;
  v23 = v22;
  if ([(_UIBatteryView *)self rounded])
  {
    v24 = v17 / 3.125;
  }

  else
  {
    showsPercentage = self->_showsPercentage;
    [(_UIBatteryView *)self _outsideCornerRadiusForTraitCollection:traitCollection];
    v24 = v26;
    if (!showsPercentage)
    {
      v24 = v26 + v5 * -0.5;
    }
  }

  v27 = [UIBezierPath bezierPathWithRoundedRect:v11 cornerRadius:v13, v15, v17, v24];
  bodyShapeLayer = [(_UIBatteryView *)self bodyShapeLayer];
  [bodyShapeLayer setLineWidth:v5];

  cGPath = [v27 CGPath];
  bodyShapeLayer2 = [(_UIBatteryView *)self bodyShapeLayer];
  [bodyShapeLayer2 setPath:cGPath];

  v45.origin.y = v41;
  v45.origin.x = v42;
  v45.size.width = v21;
  v45.size.height = v23;
  [(CALayer *)self->_pinLayer setFrame:v5 + v43, CGRectGetMidY(v45) + v9 * -0.5, v44, v9];
  percentFillShapeLayer = [(_UIBatteryView *)self percentFillShapeLayer];
  [percentFillShapeLayer setLineWidth:v5];

  cGPath2 = [v27 CGPath];
  percentFillShapeLayer2 = [(_UIBatteryView *)self percentFillShapeLayer];
  [percentFillShapeLayer2 setPath:cGPath2];

  v34 = [objc_opt_class() _pinBezierPathForSize:self->_internalSizeCategory == 2 isComplex:{v44, v9}];
  cGPath3 = [v34 CGPath];
  pinShapeLayer = [(_UIBatteryView *)self pinShapeLayer];
  [pinShapeLayer setPath:cGPath3];

  v37 = v11;
  v38 = v13;
  v39 = v15;
  v40 = v17;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (void)_updateBodyColors
{
  traitCollection = [(UIView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35___UIBatteryView__updateBodyColors__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

- (void)_updateBatteryFillColor
{
  traitCollection = [(UIView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41___UIBatteryView__updateBatteryFillColor__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

- (void)_updateFillLayer
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v3;
  v7 = 0.0;
  [(_UIBatteryView *)self _fillLayerFrame:&v8 cornerRadius:&v7];
  [(CALayer *)self->_fillLayer setCornerRadius:v7];
  [(CALayer *)self->_fillLayer setFrame:v8, v9];
  v4 = v8;
  v5 = v9;
  mask = [(CALayer *)self->_percentFillLayer mask];
  [mask setFrame:{v4, v5}];
}

- (void)_fillLayerFrame:(CGRect *)frame cornerRadius:(double *)radius
{
  traitCollection = [(UIView *)self traitCollection];
  [(_UIBatteryView *)self _batterySizeForTraitCollection:traitCollection];
  v8 = v7;
  v10 = v9;
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
  v12 = v11;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  [(_UIBatteryView *)self chargePercent];
  if (!self->_showsPercentage)
  {
    v14 = v12 + v12 + v14;
    v8 = v8 - (v12 + v12) - (v12 + v12);
    v16 = v12 + v12 + v16;
    v10 = v10 - (v12 + v12) - (v12 + v12);
  }

  v18 = v17 * v8;
  [(_UIBatteryView *)self _insideCornerRadiusForTraitCollection:traitCollection];
  v20 = v19;
  if ([(_UIBatteryView *)self rounded])
  {
    v20 = v10 / 3.125;
  }

  if (!self->_showsPercentage)
  {
    v26.origin.x = v14;
    v26.origin.y = v16;
    v26.size.width = v18;
    v26.size.height = v10;
    if (CGRectGetWidth(v26) < v20 + v20)
    {
      v27.origin.x = v14;
      v27.origin.y = v16;
      v27.size.width = v18;
      v27.size.height = v10;
      v21 = CGRectGetWidth(v27) * 0.5;
      v22 = (v20 - v21) * 0.5;
      v16 = v16 + v22;
      v10 = v10 - v22 - v22;
      v20 = v21;
    }
  }

  UIRoundToViewScale(self);
  if (frame)
  {
    frame->origin.x = v14;
    frame->origin.y = v16;
    frame->size.width = fmax(v23, 1.0);
    frame->size.height = v10;
  }

  if (radius)
  {
    *radius = v20;
  }
}

- (double)_percentageBatteryBoltScaleFactorMultiplier
{
  traitCollection = [(UIView *)self traitCollection];
  [(_UIBatteryView *)self _percentageFontSizeForTraitCollection:traitCollection];
  v5 = v4 / 11.5 * 0.7;

  return v5;
}

- (void)_notifyWillBeginAnimatingBoltToVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(_UIBatteryView *)self internalSizeCategory]|| [(_UIBatteryView *)self hasValidIconSize])
  {

    [(_UIBatteryView *)self _willBeginAnimatingBoltToVisible:visibleCopy];
  }
}

- (void)_notifyDidFinishAnimatingBoltToVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(_UIBatteryView *)self internalSizeCategory]|| [(_UIBatteryView *)self hasValidIconSize])
  {

    [(_UIBatteryView *)self _didFinishAnimatingBoltToVisible:visibleCopy];
  }
}

- (void)_updatePercentageFont
{
  traitCollection = [(UIView *)self traitCollection];
  [(_UIBatteryView *)self _percentageFontSizeForTraitCollection:traitCollection];
  v5 = v4;

  traitCollection2 = [(UIView *)self traitCollection];
  v7 = [(_UIBatteryView *)self _percentageFontCondensedWhenChargingForTraitCollection:traitCollection2];

  v8 = _StatusBar_NSLocaleNumberingSystemNeedsReducedFontForStatusBar();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = __39___UIBatteryView__updatePercentageFont__block_invoke;
  v16 = &unk_1E7103F00;
  v19 = v8;
  v18 = v5;
  v20 = v7;
  selfCopy = self;
  if (self->_percentageLabel)
  {
    v9 = __39___UIBatteryView__updatePercentageFont__block_invoke(v14);
    [(UILabel *)self->_percentageLabel setFont:v9];
  }

  else
  {
    v10 = [UILabel alloc];
    v11 = [(UILabel *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    percentageLabel = self->_percentageLabel;
    self->_percentageLabel = v11;

    v13 = v15(v14);
    [(UILabel *)self->_percentageLabel setFont:v13];

    [(UIView *)self addSubview:self->_percentageLabel];
    [(_UIBatteryView *)self _updateFillColor];
  }
}

- (void)setInternalSizeCategory:(int64_t)category
{
  if (self->_internalSizeCategory != category)
  {
    self->_internalSizeCategory = category;
    [(_UIBatteryView *)self __resetBoltLayers];
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setSizeCategory:(int64_t)category
{
  if (category)
  {
    if (category != 1)
    {
      return;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(_UIBatteryView *)self setInternalSizeCategory:v3];
}

- (void)setChargePercent:(double)percent
{
  if (self->_chargePercent != percent)
  {
    _shouldShowBolt = [(_UIBatteryView *)self _shouldShowBolt];
    isLowBattery = [(_UIBatteryView *)self isLowBattery];
    self->_chargePercent = fmin(fmax(percent, 0.0), 1.0);
    if (_shouldShowBolt != [(_UIBatteryView *)self _shouldShowBolt])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35___UIBatteryView_setChargePercent___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIView performWithoutAnimation:v8];
    }

    if (self->_showsPercentage && isLowBattery != [(_UIBatteryView *)self isLowBattery])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __35___UIBatteryView_setChargePercent___block_invoke_2;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:0.25];
    }

    [(_UIBatteryView *)self __updateFillLayer];
    [(_UIBatteryView *)self _updatePercentage];
  }
}

- (void)setChargingState:(int64_t)state
{
  if (self->_chargingState != state)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_chargingState = state;
    if (self->_showsPercentage)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __35___UIBatteryView_setChargingState___block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [UIView animateWithDuration:v6 animations:0.25];
    }

    [(_UIBatteryView *)self _updateBodyColors];
    [(_UIBatteryView *)self _updateFillColor];
    [(_UIBatteryView *)self _updateBolt];
  }
}

- (void)setSaverModeActive:(BOOL)active
{
  if (self->_saverModeActive != active)
  {
    self->_saverModeActive = active;
    [(_UIBatteryView *)self _updateBodyColors];

    [(_UIBatteryView *)self _updateFillColor];
  }
}

- (void)setLowBatteryMode:(int64_t)mode
{
  if (self->_lowBatteryMode != mode)
  {
    isLowBattery = [(_UIBatteryView *)self isLowBattery];
    self->_lowBatteryMode = mode;
    if (isLowBattery != [(_UIBatteryView *)self isLowBattery])
    {

      [(_UIBatteryView *)self _updateFillColor];
    }
  }
}

- (void)setShowsInlineChargingIndicator:(BOOL)indicator
{
  if (self->_showsInlineChargingIndicator != indicator)
  {
    self->_showsInlineChargingIndicator = indicator;
    [(_UIBatteryView *)self _updatePercentage];

    [(_UIBatteryView *)self _updateBolt];
  }
}

- (void)setShowsPercentage:(BOOL)percentage
{
  if (self->_showsPercentage != percentage)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_showsPercentage = percentage;
    [(_UIBatteryView *)self _updatePercentageFont];
    [(_UIBatteryView *)self _updatePercentage];
    [(_UIBatteryView *)self _updateBolt];
    if (self->_internalSizeCategory || [(_UIBatteryView *)self hasValidIconSize])
    {
      [(_UIBatteryView *)self _updateBodyLayers];
      [(UIView *)self invalidateIntrinsicContentSize];
      [(UIView *)self setNeedsLayout];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37___UIBatteryView_setShowsPercentage___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.25];
    if (!percentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (self->_fillColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_fillColor, color);
    [(_UIBatteryView *)self _updateFillColor];
    colorCopy = v6;
    if (!self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
      colorCopy = v6;
    }
  }
}

- (void)setBodyColor:(id)color
{
  colorCopy = color;
  if (self->_bodyColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_bodyColor, color);
    colorCopy = v6;
    if (!self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
      colorCopy = v6;
    }
  }
}

- (void)setBodyColorAlpha:(double)alpha
{
  if (self->_bodyColorAlpha != alpha)
  {
    self->_bodyColorAlpha = alpha;
    if (!self->_bodyColor && !self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setPinColor:(id)color
{
  colorCopy = color;
  if (self->_pinColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_pinColor, color);
    colorCopy = v6;
    if (!self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
      colorCopy = v6;
    }
  }
}

- (void)setPinColorAlpha:(double)alpha
{
  if (self->_pinColorAlpha != alpha)
  {
    self->_pinColorAlpha = alpha;
    if (!self->_pinColor && !self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setBoltColor:(id)color
{
  colorCopy = color;
  if (self->_boltColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_boltColor, color);
    [(_UIBatteryView *)self _updateBodyColors];
    colorCopy = v6;
  }
}

- (void)setBoltInactiveColor:(id)color
{
  colorCopy = color;
  if (self->_boltInactiveColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_boltInactiveColor, color);
    [(_UIBatteryView *)self _updateBodyColors];
    colorCopy = v6;
  }
}

- (UIColor)boltInactiveColor
{
  boltInactiveColor = self->_boltInactiveColor;
  if (boltInactiveColor)
  {
    v3 = boltInactiveColor;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    boltColor = [(_UIBatteryView *)self boltColor];
    v8 = boltColor;
    if (userInterfaceStyle == 2)
    {
      v9 = 0.5;
    }

    else
    {
      v9 = 0.3;
    }

    v3 = [boltColor colorWithAlphaComponent:v9];
  }

  return v3;
}

- (void)setInactiveColor:(id)color
{
  colorCopy = color;
  if (self->_inactiveColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_inactiveColor, color);
    colorCopy = v6;
    if (self->_showsPercentage)
    {
      [(_UIBatteryView *)self _updateFillColor];
      colorCopy = v6;
    }
  }
}

- (UIColor)inactiveColor
{
  inactiveColor = self->_inactiveColor;
  if (inactiveColor)
  {
    v3 = inactiveColor;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    saverModeActive = self->_saverModeActive;
    if (userInterfaceStyle == 2)
    {
      if (!saverModeActive && ([(_UIBatteryView *)self isLowBattery]|| [(_UIBatteryView *)self chargingState]))
      {
        v8 = +[UIColor systemWhiteColor];
        v9 = v8;
        v10 = 0.3;
      }

      else
      {
        v8 = +[UIColor systemWhiteColor];
        v9 = v8;
        v10 = 0.5;
      }
    }

    else
    {
      v8 = +[UIColor systemBlackColor];
      v9 = v8;
      if (saverModeActive)
      {
        v10 = 0.2;
      }

      else
      {
        v10 = 0.3;
      }
    }

    v3 = [v8 colorWithAlphaComponent:v10];
  }

  return v3;
}

- (void)setRounded:(BOOL)rounded iconSize:(int64_t)size
{
  if (self->_iconSize == size)
  {
    rounded = self->_rounded;
    self->_rounded = rounded;
    if (rounded == rounded)
    {
      return;
    }
  }

  else
  {
    self->_rounded = rounded;
    self->_iconSize = size;
  }

  if (!self->_internalSizeCategory)
  {
    [(_UIBatteryView *)self __resetBoltLayers];
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

+ (id)_pinBezierPathForSize:(CGSize)size isComplex:(BOOL)complex
{
  complexCopy = complex;
  height = size.height;
  width = size.width;
  v7 = +[UIBezierPath bezierPath];
  v8 = v7;
  if (complexCopy)
  {
    [v7 moveToPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [v8 addArcWithCenter:1 radius:0.0 startAngle:width endAngle:width clockwise:{4.71238898, 0.0}];
    v9 = height - width;
    [v8 addLineToPoint:{width, v9}];
    v10 = 1.57079633;
    v11 = 0.0;
    v12 = 0.0;
    v13 = v8;
    v14 = v9;
    v15 = width;
    v16 = 1;
  }

  else
  {
    v17 = height * 0.5;
    v18 = v17 - width;
    v19 = acos((v17 - width) / v17);
    [v8 moveToPoint:{0.0, v17 - sqrt(v17 * v17 - v18 * v18)}];
    v11 = -v18;
    v10 = -v19;
    v13 = v8;
    v14 = v17;
    v15 = v17;
    v12 = v19;
    v16 = 0;
  }

  [v13 addArcWithCenter:v16 radius:v11 startAngle:v14 endAngle:v15 clockwise:{v12, v10}];
  [v8 closePath];

  return v8;
}

+ (id)_boltBezierPathForSize:(CGSize)size
{
  v3 = [UIBezierPath bezierPath:size.width];
  [v3 moveToPoint:{12.429, 37.023}];
  [v3 addLineToPoint:{27.272, 19.152}];
  [v3 addCurveToPoint:27.738 controlPoint1:18.034 controlPoint2:{27.583, 18.779, 27.738, 18.422}];
  [v3 addCurveToPoint:26.418 controlPoint1:16.792 controlPoint2:{27.738, 17.304, 27.179, 16.792}];
  [v3 addLineToPoint:{17.258, 16.792}];
  [v3 addLineToPoint:{22.024, 4.309}];
  [v3 addCurveToPoint:19.571 controlPoint1:2.974 controlPoint2:{22.738, 2.477, 20.813, 1.483}];
  [v3 addLineToPoint:{4.728, 20.844}];
  [v3 addCurveToPoint:4.262 controlPoint1:21.978 controlPoint2:{4.417, 21.217, 4.262, 21.574}];
  [v3 addCurveToPoint:5.582 controlPoint1:23.22 controlPoint2:{4.262, 22.692, 4.821, 23.22}];
  [v3 addLineToPoint:{14.742, 23.22}];
  [v3 addLineToPoint:{9.976, 35.688}];
  [v3 addCurveToPoint:12.429 controlPoint1:37.023 controlPoint2:{9.262, 37.535, 11.187, 38.513}];
  [v3 closePath];

  return v3;
}

+ (id)_boltMaskBezierPath
{
  v2 = +[UIBezierPath bezierPath];
  [v2 moveToPoint:{27.828, -2.5}];
  [v2 addLineToPoint:{20.172, -2.5}];
  [v2 addLineToPoint:{17.286, 0.948}];
  [v2 addLineToPoint:{2.351, 18.929}];
  [v2 addCurveToPoint:1.188 controlPoint1:21.99 controlPoint2:{1.579, 19.856, 1.188, 20.886}];
  [v2 addCurveToPoint:5.517 controlPoint1:26.24 controlPoint2:{1.188, 24.373, 3.09, 26.24}];
  [v2 addLineToPoint:{10.376, 26.24}];
  [v2 addLineToPoint:{7.14, 34.705}];
  [v2 addLineToPoint:{4.18, 42.5}];
  [v2 addLineToPoint:{11.834, 42.5}];
  [v2 addLineToPoint:{14.714, 39.048}];
  [v2 addLineToPoint:{29.648, 21.067}];
  [v2 addCurveToPoint:30.813 controlPoint1:18.021 controlPoint2:{30.421, 20.14, 30.813, 19.115}];
  [v2 addCurveToPoint:26.484 controlPoint1:13.771 controlPoint2:{30.813, 15.638, 28.912, 13.771}];
  [v2 addLineToPoint:{21.623, 13.771}];
  [v2 addLineToPoint:{24.858, 5.299}];
  [v2 addLineToPoint:{27.828, -2.5}];
  [v2 closePath];

  return v2;
}

- (id)accessibilityHUDRepresentation
{
  [(_UIBatteryView *)self chargePercent];
  v4 = v3;
  _batteryFillColor = [(_UIBatteryView *)self _batteryFillColor];
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;

  _shouldShowBolt = [(_UIBatteryView *)self _shouldShowBolt];
  _boltIsInactive = [(_UIBatteryView *)self _boltIsInactive];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  _screen = [(UIView *)self _screen];
  [_screen scale];
  v13 = v12;

  showsPercentage = [(_UIBatteryView *)self showsPercentage];
  traitCollection2 = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];

  accessibilityHUDImageCacheInfo = [(_UIBatteryView *)self accessibilityHUDImageCacheInfo];
  v18 = [accessibilityHUDImageCacheInfo cacheMatchesCapacity:_batteryFillColor fillColor:v7 tintColor:_shouldShowBolt showingBolt:_boltIsInactive boltInactive:_shouldReverseLayoutDirection reverseLayout:showsPercentage scale:v4 showsPercentage:v13 contentSizeCategory:preferredContentSizeCategory];

  if ((v18 & 1) == 0)
  {
    v19 = UIStatusBarCreateHUDBatteryImage(_batteryFillColor, v7, _shouldShowBolt, _boltIsInactive, _shouldReverseLayoutDirection, showsPercentage, v4, v13);
    v20 = objc_opt_new();
    [v20 setCachedImage:v19];
    [v20 setCapacity:v4];
    [v20 setFillColor:_batteryFillColor];
    [v20 setTintColor:v7];
    [v20 setShowBolt:_shouldShowBolt];
    [v20 setBoltInactive:_boltIsInactive];
    [v20 setReverseLayoutDirection:_shouldReverseLayoutDirection];
    [v20 setScale:v13];
    [v20 setShowsPercentage:showsPercentage];
    [v20 setContentSizeCategory:preferredContentSizeCategory];
    [(_UIBatteryView *)self setAccessibilityHUDImageCacheInfo:v20];
  }

  v21 = [UIAccessibilityHUDItem alloc];
  accessibilityHUDImageCacheInfo2 = [(_UIBatteryView *)self accessibilityHUDImageCacheInfo];
  cachedImage = [accessibilityHUDImageCacheInfo2 cachedImage];
  v24 = [(UIAccessibilityHUDItem *)v21 initWithTitle:0 image:cachedImage imageInsets:0.0, 0.0, 0.0, 0.0];

  [(UIAccessibilityHUDItem *)v24 setFlattenImage:0];

  return v24;
}

@end