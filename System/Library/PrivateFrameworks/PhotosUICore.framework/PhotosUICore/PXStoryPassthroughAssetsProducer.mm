@interface PXStoryPassthroughAssetsProducer
- (PXStoryPassthroughAssetsProducer)initWithAssetsDataSourceManager:(id)manager;
- (id)requestAssetsWithOptions:(unint64_t)options storyQueue:(id)queue resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughAssetsProducer

- (id)requestAssetsWithOptions:(unint64_t)options storyQueue:(id)queue resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [PXStoryProducerResult alloc];
  assetsDataSourceManager = [(PXStoryPassthroughAssetsProducer *)self assetsDataSourceManager];
  v10 = [(PXStoryProducerResult *)v8 initWithObject:assetsDataSourceManager];
  (*(handler + 2))(handlerCopy, v10);

  return 0;
}

- (PXStoryPassthroughAssetsProducer)initWithAssetsDataSourceManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughAssetsProducer;
  v6 = [(PXStoryPassthroughAssetsProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsDataSourceManager, manager);
  }

  return v7;
}

@end