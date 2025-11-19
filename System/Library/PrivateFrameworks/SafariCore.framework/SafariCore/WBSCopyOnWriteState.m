@interface WBSCopyOnWriteState
- (WBSCopyOnWriteState)init;
- (id)forkIfNeededWithHandler:(id)a3;
- (void)decrementCount;
- (void)incrementCount;
@end

@implementation WBSCopyOnWriteState

- (WBSCopyOnWriteState)init
{
  v6.receiver = self;
  v6.super_class = WBSCopyOnWriteState;
  v2 = [(WBSCopyOnWriteState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_count = 1;
    v4 = v2;
  }

  return v3;
}

- (void)incrementCount
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_count;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)decrementCount
{
  os_unfair_lock_lock(&self->_lock);
  --self->_count;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)forkIfNeededWithHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  count = v5->_count;
  if (count < 2)
  {
    v7 = v5;
  }

  else
  {
    v5->_count = count - 1;
    v7 = objc_alloc_init(WBSCopyOnWriteState);

    v4[2](v4);
  }

  os_unfair_lock_unlock(&v5->_lock);

  return v7;
}

@end