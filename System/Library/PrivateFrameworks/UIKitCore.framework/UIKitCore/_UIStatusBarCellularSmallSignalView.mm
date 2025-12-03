@interface _UIStatusBarCellularSmallSignalView
+ (double)_barCornerRadiusForIconSize:(int64_t)size;
+ (double)_barWidthForIconSize:(int64_t)size;
+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
@end

@implementation _UIStatusBarCellularSmallSignalView

+ (double)_barWidthForIconSize:(int64_t)size
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__barWidthForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_18A681DB0[size - 1];
    }
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size
{
  v14 = *MEMORY[0x1E69E9840];
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v10, sel__heightForNormalBarAtIndex_iconSize_, index, size);
    return result;
  }

  result = 0.0;
  if (size > 5)
  {
    if (size <= 7)
    {
      if (size == 6)
      {
        goto LABEL_18;
      }

      v11 = xmmword_18A67FB30;
      v12 = xmmword_18A6806E0;
      v9 = 0x403E000000000000;
    }

    else
    {
      switch(size)
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
    return *(&v11 + index) / 3.0;
  }

  if (size <= 2)
  {
    if (size == 1)
    {
      v11 = xmmword_18A67FC40;
      v12 = xmmword_18A67FB30;
      v8 = 0x4032000000000000;
      goto LABEL_23;
    }

    if (size != 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (size == 3)
  {
LABEL_15:
    v11 = xmmword_18A67FDF0;
    v12 = xmmword_18A681D50;
    v9 = 0x4039000000000000;
    goto LABEL_21;
  }

  if (size == 4)
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
  return *(&v11 + index) * 0.5;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)size
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__barCornerRadiusForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_18A681E38[size - 1];
    }
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  if (_UIGetSecondarySIMUnderBaseline())
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS____UIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v6, sel__interspaceForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_18A681EC0[size - 1];
    }
  }

  return result;
}

@end