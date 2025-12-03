@interface STUIStatusBarIndicatorLiquidDetectionItem
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation STUIStatusBarIndicatorLiquidDetectionItem

- (id)systemImageNameForUpdate:(id)update
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