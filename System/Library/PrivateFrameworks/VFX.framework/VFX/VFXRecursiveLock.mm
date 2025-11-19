@interface VFXRecursiveLock
- (VFXRecursiveLock)init;
- (void)dealloc;
@end

@implementation VFXRecursiveLock

- (VFXRecursiveLock)init
{
  v6 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VFXRecursiveLock;
  v2 = [(VFXRecursiveLock *)&v4 init];
  if (v2)
  {
    v5.__sig = 0;
    *v5.__opaque = 0;
    pthread_mutexattr_init(&v5);
    pthread_mutexattr_settype(&v5, 2);
    pthread_mutexattr_setpolicy_np(&v5, 1);
    pthread_mutex_init(&v2->_mutex, &v5);
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  v3.receiver = self;
  v3.super_class = VFXRecursiveLock;
  [(VFXRecursiveLock *)&v3 dealloc];
}

@end