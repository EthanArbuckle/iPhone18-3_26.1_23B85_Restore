@interface TSDTilingLimitedQueue
- (TSDTilingLimitedQueue)init;
- (TSDTilingLimitedQueue)initWithLimit:(unint64_t)a3;
- (void)dealloc;
- (void)performAsync:(id)a3;
@end

@implementation TSDTilingLimitedQueue

- (TSDTilingLimitedQueue)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingLimitedQueue init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 1374, @"-initWithLimit: is the designated initializer"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"-initWithLimit: is the designated initializer", "-[TSDTilingLimitedQueue init]"), 0}]);
}

- (TSDTilingLimitedQueue)initWithLimit:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = TSDTilingLimitedQueue;
  v4 = [(TSDTilingLimitedQueue *)&v9 init];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingLimitedQueue initWithLimit:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 1382, @"Queue limit shoudl be at least one."}];
      a3 = 1;
    }

    v4->mLimit = a3;
    v4->mManagerQueue = dispatch_queue_create("com.apple.iwork.limitedqueue.manager", 0);
    v7 = dispatch_queue_create("com.apple.iwork.limitedqueue", MEMORY[0x277D85CD8]);
    v4->mTargetQueue = v7;
    dispatch_queue_set_specific(v7, TSDTilingBackgroundQueueSpecific, TSDTilingBackgroundQueueSpecific, 0);
    v4->mSpinLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v4;
}

- (void)dealloc
{
  dispatch_barrier_sync(self->mManagerQueue, &__block_literal_global_42);
  dispatch_release(self->mManagerQueue);
  dispatch_release(self->mTargetQueue);
  v3.receiver = self;
  v3.super_class = TSDTilingLimitedQueue;
  [(TSDTilingLimitedQueue *)&v3 dealloc];
}

- (void)performAsync:(id)a3
{
  mManagerQueue = self->mManagerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDTilingLimitedQueue_performAsync___block_invoke;
  v4[3] = &unk_279D48DA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mManagerQueue, v4);
}

void __38__TSDTilingLimitedQueue_performAsync___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  ++*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 32) == *(v2 + 24))
  {
    dispatch_suspend(*(v2 + 8));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  v5[2] = __38__TSDTilingLimitedQueue_performAsync___block_invoke_2;
  v5[3] = &unk_279D48490;
  v6 = v3;
  dispatch_async(v4, v5);
}

void __38__TSDTilingLimitedQueue_performAsync___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 40));
  --*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 32) == *(v2 + 24) - 1)
  {
    dispatch_resume(*(v2 + 8));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 40));
}

@end