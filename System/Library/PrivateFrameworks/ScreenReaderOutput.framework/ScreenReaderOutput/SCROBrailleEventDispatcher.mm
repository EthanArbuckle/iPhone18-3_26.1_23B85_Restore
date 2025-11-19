@interface SCROBrailleEventDispatcher
- (BOOL)isValid;
- (SCROBrailleEventDispatcher)initWithTarget:(id)a3;
- (void)_processQueue;
- (void)dealloc;
- (void)enqueueEvent:(id)a3;
- (void)invalidate;
- (void)start;
@end

@implementation SCROBrailleEventDispatcher

- (SCROBrailleEventDispatcher)initWithTarget:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCROBrailleEventDispatcher;
  v5 = [(SCROBrailleEventDispatcher *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    queueLock = v5->_queueLock;
    v5->_queueLock = v6;

    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v5->_target, v4);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    brailleEventQueue = v5->_brailleEventQueue;
    v5->_brailleEventQueue = v10;

    v5->_isValid = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(SCROBrailleEventDispatcher *)self invalidate];
  [(NSLock *)self->_queueLock lock];
  queueLock = self->_queueLock;
  self->_queueLock = 0;
  v4 = queueLock;

  [(NSLock *)v4 unlock];
  v5.receiver = self;
  v5.super_class = SCROBrailleEventDispatcher;
  [(SCROBrailleEventDispatcher *)&v5 dealloc];
}

- (void)start
{
  [(NSLock *)self->_queueLock lock];
  if (self->_isValid && !self->_runLoop && !self->_queueSource)
  {
    self->_runLoop = CFRunLoopGetCurrent();
    v4.version = 0;
    memset(&v4.retain, 0, 56);
    v4.info = self;
    v4.perform = _processQueue;
    v3 = CFRunLoopSourceCreate(0, 0, &v4);
    self->_queueSource = v3;
    CFRunLoopAddSource(self->_runLoop, v3, *MEMORY[0x277CBF058]);
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)invalidate
{
  [(NSLock *)self->_queueLock lock];
  self->_isValid = 0;
  queueSource = self->_queueSource;
  if (queueSource)
  {
    CFRunLoopSourceInvalidate(queueSource);
    CFRelease(self->_queueSource);
    self->_queueSource = 0;
  }

  brailleEventQueue = self->_brailleEventQueue;
  self->_brailleEventQueue = 0;

  queue = self->_queue;
  self->_queue = 0;

  self->_runLoop = 0;
  objc_storeWeak(&self->_target, 0);
  queueLock = self->_queueLock;

  [(NSLock *)queueLock unlock];
}

- (BOOL)isValid
{
  [(NSLock *)self->_queueLock lock];
  isValid = self->_isValid;
  [(NSLock *)self->_queueLock unlock];
  return isValid;
}

- (void)enqueueEvent:(id)a3
{
  v6 = a3;
  v4 = [v6 type];
  [(NSLock *)self->_queueLock lock];
  if (self->_queueSource && self->_runLoop)
  {
    if (v4)
    {
      p_queue = &self->_queue;
      if ([(NSMutableArray *)self->_queue count]>= 51)
      {
        [(NSMutableArray *)*p_queue removeObjectAtIndex:0];
      }
    }

    else
    {
      p_queue = &self->_brailleEventQueue;
    }

    [(NSMutableArray *)*p_queue addObject:v6];
    CFRunLoopSourceSignal(self->_queueSource);
    CFRunLoopWakeUp(self->_runLoop);
  }

  [(NSLock *)self->_queueLock unlock];
}

- (void)_processQueue
{
  v26 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_queueLock lock];
  v3 = [(NSMutableArray *)self->_brailleEventQueue copy];
  [(NSMutableArray *)self->_brailleEventQueue removeAllObjects];
  v4 = [(NSMutableArray *)self->_queue copy];
  [(NSMutableArray *)self->_queue removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [(NSLock *)self->_queueLock unlock];
  v6 = [MEMORY[0x277CBEB18] array];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__SCROBrailleEventDispatcher__processQueue__block_invoke;
  v20[3] = &unk_279B74528;
  v22 = v23;
  v7 = v6;
  v21 = v7;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__SCROBrailleEventDispatcher__processQueue__block_invoke_2;
  v18[3] = &unk_279B74550;
  v8 = WeakRetained;
  v19 = v8;
  [v3 enumerateObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v7 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v8 handleEvent:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(v23, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __43__SCROBrailleEventDispatcher__processQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 28)
  {
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) addObject:v3];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end