@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSFeatureFlagReaderProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy setInterruptionHandler:&stru_100004258];
  [connectionCopy setInvalidationHandler:&stru_100004258];
  [connectionCopy resume];

  return 1;
}

@end