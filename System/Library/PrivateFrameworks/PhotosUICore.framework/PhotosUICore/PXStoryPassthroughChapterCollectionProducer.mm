@interface PXStoryPassthroughChapterCollectionProducer
- (PXStoryPassthroughChapterCollectionProducer)initWithChapterCollectionManager:(id)manager;
- (id)requestChapterCollectionForKeyAsset:(id)asset curatedAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughChapterCollectionProducer

- (id)requestChapterCollectionForKeyAsset:(id)asset curatedAssets:(id)assets options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [PXStoryProducerResult alloc];
  chapterCollectionManager = [(PXStoryPassthroughChapterCollectionProducer *)self chapterCollectionManager];
  v11 = [(PXStoryProducerResult *)v9 initWithObject:chapterCollectionManager];
  (*(handler + 2))(handlerCopy, v11);

  return 0;
}

- (PXStoryPassthroughChapterCollectionProducer)initWithChapterCollectionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughChapterCollectionProducer;
  v6 = [(PXStoryPassthroughChapterCollectionProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chapterCollectionManager, manager);
  }

  return v7;
}

@end