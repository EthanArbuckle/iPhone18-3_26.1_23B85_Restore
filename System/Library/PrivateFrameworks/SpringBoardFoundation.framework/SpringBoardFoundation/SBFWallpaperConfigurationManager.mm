@interface SBFWallpaperConfigurationManager
- (NSArray)dataStores;
- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types;
- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode;
@end

@implementation SBFWallpaperConfigurationManager

- (NSArray)dataStores
{
  v4.receiver = self;
  v4.super_class = SBFWallpaperConfigurationManager;
  dataStores = [(PBUIWallpaperConfigurationManager *)&v4 dataStores];

  return dataStores;
}

- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types
{
  v6.receiver = self;
  v6.super_class = SBFWallpaperConfigurationManager;
  v4 = [(PBUIWallpaperConfigurationManager *)&v6 wallpaperConfigurationForVariant:variant includingValuesForTypes:types];

  return v4;
}

- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = SBFWallpaperConfigurationManager;
  v5 = [(PBUIWallpaperConfigurationManager *)&v7 wallpaperConfigurationForVariant:variant includingValuesForTypes:types wallpaperMode:mode];

  return v5;
}

@end