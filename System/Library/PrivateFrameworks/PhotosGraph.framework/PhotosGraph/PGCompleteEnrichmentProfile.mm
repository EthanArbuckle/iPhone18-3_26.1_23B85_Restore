@interface PGCompleteEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (id)curationOptions;
@end

@implementation PGCompleteEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  highlightCopy = highlight;
  v14.receiver = self;
  v14.super_class = PGCompleteEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v14 canEnrichHighlight:highlightCopy withOptions:options])
  {
    if (options >> 31)
    {
      v12 = 1;
    }

    else
    {
      curationManager = [(PGDefaultEnrichmentProfile *)self curationManager];
      photoLibrary = [curationManager photoLibrary];

      [highlightCopy faceAnalysisProgressForPhotoLibrary:photoLibrary];
      v10 = v9;
      [highlightCopy sceneAnalysisProgressForPhotoLibrary:photoLibrary];
      v12 = v11 >= 0.9 && v10 >= 0.25;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)curationOptions
{
  v2 = [[PGCurationOptions alloc] initWithDuration:0];
  [(PGCurationOptions *)v2 setSemanticalDedupingEnabled:1];
  [(PGCurationOptions *)v2 setMovieDedupingEnabled:1];
  [(PGCurationOptions *)v2 setLastPassMovieAdditionEnabled:0];

  return v2;
}

@end