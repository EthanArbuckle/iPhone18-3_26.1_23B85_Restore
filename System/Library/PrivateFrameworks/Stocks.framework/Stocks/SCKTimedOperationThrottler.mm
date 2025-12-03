@interface SCKTimedOperationThrottler
- (BOOL)suspended;
- (SCKOperationThrottlerDelegate)delegate;
- (SCKTimedOperationThrottler)initWithDelegate:(id)delegate;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)setSuspended:(BOOL)suspended;
- (void)tickle;
- (void)tickleWithCompletion:(id)completion;
@end

@implementation SCKTimedOperationThrottler

- (SCKTimedOperationThrottler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SCKTimedOperationThrottler;
  v5 = [(SCKTimedOperationThrottler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[SCKOperationThrottler alloc] initWithDelegate:v6];
    operationThrottler = v6->_operationThrottler;
    v6->_operationThrottler = v7;
  }

  return v6;
}

- (void)tickle
{
  operationThrottler = [(SCKTimedOperationThrottler *)self operationThrottler];
  [operationThrottler tickle];
}

- (void)tickleWithCompletion:(id)completion
{
  completionCopy = completion;
  operationThrottler = [(SCKTimedOperationThrottler *)self operationThrottler];
  [operationThrottler tickleWithCompletion:completionCopy];
}

- (BOOL)suspended
{
  operationThrottler = [(SCKTimedOperationThrottler *)self operationThrottler];
  suspended = [operationThrottler suspended];

  return suspended;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  operationThrottler = [(SCKTimedOperationThrottler *)self operationThrottler];
  [operationThrottler setSuspended:suspendedCopy];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __85__SCKTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v12 = &unk_279D160E0;
  selfCopy = self;
  v6 = completionCopy;
  v14 = v6;
  v7 = MEMORY[0x26D68CA60](&v9);
  v8 = [(SCKTimedOperationThrottler *)self delegate:v9];
  if (objc_opt_respondsToSelector())
  {
    [v8 operationThrottlerPerformOperation:self];
LABEL_5:
    v7[2](v7);
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  [v8 operationThrottler:self performAsyncOperationWithCompletion:v7];
LABEL_6:
}

void __85__SCKTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cooldownTime];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v4 = dispatch_get_global_queue(9, 0);
  dispatch_after(v3, v4, *(a1 + 40));
}

- (SCKOperationThrottlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end