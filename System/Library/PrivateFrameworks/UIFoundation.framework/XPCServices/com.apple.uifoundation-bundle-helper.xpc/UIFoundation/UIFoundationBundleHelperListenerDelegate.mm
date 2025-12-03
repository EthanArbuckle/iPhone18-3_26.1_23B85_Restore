@interface UIFoundationBundleHelperListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation UIFoundationBundleHelperListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[UIFoundationBundleHelper XPCInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = +[UIFoundationBundleHelper bundleHelper];
  [connectionCopy setExportedObject:v6];

  [connectionCopy resume];
  return 1;
}

@end