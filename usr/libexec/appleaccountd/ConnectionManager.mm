@interface ConnectionManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ConnectionManager

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100157F70(listenerCopy, connectionCopy);

  return v9 & 1;
}

@end