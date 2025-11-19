@interface PGTopLandscapeWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGTopLandscapeWallpaperSuggester

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
    +[(PGTopLandscapeWallpaperSuggester *)v10];
    return;
  }

  if (([(PGTopLandscapeWallpaperSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGLandscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForTopLandscapesInOrientation:2];
    [(PGLandscapeWallpaperSuggester *)v2 setPrimaryFilteringContext:v6];

    v12 = [[PGLandscapeWallpaperSuggesterFilteringContext alloc] initForTopLandscapesInOrientation:1];
    [(PGLandscapeWallpaperSuggester *)v2 setSecondaryFilteringContext:v12];
  }

  else
  {
    v7 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForTopLandscapesInOrientation:1];
    [(PGLandscapeWallpaperSuggester *)v2 setPrimaryFilteringContext:v7];

    [(PGLandscapeWallpaperSuggester *)v2 setSecondaryFilteringContext:0];
  }
}

@end