@interface _UIStatusBarIndicatorLiquidDetectionItem
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation _UIStatusBarIndicatorLiquidDetectionItem

- (id)systemImageNameForUpdate:(id)update
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