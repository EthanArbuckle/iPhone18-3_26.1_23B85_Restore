@interface STUIStatusBarCellularFlatSignalView
+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size;
@end

@implementation STUIStatusBarCellularFlatSignalView

+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size
{
  v6 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v6 itemSettings];
  secondarySIMUnderBaseline = [itemSettings secondarySIMUnderBaseline];

  if (secondarySIMUnderBaseline)
  {

    [self _barWidthForIconSize:size];
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_26C581DA8[size - 1];
    }
  }

  return result;
}

@end