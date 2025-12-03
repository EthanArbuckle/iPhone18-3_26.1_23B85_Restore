@interface PFCoalescer
+ (PFCoalescer)coalescerWithLabel:(id)label queue:(id)queue action:(id)action;
+ (PFCoalescer)coalescerWithLabel:(id)label target:(id)target buffer:(id)buffer queue:(id)queue bufferDrainer:(id)drainer action:(id)action;
+ (PFCoalescer)coalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action;
+ (id)arrayCoalescerWithLabel:(id)label queue:(id)queue action:(id)action;
+ (id)arrayCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action;
+ (id)dictionaryCoalescerWithLabel:(id)label queue:(id)queue action:(id)action;
+ (id)dictionaryCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action;
+ (id)mutableContainerCoalescerWithLabel:(id)label container:(id)container queue:(id)queue action:(id)action;
+ (id)mutableContainerCoalescerWithLabel:(id)label target:(id)target container:(id)container queue:(id)queue action:(id)action;
+ (id)setCoalescerWithLabel:(id)label queue:(id)queue action:(id)action;
+ (id)setCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action;
- (PFCoalescer)init;
- (PFCoalescer)initWithLabel:(id)label target:(id)target buffer:(id)buffer queue:(id)queue bufferDrainer:(id)drainer action:(id)action;
- (id)stateCaptureDictionary;
- (id)target;
- (void)_resetWhileLocked;
- (void)performEventActionWithTarget:(id)target;
- (void)reset;
- (void)resetAndShutDown;
- (void)update:(id)update;
@end

@implementation PFCoalescer

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

id __45__PFCoalescer_mutableCollectionBufferDrainer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  [v2 removeAllObjects];

  return v3;
}

- (id)stateCaptureDictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_label forKeyedSubscript:@"label"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v21 = dictionary;
  [dictionary setObject:v4 forKeyedSubscript:@"state"];

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = [(PFCoalescerContext *)self->_context pendingActivityTokensSnapshot];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v27[0] = @"reason";
        reason = [v10 reason];
        v28[0] = reason;
        v27[1] = @"ageTimeInterval";
        v12 = MEMORY[0x1E696AD98];
        date = [MEMORY[0x1E695DF00] date];
        creationDate = [v10 creationDate];
        [date timeIntervalSinceDate:creationDate];
        v15 = [v12 numberWithDouble:?];
        v28[1] = v15;
        v27[2] = @"callStackReturnAddresses";
        callStackReturnAddresses = [v10 callStackReturnAddresses];
        v28[2] = callStackReturnAddresses;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

        [array addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  [v21 setObject:array forKeyedSubscript:@"pendingActivityTokens"];
  [v21 setObject:selfCopy->_lastTransactionStartDate forKeyedSubscript:@"lastTransactionStartDate"];
  [v21 setObject:selfCopy->_lastTransactionEndDate forKeyedSubscript:@"lastTransactionEndDate"];

  v18 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_resetWhileLocked
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  ++self->_resetSequenceNumber;
  if (self->_buffer)
  {
    snapshotAndDrainHandler = self->_snapshotAndDrainHandler;
    if (snapshotAndDrainHandler)
    {
      v4 = snapshotAndDrainHandler[2]();
    }
  }

  context = self->_context;

  [(PFCoalescerContext *)context cancelPendingActivityTokens];
}

- (void)resetAndShutDown
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PFCoalescer_resetAndShutDown__block_invoke;
  block[3] = &unk_1E8563900;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void *__31__PFCoalescer_resetAndShutDown__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[18] != 3)
  {
    result = [result _resetWhileLocked];
    *(*(a1 + 32) + 144) = 3;
  }

  return result;
}

- (void)reset
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__PFCoalescer_reset__block_invoke;
  block[3] = &unk_1E8563900;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void *__20__PFCoalescer_reset__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[18] != 3)
  {
    result = [result _resetWhileLocked];
    *(*(a1 + 32) + 144) = 0;
  }

  return result;
}

- (void)update:(id)update
{
  updateCopy = update;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__PFCoalescer_update___block_invoke;
  block[3] = &unk_1E8563A18;
  block[4] = self;
  v13 = &v14;
  v6 = updateCopy;
  v12 = v6;
  dispatch_sync(isolationQueue, block);
  if ((v15[3] & 1) == 0)
  {
    if (self->_initialDelay != 0.0)
    {
      v7 = self->_isolationQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __22__PFCoalescer_update___block_invoke_2;
      v10[3] = &unk_1E8563900;
      v10[4] = self;
      dispatch_sync(v7, v10);
    }

    v8 = self->_isolationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __22__PFCoalescer_update___block_invoke_4;
    v9[3] = &unk_1E8563900;
    v9[4] = self;
    dispatch_sync(v8, v9);
    dispatch_source_merge_data(self->_source, 1uLL);
  }

  _Block_object_dispose(&v14, 8);
}

void __22__PFCoalescer_update___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[18];
  if (v3 == 3)
  {
    *(*(a1[6] + 8) + 24) = 1;
    return;
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))(v4, v2[10]);
    v2 = a1[4];
    v3 = v2[18];
  }

  if (v3 != 2)
  {
    if (v3)
    {
      return;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PFCoalescer %p %@", v2, v2[8]];
    [v5 UTF8String];
    v6 = os_transaction_create();
    v7 = a1[4];
    v8 = *(v7 + 152);
    *(v7 + 152) = v6;

    v9 = [MEMORY[0x1E695DF00] now];
    v10 = a1[4];
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    v2 = a1[4];
  }

  v2[18] = 1;
}

void __22__PFCoalescer_update___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 49) & 1) == 0)
  {
    *(v1 + 49) = 1;
    v2 = *(a1 + 32);
    v3 = *(v2 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__PFCoalescer_update___block_invoke_3;
    block[3] = &unk_1E8563900;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)performEventActionWithTarget:(id)target
{
  targetCopy = target;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy_;
  v14[4] = __Block_byref_object_dispose_;
  v15 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PFCoalescer_performEventActionWithTarget___block_invoke;
  block[3] = &unk_1E85639A0;
  block[4] = self;
  block[5] = &v16;
  block[6] = v14;
  dispatch_sync(isolationQueue, block);
  if ((v17[3] & 1) == 0)
  {
    [(PFCoalescerContext *)self->_context setCoalescedUpdatesCount:dispatch_source_get_data(self->_source)];
    targetQueue = self->_targetQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PFCoalescer_performEventActionWithTarget___block_invoke_2;
    v10[3] = &unk_1E85639C8;
    v10[4] = self;
    v11 = targetCopy;
    v12 = v14;
    dispatch_sync(targetQueue, v10);
    dispatch_suspend(self->_source);
    context = self->_context;
    v8 = self->_isolationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PFCoalescer_performEventActionWithTarget___block_invoke_3;
    v9[3] = &unk_1E8563900;
    v9[4] = self;
    [(PFCoalescerContext *)context notifyActivityTokenCompletionOnQueue:v8 handler:v9];
  }

  _Block_object_dispose(v14, 8);

  _Block_object_dispose(&v16, 8);
}

void __44__PFCoalescer_performEventActionWithTarget___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[2] == v2[1])
  {
    if (v2[10])
    {
      v3 = v2[15];
      if (v3)
      {
        v4 = (*(v3 + 16))();
        v5 = *(a1[6] + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;

        v2 = a1[4];
      }
    }

    if (v2[18] == 1)
    {
      v2[18] = 2;
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void __44__PFCoalescer_performEventActionWithTarget___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(v4 + 136);
  (*(*(v4 + 128) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __44__PFCoalescer_performEventActionWithTarget___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 49) = 0;
  v1 = *(a1 + 32);
  if (*(v1 + 144) == 2)
  {
    *(v1 + 144) = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    *(v3 + 152) = 0;

    v5 = [MEMORY[0x1E695DF00] now];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v1 = *(a1 + 32);
  }

  v8 = *(v1 + 112);

  dispatch_resume(v8);
}

- (PFCoalescer)initWithLabel:(id)label target:(id)target buffer:(id)buffer queue:(id)queue bufferDrainer:(id)drainer action:(id)action
{
  labelCopy = label;
  targetCopy = target;
  bufferCopy = buffer;
  queueCopy = queue;
  drainerCopy = drainer;
  actionCopy = action;
  v21 = actionCopy;
  if (labelCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    if (v21)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  v49.receiver = self;
  v49.super_class = PFCoalescer;
  v22 = [(PFCoalescer *)&v49 init];
  v23 = v22;
  if (v22)
  {
    [(PFCoalescer *)v22 setTarget:targetCopy];
    [(PFCoalescer *)v23 setUsesTarget:targetCopy != 0];
    v45 = bufferCopy;
    [(PFCoalescer *)v23 setBuffer:bufferCopy];
    [(PFCoalescer *)v23 setSnapshotAndDrainHandler:drainerCopy];
    [(PFCoalescer *)v23 setAction:v21];
    [(PFCoalescer *)v23 setLabel:labelCopy];
    v24 = [@"coalescer-" stringByAppendingString:labelCopy];
    uTF8String = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_BACKGROUND, 0);
    v28 = dispatch_queue_create(uTF8String, v27);
    [(PFCoalescer *)v23 setSourceQueue:v28];

    v29 = [@"coalescer-buffer-" stringByAppendingString:labelCopy];
    uTF8String2 = [v29 UTF8String];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_BACKGROUND, 0);
    v33 = dispatch_queue_create(uTF8String2, v32);
    [(PFCoalescer *)v23 setIsolationQueue:v33];

    if (queueCopy)
    {
      [(PFCoalescer *)v23 setTargetQueue:queueCopy];
    }

    else
    {
      v34 = dispatch_get_global_queue(9, 0);
      [(PFCoalescer *)v23 setTargetQueue:v34];
    }

    sourceQueue = [(PFCoalescer *)v23 sourceQueue];
    v36 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, sourceQueue);
    [(PFCoalescer *)v23 setSource:v36];

    v37 = [[PFCoalescerContext alloc] initWithCoalescer:v23];
    [(PFCoalescer *)v23 setContext:v37];

    objc_initWeak(&location, v23);
    source = [(PFCoalescer *)v23 source];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __70__PFCoalescer_initWithLabel_target_buffer_queue_bufferDrainer_action___block_invoke;
    handler[3] = &unk_1E8563978;
    objc_copyWeak(&v47, &location);
    dispatch_source_set_event_handler(source, handler);

    source2 = [(PFCoalescer *)v23 source];
    dispatch_resume(source2);

    v40 = [[PFStateCaptureHandler alloc] initWithProvider:v23];
    stateCaptureHandler = v23->_stateCaptureHandler;
    v23->_stateCaptureHandler = v40;

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
    bufferCopy = v45;
  }

  return v23;
}

void __70__PFCoalescer_initWithLabel_target_buffer_queue_bufferDrainer_action___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained usesTarget])
  {
    v1 = [WeakRetained target];
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = WeakRetained;
  if (WeakRetained && !v2)
  {
    v4 = [WeakRetained target];
    if (![WeakRetained usesTarget] || v4)
    {
      [WeakRetained performEventActionWithTarget:v4];
    }

    v3 = WeakRetained;
  }
}

- (PFCoalescer)init
{
  v5.receiver = self;
  v5.super_class = PFCoalescer;
  v2 = [(PFCoalescer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PFCoalescer *)v2 setState:0];
  }

  return v3;
}

+ (id)arrayCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action
{
  v10 = MEMORY[0x1E695DF70];
  actionCopy = action;
  queueCopy = queue;
  targetCopy = target;
  labelCopy = label;
  array = [v10 array];
  v16 = [self mutableContainerCoalescerWithLabel:labelCopy target:targetCopy container:array queue:queueCopy action:actionCopy];

  return v16;
}

+ (id)arrayCoalescerWithLabel:(id)label queue:(id)queue action:(id)action
{
  v8 = MEMORY[0x1E695DF70];
  actionCopy = action;
  queueCopy = queue;
  labelCopy = label;
  array = [v8 array];
  v13 = [self mutableContainerCoalescerWithLabel:labelCopy container:array queue:queueCopy action:actionCopy];

  return v13;
}

+ (id)dictionaryCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action
{
  v10 = MEMORY[0x1E695DF90];
  actionCopy = action;
  queueCopy = queue;
  targetCopy = target;
  labelCopy = label;
  dictionary = [v10 dictionary];
  v16 = [self mutableContainerCoalescerWithLabel:labelCopy target:targetCopy container:dictionary queue:queueCopy action:actionCopy];

  return v16;
}

+ (id)dictionaryCoalescerWithLabel:(id)label queue:(id)queue action:(id)action
{
  v8 = MEMORY[0x1E695DF90];
  actionCopy = action;
  queueCopy = queue;
  labelCopy = label;
  dictionary = [v8 dictionary];
  v13 = [self mutableContainerCoalescerWithLabel:labelCopy container:dictionary queue:queueCopy action:actionCopy];

  return v13;
}

+ (id)setCoalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action
{
  v10 = MEMORY[0x1E695DFA8];
  actionCopy = action;
  queueCopy = queue;
  targetCopy = target;
  labelCopy = label;
  v15 = [v10 set];
  v16 = [self mutableContainerCoalescerWithLabel:labelCopy target:targetCopy container:v15 queue:queueCopy action:actionCopy];

  return v16;
}

+ (id)setCoalescerWithLabel:(id)label queue:(id)queue action:(id)action
{
  v8 = MEMORY[0x1E695DFA8];
  actionCopy = action;
  queueCopy = queue;
  labelCopy = label;
  v12 = [v8 set];
  v13 = [self mutableContainerCoalescerWithLabel:labelCopy container:v12 queue:queueCopy action:actionCopy];

  return v13;
}

+ (id)mutableContainerCoalescerWithLabel:(id)label container:(id)container queue:(id)queue action:(id)action
{
  containerCopy = container;
  actionCopy = action;
  queueCopy = queue;
  labelCopy = label;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:350 description:{@"Unsupported container, does not respond to removeAllObjects"}];
  }

  if (([containerCopy conformsToProtocol:&unk_1F5448560] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:351 description:{@"Unsupported container, does not conform to NSCopying"}];
  }

  mutableCollectionBufferDrainer = [objc_opt_class() mutableCollectionBufferDrainer];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PFCoalescer_mutableContainerCoalescerWithLabel_container_queue_action___block_invoke;
  v21[3] = &unk_1E85639F0;
  v22 = actionCopy;
  v16 = actionCopy;
  v17 = [self coalescerWithLabel:labelCopy target:0 buffer:containerCopy queue:queueCopy bufferDrainer:mutableCollectionBufferDrainer action:v21];

  return v17;
}

+ (id)mutableContainerCoalescerWithLabel:(id)label target:(id)target container:(id)container queue:(id)queue action:(id)action
{
  containerCopy = container;
  actionCopy = action;
  queueCopy = queue;
  targetCopy = target;
  labelCopy = label;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:336 description:{@"Unsupported container, does not respond to removeAllObjects"}];
  }

  if ([containerCopy conformsToProtocol:&unk_1F5448560])
  {
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:337 description:{@"Unsupported container, does not conform to NSCopying"}];

    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"target"}];

LABEL_5:
  mutableCollectionBufferDrainer = [objc_opt_class() mutableCollectionBufferDrainer];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__PFCoalescer_mutableContainerCoalescerWithLabel_target_container_queue_action___block_invoke;
  v25[3] = &unk_1E85639F0;
  v26 = actionCopy;
  v19 = actionCopy;
  v20 = [self coalescerWithLabel:labelCopy target:targetCopy buffer:containerCopy queue:queueCopy bufferDrainer:mutableCollectionBufferDrainer action:v25];

  return v20;
}

+ (PFCoalescer)coalescerWithLabel:(id)label queue:(id)queue action:(id)action
{
  actionCopy = action;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PFCoalescer_coalescerWithLabel_queue_action___block_invoke;
  v12[3] = &unk_1E85639F0;
  v13 = actionCopy;
  v9 = actionCopy;
  v10 = [self coalescerWithLabel:label target:0 buffer:0 queue:queue bufferDrainer:0 action:v12];

  return v10;
}

+ (PFCoalescer)coalescerWithLabel:(id)label target:(id)target queue:(id)queue action:(id)action
{
  labelCopy = label;
  targetCopy = target;
  queueCopy = queue;
  actionCopy = action;
  if (!targetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"target"}];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__PFCoalescer_coalescerWithLabel_target_queue_action___block_invoke;
  v19[3] = &unk_1E85639F0;
  v20 = actionCopy;
  v15 = actionCopy;
  v16 = [self coalescerWithLabel:labelCopy target:targetCopy buffer:0 queue:queueCopy bufferDrainer:0 action:v19];

  return v16;
}

+ (PFCoalescer)coalescerWithLabel:(id)label target:(id)target buffer:(id)buffer queue:(id)queue bufferDrainer:(id)drainer action:(id)action
{
  actionCopy = action;
  drainerCopy = drainer;
  queueCopy = queue;
  bufferCopy = buffer;
  targetCopy = target;
  labelCopy = label;
  v19 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy target:targetCopy buffer:bufferCopy queue:queueCopy bufferDrainer:drainerCopy action:actionCopy];

  return v19;
}

@end