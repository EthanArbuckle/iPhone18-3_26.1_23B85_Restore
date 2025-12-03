@interface SBAtomicObjectQueue
- (SBAtomicObjectQueue)init;
- (id)dequeue;
- (void)enqueue:(id)enqueue;
@end

@implementation SBAtomicObjectQueue

- (id)dequeue
{
  os_unfair_lock_lock(&self->_lock);
  _sb_dequeue = [(NSMutableArray *)self->_data _sb_dequeue];
  os_unfair_lock_unlock(&self->_lock);

  return _sb_dequeue;
}

- (SBAtomicObjectQueue)init
{
  v7.receiver = self;
  v7.super_class = SBAtomicObjectQueue;
  v2 = [(SBAtomicObjectQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    data = v3->_data;
    v3->_data = array;
  }

  return v3;
}

- (void)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_data _sb_enqueue:enqueueCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end