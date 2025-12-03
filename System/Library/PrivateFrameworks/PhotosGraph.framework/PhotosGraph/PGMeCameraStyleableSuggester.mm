@interface PGMeCameraStyleableSuggester
- (void)setupFilteringContexts;
@end

@implementation PGMeCameraStyleableSuggester

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
    +[(PGMeCameraStyleableSuggester *)v7];
    return;
  }

  if (([(PGMeCameraStyleableSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    objc_claimAutoreleasedReturnValue();
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_8;
  }

  initForCameraStyleable = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForCameraStyleable];
  [(PGPeopleWallpaperSuggester *)selfCopy setPrimaryFilteringContext:initForCameraStyleable];

  [(PGPeopleWallpaperSuggester *)selfCopy setSecondaryFilteringContext:0];
}

@end