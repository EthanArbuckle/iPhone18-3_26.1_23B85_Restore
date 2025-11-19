@interface PXStoryDefaultAutoCurationProducerFactory
- (id)autoCurationProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultAutoCurationProducerFactory

- (id)autoCurationProducerForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 autoCurationProducer];
  if (v4)
  {
    v5 = v4;
    goto LABEL_9;
  }

  v6 = [PXStoryDefaultAutoCurationProducer alloc];
  v7 = [v3 originalCurationContext];
  v5 = [(PXStoryDefaultAutoCurationProducer *)v6 initWithCurationContext:v7];

  if (!v5)
  {
    v8 = [v3 assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[PXStoryMemoryAutoCurationProducer alloc] initWithMemory:v8];

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v5 = objc_alloc_init(PXStoryPassthroughAutoCurationProducer);
    v9 = [v3 assets];
    [(PXStoryMemoryAutoCurationProducer *)v5 setAssets:v9];
  }

LABEL_9:

  return v5;
}

@end