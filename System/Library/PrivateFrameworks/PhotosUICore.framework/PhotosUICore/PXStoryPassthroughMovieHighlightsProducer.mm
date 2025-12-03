@interface PXStoryPassthroughMovieHighlightsProducer
- (id)requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughMovieHighlightsProducer

- (id)requestMovieHighlightsForAssets:(id)assets partialCollection:(id)collection options:(unint64_t)options resultHandler:(id)handler
{
  assetsCopy = assets;
  handlerCopy = handler;
  v9 = objc_alloc_init(PXStoryMovieHighlightsConcreteMutableCollection);
  if ([assetsCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [assetsCopy objectAtIndexedSubscript:v10];
      if (([v11 playbackStyle] - 3) <= 2)
      {
        v12 = [PXStoryFallbackMovieHighlightCuration movieHighlightCurationForDisplayAsset:v11];
        [(PXStoryMovieHighlightsConcreteMutableCollection *)v9 setMovieHighlightCuration:v12 forDisplayAsset:v11];
      }

      ++v10;
    }

    while (v10 < [assetsCopy count]);
  }

  v13 = [PXStoryProducerResult alloc];
  v14 = [(PXStoryMovieHighlightsConcreteMutableCollection *)v9 copy];
  v15 = [(PXStoryProducerResult *)v13 initWithObject:v14];

  handlerCopy[2](handlerCopy, v15);
  return 0;
}

@end