@interface SCWAsyncBlockOperation
- (SCWAsyncBlockOperation)initWithBlock:(id)block;
- (void)start;
@end

@implementation SCWAsyncBlockOperation

- (void)start
{
  if ([(SCWAsyncBlockOperation *)self isCancelled])
  {
    [(SCWAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(SCWAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(SCWAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(SCWAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = objc_autoreleasePoolPush();
    block = [(SCWAsyncBlockOperation *)self block];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__SCWAsyncBlockOperation_start__block_invoke;
    v5[3] = &unk_1E85E3640;
    v5[4] = self;
    (block)[2](block, v5);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __31__SCWAsyncBlockOperation_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  *(*(a1 + 32) + 248) = 0;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 249) = 1;
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"isFinished"];
}

- (SCWAsyncBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = SCWAsyncBlockOperation;
  v5 = [(SCWAsyncBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end