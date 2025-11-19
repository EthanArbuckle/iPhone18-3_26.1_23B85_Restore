@interface ICUnfairLock
- (ICUnfairLock)init;
- (ICUnfairLock)lockWithBlock:(id)a3;
@end

@implementation ICUnfairLock

- (ICUnfairLock)lockWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
  return result;
}

- (ICUnfairLock)init
{
  v3.receiver = self;
  v3.super_class = ICUnfairLock;
  result = [(ICUnfairLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end