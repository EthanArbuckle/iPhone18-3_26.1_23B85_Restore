@interface _HKSPUnfairLock
- (_HKSPUnfairLock)init;
- (void)performBlock:(id)a3;
- (void)performBlockAssertingLocked:(id)a3;
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

- (void)performBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)performBlockAssertingLocked:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v4[2]();
}

@end