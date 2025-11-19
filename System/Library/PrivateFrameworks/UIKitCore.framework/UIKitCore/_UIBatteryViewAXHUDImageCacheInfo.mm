@interface _UIBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)a3 fillColor:(id)a4 tintColor:(id)a5 showingBolt:(BOOL)a6 boltInactive:(BOOL)a7 reverseLayout:(BOOL)a8 scale:(double)a9 showsPercentage:(BOOL)a10 contentSizeCategory:(id)a11;
@end

@implementation _UIBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)a3 fillColor:(id)a4 tintColor:(id)a5 showingBolt:(BOOL)a6 boltInactive:(BOOL)a7 reverseLayout:(BOOL)a8 scale:(double)a9 showsPercentage:(BOOL)a10 contentSizeCategory:(id)a11
{
  v11 = a10;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v19 = a4;
  v20 = a5;
  v21 = a11;
  [(_UIBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v22 == a3)
  {
    v23 = [(_UIBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if ([v23 isEqual:v19])
    {
      v24 = [(_UIBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if ([v24 isEqual:v20] && -[_UIBatteryViewAXHUDImageCacheInfo showBolt](self, "showBolt") == v15 && -[_UIBatteryViewAXHUDImageCacheInfo boltInactive](self, "boltInactive") == v14 && -[_UIBatteryViewAXHUDImageCacheInfo reverseLayoutDirection](self, "reverseLayoutDirection") == v13 && (-[_UIBatteryViewAXHUDImageCacheInfo scale](self, "scale"), v25 == a9) && -[_UIBatteryViewAXHUDImageCacheInfo showsPercentage](self, "showsPercentage") == v11)
      {
        v28 = [(_UIBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
        v26 = [v28 isEqualToString:v21];
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