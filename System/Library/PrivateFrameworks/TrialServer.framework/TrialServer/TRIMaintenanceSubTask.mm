@interface TRIMaintenanceSubTask
- (TRIMaintenanceSubTask)initWithName:(id)name subtaskBlock:(id)block;
@end

@implementation TRIMaintenanceSubTask

- (TRIMaintenanceSubTask)initWithName:(id)name subtaskBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = TRIMaintenanceSubTask;
  v9 = [(TRIMaintenanceSubTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = MEMORY[0x2743948D0](blockCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end