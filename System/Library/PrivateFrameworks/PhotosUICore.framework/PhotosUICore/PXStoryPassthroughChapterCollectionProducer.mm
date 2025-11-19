@interface PXStoryPassthroughChapterCollectionProducer
- (PXStoryPassthroughChapterCollectionProducer)initWithChapterCollectionManager:(id)a3;
- (id)requestChapterCollectionForKeyAsset:(id)a3 curatedAssets:(id)a4 options:(unint64_t)a5 resultHandler:(id)a6;
@end

@implementation PXStoryPassthroughChapterCollectionProducer

- (id)requestChapterCollectionForKeyAsset:(id)a3 curatedAssets:(id)a4 options:(unint64_t)a5 resultHandler:(id)a6
{
  v8 = a6;
  v9 = [PXStoryProducerResult alloc];
  v10 = [(PXStoryPassthroughChapterCollectionProducer *)self chapterCollectionManager];
  v11 = [(PXStoryProducerResult *)v9 initWithObject:v10];
  (*(a6 + 2))(v8, v11);

  return 0;
}

- (PXStoryPassthroughChapterCollectionProducer)initWithChapterCollectionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughChapterCollectionProducer;
  v6 = [(PXStoryPassthroughChapterCollectionProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chapterCollectionManager, a3);
  }

  return v7;
}

@end