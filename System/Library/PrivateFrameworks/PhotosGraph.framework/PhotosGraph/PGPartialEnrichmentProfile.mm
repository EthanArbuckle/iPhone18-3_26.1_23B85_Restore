@interface PGPartialEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
@end

@implementation PGPartialEnrichmentProfile

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  highlightCopy = highlight;
  v13.receiver = self;
  v13.super_class = PGPartialEnrichmentProfile;
  if ([(PGDefaultEnrichmentProfile *)&v13 canEnrichHighlight:highlightCopy withOptions:options])
  {
    if (options >> 31)
    {
      v11 = 1;
    }

    else
    {
      curationManager = [(PGDefaultEnrichmentProfile *)self curationManager];
      photoLibrary = [curationManager photoLibrary];
      [highlightCopy nonDefaultCurationScorePercentageForPhotoLibrary:photoLibrary];
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