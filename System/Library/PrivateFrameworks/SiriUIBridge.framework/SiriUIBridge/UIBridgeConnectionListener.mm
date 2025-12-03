@interface UIBridgeConnectionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation UIBridgeConnectionListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_222DF09A4(selfCopy, connectionCopy);

  return v9 & 1;
}

@end