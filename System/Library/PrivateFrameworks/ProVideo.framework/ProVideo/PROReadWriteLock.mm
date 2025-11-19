@interface PROReadWriteLock
- (PROReadWriteLock)init;
- (void)dealloc;
@end

@implementation PROReadWriteLock

- (PROReadWriteLock)init
{
  v5.receiver = self;
  v5.super_class = PROReadWriteLock;
  v2 = [(PROReadWriteLock *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->lock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->lock);
  v3.receiver = self;
  v3.super_class = PROReadWriteLock;
  [(PROReadWriteLock *)&v3 dealloc];
}

@end