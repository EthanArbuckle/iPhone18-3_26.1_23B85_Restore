@interface TSUFlushingManager
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedManager;
- (TSUFlushableObjectInfo)eraseInfoForObject:(id)a3;
- (TSUFlushingManager)init;
- (void)_backgroundThread:(id)a3;
- (void)_bgTaskFinished;
- (void)_bgTaskStarted;
- (void)_bgThreadActive;
- (void)_bgThreadInactive;
- (void)_didUseObject:(id)a3;
- (void)_flushAllEligible;
- (void)_startFlushingObjects;
- (void)_stopFlushingObjects;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)doneWithObject:(id)a3;
- (void)insertObjectInfo:(TSUFlushableObjectInfo *)a3;
- (void)removeObject:(id)a3;
- (void)safeToFlush:(id)a3 wasAccessed:(BOOL)a4;
- (void)transferNewObjects;
- (void)unsafeToFlush:(id)a3;
@end

@implementation TSUFlushingManager

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSUFlushingManager;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770260FC;
  block[3] = &unk_27A701878;
  block[4] = a1;
  if (qword_280A63878 != -1)
  {
    dispatch_once(&qword_280A63878, block);
  }

  return qword_280A63870;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFlushingManager allocWithZone:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 148, 0, "Don't alloc a singleton");
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (TSUFlushingManager)init
{
  v4.receiver = self;
  v4.super_class = TSUFlushingManager;
  v2 = [(TSUFlushingManager *)&v4 init];
  if (v2)
  {
    v2->_objects = objc_alloc_init(TSURetainedPointerKeyDictionary);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_isFlushing)
  {
    [(TSUFlushingManager *)self _stopFlushingObjects];
  }

  [(NSCondition *)self->_cond lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  objects = self->_objects;
  v4 = [(TSUNoCopyDictionary *)objects countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(objects);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 setFlushingManager:0];
        }

        v9 = [-[TSUNoCopyDictionary objectForKey:](self->_objects objectForKey:{v8), "pointerValue"}];
        if (v9)
        {
          MEMORY[0x277CA5D00](v9, 0x1080C40DCAC275BLL);
        }
      }

      v5 = [(TSUNoCopyDictionary *)objects countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  inactiveObjects = self->_inactiveObjects;
  v11 = [(TSUNoCopyDictionary *)inactiveObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(inactiveObjects);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v15 setFlushingManager:0];
        }

        v16 = [-[TSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{v15), "pointerValue"}];
        if (v16)
        {
          MEMORY[0x277CA5D00](v16, 0x1080C40DCAC275BLL);
        }
      }

      v12 = [(TSUNoCopyDictionary *)inactiveObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  sortedObjects = self->_sortedObjects;
  if (sortedObjects)
  {
    sub_277027A90(self->_sortedObjects, sortedObjects[1]);
    MEMORY[0x277CA5D00](sortedObjects, 0x1020C4062D53EE8);
  }

  sortedNewObjects = self->_sortedNewObjects;
  if (sortedNewObjects)
  {
    sub_277027A90(self->_sortedNewObjects, sortedNewObjects[1]);
    MEMORY[0x277CA5D00](sortedNewObjects, 0x1020C4062D53EE8);
  }

  [(NSCondition *)self->_cond unlock];
  v19.receiver = self;
  v19.super_class = TSUFlushingManager;
  [(TSUFlushingManager *)&v19 dealloc];
}

- (void)addObject:(id)a3
{
  [(NSCondition *)self->_cond lock];
  if (![(TSUNoCopyDictionary *)self->_objects objectForKey:a3])
  {
    [(TSUFlushingManager *)self advanceClock];
    operator new();
  }

  [(TSUFlushingManager *)self _didUseObject:a3];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
}

- (void)removeObject:(id)a3
{
  [(NSCondition *)self->_cond lock];
  flushingObject = self->_flushingObject;
  if (flushingObject != a3)
  {
    goto LABEL_6;
  }

  bgThread = self->_bgThread;
  if (bgThread == [MEMORY[0x277CCACC8] currentThread])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager removeObject:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 265, 0, "Flushing manager encountered a circular reference in removeObject:, returning");
    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_14;
  }

  while (1)
  {
    flushingObject = self->_flushingObject;
LABEL_6:
    if (flushingObject != a3)
    {
      break;
    }

    [(NSCondition *)self->_cond wait];
  }

  if (objc_opt_respondsToSelector())
  {
    [a3 setFlushingManager:0];
  }

  v8 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v8)
  {
    v9 = v8;
    p_objects = &self->_objects;
  }

  else
  {
    p_objects = &self->_inactiveObjects;
    v11 = [-[TSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{a3), "pointerValue"}];
    if (!v11)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  [*p_objects removeObjectForKey:a3];
  MEMORY[0x277CA5D00](v9, 0x1080C40DCAC275BLL);
LABEL_14:
  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)doneWithObject:(id)a3
{
  [(NSCondition *)self->_cond lock];
  v5 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v5)
  {
    v5->var3 = 2;
    [(TSUFlushingManager *)self insertObjectInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager doneWithObject:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 316, 0, "Object not under the flushing manager's control");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)unsafeToFlush:(id)a3
{
  [(NSCondition *)self->_cond lock];
  if (self->_flushingObject != a3)
  {
    if (![(TSUNoCopyDictionary *)self->_inactiveObjects objectForKey:a3])
    {
      v10 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
      if (!v10)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager unsafeToFlush:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 351, 0, "Object not under the flushing manager's control");
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v6 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v10 objCType:"^v"];
      [(TSUNoCopyDictionary *)self->_inactiveObjects setObject:v6 forUncopiedKey:a3];

      [(TSUNoCopyDictionary *)self->_objects removeObjectForKey:a3];
    }

    goto LABEL_12;
  }

  bgThread = self->_bgThread;
  if (bgThread != [MEMORY[0x277CCACC8] currentThread])
  {
    while (self->_flushingObject == a3)
    {
      [(NSCondition *)self->_cond wait];
    }

LABEL_12:
    [(NSCondition *)self->_cond unlock];
    return;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager unsafeToFlush:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 341, 0, "Flushing manager encountered a circular reference in unsafeToFlush:, returning");
  +[TSUAssertionHandler logBacktraceThrottled];
  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)safeToFlush:(id)a3 wasAccessed:(BOOL)a4
{
  v4 = a4;
  [(NSCondition *)self->_cond lock];
  if ([(TSUNoCopyDictionary *)self->_objects objectForKey:a3])
  {
    if (v4)
    {
LABEL_3:
      [(TSUFlushingManager *)self _didUseObject:a3];
    }
  }

  else
  {
    v9 = [-[TSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{a3), "pointerValue"}];
    if (!v9)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager safeToFlush:wasAccessed:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 377, 0, "Object not among the flushing manager's cached objects");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v8 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v9 objCType:"^v"];
    [(TSUNoCopyDictionary *)self->_objects setObject:v8 forUncopiedKey:a3];

    [(TSUNoCopyDictionary *)self->_inactiveObjects removeObjectForKey:a3];
    [(TSUFlushingManager *)self insertObjectInfo:v9];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)didReceiveMemoryWarning
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_277026D38;
  block[3] = &unk_27A701878;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)_flushAllEligible
{
  [(NSCondition *)self->_isFlushingCond lock];
  if (!self->_isFlushing)
  {
    self->_isFlushing = 1;
    [(NSCondition *)self->_isFlushingCond unlock];
    [(TSUFlushingManager *)self _bgTaskStarted];
    *&self->_stopFlushing = 256;
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__backgroundThread_ toTarget:self withObject:self];
    [(NSCondition *)self->_isFlushingCond lock];
    while (self->_isFlushing)
    {
      [(NSCondition *)self->_isFlushingCond wait];
    }

    self->_stopFlushingWhenQueueEmpty = 0;
  }

  isFlushingCond = self->_isFlushingCond;

  [(NSCondition *)isFlushingCond unlock];
}

- (void)_startFlushingObjects
{
  if (!self->_alwaysFlushing)
  {
    [(NSCondition *)self->_isFlushingCond lock];
    while (self->_isFlushing)
    {
      [(NSCondition *)self->_isFlushingCond wait];
    }

    self->_isFlushing = 1;
    [(NSCondition *)self->_isFlushingCond unlock];
    self->_stopFlushing = 0;
    v4 = MEMORY[0x277CCACC8];

    [v4 detachNewThreadSelector:sel__backgroundThread_ toTarget:self withObject:self];
  }
}

- (void)_stopFlushingObjects
{
  if (!self->_alwaysFlushing)
  {
    [(NSCondition *)self->_isFlushingCond lock];
    if (self->_isFlushing || (v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _stopFlushingObjects]"], +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"), 473, 0, "-stopFlushingObjects called when not flushing."), +[TSUAssertionHandler logBacktraceThrottled](TSUAssertionHandler, "logBacktraceThrottled"), self->_isFlushing))
    {
      [(NSCondition *)self->_cond lock];
      self->_stopFlushing = 1;
      [(NSCondition *)self->_cond broadcast];
      [(NSCondition *)self->_cond unlock];
      while (self->_isFlushing)
      {
        [(NSCondition *)self->_isFlushingCond wait];
      }
    }

    isFlushingCond = self->_isFlushingCond;

    [(NSCondition *)isFlushingCond unlock];
  }
}

- (void)_backgroundThread:(id)a3
{
  self->_bgThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  [(TSUFlushingManager *)self _bgThreadActive];
  [(NSCondition *)self->_cond lock];
  for (i = objc_autoreleasePoolPush(); !self->_stopFlushing; i = objc_autoreleasePoolPush())
  {
    while (1)
    {
      sortedObjects = self->_sortedObjects;
      if (sortedObjects[2])
      {
        break;
      }

      if (!self->_stopFlushingWhenQueueEmpty)
      {
        [(TSUFlushingManager *)self advanceClock];
        [(TSUFlushingManager *)self _bgThreadInactive];
        [(NSCondition *)self->_cond wait];
        [(TSUFlushingManager *)self _bgThreadActive];
        if (!self->_stopFlushing)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v8 = *(*sortedObjects + 32);
    self->_flushingObject = *v8;
    sub_277027DAC(self->_sortedObjects, &v8);
    if (v8)
    {
      MEMORY[0x277CA5D00](v8, 0x1080C40DCAC275BLL);
    }

    v8 = 0;
    [(TSUNoCopyDictionary *)self->_objects removeObjectForKey:self->_flushingObject];
    [(NSCondition *)self->_cond unlock];
    [(TSUiOSMemoryWarningFlushable *)self->_flushingObject flush];
    if (objc_opt_respondsToSelector())
    {
      [(TSUiOSMemoryWarningFlushable *)self->_flushingObject setFlushingManager:0];
    }

    [(NSCondition *)self->_cond lock];
    self->_flushingObject = 0;
    [(NSCondition *)self->_cond broadcast];
    objc_autoreleasePoolPop(i);
  }

LABEL_2:
  objc_autoreleasePoolPop(i);
  [(TSUFlushingManager *)self _bgThreadInactive];
  [(TSUFlushingManager *)self _bgTaskFinished];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
  [(NSCondition *)self->_isFlushingCond lock];
  self->_isFlushing = 0;
  [(NSCondition *)self->_isFlushingCond signal];
  [(NSCondition *)self->_isFlushingCond unlock];
  objc_autoreleasePoolPop(v4);
  self->_bgThread = 0;
}

- (TSUFlushableObjectInfo)eraseInfoForObject:(id)a3
{
  v4 = [-[TSUNoCopyDictionary objectForKey:](self->_objects objectForKey:{a3), "pointerValue"}];
  v6 = v4;
  if (v4)
  {
    if ([(TSUFlushingManager *)self isNewObject:v4])
    {
      sub_27702833C(self->_sortedNewObjects, &v6);
    }

    else
    {
      sub_277027DAC(self->_sortedObjects, &v6);
    }
  }

  return v6;
}

- (void)insertObjectInfo:(TSUFlushableObjectInfo *)a3
{
  v5 = a3;
  if (a3)
  {
    if ([(TSUFlushingManager *)self isNewObject:?])
    {
      sub_277027AE4(self->_sortedNewObjects, &v5);
    }

    else
    {
      sub_2770283E4(self->_sortedObjects, &v5);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager insertObjectInfo:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 602, 0, "Expecting info to be non-NULL");

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (void)transferNewObjects
{
  sortedNewObjects = self->_sortedNewObjects;
  v3 = *sortedNewObjects;
  if (*sortedNewObjects != sortedNewObjects + 1)
  {
    do
    {
      v6 = v3[4];
      if (!v6)
      {
        break;
      }

      if ([(TSUFlushingManager *)self isNewObject:?])
      {
        break;
      }

      sub_27702833C(self->_sortedNewObjects, &v6);
      sub_2770283E4(self->_sortedObjects, &v6);
      v5 = self->_sortedNewObjects;
      v3 = *v5;
    }

    while (*v5 != v5 + 1);
  }
}

- (void)_didUseObject:(id)a3
{
  [(TSUFlushingManager *)self advanceClock];
  v5 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v5)
  {
    var3 = v5->var3;
    v5->var4[1] = v5->var4[0];
    v5->var4[0] = self->_clock;
    if (var3 == 2)
    {
      v5->var3 = 1;
    }

    [(TSUFlushingManager *)self insertObjectInfo:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _didUseObject:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 643, 0, "Object not under the flushing manager's control");

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (void)_bgTaskStarted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2770274F0;
  v2[3] = &unk_27A7018A0;
  v2[4] = self;
  [TSUExecutionContext performWithApplication:v2];
}

- (void)_bgTaskFinished
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2770276B0;
  v2[3] = &unk_27A7018A0;
  v2[4] = self;
  [TSUExecutionContext performWithApplication:v2];
}

- (void)_bgThreadActive
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2770277B4;
  v2[3] = &unk_27A7018A0;
  v2[4] = self;
  [TSUExecutionContext performWithApplication:v2];
}

- (void)_bgThreadInactive
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_277027974;
  v2[3] = &unk_27A7018A0;
  v2[4] = self;
  [TSUExecutionContext performWithApplication:v2];
}

@end