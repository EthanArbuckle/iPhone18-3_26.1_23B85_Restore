@interface PXStoryPassthroughDetailedSaliencyProducer
- (PXStoryPassthroughDetailedSaliencyProducer)initWithDetailedSaliency:(id)saliency;
- (id)requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughDetailedSaliencyProducer

- (id)requestDetailedSaliencyForDisplayAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [PXStoryProducerResult alloc];
  detailedSaliency = [(PXStoryPassthroughDetailedSaliencyProducer *)self detailedSaliency];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:detailedSaliency];
  (*(handler + 2))(handlerCopy, v10);

  return 0;
}

- (PXStoryPassthroughDetailedSaliencyProducer)initWithDetailedSaliency:(id)saliency
{
  saliencyCopy = saliency;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughDetailedSaliencyProducer;
  v6 = [(PXStoryPassthroughDetailedSaliencyProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailedSaliency, saliency);
  }

  return v7;
}

@end