@interface PGWallpaperAssetGaterResult
- (BOOL)passesAnyGating;
@end

@implementation PGWallpaperAssetGaterResult

- (BOOL)passesAnyGating
{
  if ([(PGWallpaperAssetGaterResult *)self passesSettlingEffect])
  {
    return 1;
  }

  return [(PGWallpaperAssetGaterResult *)self passesSegmentation];
}

@end