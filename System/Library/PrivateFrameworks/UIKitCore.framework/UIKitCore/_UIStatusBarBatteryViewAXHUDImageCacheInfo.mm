@interface _UIStatusBarBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)percentage contentSizeCategory:(id)self0;
@end

@implementation _UIStatusBarBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)percentage contentSizeCategory:(id)self0
{
  percentageCopy = percentage;
  layoutCopy = layout;
  boltCopy = bolt;
  colorCopy = color;
  tintColorCopy = tintColor;
  categoryCopy = category;
  [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v21 == capacity)
  {
    fillColor = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if ([fillColor isEqual:colorCopy])
    {
      tintColor = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if ([tintColor isEqual:tintColorCopy] && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo showBolt](self, "showBolt") == boltCopy && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo reverseLayoutDirection](self, "reverseLayoutDirection") == layoutCopy && (-[_UIStatusBarBatteryViewAXHUDImageCacheInfo scale](self, "scale"), v24 == scale) && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo showsPercentage](self, "showsPercentage") == percentageCopy)
      {
        contentSizeCategory = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
        v25 = [contentSizeCategory isEqualToString:categoryCopy];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end