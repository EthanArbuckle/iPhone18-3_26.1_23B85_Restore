@interface DistributedNotificationObserver
- (DistributedNotificationObserver)initWithServiceName:(id)name;
- (void)dealloc;
- (void)postNotificationName:(id)name message:(id)message;
@end

@implementation DistributedNotificationObserver

- (DistributedNotificationObserver)initWithServiceName:(id)name
{
  v6.receiver = self;
  v6.super_class = DistributedNotificationObserver;
  v4 = [(DistributedNotificationObserver *)&v6 init];
  if (v4)
  {
    v4->_connection = [[SSXPCConnection alloc] initWithServiceName:name];
    v4->_notificationNames = objc_alloc_init(NSMutableSet);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DistributedNotificationObserver;
  [(DistributedNotificationObserver *)&v3 dealloc];
}

- (void)postNotificationName:(id)name message:(id)message
{
  if ([(NSMutableSet *)self->_notificationNames containsObject:name])
  {
    connection = self->_connection;

    [(SSXPCConnection *)connection sendMessage:message];
  }
}

@end