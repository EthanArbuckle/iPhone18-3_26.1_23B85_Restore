@interface PLConcurrentQueue
- (PLConcurrentQueue)init;
- (PLConcurrentQueue)initWithTargetQueue:(id)queue width:(int64_t)width;
- (void)_internalQueue_tryDispatchingNextPendingBlock;
- (void)dispatchAsync:(id)async;
@end

@implementation PLConcurrentQueue

- (void)_internalQueue_tryDispatchingNextPendingBlock
{
  if ([(NSMutableArray *)self->_internalQueue_pendingBlocks count])
  {
    if (self->_internalQueue_usedWidth < self->_width)
    {
      firstObject = [(NSMutableArray *)self->_internalQueue_pendingBlocks firstObject];
      [(NSMutableArray *)self->_internalQueue_pendingBlocks removeObjectAtIndex:0];
      ++self->_internalQueue_usedWidth;
      v4 = firstObject;
      pl_dispatch_async();
    }
  }
}

void __66__PLConcurrentQueue__internalQueue_tryDispatchingNextPendingBlock__block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLConcurrentQueue__internalQueue_tryDispatchingNextPendingBlock__block_invoke_2;
  block[3] = &unk_1E75781E8;
  block[4] = v2;
  dispatch_async(v3, block);
}

- (void)dispatchAsync:(id)async
{
  if (async)
  {
    v4 = [async copy];
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__PLConcurrentQueue_dispatchAsync___block_invoke;
    v7[3] = &unk_1E7577C08;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_sync(internalQueue, v7);
  }
}

uint64_t __35__PLConcurrentQueue_dispatchAsync___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _internalQueue_tryDispatchingNextPendingBlock];
}

- (PLConcurrentQueue)initWithTargetQueue:(id)queue width:(int64_t)width
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = PLConcurrentQueue;
  v8 = [(PLConcurrentQueue *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetQueue, queue);
    v9->_width = width;
    v10 = dispatch_queue_create("com.apple.photos.concurrent-queue-internal", 0);
    internalQueue = v9->_internalQueue;
    v9->_internalQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    internalQueue_pendingBlocks = v9->_internalQueue_pendingBlocks;
    v9->_internalQueue_pendingBlocks = v12;
  }

  return v9;
}

- (PLConcurrentQueue)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLConcurrentQueue.m" lineNumber:21 description:{@"%s is not a valid initializer", "-[PLConcurrentQueue init]"}];

  return 0;
}

@end