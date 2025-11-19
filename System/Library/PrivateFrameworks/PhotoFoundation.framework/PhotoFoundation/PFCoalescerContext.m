@interface PFCoalescerContext
- (NSArray)pendingActivityTokensSnapshot;
- (PFCoalescer)coalescer;
- (PFCoalescerContext)initWithCoalescer:(id)a3;
- (id)activityTokenWithReason:(id)a3;
- (void)cancelPendingActivityTokens;
- (void)delayNextInvocationByTimeInterval:(double)a3;
- (void)pushBack:(id)a3;
@end

@implementation PFCoalescerContext

- (PFCoalescer)coalescer
{
  WeakRetained = objc_loadWeakRetained(&self->_coalescer);

  return WeakRetained;
}

- (NSArray)pendingActivityTokensSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PFCoalescerContext_pendingActivityTokensSnapshot__block_invoke;
  v5[3] = &unk_1E8563950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __51__PFCoalescerContext_pendingActivityTokensSnapshot__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)cancelPendingActivityTokens
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PFCoalescerContext_cancelPendingActivityTokens__block_invoke;
  block[3] = &unk_1E8563900;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

uint64_t __49__PFCoalescerContext_cancelPendingActivityTokens__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) endActivity];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 40) removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)activityTokenWithReason:(id)a3
{
  v4 = a3;
  v5 = [[PFCoalescerActivityToken alloc] initWithDispatchGroup:self->_group reason:v4];

  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PFCoalescerContext_activityTokenWithReason___block_invoke;
  v11[3] = &unk_1E8563928;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  dispatch_sync(isolationQueue, v11);
  v8 = v12;
  v9 = v7;

  return v7;
}

- (void)delayNextInvocationByTimeInterval:(double)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"delayNextInvocationByTimeInterval %f", *&a3];
  v6 = [(PFCoalescerContext *)self activityTokenWithReason:v5];

  v7 = dispatch_time(0, (a3 * 1000000000.0));
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PFCoalescerContext_delayNextInvocationByTimeInterval___block_invoke;
  block[3] = &unk_1E8563900;
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, v8, block);
}

- (void)pushBack:(id)a3
{
  v6 = a3;
  v4 = [(PFCoalescerContext *)self coalescer];
  v5 = v4;
  if (v4)
  {
    [v4 update:v6];
  }
}

- (PFCoalescerContext)initWithCoalescer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFCoalescerContext;
  v5 = [(PFCoalescerContext *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(PFCoalescerContext *)v5 setCoalescer:v4];
    v7 = dispatch_group_create();
    [(PFCoalescerContext *)v6 setGroup:v7];

    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(PFCoalescerContext *)v6 setPendingActivityTokens:v8];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PFCoalescer context isolation", v9);
    [(PFCoalescerContext *)v6 setIsolationQueue:v10];
  }

  return v6;
}

@end