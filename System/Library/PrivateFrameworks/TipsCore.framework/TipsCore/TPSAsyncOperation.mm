@interface TPSAsyncOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (TPSAsyncOperation)init;
- (void)cancel;
- (void)finishWithError:(id)a3;
- (void)lockExec:(id)a3;
- (void)start;
@end

@implementation TPSAsyncOperation

- (TPSAsyncOperation)init
{
  v3.receiver = self;
  v3.super_class = TPSAsyncOperation;
  result = [(TPSAsyncOperation *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)lockExec:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(TPSAsyncOperation *)self preCompletionBlock];

  if (v5)
  {
    v6 = [(TPSAsyncOperation *)self preCompletionBlock];
    v6[2]();
  }

  [(TPSAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  [(TPSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__TPSAsyncOperation_finishWithError___block_invoke;
  v11 = &unk_1E8101390;
  v12 = self;
  v13 = v4;
  v7 = v4;
  [(TPSAsyncOperation *)self lockExec:&v8];
  [(TPSAsyncOperation *)self didChangeValueForKey:@"isExecuting", v8, v9, v10, v11, v12];
  [(TPSAsyncOperation *)self didChangeValueForKey:@"isFinished"];
}

void __37__TPSAsyncOperation_finishWithError___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 40));
  *(*(a1 + 32) + 252) = 0;
  *(*(a1 + 32) + 253) = 1;
}

- (void)cancel
{
  [(TPSAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  [(TPSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  [(TPSAsyncOperation *)self willChangeValueForKey:@"isCancelled"];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__TPSAsyncOperation_cancel__block_invoke;
  v3[3] = &unk_1E8101340;
  v3[4] = self;
  [(TPSAsyncOperation *)self lockExec:v3];
  [(TPSAsyncOperation *)self didChangeValueForKey:@"isCancelled"];
  [(TPSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  [(TPSAsyncOperation *)self didChangeValueForKey:@"isFinished"];
}

uint64_t __27__TPSAsyncOperation_cancel__block_invoke(uint64_t result)
{
  *(*(result + 32) + 252) = 0;
  *(*(result + 32) + 253) = 1;
  *(*(result + 32) + 254) = 1;
  return result;
}

- (BOOL)isExecuting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TPSAsyncOperation_isExecuting__block_invoke;
  v4[3] = &unk_1E8101368;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSAsyncOperation *)self lockExec:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isFinished
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__TPSAsyncOperation_isFinished__block_invoke;
  v4[3] = &unk_1E8101368;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSAsyncOperation *)self lockExec:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isCancelled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TPSAsyncOperation_isCancelled__block_invoke;
  v4[3] = &unk_1E8101368;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSAsyncOperation *)self lockExec:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)start
{
  if ([(TPSAsyncOperation *)self isCancelled])
  {

    [(TPSAsyncOperation *)self finishWithError:0];
  }

  else
  {
    [(TPSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __26__TPSAsyncOperation_start__block_invoke;
    v3[3] = &unk_1E8101340;
    v3[4] = self;
    [(TPSAsyncOperation *)self lockExec:v3];
    [(TPSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
    [(TPSAsyncOperation *)self main];
  }
}

@end