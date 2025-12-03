@interface Daemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation Daemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = Daemon.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return v9;
}

@end