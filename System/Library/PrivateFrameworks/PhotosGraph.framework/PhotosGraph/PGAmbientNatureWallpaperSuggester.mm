@interface PGAmbientNatureWallpaperSuggester
- (void)setupFilteringContexts;
@end

@implementation PGAmbientNatureWallpaperSuggester

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
    +[(PGAmbientNatureWallpaperSuggester *)v7];
    return;
  }

  if (([(PGAmbientNatureWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    objc_claimAutoreleasedReturnValue();
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_8;
  }

  initForAmbient = [[PGLandscapeWallpaperSuggesterFilteringContext alloc] initForAmbient];
  [(PGLandscapeWallpaperSuggester *)selfCopy setPrimaryFilteringContext:initForAmbient];

  [(PGLandscapeWallpaperSuggester *)selfCopy setSecondaryFilteringContext:0];
}

@end