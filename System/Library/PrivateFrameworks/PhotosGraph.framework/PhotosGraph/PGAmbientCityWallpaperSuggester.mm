@interface PGAmbientCityWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGAmbientCityWallpaperSuggester

- (void)setupFilteringContexts
{
  v2 = self;
  v3 = objc_opt_class();
  if (!v2)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_8:
    v7 = _PFAssertFailHandler();
    +[(PGAmbientCityWallpaperSuggester *)v7];
    return;
  }

  if (([(PGAmbientCityWallpaperSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    objc_claimAutoreleasedReturnValue();
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_8;
  }

  v4 = [[PGCityscapeWallpaperSuggesterFilteringContext alloc] initForAmbient];
  [(PGCityscapeWallpaperSuggester *)v2 setPrimaryFilteringContext:v4];

  [(PGCityscapeWallpaperSuggester *)v2 setSecondaryFilteringContext:0];
}

@end