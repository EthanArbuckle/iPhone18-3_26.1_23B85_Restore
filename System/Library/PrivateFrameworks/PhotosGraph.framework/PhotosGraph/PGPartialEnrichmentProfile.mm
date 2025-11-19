@interface PGPartialEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
@end

@implementation PGPartialEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PGPartialEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v13 canEnrichHighlight:v6 withOptions:a4])
  {
    if (a4 >> 31)
    {
      v11 = 1;
    }

    else
    {
      v7 = [(PGDefaultEnrichmentProfile *)self curationManager];
      v8 = [v7 photoLibrary];
      [v6 nonDefaultCurationScorePercentageForPhotoLibrary:v8];
      v10 = v9;

      v11 = v10 >= 0.5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end