@interface PXStoryPassthroughSongsProducer
- (PXStoryPassthroughSongsProducer)initWithSongs:(id)a3;
- (PXStoryPassthroughSongsProducer)initWithSongsConfiguration:(id)a3;
- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryPassthroughSongsProducer

- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = [PXStoryProducerResult alloc];
  v8 = [(PXStoryPassthroughSongsProducer *)self songsConfiguration];
  v9 = [(PXStoryProducerResult *)v7 initWithObject:v8];
  (*(a4 + 2))(v6, v9);

  return 0;
}

- (PXStoryPassthroughSongsProducer)initWithSongsConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughSongsProducer;
  v6 = [(PXStoryPassthroughSongsProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songsConfiguration, a3);
  }

  return v7;
}

- (PXStoryPassthroughSongsProducer)initWithSongs:(id)a3
{
  v4 = a3;
  v5 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:v4];

  v6 = [(PXStoryPassthroughSongsProducer *)self initWithSongsConfiguration:v5];
  return v6;
}

@end