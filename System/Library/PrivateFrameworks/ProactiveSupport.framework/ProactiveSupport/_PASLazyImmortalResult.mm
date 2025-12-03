@interface _PASLazyImmortalResult
- (_PASLazyImmortalResult)initWithResult:(id)result;
- (id)_initWithBlock:(id)block;
- (id)result;
- (id)resultIfAvailable;
@end

@implementation _PASLazyImmortalResult

- (id)resultIfAvailable
{
  v3 = atomic_load(&self->_done);
  if (v3)
  {
    v4 = self->super._data;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)result
{
  p_done = &self->_done;
  v4 = atomic_load(&self->_done);
  if ((v4 & 1) == 0)
  {
    pthread_mutex_lock(&self->super._lock);
    v7 = atomic_load(p_done);
    if ((v7 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = (*(self->super._block + 2))();
      objc_autoreleasePoolPop(v8);
      data = self->super._data;
      self->super._data = v9;

      block = self->super._block;
      self->super._block = 0;

      atomic_store(1u, &self->_done);
    }

    pthread_mutex_unlock(&self->super._lock);
  }

  v5 = self->super._data;

  return v5;
}

- (_PASLazyImmortalResult)initWithResult:(id)result
{
  resultCopy = result;
  _init = [(_PASLazyResult *)[_PASLazyImmortalResult alloc] _init];

  if (_init)
  {
    objc_storeStrong(&_init->super._data, result);
    atomic_store(1u, &_init->_done);
  }

  return _init;
}

- (id)_initWithBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = _PASLazyImmortalResult;
  result = [(_PASLazyResult *)&v4 _initWithBlock:block];
  if (result)
  {
    atomic_store(0, result + 88);
  }

  return result;
}

@end