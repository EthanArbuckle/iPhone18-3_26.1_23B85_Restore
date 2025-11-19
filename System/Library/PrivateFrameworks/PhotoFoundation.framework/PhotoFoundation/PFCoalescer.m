@interface PFCoalescer
+ (PFCoalescer)coalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5;
+ (PFCoalescer)coalescerWithLabel:(id)a3 target:(id)a4 buffer:(id)a5 queue:(id)a6 bufferDrainer:(id)a7 action:(id)a8;
+ (PFCoalescer)coalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6;
+ (id)arrayCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5;
+ (id)arrayCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6;
+ (id)dictionaryCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5;
+ (id)dictionaryCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6;
+ (id)mutableContainerCoalescerWithLabel:(id)a3 container:(id)a4 queue:(id)a5 action:(id)a6;
+ (id)mutableContainerCoalescerWithLabel:(id)a3 target:(id)a4 container:(id)a5 queue:(id)a6 action:(id)a7;
+ (id)setCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5;
+ (id)setCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6;
- (PFCoalescer)init;
- (PFCoalescer)initWithLabel:(id)a3 target:(id)a4 buffer:(id)a5 queue:(id)a6 bufferDrainer:(id)a7 action:(id)a8;
- (id)stateCaptureDictionary;
- (id)target;
- (void)_resetWhileLocked;
- (void)performEventActionWithTarget:(id)a3;
- (void)reset;
- (void)resetAndShutDown;
- (void)update:(id)a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_label forKeyedSubscript:@"label"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v21 = v3;
  [v3 setObject:v4 forKeyedSubscript:@"state"];

  v5 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self;
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
        v11 = [v10 reason];
        v28[0] = v11;
        v27[1] = @"ageTimeInterval";
        v12 = MEMORY[0x1E696AD98];
        v13 = [MEMORY[0x1E695DF00] date];
        v14 = [v10 creationDate];
        [v13 timeIntervalSinceDate:v14];
        v15 = [v12 numberWithDouble:?];
        v28[1] = v15;
        v27[2] = @"callStackReturnAddresses";
        v16 = [v10 callStackReturnAddresses];
        v28[2] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

        [v5 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  [v21 setObject:v5 forKeyedSubscript:@"pendingActivityTokens"];
  [v21 setObject:v20->_lastTransactionStartDate forKeyedSubscript:@"lastTransactionStartDate"];
  [v21 setObject:v20->_lastTransactionEndDate forKeyedSubscript:@"lastTransactionEndDate"];

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

- (void)update:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (void)performEventActionWithTarget:(id)a3
{
  v4 = a3;
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
    v11 = v4;
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

- (PFCoalescer)initWithLabel:(id)a3 target:(id)a4 buffer:(id)a5 queue:(id)a6 bufferDrainer:(id)a7 action:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (v15)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    if (v21)
    {
      goto LABEL_3;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"PFCoalescer.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  v49.receiver = self;
  v49.super_class = PFCoalescer;
  v22 = [(PFCoalescer *)&v49 init];
  v23 = v22;
  if (v22)
  {
    [(PFCoalescer *)v22 setTarget:v16];
    [(PFCoalescer *)v23 setUsesTarget:v16 != 0];
    v45 = v17;
    [(PFCoalescer *)v23 setBuffer:v17];
    [(PFCoalescer *)v23 setSnapshotAndDrainHandler:v19];
    [(PFCoalescer *)v23 setAction:v21];
    [(PFCoalescer *)v23 setLabel:v15];
    v24 = [@"coalescer-" stringByAppendingString:v15];
    v25 = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_BACKGROUND, 0);
    v28 = dispatch_queue_create(v25, v27);
    [(PFCoalescer *)v23 setSourceQueue:v28];

    v29 = [@"coalescer-buffer-" stringByAppendingString:v15];
    v30 = [v29 UTF8String];
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_BACKGROUND, 0);
    v33 = dispatch_queue_create(v30, v32);
    [(PFCoalescer *)v23 setIsolationQueue:v33];

    if (v18)
    {
      [(PFCoalescer *)v23 setTargetQueue:v18];
    }

    else
    {
      v34 = dispatch_get_global_queue(9, 0);
      [(PFCoalescer *)v23 setTargetQueue:v34];
    }

    v35 = [(PFCoalescer *)v23 sourceQueue];
    v36 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, v35);
    [(PFCoalescer *)v23 setSource:v36];

    v37 = [[PFCoalescerContext alloc] initWithCoalescer:v23];
    [(PFCoalescer *)v23 setContext:v37];

    objc_initWeak(&location, v23);
    v38 = [(PFCoalescer *)v23 source];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __70__PFCoalescer_initWithLabel_target_buffer_queue_bufferDrainer_action___block_invoke;
    handler[3] = &unk_1E8563978;
    objc_copyWeak(&v47, &location);
    dispatch_source_set_event_handler(v38, handler);

    v39 = [(PFCoalescer *)v23 source];
    dispatch_resume(v39);

    v40 = [[PFStateCaptureHandler alloc] initWithProvider:v23];
    stateCaptureHandler = v23->_stateCaptureHandler;
    v23->_stateCaptureHandler = v40;

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
    v17 = v45;
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

+ (id)arrayCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6
{
  v10 = MEMORY[0x1E695DF70];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 array];
  v16 = [a1 mutableContainerCoalescerWithLabel:v14 target:v13 container:v15 queue:v12 action:v11];

  return v16;
}

+ (id)arrayCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5
{
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v13 = [a1 mutableContainerCoalescerWithLabel:v11 container:v12 queue:v10 action:v9];

  return v13;
}

+ (id)dictionaryCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6
{
  v10 = MEMORY[0x1E695DF90];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 dictionary];
  v16 = [a1 mutableContainerCoalescerWithLabel:v14 target:v13 container:v15 queue:v12 action:v11];

  return v16;
}

+ (id)dictionaryCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionary];
  v13 = [a1 mutableContainerCoalescerWithLabel:v11 container:v12 queue:v10 action:v9];

  return v13;
}

+ (id)setCoalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6
{
  v10 = MEMORY[0x1E695DFA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 set];
  v16 = [a1 mutableContainerCoalescerWithLabel:v14 target:v13 container:v15 queue:v12 action:v11];

  return v16;
}

+ (id)setCoalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5
{
  v8 = MEMORY[0x1E695DFA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 set];
  v13 = [a1 mutableContainerCoalescerWithLabel:v11 container:v12 queue:v10 action:v9];

  return v13;
}

+ (id)mutableContainerCoalescerWithLabel:(id)a3 container:(id)a4 queue:(id)a5 action:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:350 description:{@"Unsupported container, does not respond to removeAllObjects"}];
  }

  if (([v11 conformsToProtocol:&unk_1F5448560] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:351 description:{@"Unsupported container, does not conform to NSCopying"}];
  }

  v15 = [objc_opt_class() mutableCollectionBufferDrainer];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PFCoalescer_mutableContainerCoalescerWithLabel_container_queue_action___block_invoke;
  v21[3] = &unk_1E85639F0;
  v22 = v12;
  v16 = v12;
  v17 = [a1 coalescerWithLabel:v14 target:0 buffer:v11 queue:v13 bufferDrainer:v15 action:v21];

  return v17;
}

+ (id)mutableContainerCoalescerWithLabel:(id)a3 target:(id)a4 container:(id)a5 queue:(id)a6 action:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:336 description:{@"Unsupported container, does not respond to removeAllObjects"}];
  }

  if ([v13 conformsToProtocol:&unk_1F5448560])
  {
    if (v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:337 description:{@"Unsupported container, does not conform to NSCopying"}];

    if (v16)
    {
      goto LABEL_5;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"target"}];

LABEL_5:
  v18 = [objc_opt_class() mutableCollectionBufferDrainer];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__PFCoalescer_mutableContainerCoalescerWithLabel_target_container_queue_action___block_invoke;
  v25[3] = &unk_1E85639F0;
  v26 = v14;
  v19 = v14;
  v20 = [a1 coalescerWithLabel:v17 target:v16 buffer:v13 queue:v15 bufferDrainer:v18 action:v25];

  return v20;
}

+ (PFCoalescer)coalescerWithLabel:(id)a3 queue:(id)a4 action:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PFCoalescer_coalescerWithLabel_queue_action___block_invoke;
  v12[3] = &unk_1E85639F0;
  v13 = v8;
  v9 = v8;
  v10 = [a1 coalescerWithLabel:a3 target:0 buffer:0 queue:a4 bufferDrainer:0 action:v12];

  return v10;
}

+ (PFCoalescer)coalescerWithLabel:(id)a3 target:(id)a4 queue:(id)a5 action:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PFCoalescer.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"target"}];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__PFCoalescer_coalescerWithLabel_target_queue_action___block_invoke;
  v19[3] = &unk_1E85639F0;
  v20 = v14;
  v15 = v14;
  v16 = [a1 coalescerWithLabel:v11 target:v12 buffer:0 queue:v13 bufferDrainer:0 action:v19];

  return v16;
}

+ (PFCoalescer)coalescerWithLabel:(id)a3 target:(id)a4 buffer:(id)a5 queue:(id)a6 bufferDrainer:(id)a7 action:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [objc_alloc(objc_opt_class()) initWithLabel:v18 target:v17 buffer:v16 queue:v15 bufferDrainer:v14 action:v13];

  return v19;
}

@end