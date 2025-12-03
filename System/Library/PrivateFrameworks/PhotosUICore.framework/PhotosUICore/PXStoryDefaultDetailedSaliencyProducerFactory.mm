@interface PXStoryDefaultDetailedSaliencyProducerFactory
- (id)detailedSaliencyProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultDetailedSaliencyProducerFactory

- (id)detailedSaliencyProducerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy options] & 2) != 0 || (+[PXStoryMultipartPanoramaSettings sharedInstance](PXStoryMultipartPanoramaSettings, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isFeatureEnabled"), v4, !v5) || (objc_msgSend(configurationCopy, "mediaProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[PXStoryVisionDetailedSaliencyProducer initWithMediaProvider:]([PXStoryVisionDetailedSaliencyProducer alloc], "initWithMediaProvider:", v6), v6, !v7))
  {
    v7 = objc_alloc_init(PXStoryPassthroughDetailedSaliencyProducer);
  }

  return v7;
}

@end