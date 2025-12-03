@interface STUIStatusBarCellularSmallSignalView
+ (double)_barCornerRadiusForIconSize:(int64_t)size;
+ (double)_barWidthForIconSize:(int64_t)size;
+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size;
+ (double)_interspaceForIconSize:(int64_t)size;
@end

@implementation STUIStatusBarCellularSmallSignalView

+ (double)_barWidthForIconSize:(int64_t)size
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__barWidthForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_26C581C10[size - 1];
    }
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v7 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v13, sel__heightForNormalBarAtIndex_iconSize_, index, size);
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

      v14 = xmmword_26C581A90;
      v15 = xmmword_26C581AA0;
      v12 = 0x403E000000000000;
    }

    else
    {
      switch(size)
      {
        case 8:
          v14 = xmmword_26C581A80;
          v15 = xmmword_26C581870;
          v12 = 0x4040000000000000;
          break;
        case 16:
          v14 = xmmword_26C581A70;
          v15 = xmmword_26C581880;
          v11 = 0x402C000000000000;
          goto LABEL_23;
        case 17:
          v14 = xmmword_26C581A50;
          v15 = xmmword_26C581A60;
          v12 = 0x4035000000000000;
          break;
        default:
          return result;
      }
    }

LABEL_21:
    v16 = v12;
    return *(&v14 + index) / 3.0;
  }

  if (size <= 2)
  {
    if (size == 1)
    {
      v14 = xmmword_26C581AE0;
      v15 = xmmword_26C581A90;
      v11 = 0x4032000000000000;
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
    v14 = xmmword_26C581AD0;
    v15 = xmmword_26C581A40;
    v12 = 0x4039000000000000;
    goto LABEL_21;
  }

  if (size == 4)
  {
LABEL_18:
    v14 = xmmword_26C581AB0;
    v15 = xmmword_26C581AC0;
    v12 = 0x403B000000000000;
    goto LABEL_21;
  }

  v14 = xmmword_26C581AE0;
  v15 = xmmword_26C581AF0;
  v11 = 0x4034000000000000;
LABEL_23:
  v16 = v11;
  return *(&v14 + index) * 0.5;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)size
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__barCornerRadiusForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_26C581C98[size - 1];
    }
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)size
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__interspaceForIconSize_, size);
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_26C581D20[size - 1];
    }
  }

  return result;
}

@end