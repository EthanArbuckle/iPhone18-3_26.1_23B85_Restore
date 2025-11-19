@interface PNSpatialAnalyticsUtils
- (void)sendToggleEventEnabled:(BOOL)a3 asset:(id)a4;
- (void)sendToggleEventEnabled:(BOOL)a3 asset:(id)a4 isNavigationSourceWidget:(BOOL)a5;
@end

@implementation PNSpatialAnalyticsUtils

- (void)sendToggleEventEnabled:(BOOL)a3 asset:(id)a4 isNavigationSourceWidget:(BOOL)a5
{
  v8 = a4;
  v9 = self;
  PNSpatialAnalyticsUtils.sendToggleEventEnabled(_:asset:isNavigationSourceWidget:)(a3, v8, a5);
}

- (void)sendToggleEventEnabled:(BOOL)a3 asset:(id)a4
{
  v6 = a4;
  v7 = self;
  PNSpatialAnalyticsUtils.sendToggleEventEnabled(_:asset:)(a3, v6);
}

@end