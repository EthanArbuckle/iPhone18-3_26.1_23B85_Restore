@interface PXAsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (PXAsyncOperation)init;
- (void)cancel;
- (void)px_finishIfPossible;
- (void)px_start;
- (void)start;
@end

@implementation PXAsyncOperation

- (void)px_finishIfPossible
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_operationState == 1)
  {
    self->_operationState = 2;
    os_unfair_lock_unlock(&self->_stateLock);
    v4 = NSStringFromSelector(sel_isExecuting);
    v3 = NSStringFromSelector(sel_isFinished);
    [(PXAsyncOperation *)self willChangeValueForKey:v4];
    [(PXAsyncOperation *)self willChangeValueForKey:v3];
    os_unfair_lock_lock(&self->_stateLock);
    self->_operationState = 3;
    os_unfair_lock_unlock(&self->_stateLock);
    [(PXAsyncOperation *)self didChangeValueForKey:v4];
    [(PXAsyncOperation *)self didChangeValueForKey:v3];
  }

  else
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)px_start
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAsyncOperation.m" lineNumber:96 description:{@"Method %s is a responsibility of subclass %@", "-[PXAsyncOperation px_start]", v6}];

  abort();
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_operationState == 3;
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = (self->_operationState - 1) < 2;
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PXAsyncOperation;
  [(PXAsyncOperation *)&v3 cancel];
  if (![(PXAsyncOperation *)self px_shouldWaitForCancel])
  {
    [(PXAsyncOperation *)self px_finishIfPossible];
  }
}

- (void)start
{
  if ([(PXAsyncOperation *)self isCancelled])
  {
    v3 = NSStringFromSelector(sel_isFinished);
    [(PXAsyncOperation *)self willChangeValueForKey:v3];
    os_unfair_lock_lock(&self->_stateLock);
    self->_operationState = 3;
LABEL_4:
    os_unfair_lock_unlock(&self->_stateLock);
    [(PXAsyncOperation *)self didChangeValueForKey:v3];
    goto LABEL_5;
  }

  v3 = NSStringFromSelector(sel_isExecuting);
  [(PXAsyncOperation *)self willChangeValueForKey:?];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_operationState)
  {
    goto LABEL_4;
  }

  self->_operationState = 1;
  os_unfair_lock_unlock(&self->_stateLock);
  [(PXAsyncOperation *)self didChangeValueForKey:v3];
  [(PXAsyncOperation *)self px_start];
LABEL_5:
}

- (PXAsyncOperation)init
{
  v3.receiver = self;
  v3.super_class = PXAsyncOperation;
  result = [(PXAsyncOperation *)&v3 init];
  if (result)
  {
    result->_stateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end