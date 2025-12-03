@interface _PASLock
- (_PASLock)initWithGuardedData:(id)data;
- (id)guardedDataAssertingLockContext;
- (unsigned)runWithLockAcquired:(id)acquired shouldContinueBlock:(id)block;
- (unsigned)tryWithLockAcquired:(id)acquired;
- (void)_runThenUnlock:(uint64_t)unlock;
- (void)dealloc;
- (void)runWithLockAcquired:(id)acquired;
@end

@implementation _PASLock

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = _PASLock;
  [(_PASLock *)&v3 dealloc];
}

- (id)guardedDataAssertingLockContext
{
  if (pthread_mutex_trylock(&self->_lock))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v8 = 0;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "_PASLock:guardedDataAssertingLockContext called with lock acquired by different thread";
      v6 = &v8;
LABEL_10:
      _os_log_error_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (!self->_owner)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = 0;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "_PASLock:guardedDataAssertingLockContext called with lock not acquired";
      v6 = &v7;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  pthread_mutex_unlock(&self->_lock);

  return [(_PASLock *)self unsafeGuardedData];
}

- (unsigned)runWithLockAcquired:(id)acquired shouldContinueBlock:(id)block
{
  acquiredCopy = acquired;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  v9 = blockCopy[2](blockCopy);
  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    while ([(_PASLock *)self tryWithLockAcquired:acquiredCopy])
    {
      v10 = 1;
      sleep(1u);
      v11 = objc_autoreleasePoolPush();
      v12 = blockCopy[2](blockCopy);
      objc_autoreleasePoolPop(v11);
      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

LABEL_7:

  return v10;
}

- (unsigned)tryWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  if (pthread_mutex_trylock(&self->_lock))
  {
    v5 = 1;
  }

  else
  {
    [(_PASLock *)self _runThenUnlock:acquiredCopy];
    v5 = 0;
  }

  return v5;
}

- (void)_runThenUnlock:(uint64_t)unlock
{
  v3 = a2;
  if (unlock)
  {
    *(unlock + 72) = pthread_self();
    v3[2](v3, *(unlock + 80));
    *(unlock + 72) = 0;
    pthread_mutex_unlock((unlock + 8));
  }
}

- (void)runWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  pthread_mutex_lock(&self->_lock);
  [(_PASLock *)self _runThenUnlock:acquiredCopy];
}

- (_PASLock)initWithGuardedData:(id)data
{
  v11 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _PASLock;
  v6 = [(_PASLock *)&v9 init];
  if (v6)
  {
    v10.__sig = 0;
    *v10.__opaque = 0;
    pthread_mutexattr_init(&v10);
    pthread_mutexattr_settype(&v10, 2);
    pthread_mutex_init(&v6->_lock, &v10);
    pthread_mutexattr_destroy(&v10);
    objc_storeStrong(&v6->_guardedData, data);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end