@interface _UIStatusBarCellularSmallSignalView
+ (double)_barCornerRadiusForIconSize:(int64_t)a3;
+ (double)_barWidthForIconSize:(int64_t)a3;
+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4;
+ (double)_interspaceForIconSize:(int64_t)a3;
@end

@implementation _UIStatusBarCellularSmallSignalView

+ (double)_barWidthForIconSize:(int64_t)a3
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__barWidthForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_18A681DB0[a3 - 1];
    }
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v10, sel__heightForNormalBarAtIndex_iconSize_, a3, a4);
    return result;
  }

  result = 0.0;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 == 6)
      {
        goto LABEL_18;
      }

      v11 = xmmword_18A67FB30;
      v12 = xmmword_18A6806E0;
      v9 = 0x403E000000000000;
    }

    else
    {
      switch(a4)
      {
        case 8:
          v11 = xmmword_18A681D80;
          v12 = xmmword_18A681B90;
          v9 = 0x4040000000000000;
          break;
        case 16:
          v11 = xmmword_18A6785D0;
          v12 = xmmword_18A681BA0;
          v8 = 0x402C000000000000;
          goto LABEL_23;
        case 17:
          v11 = xmmword_18A681D60;
          v12 = xmmword_18A681D70;
          v9 = 0x4035000000000000;
          break;
        default:
          return result;
      }
    }

LABEL_21:
    v13 = v9;
    return *(&v11 + a3) / 3.0;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v11 = xmmword_18A67FC40;
      v12 = xmmword_18A67FB30;
      v8 = 0x4032000000000000;
      goto LABEL_23;
    }

    if (a4 != 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a4 == 3)
  {
LABEL_15:
    v11 = xmmword_18A67FDF0;
    v12 = xmmword_18A681D50;
    v9 = 0x4039000000000000;
    goto LABEL_21;
  }

  if (a4 == 4)
  {
LABEL_18:
    v11 = xmmword_18A67FE40;
    v12 = xmmword_18A681D90;
    v9 = 0x403B000000000000;
    goto LABEL_21;
  }

  v11 = xmmword_18A67FC40;
  v12 = xmmword_18A681DA0;
  v8 = 0x4034000000000000;
LABEL_23:
  v13 = v8;
  return *(&v11 + a3) * 0.5;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)a3
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__barCornerRadiusForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_18A681E38[a3 - 1];
    }
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__interspaceForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_18A681EC0[a3 - 1];
    }
  }

  return result;
}

@end