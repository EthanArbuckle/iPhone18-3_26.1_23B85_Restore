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
- (void)memoryLevelDecreased:(int)a3 was:(int)a4;
- (void)memoryLevelIncreased:(int)a3 was:(int)a4;
- (void)protectObject:(id)a3;
- (void)removeObject:(id)a3;
- (void)safeToFlush:(id)a3 wasAccessed:(BOOL)a4;
- (void)stopProtectingObject:(id)a3;
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
  result = +[TSUFlushingManager sharedManager]::sSingletonInstance;
  if (!+[TSUFlushingManager sharedManager]::sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!+[TSUFlushingManager sharedManager]::sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      +[TSUFlushingManager sharedManager]::sSingletonInstance = v4;
      if (!v4)
      {
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFlushingManager sharedManager]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 165, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return +[TSUFlushingManager sharedManager]::sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFlushingManager allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 165, @"Don't alloc a singleton"}];
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
  [(TSUMemoryWatcher *)self->_memoryWatcher stopObserving];

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
          MEMORY[0x26D6AB8A0](v9, 0x1080C40DCAC275BLL);
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
          MEMORY[0x26D6AB8A0](v16, 0x1080C40DCAC275BLL);
        }
      }

      v12 = [(TSUNoCopyDictionary *)inactiveObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  sortedObjects = self->_sortedObjects;
  if (sortedObjects)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(self->_sortedObjects, sortedObjects[1]);
    MEMORY[0x26D6AB8A0](sortedObjects, 0x1020C4062D53EE8);
  }

  sortedNewObjects = self->_sortedNewObjects;
  if (sortedNewObjects)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(self->_sortedNewObjects, sortedNewObjects[1]);
    MEMORY[0x26D6AB8A0](sortedNewObjects, 0x1020C4062D53EE8);
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
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager removeObject:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 305, @"Flushing manager encountered a circular reference in removeObject:, returning"}];
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

  v9 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v9)
  {
    v10 = v9;
    p_objects = &self->_objects;
LABEL_13:
    [*p_objects removeObjectForKey:a3];
    MEMORY[0x26D6AB8A0](v10, 0x1080C40DCAC275BLL);
    goto LABEL_14;
  }

  p_objects = &self->_inactiveObjects;
  v12 = [-[TSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{a3), "pointerValue"}];
  if (v12)
  {
    v10 = v12;
    goto LABEL_13;
  }

LABEL_14:
  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)protectObject:(id)a3
{
  [(NSCondition *)self->_cond lock];
  v5 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v5)
  {
    v5->var3 = 0;
    [(TSUFlushingManager *)self insertObjectInfo:v5];
  }

  else
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager protectObject:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 363, @"Object not under the flushing manager's control"}];
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)stopProtectingObject:(id)a3
{
  [(NSCondition *)self->_cond lock];
  v5 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
  if (v5)
  {
    v6 = v5;
    if (v5->var3)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager stopProtectingObject:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 387, @"The object isn't protected"}];
    }

    v6->var3 = 1;
    [(TSUFlushingManager *)self insertObjectInfo:v6];
  }

  else
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager stopProtectingObject:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 384, @"Object not under the flushing manager's control"}];
  }

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
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager doneWithObject:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 406, @"Object not under the flushing manager's control"}];
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
      v12 = [(TSUFlushingManager *)self eraseInfoForObject:a3];
      if (!v12)
      {
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager unsafeToFlush:]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 450, @"Object not under the flushing manager's control"}];
      }

      v7 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v12 objCType:"^v"];
      [(TSUNoCopyDictionary *)self->_inactiveObjects setObject:v7 forUncopiedKey:a3];

      [(TSUNoCopyDictionary *)self->_objects removeObjectForKey:a3];
    }

    goto LABEL_13;
  }

  bgThread = self->_bgThread;
  if (bgThread != [MEMORY[0x277CCACC8] currentThread])
  {
    while (self->_flushingObject == a3)
    {
      [(NSCondition *)self->_cond wait];
    }

LABEL_13:
    [(NSCondition *)self->_cond unlock];
    return;
  }

  v9 = +[TSUAssertionHandler currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager unsafeToFlush:]"];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 435, @"Flushing manager encountered a circular reference in unsafeToFlush:, returning"}];
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
    v10 = [-[TSUNoCopyDictionary objectForKey:](self->_inactiveObjects objectForKey:{a3), "pointerValue"}];
    if (!v10)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager safeToFlush:wasAccessed:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 480, @"Object not among the flushing manager's cached objects"}];
    }

    v9 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v10 objCType:"^v"];
    [(TSUNoCopyDictionary *)self->_objects setObject:v9 forUncopiedKey:a3];

    [(TSUNoCopyDictionary *)self->_inactiveObjects removeObjectForKey:a3];
    [(TSUFlushingManager *)self insertObjectInfo:v10];
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
  block[2] = __45__TSUFlushingManager_didReceiveMemoryWarning__block_invoke;
  block[3] = &unk_279D65CF0;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)memoryLevelIncreased:(int)a3 was:(int)a4
{
  if (a3 < 1 || a4 > 0)
  {
    if (a4 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_279D65D28[a4];
    }

    if (a3 > 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_279D65D28[a3];
    }

    NSLog(@"TSUFlushingManager: Memory level increased from %@ to %@", a2, v7, v8);
  }

  else
  {
    v5 = 0;
    v6 = @"Normal (0)";
    if (a4)
    {
      v6 = 0;
    }

    if (a3 <= 3)
    {
      v5 = off_279D65D10[a3 - 1];
    }

    NSLog(@"TSUFlushingManager: Memory level increased from %@ to %@, flushing starting.", a2, v6, v5);

    [(TSUFlushingManager *)self _startFlushingObjects];
  }
}

- (void)memoryLevelDecreased:(int)a3 was:(int)a4
{
  if (a3 > 0 || a4 < 1)
  {
    if (a4 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_279D65D28[a4];
    }

    if (a3 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_279D65D28[a3];
    }

    NSLog(@"TSUFlushingManager: Memory level decreased from %@ to %@", a2, v6, v7);
  }

  else
  {
    if (a4 > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_279D65D10[a4 - 1];
    }

    v8 = @"Normal (0)";
    if (a3)
    {
      v8 = 0;
    }

    NSLog(@"TSUFlushingManager: Memory level decreased from %@ to %@, flushing stopping.", a2, v5, v8);

    [(TSUFlushingManager *)self _stopFlushingObjects];
  }
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
    if (self->_isFlushing || (v4 = +[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _stopFlushingObjects]"], objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 628, @"-stopFlushingObjects called when not flushing."), self->_isFlushing))
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
  v4 = objc_opt_new();
  v5 = self;
  [(TSUFlushingManager *)self _bgThreadActive];
  [(NSCondition *)self->_cond lock];
  for (; !self->_stopFlushing; v4 = objc_opt_new())
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

    v7 = *(*sortedObjects + 32);
    self->_flushingObject = v7->var0;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedObjects, &v7);
    if (v7)
    {
      MEMORY[0x26D6AB8A0](v7, 0x1080C40DCAC275BLL);
    }

    v7 = 0;
    [(TSUNoCopyDictionary *)self->_objects removeObjectForKey:self->_flushingObject];
    [(NSCondition *)self->_cond unlock];
    [(TSUFlushable *)self->_flushingObject flush];
    if (objc_opt_respondsToSelector())
    {
      [(TSUFlushable *)self->_flushingObject setFlushingManager:0];
    }

    [(NSCondition *)self->_cond lock];
    self->_flushingObject = 0;
    [(NSCondition *)self->_cond broadcast];
    [v4 drain];
  }

LABEL_2:
  [(TSUFlushingManager *)self _bgThreadInactive];
  [(TSUFlushingManager *)self _bgTaskFinished];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
  [(NSCondition *)self->_isFlushingCond lock];
  self->_isFlushing = 0;
  [(NSCondition *)self->_isFlushingCond signal];
  [(NSCondition *)self->_isFlushingCond unlock];

  [v4 drain];
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
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedNewObjects, &v6);
    }

    else
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedObjects, &v6);
    }
  }

  return v6;
}

- (void)insertObjectInfo:(TSUFlushableObjectInfo *)a3
{
  v7 = a3;
  if (a3)
  {
    if ([(TSUFlushingManager *)self isNewObject:?])
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedNewObjects, &v7);
    }

    else
    {
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedObjects, &v7);
    }
  }

  else
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager insertObjectInfo:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"];

    [v4 handleFailureInFunction:v5 file:v6 lineNumber:786 description:@"Expecting info to be non-NULL"];
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

      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerTimeStampLess,std::allocator<TSUFlushableObjectInfo *>>::__erase_unique<TSUFlushableObjectInfo *>(self->_sortedNewObjects, &v6);
      std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::__emplace_unique_key_args<TSUFlushableObjectInfo *,TSUFlushableObjectInfo * const&>(self->_sortedObjects, &v6);
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
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _didUseObject:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 838, @"Object not under the flushing manager's control"}];
  }
}

- (void)_bgTaskStarted
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  if (self->_backgroundTransitionTaskId != *MEMORY[0x277D767B0])
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _bgTaskStarted]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 869, @"Should only be one bg task at a time"}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__TSUFlushingManager__bgTaskStarted__block_invoke;
  v6[3] = &unk_279D65CF0;
  v6[4] = self;
  self->_backgroundTransitionTaskId = [v3 beginBackgroundTaskWithName:@"TSUFlushingManager" expirationHandler:v6];
  objc_sync_exit(self);
}

- (void)_bgTaskFinished
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  v4 = *MEMORY[0x277D767B0];
  if (self->_backgroundTransitionTaskId != *MEMORY[0x277D767B0])
  {
    [v3 endBackgroundTask:?];
    self->_backgroundTransitionTaskId = v4;
  }

  objc_sync_exit(self);
}

- (void)_bgThreadActive
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  if (self->_activeBgThreadTask != *MEMORY[0x277D767B0])
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _bgThreadActive]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushingManager.mm"), 903, @"Should only be one bg thread active at a time"}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__TSUFlushingManager__bgThreadActive__block_invoke;
  v6[3] = &unk_279D65CF0;
  v6[4] = self;
  self->_activeBgThreadTask = [v3 beginBackgroundTaskWithName:@"TSUFlushingManager" expirationHandler:v6];
  objc_sync_exit(self);
}

- (void)_bgThreadInactive
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  objc_sync_enter(self);
  v4 = *MEMORY[0x277D767B0];
  if (self->_activeBgThreadTask != *MEMORY[0x277D767B0])
  {
    [v3 endBackgroundTask:?];
    self->_activeBgThreadTask = v4;
  }

  objc_sync_exit(self);
}

@end