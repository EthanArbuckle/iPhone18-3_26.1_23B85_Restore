@interface PNSpatialAnalyticsUtils
- (void)sendToggleEventEnabled:(BOOL)enabled asset:(id)asset;
- (void)sendToggleEventEnabled:(BOOL)enabled asset:(id)asset isNavigationSourceWidget:(BOOL)widget;
@end

@implementation PNSpatialAnalyticsUtils

- (void)sendToggleEventEnabled:(BOOL)enabled asset:(id)asset isNavigationSourceWidget:(BOOL)widget
{
  assetCopy = asset;
  selfCopy = self;
  PNSpatialAnalyticsUtils.sendToggleEventEnabled(_:asset:isNavigationSourceWidget:)(enabled, assetCopy, widget);
}

- (void)sendToggleEventEnabled:(BOOL)enabled asset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  PNSpatialAnalyticsUtils.sendToggleEventEnabled(_:asset:)(enabled, assetCopy);
}

@end