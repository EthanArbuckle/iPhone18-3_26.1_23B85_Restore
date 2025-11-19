@interface PXStoryDefaultDetailedSaliencyProducerFactory
- (id)detailedSaliencyProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultDetailedSaliencyProducerFactory

- (id)detailedSaliencyProducerForConfiguration:(id)a3
{
  v3 = a3;
  if (([v3 options] & 2) != 0 || (+[PXStoryMultipartPanoramaSettings sharedInstance](PXStoryMultipartPanoramaSettings, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFeatureEnabled"), v4, !v5) || (objc_msgSend(v3, "mediaProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[PXStoryVisionDetailedSaliencyProducer initWithMediaProvider:]([PXStoryVisionDetailedSaliencyProducer alloc], "initWithMediaProvider:", v6), v6, !v7))
  {
    v7 = objc_alloc_init(PXStoryPassthroughDetailedSaliencyProducer);
  }

  return v7;
}

@end