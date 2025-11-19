@interface _UIFloatingTabBarPlatformMetrics_Glass
- (_UIFloatingTabBarPlatformMetrics_Glass)init;
@end

@implementation _UIFloatingTabBarPlatformMetrics_Glass

- (_UIFloatingTabBarPlatformMetrics_Glass)init
{
  v12.receiver = self;
  v12.super_class = _UIFloatingTabBarPlatformMetrics_Glass;
  v2 = [(_UIFloatingTabBarPlatformMetrics *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFloatingTabBarPlatformMetrics *)v2 setBackgroundEffects:0];
    v4 = [[_UIViewGlass alloc] initWithVariant:0];
    [(_UIViewGlass *)v4 setFlexible:1];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setBackground:v4];
    v5 = objc_opt_new();
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSelectionShadow:v5];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setVerticalOffsetInSheetPresentationContext:0.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setVerticalPaddingToNavigationBar:10.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSafeAreaOffset:28.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setTitleMargins:8.0, 16.0, 7.5, 16.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setImageMargins:8.0, 14.0, 7.5, 14.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setMinimumEdgeOffset:10.0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSelectionBackgroundColor:0];
    v6 = objc_alloc_init(_UIFloatingTabBarContentPalette);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46___UIFloatingTabBarPlatformMetrics_Glass_init__block_invoke;
    v10[3] = &unk_1E7119A70;
    v11 = v6;
    v7 = v6;
    [(_UIFloatingTabBarPlatformMetrics *)v3 setContentPaletteProvider:v10];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarBackgroundEffects:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarBorderWidth:0.0];
    v8 = +[UIColor clearColor];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarBorderColor:v8];

    [(_UIFloatingTabBarPlatformMetrics *)v3 setShowsSidebarTitle:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSupportsFloatingSidebar:1];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setSidebarSupportsAnimatedSelections:0];
    [(_UIFloatingTabBarPlatformMetrics *)v3 setOverflowButtonImageName:@"ellipsis"];
  }

  return v3;
}

@end