@interface PXStoryDummyAppleMusicSongsProducer
- (PXStoryDummyAppleMusicSongsProducer)init;
- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4;
- (void)_queue_requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4;
@end

@implementation PXStoryDummyAppleMusicSongsProducer

- (void)_queue_requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v9 = a4;
  queue_assets = self->_queue_assets;
  if (!queue_assets)
  {
    PXMap();
  }

  v6 = PXAudioAssetFetchResultWithArray(queue_assets);
  v7 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:v6];
  v8 = [[PXStoryProducerResult alloc] initWithObject:v7];
  v9[2](v9, v8);
}

PXAppleMusicAsset *__84__PXStoryDummyAppleMusicSongsProducer__queue_requestSongsWithOptions_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXAppleMusicAsset alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXStoryDummyAppleMusicSongsProducer__queue_requestSongsWithOptions_resultHandler___block_invoke_2;
  v7[3] = &unk_1E773C240;
  v8 = v2;
  v4 = v2;
  v5 = [(PXAppleMusicAsset *)v3 initWithConfiguration:v7];

  return v5;
}

- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PXStoryDummyAppleMusicSongsProducer_requestSongsWithOptions_resultHandler___block_invoke;
  v10[3] = &unk_1E773C1F8;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
  return 0;
}

void __77__PXStoryDummyAppleMusicSongsProducer_requestSongsWithOptions_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_requestSongsWithOptions:*(a1 + 48) resultHandler:*(a1 + 32)];
}

- (PXStoryDummyAppleMusicSongsProducer)init
{
  v3.receiver = self;
  v3.super_class = PXStoryDummyAppleMusicSongsProducer;
  if ([(PXStoryDummyAppleMusicSongsProducer *)&v3 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end