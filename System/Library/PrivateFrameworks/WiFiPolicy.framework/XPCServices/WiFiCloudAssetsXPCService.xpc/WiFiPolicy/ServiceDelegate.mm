@interface ServiceDelegate
- (BOOL)allowXPCConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)allowXPCConnection:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  v6 = @"com.apple.wifi.cloudasset-access";
  if (v6)
  {
    v5 = [location[0] valueForEntitlement:v6];
    v7 = [v5 BOOLValue];
  }

  v4 = v7;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [(ServiceDelegate *)v11 allowXPCConnection:v9];
  if (v8)
  {
    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WiFiCloudAssetsXPCServiceProtocol];
    [v9 setExportedInterface:?];

    v7 = objc_opt_new();
    [v9 setExportedObject:v7];
    [v9 resume];
    v12 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    NSLog(@"MISSING ENTITLEMENT, invalidating connection");
    [v9 invalidate];
    v12 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

@end