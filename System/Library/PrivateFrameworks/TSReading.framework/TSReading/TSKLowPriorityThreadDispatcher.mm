@interface TSKLowPriorityThreadDispatcher
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedLowPriorityDispatcher;
- (TSKLowPriorityThreadDispatcher)init;
- (void)resume;
- (void)suspend;
@end

@implementation TSKLowPriorityThreadDispatcher

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSKLowPriorityThreadDispatcher;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedLowPriorityDispatcher
{
  result = sharedLowPriorityDispatcher_sSingletonInstance;
  if (!sharedLowPriorityDispatcher_sSingletonInstance)
  {
    objc_sync_enter(self);
    if (!sharedLowPriorityDispatcher_sSingletonInstance)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      sharedLowPriorityDispatcher_sSingletonInstance = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKLowPriorityThreadDispatcher sharedLowPriorityDispatcher]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKThreadDispatcher.m"), 62, @"Couldn't create singleton instance of %@", self}];
      }
    }

    objc_sync_exit(self);
    return sharedLowPriorityDispatcher_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSKLowPriorityThreadDispatcher allocWithZone:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKThreadDispatcher.m"), 62, @"Don't alloc a singleton"}];
  return 0;
}

- (TSKLowPriorityThreadDispatcher)init
{
  v6.receiver = self;
  v6.super_class = TSKLowPriorityThreadDispatcher;
  v2 = [(TSKLowPriorityThreadDispatcher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TSKLowPriorityThreadDispatcher", 0);
    v2->_queue = v3;
    global_queue = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v3, global_queue);
  }

  return v2;
}

- (void)suspend
{
  if (!atomic_fetch_add(&self->_suspendCount, 1u))
  {
    dispatch_suspend(self->_queue);
  }
}

- (void)resume
{
  add = atomic_fetch_add(&self->_suspendCount, 0xFFFFFFFF);
  if (add <= 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKLowPriorityThreadDispatcher resume]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKThreadDispatcher.m"];

    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:93 description:@"Suspend count underflow"];
  }

  else if (add == 1)
  {
    queue = self->_queue;

    dispatch_resume(queue);
  }
}

@end