@interface STUIStatusBarCellularSmallSignalView
+ (double)_barCornerRadiusForIconSize:(int64_t)a3;
+ (double)_barWidthForIconSize:(int64_t)a3;
+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4;
+ (double)_interspaceForIconSize:(int64_t)a3;
@end

@implementation STUIStatusBarCellularSmallSignalView

+ (double)_barWidthForIconSize:(int64_t)a3
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  v7 = [v6 secondarySIMUnderBaseline];

  if (v7)
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__barWidthForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_26C581C10[a3 - 1];
    }
  }

  return result;
}

+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = +[STUIStatusBarSettingsDomain rootSettings];
  v8 = [v7 itemSettings];
  v9 = [v8 secondarySIMUnderBaseline];

  if (v9)
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v13, sel__heightForNormalBarAtIndex_iconSize_, a3, a4);
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

      v14 = xmmword_26C581A90;
      v15 = xmmword_26C581AA0;
      v12 = 0x403E000000000000;
    }

    else
    {
      switch(a4)
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
    return *(&v14 + a3) / 3.0;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v14 = xmmword_26C581AE0;
      v15 = xmmword_26C581A90;
      v11 = 0x4032000000000000;
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
    v14 = xmmword_26C581AD0;
    v15 = xmmword_26C581A40;
    v12 = 0x4039000000000000;
    goto LABEL_21;
  }

  if (a4 == 4)
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
  return *(&v14 + a3) * 0.5;
}

+ (double)_barCornerRadiusForIconSize:(int64_t)a3
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  v7 = [v6 secondarySIMUnderBaseline];

  if (v7)
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__barCornerRadiusForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_26C581C98[a3 - 1];
    }
  }

  return result;
}

+ (double)_interspaceForIconSize:(int64_t)a3
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  v7 = [v6 secondarySIMUnderBaseline];

  if (v7)
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___STUIStatusBarCellularSmallSignalView;
    objc_msgSendSuper2(&v9, sel__interspaceForIconSize_, a3);
  }

  else
  {
    result = 0.0;
    if ((a3 - 1) <= 0x10)
    {
      return dbl_26C581D20[a3 - 1];
    }
  }

  return result;
}

@end