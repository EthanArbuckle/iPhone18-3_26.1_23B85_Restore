@interface PKLinkedApplicationAMSPromiseWrapper
- (BOOL)isCanceled;
- (BOOL)isInvalidated;
- (PKLinkedApplicationAMSPromiseWrapper)initWithAMSPromise:(id)a3;
- (void)cancel;
- (void)invalidate;
@end

@implementation PKLinkedApplicationAMSPromiseWrapper

- (PKLinkedApplicationAMSPromiseWrapper)initWithAMSPromise:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKLinkedApplicationAMSPromiseWrapper;
    v6 = [(PKLinkedApplicationAMSPromiseWrapper *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v6->_promise, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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