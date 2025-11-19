@interface _UIFloatingTabBarPlatformMetrics_GlassMac
- (_UIFloatingTabBarPlatformMetrics_GlassMac)init;
@end

@implementation _UIFloatingTabBarPlatformMetrics_GlassMac

- (_UIFloatingTabBarPlatformMetrics_GlassMac)init
{
  v5.receiver = self;
  v5.super_class = _UIFloatingTabBarPlatformMetrics_GlassMac;
  v2 = [(_UIFloatingTabBarPlatformMetrics_Glass *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBackgroundEffects:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarBorderWidth:0.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarBorderInsideBounds:1];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSupportsFloatingSidebar:1];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarPrefersMacAppearance:1];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSupportsCustomizablePlacements:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarSupportsAnimatedSelections:0];
  }

  return v3;
}

@end