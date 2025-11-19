@interface PXLIFOQueue
- (PXLIFOQueue)initWithTargetQueue:(id)a3;
- (void)_executeNextPendingBlock;
- (void)dispatchAsync:(id)a3;
@end

@implementation PXLIFOQueue

- (void)_executeNextPendingBlock
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__174355;
  v8 = __Block_byref_object_dispose__174356;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PXLIFOQueue__executeNextPendingBlock__block_invoke;
  v3[3] = &unk_1E7749A28;
  v3[4] = self;
  v3[5] = &v4;
  dispatch_sync(internalQueue, v3);
  (*(v5[5] + 16))();
  _Block_object_dispose(&v4, 8);
}

uint64_t __39__PXLIFOQueue__executeNextPendingBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return [v5 removeLastObject];
}

- (void)dispatchAsync:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PXLIFOQueue_dispatchAsync___block_invoke;
  block[3] = &unk_1E774C2F0;
  block[4] = self;
  v10 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  targetQueue = self->_targetQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__PXLIFOQueue_dispatchAsync___block_invoke_2;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  dispatch_async(targetQueue, v8);
}

void __29__PXLIFOQueue_dispatchAsync___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) copy];
  [v1 addObject:v2];
}

- (PXLIFOQueue)initWithTargetQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXLIFOQueue;
  v6 = [(PXLIFOQueue *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetQueue, a3);
    v8 = dispatch_queue_create("com.apple.photos.lifo-internal-queue", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    internalQueue_pendingBlocks = v7->_internalQueue_pendingBlocks;
    v7->_internalQueue_pendingBlocks = v10;
  }

  return v7;
}

@end