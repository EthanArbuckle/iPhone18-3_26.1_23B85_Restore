@interface PXStoryDummySongsProducer
- (PXStoryDummySongsProducer)init;
- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler;
- (void)_queue_requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryDummySongsProducer

- (void)_queue_requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __PXOptionsEnumeratedValues_block_invoke;
  v12 = &unk_1E774C138;
  v6 = 0;
  v13 = v5;
  v14 = 0;
  v7 = 1023;
  while (1)
  {
    v8 = 1;
    v9 = v7 & (1 << v6);
    if (v9)
    {
      (v11)(v10, v7 & (1 << v6), &v14);
      v7 ^= v9;
      v8 = v14 == 0;
    }

    if (v7)
    {
      if (v6 <= 0x3E)
      {
        ++v6;
        if (v8)
        {
          continue;
        }
      }
    }

    PXMap();
  }
}

id __74__PXStoryDummySongsProducer__queue_requestSongsWithOptions_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PXFlexMusicLibrary sharedLibrary];
  v4 = [v2 integerValue];

  v5 = [v3 fetchLocalAssetForMood:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PXStoryDummySongsProducer_requestSongsWithOptions_resultHandler___block_invoke;
  v10[3] = &unk_1E773C1F8;
  objc_copyWeak(v12, &location);
  v12[1] = options;
  v11 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
  return 0;
}

void __67__PXStoryDummySongsProducer_requestSongsWithOptions_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_requestSongsWithOptions:*(a1 + 48) resultHandler:*(a1 + 32)];
}

- (PXStoryDummySongsProducer)init
{
  v3.receiver = self;
  v3.super_class = PXStoryDummySongsProducer;
  if ([(PXStoryDummySongsProducer *)&v3 init])
  {
    px_dispatch_queue_create();
  }

  return 0;
}

@end