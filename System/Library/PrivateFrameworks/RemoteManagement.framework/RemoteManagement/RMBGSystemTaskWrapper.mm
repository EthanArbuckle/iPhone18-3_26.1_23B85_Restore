@interface RMBGSystemTaskWrapper
- (RMBGSystemTaskWrapper)initWithTask:(id)a3;
- (void)setTaskCompleted;
@end

@implementation RMBGSystemTaskWrapper

- (RMBGSystemTaskWrapper)initWithTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMBGSystemTaskWrapper;
  v6 = [(RMBGSystemTaskWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
  }

  return v7;
}

- (void)setTaskCompleted
{
  v2 = [(RMBGSystemTaskWrapper *)self task];
  [v2 setTaskCompleted];
}

@end