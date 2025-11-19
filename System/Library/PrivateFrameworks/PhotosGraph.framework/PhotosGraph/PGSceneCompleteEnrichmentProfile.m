@interface PGSceneCompleteEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
- (id)curationOptions;
@end

@implementation PGSceneCompleteEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PGSceneCompleteEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v19 canEnrichHighlight:v6 withOptions:a4])
  {
    if (a4 >> 31)
    {
      v17 = 1;
    }

    else
    {
      v7 = [(PGDefaultEnrichmentProfile *)self curationManager];
      v8 = [v7 photoLibrary];
      [v6 sceneAnalysisProgressForPhotoLibrary:v8];
      v10 = v9;

      v11 = [v6 assetCollection];
      v12 = [v11 estimatedAssetCount];

      v13 = llround(v10 * v12);
      v16 = v12 < 0xA && v12 - v13 < 3 && v13 != 0;
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