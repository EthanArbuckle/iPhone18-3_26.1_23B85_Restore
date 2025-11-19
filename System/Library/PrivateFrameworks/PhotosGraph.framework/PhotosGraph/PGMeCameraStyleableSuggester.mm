@interface PGMeCameraStyleableSuggester
- (void)setupFilteringContexts;
@end

@implementation PGMeCameraStyleableSuggester

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
    +[(PGMeCameraStyleableSuggester *)v7];
    return;
  }

  if (([(PGMeCameraStyleableSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    objc_claimAutoreleasedReturnValue();
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_8;
  }

  v4 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForCameraStyleable];
  [(PGPeopleWallpaperSuggester *)v2 setPrimaryFilteringContext:v4];

  [(PGPeopleWallpaperSuggester *)v2 setSecondaryFilteringContext:0];
}

@end