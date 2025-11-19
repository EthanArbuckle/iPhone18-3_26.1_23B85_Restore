@interface PGTopCityscapeWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGTopCityscapeWallpaperSuggester

- (void)setupFilteringContexts
{
  v2 = self;
  v3 = objc_opt_class();
  if (!v2)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_12:
    v10 = _PFAssertFailHandler();
    +[(PGTopCityscapeWallpaperSuggester *)v10];
    return;
  }

  if (([(PGTopCityscapeWallpaperSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
  {
    v8 = objc_opt_class();
    NSStringFromClass(v8);
    objc_claimAutoreleasedReturnValue();
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_12;
  }

  IsIPad = PLPhysicalDeviceIsIPad();
  v5 = [PGCityscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForTopCityscapesInOrientation:2];
    [(PGCityscapeWallpaperSuggester *)v2 setPrimaryFilteringContext:v6];

    v12 = [[PGCityscapeWallpaperSuggesterFilteringContext alloc] initForTopCityscapesInOrientation:1];
    [(PGCityscapeWallpaperSuggester *)v2 setSecondaryFilteringContext:v12];
  }

  else
  {
    v7 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForTopCityscapesInOrientation:1];
    [(PGCityscapeWallpaperSuggester *)v2 setPrimaryFilteringContext:v7];

    [(PGCityscapeWallpaperSuggester *)v2 setSecondaryFilteringContext:0];
  }
}

@end