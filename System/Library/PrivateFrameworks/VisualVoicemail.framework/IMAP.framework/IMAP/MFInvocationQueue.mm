@interface MFInvocationQueue
+ (id)sharedInvocationQueue;
+ (void)flushAllInvocationQueues;
- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)count domain:(const char *)domain mambaID:(const char *)d;
- (id)copyDiagnosticInformation;
- (unint64_t)invocationCount;
- (void)_adjustThreadPrioritiesIsForeground:(BOOL)foreground;
- (void)_drainQueue:(id)queue;
- (void)_processInvocation:(id)invocation;
- (void)addInvocation:(id)invocation;
- (void)contentProtectionStateChanged:(int)changed previousState:(int)state;
- (void)dealloc;
- (void)didCancel:(id)cancel;
- (void)removeAllItems;
- (void)setMaxThreadCount:(unint64_t)count;
@end

@implementation MFInvocationQueue

+ (id)sharedInvocationQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MFInvocationQueue_sharedInvocationQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInvocationQueue_onceToken != -1)
  {
    dispatch_once(&sharedInvocationQueue_onceToken, block);
  }

  v2 = sharedInvocationQueue_singleton;

  return v2;
}

uint64_t __42__MFInvocationQueue_sharedInvocationQueue__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithMaxThreadCount:1 domain:"invc.dmn" mambaID:0];
  v2 = sharedInvocationQueue_singleton;
  sharedInvocationQueue_singleton = v1;

  v3 = sharedInvocationQueue_singleton;

  return [v3 setThreadRecycleTimeout:30.0];
}

- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)count domain:(const char *)domain mambaID:(const char *)d
{
  v38 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = MFInvocationQueue;
  v8 = [(MFInvocationQueue *)&v29 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.voicemail", domain);
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = ++g_object_instance_id;
    *(v8 + 2) = domain;
    *(v8 + 3) = v11;
    if (d)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s inv.%lu", d, v11];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"inv.%lu", v11, v28];
    }
    v12 = ;
    v13 = *(v8 + 4);
    *(v8 + 4) = v12;

    v14 = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"InvocationQueue_lock" condition:0 andDelegate:v8];
    v15 = *(v8 + 5);
    *(v8 + 5) = v14;

    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    *(v8 + 8) = countCopy;
    *(v8 + 9) = 7;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v18 = *(v8 + 11);
    *(v8 + 11) = v17;

    v19 = MFUserAgent();
    *(v8 + 96) = [v19 isForeground];

    mEMORY[0x277D24F10] = [MEMORY[0x277D24F10] sharedController];
    [mEMORY[0x277D24F10] addDiagnosticsGenerator:v8];

    v21 = *(v8 + 1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v8 + 4);
      v23 = v21;
      v24 = objc_opt_class();
      *buf = 138544130;
      v31 = v22;
      v32 = 2080;
      v33 = " ";
      v34 = 2112;
      v35 = v24;
      v36 = 2048;
      v37 = v8;
      v25 = v24;
      _os_log_impl(&dword_2720B1000, v23, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s<%@ %p> Created", buf, 0x2Au);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D24F10] = [MEMORY[0x277D24F10] sharedController];
  [mEMORY[0x277D24F10] removeDiagnosticsGenerator:self];

  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items]);
  logger = self->logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v6 = logger;
    *buf = 138544130;
    v11 = mambaID;
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2048;
    selfCopy = self;
    v7 = v15;
    _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s<%@ %p> Deleted", buf, 0x2Au);
  }

  v9.receiver = self;
  v9.super_class = MFInvocationQueue;
  [(MFInvocationQueue *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMaxThreadCount:(unint64_t)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_maxThreads = countCopy;
}

- (unint64_t)invocationCount
{
  [(NSConditionLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_items count];
  if ([(NSConditionLock *)self->_lock condition]!= 1)
  {
    v3 += self->_numThreads;
  }

  [(NSConditionLock *)self->_lock unlock];
  return v3;
}

- (void)addInvocation:(id)invocation
{
  v41 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  if (invocationCopy)
  {
    logger = self->logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v7 = logger;
      Name = sel_getName([invocationCopy selector]);
      target = [invocationCopy target];
      v10 = [target description];
      v33 = 138544130;
      v34 = mambaID;
      v35 = 2080;
      v36 = " ";
      v37 = 2080;
      v38 = Name;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %{public}@%sAdding invocation ['%s' %@]", &v33, 0x2Au);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      monitor = [invocationCopy monitor];
    }

    else
    {
      monitor = 0;
    }

    priority = [monitor priority];
    v13 = *&self->_threadPriorityTrigger;
    [(NSConditionLock *)self->_lock lock];
    condition = [(NSConditionLock *)self->_lock condition];
    v15 = condition;
    atomic_fetch_add(&_invocationCount, 1u);
    if (priority <= v13 || condition == 1)
    {
      items = self->_items;
      if (!items)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v21 = self->_items;
        self->_items = v20;

        items = self->_items;
      }

      v22 = [(NSMutableArray *)items count];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        while (1)
        {
          v25 = [(NSMutableArray *)self->_items objectAtIndex:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            monitor2 = [v25 monitor];
          }

          else
          {
            monitor2 = 0;
          }

          priority2 = [monitor2 priority];
          if (priority < priority2)
          {
            break;
          }

          ++v24;
          monitor = monitor2;
          if (v23 == v24)
          {
            goto LABEL_23;
          }
        }

        [(NSMutableArray *)self->_items insertObject:invocationCopy atIndex:v24];
      }

      else
      {
        monitor2 = monitor;
LABEL_23:
        [(NSMutableArray *)self->_items addObject:invocationCopy];
      }

      monitor = monitor2;
      if (v15 != 1)
      {
        numThreads = self->_numThreads;
        if (numThreads < self->_maxThreads)
        {
          self->_numThreads = numThreads + 1;
          v29 = self->logger;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = self->mambaID;
            v31 = self->_numThreads;
            v33 = 138543874;
            v34 = v30;
            v35 = 2080;
            v36 = " ";
            v37 = 2048;
            v38 = v31;
            _os_log_impl(&dword_2720B1000, v29, OS_LOG_TYPE_DEFAULT, "#I %{public}@%sCreating invocation thread, num threads %lu", &v33, 0x20u);
          }

          [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__drainQueue_ toTarget:self withObject:0];
        }
      }

      [(NSConditionLock *)self->_lock unlockWithCondition:2];
    }

    else
    {
      ++self->_numThreads;
      v16 = self->logger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->mambaID;
        v18 = self->_numThreads;
        v33 = 138544130;
        v34 = v17;
        v35 = 2080;
        v36 = " ";
        v37 = 2048;
        v38 = priority;
        v39 = 2048;
        v40 = v18;
        _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#I %{public}@%sCreating invocation thread for priority %lu, num threads %lu", &v33, 0x2Au);
      }

      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__drainQueue_ toTarget:self withObject:invocationCopy];
      [(NSConditionLock *)self->_lock unlock];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)removeAllItems
{
  [(NSConditionLock *)self->_lock lock];
  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items]);
  [(NSMutableArray *)self->_items removeAllObjects];
  lock = self->_lock;

  [(NSConditionLock *)lock unlock];
}

- (void)_adjustThreadPrioritiesIsForeground:(BOOL)foreground
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__MFInvocationQueue__adjustThreadPrioritiesIsForeground___block_invoke;
  v3[3] = &unk_279E34DA0;
  v3[4] = self;
  foregroundCopy = foreground;
  _dispatch_sync(v3);
}

void __57__MFInvocationQueue__adjustThreadPrioritiesIsForeground___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 96) = *(a1 + 40);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) applyOverrideWhileForeground:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = 17;
  if (objc_opt_respondsToSelector())
  {
    isLowPriority = [invocationCopy isLowPriority];
    if (isLowPriority)
    {
      v5 = 25;
    }

    else
    {
      v5 = 17;
    }
  }

  else
  {
    isLowPriority = 0;
  }

  v7 = [[_MFInvocationQOSOverride alloc] initWithPthread:pthread_self() desiredQoS:v5 lowPriority:isLowPriority & 1];
  __relative_priority = 0;
  __qos_class = QOS_CLASS_DEFAULT;
  pthread_get_qos_class_np([(_MFInvocationQOSOverride *)v7 pthread], &__qos_class, &__relative_priority);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__MFInvocationQueue__processInvocation___block_invoke;
  v13[3] = &unk_279E346E0;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  _dispatch_sync(v13);
  pthread_set_qos_class_self_np(QOS_CLASS_BACKGROUND, 0);
  [invocationCopy invoke];
  pthread_set_qos_class_self_np(__qos_class, __relative_priority);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__MFInvocationQueue__processInvocation___block_invoke_54;
  v10[3] = &unk_279E346E0;
  v11 = v8;
  selfCopy = self;
  v9 = v8;
  _dispatch_sync(v10);
}

void __40__MFInvocationQueue__processInvocation___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 88) member:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    if ([v3 removeOverride])
    {
      v5 = vm_imap_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __40__MFInvocationQueue__processInvocation___block_invoke_cold_1(v2, v5);
      }
    }

    [*(*(a1 + 32) + 88) removeObject:v4];
  }

  [*(*(a1 + 32) + 88) addObject:*(a1 + 40)];
  [*(a1 + 40) applyOverrideWhileForeground:*(*(a1 + 32) + 96)];
}

uint64_t __40__MFInvocationQueue__processInvocation___block_invoke_54(uint64_t a1)
{
  [*(a1 + 32) removeOverride];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 88);

  return [v3 removeObject:v2];
}

- (void)_drainQueue:(id)queue
{
  v60 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v5 = ++g_thread_instance_id;
  g_thread_instance_id = [MEMORY[0x277CCACA8] stringWithFormat:@"th.%lu", g_thread_instance_id];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.voicemail.invThread.%s-inv.%lu-th.%lu", self->domain, self->instanceID, v5];
  [currentThread setName:v8];

  v9 = self->logger;
  v47 = currentThread;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v11 = objc_opt_class();
    v12 = v11;
    name = [currentThread name];
    v14 = currentThread;
    v15 = name;
    *buf = 138544642;
    v49 = mambaID;
    v50 = 2080;
    v51 = " ";
    v52 = 2112;
    v53 = g_thread_instance_id;
    v54 = 2112;
    v55 = v11;
    v56 = 2048;
    v57 = v14;
    v58 = 2112;
    v59 = *&name;
    _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s%@ <%@ %p> started [%@]", buf, 0x3Eu);
  }

  v16 = g_thread_instance_id;

  p_superclass = MFIMAPOperationCache.superclass;
  v18 = 0x279E32000;
  v19 = g_thread_instance_id;
  do
  {
    if (queueCopy)
    {
      if (p_superclass[329] != -1)
      {
        [MFInvocationQueue _drainQueue:];
      }

      v20 = objc_autoreleasePoolPush();
      Current = 0.0;
      if (_drainQueue__invocationQueueDebug == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        logger = self->logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->mambaID;
          v24 = logger;
          Name = sel_getName([queueCopy selector]);
          target = [queueCopy target];
          v27 = [target description];
          *buf = 138544386;
          v49 = v23;
          v16 = v19;
          v50 = 2080;
          v51 = " ";
          v52 = 2112;
          v53 = v19;
          v54 = 2080;
          v55 = Name;
          v18 = 0x279E32000;
          v56 = 2112;
          v57 = v27;
          _os_log_impl(&dword_2720B1000, v24, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s%@ ==> MFInvocationQueue starting invocation ['%s' %@]", buf, 0x34u);

          p_superclass = (MFIMAPOperationCache + 8);
        }
      }

      [(MFInvocationQueue *)self _processInvocation:queueCopy];
      if (_drainQueue__invocationQueueDebug == 1)
      {
        v28 = self->logger;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = self->mambaID;
          v30 = v28;
          v31 = sel_getName([queueCopy selector]);
          target2 = [queueCopy target];
          v33 = [target2 description];
          v34 = CFAbsoluteTimeGetCurrent();
          *buf = 138544642;
          v49 = v29;
          v16 = v19;
          v50 = 2080;
          v51 = " ";
          v52 = 2112;
          v53 = v19;
          v54 = 2080;
          v55 = v31;
          v56 = 2112;
          v57 = v33;
          v58 = 2048;
          v59 = v34 - Current;
          _os_log_impl(&dword_2720B1000, v30, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s%@ --> MFInvocationQueue finished invocation ['%s' %@] in %5.5fs\n", buf, 0x3Eu);

          p_superclass = (MFIMAPOperationCache + 8);
          v18 = 0x279E32000uLL;
        }
      }

      v35 = *(v18 + 2832);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        _MFFlushCurrentInvocation();
      }

      atomic_fetch_add(&_invocationCount, 0xFFFFFFFF);
      objc_autoreleasePoolPop(v20);
    }

    v37 = objc_autoreleasePoolPush();
    [(NSConditionLock *)self->_lock lock];
    numThreads = self->_numThreads;
    if (numThreads <= self->_maxThreads)
    {
      if (![(NSMutableArray *)self->_items count]&& self->_threadRecycleTimeout > 0.0)
      {
        [(NSConditionLock *)self->_lock unlockWithCondition:1];
        v39 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_threadRecycleTimeout];
        if (![(NSConditionLock *)self->_lock lockWhenCondition:2 beforeDate:v39])
        {
          [(NSConditionLock *)self->_lock lock];
        }
      }

      if ([(NSMutableArray *)self->_items count])
      {
        queueCopy = [(NSMutableArray *)self->_items objectAtIndex:0];
        [(NSMutableArray *)self->_items removeObjectAtIndex:0];
        goto LABEL_27;
      }

      queueCopy = 0;
      numThreads = self->_numThreads;
    }

    else
    {
      queueCopy = 0;
    }

    self->_numThreads = numThreads - 1;
LABEL_27:
    [(NSConditionLock *)self->_lock unlockWithCondition:2 * ([(NSMutableArray *)self->_items count]!= 0)];
    objc_autoreleasePoolPop(v37);
  }

  while (queueCopy);
  v40 = self->logger;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = self->mambaID;
    v42 = v40;
    v43 = objc_opt_class();
    v44 = self->_numThreads;
    *buf = 138544642;
    v49 = v41;
    v50 = 2080;
    v51 = " ";
    v52 = 2112;
    v53 = v16;
    v54 = 2112;
    v55 = v43;
    v56 = 2048;
    v57 = v47;
    v58 = 2048;
    v59 = *&v44;
    v45 = v43;
    _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "#I %{public}@%s%@ <%@ %p> finished, num threads %lu", buf, 0x3Eu);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __33__MFInvocationQueue__drainQueue___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _drainQueue__invocationQueueDebug = [v0 BOOLForKey:@"InvocationQueueDebug"];
}

+ (void)flushAllInvocationQueues
{
  if ([self totalInvocationCount])
  {
    v3 = 0.01;
    do
    {
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v3];
      [currentRunLoop runUntilDate:v5];

      if (v3 < 1.0)
      {
        v3 = v3 + v3;
      }
    }

    while ([self totalInvocationCount]);
  }
}

- (void)didCancel:(id)cancel
{
  cancelCopy = cancel;
  [(NSConditionLock *)self->_lock lock];
  v4 = [(NSMutableArray *)self->_items count];
  v5 = v4;
  if (v4)
  {
    v6 = v4 - 1;
    do
    {
      v7 = [(NSMutableArray *)self->_items objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        monitor = [v7 monitor];

        if (monitor == cancelCopy)
        {
          [cancelCopy postActivityStarting];
          [cancelCopy postActivityFinished:v7];
          [(NSMutableArray *)self->_items removeObjectAtIndex:v6];
        }
      }

      --v6;
    }

    while (v6 != -1);
  }

  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items count]- v5);
  [(NSConditionLock *)self->_lock unlock];
}

- (void)contentProtectionStateChanged:(int)changed previousState:(int)state
{
  if (!changed && state != 3)
  {
    v7[7] = v4;
    v7[8] = v5;
    [(MFInvocationQueue *)self _adjustThreadPrioritiesIsForeground:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__MFInvocationQueue_contentProtectionStateChanged_previousState___block_invoke;
    v7[3] = &unk_279E33588;
    v7[4] = self;
    _dispatch_sync(v7);
  }
}

void __65__MFInvocationQueue_contentProtectionStateChanged_previousState___block_invoke(uint64_t a1)
{
  v2 = MFUserAgent();
  *(*(a1 + 32) + 96) = [v2 isForeground];
}

- (id)copyDiagnosticInformation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = +[MFInvocationQueue sharedInvocationQueue];

  [v3 appendString:@"\n"];
  if (v4 == self)
  {
    v5 = @"Shared ";
  }

  else
  {
    v5 = &stru_288159858;
  }

  [v3 appendFormat:@"==== %@Invocation Queue <%@: %p> ====\n", v5, objc_opt_class(), self];
  [v3 appendFormat:@"number of running threads: %d\n", self->_numThreads];
  [v3 appendString:@"==== Queued ====\n"];
  [(NSConditionLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_items count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_items;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 appendFormat:@"  %@\n", *(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendFormat:@"(empty)\n"];
  }

  [(NSConditionLock *)self->_lock unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void __40__MFInvocationQueue__processInvocation___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 pthread];
  v5 = 134217984;
  v6 = v3;
  _os_log_debug_impl(&dword_2720B1000, a2, OS_LOG_TYPE_DEBUG, "processing low pri invocation: qos override already existed for %p, just ending it", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end