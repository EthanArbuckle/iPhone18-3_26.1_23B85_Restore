@interface RCMutexLock
- (RCMutexLock)initWithOptions:(unint64_t)a3;
- (void)dealloc;
- (void)performWithLockSync:(id)a3;
@end

@implementation RCMutexLock

- (RCMutexLock)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = RCMutexLock;
  v4 = [(RCMutexLock *)&v7 init];
  if (v4)
  {
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2 * (v3 & 1));
    pthread_mutex_init(&v4->_lock, &v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = RCMutexLock;
  [(RCMutexLock *)&v3 dealloc];
}

- (void)performWithLockSync:(id)a3
{
  v4 = a3;
  [(RCMutexLock *)self lock];
  if (v4)
  {
    v4[2]();
  }

  [(RCMutexLock *)self unlock];
}

@end