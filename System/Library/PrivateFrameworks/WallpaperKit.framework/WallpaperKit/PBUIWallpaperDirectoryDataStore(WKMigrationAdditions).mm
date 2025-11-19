@interface PBUIWallpaperDirectoryDataStore(WKMigrationAdditions)
- (id)wk_wallpaperImageURLForVariant:()WKMigrationAdditions wallpaperMode:;
- (id)wk_wallpaperOriginalImageURLForVariant:()WKMigrationAdditions wallpaperMode:;
- (id)wk_wallpaperThumbnailURLForVariant:()WKMigrationAdditions wallpaperMode:;
@end

@implementation PBUIWallpaperDirectoryDataStore(WKMigrationAdditions)

- (id)wk_wallpaperImageURLForVariant:()WKMigrationAdditions wallpaperMode:
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 wallpaperImageURLForVariant:a3 wallpaperMode:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)wk_wallpaperOriginalImageURLForVariant:()WKMigrationAdditions wallpaperMode:
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 wallpaperOriginalImageURLForVariant:a3 wallpaperMode:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)wk_wallpaperThumbnailURLForVariant:()WKMigrationAdditions wallpaperMode:
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 wallpaperThumbnailURLForVariant:a3 wallpaperMode:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end