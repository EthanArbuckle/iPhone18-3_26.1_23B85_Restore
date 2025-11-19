@interface TSUReadWriteQueue
- (TSUReadWriteQueue)initWithIdentifier:(id)a3;
- (void)dealloc;
- (void)performAsyncWrite:(id)a3;
- (void)performSyncRead:(id)a3;
- (void)performSyncWrite:(id)a3;
@end

@implementation TSUReadWriteQueue

- (TSUReadWriteQueue)initWithIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSUReadWriteQueue;
  v3 = [(TSUReadWriteQueue *)&v5 init];
  if (v3)
  {
    v3->mCanEnqueueReaders = dispatch_semaphore_create(1);
    v3->mGlobalQueue = dispatch_get_global_queue(0, 0);
    v3->mInFlightReaders = dispatch_group_create();
    v3->mInFlightWriters = dispatch_group_create();
  }

  return v3;
}

- (void)dealloc
{
  dispatch_release(self->mInFlightReaders);
  dispatch_release(self->mCanEnqueueReaders);
  dispatch_release(self->mInFlightWriters);
  v3.receiver = self;
  v3.super_class = TSUReadWriteQueue;
  [(TSUReadWriteQueue *)&v3 dealloc];
}

- (void)performSyncRead:(id)a3
{
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(self->mInFlightReaders);
  dispatch_semaphore_signal(self->mCanEnqueueReaders);
  (*(a3 + 2))(a3);
  mInFlightReaders = self->mInFlightReaders;

  dispatch_group_leave(mInFlightReaders);
}

- (void)performAsyncWrite:(id)a3
{
  mInFlightWriters = self->mInFlightWriters;
  mGlobalQueue = self->mGlobalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__TSUReadWriteQueue_performAsyncWrite___block_invoke;
  v5[3] = &unk_279D661E0;
  v5[4] = self;
  v5[5] = a3;
  dispatch_group_async(mInFlightWriters, mGlobalQueue, v5);
}

intptr_t __39__TSUReadWriteQueue_performAsyncWrite___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  return dispatch_semaphore_signal(v2);
}

- (void)performSyncWrite:(id)a3
{
  dispatch_group_enter(self->mInFlightWriters);
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(self->mInFlightReaders, 0xFFFFFFFFFFFFFFFFLL);
  (*(a3 + 2))(a3);
  dispatch_semaphore_signal(self->mCanEnqueueReaders);
  mInFlightWriters = self->mInFlightWriters;

  dispatch_group_leave(mInFlightWriters);
}

@end