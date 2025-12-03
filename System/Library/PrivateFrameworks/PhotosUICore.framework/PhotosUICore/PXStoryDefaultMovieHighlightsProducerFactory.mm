@interface PXStoryDefaultMovieHighlightsProducerFactory
- (id)movieHighlightsProducerWithConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultMovieHighlightsProducerFactory

- (id)movieHighlightsProducerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[PXStorySettings sharedInstance];
  if ([v4 wantsMovieHighlights])
  {
    v5 = [[PXStoryMediaAnalysisMovieHighlightsProducer alloc] initWithStoryConfiguration:configurationCopy];
  }

  else
  {
    v5 = objc_alloc_init(PXStoryPassthroughMovieHighlightsProducer);
  }

  v6 = v5;

  return v6;
}

@end