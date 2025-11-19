@interface STUIStatusBarCellularFlatSignalView
+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4;
@end

@implementation STUIStatusBarCellularFlatSignalView

+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4
{
  v6 = +[STUIStatusBarSettingsDomain rootSettings];
  v7 = [v6 itemSettings];
  v8 = [v7 secondarySIMUnderBaseline];

  if (v8)
  {

    [a1 _barWidthForIconSize:a4];
  }

  else
  {
    result = 0.0;
    if ((a4 - 1) <= 0x10)
    {
      return dbl_26C581DA8[a4 - 1];
    }
  }

  return result;
}

@end