@interface TSKAccessController
- (BOOL)p_hasRead;
- (BOOL)p_hasWrite;
- (BOOL)p_waitWithCondition:(id)condition untilDate:(id)date;
- (BOOL)waitOnIdentifier:(id)identifier untilDate:(id)date releaseReadWhileWaiting:(BOOL)waiting;
- (TSKAccessController)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)p_asyncPerformSelectorOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument;
- (void)p_dequeueWrite;
- (void)p_enqueueWriteAndBlock;
- (void)p_flushPendingMainThreadBlocksQueueAcquiringLock:(BOOL)lock;
- (void)p_performReadOnMainThread:(id)thread;
- (void)p_readLock;
- (void)p_readUnlock;
- (void)p_scheduleMainThreadRead:(id)read;
- (void)p_signalThread:(id)thread;
- (void)p_writeLockAndBlockMainThread:(BOOL)thread;
- (void)p_writeUnlockAndPerformWithMainThreadBlocked:(id)blocked;
- (void)performRead:(SEL)read thenReadOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument;
- (void)performRead:(SEL)read thenWrite:(SEL)write thenReadOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument passReadResultToMainThreadRead:(BOOL)threadRead;
- (void)performRead:(SEL)read withTarget:(id)target argument:(void *)argument;
- (void)performRead:(SEL)read withTarget:(id)target argument:(void *)argument argument2:(void *)argument2;
- (void)performRead:(id)read;
- (void)performWrite:(SEL)write withTarget:(id)target argument:(void *)argument;
- (void)performWrite:(id)write blockMainThread:(BOOL)thread;
- (void)signalIdentifier:(id)identifier;
- (void)spinMainThreadRunLoopUntil:(SEL)until onTarget:(id)target;
- (void)waitOnIdentifier:(id)identifier;
@end

@implementation TSKAccessController

- (TSKAccessController)initWithDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = TSKAccessController;
  v4 = [(TSKAccessController *)&v8 init];
  if (v4)
  {
    v4->_delegate = [objc_alloc(MEMORY[0x277D6C380]) initWithObject:delegate];
    v4->_writerQueue = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->_cond = objc_alloc_init(MEMORY[0x277CCA928]);
    pthread_rwlock_init(&v4->_rwLock, 0);
    v4->_waitIdentifiers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->_signalIdentifiers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7.version = 0;
    v7.info = v4;
    memset(&v7.retain, 0, 24);
    v7.equal = TSKMainThreadRunLoopEqual;
    v7.schedule = 0;
    v7.cancel = 0;
    v7.hash = TSKMainThreadRunLoopHash;
    v7.perform = TSKMainThreadRunLoopPerform;
    v4->_mainThreadPingSource = CFRunLoopSourceCreate(0, 0, &v7);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v4->_mainThreadPingSource, *MEMORY[0x277CBE738]);
    v4->_pendingMainThreadInvocations = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (void)dealloc
{
  if ([(NSMutableDictionary *)self->_waitIdentifiers count])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 147, @"access controller being deallocated when it is still in use"}];
  }

  if ([(NSMutableDictionary *)self->_signalIdentifiers count])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController dealloc]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 150, @"access controller being deallocated when it is still in use"}];
  }

  CFRunLoopSourceInvalidate(self->_mainThreadPingSource);
  pthread_rwlock_destroy(&self->_rwLock);
  CFRelease(self->_mainThreadPingSource);

  v7.receiver = self;
  v7.super_class = TSKAccessController;
  [(TSKAccessController *)&v7 dealloc];
}

- (void)waitOnIdentifier:(id)identifier
{
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

  [(TSKAccessController *)self waitOnIdentifier:identifier untilDate:distantFuture releaseReadWhileWaiting:0];
}

- (BOOL)waitOnIdentifier:(id)identifier untilDate:(id)date releaseReadWhileWaiting:(BOOL)waiting
{
  if (waiting)
  {
    if (![(TSKAccessController *)self p_hasRead])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 179, @"shoulnd't set releaseRead when we're not holding a read lock"}];
    }

    if ([(TSKAccessController *)self p_hasRead])
    {
      if (![MEMORY[0x277CCACC8] isMainThread])
      {
        [(TSKAccessController *)self p_readUnlock];
        if ([(TSKAccessController *)self p_hasRead])
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
          [currentHandler2 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 189, @"failed to release read privs"}];
        }

        v12 = 1;
        goto LABEL_9;
      }

      if (self->_secondaryThreadWriting)
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
        [currentHandler3 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 184, @"we shouldn't have read privs if a secondary thread is writing"}];
      }
    }
  }

  v12 = 0;
LABEL_9:
  if ([(TSKAccessController *)self p_hasWrite])
  {
    currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [currentHandler4 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 195, @"waiting on an identifier with write lock held, deadlock likely in our future"}];
  }

  [(NSCondition *)self->_cond lock];
  if ([(NSMutableDictionary *)self->_waitIdentifiers objectForKey:identifier])
  {
    currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [currentHandler5 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 200, @"multiple threads cannot wait on the same identifier simultaneously"}];
  }

  -[NSMutableDictionary setObject:forKey:](self->_waitIdentifiers, "setObject:forKey:", [MEMORY[0x277CCACC8] currentThread], identifier);
  while (1)
  {
    v17 = [(NSMutableDictionary *)self->_signalIdentifiers objectForKey:identifier];
    if (v17)
    {
      break;
    }

    if (![(TSKAccessController *)self p_waitWithCondition:self->_cond untilDate:date])
    {
      goto LABEL_20;
    }
  }

  v18 = [(NSMutableDictionary *)self->_signalIdentifiers objectForKey:identifier];
  if (!v18)
  {
    currentHandler6 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [currentHandler6 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 213, @"expect to have a signaling thread if we were signaled"}];
  }

  [(NSMutableDictionary *)self->_signalIdentifiers removeObjectForKey:identifier];
  [(TSKAccessController *)self p_signalThread:v18];
LABEL_20:
  [(NSMutableDictionary *)self->_waitIdentifiers removeObjectForKey:identifier];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
  if (v12)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      currentHandler7 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
      [currentHandler7 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 226, @"should only reacquire read for secondary threads"}];
    }

    [(TSKAccessController *)self p_readLock];
  }

  return v17 != 0;
}

- (void)signalIdentifier:(id)identifier
{
  [(NSCondition *)self->_cond lock];
  if ([(NSMutableDictionary *)self->_signalIdentifiers objectForKey:identifier])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController signalIdentifier:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 237, @"multiple threads cannot signal the same identifier simultaneously"}];
  }

  -[NSMutableDictionary setObject:forKey:](self->_signalIdentifiers, "setObject:forKey:", [MEMORY[0x277CCACC8] currentThread], identifier);
  v7 = [(NSMutableDictionary *)self->_waitIdentifiers objectForKey:identifier];
  if (v7)
  {
    [(TSKAccessController *)self p_signalThread:v7];
  }

  while ([(NSMutableDictionary *)self->_signalIdentifiers objectForKey:identifier])
  {
    -[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] distantFuture]);
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)spinMainThreadRunLoopUntil:(SEL)until onTarget:(id)target
{
  [(NSCondition *)self->_cond lock];
  while (![target performSelector:until])
  {
    if (!-[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5]))
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController spinMainThreadRunLoopUntil:onTarget:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 279, @"we should never timeout in -spinMainThreadRunLoopUntil:onTarget:"}];
    }
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)performRead:(id)read
{
  [(TSKAccessController *)self p_readLock];
  (*(read + 2))(read);
  [(TSKAccessController *)self p_readUnlock];
}

- (void)performRead:(SEL)read withTarget:(id)target argument:(void *)argument
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TSKAccessController_performRead_withTarget_argument___block_invoke;
  v5[3] = &unk_279D476B8;
  v5[4] = target;
  v5[5] = read;
  v5[6] = argument;
  [(TSKAccessController *)self performRead:v5];
}

- (void)performRead:(SEL)read withTarget:(id)target argument:(void *)argument argument2:(void *)argument2
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__TSKAccessController_performRead_withTarget_argument_argument2___block_invoke;
  v6[3] = &unk_279D476E0;
  v6[4] = target;
  v6[5] = read;
  v6[6] = argument;
  v6[7] = argument2;
  [(TSKAccessController *)self performRead:v6];
}

- (void)performWrite:(id)write blockMainThread:(BOOL)thread
{
  threadCopy = thread;
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  [(TSKAccessController *)self p_writeLockAndBlockMainThread:threadCopy];
  (*(write + 2))(write);
  [(TSKAccessController *)self p_writeUnlock];
  [(TSKAccessController *)self p_dequeueWrite];
}

- (void)performWrite:(SEL)write withTarget:(id)target argument:(void *)argument
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TSKAccessController_performWrite_withTarget_argument___block_invoke;
  v5[3] = &unk_279D476B8;
  v5[4] = target;
  v5[5] = write;
  v5[6] = argument;
  [(TSKAccessController *)self performWrite:v5];
}

- (void)performRead:(SEL)read thenReadOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument
{
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  [(TSKAccessController *)self p_readLock];
  if (read)
  {
    [target performSelector:read withObject:argument];
  }

  v11 = [[TSKACReadArguments alloc] initWithSelector:thread target:target argument:argument];
  [(TSKAccessController *)self p_scheduleMainThreadRead:v11];

  [(TSKAccessController *)self p_readUnlock];
  [(TSKAccessController *)self p_dequeueWrite];
}

- (void)performRead:(SEL)read thenWrite:(SEL)write thenReadOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument passReadResultToMainThreadRead:(BOOL)threadRead
{
  threadReadCopy = threadRead;
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  if (read)
  {
    v15 = [objc_msgSend(target methodSignatureForSelector:{read), "methodReturnType"}];
    if (*v15 != 66 || v15[1])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController performRead:thenWrite:thenReadOnMainThread:withTarget:argument:passReadResultToMainThreadRead:]"];
      [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 393, @"Expected method that returns a BOOL for readSelector"}];
    }

    [(TSKAccessController *)self p_readLock];
    read = [target read];
    [(TSKAccessController *)self p_readUnlock];
    if (thread)
    {
      goto LABEL_6;
    }
  }

  else
  {
    read = 1;
    if (thread)
    {
LABEL_6:
      if (threadReadCopy)
      {
        v19 = [TSKACReadArguments alloc];
        v20 = -[TSKACReadArguments initWithSelector:target:argument:argument2:](v19, "initWithSelector:target:argument:argument2:", thread, target, argument, [MEMORY[0x277CCABB0] numberWithBool:read]);
      }

      else
      {
        v20 = [[TSKACReadArguments alloc] initWithSelector:thread target:target argument:argument];
      }

      v22 = v20;
      if (write)
      {
        v23 = read;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        goto LABEL_18;
      }

      if (v20)
      {
        [(TSKAccessController *)self p_scheduleMainThreadRead:v20];
      }

      goto LABEL_23;
    }
  }

  v21 = read ^ 1;
  if (!write)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = 0;
LABEL_18:
    [(TSKAccessController *)self p_writeLockAndBlockMainThread:1];
    [target performSelector:write withObject:argument];
    if (v22)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __117__TSKAccessController_performRead_thenWrite_thenReadOnMainThread_withTarget_argument_passReadResultToMainThreadRead___block_invoke;
      v24[3] = &unk_279D47708;
      v24[4] = self;
      v24[5] = v22;
      [(TSKAccessController *)self p_writeUnlockAndPerformWithMainThreadBlocked:v24];
    }
  }

LABEL_23:
  [(TSKAccessController *)self p_dequeueWrite];
}

void __117__TSKAccessController_performRead_thenWrite_thenReadOnMainThread_withTarget_argument_passReadResultToMainThreadRead___block_invoke(uint64_t a1)
{
  [*(a1 + 32) p_scheduleMainThreadRead:*(a1 + 40)];
  v2 = *(a1 + 40);
}

- (void)p_readLock
{
  if ([(TSKAccessController *)self p_hasWrite])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 489, @"can't acquire a read lock if we already have a write lock"}];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (self->_secondaryThreadWriting)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
      [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 493, @"trying to acquire read from MT while a secondary thread is writing"}];
    }
  }

  else
  {
    [(NSCondition *)self->_cond lock];
    v7 = pthread_self();
    v8 = v7;
    readerCount = self->_readerCount;
    if (readerCount)
    {
      p_count = &self->_readerInfo[0].count;
      v11 = self->_readerCount;
      do
      {
        if (*(p_count - 1) == v7)
        {
          v15 = 0;
          ++*p_count;
          goto LABEL_14;
        }

        p_count += 4;
        --v11;
      }

      while (v11);
      if (readerCount >= 0x40)
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
        [currentHandler3 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 517, @"Maximum number of readers reached"}];
        readerCount = self->_readerCount;
      }
    }

    self->_readerCount = readerCount + 1;
    v14 = self + 16 * readerCount;
    *(v14 + 32) = v8;
    v15 = 1;
    *(v14 + 66) = 1;
LABEL_14:
    [(NSCondition *)self->_cond unlock];
    if (v15)
    {
      pthread_rwlock_rdlock(&self->_rwLock);
    }
  }

  object = [(TSUWeakReference *)self->_delegate object];
  if (objc_opt_respondsToSelector())
  {

    [object didAcquireReadLock];
  }
}

- (BOOL)p_hasRead
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    return !self->_secondaryThreadWriting;
  }

  [(NSCondition *)self->_cond lock];
  v4 = pthread_self();
  readerCount = self->_readerCount;
  if (readerCount)
  {
    readerInfo = self->_readerInfo;
    v7 = 1;
    do
    {
      threadId = readerInfo->threadId;
      ++readerInfo;
      v8 = threadId;
      v3 = threadId == v4;
      if (v7 >= readerCount)
      {
        break;
      }

      ++v7;
    }

    while (v8 != v4);
  }

  else
  {
    v3 = 0;
  }

  [(NSCondition *)self->_cond unlock];
  return v3;
}

- (BOOL)p_hasWrite
{
  [(NSCondition *)self->_cond lock];
  v4 = [(NSMutableArray *)self->_writerQueue count]&& (v3 = [(NSMutableArray *)self->_writerQueue objectAtIndex:0], v3 == [(TSKAccessController *)self p_threadIdentifier]) && self->_writeHeld;
  [(NSCondition *)self->_cond unlock];
  return v4;
}

- (void)p_readUnlock
{
  object = [(TSUWeakReference *)self->_delegate object];
  if (objc_opt_respondsToSelector())
  {
    [object willRelinquishReadLock];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (self->_secondaryThreadWriting)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];

      [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:609 description:@"releasing read from MT when a secondary thread is writing"];
    }
  }

  else
  {
    [(NSCondition *)self->_cond lock];
    v7 = pthread_self();
    readerCount = self->_readerCount;
    if (readerCount)
    {
      v9 = 0;
      readerInfo = self->_readerInfo;
      while (readerInfo->threadId != v7)
      {
        ++v9;
        ++readerInfo;
        if (readerCount == v9)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 627, @"Trying to unlock read for a reader that doesn't hold read lock"}];
      v9 = 0xFFFFFFFFLL;
    }

    v13 = &self->_readerInfo[v9];
    count = v13->count;
    if (!count)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      [currentHandler3 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 629, @"Reader is in the list of readers but doesn't have any read locks held"}];
      count = v13->count;
    }

    v17 = count - 1;
    v13->count = v17;
    if (!v17)
    {
      v18 = self->_readerCount - 1;
      self->_readerCount = v18;
      *v13 = self->_readerInfo[v18];
      pthread_rwlock_unlock(&self->_rwLock);
    }

    [(NSCondition *)self->_cond unlock];
  }
}

- (void)p_asyncPerformSelectorOnMainThread:(SEL)thread withTarget:(id)target argument:(void *)argument
{
  argumentCopy = argument;
  v8 = [target methodSignatureForSelector:?];
  v9 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
  [v9 setTarget:target];
  [v9 setSelector:thread];
  if ([v8 numberOfArguments] >= 3)
  {
    [v9 setArgument:&argumentCopy atIndex:2];
  }

  [(NSCondition *)self->_cond lock];
  [(NSMutableArray *)self->_pendingMainThreadInvocations addObject:v9];
  CFRunLoopSourceSignal(self->_mainThreadPingSource);
  Main = CFRunLoopGetMain();
  CFRunLoopWakeUp(Main);
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
}

- (void)p_writeLockAndBlockMainThread:(BOOL)thread
{
  threadCopy = thread;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0 && -[TSKAccessController p_hasRead](self, "p_hasRead"))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeLockAndBlockMainThread:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 695, @"shouldn't have read while waiting on write"}];
  }

  pthread_rwlock_wrlock(&self->_rwLock);
  if (self->_writeHeld)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeLockAndBlockMainThread:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 700, @"Write mutex should be available; we are holding the write lock"}];
  }

  if (threadCopy && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(TSKAccessController *)self p_asyncPerformSelectorOnMainThread:sel_p_blockMainThreadForWrite withTarget:self argument:0];
    [(TSKAccessController *)self waitOnIdentifier:@"kTSKMainThreadBlockedIdentifier"];
    self->_writeBlockedMainThread = 1;
  }

  self->_writeHeld = 1;
}

- (void)p_writeUnlockAndPerformWithMainThreadBlocked:(id)blocked
{
  if (![(TSKAccessController *)self p_hasWrite])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeUnlockAndPerformWithMainThreadBlocked:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 719, @"Must already be holding the write mutex when unlocking write"}];
  }

  pthread_rwlock_unlock(&self->_rwLock);
  if (self->_writeBlockedMainThread)
  {
    [(TSKAccessController *)self signalIdentifier:@"kTSKWriteCompleteIdentifier"];
  }

  self->_writeHeld = 0;
  if (blocked)
  {
    (*(blocked + 2))(blocked);
  }

  if (self->_writeBlockedMainThread)
  {
    [(TSKAccessController *)self signalIdentifier:@"kTSKPostWriteCompleteIdentifier"];
  }

  self->_writeBlockedMainThread = 0;
}

- (void)p_enqueueWriteAndBlock
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (!self->_secondaryThreadWriting)
    {
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];
    v6 = @"main thread should be locked out while a secondary thread is writing";
    v7 = currentHandler;
    v8 = v4;
    v9 = 753;
  }

  else
  {
    if (![(TSKAccessController *)self p_hasRead])
    {
      goto LABEL_7;
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];
    v6 = @"shouldn't have read while waiting on write";
    v7 = currentHandler2;
    v8 = v11;
    v9 = 757;
  }

  [v7 handleFailureInFunction:v8 file:v5 lineNumber:v9 description:v6];
LABEL_7:
  [(NSCondition *)self->_cond lock];
  p_threadIdentifier = [(TSKAccessController *)self p_threadIdentifier];
  v13 = [(NSMutableArray *)self->_writerQueue indexOfObjectIdenticalTo:p_threadIdentifier];
  writerQueue = self->_writerQueue;
  if (v13)
  {
    [(NSMutableArray *)writerQueue addObject:p_threadIdentifier];
    while ([(NSMutableArray *)self->_writerQueue objectAtIndex:0]!= p_threadIdentifier)
    {
      -[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] distantFuture]);
    }

    if ([(NSMutableArray *)self->_writerQueue objectAtIndex:0]!= p_threadIdentifier)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
      [currentHandler3 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 787, @"Expected to block until correct thread was at queue head"}];
    }
  }

  else
  {
    [(NSMutableArray *)writerQueue insertObject:p_threadIdentifier atIndex:0];
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)p_dequeueWrite
{
  [(NSCondition *)self->_cond lock];
  v3 = [(NSMutableArray *)self->_writerQueue objectAtIndex:0];
  if (v3 != [(TSKAccessController *)self p_threadIdentifier])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_dequeueWrite]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 802, @"Dequeueing write for wrong thread"}];
  }

  [(NSMutableArray *)self->_writerQueue removeObjectAtIndex:0];
  if ([(NSMutableArray *)self->_writerQueue count])
  {
    [(TSKAccessController *)self p_signalThread:[(NSMutableArray *)self->_writerQueue objectAtIndex:0]];
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)p_scheduleMainThreadRead:(id)read
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    selector = [read selector];
    target = [read target];
    argument = [read argument];
    argument2 = [read argument2];

    [(TSKAccessController *)self performRead:selector withTarget:target argument:argument argument2:argument2];
  }

  else
  {
    [(TSKAccessController *)self p_asyncPerformSelectorOnMainThread:sel_p_performReadOnMainThread_ withTarget:self argument:read];

    [(TSKAccessController *)self waitOnIdentifier:@"kTSKMainThreadReadCompletedIdentifier"];
  }
}

- (void)p_performReadOnMainThread:(id)thread
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_performReadOnMainThread:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 838, @"p_performReadOnMainThread may only be called from main thread"}];
  }

  if (![(TSKAccessController *)self p_hasRead])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_performReadOnMainThread:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 839, @"should have read privs on the main thread"}];
  }

  [objc_msgSend(thread "target")];
  [(TSKAccessController *)self signalIdentifier:@"kTSKMainThreadReadCompletedIdentifier"];
}

- (void)p_flushPendingMainThreadBlocksQueueAcquiringLock:(BOOL)lock
{
  lockCopy = lock;
  selfCopy = self;
  if (lockCopy)
  {
    [(NSCondition *)self->_cond lock];
  }

  while ([(NSMutableArray *)self->_pendingMainThreadInvocations count])
  {
    v5 = [(NSMutableArray *)self->_pendingMainThreadInvocations objectAtIndex:0];
    [(NSMutableArray *)self->_pendingMainThreadInvocations removeObjectAtIndex:0];
    [(NSCondition *)self->_cond unlock];
    [v5 invoke];
    [(NSCondition *)self->_cond lock];
  }

  if (lockCopy)
  {
    [(NSCondition *)self->_cond unlock];
  }
}

- (BOOL)p_waitWithCondition:(id)condition untilDate:(id)date
{
  if ([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")] && -[NSMutableArray count](self->_pendingMainThreadInvocations, "count"))
  {
    [(TSKAccessController *)self p_flushPendingMainThreadBlocksQueueAcquiringLock:0];
    return 1;
  }

  else
  {
    v7 = [condition waitUntilDate:date];
    if ([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")])
    {
      [(TSKAccessController *)self p_flushPendingMainThreadBlocksQueueAcquiringLock:0];
    }
  }

  return v7;
}

- (void)p_signalThread:(id)thread
{
  if (thread)
  {
    [(NSCondition *)self->_cond broadcast];
  }
}

@end