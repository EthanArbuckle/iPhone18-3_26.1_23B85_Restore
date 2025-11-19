@interface _UISidebarPlatformMetrics_Floating
- (_UISidebarPlatformMetrics_Floating)init;
@end

@implementation _UISidebarPlatformMetrics_Floating

- (_UISidebarPlatformMetrics_Floating)init
{
  v7.receiver = self;
  v7.super_class = _UISidebarPlatformMetrics_Floating;
  v2 = [(_UISidebarPlatformMetrics *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_UISidebarPlatformMetrics *)v2 setFallbackCornerRadius:22.0];
    [(_UISidebarPlatformMetrics *)v3 setPlatterInsets:10.0, 10.0, 10.0, 0.0];
    v4 = [[_UIViewGlass alloc] initWithVariant:9];
    [(_UIViewGlass *)v4 setFlexible:1];
    [(_UISidebarPlatformMetrics *)v3 setFloatingBackground:v4];
    v5 = [[_UIViewGlass alloc] initWithVariant:10];
    [(_UISidebarPlatformMetrics *)v3 setAbuttedBackground:v5];

    [(_UISidebarPlatformMetrics *)v3 setNarrowWidthMetrics:240.0, 280.0, 320.0];
    [(_UISidebarPlatformMetrics *)v3 setWideWidthMetrics:280.0, 320.0, 400.0];
    [(_UISidebarPlatformMetrics *)v3 setInspectorWidthMetrics:240.0, 280.0, 320.0];
  }

  return v3;
}

@end