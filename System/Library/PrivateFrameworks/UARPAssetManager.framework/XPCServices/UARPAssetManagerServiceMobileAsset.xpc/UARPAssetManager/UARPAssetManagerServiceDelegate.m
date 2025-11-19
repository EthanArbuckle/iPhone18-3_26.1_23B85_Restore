@interface UARPAssetManagerServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
@end

@implementation UARPAssetManagerServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(UARPAssetManagerServiceDelegate *)self xpcConnectionHasEntitlement:v5];
  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAsyncAssetManagerDelegate];
    [v5 setRemoteObjectInterface:v7];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [v5 remoteObjectInterface];
    [v12 setClasses:v11 forSelector:"assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:" argumentIndex:0 ofReply:0];

    v13 = [v5 remoteObjectInterface];
    [v13 setClasses:v11 forSelector:"assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:" argumentIndex:1 ofReply:0];

    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAssetManagerServiceProtocol];
    [v5 setExportedInterface:v14];

    v15 = [[UARPAssetManagerServiceMobileAssetDispatcher alloc] initWithConnection:v5];
    [v5 setExportedObject:v15];
    [v5 resume];
  }

  return v6;
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.uarpassetmanagerservice.uarp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end