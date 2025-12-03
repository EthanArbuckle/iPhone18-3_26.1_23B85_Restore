@interface XPCDaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation XPCDaemonService

- (void)start
{
  selfCopy = self;
  XPCDaemonService.start()();
}

- (void)stop
{
  selfCopy = self;
  XPCDaemonService.stop()();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = XPCDaemonService.listener(_:shouldAcceptNewConnection:)(selfCopy, connectionCopy);

  return v9;
}

@end