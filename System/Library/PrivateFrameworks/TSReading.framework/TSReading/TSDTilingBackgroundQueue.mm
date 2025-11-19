@interface TSDTilingBackgroundQueue
+ (id)p_sharedLimitedQueue;
- (TSDTilingBackgroundQueue)init;
- (TSDTilingBackgroundQueue)initWithAccessController:(id)a3;
- (void)dealloc;
- (void)drainAndPerformSync:(id)a3;
- (void)p_readLock;
- (void)performAsync:(id)a3;
- (void)shutdown;
@end

@implementation TSDTilingBackgroundQueue

+ (id)p_sharedLimitedQueue
{
  if (p_sharedLimitedQueue_onceToken != -1)
  {
    +[TSDTilingBackgroundQueue p_sharedLimitedQueue];
  }

  return p_sharedLimitedQueue_sLimitedQueue;
}

TSDTilingLimitedQueue *__48__TSDTilingBackgroundQueue_p_sharedLimitedQueue__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  if (v0 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  v2 = 2 * v1;
  if (v0 >= 12)
  {
    v3 = 24;
  }

  else
  {
    v3 = v2;
  }

  result = [[TSDTilingLimitedQueue alloc] initWithLimit:v3];
  p_sharedLimitedQueue_sLimitedQueue = result;
  return result;
}

- (TSDTilingBackgroundQueue)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingBackgroundQueue init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 1466, @"-initWithAccessController: is the designated initializer"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"-initWithAccessController: is the designated initializer", "-[TSDTilingBackgroundQueue init]"), 0}]);
}

- (TSDTilingBackgroundQueue)initWithAccessController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDTilingBackgroundQueue;
  v4 = [(TSDTilingBackgroundQueue *)&v6 init];
  if (v4)
  {
    v4->mCanEnqueueReaders = dispatch_semaphore_create(1);
    v4->mInFlightReaders = dispatch_group_create();
    v4->mAccessController = a3;
    v4->mReaderSpinLock._os_unfair_lock_opaque = 0;
    v4->mReadLockSignal = dispatch_semaphore_create(0);
  }

  __dmb(0xBu);
  return v4;
}

- (void)dealloc
{
  [(TSDTilingBackgroundQueue *)self shutdown];
  dispatch_release(self->mCanEnqueueReaders);
  dispatch_release(self->mInFlightReaders);
  v3.receiver = self;
  v3.super_class = TSDTilingBackgroundQueue;
  [(TSDTilingBackgroundQueue *)&v3 dealloc];
}

- (void)shutdown
{
  mShutdownToken = self->mShutdownToken;
  p_mShutdownToken = &self->mShutdownToken;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TSDTilingBackgroundQueue_shutdown__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (mShutdownToken != -1)
  {
    dispatch_once(p_mShutdownToken, block);
  }
}

uint64_t __36__TSDTilingBackgroundQueue_shutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShuttingDown:1];
  v2 = *(a1 + 32);

  return [v2 drainAndPerformSync:&__block_literal_global_203];
}

- (void)performAsync:(id)a3
{
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(self->mInFlightReaders);
  dispatch_semaphore_signal(self->mCanEnqueueReaders);
  os_unfair_lock_lock(&self->mReaderSpinLock);
  mReaderCount = self->mReaderCount;
  if (!mReaderCount)
  {
    [(TSDTilingBackgroundQueue *)self p_readLock];
    mReaderCount = self->mReaderCount;
  }

  self->mReaderCount = mReaderCount + 1;
  os_unfair_lock_unlock(&self->mReaderSpinLock);
  v6 = [objc_opt_class() p_sharedLimitedQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TSDTilingBackgroundQueue_performAsync___block_invoke;
  v7[3] = &unk_279D48490;
  v7[4] = self;
  v7[5] = a3;
  [v6 performAsync:v7];
}

void __41__TSDTilingBackgroundQueue_performAsync___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(*(a1 + 32) + 16));
  os_unfair_lock_lock((*(a1 + 32) + 24));
  --*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  if (!*&v2[8]._os_unfair_lock_opaque)
  {
    [(os_unfair_lock_s *)v2 p_readUnlock];
    v2 = *(a1 + 32);
  }

  v3 = v2 + 6;

  os_unfair_lock_unlock(v3);
}

- (void)drainAndPerformSync:(id)a3
{
  dispatch_semaphore_wait(self->mCanEnqueueReaders, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(self->mInFlightReaders, 0xFFFFFFFFFFFFFFFFLL);
  (*(a3 + 2))(a3);
  mCanEnqueueReaders = self->mCanEnqueueReaders;

  dispatch_semaphore_signal(mCanEnqueueReaders);
}

- (void)p_readLock
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TSDTilingBackgroundQueue_p_readLock__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  dispatch_async(global_queue, block);
}

uint64_t __38__TSDTilingBackgroundQueue_p_readLock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDTilingBackgroundQueue_p_readLock__block_invoke_2;
  v4[3] = &unk_279D46770;
  v4[4] = v1;
  return [v2 performRead:v4];
}

@end