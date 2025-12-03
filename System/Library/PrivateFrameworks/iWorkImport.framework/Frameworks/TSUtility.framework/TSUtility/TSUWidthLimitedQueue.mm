@interface TSUWidthLimitedQueue
- (TSUWidthLimitedQueue)initWithLimit:(unint64_t)limit name:(id)name targetQueue:(id)queue;
- (void)performAsync:(id)async;
- (void)performSync:(id)sync;
@end

@implementation TSUWidthLimitedQueue

- (TSUWidthLimitedQueue)initWithLimit:(unint64_t)limit name:(id)name targetQueue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = TSUWidthLimitedQueue;
  v10 = [(TSUWidthLimitedQueue *)&v25 init];
  if (!v10)
  {
    goto LABEL_23;
  }

  if (qword_280A65CC0 == limit)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processorCount = [processInfo processorCount];

    if (processorCount <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = processorCount;
    }

    v14 = 2 * v13;
    if (v14 >= 0x18)
    {
      limit = 24;
    }

    else
    {
      limit = v14;
    }

    if (limit)
    {
LABEL_4:
      if (!nameCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (limit)
  {
    goto LABEL_4;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUWidthLimitedQueue initWithLimit:name:targetQueue:]"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUWidthLimitedQueue.m"];
  [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:52 isFatal:0 description:"Queue limit should be at least one."];

  +[TSUAssertionHandler logBacktraceThrottled];
  limit = 1;
  if (!nameCopy)
  {
LABEL_15:

    nameCopy = @"com.apple.tangier.limitedqueue";
    goto LABEL_16;
  }

LABEL_14:
  if (![(__CFString *)nameCopy length])
  {
    goto LABEL_15;
  }

LABEL_16:
  if (limit >> 31)
  {
    sub_27711427C();
    LODWORD(limit) = 0x7FFFFFFF;
  }

  v10->mReaderCount = 0;
  v10->mLimit = limit;
  v17 = [(__CFString *)nameCopy stringByAppendingString:@".manager"];
  uTF8String = [v17 UTF8String];
  if (!uTF8String)
  {
    uTF8String = "com.apple.tangier.limitedqueue.manager";
  }

  v19 = dispatch_queue_create(uTF8String, 0);
  mManagerQueue = v10->mManagerQueue;
  v10->mManagerQueue = v19;

  uTF8String2 = [(__CFString *)nameCopy UTF8String];
  if (!uTF8String2)
  {
    uTF8String2 = "com.apple.tangier.limitedqueue";
  }

  v22 = dispatch_queue_create_with_target_V2(uTF8String2, MEMORY[0x277D85CD8], queueCopy);
  mTargetQueue = v10->mTargetQueue;
  v10->mTargetQueue = v22;

  v10->mUnfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
LABEL_23:

  return v10;
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  mManagerQueue = self->mManagerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770BA890;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(mManagerQueue, v7);
}

- (void)performSync:(id)sync
{
  syncCopy = sync;
  mManagerQueue = self->mManagerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770BAA80;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_barrier_sync(mManagerQueue, v7);
}

@end