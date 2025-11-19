@interface TSKAccessController
- (BOOL)p_hasRead;
- (BOOL)p_hasWrite;
- (BOOL)p_waitWithCondition:(id)a3 untilDate:(id)a4;
- (BOOL)waitOnIdentifier:(id)a3 untilDate:(id)a4 releaseReadWhileWaiting:(BOOL)a5;
- (TSKAccessController)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)p_asyncPerformSelectorOnMainThread:(SEL)a3 withTarget:(id)a4 argument:(void *)a5;
- (void)p_dequeueWrite;
- (void)p_enqueueWriteAndBlock;
- (void)p_flushPendingMainThreadBlocksQueueAcquiringLock:(BOOL)a3;
- (void)p_performReadOnMainThread:(id)a3;
- (void)p_readLock;
- (void)p_readUnlock;
- (void)p_scheduleMainThreadRead:(id)a3;
- (void)p_signalThread:(id)a3;
- (void)p_writeLockAndBlockMainThread:(BOOL)a3;
- (void)p_writeUnlockAndPerformWithMainThreadBlocked:(id)a3;
- (void)performRead:(SEL)a3 thenReadOnMainThread:(SEL)a4 withTarget:(id)a5 argument:(void *)a6;
- (void)performRead:(SEL)a3 thenWrite:(SEL)a4 thenReadOnMainThread:(SEL)a5 withTarget:(id)a6 argument:(void *)a7 passReadResultToMainThreadRead:(BOOL)a8;
- (void)performRead:(SEL)a3 withTarget:(id)a4 argument:(void *)a5;
- (void)performRead:(SEL)a3 withTarget:(id)a4 argument:(void *)a5 argument2:(void *)a6;
- (void)performRead:(id)a3;
- (void)performWrite:(SEL)a3 withTarget:(id)a4 argument:(void *)a5;
- (void)performWrite:(id)a3 blockMainThread:(BOOL)a4;
- (void)signalIdentifier:(id)a3;
- (void)spinMainThreadRunLoopUntil:(SEL)a3 onTarget:(id)a4;
- (void)waitOnIdentifier:(id)a3;
@end

@implementation TSKAccessController

- (TSKAccessController)initWithDelegate:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSKAccessController;
  v4 = [(TSKAccessController *)&v8 init];
  if (v4)
  {
    v4->_delegate = [objc_alloc(MEMORY[0x277D6C380]) initWithObject:a3];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 147, @"access controller being deallocated when it is still in use"}];
  }

  if ([(NSMutableDictionary *)self->_signalIdentifiers count])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController dealloc]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 150, @"access controller being deallocated when it is still in use"}];
  }

  CFRunLoopSourceInvalidate(self->_mainThreadPingSource);
  pthread_rwlock_destroy(&self->_rwLock);
  CFRelease(self->_mainThreadPingSource);

  v7.receiver = self;
  v7.super_class = TSKAccessController;
  [(TSKAccessController *)&v7 dealloc];
}

- (void)waitOnIdentifier:(id)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantFuture];

  [(TSKAccessController *)self waitOnIdentifier:a3 untilDate:v5 releaseReadWhileWaiting:0];
}

- (BOOL)waitOnIdentifier:(id)a3 untilDate:(id)a4 releaseReadWhileWaiting:(BOOL)a5
{
  if (a5)
  {
    if (![(TSKAccessController *)self p_hasRead])
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 179, @"shoulnd't set releaseRead when we're not holding a read lock"}];
    }

    if ([(TSKAccessController *)self p_hasRead])
    {
      if (![MEMORY[0x277CCACC8] isMainThread])
      {
        [(TSKAccessController *)self p_readUnlock];
        if ([(TSKAccessController *)self p_hasRead])
        {
          v24 = [MEMORY[0x277D6C290] currentHandler];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
          [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 189, @"failed to release read privs"}];
        }

        v12 = 1;
        goto LABEL_9;
      }

      if (self->_secondaryThreadWriting)
      {
        v10 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
        [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 184, @"we shouldn't have read privs if a secondary thread is writing"}];
      }
    }
  }

  v12 = 0;
LABEL_9:
  if ([(TSKAccessController *)self p_hasWrite])
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 195, @"waiting on an identifier with write lock held, deadlock likely in our future"}];
  }

  [(NSCondition *)self->_cond lock];
  if ([(NSMutableDictionary *)self->_waitIdentifiers objectForKey:a3])
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 200, @"multiple threads cannot wait on the same identifier simultaneously"}];
  }

  -[NSMutableDictionary setObject:forKey:](self->_waitIdentifiers, "setObject:forKey:", [MEMORY[0x277CCACC8] currentThread], a3);
  while (1)
  {
    v17 = [(NSMutableDictionary *)self->_signalIdentifiers objectForKey:a3];
    if (v17)
    {
      break;
    }

    if (![(TSKAccessController *)self p_waitWithCondition:self->_cond untilDate:a4])
    {
      goto LABEL_20;
    }
  }

  v18 = [(NSMutableDictionary *)self->_signalIdentifiers objectForKey:a3];
  if (!v18)
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 213, @"expect to have a signaling thread if we were signaled"}];
  }

  [(NSMutableDictionary *)self->_signalIdentifiers removeObjectForKey:a3];
  [(TSKAccessController *)self p_signalThread:v18];
LABEL_20:
  [(NSMutableDictionary *)self->_waitIdentifiers removeObjectForKey:a3];
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
  if (v12)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v21 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController waitOnIdentifier:untilDate:releaseReadWhileWaiting:]"];
      [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 226, @"should only reacquire read for secondary threads"}];
    }

    [(TSKAccessController *)self p_readLock];
  }

  return v17 != 0;
}

- (void)signalIdentifier:(id)a3
{
  [(NSCondition *)self->_cond lock];
  if ([(NSMutableDictionary *)self->_signalIdentifiers objectForKey:a3])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController signalIdentifier:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 237, @"multiple threads cannot signal the same identifier simultaneously"}];
  }

  -[NSMutableDictionary setObject:forKey:](self->_signalIdentifiers, "setObject:forKey:", [MEMORY[0x277CCACC8] currentThread], a3);
  v7 = [(NSMutableDictionary *)self->_waitIdentifiers objectForKey:a3];
  if (v7)
  {
    [(TSKAccessController *)self p_signalThread:v7];
  }

  while ([(NSMutableDictionary *)self->_signalIdentifiers objectForKey:a3])
  {
    -[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] distantFuture]);
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)spinMainThreadRunLoopUntil:(SEL)a3 onTarget:(id)a4
{
  [(NSCondition *)self->_cond lock];
  while (![a4 performSelector:a3])
  {
    if (!-[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5]))
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController spinMainThreadRunLoopUntil:onTarget:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 279, @"we should never timeout in -spinMainThreadRunLoopUntil:onTarget:"}];
    }
  }

  cond = self->_cond;

  [(NSCondition *)cond unlock];
}

- (void)performRead:(id)a3
{
  [(TSKAccessController *)self p_readLock];
  (*(a3 + 2))(a3);
  [(TSKAccessController *)self p_readUnlock];
}

- (void)performRead:(SEL)a3 withTarget:(id)a4 argument:(void *)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TSKAccessController_performRead_withTarget_argument___block_invoke;
  v5[3] = &unk_279D476B8;
  v5[4] = a4;
  v5[5] = a3;
  v5[6] = a5;
  [(TSKAccessController *)self performRead:v5];
}

- (void)performRead:(SEL)a3 withTarget:(id)a4 argument:(void *)a5 argument2:(void *)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__TSKAccessController_performRead_withTarget_argument_argument2___block_invoke;
  v6[3] = &unk_279D476E0;
  v6[4] = a4;
  v6[5] = a3;
  v6[6] = a5;
  v6[7] = a6;
  [(TSKAccessController *)self performRead:v6];
}

- (void)performWrite:(id)a3 blockMainThread:(BOOL)a4
{
  v4 = a4;
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  [(TSKAccessController *)self p_writeLockAndBlockMainThread:v4];
  (*(a3 + 2))(a3);
  [(TSKAccessController *)self p_writeUnlock];
  [(TSKAccessController *)self p_dequeueWrite];
}

- (void)performWrite:(SEL)a3 withTarget:(id)a4 argument:(void *)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TSKAccessController_performWrite_withTarget_argument___block_invoke;
  v5[3] = &unk_279D476B8;
  v5[4] = a4;
  v5[5] = a3;
  v5[6] = a5;
  [(TSKAccessController *)self performWrite:v5];
}

- (void)performRead:(SEL)a3 thenReadOnMainThread:(SEL)a4 withTarget:(id)a5 argument:(void *)a6
{
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  [(TSKAccessController *)self p_readLock];
  if (a3)
  {
    [a5 performSelector:a3 withObject:a6];
  }

  v11 = [[TSKACReadArguments alloc] initWithSelector:a4 target:a5 argument:a6];
  [(TSKAccessController *)self p_scheduleMainThreadRead:v11];

  [(TSKAccessController *)self p_readUnlock];
  [(TSKAccessController *)self p_dequeueWrite];
}

- (void)performRead:(SEL)a3 thenWrite:(SEL)a4 thenReadOnMainThread:(SEL)a5 withTarget:(id)a6 argument:(void *)a7 passReadResultToMainThreadRead:(BOOL)a8
{
  v8 = a8;
  [(TSKAccessController *)self p_enqueueWriteAndBlock];
  if (a3)
  {
    v15 = [objc_msgSend(a6 methodSignatureForSelector:{a3), "methodReturnType"}];
    if (*v15 != 66 || v15[1])
    {
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController performRead:thenWrite:thenReadOnMainThread:withTarget:argument:passReadResultToMainThreadRead:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 393, @"Expected method that returns a BOOL for readSelector"}];
    }

    [(TSKAccessController *)self p_readLock];
    v18 = [a6 a3];
    [(TSKAccessController *)self p_readUnlock];
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 1;
    if (a5)
    {
LABEL_6:
      if (v8)
      {
        v19 = [TSKACReadArguments alloc];
        v20 = -[TSKACReadArguments initWithSelector:target:argument:argument2:](v19, "initWithSelector:target:argument:argument2:", a5, a6, a7, [MEMORY[0x277CCABB0] numberWithBool:v18]);
      }

      else
      {
        v20 = [[TSKACReadArguments alloc] initWithSelector:a5 target:a6 argument:a7];
      }

      v22 = v20;
      if (a4)
      {
        v23 = v18;
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

  v21 = v18 ^ 1;
  if (!a4)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = 0;
LABEL_18:
    [(TSKAccessController *)self p_writeLockAndBlockMainThread:1];
    [a6 performSelector:a4 withObject:a7];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 489, @"can't acquire a read lock if we already have a write lock"}];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (self->_secondaryThreadWriting)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 493, @"trying to acquire read from MT while a secondary thread is writing"}];
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
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readLock]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 517, @"Maximum number of readers reached"}];
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

  v16 = [(TSUWeakReference *)self->_delegate object];
  if (objc_opt_respondsToSelector())
  {

    [v16 didAcquireReadLock];
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
  v3 = [(TSUWeakReference *)self->_delegate object];
  if (objc_opt_respondsToSelector())
  {
    [v3 willRelinquishReadLock];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (self->_secondaryThreadWriting)
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];

      [v4 handleFailureInFunction:v5 file:v6 lineNumber:609 description:@"releasing read from MT when a secondary thread is writing"];
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
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 627, @"Trying to unlock read for a reader that doesn't hold read lock"}];
      v9 = 0xFFFFFFFFLL;
    }

    v13 = &self->_readerInfo[v9];
    count = v13->count;
    if (!count)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_readUnlock]"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 629, @"Reader is in the list of readers but doesn't have any read locks held"}];
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

- (void)p_asyncPerformSelectorOnMainThread:(SEL)a3 withTarget:(id)a4 argument:(void *)a5
{
  v11 = a5;
  v8 = [a4 methodSignatureForSelector:?];
  v9 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
  [v9 setTarget:a4];
  [v9 setSelector:a3];
  if ([v8 numberOfArguments] >= 3)
  {
    [v9 setArgument:&v11 atIndex:2];
  }

  [(NSCondition *)self->_cond lock];
  [(NSMutableArray *)self->_pendingMainThreadInvocations addObject:v9];
  CFRunLoopSourceSignal(self->_mainThreadPingSource);
  Main = CFRunLoopGetMain();
  CFRunLoopWakeUp(Main);
  [(NSCondition *)self->_cond broadcast];
  [(NSCondition *)self->_cond unlock];
}

- (void)p_writeLockAndBlockMainThread:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0 && -[TSKAccessController p_hasRead](self, "p_hasRead"))
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeLockAndBlockMainThread:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 695, @"shouldn't have read while waiting on write"}];
  }

  pthread_rwlock_wrlock(&self->_rwLock);
  if (self->_writeHeld)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeLockAndBlockMainThread:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 700, @"Write mutex should be available; we are holding the write lock"}];
  }

  if (v3 && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(TSKAccessController *)self p_asyncPerformSelectorOnMainThread:sel_p_blockMainThreadForWrite withTarget:self argument:0];
    [(TSKAccessController *)self waitOnIdentifier:@"kTSKMainThreadBlockedIdentifier"];
    self->_writeBlockedMainThread = 1;
  }

  self->_writeHeld = 1;
}

- (void)p_writeUnlockAndPerformWithMainThreadBlocked:(id)a3
{
  if (![(TSKAccessController *)self p_hasWrite])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_writeUnlockAndPerformWithMainThreadBlocked:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 719, @"Must already be holding the write mutex when unlocking write"}];
  }

  pthread_rwlock_unlock(&self->_rwLock);
  if (self->_writeBlockedMainThread)
  {
    [(TSKAccessController *)self signalIdentifier:@"kTSKWriteCompleteIdentifier"];
  }

  self->_writeHeld = 0;
  if (a3)
  {
    (*(a3 + 2))(a3);
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

    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];
    v6 = @"main thread should be locked out while a secondary thread is writing";
    v7 = v3;
    v8 = v4;
    v9 = 753;
  }

  else
  {
    if (![(TSKAccessController *)self p_hasRead])
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"];
    v6 = @"shouldn't have read while waiting on write";
    v7 = v10;
    v8 = v11;
    v9 = 757;
  }

  [v7 handleFailureInFunction:v8 file:v5 lineNumber:v9 description:v6];
LABEL_7:
  [(NSCondition *)self->_cond lock];
  v12 = [(TSKAccessController *)self p_threadIdentifier];
  v13 = [(NSMutableArray *)self->_writerQueue indexOfObjectIdenticalTo:v12];
  writerQueue = self->_writerQueue;
  if (v13)
  {
    [(NSMutableArray *)writerQueue addObject:v12];
    while ([(NSMutableArray *)self->_writerQueue objectAtIndex:0]!= v12)
    {
      -[TSKAccessController p_waitWithCondition:untilDate:](self, "p_waitWithCondition:untilDate:", self->_cond, [MEMORY[0x277CBEAA8] distantFuture]);
    }

    if ([(NSMutableArray *)self->_writerQueue objectAtIndex:0]!= v12)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_enqueueWriteAndBlock]"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 787, @"Expected to block until correct thread was at queue head"}];
    }
  }

  else
  {
    [(NSMutableArray *)writerQueue insertObject:v12 atIndex:0];
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)p_dequeueWrite
{
  [(NSCondition *)self->_cond lock];
  v3 = [(NSMutableArray *)self->_writerQueue objectAtIndex:0];
  if (v3 != [(TSKAccessController *)self p_threadIdentifier])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_dequeueWrite]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 802, @"Dequeueing write for wrong thread"}];
  }

  [(NSMutableArray *)self->_writerQueue removeObjectAtIndex:0];
  if ([(NSMutableArray *)self->_writerQueue count])
  {
    [(TSKAccessController *)self p_signalThread:[(NSMutableArray *)self->_writerQueue objectAtIndex:0]];
  }

  [(NSCondition *)self->_cond unlock];
}

- (void)p_scheduleMainThreadRead:(id)a3
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [a3 selector];
    v6 = [a3 target];
    v7 = [a3 argument];
    v8 = [a3 argument2];

    [(TSKAccessController *)self performRead:v5 withTarget:v6 argument:v7 argument2:v8];
  }

  else
  {
    [(TSKAccessController *)self p_asyncPerformSelectorOnMainThread:sel_p_performReadOnMainThread_ withTarget:self argument:a3];

    [(TSKAccessController *)self waitOnIdentifier:@"kTSKMainThreadReadCompletedIdentifier"];
  }
}

- (void)p_performReadOnMainThread:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_performReadOnMainThread:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 838, @"p_performReadOnMainThread may only be called from main thread"}];
  }

  if (![(TSKAccessController *)self p_hasRead])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_performReadOnMainThread:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 839, @"should have read privs on the main thread"}];
  }

  [objc_msgSend(a3 "target")];
  [(TSKAccessController *)self signalIdentifier:@"kTSKMainThreadReadCompletedIdentifier"];
}

- (void)p_flushPendingMainThreadBlocksQueueAcquiringLock:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v3)
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

  if (v3)
  {
    [(NSCondition *)self->_cond unlock];
  }
}

- (BOOL)p_waitWithCondition:(id)a3 untilDate:(id)a4
{
  if ([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")] && -[NSMutableArray count](self->_pendingMainThreadInvocations, "count"))
  {
    [(TSKAccessController *)self p_flushPendingMainThreadBlocksQueueAcquiringLock:0];
    return 1;
  }

  else
  {
    v7 = [a3 waitUntilDate:a4];
    if ([objc_msgSend(MEMORY[0x277CCACC8] "currentThread")])
    {
      [(TSKAccessController *)self p_flushPendingMainThreadBlocksQueueAcquiringLock:0];
    }
  }

  return v7;
}

- (void)p_signalThread:(id)a3
{
  if (a3)
  {
    [(NSCondition *)self->_cond broadcast];
  }
}

@end