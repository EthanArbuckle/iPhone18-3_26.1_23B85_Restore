@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC28iCloudQuotaNetworkingService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = objc_opt_self();
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v11 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP25iCloudQuotaNetworkingCore36iCloudQuotaNetworkingServiceProtocol_];
  [connectionCopy setExportedInterface:v11];

  v12 = [objc_allocWithZone(type metadata accessor for iCloudQuotaNetworkingService()) init];
  [connectionCopy setExportedObject:v12];
  [connectionCopy resume];

  return 1;
}

- (_TtC28iCloudQuotaNetworkingService15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end