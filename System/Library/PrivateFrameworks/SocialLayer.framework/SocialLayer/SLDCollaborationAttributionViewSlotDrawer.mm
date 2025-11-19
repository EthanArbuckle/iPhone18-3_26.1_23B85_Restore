@interface SLDCollaborationAttributionViewSlotDrawer
+ (id)resolvedStyleForStyle:(id)a3 tag:(id)a4;
- (id)resolvedStyleForStyle:(id)a3 tag:(id)a4;
@end

@implementation SLDCollaborationAttributionViewSlotDrawer

+ (id)resolvedStyleForStyle:(id)a3 tag:(id)a4
{
  v16 = MEMORY[0x277D777E0];
  v4 = a3;
  v5 = [v4 accessibilityButtonShapes];
  v6 = [v4 accessibilityContrast];
  v7 = [v4 displayScale];
  v8 = [v4 layoutDirection];
  v9 = [v4 localization];
  v10 = [v4 preferredContentSizeCategory];
  v11 = [v4 tintColor];
  v12 = [v4 userInterfaceIdiom];
  v13 = [v4 userInterfaceStyle];

  v14 = [v16 slotStyleWithAccessibilityButtonShapes:v5 accessibilityContrast:v6 displayRange:1 displayScale:v7 layoutDirection:v8 legibilityWeight:0 localization:v9 preferredContentSizeCategory:v10 tintColor:v11 userInterfaceIdiom:v12 userInterfaceStyle:v13];

  return v14;
}

- (id)resolvedStyleForStyle:(id)a3 tag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() resolvedStyleForStyle:v6 tag:v5];

  return v7;
}

@end