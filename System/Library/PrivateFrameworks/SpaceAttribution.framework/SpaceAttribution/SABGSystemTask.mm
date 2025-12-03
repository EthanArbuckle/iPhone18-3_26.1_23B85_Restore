@interface SABGSystemTask
+ (id)newWithBGTask:(id)task;
- (BOOL)shouldDefer;
- (SABGSystemTask)initWithBGTask:(id)task;
- (void)deferTask;
@end

@implementation SABGSystemTask

- (SABGSystemTask)initWithBGTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = SABGSystemTask;
  v6 = [(SABGSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
    v7->_shouldDefer = 0;
  }

  return v7;
}

+ (id)newWithBGTask:(id)task
{
  taskCopy = task;
  v5 = [[self alloc] initWithBGTask:taskCopy];

  return v5;
}

- (void)deferTask
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldDefer = 1;
  objc_sync_exit(obj);
}

- (BOOL)shouldDefer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldDefer = selfCopy->_shouldDefer;
  objc_sync_exit(selfCopy);

  return shouldDefer;
}

@end