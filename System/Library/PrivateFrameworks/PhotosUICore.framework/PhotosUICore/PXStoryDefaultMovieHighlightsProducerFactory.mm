@interface PXStoryDefaultMovieHighlightsProducerFactory
- (id)movieHighlightsProducerWithConfiguration:(id)a3;
@end

@implementation PXStoryDefaultMovieHighlightsProducerFactory

- (id)movieHighlightsProducerWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[PXStorySettings sharedInstance];
  if ([v4 wantsMovieHighlights])
  {
    v5 = [[PXStoryMediaAnalysisMovieHighlightsProducer alloc] initWithStoryConfiguration:v3];
  }

  else
  {
    v5 = objc_alloc_init(PXStoryPassthroughMovieHighlightsProducer);
  }

  v6 = v5;

  return v6;
}

@end