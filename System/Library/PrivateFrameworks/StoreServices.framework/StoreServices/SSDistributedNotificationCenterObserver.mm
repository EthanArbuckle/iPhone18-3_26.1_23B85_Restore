@interface SSDistributedNotificationCenterObserver
- (SSDistributedNotificationCenterObserver)initWithName:(id)a3 queue:(id)a4 block:(id)a5;
- (void)dealloc;
@end

@implementation SSDistributedNotificationCenterObserver

- (SSDistributedNotificationCenterObserver)initWithName:(id)a3 queue:(id)a4 block:(id)a5
{
  v10.receiver = self;
  v10.super_class = SSDistributedNotificationCenterObserver;
  v8 = [(SSDistributedNotificationCenterObserver *)&v10 init];
  if (v8)
  {
    v8->_block = [a5 copy];
    v8->_name = [a3 copy];
    if (a4)
    {
      v8->_dispatchQueue = a4;
      dispatch_retain(a4);
    }
  }

  return v8;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = SSDistributedNotificationCenterObserver;
  [(SSDistributedNotificationCenterObserver *)&v3 dealloc];
}

@end