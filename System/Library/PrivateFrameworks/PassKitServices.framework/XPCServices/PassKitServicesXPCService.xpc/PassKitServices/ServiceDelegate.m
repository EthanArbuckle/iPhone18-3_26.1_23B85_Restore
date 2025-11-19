@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PassKitServicesXPCServiceProtocol];
  [v4 setExportedInterface:v5];

  v6 = objc_alloc_init(PassKitServicesXPCService);
  [v4 setExportedObject:v6];
  [v4 resume];

  return 1;
}

@end