@interface SABGSystemTask
+ (id)newWithBGTask:(id)a3;
- (BOOL)shouldDefer;
- (SABGSystemTask)initWithBGTask:(id)a3;
- (void)deferTask;
@end

@implementation SABGSystemTask

- (SABGSystemTask)initWithBGTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SABGSystemTask;
  v6 = [(SABGSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    v7->_shouldDefer = 0;
  }

  return v7;
}

+ (id)newWithBGTask:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBGTask:v4];

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
  v2 = self;
  objc_sync_enter(v2);
  shouldDefer = v2->_shouldDefer;
  objc_sync_exit(v2);

  return shouldDefer;
}

@end