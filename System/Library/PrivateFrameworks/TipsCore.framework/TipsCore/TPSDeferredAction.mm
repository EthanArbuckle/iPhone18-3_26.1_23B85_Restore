@interface TPSDeferredAction
- (TPSDeferredAction)initWithQueue:(id)queue;
- (TPSDeferredActionDelegate)delegate;
- (void)scheduleNextRunLoop;
@end

@implementation TPSDeferredAction

- (TPSDeferredAction)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = TPSDeferredAction;
  v5 = [(TPSDeferredAction *)&v8 init];
  if (v5)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v6 = MEMORY[0x1E69E96A0];
    }

    objc_storeStrong(&v5->_queue, queueCopy);
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)scheduleNextRunLoop
{
  os_unfair_lock_lock(&self->_lock);
  if ([(TPSDeferredAction *)self scheduled])
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(TPSDeferredAction *)self setScheduled:1];
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __40__TPSDeferredAction_scheduleNextRunLoop__block_invoke;
    v3[3] = &unk_1E8101890;
    objc_copyWeak(&v4, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __40__TPSDeferredAction_scheduleNextRunLoop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 3);
    [(os_unfair_lock_s *)WeakRetained setScheduled:0];
    v1 = [(os_unfair_lock_s *)WeakRetained delegate];
    [v1 deferredActionPerform:WeakRetained];

    os_unfair_lock_unlock(WeakRetained + 3);
  }
}

- (TPSDeferredActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end