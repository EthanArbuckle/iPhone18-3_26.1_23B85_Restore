@interface PXStoryPassthroughSongResourceProducer
- (PXStoryPassthroughSongResourceProducer)initWithSongResource:(id)resource;
- (id)requestSongResourceWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughSongResourceProducer

- (id)requestSongResourceWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [PXStoryProducerResult alloc];
  songResource = [(PXStoryPassthroughSongResourceProducer *)self songResource];
  v9 = [(PXStoryProducerResult *)v7 initWithObject:songResource];
  (*(handler + 2))(handlerCopy, v9);

  return 0;
}

- (PXStoryPassthroughSongResourceProducer)initWithSongResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughSongResourceProducer;
  v6 = [(PXStoryPassthroughSongResourceProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songResource, resource);
  }

  return v7;
}

@end