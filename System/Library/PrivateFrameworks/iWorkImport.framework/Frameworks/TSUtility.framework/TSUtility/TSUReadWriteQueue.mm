@interface TSUReadWriteQueue
- (TSUReadWriteQueue)initWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)performAsyncWrite:(id)write;
- (void)performSyncRead:(id)read;
- (void)performSyncWrite:(id)write;
@end

@implementation TSUReadWriteQueue

- (TSUReadWriteQueue)initWithIdentifier:(id)identifier
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

- (void)performSyncRead:(id)read
{
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(self->mInFlightReaders);
  dispatch_semaphore_signal(self->mCanEnqueueReaders);
  (*(read + 2))(read);
  mInFlightReaders = self->mInFlightReaders;

  dispatch_group_leave(mInFlightReaders);
}

- (void)performAsyncWrite:(id)write
{
  mInFlightWriters = self->mInFlightWriters;
  mGlobalQueue = self->mGlobalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708C19C;
  v5[3] = &unk_27A702400;
  v5[4] = self;
  v5[5] = write;
  dispatch_group_async(mInFlightWriters, mGlobalQueue, v5);
}

- (void)performSyncWrite:(id)write
{
  dispatch_group_enter(self->mInFlightWriters);
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(self->mInFlightReaders, 0xFFFFFFFFFFFFFFFFLL);
  (*(write + 2))(write);
  dispatch_semaphore_signal(self->mCanEnqueueReaders);
  mInFlightWriters = self->mInFlightWriters;

  dispatch_group_leave(mInFlightWriters);
}

@end