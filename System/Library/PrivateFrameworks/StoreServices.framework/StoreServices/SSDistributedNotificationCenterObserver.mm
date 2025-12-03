@interface SSDistributedNotificationCenterObserver
- (SSDistributedNotificationCenterObserver)initWithName:(id)name queue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation SSDistributedNotificationCenterObserver

- (SSDistributedNotificationCenterObserver)initWithName:(id)name queue:(id)queue block:(id)block
{
  v10.receiver = self;
  v10.super_class = SSDistributedNotificationCenterObserver;
  v8 = [(SSDistributedNotificationCenterObserver *)&v10 init];
  if (v8)
  {
    v8->_block = [block copy];
    v8->_name = [name copy];
    if (queue)
    {
      v8->_dispatchQueue = queue;
      dispatch_retain(queue);
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