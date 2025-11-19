@interface SBFWallpaperConfigurationManager
- (NSArray)dataStores;
- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4;
- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4 wallpaperMode:(int64_t)a5;
@end

@implementation SBFWallpaperConfigurationManager

- (NSArray)dataStores
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfigurationManager;
  v2 = [(PBUIWallpaperConfigurationManager *)&v4 dataStores];

  return v2;
}

- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBFWallpaperConfigurationManager;
  v4 = [(PBUIWallpaperConfigurationManager *)&v6 wallpaperConfigurationForVariant:a3 includingValuesForTypes:a4];

  return v4;
}

- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4 wallpaperMode:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = SBFWallpaperConfigurationManager;
  v5 = [(PBUIWallpaperConfigurationManager *)&v7 wallpaperConfigurationForVariant:a3 includingValuesForTypes:a4 wallpaperMode:a5];

  return v5;
}

@end