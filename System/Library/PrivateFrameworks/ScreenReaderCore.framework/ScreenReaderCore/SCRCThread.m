@interface SCRCThread
+ (BOOL)_addThreadToRegisteredThreads:(id)a3 withThreadKey:(id)a4;
+ (BOOL)_removeThreadFromRegisteredThreads:(id)a3 withThreadKey:(id)a4;
+ (double)_performSelector:(SEL)a3 withThreadKey:(id)a4 onTarget:(id)a5 waitTime:(double)a6 cancelMask:(unsigned int)a7 count:(unsigned int)a8 firstObject:(id)a9 moreObjects:(char *)a10;
+ (double)lastStartTimeForKey:(id)a3;
+ (id)currentThreadTaskCache;
+ (int64_t)activeThreadCount;
+ (void)initialize;
+ (void)invalidateForKey:(id)a3;
+ (void)postStopNotification;
- (double)_performSelector:(SEL)a3 onTarget:(id)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8;
- (double)lastStartTime;
- (id)_initWithKey:(id)a3 task:(id)a4;
- (void)_assignThreadPriority;
- (void)_enqueueImmediateTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5;
- (void)_enqueueTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5;
- (void)_enqueueWaitingTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5;
- (void)_processQueue;
- (void)_runThread:(id)a3;
- (void)_setIsWaitingForStoppingThread:(BOOL)a3;
- (void)_threadDidStop;
- (void)dealloc;
- (void)setIsInvalid:(BOOL)a3;
@end

@implementation SCRCThread

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v3 = _RegistryLock;
    _RegistryLock = v2;

    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = _RegisteredThreads;
    _RegisteredThreads = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = _WaitingForStoppingThreads;
    _WaitingForStoppingThreads = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = _StoppingThreads;
    _StoppingThreads = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    v11 = _StoppableThreads;
    _StoppableThreads = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = _AvailableThreads;
    _AvailableThreads = v12;

    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    [v15 timeIntervalSinceReferenceDate];
    _DistantFuture = v14;
  }
}

+ (int64_t)activeThreadCount
{
  [_RegistryLock lock];
  v2 = [_RegisteredThreads count];
  [_RegistryLock unlock];
  return v2;
}

- (void)_assignThreadPriority
{
  if (__defaultThreadPriority)
  {
    v5 = 0;
    v4 = 0;
    v2 = pthread_self();
    pthread_getschedparam(v2, &v4, &v5);
    v5.sched_priority = 47;
    v3 = pthread_self();
    pthread_setschedparam(v3, 2, &v5);
  }
}

+ (double)_performSelector:(SEL)a3 withThreadKey:(id)a4 onTarget:(id)a5 waitTime:(double)a6 cancelMask:(unsigned int)a7 count:(unsigned int)a8 firstObject:(id)a9 moreObjects:(char *)a10
{
  v11 = *&a8;
  v12 = *&a7;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  if (v16)
  {
    v28 = 0.0;
    v19 = [_SCRCThreadTask newThreadTaskWithTarget:v17 selector:a3 cancelMask:v12 count:v11 firstObject:v18 moreObjects:a10];
    v20 = 0;
    if (a6 >= 0.0)
    {
      v20 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
      [v19 setWaitLock:v20];
    }

    [_RegistryLock lock];
    v21 = [_RegisteredThreads objectForKeyedSubscript:v16];
    if (!v21)
    {
      v22 = [_StoppingThreads objectForKey:v16];

      if (!v22 || ([_WaitingForStoppingThreads objectForKey:v16], (v21 = objc_claimAutoreleasedReturnValue()) == 0) && (v21 = -[SCRCThread _initWithKey:task:]([SCRCThread alloc], "_initWithKey:task:", v16, v19), objc_msgSend(v21, "_setIsWaitingForStoppingThread:", 1), objc_msgSend(_WaitingForStoppingThreads, "setObject:forKeyedSubscript:", v21, v16), !v21))
      {
        v23 = [_AvailableThreads count];
        if (v23)
        {
          v24 = v23 - 1;
          v21 = [_AvailableThreads objectAtIndexedSubscript:v23 - 1];
          [v21 _setKey:v16];
          [_AvailableThreads removeObjectAtIndex:v24];
        }

        else
        {
          v21 = [[SCRCThread alloc] _initWithKey:v16 task:v19];

          v19 = 0;
        }

        [_RegisteredThreads setObject:v21 forKey:v16];
        v21[49] = 1;
      }
    }

    if (v19)
    {
      [v21 _enqueueTask:v19 cancelMask:v12 lastStartTime:&v28];
    }

    [_RegistryLock unlock];
    if (v20)
    {
      if (a6 == 0.0)
      {
        [v20 lockWhenCondition:1];
        [v20 unlock];
      }

      else
      {
        v26 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:a6];
        if ([v20 lockWhenCondition:1 beforeDate:v26])
        {
          [v20 unlock];
        }
      }
    }

    v25 = v28;
  }

  else
  {
    v25 = 0.0;
  }

  return v25;
}

+ (double)lastStartTimeForKey:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = _RegistryLock;
  v4 = a3;
  [v3 lock];
  v5 = [_RegisteredThreads objectForKeyedSubscript:v4];

  [_RegistryLock unlock];
  if (v5)
  {
    [v5 lastStartTime];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (void)invalidateForKey:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    [_RegistryLock lock];
    v4 = [_RegisteredThreads objectForKeyedSubscript:v5];
    if (v4)
    {
      [_RegisteredThreads removeObjectForKey:v5];
      [_StoppableThreads removeObject:v4];
      [_RegistryLock unlock];
      [v4 setIsInvalid:1];
      v4[49] = 0;
    }

    else
    {
      [_RegistryLock unlock];
    }
  }

  MEMORY[0x2821F96F8]();
}

+ (void)postStopNotification
{
  [_RegistryLock lock];
  [_StoppableThreads enumerateObjectsUsingBlock:&__block_literal_global_7];
  [_StoppableThreads removeAllObjects];
  v2 = _RegistryLock;

  [v2 unlock];
}

void __34__SCRCThread_postStopNotification__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 setIsInvalid:1];
  v10[49] = 0;
  v10[51] = 1;
  v2 = [v10 _key];

  if (v2)
  {
    v3 = _RegisteredThreads;
    v4 = [v10 _key];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = _StoppingThreads;
      v7 = [v10 _key];
      [v6 setObject:v10 forKeyedSubscript:v7];

      v8 = _RegisteredThreads;
      v9 = [v10 _key];
      [v8 removeObjectForKey:v9];
    }
  }
}

- (id)_initWithKey:(id)a3 task:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SCRCThread;
  v9 = [(SCRCThread *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__key, a3);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    queueLock = v10->_queueLock;
    v10->_queueLock = v11;

    v13 = objc_alloc_init(SCRCStackQueue);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = objc_alloc_init(SCRCStackQueue);
    waitingQueue = v10->_waitingQueue;
    v10->_waitingQueue = v15;

    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__runThread_ toTarget:v10 withObject:v8];
  }

  return v10;
}

- (void)_runThread:(id)a3
{
  v4 = a3;
  [(SCRCThread *)self _assignThreadPriority];
  Current = CFRunLoopGetCurrent();
  v6 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v6 threadDictionary];
  [v7 setObject:self forKey:@"SCRCThreadKey"];
  v8 = objc_opt_new();
  [v7 setObject:v8 forKey:@"SCRCThreadCache"];
  [v4 fire];
  [v7 removeObjectForKey:@"SCRCThreadCache"];
  v10.version = 0;
  memset(&v10.retain, 0, 56);
  v10.info = self;
  v10.perform = _handler_0;
  v9 = CFRunLoopSourceCreate(0, 0, &v10);
  CFRunLoopAddSource(Current, v9, *MEMORY[0x277CBF058]);
  CFRunLoopSourceSignal(v9);
  [self->_queueLock lock];
  self->_source = v9;
  self->_runLoop = Current;
  [self->_queueLock unlock];
  if (![(SCRCThread *)self isInvalid])
  {
    do
    {
      CFRunLoopRunSpecific();
    }

    while (![(SCRCThread *)self isInvalid]);
  }

  [(SCRCThread *)self _threadDidStop];
}

- (void)_threadDidStop
{
  if (self->_shouldStop)
  {
    [_RegistryLock lock];
    [_StoppingThreads removeObjectForKey:self->__key];
    v4 = [_WaitingForStoppingThreads objectForKeyedSubscript:self->__key];
    if (v4)
    {
      [_RegisteredThreads setObject:v4 forKeyedSubscript:self->__key];
      [_WaitingForStoppingThreads removeObjectForKey:self->__key];
      v4[49] = 1;
      [v4 _setIsWaitingForStoppingThread:0];
    }

    [_RegistryLock unlock];
  }
}

- (void)dealloc
{
  [self->_queueLock lock];
  v3 = self->_queue;
  queue = self->_queue;
  self->_queue = 0;

  v5 = self->_waitingQueue;
  waitingQueue = self->_waitingQueue;
  self->_waitingQueue = 0;

  queueLock = self->_queueLock;
  source = self->_source;
  self->_source = 0;
  self->_isInvalid = 1;
  v9 = queueLock;
  v10 = self->_queueLock;
  self->_queueLock = 0;

  [v9 unlock];
  if (source)
  {
    CFRelease(source);
  }

  v11.receiver = self;
  v11.super_class = SCRCThread;
  [(SCRCThread *)&v11 dealloc];
}

- (double)_performSelector:(SEL)a3 onTarget:(id)a4 cancelMask:(unsigned int)a5 count:(unsigned int)a6 firstObject:(id)a7 moreObjects:(char *)a8
{
  v8 = *&a5;
  v13 = 0.0;
  v10 = [_SCRCThreadTask newThreadTaskWithTarget:a4 selector:a3 cancelMask:*&a5 count:*&a6 firstObject:a7 moreObjects:a8];
  [(SCRCThread *)self _enqueueTask:v10 cancelMask:v8 lastStartTime:&v13];
  v11 = v13;

  return v11;
}

- (void)setIsInvalid:(BOOL)a3
{
  v3 = a3;
  [self->_queueLock lock];
  self->_isInvalid = v3;
  if (v3)
  {
    v9 = self->_queue;
    queue = self->_queue;
    self->_queue = 0;

    v6 = self->_waitingQueue;
    waitingQueue = self->_waitingQueue;
    self->_waitingQueue = 0;

    self->_lastStartTime = -3061152000.0;
    runLoop = self->_runLoop;
    if (runLoop)
    {
      CFRunLoopStop(runLoop);
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  [self->_queueLock unlock];
}

- (void)_setIsWaitingForStoppingThread:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  self->_isWaitingForStoppingThread = a3;
  if (!a3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [self->_queueLock lock];
    while ([(SCRCStackQueue *)self->_waitingQueue count])
    {
      v5 = [(SCRCStackQueue *)self->_waitingQueue dequeueObjectRetained];
      v6 = MEMORY[0x266744B50]();
      [v4 addObject:v6];
    }

    [self->_queueLock unlock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (double)lastStartTime
{
  [self->_queueLock lock];
  lastStartTime = self->_lastStartTime;
  [self->_queueLock unlock];
  result = 0.0;
  if (lastStartTime != -3061152000.0)
  {
    return lastStartTime;
  }

  return result;
}

- (void)_enqueueWaitingTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5
{
  v8 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v9 = self;
  v23 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __59__SCRCThread__enqueueWaitingTask_cancelMask_lastStartTime___block_invoke;
  v17 = &unk_279B71770;
  v19 = v22;
  v10 = v8;
  v21 = a4;
  v18 = v10;
  v20 = a5;
  v11 = MEMORY[0x266744B50](&v14);
  [v9->_queueLock lock];
  waitingQueue = v9->_waitingQueue;
  v13 = MEMORY[0x266744B50](v11);
  [(SCRCStackQueue *)waitingQueue enqueueObject:v13];

  [v9->_queueLock unlock];
  _Block_object_dispose(v22, 8);
}

- (void)_enqueueImmediateTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5
{
  v17 = a3;
  [self->_queueLock lock];
  if (self->_isInvalid || self->_shouldStop)
  {
    [self->_queueLock unlock];
  }

  else
  {
    if (a4 && ![(SCRCStackQueue *)self->_queue isEmpty])
    {
      queue = self->_queue;
      if (a4 == -1)
      {
        [(SCRCStackQueue *)queue removeAllObjects];
      }

      else
      {
        v9 = [(SCRCStackQueue *)queue objectEnumerator];
        v10 = [v9 nextObject];
        if (v10)
        {
          v11 = v10;
          do
          {
            if ((*(v11 + 32) & a4) != 0)
            {
              v12 = *(v11 + 8);
              *(v11 + 8) = 0;
            }

            v13 = [v9 nextObject];

            v11 = v13;
          }

          while (v13);
        }
      }
    }

    [(SCRCStackQueue *)self->_queue enqueueObject:v17];
    runLoop = self->_runLoop;
    lastStartTime = self->_lastStartTime;
    if (lastStartTime == -3061152000.0)
    {
      lastStartTime = 0.0;
    }

    *a5 = lastStartTime;
    source = self->_source;
    [self->_queueLock unlock];
    if (source)
    {
      CFRunLoopSourceSignal(source);
    }

    if (runLoop)
    {
      CFRunLoopWakeUp(runLoop);
    }
  }
}

- (void)_enqueueTask:(id)a3 cancelMask:(unsigned int)a4 lastStartTime:(double *)a5
{
  if (self->_isWaitingForStoppingThread)
  {
    [(SCRCThread *)self _enqueueWaitingTask:a3 cancelMask:*&a4 lastStartTime:a5];
  }

  else
  {
    [(SCRCThread *)self _enqueueImmediateTask:a3 cancelMask:*&a4 lastStartTime:a5];
  }
}

- (void)_processQueue
{
  [self->_queueLock lock];
  if (!self->_isInvalid)
  {
    while (1)
    {
      v3 = [(SCRCStackQueue *)self->_queue dequeueObjectRetained];
      if (!v3)
      {
        break;
      }

      v4 = v3;
      self->_lastStartTime = CFAbsoluteTimeGetCurrent();
      [self->_queueLock unlock];
      v5 = objc_opt_class();
      if (v4[2])
      {
        v6 = v4[2];
      }

      else
      {
        v6 = 0;
      }

      if (_appendInfoToRecentTaskBuffer__recentTaskOnceToken != -1)
      {
        [SCRCThread _processQueue];
      }

      Name = class_getName(v5);
      v8 = strlen(Name);
      v9 = sel_getName(v6);
      v10 = strlen(v9);
      v11 = v8 + v10 + 4;
      add = atomic_fetch_add(&_appendInfoToRecentTaskBuffer__recentTaskBufferOffset, v11);
      if (add + v11 < 0x258 || (add = 0, atomic_store(0, &_appendInfoToRecentTaskBuffer__recentTaskBufferOffset), v11 <= 0x257))
      {
        v13 = _appendInfoToRecentTaskBuffer__recentTaskBuffer + add;
        *v13 = 91;
        v14 = &strncpy((v13 + 1), Name, v8)[v8];
        *v14 = 32;
        strcpy(&strncpy(v14 + 1, v9, v10)[v10], "]\n");
      }

      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCACC8] currentThread];
      v17 = [v16 threadDictionary];

      [v17 setObject:v15 forKey:@"SCRCThreadCache"];
      [v4 fire];
      [v17 removeObjectForKey:@"SCRCThreadCache"];

      [self->_queueLock lock];
      if (self->_isInvalid)
      {
        goto LABEL_14;
      }
    }

    self->_lastStartTime = -3061152000.0;
  }

LABEL_14:
  [self->_queueLock unlock];
  [_RegistryLock lock];
  if (self->_isRegistered && [(SCRCStackQueue *)self->_queue isEmpty])
  {
    NextTimerFireDate = CFRunLoopGetNextTimerFireDate(self->_runLoop, *MEMORY[0x277CBF058]);
    if (NextTimerFireDate > 0.0 && (v19 = NextTimerFireDate, Current = CFAbsoluteTimeGetCurrent(), v19 < Current + 31536000.0))
    {
      if (!self->_isTimerSet)
      {
        v21 = v19 + 1.0 - Current;
        if (v21 < 0.1)
        {
          v21 = 0.1;
        }

        [(SCRCThread *)self performSelector:sel__processQueueFromTimer withObject:0 afterDelay:v21];
        self->_isTimerSet = 1;
      }
    }

    else
    {
      if (!self->_isInvalid)
      {
        if ([_AvailableThreads count] > 5)
        {
          [(SCRCThread *)self setIsInvalid:1];
        }

        else
        {
          [_AvailableThreads addObject:self];
        }
      }

      [_RegisteredThreads removeObjectForKey:self->__key];
      [_StoppableThreads removeObject:self];
      self->_isRegistered = 0;
    }
  }

  v22 = _RegistryLock;

  [v22 unlock];
}

+ (id)currentThreadTaskCache
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"SCRCThreadCache"];

  return v4;
}

+ (BOOL)_addThreadToRegisteredThreads:(id)a3 withThreadKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && ([_RegisteredThreads objectForKey:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    [_RegisteredThreads setObject:v5 forKeyedSubscript:v6];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_removeThreadFromRegisteredThreads:(id)a3 withThreadKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [_RegisteredThreads objectForKey:v6];

    if (v7)
    {
      [_RegisteredThreads removeObjectForKey:v6];
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end