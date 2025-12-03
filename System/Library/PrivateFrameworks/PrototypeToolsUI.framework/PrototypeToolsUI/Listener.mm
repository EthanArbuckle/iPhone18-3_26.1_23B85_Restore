@interface Listener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation Listener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000AB84(connectionCopy);

  return v9;
}

@end