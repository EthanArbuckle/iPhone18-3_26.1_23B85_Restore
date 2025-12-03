@interface ServiceDelegate
- (BOOL)allowXPCConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)allowXPCConnection:(id)connection
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  bOOLValue = 0;
  v6 = @"com.apple.wifi.cloudasset-access";
  if (v6)
  {
    v5 = [location[0] valueForEntitlement:v6];
    bOOLValue = [v5 BOOLValue];
  }

  v4 = bOOLValue;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v9 = 0;
  objc_storeStrong(&v9, connection);
  v8 = [(ServiceDelegate *)selfCopy allowXPCConnection:v9];
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