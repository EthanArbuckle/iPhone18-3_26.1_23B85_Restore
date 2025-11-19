@interface PXStoryPassthroughSongResourceProducer
- (PXStoryPassthroughSongResourceProducer)initWithSongResource:(id)a3;
- (id)requestSongResourceWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPassthroughSongResourceProducer

- (id)requestSongResourceWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = [PXStoryProducerResult alloc];
  v8 = [(PXStoryPassthroughSongResourceProducer *)self songResource];
  v9 = [(PXStoryProducerResult *)v7 initWithObject:v8];
  (*(a4 + 2))(v6, v9);

  return 0;
}

- (PXStoryPassthroughSongResourceProducer)initWithSongResource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughSongResourceProducer;
  v6 = [(PXStoryPassthroughSongResourceProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songResource, a3);
  }

  return v7;
}

@end