@interface _PASQueueLock
- (_PASQueueLock)initWithGuardedData:(id)data serialQueue:(id)queue;
- (id)guardedDataAssertingLockContext;
- (unsigned)runWithLockAcquired:(id)acquired shouldContinueBlock:(id)block;
- (void)runAsyncWithLockAcquired:(id)acquired;
- (void)runWithLockAcquired:(id)acquired;
@end

@implementation _PASQueueLock

- (id)guardedDataAssertingLockContext
{
  dispatch_assert_queue_V2(self->_queue);

  return [(_PASQueueLock *)self unsafeGuardedData];
}

- (unsigned)runWithLockAcquired:(id)acquired shouldContinueBlock:(id)block
{
  acquiredCopy = acquired;
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2810000000;
  v24 = "";
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3005;
  v19 = __Block_byref_object_dispose__3006;
  v20 = MEMORY[0x1AC566DD0](acquiredCopy);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___PASQueueLock_runWithLockAcquired_shouldContinueBlock___block_invoke;
  v14[3] = &unk_1E77F2310;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[4] = self;
  v8 = dispatch_block_create(0, v14);
  dispatch_async(self->_queue, v8);
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = blockCopy[2](blockCopy);
    objc_autoreleasePoolPop(v9);
    if (!v10)
    {
      break;
    }

    if (!dispatch_block_wait(v8, [_PASDispatch dispatchTimeWithSecondsFromNow:1.0]))
    {
      goto LABEL_7;
    }
  }

  if (atomic_exchange(v22 + 32, 1u))
  {
    dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = v16[5];
  v16[5] = 0;

  v11 = 1;
LABEL_9:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

- (void)runAsyncWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42___PASQueueLock_runAsyncWithLockAcquired___block_invoke;
  v7[3] = &unk_1E77F22E8;
  v7[4] = self;
  v8 = acquiredCopy;
  v6 = acquiredCopy;
  dispatch_async(queue, v7);
}

- (void)runWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___PASQueueLock_runWithLockAcquired___block_invoke;
  v7[3] = &unk_1E77F22E8;
  v7[4] = self;
  v8 = acquiredCopy;
  v6 = acquiredCopy;
  dispatch_sync(queue, v7);
}

- (_PASQueueLock)initWithGuardedData:(id)data serialQueue:(id)queue
{
  dataCopy = data;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = _PASQueueLock;
  v9 = [(_PASQueueLock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_guardedData, data);
    queue = v10->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49___PASQueueLock_initWithGuardedData_serialQueue___block_invoke;
    block[3] = &unk_1E77F2DA0;
    v14 = v10;
    dispatch_sync(queue, block);
  }

  return v10;
}

@end