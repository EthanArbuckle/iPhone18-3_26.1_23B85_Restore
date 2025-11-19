@interface PXLemonadeWallpaperFeature
+ (BOOL)isFeatureAvailable;
- (PXLemonadeWallpaperFeature)init;
@end

@implementation PXLemonadeWallpaperFeature

+ (BOOL)isFeatureAvailable
{
  v2 = sub_1A3C5C9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & **v2) + 0xA0);
  v4 = *v2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

- (PXLemonadeWallpaperFeature)init
{
  v3.receiver = self;
  v3.super_class = PXLemonadeWallpaperFeature;
  return [(PXLemonadeWallpaperFeature *)&v3 init];
}

@end