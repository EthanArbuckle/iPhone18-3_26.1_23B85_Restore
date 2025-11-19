@interface SCTimedOperationThrottler
- (BOOL)suspended;
- (SCTimedOperationThrottler)initWithDelegate:(id)a3;
- (SCWOperationThrottlerDelegate)delegate;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)tickle;
- (void)tickleWithCompletion:(id)a3;
@end

@implementation SCTimedOperationThrottler

- (SCTimedOperationThrottler)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCTimedOperationThrottler;
  v5 = [(SCTimedOperationThrottler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[SCWOperationThrottler alloc] initWithDelegate:v6];
    operationThrottler = v6->_operationThrottler;
    v6->_operationThrottler = v7;
  }

  return v6;
}

- (void)tickle
{
  v2 = [(SCTimedOperationThrottler *)self operationThrottler];
  [v2 tickle];
}

- (void)tickleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCTimedOperationThrottler *)self operationThrottler];
  [v5 tickleWithCompletion:v4];
}

- (BOOL)suspended
{
  v2 = [(SCTimedOperationThrottler *)self operationThrottler];
  v3 = [v2 suspended];

  return v3;
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v5 = a4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __84__SCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v12 = &unk_1E85E34E0;
  v13 = self;
  v6 = v5;
  v14 = v6;
  v7 = _Block_copy(&v9);
  v8 = [(SCTimedOperationThrottler *)self delegate:v9];
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

void __84__SCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cooldownTime];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v4 = dispatch_get_global_queue(9, 0);
  dispatch_after(v3, v4, *(a1 + 40));
}

- (SCWOperationThrottlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end