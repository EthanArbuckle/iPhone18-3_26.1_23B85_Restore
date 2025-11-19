@interface CFXEngineNotificationQueueTransientWrapper
- (void)dealloc;
@end

@implementation CFXEngineNotificationQueueTransientWrapper

- (void)dealloc
{
  objc_storeWeak(&self->_queue, 0);
  v3.receiver = self;
  v3.super_class = CFXEngineNotificationQueueTransientWrapper;
  [(CFXEngineNotificationQueueTransientWrapper *)&v3 dealloc];
}

@end