@interface _UIFloatingTabBarPlatformMetrics_Vision
- (_UIFloatingTabBarPlatformMetrics_Vision)init;
@end

@implementation _UIFloatingTabBarPlatformMetrics_Vision

- (_UIFloatingTabBarPlatformMetrics_Vision)init
{
  v5.receiver = self;
  v5.super_class = _UIFloatingTabBarPlatformMetrics_Vision;
  v2 = [(_UIFloatingTabBarPlatformMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFloatingTabBarPlatformMetrics *)v2 setSupportsCustomizablePlacements:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setOverflowButtonImageName:@"ellipsis"];
  }

  return v3;
}

@end