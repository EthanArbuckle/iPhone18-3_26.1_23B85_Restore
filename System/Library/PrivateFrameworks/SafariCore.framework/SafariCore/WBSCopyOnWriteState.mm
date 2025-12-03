@interface WBSCopyOnWriteState
- (WBSCopyOnWriteState)init;
- (id)forkIfNeededWithHandler:(id)handler;
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

- (id)forkIfNeededWithHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  count = selfCopy->_count;
  if (count < 2)
  {
    v7 = selfCopy;
  }

  else
  {
    selfCopy->_count = count - 1;
    v7 = objc_alloc_init(WBSCopyOnWriteState);

    handlerCopy[2](handlerCopy);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  return v7;
}

@end