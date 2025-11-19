@interface _PASCachedResult
- (_PASCachedResult)init;
- (_PASCachedResult)resultWithBlock:(id)a3;
- (id)resultNonnullWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation _PASCachedResult

- (id)resultNonnullWithBlock:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_done);
  if ((v5 & 1) == 0)
  {
    pthread_mutex_lock(&self->_lock);
    v9 = atomic_load(&self->_done);
    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v4[2](v4);
      objc_autoreleasePoolPop(v10);
      data = self->_data;
      self->_data = v11;

      atomic_store(1u, &self->_done);
    }

    pthread_mutex_unlock(&self->_lock);
  }

  v6 = self->_data;
  v7 = v6;

  return v6;
}

- (_PASCachedResult)resultWithBlock:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_done);
  if ((v5 & 1) == 0)
  {
    pthread_mutex_lock(&self->_lock);
    v9 = atomic_load(&self->_done);
    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v4[2](v4);
      objc_autoreleasePoolPop(v10);
      data = self->_data;
      self->_data = v11;

      atomic_store(1u, &self->_done);
    }

    pthread_mutex_unlock(&self->_lock);
  }

  v6 = self->_data;
  v7 = v6;

  return v6;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = _PASCachedResult;
  [(_PASCachedResult *)&v3 dealloc];
}

- (_PASCachedResult)init
{
  v5.receiver = self;
  v5.super_class = _PASCachedResult;
  v2 = [(_PASCachedResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(0, &v2->_done);
    pthread_mutex_init(&v2->_lock, 0);
  }

  return v3;
}

@end