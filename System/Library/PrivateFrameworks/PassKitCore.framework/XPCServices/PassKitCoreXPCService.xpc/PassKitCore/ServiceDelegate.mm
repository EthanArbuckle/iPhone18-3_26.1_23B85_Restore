@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PassKitCoreXPCServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_alloc_init(PassKitCoreXPCService);
  [connectionCopy setExportedObject:v6];

  [connectionCopy resume];
  return 1;
}

@end