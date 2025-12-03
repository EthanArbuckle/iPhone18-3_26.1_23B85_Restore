@interface _LTDContinuationOperation
+ (id)continuationOperationWithGroupID:(id)d delegate:(id)delegate block:(id)block;
- (BOOL)isAsynchronous;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (_LTDContinuationOperation)initWithGroupID:(id)d delegate:(id)delegate continuationBlock:(id)block;
- (_LTDContinuationOperationDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)setAsynchronous:(BOOL)asynchronous;
- (void)setCancelled:(BOOL)cancelled;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation _LTDContinuationOperation

- (_LTDContinuationOperation)initWithGroupID:(id)d delegate:(id)delegate continuationBlock:(id)block
{
  dCopy = d;
  delegateCopy = delegate;
  blockCopy = block;
  v27.receiver = self;
  v27.super_class = _LTDContinuationOperation;
  v11 = [(NSBlockOperation *)&v27 init];
  if (v11)
  {
    v12 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDContinuationOperation *)v11 initWithGroupID:v12 delegate:v13 continuationBlock:v14, v15, v16, v17, v18];
    }

    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v19 = [dCopy copy];
    groupID = v11->_groupID;
    v11->_groupID = v19;

    objc_initWeak(&location, v11);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke;
    v23[3] = &unk_2789B5F18;
    objc_copyWeak(&v25, &location);
    v24 = blockCopy;
    [(NSBlockOperation *)v11 addExecutionBlock:v23];
    v21 = v11;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

+ (id)continuationOperationWithGroupID:(id)d delegate:(id)delegate block:(id)block
{
  blockCopy = block;
  delegateCopy = delegate;
  dCopy = d;
  v10 = [[_LTDContinuationOperation alloc] initWithGroupID:dCopy delegate:delegateCopy continuationBlock:blockCopy];

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation dealloc: %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAsynchronous
{
  os_unfair_lock_lock(&self->_lock);
  isAsynchronous = self->_isAsynchronous;
  os_unfair_lock_unlock(&self->_lock);
  return isAsynchronous;
}

- (void)setAsynchronous:(BOOL)asynchronous
{
  if ([(_LTDContinuationOperation *)self isAsynchronous]!= asynchronous)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isAsynchronous"];
    os_unfair_lock_lock(&self->_lock);
    self->_isAsynchronous = asynchronous;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isAsynchronous"];
  }
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)setCancelled:(BOOL)cancelled
{
  if ([(_LTDContinuationOperation *)self isCancelled]!= cancelled)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isCancelled"];
    os_unfair_lock_lock(&self->_lock);
    self->_isCancelled = cancelled;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isCancelled"];
  }
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  isFinished = self->_isFinished;
  os_unfair_lock_unlock(&self->_lock);
  return isFinished;
}

- (void)setFinished:(BOOL)finished
{
  if ([(_LTDContinuationOperation *)self isFinished]!= finished)
  {
    [(_LTDContinuationOperation *)self willChangeValueForKey:@"isFinished"];
    os_unfair_lock_lock(&self->_lock);
    self->_isFinished = finished;
    os_unfair_lock_unlock(&self->_lock);

    [(_LTDContinuationOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation start: %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  if (![(_LTDContinuationOperation *)self isCancelled])
  {
    [(_LTDContinuationOperation *)self setCancelled:1];

    [(_LTDContinuationOperation *)self setFinished:1];
  }
}

- (_LTDContinuationOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithGroupID:(uint64_t)a3 delegate:(uint64_t)a4 continuationBlock:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_232E53000, a2, a3, "Continuation operation initialized: %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end