@interface PKAMSPromiseWrapper
- (BOOL)isCanceled;
- (BOOL)isInvalidated;
- (PKAMSPromiseWrapper)initWithAMSPromise:(id)promise;
- (void)cancel;
- (void)invalidate;
@end

@implementation PKAMSPromiseWrapper

- (PKAMSPromiseWrapper)initWithAMSPromise:(id)promise
{
  promiseCopy = promise;
  if (promiseCopy)
  {
    v10.receiver = self;
    v10.super_class = PKAMSPromiseWrapper;
    v6 = [(PKAMSPromiseWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v6->_promise, promise);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  promise = self->_promise;
  self->_promise = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCanceled
{
  os_unfair_lock_lock(&self->_lock);
  canceled = self->_canceled;
  os_unfair_lock_unlock(&self->_lock);
  return canceled;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  self->_canceled = 1;
  promise = self->_promise;
  v6 = promise;
  if (promise)
  {
    v4 = promise;
    v5 = self->_promise;
    self->_promise = 0;

    os_unfair_lock_unlock(&self->_lock);
    [MEMORY[0x1E698CA58] cancelPromise:v4];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

@end