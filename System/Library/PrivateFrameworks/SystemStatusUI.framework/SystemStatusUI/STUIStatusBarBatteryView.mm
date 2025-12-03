@interface STUIStatusBarBatteryView
+ (CGSize)_batterySizeForIconSize:(int64_t)size;
+ (CGSize)_pinSizeForIconSize:(int64_t)size;
+ (CGSize)_statusBarIntrinsicContentSizeForIconSize:(int64_t)size;
+ (double)_insideCornerRadiusForIconSize:(int64_t)size;
+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)size;
+ (double)_outsideCornerRadiusForIconSize:(int64_t)size;
- (CGSize)_pinSizeForIconSize:(int64_t)size;
- (double)_batteryBoltScaleFactorMultiplier;
- (double)_percentTextVerticalAdjustmentForIconSize:(int64_t)size;
- (double)_percentTextXAdjustmentWhenFullForIconSize:(int64_t)size;
- (double)_percentageBatteryBoltScaleFactorMultiplier;
- (double)_percentageFontCondensedWhenChargingForIconSize:(int64_t)size;
- (double)_percentageFontSizeForIconSize:(int64_t)size;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation STUIStatusBarBatteryView

+ (CGSize)_batterySizeForIconSize:(int64_t)size
{
  v3 = 11.5;
  v4 = 22.0;
  switch(size)
  {
    case 1:
    case 16:
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
      v4 = 24.0;
      break;
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
      v5 = _UIEnhancedMainMenuEnabled();
      v4 = 24.0;
      if (v5)
      {
        v4 = 25.0;
      }

      v3 = 12.0;
      if (v5)
      {
        v3 = 13.0;
      }

      break;
    default:
      v4 = *MEMORY[0x277CBF3A8];
      v3 = *(MEMORY[0x277CBF3A8] + 8);
      break;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

+ (CGSize)_pinSizeForIconSize:(int64_t)size
{
  v3 = 4.5;
  v4 = 1.25;
  switch(size)
  {
    case 1:
    case 16:
      break;
    case 2:
    case 17:
      v3 = 4.66666667;
      goto LABEL_18;
    case 3:
    case 4:
      v3 = 4.0;
      goto LABEL_18;
    case 5:
      goto LABEL_10;
    case 6:
      v3 = 5.0;
      goto LABEL_18;
    case 7:
LABEL_18:
      v4 = 1.33333333;
      break;
    case 8:
      v3 = 5.0;
      v4 = 1.66666667;
      break;
    case 9:
    case 15:
      v3 = 5.5;
      goto LABEL_16;
    case 10:
      v3 = 5.0;
LABEL_10:
      v4 = 1.5;
      break;
    case 11:
      v3 = 6.0;
LABEL_16:
      v4 = 1.75;
      break;
    case 12:
      v3 = 5.66666667;
      goto LABEL_13;
    case 13:
      v3 = 6.0;
LABEL_13:
      v4 = 1.83333333;
      break;
    case 14:
      v5 = _UIEnhancedMainMenuEnabled();
      v3 = 5.0;
      if (!v5)
      {
        v3 = 4.5;
      }

      v4 = 1.5;
      break;
    default:
      v4 = *MEMORY[0x277CBF3A8];
      v3 = *(MEMORY[0x277CBF3A8] + 8);
      break;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

+ (double)_lineWidthAndInterspaceForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C582420[size - 1];
  }

  return result;
}

+ (double)_outsideCornerRadiusForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C5824A8[size - 1];
  }

  return result;
}

+ (double)_insideCornerRadiusForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C582530[size - 1];
  }

  return result;
}

- (double)_percentageFontSizeForIconSize:(int64_t)size
{
  rounded = [(_UIBatteryView *)self rounded];
  result = 9.0;
  switch(size)
  {
    case 1:
    case 14:
    case 16:
    case 17:
      return result;
    case 2:
    case 4:
      result = 11.3333333;
      break;
    case 3:
      result = 10.3333333;
      break;
    case 5:
    case 6:
    case 9:
      result = 12.0;
      break;
    case 7:
      result = 12.6666667;
      if (rounded)
      {
        result = 11.6666667;
      }

      break;
    case 8:
      result = 13.6666667;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
      result = 13.0;
      break;
    case 15:
      result = 10.0;
      break;
    default:
      result = 0.0;
      break;
  }

  return result;
}

- (double)_percentageFontCondensedWhenChargingForIconSize:(int64_t)size
{
  rounded = [(_UIBatteryView *)self rounded];
  if (size == 8)
  {
    return 0.0;
  }

  result = 1.0;
  if (size == 7)
  {
    return !rounded;
  }

  return result;
}

- (double)_percentTextVerticalAdjustmentForIconSize:(int64_t)size
{
  result = 0.0;
  if ((size - 1) <= 0x10)
  {
    return dbl_26C5825B8[size - 1];
  }

  return result;
}

- (double)_percentTextXAdjustmentWhenFullForIconSize:(int64_t)size
{
  [(STUIStatusBarBatteryView *)self _currentScreenScale];
  v5 = v4;
  result = 0.0;
  if (size != 3)
  {
    return -1.0 / v5 + 0.0;
  }

  return result;
}

- (CGSize)_pinSizeForIconSize:(int64_t)size
{
  rounded = [(_UIBatteryView *)self rounded];
  v5 = 4.5;
  v6 = 1.25;
  switch(size)
  {
    case 1:
    case 16:
      break;
    case 2:
    case 17:
      v5 = 4.66666667;
      goto LABEL_23;
    case 3:
    case 4:
      v5 = 4.0;
      goto LABEL_23;
    case 5:
      goto LABEL_15;
    case 6:
      v5 = 5.0;
      goto LABEL_23;
    case 7:
LABEL_23:
      v6 = 1.33333333;
      break;
    case 8:
      v5 = 5.0;
      v6 = 1.66666667;
      break;
    case 9:
    case 15:
      v5 = 5.5;
      goto LABEL_21;
    case 10:
      v5 = 5.0;
LABEL_15:
      v6 = 1.5;
      break;
    case 11:
      v5 = 6.0;
LABEL_21:
      v6 = 1.75;
      break;
    case 12:
      v5 = 5.66666667;
      goto LABEL_18;
    case 13:
      v5 = 6.0;
LABEL_18:
      v6 = 1.83333333;
      break;
    case 14:
      v7 = rounded;
      v8 = _UIEnhancedMainMenuEnabled();
      v5 = 4.5;
      if (v7)
      {
        v9 = 4.0;
      }

      else
      {
        v9 = 4.5;
      }

      v6 = 1.5;
      if (!v7)
      {
        v5 = 5.0;
      }

      if (!v8)
      {
        v5 = v9;
      }

      break;
    default:
      v6 = *MEMORY[0x277CBF3A8];
      v5 = *(MEMORY[0x277CBF3A8] + 8);
      break;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (void)applyStyleAttributes:(id)attributes
{
  iconSize = [attributes iconSize];

  [(_UIBatteryView *)self setRounded:1 iconSize:iconSize];
}

- (double)_percentageBatteryBoltScaleFactorMultiplier
{
  if ([(_UIBatteryView *)self internalSizeCategory]|| ![(_UIBatteryView *)self iconSize])
  {
    v7.receiver = self;
    v7.super_class = STUIStatusBarBatteryView;
    [(_UIBatteryView *)&v7 _percentageBatteryBoltScaleFactorMultiplier];
  }

  else
  {
    iconSize = [(_UIBatteryView *)self iconSize];
    rounded = [(_UIBatteryView *)self rounded];
    v6 = 9.0;
    switch(iconSize)
    {
      case 1:
      case 14:
      case 16:
      case 17:
        return v6 / 11.5 * 0.7;
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
        v6 = 12.6666667;
        if (rounded)
        {
          v6 = 11.6666667;
        }

        break;
      case 8:
        v6 = 13.6666667;
        break;
      case 10:
      case 11:
      case 12:
      case 13:
        v6 = 13.0;
        break;
      case 15:
        v6 = 10.0;
        break;
      default:
        v6 = 0.0;
        break;
    }

    return v6 / 11.5 * 0.7;
  }

  return result;
}

- (double)_batteryBoltScaleFactorMultiplier
{
  if ([(_UIBatteryView *)self internalSizeCategory]|| ![(_UIBatteryView *)self iconSize])
  {
    v7.receiver = self;
    v7.super_class = STUIStatusBarBatteryView;
    [(_UIBatteryView *)&v7 _batteryBoltScaleFactorMultiplier];
  }

  else
  {
    iconSize = [(_UIBatteryView *)self iconSize];
    v5 = 11.5;
    switch(iconSize)
    {
      case 1:
      case 16:
        return v5 / 11.5;
      case 2:
      case 3:
      case 17:
        v5 = 11.3333333;
        break;
      case 4:
        v5 = 12.0;
        break;
      case 5:
        v5 = 12.5;
        break;
      case 6:
        v5 = 12.3333333;
        break;
      case 7:
        v5 = 13.0;
        break;
      case 8:
        v5 = 14.3333333;
        break;
      case 9:
      case 15:
        v5 = 14.0;
        break;
      case 10:
        v5 = 13.6666667;
        break;
      case 11:
        v5 = 15.0;
        break;
      case 12:
        v5 = 14.6666667;
        break;
      case 13:
        v5 = 15.3333333;
        break;
      case 14:
        v6 = _UIEnhancedMainMenuEnabled();
        v5 = 12.0;
        if (v6)
        {
          v5 = 13.0;
        }

        break;
      default:
        v5 = *(MEMORY[0x277CBF3A8] + 8);
        break;
    }

    return v5 / 11.5;
  }

  return result;
}

+ (CGSize)_statusBarIntrinsicContentSizeForIconSize:(int64_t)size
{
  [self _batterySizeForIconSize:?];
  v6 = v5;
  v8 = v7;
  [self _pinSizeForIconSize:size];
  v10 = v9;
  [self _lineWidthAndInterspaceForIconSize:size];
  v12 = v10 + v6 + v11;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

@end