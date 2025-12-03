@interface PGLandscapeWallpaperSuggesterScoringContext
- (BOOL)isEqual:(id)equal;
@end

@implementation PGLandscapeWallpaperSuggesterScoringContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class();
  }

  return v6;
}

@end