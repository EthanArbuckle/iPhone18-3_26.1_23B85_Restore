@interface PSBarrier
- (PSBarrier)initWithName:(id)name;
@end

@implementation PSBarrier

- (PSBarrier)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PSBarrier;
  v6 = [(PSBarrier *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    blockingTasks = v7->_blockingTasks;
    v7->_blockingTasks = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    unblockingTasks = v7->_unblockingTasks;
    v7->_unblockingTasks = weakObjectsHashTable2;
  }

  return v7;
}

@end