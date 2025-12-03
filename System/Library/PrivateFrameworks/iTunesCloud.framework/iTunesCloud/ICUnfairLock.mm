@interface ICUnfairLock
- (ICUnfairLock)init;
- (ICUnfairLock)lockWithBlock:(id)block;
@end

@implementation ICUnfairLock

- (ICUnfairLock)lockWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  blockCopy[2](blockCopy);

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