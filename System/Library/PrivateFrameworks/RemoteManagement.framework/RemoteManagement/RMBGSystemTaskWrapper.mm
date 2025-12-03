@interface RMBGSystemTaskWrapper
- (RMBGSystemTaskWrapper)initWithTask:(id)task;
- (void)setTaskCompleted;
@end

@implementation RMBGSystemTaskWrapper

- (RMBGSystemTaskWrapper)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = RMBGSystemTaskWrapper;
  v6 = [(RMBGSystemTaskWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
  }

  return v7;
}

- (void)setTaskCompleted
{
  task = [(RMBGSystemTaskWrapper *)self task];
  [task setTaskCompleted];
}

@end