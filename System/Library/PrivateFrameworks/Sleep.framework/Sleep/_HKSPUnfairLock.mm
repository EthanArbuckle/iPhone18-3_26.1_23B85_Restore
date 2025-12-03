@interface _HKSPUnfairLock
- (_HKSPUnfairLock)init;
- (void)performBlock:(id)block;
- (void)performBlockAssertingLocked:(id)locked;
@end

@implementation _HKSPUnfairLock

- (_HKSPUnfairLock)init
{
  v6.receiver = self;
  v6.super_class = _HKSPUnfairLock;
  v2 = [(_HKSPUnfairLock *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)performBlockAssertingLocked:(id)locked
{
  lockedCopy = locked;
  os_unfair_lock_assert_owner(&self->_lock);
  lockedCopy[2]();
}

@end