@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC28iCloudQuotaNetworkingService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP25iCloudQuotaNetworkingCore36iCloudQuotaNetworkingServiceProtocol_];
  [v9 setExportedInterface:v11];

  v12 = [objc_allocWithZone(type metadata accessor for iCloudQuotaNetworkingService()) init];
  [v9 setExportedObject:v12];
  [v9 resume];

  return 1;
}

- (_TtC28iCloudQuotaNetworkingService15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end