@interface PGTopPetWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGTopPetWallpaperSuggester

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
    +[(PGTopPetWallpaperSuggester *)v10];
    return;
  }

  if (([(PGTopPetWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGPetWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:2];
    [(PGPetWallpaperSuggester *)selfCopy setPrimaryFilteringContext:v6];

    v12 = [[PGPetWallpaperSuggesterFilteringContext alloc] initForPetsInOrientation:1];
    [(PGPetWallpaperSuggester *)selfCopy setSecondaryFilteringContext:v12];
  }

  else
  {
    v7 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:1];
    [(PGPetWallpaperSuggester *)selfCopy setPrimaryFilteringContext:v7];

    [(PGPetWallpaperSuggester *)selfCopy setSecondaryFilteringContext:0];
  }
}

@end