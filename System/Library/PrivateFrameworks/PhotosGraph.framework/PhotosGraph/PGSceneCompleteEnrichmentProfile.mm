@interface PGSceneCompleteEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (id)curationOptions;
@end

@implementation PGSceneCompleteEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  highlightCopy = highlight;
  v19.receiver = self;
  v19.super_class = PGSceneCompleteEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v19 canEnrichHighlight:highlightCopy withOptions:options])
  {
    if (options >> 31)
    {
      v17 = 1;
    }

    else
    {
      curationManager = [(PGDefaultEnrichmentProfile *)self curationManager];
      photoLibrary = [curationManager photoLibrary];
      [highlightCopy sceneAnalysisProgressForPhotoLibrary:photoLibrary];
      v10 = v9;

      assetCollection = [highlightCopy assetCollection];
      estimatedAssetCount = [assetCollection estimatedAssetCount];

      v13 = llround(v10 * estimatedAssetCount);
      v16 = estimatedAssetCount < 0xA && estimatedAssetCount - v13 < 3 && v13 != 0;
      v17 = v10 >= 0.9 || v16;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
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