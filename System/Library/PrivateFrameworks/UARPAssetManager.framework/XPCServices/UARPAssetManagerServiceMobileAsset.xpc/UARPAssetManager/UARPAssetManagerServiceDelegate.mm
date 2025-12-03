@interface UARPAssetManagerServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
@end

@implementation UARPAssetManagerServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(UARPAssetManagerServiceDelegate *)self xpcConnectionHasEntitlement:connectionCopy];
  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAsyncAssetManagerDelegate];
    [connectionCopy setRemoteObjectInterface:v7];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    remoteObjectInterface = [connectionCopy remoteObjectInterface];
    [remoteObjectInterface setClasses:v11 forSelector:"assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:" argumentIndex:0 ofReply:0];

    remoteObjectInterface2 = [connectionCopy remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v11 forSelector:"assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:" argumentIndex:1 ofReply:0];

    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAssetManagerServiceProtocol];
    [connectionCopy setExportedInterface:v14];

    v15 = [[UARPAssetManagerServiceMobileAssetDispatcher alloc] initWithConnection:connectionCopy];
    [connectionCopy setExportedObject:v15];
    [connectionCopy resume];
  }

  return v6;
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  v3 = [entitlement valueForEntitlement:@"com.apple.uarpassetmanagerservice.uarp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end