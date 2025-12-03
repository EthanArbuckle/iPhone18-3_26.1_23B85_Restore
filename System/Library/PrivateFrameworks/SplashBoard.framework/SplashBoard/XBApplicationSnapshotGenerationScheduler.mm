@interface XBApplicationSnapshotGenerationScheduler
+ (id)sharedInstance;
- (id)_init;
- (void)performImageDataGenerationAsync:(id)async withHandler:(id)handler;
- (void)performImageDataGenerationAsyncAndWait:(id)wait withHandler:(id)handler;
@end

@implementation XBApplicationSnapshotGenerationScheduler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[XBApplicationSnapshotGenerationScheduler sharedInstance];
  }

  v3 = sharedInstance_sheduler;

  return v3;
}

uint64_t __58__XBApplicationSnapshotGenerationScheduler_sharedInstance__block_invoke()
{
  sharedInstance_sheduler = [[XBApplicationSnapshotGenerationScheduler alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = XBApplicationSnapshotGenerationScheduler;
  v2 = [(XBApplicationSnapshotGenerationScheduler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_workloop_create("XBApplicationSnapshotSchedulerImageGenerationWorkloop");
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create_with_target_V2("XBApplicationSnapshotSchedulerImageGenerationQueue", 0, *(v2 + 1));
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = dispatch_workloop_create("XBApplicationSnapshotSchedulerImageDataGenerationWorkloop");
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;
  }

  return v2;
}

- (void)performImageDataGenerationAsync:(id)async withHandler:(id)handler
{
  asyncCopy = async;
  handlerCopy = handler;
  dataGenerationWorkloop = self->_dataGenerationWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__XBApplicationSnapshotGenerationScheduler_performImageDataGenerationAsync_withHandler___block_invoke;
  block[3] = &unk_279CF9620;
  v12 = asyncCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = handlerCopy;
  v10 = asyncCopy;
  dispatch_async(dataGenerationWorkloop, block);
}

void __88__XBApplicationSnapshotGenerationScheduler_performImageDataGenerationAsync_withHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = *(a1[4] + 16);

    dispatch_async(v4, v3);
  }
}

- (void)performImageDataGenerationAsyncAndWait:(id)wait withHandler:(id)handler
{
  waitCopy = wait;
  handlerCopy = handler;
  dataGenerationWorkloop = self->_dataGenerationWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__XBApplicationSnapshotGenerationScheduler_performImageDataGenerationAsyncAndWait_withHandler___block_invoke;
  block[3] = &unk_279CF9620;
  v12 = waitCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = handlerCopy;
  v10 = waitCopy;
  dispatch_async_and_wait(dataGenerationWorkloop, block);
}

void __95__XBApplicationSnapshotGenerationScheduler_performImageDataGenerationAsyncAndWait_withHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = *(a1[4] + 16);

    dispatch_async(v4, v3);
  }
}

@end