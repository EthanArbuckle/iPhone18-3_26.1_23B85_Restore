@interface PXStoryPassthroughAssetsProducer
- (PXStoryPassthroughAssetsProducer)initWithAssetsDataSourceManager:(id)a3;
- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5;
@end

@implementation PXStoryPassthroughAssetsProducer

- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5
{
  v7 = a5;
  v8 = [PXStoryProducerResult alloc];
  v9 = [(PXStoryPassthroughAssetsProducer *)self assetsDataSourceManager];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:v9];
  (*(a5 + 2))(v7, v10);

  return 0;
}

- (PXStoryPassthroughAssetsProducer)initWithAssetsDataSourceManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughAssetsProducer;
  v6 = [(PXStoryPassthroughAssetsProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsDataSourceManager, a3);
  }

  return v7;
}

@end