@interface PSBarrier
- (PSBarrier)initWithName:(id)a3;
@end

@implementation PSBarrier

- (PSBarrier)initWithName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PSBarrier;
  v6 = [(PSBarrier *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    blockingTasks = v7->_blockingTasks;
    v7->_blockingTasks = v8;

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    unblockingTasks = v7->_unblockingTasks;
    v7->_unblockingTasks = v10;
  }

  return v7;
}

@end