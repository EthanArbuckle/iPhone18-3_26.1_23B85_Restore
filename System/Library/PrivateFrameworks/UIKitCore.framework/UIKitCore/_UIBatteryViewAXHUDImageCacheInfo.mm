@interface _UIBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt boltInactive:(BOOL)inactive reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)self0 contentSizeCategory:(id)self1;
@end

@implementation _UIBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt boltInactive:(BOOL)inactive reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)self0 contentSizeCategory:(id)self1
{
  percentageCopy = percentage;
  layoutCopy = layout;
  inactiveCopy = inactive;
  boltCopy = bolt;
  colorCopy = color;
  tintColorCopy = tintColor;
  categoryCopy = category;
  [(_UIBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v22 == capacity)
  {
    fillColor = [(_UIBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if ([fillColor isEqual:colorCopy])
    {
      tintColor = [(_UIBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if ([tintColor isEqual:tintColorCopy] && -[_UIBatteryViewAXHUDImageCacheInfo showBolt](self, "showBolt") == boltCopy && -[_UIBatteryViewAXHUDImageCacheInfo boltInactive](self, "boltInactive") == inactiveCopy && -[_UIBatteryViewAXHUDImageCacheInfo reverseLayoutDirection](self, "reverseLayoutDirection") == layoutCopy && (-[_UIBatteryViewAXHUDImageCacheInfo scale](self, "scale"), v25 == scale) && -[_UIBatteryViewAXHUDImageCacheInfo showsPercentage](self, "showsPercentage") == percentageCopy)
      {
        contentSizeCategory = [(_UIBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
        v26 = [contentSizeCategory isEqualToString:categoryCopy];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end