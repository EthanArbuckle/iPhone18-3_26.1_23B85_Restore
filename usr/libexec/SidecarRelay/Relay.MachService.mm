@interface Relay.MachService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation Relay.MachService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100034268(selfCopy, connectionCopy);

  return v9 & 1;
}

@end