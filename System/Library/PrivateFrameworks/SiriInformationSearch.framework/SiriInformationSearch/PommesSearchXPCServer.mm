@interface PommesSearchXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PommesSearchXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized PommesSearchServiceDelegate.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

@end