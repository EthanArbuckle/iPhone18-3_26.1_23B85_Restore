@interface PXStoryPassthroughSongsProducer
- (PXStoryPassthroughSongsProducer)initWithSongs:(id)songs;
- (PXStoryPassthroughSongsProducer)initWithSongsConfiguration:(id)configuration;
- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughSongsProducer

- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [PXStoryProducerResult alloc];
  songsConfiguration = [(PXStoryPassthroughSongsProducer *)self songsConfiguration];
  v9 = [(PXStoryProducerResult *)v7 initWithObject:songsConfiguration];
  (*(handler + 2))(handlerCopy, v9);

  return 0;
}

- (PXStoryPassthroughSongsProducer)initWithSongsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXStoryPassthroughSongsProducer;
  v6 = [(PXStoryPassthroughSongsProducer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_songsConfiguration, configuration);
  }

  return v7;
}

- (PXStoryPassthroughSongsProducer)initWithSongs:(id)songs
{
  songsCopy = songs;
  v5 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:songsCopy];

  v6 = [(PXStoryPassthroughSongsProducer *)self initWithSongsConfiguration:v5];
  return v6;
}

@end