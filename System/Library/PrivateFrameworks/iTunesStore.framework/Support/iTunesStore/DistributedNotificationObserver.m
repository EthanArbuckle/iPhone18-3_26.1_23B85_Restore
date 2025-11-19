@interface DistributedNotificationObserver
- (DistributedNotificationObserver)initWithServiceName:(id)a3;
- (void)dealloc;
- (void)postNotificationName:(id)a3 message:(id)a4;
@end

@implementation DistributedNotificationObserver

- (DistributedNotificationObserver)initWithServiceName:(id)a3
{
  v6.receiver = self;
  v6.super_class = DistributedNotificationObserver;
  v4 = [(DistributedNotificationObserver *)&v6 init];
  if (v4)
  {
    v4->_connection = [[SSXPCConnection alloc] initWithServiceName:a3];
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

- (void)postNotificationName:(id)a3 message:(id)a4
{
  if ([(NSMutableSet *)self->_notificationNames containsObject:a3])
  {
    connection = self->_connection;

    [(SSXPCConnection *)connection sendMessage:a4];
  }
}

@end