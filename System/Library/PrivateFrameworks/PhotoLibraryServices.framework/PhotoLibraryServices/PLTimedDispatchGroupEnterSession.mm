@interface PLTimedDispatchGroupEnterSession
- (BOOL)_lock_leaveIfPossible;
- (BOOL)didTimeout;
- (BOOL)leave;
- (BOOL)leaveWithResult:(id)a3;
- (BOOL)wasCancelled;
- (PLTimedDispatchGroupEnterSession)initWithGroup:(id)a3 queue:(id)a4 timeout:(double)a5 name:(id)a6;
- (id)description;
- (id)result;
- (void)_handleTimeoutCallback;
- (void)cancel;
- (void)enter;
@end

@implementation PLTimedDispatchGroupEnterSession

- (BOOL)didTimeout
{
  v2 = [(PLTimedDispatchGroupEnterSession *)self result];
  if ([v2 isFailure])
  {
    v3 = [v2 error];
    v4 = PLIsErrorEqualToCode();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)result
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (BOOL)leaveWithResult:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = PLBoolResultWithUnfairLock();

  return v4;
}

uint64_t __52__PLTimedDispatchGroupEnterSession_leaveWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lock_leaveIfPossible];
  if (v2)
  {
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  }

  return v2;
}

- (BOOL)leave
{
  v3 = MEMORY[0x1E69BF2D0];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 successWithResult:v4];

  LOBYTE(self) = [(PLTimedDispatchGroupEnterSession *)self leaveWithResult:v5];
  return self;
}

- (BOOL)wasCancelled
{
  v2 = [(PLTimedDispatchGroupEnterSession *)self result];
  v3 = v2;
  if (v2 && [v2 isFailure])
  {
    v4 = [v3 error];
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v6 = [v3 error];
      v7 = [v6 code] == 3072;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)cancel
{
  v3 = MEMORY[0x1E69BF2D0];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  v4 = [v3 failureWithError:v5];
  [(PLTimedDispatchGroupEnterSession *)self leaveWithResult:v4];
}

- (void)enter
{
  dispatch_group_enter(self->_group);
  if (self->_timeout != 0.0)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, (self->_timeout * 1000000000.0));
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PLTimedDispatchGroupEnterSession_enter__block_invoke;
    v5[3] = &unk_1E75788C0;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, queue, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __41__PLTimedDispatchGroupEnterSession_enter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimeoutCallback];
}

- (void)_handleTimeoutCallback
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Timed dispatch group session timed out waiting for group leave", buf, 2u);
  }

  PLSafeRunWithUnfairLock();
}

void __58__PLTimedDispatchGroupEnterSession__handleTimeoutCallback__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _lock_leaveIfPossible])
  {
    v2 = MEMORY[0x1E69BF2D0];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E69BFF48];
    v5 = *(*(a1 + 32) + 48);
    v11 = @"name";
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v3 errorWithDomain:v4 code:46512 userInfo:v6];
    v8 = [v2 failureWithError:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)_lock_leaveIfPossible
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_didLeave = self->_lock_didLeave;
  if (!lock_didLeave)
  {
    self->_lock_didLeave = 1;
    dispatch_group_leave(self->_group);
  }

  return !lock_didLeave;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, self->_name];

  return v6;
}

- (PLTimedDispatchGroupEnterSession)initWithGroup:(id)a3 queue:(id)a4 timeout:(double)a5 name:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PLTimedDispatchGroupEnterSession;
  v14 = [(PLTimedDispatchGroupEnterSession *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_group, a3);
    objc_storeStrong(&v15->_queue, a4);
    v15->_timeout = a5;
    v15->_lock._os_unfair_lock_opaque = 0;
    v16 = [v13 copy];
    name = v15->_name;
    v15->_name = v16;
  }

  return v15;
}

@end