@interface TSUWidthLimitedQueue
- (TSUWidthLimitedQueue)initWithLimit:(unint64_t)a3 name:(id)a4 targetQueue:(id)a5;
- (void)performAsync:(id)a3;
- (void)performSync:(id)a3;
@end

@implementation TSUWidthLimitedQueue

- (TSUWidthLimitedQueue)initWithLimit:(unint64_t)a3 name:(id)a4 targetQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = TSUWidthLimitedQueue;
  v10 = [(TSUWidthLimitedQueue *)&v25 init];
  if (!v10)
  {
    goto LABEL_23;
  }

  if (qword_280A65CC0 == a3)
  {
    v11 = [MEMORY[0x277CCAC38] processInfo];
    v12 = [v11 processorCount];

    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = 2 * v13;
    if (v14 >= 0x18)
    {
      a3 = 24;
    }

    else
    {
      a3 = v14;
    }

    if (a3)
    {
LABEL_4:
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUWidthLimitedQueue initWithLimit:name:targetQueue:]"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUWidthLimitedQueue.m"];
  [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:52 isFatal:0 description:"Queue limit should be at least one."];

  +[TSUAssertionHandler logBacktraceThrottled];
  a3 = 1;
  if (!v8)
  {
LABEL_15:

    v8 = @"com.apple.tangier.limitedqueue";
    goto LABEL_16;
  }

LABEL_14:
  if (![(__CFString *)v8 length])
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a3 >> 31)
  {
    sub_27711427C();
    LODWORD(a3) = 0x7FFFFFFF;
  }

  v10->mReaderCount = 0;
  v10->mLimit = a3;
  v17 = [(__CFString *)v8 stringByAppendingString:@".manager"];
  v18 = [v17 UTF8String];
  if (!v18)
  {
    v18 = "com.apple.tangier.limitedqueue.manager";
  }

  v19 = dispatch_queue_create(v18, 0);
  mManagerQueue = v10->mManagerQueue;
  v10->mManagerQueue = v19;

  v21 = [(__CFString *)v8 UTF8String];
  if (!v21)
  {
    v21 = "com.apple.tangier.limitedqueue";
  }

  v22 = dispatch_queue_create_with_target_V2(v21, MEMORY[0x277D85CD8], v9);
  mTargetQueue = v10->mTargetQueue;
  v10->mTargetQueue = v22;

  v10->mUnfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
LABEL_23:

  return v10;
}

- (void)performAsync:(id)a3
{
  v4 = a3;
  mManagerQueue = self->mManagerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770BA890;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mManagerQueue, v7);
}

- (void)performSync:(id)a3
{
  v4 = a3;
  mManagerQueue = self->mManagerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770BAA80;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(mManagerQueue, v7);
}

@end