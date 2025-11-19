@interface TRIMaintenanceSubTask
- (TRIMaintenanceSubTask)initWithName:(id)a3 subtaskBlock:(id)a4;
@end

@implementation TRIMaintenanceSubTask

- (TRIMaintenanceSubTask)initWithName:(id)a3 subtaskBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TRIMaintenanceSubTask;
  v9 = [(TRIMaintenanceSubTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = MEMORY[0x2743948D0](v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end