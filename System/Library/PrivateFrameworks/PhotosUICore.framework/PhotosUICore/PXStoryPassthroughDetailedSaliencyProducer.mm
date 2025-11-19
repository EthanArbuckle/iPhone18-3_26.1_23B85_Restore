@interface PXStoryPassthroughDetailedSaliencyProducer
- (PXStoryPassthroughDetailedSaliencyProducer)initWithDetailedSaliency:(id)a3;
- (id)requestDetailedSaliencyForDisplayAssets:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
@end

@implementation PXStoryPassthroughDetailedSaliencyProducer

- (id)requestDetailedSaliencyForDisplayAssets:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v7 = a5;
  v8 = [PXStoryProducerResult alloc];
  v9 = [(PXStoryPassthroughDetailedSaliencyProducer *)self detailedSaliency];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:v9];
  (*(a5 + 2))(v7, v10);

  return 0;
}

- (PXStoryPassthroughDetailedSaliencyProducer)initWithDetailedSaliency:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughDetailedSaliencyProducer;
  v6 = [(PXStoryPassthroughDetailedSaliencyProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailedSaliency, a3);
  }

  return v7;
}

@end