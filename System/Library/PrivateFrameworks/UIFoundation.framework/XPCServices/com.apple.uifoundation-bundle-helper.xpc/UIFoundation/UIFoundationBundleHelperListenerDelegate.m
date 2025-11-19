@interface UIFoundationBundleHelperListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation UIFoundationBundleHelperListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[UIFoundationBundleHelper XPCInterface];
  [v4 setExportedInterface:v5];

  v6 = +[UIFoundationBundleHelper bundleHelper];
  [v4 setExportedObject:v6];

  [v4 resume];
  return 1;
}

@end