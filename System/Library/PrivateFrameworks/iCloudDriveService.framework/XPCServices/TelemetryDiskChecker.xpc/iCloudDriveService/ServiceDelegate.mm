@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.clouddocs.telemetry-disk-checker"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
  {
    v6 = BRDiskCheckerServiceInterface();
    [connectionCopy setExportedInterface:v6];

    v7 = objc_opt_new();
    [connectionCopy setExportedObject:v7];
    [connectionCopy resume];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end