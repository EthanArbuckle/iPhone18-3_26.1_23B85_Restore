@interface PXStoryPassthroughDetailedSaliencyProducerFactory
- (PXStoryPassthroughDetailedSaliencyProducerFactory)initWithDetailedSaliencyProducer:(id)producer;
- (id)detailedSaliencyProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryPassthroughDetailedSaliencyProducerFactory

- (id)detailedSaliencyProducerForConfiguration:(id)configuration
{
  detailedSaliencyProducer = [(PXStoryPassthroughDetailedSaliencyProducerFactory *)self detailedSaliencyProducer];
  v4 = detailedSaliencyProducer;
  if (detailedSaliencyProducer)
  {
    v5 = detailedSaliencyProducer;
  }

  else
  {
    v5 = objc_alloc_init(PXStoryPassthroughDetailedSaliencyProducer);
  }

  v6 = v5;

  return v6;
}

- (PXStoryPassthroughDetailedSaliencyProducerFactory)initWithDetailedSaliencyProducer:(id)producer
{
  producerCopy = producer;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughDetailedSaliencyProducerFactory;
  v6 = [(PXStoryPassthroughDetailedSaliencyProducerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailedSaliencyProducer, producer);
  }

  return v7;
}

@end