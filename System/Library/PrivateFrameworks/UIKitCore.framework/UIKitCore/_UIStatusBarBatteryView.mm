@interface _UIStatusBarBatteryView
+ (CGSize)_batterySizeForIconSize:(int64_t)a3;
+ (CGSize)_pinSizeForIconSize:(int64_t)a3;
+ (CGSize)_statusBarIntrinsicContentSizeForIconSize:(int64_t)a3;
+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)a3;
+ (id)_boltBezierPathForSize:(CGSize)a3;
+ (id)_boltMaskBezierPath;
+ (id)_pinBezierPathForSize:(CGSize)a3 isComplex:(BOOL)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_batteryTextIsCutout;
- (BOOL)_percentageFontCondensedWhenChargingForTraitCollection:(id)a3;
- (BOOL)isLowBattery;
- (CGRect)_bodyRectForTraitCollection:(id)a3;
- (CGRect)_updateBodyLayers;
- (CGSize)_batterySizeForTraitCollection:(id)a3;
- (CGSize)_pinSizeForTraitCollection:(id)a3;
- (CGSize)intrinsicContentSize;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIColor)bodyColor;
- (UIColor)boltColor;
- (UIColor)fillColor;
- (UIColor)inactiveColor;
- (UIColor)pinColor;
- (_UIStatusBarBatteryView)initWithCoder:(id)a3;
- (_UIStatusBarBatteryView)initWithFrame:(CGRect)a3;
- (_UIStatusBarBatteryView)initWithSizeCategory:(int64_t)a3;
- (double)_batteryBoltPositionOffsetForTraitCollection:(id)a3;
- (double)_batteryBoltScaleFactorMultiplier;
- (double)_insideCornerRadiusForTraitCollection:(id)a3;
- (double)_lineWidthAndInterspaceForTraitCollection:(id)a3;
- (double)_outsideCornerRadiusForTraitCollection:(id)a3;
- (double)_percentTextVerticalAdjustmentForTraitCollection:(id)a3;
- (double)_percentageBatteryBoltScaleFactorMultiplier;
- (double)_percentageFontSizeForTraitCollection:(id)a3;
- (id)_batteryFillColor;
- (id)_batteryTextColor;
- (id)_batteryUnfilledColor;
- (void)__resetBoltLayers;
- (void)__updateFillLayer;
- (void)_commonInit;
- (void)_createBodyLayers;
- (void)_createBoltLayersWithSize:(CGSize)a3;
- (void)_createFillLayer;
- (void)_fillLayerFrame:(CGRect *)a3 cornerRadius:(double *)a4;
- (void)_notifyDidFinishAnimatingBoltToVisible:(BOOL)a3;
- (void)_notifyWillBeginAnimatingBoltToVisible:(BOOL)a3;
- (void)_unflipBoltIfNecessary;
- (void)_updateBatteryFillColor;
- (void)_updateBodyColors;
- (void)_updateBolt;
- (void)_updateFillColor;
- (void)_updateFillLayer;
- (void)_updateLightningBoltAndPercentagePosition;
- (void)_updatePercentage;
- (void)_updatePercentageFont;
- (void)_updateTransform;
- (void)applyStyleAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBodyColor:(id)a3;
- (void)setBodyColorAlpha:(double)a3;
- (void)setBoltColor:(id)a3;
- (void)setChargePercent:(double)a3;
- (void)setChargingState:(int64_t)a3;
- (void)setFillColor:(id)a3;
- (void)setInactiveColor:(id)a3;
- (void)setInternalSizeCategory:(int64_t)a3;
- (void)setLowBatteryMode:(int64_t)a3;
- (void)setPinColor:(id)a3;
- (void)setPinColorAlpha:(double)a3;
- (void)setSaverModeActive:(BOOL)a3;
- (void)setShowsInlineChargingIndicator:(BOOL)a3;
- (void)setShowsPercentage:(BOOL)a3;
- (void)setSizeCategory:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UIStatusBarBatteryView

- (void)_commonInit
{
  [(_UIStatusBarBatteryView *)self _createBodyLayers];
  [(_UIStatusBarBatteryView *)self _createFillLayer];
  self->_bodyColorAlpha = 0.4;
  self->_pinColorAlpha = 0.5;
  [(_UIStatusBarBatteryView *)self setSizeCategory:0];
  [(_UIStatusBarBatteryView *)self setLowBatteryChargePercentThreshold:dbl_18A6795C0[_UIDeviceNativeUserInterfaceIdiom() == 1]];

  [(_UIStatusBarBatteryView *)self _updateTransform];
}

- (void)_createFillLayer
{
  v3 = [MEMORY[0x1E6979398] layer];
  [(_UIStatusBarBatteryView *)self setFillLayer:v3];

  [(CALayer *)self->_fillLayer setMasksToBounds:1];
  [(CALayer *)self->_fillLayer setCornerCurve:*MEMORY[0x1E69796E8]];
  bodyLayer = self->_bodyLayer;
  fillLayer = self->_fillLayer;

  [(CALayer *)bodyLayer addSublayer:fillLayer];
}

- (void)_createBodyLayers
{
  v3 = [MEMORY[0x1E69794A0] layer];
  [(_UIStatusBarBatteryView *)self setBodyLayer:v3];

  v4 = +[UIColor clearColor];
  v5 = [v4 CGColor];
  v6 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
  [v6 setFillColor:v5];

  v7 = [(UIView *)self layer];
  [v7 addSublayer:self->_bodyLayer];

  v8 = [MEMORY[0x1E69794A0] layer];
  [(_UIStatusBarBatteryView *)self setPinLayer:v8];

  v9 = [(UIView *)self layer];
  [v9 addSublayer:self->_pinLayer];

  v10 = [MEMORY[0x1E69794A0] layer];
  [(_UIStatusBarBatteryView *)self setPercentFillLayer:v10];

  v14 = objc_alloc_init(MEMORY[0x1E6979398]);
  v11 = +[UIColor blackColor];
  [v14 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [(_UIStatusBarBatteryView *)self percentFillLayer];
  [v12 setMask:v14];

  v13 = [(UIView *)self layer];
  [v13 addSublayer:self->_percentFillLayer];
}

- (void)_createBoltLayersWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v20 = [objc_opt_class() _boltBezierPathForSize:{a3.width, a3.height}];
  v6 = [objc_opt_class() _boltMaskBezierPath];
  v7 = [MEMORY[0x1E69794A0] layer];
  boltMaskLayer = self->_boltMaskLayer;
  self->_boltMaskLayer = v7;

  v9 = [v6 CGPath];
  v10 = [(_UIStatusBarBatteryView *)self boltMaskShapeLayer];
  [v10 setPath:v9];

  v11 = +[UIColor blackColor];
  v12 = [v11 CGColor];
  v13 = [(_UIStatusBarBatteryView *)self boltMaskShapeLayer];
  [v13 setFillColor:v12];

  v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [(CALayer *)self->_boltMaskLayer setCompositingFilter:v14];

  [(CALayer *)self->_boltMaskLayer setBounds:0.0, 0.0, width, height];
  v15 = [MEMORY[0x1E69794A0] layer];
  boltLayer = self->_boltLayer;
  self->_boltLayer = v15;

  v17 = v20;
  v18 = [v20 CGPath];
  v19 = [(_UIStatusBarBatteryView *)self boltShapeLayer];
  [v19 setPath:v18];

  [(CALayer *)self->_boltLayer setBounds:0.0, 0.0, width, height];
}

- (_UIStatusBarBatteryView)initWithSizeCategory:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarBatteryView;
  v4 = [(UIView *)&v6 init];
  [(_UIStatusBarBatteryView *)v4 _commonInit];
  [(_UIStatusBarBatteryView *)v4 setSizeCategory:a3];
  return v4;
}

- (_UIStatusBarBatteryView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarBatteryView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIStatusBarBatteryView *)v3 _commonInit];
  return v3;
}

- (_UIStatusBarBatteryView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarBatteryView;
  v3 = [(UIView *)&v5 initWithCoder:a3];
  [(_UIStatusBarBatteryView *)v3 _commonInit];
  return v3;
}

- (id)_batteryUnfilledColor
{
  if (self->_showsPercentage && self->_chargePercent < 0.995)
  {
    v2 = [(_UIStatusBarBatteryView *)self inactiveColor];
  }

  else
  {
    v2 = [(_UIStatusBarBatteryView *)self _batteryFillColor];
  }

  return v2;
}

- (id)_batteryFillColor
{
  if ([(_UIStatusBarBatteryView *)self saverModeActive])
  {
    v3 = [(UIView *)self traitCollection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44___UIStatusBarBatteryView__batteryFillColor__block_invoke;
    v15[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v15[4] = 0;
    v4 = [v3 traitCollectionByModifyingTraits:v15];

    v5 = +[UIColor systemYellowColor];
LABEL_7:
    v8 = v5;
    v9 = [v5 resolvedColorWithTraitCollection:v4];

    goto LABEL_8;
  }

  if ([(_UIStatusBarBatteryView *)self isLowBattery])
  {
    v6 = [(UIView *)self traitCollection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44___UIStatusBarBatteryView__batteryFillColor__block_invoke_2;
    v13[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
    v14 = xmmword_18A6507C0;
    v4 = [v6 traitCollectionByModifyingTraits:v13];

    v5 = +[UIColor systemRedColor];
    goto LABEL_7;
  }

  if ([(_UIStatusBarBatteryView *)self chargingState])
  {
    v7 = [(UIView *)self traitCollection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44___UIStatusBarBatteryView__batteryFillColor__block_invoke_3;
    v11[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
    v12 = xmmword_18A6507C0;
    v4 = [v7 traitCollectionByModifyingTraits:v11];

    v5 = +[UIColor systemGreenColor];
    goto LABEL_7;
  }

  v9 = [(_UIStatusBarBatteryView *)self fillColor];
LABEL_8:

  return v9;
}

- (id)_batteryTextColor
{
  if ([(_UIStatusBarBatteryView *)self saverModeActive])
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

- (BOOL)_batteryTextIsCutout
{
  if ([(_UIStatusBarBatteryView *)self saverModeActive]|| [(_UIStatusBarBatteryView *)self chargingState])
  {
    return 0;
  }

  else
  {
    return ![(_UIStatusBarBatteryView *)self isLowBattery];
  }
}

+ (CGSize)_batterySizeForIconSize:(int64_t)a3
{
  v3 = 11.5;
  v4 = 22.0;
  switch(a3)
  {
    case 0:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarBatteryView.m" lineNumber:314 description:@"Undefined icon size"];

      v4 = *MEMORY[0x1E695F060];
      v3 = *(MEMORY[0x1E695F060] + 8);
      break;
    case 2:
    case 17:
      v3 = 11.3333333;
      break;
    case 3:
      v3 = 11.3333333;
      v4 = 20.6666667;
      break;
    case 4:
      v3 = 12.0;
      v4 = 22.6666667;
      break;
    case 5:
      v3 = 12.5;
      goto LABEL_14;
    case 6:
      v4 = 24.0;
      v3 = 12.3333333;
      break;
    case 7:
      v3 = 13.0;
      v4 = 25.0;
      break;
    case 8:
      v3 = 14.3333333;
      v4 = 28.3333333;
      break;
    case 9:
    case 15:
      v3 = 14.0;
      v4 = 28.0;
      break;
    case 10:
      v3 = 13.6666667;
      v4 = 27.3333333;
      break;
    case 11:
      v3 = 15.0;
      v4 = 29.0;
      break;
    case 12:
      v4 = 29.0;
      v3 = 14.6666667;
      break;
    case 13:
      v4 = 30.0;
      v3 = 15.3333333;
      break;
    case 14:
      v3 = 12.0;
LABEL_14:
      v4 = 24.0;
      break;
    default:
      break;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)_batterySizeForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    [v4 displayScale];
    v10 = 15.0;
    *&v8 = 33.0;
  }

  else if (internalSizeCategory == 1)
  {
    [v4 displayScale];
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
    [objc_opt_class() _batterySizeForIconSize:{-[_UIStatusBarBatteryView iconSize](self, "iconSize")}];
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  if (self->_showsPercentage)
  {
    [(UIView *)self _currentScreenScale:a3.width];
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

+ (CGSize)_pinSizeForIconSize:(int64_t)a3
{
  v3 = 4.5;
  v4 = 1.25;
  switch(a3)
  {
    case 0:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarBatteryView.m" lineNumber:401 description:@"Undefined icon size"];

      v4 = *MEMORY[0x1E695F060];
      v3 = *(MEMORY[0x1E695F060] + 8);
      break;
    case 2:
    case 17:
      v3 = 4.66666667;
      goto LABEL_15;
    case 3:
    case 4:
      v3 = 4.0;
      goto LABEL_15;
    case 5:
    case 14:
      goto LABEL_8;
    case 6:
      v3 = 5.0;
      goto LABEL_15;
    case 7:
LABEL_15:
      v4 = 1.33333333;
      break;
    case 8:
      v3 = 5.0;
      v4 = 1.66666667;
      break;
    case 9:
    case 15:
      v3 = 5.5;
      goto LABEL_6;
    case 10:
      v3 = 5.0;
LABEL_8:
      v4 = 1.5;
      break;
    case 11:
      v3 = 6.0;
LABEL_6:
      v4 = 1.75;
      break;
    case 12:
      v3 = 5.66666667;
      goto LABEL_12;
    case 13:
      v3 = 6.0;
LABEL_12:
      v4 = 1.83333333;
      break;
    default:
      break;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)_pinSizeForTraitCollection:(id)a3
{
  v6 = a3;
  v7 = v6;
  internalSizeCategory = self->_internalSizeCategory;
  switch(internalSizeCategory)
  {
    case 2:
      [v6 displayScale];
      v3 = 5.0;
      v4 = 2.0;
      break;
    case 1:
      [v6 displayScale];
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
      [objc_opt_class() _pinSizeForIconSize:{-[_UIStatusBarBatteryView iconSize](self, "iconSize")}];
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

+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)a3
{
  result = 1.0;
  if (a3 > 10)
  {
    if (a3 > 12)
    {
      if (a3 != 13)
      {
        if (a3 == 15)
        {
          return 1.25;
        }

        return result;
      }

      return 1.16666667;
    }

    if (a3 != 11)
    {
      return 1.16666667;
    }

    return 1.25;
  }

  if (a3 > 8)
  {
    if (a3 != 9)
    {
      return 1.16666667;
    }

    return 1.25;
  }

  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarBatteryView.m" lineNumber:466 description:@"Undefined icon size"];

    return 0.0;
  }

  if (a3 == 8)
  {
    return 1.16666667;
  }

  return result;
}

- (double)_lineWidthAndInterspaceForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    [v4 displayScale];
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
      [objc_opt_class() _lineWidthAndInterspaceForIconSize:{-[_UIStatusBarBatteryView iconSize](self, "iconSize")}];
      v7 = v8;
    }
  }

  return v7;
}

- (double)_outsideCornerRadiusForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
    [v5 displayScale];
    if (v10 <= 2.5)
    {
      v3 = 4.25;
    }

    else
    {
      v3 = 4.16666667;
    }
  }

  else
  {
    if (internalSizeCategory != 1)
    {
      if (internalSizeCategory)
      {
        goto LABEL_12;
      }

      v8 = [(_UIStatusBarBatteryView *)self iconSize];
      if (v8 < 0x10)
      {
        v3 = dbl_18A681950[v8];
        goto LABEL_12;
      }
    }

    [v6 displayScale];
    if (v9 <= 2.5)
    {
      v3 = 3.25;
    }

    else
    {
      v3 = 3.0;
    }
  }

LABEL_12:

  return v3;
}

- (double)_insideCornerRadiusForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  internalSizeCategory = self->_internalSizeCategory;
  switch(internalSizeCategory)
  {
    case 2:
      [v5 displayScale];
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
      goto LABEL_6;
    case 0:
      v8 = [(_UIStatusBarBatteryView *)self iconSize];
      if (v8 < 0x10)
      {
        v3 = dbl_18A6819D0[v8];
        break;
      }

LABEL_6:
      [v6 displayScale];
      v3 = 1.5;
      break;
  }

  return v3;
}

- (double)_percentageFontSizeForTraitCollection:(id)a3
{
  v4 = a3;
  internalSizeCategory = self->_internalSizeCategory;
  if (internalSizeCategory == 2)
  {
LABEL_4:
    v6 = 13.0;
  }

  else
  {
    v6 = 9.0;
    if (!internalSizeCategory)
    {
      switch([(_UIStatusBarBatteryView *)self iconSize])
      {
        case 0:
          v6 = 0.0;
          break;
        case 2:
        case 4:
          v6 = 11.3333333;
          break;
        case 3:
          v6 = 10.3333333;
          break;
        case 5:
        case 6:
        case 9:
          v6 = 12.0;
          break;
        case 7:
          if (self->_rounded)
          {
            v6 = 11.6666667;
          }

          else
          {
            v6 = 12.6666667;
          }

          break;
        case 8:
          v6 = 13.6666667;
          break;
        case 10:
        case 11:
        case 12:
        case 13:
          goto LABEL_4;
        case 15:
          v6 = 10.0;
          break;
        default:
          break;
      }
    }
  }

  return v6;
}

- (BOOL)_percentageFontCondensedWhenChargingForTraitCollection:(id)a3
{
  if (self->_internalSizeCategory)
  {
    return 1;
  }

  else
  {
    v5 = [(_UIStatusBarBatteryView *)self iconSize];
    if (v5 == 8)
    {
      return 0;
    }

    else
    {
      return v5 != 7 || !self->_rounded;
    }
  }
}

- (double)_percentTextVerticalAdjustmentForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (!self->_internalSizeCategory)
  {
    v6 = [(_UIStatusBarBatteryView *)self iconSize];
    if (v6 <= 0x11)
    {
      v5 = dbl_18A681A50[v6];
    }
  }

  return v5;
}

- (CGRect)_bodyRectForTraitCollection:(id)a3
{
  v4 = a3;
  [(_UIStatusBarBatteryView *)self _batterySizeForTraitCollection:v4];
  v6 = v5;
  v8 = v7;
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v4];
  v10 = v9;

  [(UIView *)self bounds];
  v12 = v10 * 0.5 + v11;
  v13 = v6 - v10 * 0.5 - v10 * 0.5;
  v15 = v10 * 0.5 + v14;
  v16 = v8 - v10 * 0.5 - v10 * 0.5;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v12;
  return result;
}

- (double)_batteryBoltPositionOffsetForTraitCollection:(id)a3
{
  v4 = a3;
  [(_UIStatusBarBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
  v6 = v5 * 0.333333333 * 10.6666667;
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v4];
  v8 = v7;

  return v8 + v6;
}

- (void)_updateLightningBoltAndPercentagePosition
{
  if (self->_internalSizeCategory || [(_UIStatusBarBatteryView *)self iconSize])
  {
    v3 = [(UIView *)self traitCollection];
    [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:v3];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (self->_showsPercentage)
    {
      v12 = [(_UIStatusBarBatteryView *)self _shouldShowBolt];
      [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v3];
      v14 = v13;
      [(_UIStatusBarBatteryView *)self _updatePercentageFont];
      [(UIView *)self->_percentageLabel sizeToFit];
      v48.origin.x = v8;
      v48.origin.y = v9;
      v48.size.width = v10;
      v48.size.height = v11;
      MidY = CGRectGetMidY(v48);
      [(_UIStatusBarBatteryView *)self _percentTextVerticalAdjustmentForTraitCollection:v3];
      v17 = MidY + v16;
      if (v12)
      {
        [(UIView *)self _currentScreenScale];
        v19 = v14 + v14 + 2.0 / v18;
        [(_UIStatusBarBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
        v21 = v19 + v20 * 0.333333333 * 10.6666667;
        v49.origin.x = v8;
        v49.origin.y = v9;
        v49.size.width = v10;
        v49.size.height = v11;
        MidX = CGRectGetMidX(v49) + v21 * -0.5;
      }

      else if (self->_chargePercent < 0.995 || !self->_internalSizeCategory && [(_UIStatusBarBatteryView *)self iconSize]== 3)
      {
        v51.origin.x = v8;
        v51.origin.y = v9;
        v51.size.width = v10;
        v51.size.height = v11;
        MidX = CGRectGetMidX(v51);
      }

      else
      {
        v52.origin.x = v8;
        v52.origin.y = v9;
        v52.size.width = v10;
        v52.size.height = v11;
        v28 = CGRectGetMidX(v52);
        [(UIView *)self _currentScreenScale];
        MidX = v28 + -1.0 / v29;
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
      v53.origin.x = v8;
      v53.origin.y = v9;
      v53.size.width = v10;
      v53.size.height = v11;
      v42 = CGRectGetMidX(v53) + v41 * 0.5;
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

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIStatusBarBatteryView *)self _updateBodyLayers];
  [(CALayer *)self->_bodyLayer setFrame:v4, v6, v8, v10];
  [(_UIStatusBarBatteryView *)self _updateLightningBoltAndPercentagePosition];
  [(_UIStatusBarBatteryView *)self _updateBodyColors];
  [(_UIStatusBarBatteryView *)self __updateFillLayer];
  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (CGRect)_updateBodyLayers
{
  v3 = [(UIView *)self traitCollection];
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v3];
  v5 = v4;
  [(_UIStatusBarBatteryView *)self _batterySizeForTraitCollection:v3];
  v42 = v6;
  [(_UIStatusBarBatteryView *)self _pinSizeForTraitCollection:v3];
  v43 = v7;
  v9 = v8;
  [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:v3];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self bounds];
  rect = v19;
  v41 = v18;
  v21 = v20;
  v23 = v22;
  if ([(_UIStatusBarBatteryView *)self rounded])
  {
    v24 = v17 / 3.125;
  }

  else
  {
    [(_UIStatusBarBatteryView *)self _outsideCornerRadiusForTraitCollection:v3];
    v24 = v25 + v5 * -0.5;
  }

  v26 = [UIBezierPath bezierPathWithRoundedRect:v11 cornerRadius:v13, v15, v17, v24];
  v27 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
  [v27 setLineWidth:v5];

  v28 = [v26 CGPath];
  v29 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
  [v29 setPath:v28];

  v44.origin.x = v41;
  v44.origin.y = rect;
  v44.size.width = v21;
  v44.size.height = v23;
  [(CALayer *)self->_pinLayer setFrame:v5 + v42, CGRectGetMidY(v44) + v9 * -0.5, v43, v9];
  v30 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
  [v30 setLineWidth:v5];

  v31 = [v26 CGPath];
  v32 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
  [v32 setPath:v31];

  v33 = [objc_opt_class() _pinBezierPathForSize:self->_internalSizeCategory == 2 isComplex:{v43, v9}];
  v34 = [v33 CGPath];
  v35 = [(_UIStatusBarBatteryView *)self pinShapeLayer];
  [v35 setPath:v34];

  v36 = v11;
  v37 = v15;
  v38 = v13;
  v39 = v17;
  result.size.height = v39;
  result.size.width = v37;
  result.origin.y = v38;
  result.origin.x = v36;
  return result;
}

- (void)_updateBodyColors
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v43 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v43, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v44 = *(__UILogGetCategoryCachedImpl("Assert", &_updateBodyColors___s_category) + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v45 = 0;
      _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v45, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

  v5 = _UISetCurrentFallbackEnvironment(self);
  if (self->_showsPercentage)
  {
    v6 = [(_UIStatusBarBatteryView *)self _batteryUnfilledColor];
    v7 = [v6 CGColor];
    [v6 alphaComponent];
    if (v8 >= 1.0)
    {
      v29 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
      [v29 setStrokeColor:v7];

      v30 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
      [v30 setFillColor:v7];

      v14 = 1.0;
    }

    else
    {
      v9 = [v6 colorWithAlphaComponent:1.0];
      v10 = [v9 CGColor];

      v11 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
      [v11 setStrokeColor:v10];

      v12 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
      [v12 setFillColor:v10];

      [v6 alphaComponent];
      v14 = v13;
    }

    v31 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
    *&v32 = v14;
    [v31 setOpacity:v32];

    v33 = [(_UIStatusBarBatteryView *)self pinShapeLayer];
    [v33 setFillColor:v7];

    v34 = [(_UIStatusBarBatteryView *)self _batteryTextColor];
    v35 = [v34 CGColor];
    v36 = [(_UIStatusBarBatteryView *)self boltShapeLayer];
    [v36 setFillColor:v35];

    v37 = [(_UIStatusBarBatteryView *)self _batteryFillColor];
    v38 = [v37 CGColor];
    v39 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
    [v39 setStrokeColor:v38];

    v40 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
    [v40 setFillColor:v38];

    v41 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
    LODWORD(v42) = 1.0;
    [v41 setOpacity:v42];
  }

  else
  {
    v15 = [(_UIStatusBarBatteryView *)self bodyColor];
    v16 = [v15 CGColor];
    v17 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
    [v17 setStrokeColor:v16];

    v18 = +[UIColor clearColor];
    v19 = [v18 CGColor];
    v20 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
    [v20 setFillColor:v19];

    v21 = [(_UIStatusBarBatteryView *)self bodyShapeLayer];
    LODWORD(v22) = 1.0;
    [v21 setOpacity:v22];

    v23 = [(_UIStatusBarBatteryView *)self pinColor];
    v24 = [v23 CGColor];
    v25 = [(_UIStatusBarBatteryView *)self pinShapeLayer];
    [v25 setFillColor:v24];

    v26 = [(_UIStatusBarBatteryView *)self boltColor];
    v27 = [v26 CGColor];
    v28 = [(_UIStatusBarBatteryView *)self boltShapeLayer];
    [v28 setFillColor:v27];

    v6 = [(_UIStatusBarBatteryView *)self percentFillShapeLayer];
    [v6 setOpacity:0.0];
  }

  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
}

- (void)_updateFillColor
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v3 = __43___UIStatusBarBatteryView__updateFillColor__block_invoke;
  v4 = &unk_1E70F3590;
  v5 = self;
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

- (void)_updateBatteryFillColor
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_updateBatteryFillColor___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v10, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

  v5 = _UISetCurrentFallbackEnvironment(self);
  if (self->_showsPercentage)
  {
    v6 = +[UIColor clearColor];
    -[CALayer setBackgroundColor:](self->_fillLayer, "setBackgroundColor:", [v6 CGColor]);

    [(_UIStatusBarBatteryView *)self _updateBodyColors];
  }

  else
  {
    v7 = [(_UIStatusBarBatteryView *)self _batteryFillColor];
    -[CALayer setBackgroundColor:](self->_fillLayer, "setBackgroundColor:", [v7 CGColor]);
  }

  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
}

- (void)__updateFillLayer
{
  if ([(_UIStatusBarBatteryView *)self internalSizeCategory]|| [(_UIStatusBarBatteryView *)self iconSize])
  {
    [(_UIStatusBarBatteryView *)self _updateFillLayer];

    [(_UIStatusBarBatteryView *)self _updateFillColor];
  }
}

- (void)__resetBoltLayers
{
  [(CALayer *)self->_boltMaskLayer removeFromSuperlayer];
  boltMaskLayer = self->_boltMaskLayer;
  self->_boltMaskLayer = 0;

  [(CALayer *)self->_boltLayer removeFromSuperlayer];
  boltLayer = self->_boltLayer;
  self->_boltLayer = 0;

  [(_UIStatusBarBatteryView *)self _updateBolt];
}

- (void)_updateFillLayer
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v3;
  v7 = 0.0;
  [(_UIStatusBarBatteryView *)self _fillLayerFrame:&v8 cornerRadius:&v7];
  [(CALayer *)self->_fillLayer setCornerRadius:v7];
  [(CALayer *)self->_fillLayer setFrame:v8, v9];
  v4 = v8;
  v5 = v9;
  v6 = [(CALayer *)self->_percentFillLayer mask];
  [v6 setFrame:{v4, v5}];
}

- (void)_fillLayerFrame:(CGRect *)a3 cornerRadius:(double *)a4
{
  v24 = [(UIView *)self traitCollection];
  [(_UIStatusBarBatteryView *)self _batterySizeForTraitCollection:v24];
  v8 = v7;
  v10 = v9;
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v24];
  v12 = v11;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  [(_UIStatusBarBatteryView *)self chargePercent];
  if (!self->_showsPercentage)
  {
    v14 = v12 + v12 + v14;
    v8 = v8 - (v12 + v12) - (v12 + v12);
    v16 = v12 + v12 + v16;
    v10 = v10 - (v12 + v12) - (v12 + v12);
  }

  v18 = v17 * v8;
  [(_UIStatusBarBatteryView *)self _insideCornerRadiusForTraitCollection:v24];
  v20 = v19;
  if ([(_UIStatusBarBatteryView *)self rounded])
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
  if (a3)
  {
    a3->origin.x = v14;
    a3->origin.y = v16;
    a3->size.width = fmax(v23, 1.0);
    a3->size.height = v10;
  }

  if (a4)
  {
    *a4 = v20;
  }
}

- (double)_percentageBatteryBoltScaleFactorMultiplier
{
  v3 = [(UIView *)self traitCollection];
  [(_UIStatusBarBatteryView *)self _percentageFontSizeForTraitCollection:v3];
  v5 = v4;
  v6 = 11.5;
  if (!self->_internalSizeCategory && [(_UIStatusBarBatteryView *)self iconSize])
  {
    [objc_opt_class() _batterySizeForIconSize:1];
    v6 = v7;
  }

  return v5 / v6 * 0.7;
}

- (double)_batteryBoltScaleFactorMultiplier
{
  internalSizeCategory = self->_internalSizeCategory;
  if (!internalSizeCategory)
  {
    if ([(_UIStatusBarBatteryView *)self iconSize])
    {
      [objc_opt_class() _batterySizeForIconSize:{-[_UIStatusBarBatteryView iconSize](self, "iconSize")}];
      v6 = v5;
      [objc_opt_class() _batterySizeForIconSize:1];
      return v6 / v7;
    }

    internalSizeCategory = self->_internalSizeCategory;
  }

  result = 1.30434783;
  if (internalSizeCategory != 2)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateBolt
{
  v3 = [(_UIStatusBarBatteryView *)self _shouldShowBolt];
  [(CALayer *)self->_boltLayer opacity];
  v5 = v4;
  showsPercentage = self->_showsPercentage;
  [(_UIStatusBarBatteryView *)self _batteryBoltLargeScaleFactor];
  v8 = v7;
  if (showsPercentage)
  {
    [(_UIStatusBarBatteryView *)self _percentageBatteryBoltScaleFactorMultiplier];
  }

  else
  {
    [(_UIStatusBarBatteryView *)self _batteryBoltScaleFactorMultiplier];
  }

  v10 = v8 * v9;
  [(_UIStatusBarBatteryView *)self _batteryBoltSmallScaleFactor];
  v12 = v11;
  [(_UIStatusBarBatteryView *)self _batteryBoltScaleFactorMultiplier];
  v14 = v12 * v13;
  memset(&v32, 0, sizeof(v32));
  CATransform3DMakeScale(&v32, v10, v10, 1.0);
  memset(&v31, 0, sizeof(v31));
  CATransform3DMakeScale(&v31, v14, v14, 1.0);
  v15 = !v3;
  if (v3 && v5 != 1.0)
  {
    if (!self->_boltLayer)
    {
      [(_UIStatusBarBatteryView *)self _createBoltLayersWithSize:32.0, 40.0];
    }

    v16 = [(UIView *)self layer];
    [v16 addSublayer:self->_boltMaskLayer];

    v17 = [(UIView *)self layer];
    [v17 addSublayer:self->_boltLayer];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v30 = v32;
    v27 = __38___UIStatusBarBatteryView__updateBolt__block_invoke;
    v28 = &unk_1E7103ED8;
    v29 = self;
    if (+[UIView areAnimationsEnabled])
    {
      v25 = v31;
      [(CALayer *)self->_boltLayer setTransform:&v25];
      [(CALayer *)self->_boltLayer setOpacity:0.0];
      v25 = v31;
      [(CALayer *)self->_boltMaskLayer setTransform:&v25];
      [(CALayer *)self->_boltMaskLayer setOpacity:0.0];
      [(_UIStatusBarBatteryView *)self _unflipBoltIfNecessary];
      [(_UIStatusBarBatteryView *)self _notifyWillBeginAnimatingBoltToVisible:1];
      [MEMORY[0x1E6979518] begin];
      v18 = 0.5;
      if (self->_showsPercentage)
      {
        v18 = 0.25;
      }

      [MEMORY[0x1E6979518] setAnimationDuration:v18];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __38___UIStatusBarBatteryView__updateBolt__block_invoke_2;
      v23[3] = &unk_1E70F35E0;
      v23[4] = self;
      v24 = v3;
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

  if (!v3 && v5 == 1.0)
  {
    [(_UIStatusBarBatteryView *)self _notifyWillBeginAnimatingBoltToVisible:0];
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
    v21[2] = __38___UIStatusBarBatteryView__updateBolt__block_invoke_3;
    v21[3] = &unk_1E70F35E0;
    v21[4] = self;
    v22 = v3;
    [MEMORY[0x1E6979518] setCompletionBlock:v21];
    v25 = v31;
    [(CALayer *)self->_boltLayer setTransform:&v25];
    [(CALayer *)self->_boltLayer setOpacity:0.0];
    v25 = v31;
    [(CALayer *)self->_boltMaskLayer setTransform:&v25];
    [(CALayer *)self->_boltMaskLayer setOpacity:0.0];
    [(_UIStatusBarBatteryView *)self _unflipBoltIfNecessary];
    v19 = MEMORY[0x1E6979518];
LABEL_25:
    [v19 commit];
    return;
  }

  if (v5 != 1.0)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v25 = v32;
    [(CALayer *)self->_boltLayer setTransform:&v25];
    v25 = v32;
    [(CALayer *)self->_boltMaskLayer setTransform:&v25];
    v20 = 0.0;
    if (!self->_showsPercentage)
    {
      *&v20 = 1.0;
    }

    [(CALayer *)self->_boltMaskLayer setOpacity:v20];
    [(_UIStatusBarBatteryView *)self _unflipBoltIfNecessary];
  }
}

- (void)_notifyWillBeginAnimatingBoltToVisible:(BOOL)a3
{
  v3 = a3;
  if ([(_UIStatusBarBatteryView *)self internalSizeCategory]|| [(_UIStatusBarBatteryView *)self iconSize])
  {

    [(_UIStatusBarBatteryView *)self _willBeginAnimatingBoltToVisible:v3];
  }
}

- (void)_notifyDidFinishAnimatingBoltToVisible:(BOOL)a3
{
  v3 = a3;
  if ([(_UIStatusBarBatteryView *)self internalSizeCategory]|| [(_UIStatusBarBatteryView *)self iconSize])
  {

    [(_UIStatusBarBatteryView *)self _didFinishAnimatingBoltToVisible:v3];
  }
}

- (void)_updatePercentageFont
{
  v3 = [(UIView *)self traitCollection];
  [(_UIStatusBarBatteryView *)self _percentageFontSizeForTraitCollection:v3];
  v5 = v4;

  v6 = [(UIView *)self traitCollection];
  v7 = [(_UIStatusBarBatteryView *)self _percentageFontCondensedWhenChargingForTraitCollection:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __48___UIStatusBarBatteryView__updatePercentageFont__block_invoke;
  v15 = &unk_1E711FE50;
  v18 = v7;
  v16 = self;
  v17 = v5;
  if (self->_percentageLabel)
  {
    v8 = __48___UIStatusBarBatteryView__updatePercentageFont__block_invoke(v13);
    [(UILabel *)self->_percentageLabel setFont:v8];
  }

  else
  {
    v9 = [UILabel alloc];
    v10 = [(UILabel *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    percentageLabel = self->_percentageLabel;
    self->_percentageLabel = v10;

    v12 = v14(v13);
    [(UILabel *)self->_percentageLabel setFont:v12];

    [(UIView *)self addSubview:self->_percentageLabel];
    [(_UIStatusBarBatteryView *)self _updateFillColor];
  }
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
    v5 = [(UILabel *)self->_percentageLabel text];
    v6 = [v4 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(UILabel *)self->_percentageLabel setText:v4];
      [(_UIStatusBarBatteryView *)self _updateLightningBoltAndPercentagePosition];
      [MEMORY[0x1E6979518] commit];
    }

    [(UIView *)self->_percentageLabel alpha];
    if (v7 < 1.0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44___UIStatusBarBatteryView__updatePercentage__block_invoke;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      [UIView animateWithDuration:v10 animations:0.5];
    }
  }

  else
  {
    [(UIView *)self->_percentageLabel alpha];
    if (v8 > 0.0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44___UIStatusBarBatteryView__updatePercentage__block_invoke_2;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView animateWithDuration:v9 animations:0.25];
    }
  }

  [(_UIStatusBarBatteryView *)self __updateFillLayer];
}

- (void)_updateTransform
{
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    CATransform3DMakeScale(&v18, -1.0, 1.0, 1.0);
    v3 = [(UIView *)self layer];
    v4 = v3;
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
    v3 = [(UIView *)self layer];
    v4 = v3;
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
  [v3 setSublayerTransform:&v10];
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

- (void)setInternalSizeCategory:(int64_t)a3
{
  if (self->_internalSizeCategory != a3)
  {
    self->_internalSizeCategory = a3;
    [(_UIStatusBarBatteryView *)self __resetBoltLayers];
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setSizeCategory:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(_UIStatusBarBatteryView *)self setInternalSizeCategory:v3];
}

- (void)setChargePercent:(double)a3
{
  if (self->_chargePercent != a3)
  {
    v5 = [(_UIStatusBarBatteryView *)self _shouldShowBolt];
    v6 = [(_UIStatusBarBatteryView *)self isLowBattery];
    self->_chargePercent = fmin(fmax(a3, 0.0), 1.0);
    if (v5 != [(_UIStatusBarBatteryView *)self _shouldShowBolt])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44___UIStatusBarBatteryView_setChargePercent___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIView performWithoutAnimation:v8];
    }

    if (self->_showsPercentage && v6 != [(_UIStatusBarBatteryView *)self isLowBattery])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44___UIStatusBarBatteryView_setChargePercent___block_invoke_2;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:0.25];
    }

    [(_UIStatusBarBatteryView *)self __updateFillLayer];
    [(_UIStatusBarBatteryView *)self _updatePercentage];
  }
}

- (void)setChargingState:(int64_t)a3
{
  if (self->_chargingState != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_chargingState = a3;
    if (self->_showsPercentage)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __44___UIStatusBarBatteryView_setChargingState___block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [UIView animateWithDuration:v6 animations:0.25];
    }

    [(_UIStatusBarBatteryView *)self _updateFillColor];
    [(_UIStatusBarBatteryView *)self _updateBolt];
  }
}

- (void)setSaverModeActive:(BOOL)a3
{
  if (self->_saverModeActive != a3)
  {
    self->_saverModeActive = a3;
    [(_UIStatusBarBatteryView *)self _updateFillColor];
  }
}

- (void)setLowBatteryMode:(int64_t)a3
{
  if (self->_lowBatteryMode != a3)
  {
    v5 = [(_UIStatusBarBatteryView *)self isLowBattery];
    self->_lowBatteryMode = a3;
    if (v5 != [(_UIStatusBarBatteryView *)self isLowBattery])
    {

      [(_UIStatusBarBatteryView *)self _updateFillColor];
    }
  }
}

- (BOOL)isLowBattery
{
  lowBatteryMode = self->_lowBatteryMode;
  if (lowBatteryMode)
  {
    return lowBatteryMode == 2;
  }

  [(_UIStatusBarBatteryView *)self chargePercent];
  v6 = v5;
  [(_UIStatusBarBatteryView *)self lowBatteryChargePercentThreshold];
  return v6 <= v7;
}

- (void)setShowsInlineChargingIndicator:(BOOL)a3
{
  if (self->_showsInlineChargingIndicator != a3)
  {
    self->_showsInlineChargingIndicator = a3;
    [(_UIStatusBarBatteryView *)self _updatePercentage];

    [(_UIStatusBarBatteryView *)self _updateBolt];
  }
}

- (void)setShowsPercentage:(BOOL)a3
{
  if (self->_showsPercentage != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_showsPercentage = a3;
    [(_UIStatusBarBatteryView *)self _updatePercentageFont];
    [(_UIStatusBarBatteryView *)self _updatePercentage];
    [(_UIStatusBarBatteryView *)self _updateBolt];
    if (self->_internalSizeCategory || [(_UIStatusBarBatteryView *)self iconSize])
    {
      [(_UIStatusBarBatteryView *)self _updateBodyLayers];
      [(UIView *)self invalidateIntrinsicContentSize];
      [(UIView *)self setNeedsLayout];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___UIStatusBarBatteryView_setShowsPercentage___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.25];
    if (!a3)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (self->_fillColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fillColor, a3);
    [(_UIStatusBarBatteryView *)self _updateFillColor];
    v5 = v6;
    if (!self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
      v5 = v6;
    }
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

- (void)setBodyColor:(id)a3
{
  v5 = a3;
  if (self->_bodyColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bodyColor, a3);
    v5 = v6;
    if (!self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
      v5 = v6;
    }
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
    v5 = [(_UIStatusBarBatteryView *)self fillColor];
    v3 = [v5 colorWithAlphaComponent:self->_bodyColorAlpha];
  }

  return v3;
}

- (void)setBodyColorAlpha:(double)a3
{
  if (self->_bodyColorAlpha != a3)
  {
    self->_bodyColorAlpha = a3;
    if (!self->_bodyColor && !self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setPinColor:(id)a3
{
  v5 = a3;
  if (self->_pinColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pinColor, a3);
    v5 = v6;
    if (!self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
      v5 = v6;
    }
  }
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
    v5 = [(_UIStatusBarBatteryView *)self bodyColor];
    v3 = [v5 colorWithAlphaComponent:self->_pinColorAlpha];
  }

  return v3;
}

- (void)setPinColorAlpha:(double)a3
{
  if (self->_pinColorAlpha != a3)
  {
    self->_pinColorAlpha = a3;
    if (!self->_pinColor && !self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateBodyColors];
    }
  }
}

- (void)setBoltColor:(id)a3
{
  v5 = a3;
  if (self->_boltColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_boltColor, a3);
    [(_UIStatusBarBatteryView *)self _updateBodyColors];
    v5 = v6;
  }
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
    v4 = [(_UIStatusBarBatteryView *)self bodyColor];
    v3 = [v4 colorWithAlphaComponent:1.0];
  }

  return v3;
}

- (void)setInactiveColor:(id)a3
{
  v5 = a3;
  if (self->_inactiveColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inactiveColor, a3);
    v5 = v6;
    if (self->_showsPercentage)
    {
      [(_UIStatusBarBatteryView *)self _updateFillColor];
      v5 = v6;
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
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    saverModeActive = self->_saverModeActive;
    if (v6 == 2)
    {
      if (!saverModeActive && ([(_UIStatusBarBatteryView *)self isLowBattery]|| [(_UIStatusBarBatteryView *)self chargingState]))
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarBatteryView;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  [(_UIStatusBarBatteryView *)self _updateFillColor];
  [(_UIStatusBarBatteryView *)self _updateTransform];
  [(_UIStatusBarBatteryView *)self _updateBolt];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 isRounded];
  v6 = [v4 iconSize];

  if (self->_iconSize == v6)
  {
    rounded = self->_rounded;
    [(_UIStatusBarBatteryView *)self setRounded:v5];
    [(_UIStatusBarBatteryView *)self setIconSize:v6];
    if (rounded == v5)
    {
      return;
    }
  }

  else
  {
    [(_UIStatusBarBatteryView *)self setRounded:v5];
    [(_UIStatusBarBatteryView *)self setIconSize:v6];
  }

  if (!self->_internalSizeCategory)
  {
    [(_UIStatusBarBatteryView *)self __resetBoltLayers];
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

+ (CGSize)_statusBarIntrinsicContentSizeForIconSize:(int64_t)a3
{
  [a1 _batterySizeForIconSize:?];
  v6 = v5;
  v8 = v7;
  [a1 _pinSizeForIconSize:a3];
  v10 = v9;
  [a1 _lineWidthAndInterspaceForIconSize:a3];
  v12 = v10 + v6 + v11;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(UIView *)self traitCollection];
  [(_UIStatusBarBatteryView *)self _batterySizeForTraitCollection:v3];
  v5 = v4;
  v7 = v6;
  [(_UIStatusBarBatteryView *)self _pinSizeForTraitCollection:v3];
  v9 = v8;
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v3];
  v11 = v9 + v5 + v10;

  v12 = v11;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (id)_pinBezierPathForSize:(CGSize)a3 isComplex:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = +[UIBezierPath bezierPath];
  v8 = v7;
  if (v4)
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

+ (id)_boltBezierPathForSize:(CGSize)a3
{
  v3 = [UIBezierPath bezierPath:a3.width];
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

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  [(_UIStatusBarBatteryView *)self chargePercent];
  v4 = v3;
  v5 = [(_UIStatusBarBatteryView *)self _batteryFillColor];
  v6 = [(UIView *)self traitCollection];
  if ([v6 userInterfaceStyle] == 2)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;

  v8 = [(_UIStatusBarBatteryView *)self _shouldShowBolt];
  v9 = [(UIView *)self _shouldReverseLayoutDirection];
  v10 = [(UIView *)self _screen];
  [v10 scale];
  v12 = v11;

  v13 = [(_UIStatusBarBatteryView *)self showsPercentage];
  v14 = [(UIView *)self traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  v16 = [(_UIStatusBarBatteryView *)self accessibilityHUDImageCacheInfo];
  v17 = [v16 cacheMatchesCapacity:v5 fillColor:v7 tintColor:v8 showingBolt:v9 reverseLayout:v13 scale:v15 showsPercentage:v4 contentSizeCategory:v12];

  if ((v17 & 1) == 0)
  {
    v18 = UIStatusBarCreateHUDBatteryImage(v5, v7, v8, 0, v9, v13, v4, v12);
    v19 = objc_opt_new();
    [v19 setCachedImage:v18];
    [v19 setCapacity:v4];
    [v19 setFillColor:v5];
    [v19 setTintColor:v7];
    [v19 setShowBolt:v8];
    [v19 setReverseLayoutDirection:v9];
    [v19 setScale:v12];
    [v19 setShowsPercentage:v13];
    [v19 setContentSizeCategory:v15];
    [(_UIStatusBarBatteryView *)self setAccessibilityHUDImageCacheInfo:v19];
  }

  v20 = [UIAccessibilityHUDItem alloc];
  v21 = [(_UIStatusBarBatteryView *)self accessibilityHUDImageCacheInfo];
  v22 = [v21 cachedImage];
  v23 = [(UIAccessibilityHUDItem *)v20 initWithTitle:0 image:v22 imageInsets:0.0, 0.0, 0.0, 0.0];

  [(UIAccessibilityHUDItem *)v23 setFlattenImage:0];

  return v23;
}

@end