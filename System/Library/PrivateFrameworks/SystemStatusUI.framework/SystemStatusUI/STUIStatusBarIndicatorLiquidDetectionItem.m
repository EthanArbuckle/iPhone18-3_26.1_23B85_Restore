@interface STUIStatusBarIndicatorLiquidDetectionItem
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation STUIStatusBarIndicatorLiquidDetectionItem

- (id)systemImageNameForUpdate:(id)a3
{
  if ([(STUIStatusBarIndicatorLiquidDetectionItem *)self useFullColorIndicator])
  {
    v3 = 0;
  }

  else
  {
    v3 = @"drop.triangle.fill";
  }

  return v3;
}

@end