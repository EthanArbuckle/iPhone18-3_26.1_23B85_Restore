@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.clouddocs.bundle-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BRBundleServiceProtocol];
    [v4 setExportedInterface:v6];

    v7 = objc_alloc_init(BRBundleService);
    [v4 setExportedObject:v7];

    [v4 resume];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end