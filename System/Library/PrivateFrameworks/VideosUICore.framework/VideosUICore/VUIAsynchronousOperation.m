@interface VUIAsynchronousOperation
- (void)finishExecutionIfPossible;
- (void)start;
@end

@implementation VUIAsynchronousOperation

- (void)finishExecutionIfPossible
{
  [(VUIAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
  [(VUIAsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
  v3 = 1;
  atomic_compare_exchange_strong(&self->_state, &v3, 2u);
  [(VUIAsynchronousOperation *)self didChangeValueForKey:@"isFinished"];

  [(VUIAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)start
{
  [(VUIAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
  v3 = 0;
  atomic_compare_exchange_strong(&self->_state, &v3, 1u);
  v4 = v3 == 0;
  [(VUIAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];
  if (v4)
  {
    if ([(VUIAsynchronousOperation *)self isCancelled])
    {

      [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
    }

    else
    {

      [(VUIAsynchronousOperation *)self executionDidBegin];
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];

    [v5 raise:v6 format:@"The -start method may only be called once."];
  }
}

@end