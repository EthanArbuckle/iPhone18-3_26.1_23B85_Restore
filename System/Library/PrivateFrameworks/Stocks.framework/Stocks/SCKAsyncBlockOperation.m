@interface SCKAsyncBlockOperation
- (SCKAsyncBlockOperation)initWithBlock:(id)a3;
- (void)start;
@end

@implementation SCKAsyncBlockOperation

- (SCKAsyncBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCKAsyncBlockOperation;
  v5 = [(SCKAsyncBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)start
{
  if ([(SCKAsyncBlockOperation *)self isCancelled])
  {
    [(SCKAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(SCKAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(SCKAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(SCKAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = objc_autoreleasePoolPush();
    v4 = [(SCKAsyncBlockOperation *)self block];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__SCKAsyncBlockOperation_start__block_invoke;
    v5[3] = &unk_279D15BF0;
    v5[4] = self;
    (v4)[2](v4, v5);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __31__SCKAsyncBlockOperation_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  *(*(a1 + 32) + 248) = 0;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 249) = 1;
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"isFinished"];
}

@end