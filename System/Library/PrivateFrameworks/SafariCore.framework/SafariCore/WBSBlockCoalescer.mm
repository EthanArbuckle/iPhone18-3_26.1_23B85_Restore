@interface WBSBlockCoalescer
- (WBSBlockCoalescer)initWithMinimumTimeIntervalBeforeExecution:(double)execution queue:(id)queue;
- (void)_dispatchBlock;
- (void)scheduleBlock:(id)block;
@end

@implementation WBSBlockCoalescer

- (WBSBlockCoalescer)initWithMinimumTimeIntervalBeforeExecution:(double)execution queue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = WBSBlockCoalescer;
  v7 = [(WBSBlockCoalescer *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_minimumTimeIntervalBeforeExecution = execution;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.BlockCoalescer.%p", v7];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v10;

    dispatch_set_target_queue(v8->_queue, queueCopy);
    v12 = v8;
  }

  return v8;
}

- (void)scheduleBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WBSBlockCoalescer_scheduleBlock___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __35__WBSBlockCoalescer_scheduleBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    dispatch_block_cancel(v2);
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__WBSBlockCoalescer_scheduleBlock___block_invoke_2;
  v10 = &unk_1E7CF1888;
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  [*(a1 + 32) _dispatchBlock];
}

void __35__WBSBlockCoalescer_scheduleBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)_dispatchBlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WBSBlockCoalescer__dispatchBlock__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__WBSBlockCoalescer__dispatchBlock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    v3 = dispatch_time(0, (*(v1 + 8) * 1000000000.0));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    dispatch_after(v3, v5, v6);
  }
}

@end