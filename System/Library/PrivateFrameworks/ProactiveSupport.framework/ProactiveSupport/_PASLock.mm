@interface _PASLock
- (_PASLock)initWithGuardedData:(id)a3;
- (id)guardedDataAssertingLockContext;
- (unsigned)runWithLockAcquired:(id)a3 shouldContinueBlock:(id)a4;
- (unsigned)tryWithLockAcquired:(id)a3;
- (void)_runThenUnlock:(uint64_t)a1;
- (void)dealloc;
- (void)runWithLockAcquired:(id)a3;
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

- (unsigned)runWithLockAcquired:(id)a3 shouldContinueBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7[2](v7);
  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    while ([(_PASLock *)self tryWithLockAcquired:v6])
    {
      v10 = 1;
      sleep(1u);
      v11 = objc_autoreleasePoolPush();
      v12 = v7[2](v7);
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

- (unsigned)tryWithLockAcquired:(id)a3
{
  v4 = a3;
  if (pthread_mutex_trylock(&self->_lock))
  {
    v5 = 1;
  }

  else
  {
    [(_PASLock *)self _runThenUnlock:v4];
    v5 = 0;
  }

  return v5;
}

- (void)_runThenUnlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(a1 + 72) = pthread_self();
    v3[2](v3, *(a1 + 80));
    *(a1 + 72) = 0;
    pthread_mutex_unlock((a1 + 8));
  }
}

- (void)runWithLockAcquired:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(_PASLock *)self _runThenUnlock:v4];
}

- (_PASLock)initWithGuardedData:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    objc_storeStrong(&v6->_guardedData, a3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end