@interface _UISidebarPlatformMetrics_Floating_Mac
- (_UISidebarPlatformMetrics_Floating_Mac)init;
@end

@implementation _UISidebarPlatformMetrics_Floating_Mac

- (_UISidebarPlatformMetrics_Floating_Mac)init
{
  v5.receiver = self;
  v5.super_class = _UISidebarPlatformMetrics_Floating_Mac;
  v2 = [(_UISidebarPlatformMetrics_Floating *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UISidebarPlatformMetrics *)v2 setFallbackCornerRadius:18.0];
    [(_UISidebarPlatformMetrics *)v3 setPlatterInsets:8.0, 8.0, 8.0, 0.0];
  }

  return v3;
}

@end