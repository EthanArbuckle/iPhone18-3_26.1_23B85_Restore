@interface _UIStatusBarBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)a3 fillColor:(id)a4 tintColor:(id)a5 showingBolt:(BOOL)a6 reverseLayout:(BOOL)a7 scale:(double)a8 showsPercentage:(BOOL)a9 contentSizeCategory:(id)a10;
@end

@implementation _UIStatusBarBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)a3 fillColor:(id)a4 tintColor:(id)a5 showingBolt:(BOOL)a6 reverseLayout:(BOOL)a7 scale:(double)a8 showsPercentage:(BOOL)a9 contentSizeCategory:(id)a10
{
  v11 = a9;
  v13 = a7;
  v14 = a6;
  v18 = a4;
  v19 = a5;
  v20 = a10;
  [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v21 == a3)
  {
    v22 = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if ([v22 isEqual:v18])
    {
      v23 = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if ([v23 isEqual:v19] && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo showBolt](self, "showBolt") == v14 && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo reverseLayoutDirection](self, "reverseLayoutDirection") == v13 && (-[_UIStatusBarBatteryViewAXHUDImageCacheInfo scale](self, "scale"), v24 == a8) && -[_UIStatusBarBatteryViewAXHUDImageCacheInfo showsPercentage](self, "showsPercentage") == v11)
      {
        v27 = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
        v25 = [v27 isEqualToString:v20];
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