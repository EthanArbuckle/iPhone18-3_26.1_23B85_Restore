@interface _UIStatusBarCellularFlatSignalView
+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size;
@end

@implementation _UIStatusBarCellularFlatSignalView

+ (double)_heightForNormalBarAtIndex:(int64_t)index iconSize:(int64_t)size
{
  if (_UIGetSecondarySIMUnderBaseline())
  {

    [self _barWidthForIconSize:size];
  }

  else
  {
    result = 0.0;
    if ((size - 1) <= 0x10)
    {
      return dbl_18A681F48[size - 1];
    }
  }

  return result;
}

@end