@interface PGTopCityscapeWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGTopCityscapeWallpaperSuggester

- (void)setupFilteringContexts
{
  selfCopy = self;
  v3 = objc_opt_class();
  if (!selfCopy)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_12:
    v10 = _PFAssertFailHandler();
    +[(PGTopCityscapeWallpaperSuggester *)v10];
    return;
  }

  if (([(PGTopCityscapeWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
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
    [(PGCityscapeWallpaperSuggester *)selfCopy setPrimaryFilteringContext:v6];

    v12 = [[PGCityscapeWallpaperSuggesterFilteringContext alloc] initForTopCityscapesInOrientation:1];
    [(PGCityscapeWallpaperSuggester *)selfCopy setSecondaryFilteringContext:v12];
  }

  else
  {
    v7 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForTopCityscapesInOrientation:1];
    [(PGCityscapeWallpaperSuggester *)selfCopy setPrimaryFilteringContext:v7];

    [(PGCityscapeWallpaperSuggester *)selfCopy setSecondaryFilteringContext:0];
  }
}

@end