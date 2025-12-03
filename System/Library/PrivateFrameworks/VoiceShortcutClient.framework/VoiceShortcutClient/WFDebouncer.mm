@interface WFDebouncer
- (WFDebouncer)initWithDelay:(double)delay maximumDelay:(double)maximumDelay queue:(id)queue userInfo:(id)info unboundedFiringReasons:(BOOL)reasons;
- (void)addTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)fire;
- (void)poke;
- (void)pokeWithReason:(id)reason userInfo:(id)info;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)resetDelayTimer;
- (void)setPendingFire:(uint64_t)fire;
@end

@implementation WFDebouncer

- (void)removeTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WFDebouncer_removeTarget_action___block_invoke;
  block[3] = &unk_1E7B021A8;
  v10 = targetCopy;
  actionCopy = action;
  block[4] = self;
  v8 = targetCopy;
  dispatch_async(queue, block);
}

void __35__WFDebouncer_removeTarget_action___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (v2)
    {
      v3 = *(v2 + 72);
    }

    else
    {
      v3 = 0;
    }

    v7 = [v3 objectForKey:*(a1 + 40)];
    v4 = NSStringFromSelector(*(a1 + 48));
    [v7 removeObject:v4];
  }

  else
  {
    if (v2)
    {
      v5 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 40);

    [v5 removeObjectForKey:v6];
  }
}

- (void)addTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (targetCopy)
  {
    if (action)
    {
      goto LABEL_3;
    }

LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDebouncer.mm" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (self)
    {
      goto LABEL_4;
    }

LABEL_8:
    queue = 0;
    goto LABEL_5;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDebouncer.mm" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"target"}];

  if (!action)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!self)
  {
    goto LABEL_8;
  }

LABEL_4:
  queue = self->_queue;
LABEL_5:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__WFDebouncer_addTarget_action___block_invoke;
  block[3] = &unk_1E7B021A8;
  block[4] = self;
  v13 = targetCopy;
  actionCopy = action;
  v9 = targetCopy;
  dispatch_async(queue, block);
}

void __32__WFDebouncer_addTarget_action___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:*(a1 + 40)];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 72);
    }

    else
    {
      v7 = 0;
    }

    [v7 setObject:v5 forKey:*(a1 + 40)];
    v4 = v5;
  }

  v9 = v4;
  v8 = NSStringFromSelector(*(a1 + 48));
  [v9 addObject:v8];
}

- (void)fire
{
  v34 = *MEMORY[0x1E69E9840];
  [(WFDebouncer *)self setPendingFire:?];
  [(WFDebouncer *)self resetDelayTimer];
  if (self)
  {
    maximumDelayTimer = self->_maximumDelayTimer;
    if (maximumDelayTimer)
    {
      dispatch_source_cancel(maximumDelayTimer);
      v4 = self->_maximumDelayTimer;
    }

    else
    {
      v4 = 0;
    }

    self->_maximumDelayTimer = 0;

    firingReasonsQueue = self->_firingReasonsQueue;
    if (firingReasonsQueue)
    {
      if (firingReasonsQueue[5])
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:firingReasonsQueue[5]];
        while (firingReasonsQueue[5])
        {
          [v6 addObject:*(*(firingReasonsQueue[1] + ((firingReasonsQueue[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (firingReasonsQueue[4] & 0x1FFLL))];
          std::deque<WFDebouncerPokeReason * {__strong}>::pop_front(firingReasonsQueue);
        }

        v7 = [v6 copy];
        firingReasons = self->_firingReasons;
        self->_firingReasons = v7;
      }

      v9 = std::deque<WFDebouncerPokeReason * {__strong}>::~deque[abi:ne200100](firingReasonsQueue);
      MEMORY[0x1B273E980](v9, 0x1080C40BE8D5F09);
    }
  }

  self->_firingReasonsQueue = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_targetTable;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        if (self)
        {
          targetTable = self->_targetTable;
        }

        else
        {
          targetTable = 0;
        }

        v16 = targetTable;
        v17 = [(NSMapTable *)v16 objectForKey:v14, v24];

        v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v18)
        {
          v19 = *v25;
          do
          {
            v20 = 0;
            do
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v17);
              }

              [v14 performSelector:NSSelectorFromString(*(*(&v24 + 1) + 8 * v20++)) withObject:self];
            }

            while (v18 != v20);
            v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v18);
        }

        ++v13;
      }

      while (v13 != v11);
      v21 = [(NSMapTable *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v11 = v21;
    }

    while (v21);
  }

  v22 = self->_firingReasons;
  self->_firingReasons = 0;

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setPendingFire:(uint64_t)fire
{
  if (!fire)
  {
    return;
  }

  v2 = a2;
  if (*(fire + 9) != a2)
  {
    v5 = *(fire + 64);
    if (a2)
    {
      if (!v5)
      {
        v6 = os_transaction_create();
        v5 = *(fire + 64);
LABEL_12:
        *(fire + 64) = v6;
      }
    }

    else if (v5)
    {
      v6 = 0;
      goto LABEL_12;
    }

    *(fire + 9) = v2;
    return;
  }

  if (a2)
  {
    v4 = *(fire + 64);

    MEMORY[0x1EEE74830](v4);
  }
}

- (void)resetDelayTimer
{
  if (self)
  {
    v2 = *(self + 80);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v2 = *(self + 80);
    }

    *(self + 80) = 0;
  }
}

- (void)pokeWithReason:(id)reason userInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  v9 = [WFDebouncerPokeReason alloc];
  v10 = reasonCopy;
  v11 = infoCopy;
  if (v9)
  {
    v17.receiver = v9;
    v17.super_class = WFDebouncerPokeReason;
    v12 = [(WFDebouncer *)&v17 init];
    v9 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, reason);
      objc_storeStrong(&v9->_userInfo, info);
    }
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__WFDebouncer_pokeWithReason_userInfo___block_invoke;
  v15[3] = &unk_1E7B02180;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  dispatch_async(queue, v15);
}

uint64_t __39__WFDebouncer_pokeWithReason_userInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    operator new();
  }

  if ([v2 unboundedFiringReasons])
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (*(v4 + 40) != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v4 = 0;
  v6 = 0;
  if (MEMORY[0x28] == 10)
  {
LABEL_5:
    std::deque<WFDebouncerPokeReason * {__strong}>::pop_front(v4);
LABEL_7:
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = v6[1];
  v8 = v6[2];
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((v8 - v7) << 6) - 1;
  }

  v10 = v6[4];
  if (v9 == v6[5] + v10)
  {
    v11 = v10 >= 0x200;
    v12 = v10 - 512;
    if (!v11)
    {
      v13 = v6[3];
      v14 = v13 - *v6;
      if (v8 - v7 < v14)
      {
        operator new();
      }

      v15 = v14 >> 2;
      if (v13 == *v6)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<WFDebouncerPokeReason * {__strong}*>>(v16);
    }

    v6[4] = v12;
    v21 = *v7;
    v6[1] = v7 + 8;
    std::__split_buffer<WFDebouncerPokeReason * {__strong}*>::emplace_back<WFDebouncerPokeReason * {__strong}*&>(v6, &v21);
    v7 = v6[1];
    v8 = v6[2];
  }

  if (v8 == v7)
  {
    v18 = 0;
  }

  else
  {
    v17 = v6[5] + v6[4];
    v18 = (*&v7[(v17 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v17 & 0x1FF));
  }

  *v18 = *(a1 + 40);
  ++v6[5];
  v19 = *(a1 + 32);

  return [v19 poke];
}

- (void)poke
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__WFDebouncer_poke__block_invoke;
  block[3] = &unk_1E7B02158;
  block[4] = self;
  dispatch_async(queue, block);
}

void __19__WFDebouncer_poke__block_invoke(uint64_t a1)
{
  [(WFDebouncer *)*(a1 + 32) setPendingFire:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    [(WFDebouncer *)*(a1 + 32) resetDelayTimer];
    objc_initWeak(&location, v2);
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 56));
    [v2 delay];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    dispatch_source_set_timer(v3, v5, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __32__WFDebouncer_restartDelayTimer__block_invoke;
    v19 = &unk_1E7B02828;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v3, &v16);
    v6 = *(v2 + 80);
    *(v2 + 80) = v3;
    v7 = v3;

    dispatch_resume(v7);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 88);
      if (v9)
      {
      }

      else
      {
        [v8 maximumDelay];
        if (v10 != 0.0)
        {
          objc_initWeak(&location, v8);
          v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v8 + 56));
          [v8 maximumDelay];
          v13 = dispatch_time(0, (v12 * 1000000000.0));
          dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __48__WFDebouncer_startMaximumDelayTimerIfNecessary__block_invoke;
          v19 = &unk_1E7B02828;
          objc_copyWeak(&v20, &location);
          dispatch_source_set_event_handler(v11, &v16);
          v14 = *(v8 + 88);
          *(v8 + 88) = v11;
          v15 = v11;

          dispatch_activate(v15);
          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __48__WFDebouncer_startMaximumDelayTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fire];
}

void __32__WFDebouncer_restartDelayTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fire];
}

- (void)dealloc
{
  if (self)
  {
    firingReasonsQueue = self->_firingReasonsQueue;
    if (firingReasonsQueue)
    {
      v4 = std::deque<WFDebouncerPokeReason * {__strong}>::~deque[abi:ne200100](firingReasonsQueue);
      MEMORY[0x1B273E980](v4, 0x1080C40BE8D5F09);
    }
  }

  v5.receiver = self;
  v5.super_class = WFDebouncer;
  [(WFDebouncer *)&v5 dealloc];
}

- (WFDebouncer)initWithDelay:(double)delay maximumDelay:(double)maximumDelay queue:(id)queue userInfo:(id)info unboundedFiringReasons:(BOOL)reasons
{
  queueCopy = queue;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = WFDebouncer;
  v14 = [(WFDebouncer *)&v26 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    v14->_delay = delay;
    v14->_maximumDelay = maximumDelay;
    if (queueCopy)
    {
      v17 = queueCopy;
      queue = v16->_queue;
      v16->_queue = v17;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_attr_make_with_qos_class(queue, QOS_CLASS_UTILITY, 0);
      v20 = dispatch_queue_create("com.apple.shortcuts.WFDebouncer", v19);
      v21 = v16->_queue;
      v16->_queue = v20;
    }

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    targetTable = v16->_targetTable;
    v16->_targetTable = weakToStrongObjectsMapTable;

    objc_storeStrong(&v15->_userInfo, info);
    v16->_unboundedFiringReasons = reasons;
    v24 = v16;
  }

  return v16;
}

@end