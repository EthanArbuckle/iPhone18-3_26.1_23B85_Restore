@interface PXStoryDefaultAutoCurationProducerFactory
- (id)autoCurationProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultAutoCurationProducerFactory

- (id)autoCurationProducerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  autoCurationProducer = [configurationCopy autoCurationProducer];
  if (autoCurationProducer)
  {
    v5 = autoCurationProducer;
    goto LABEL_9;
  }

  v6 = [PXStoryDefaultAutoCurationProducer alloc];
  originalCurationContext = [configurationCopy originalCurationContext];
  v5 = [(PXStoryDefaultAutoCurationProducer *)v6 initWithCurationContext:originalCurationContext];

  if (!v5)
  {
    assetCollection = [configurationCopy assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[PXStoryMemoryAutoCurationProducer alloc] initWithMemory:assetCollection];

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v5 = objc_alloc_init(PXStoryPassthroughAutoCurationProducer);
    assets = [configurationCopy assets];
    [(PXStoryMemoryAutoCurationProducer *)v5 setAssets:assets];
  }

LABEL_9:

  return v5;
}

@end