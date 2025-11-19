@interface _UIStatusBarCellularFlatSignalView
+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4;
@end

@implementation _UIStatusBarCellularFlatSignalView

+ (double)_heightForNormalBarAtIndex:(int64_t)a3 iconSize:(int64_t)a4
{
  if (_UIGetSecondarySIMUnderBaseline())
  {

    [a1 _barWidthForIconSize:a4];
  }

  else
  {
    result = 0.0;
    if ((a4 - 1) <= 0x10)
    {
      return dbl_18A681F48[a4 - 1];
    }
  }

  return result;
}

@end