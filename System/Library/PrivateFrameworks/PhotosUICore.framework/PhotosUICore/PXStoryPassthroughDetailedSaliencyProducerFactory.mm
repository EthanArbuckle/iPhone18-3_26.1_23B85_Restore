@interface PXStoryPassthroughDetailedSaliencyProducerFactory
- (PXStoryPassthroughDetailedSaliencyProducerFactory)initWithDetailedSaliencyProducer:(id)a3;
- (id)detailedSaliencyProducerForConfiguration:(id)a3;
@end

@implementation PXStoryPassthroughDetailedSaliencyProducerFactory

- (id)detailedSaliencyProducerForConfiguration:(id)a3
{
  v3 = [(PXStoryPassthroughDetailedSaliencyProducerFactory *)self detailedSaliencyProducer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(PXStoryPassthroughDetailedSaliencyProducer);
  }

  v6 = v5;

  return v6;
}

- (PXStoryPassthroughDetailedSaliencyProducerFactory)initWithDetailedSaliencyProducer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughDetailedSaliencyProducerFactory;
  v6 = [(PXStoryPassthroughDetailedSaliencyProducerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailedSaliencyProducer, a3);
  }

  return v7;
}

@end