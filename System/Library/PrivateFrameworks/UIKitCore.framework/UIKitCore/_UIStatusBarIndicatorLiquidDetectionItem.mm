@interface _UIStatusBarIndicatorLiquidDetectionItem
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation _UIStatusBarIndicatorLiquidDetectionItem

- (id)systemImageNameForUpdate:(id)a3
{
  if ([(_UIStatusBarIndicatorLiquidDetectionItem *)self useFullColorIndicator])
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