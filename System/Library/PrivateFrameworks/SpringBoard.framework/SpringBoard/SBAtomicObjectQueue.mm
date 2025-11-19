@interface SBAtomicObjectQueue
- (SBAtomicObjectQueue)init;
- (id)dequeue;
- (void)enqueue:(id)a3;
@end

@implementation SBAtomicObjectQueue

- (id)dequeue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_data _sb_dequeue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
    v4 = [MEMORY[0x277CBEB18] array];
    data = v3->_data;
    v3->_data = v4;
  }

  return v3;
}

- (void)enqueue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_data _sb_enqueue:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end