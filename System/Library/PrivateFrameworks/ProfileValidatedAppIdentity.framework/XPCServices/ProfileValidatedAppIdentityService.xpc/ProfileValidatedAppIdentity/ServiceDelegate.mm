@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PVAppIdentityServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = [[PVAppIdentityService alloc] initWithConnection:connectionCopy];
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end