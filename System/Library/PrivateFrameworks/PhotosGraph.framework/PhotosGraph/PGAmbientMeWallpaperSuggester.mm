@interface PGAmbientMeWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGAmbientMeWallpaperSuggester

- (void)setupFilteringContexts
{
  selfCopy = self;
  v3 = objc_opt_class();
  if (!selfCopy)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_8:
    v7 = _PFAssertFailHandler();
    +[(PGAmbientMeWallpaperSuggester *)v7];
    return;
  }

  if (([(PGAmbientMeWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    objc_claimAutoreleasedReturnValue();
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_8;
  }

  initForAmbient = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForAmbient];
  [(PGPeopleWallpaperSuggester *)selfCopy setPrimaryFilteringContext:initForAmbient];

  [(PGPeopleWallpaperSuggester *)selfCopy setSecondaryFilteringContext:0];
}

@end