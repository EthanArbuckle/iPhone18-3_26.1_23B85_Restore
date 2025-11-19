@interface PGCompleteEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
- (id)curationOptions;
@end

@implementation PGCompleteEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PGCompleteEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v14 canEnrichHighlight:v6 withOptions:a4])
  {
    if (a4 >> 31)
    {
      v12 = 1;
    }

    else
    {
      v7 = [(PGDefaultEnrichmentProfile *)self curationManager];
      v8 = [v7 photoLibrary];

      [v6 faceAnalysisProgressForPhotoLibrary:v8];
      v10 = v9;
      [v6 sceneAnalysisProgressForPhotoLibrary:v8];
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