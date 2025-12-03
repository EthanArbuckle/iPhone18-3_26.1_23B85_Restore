@interface SettingsExtensionHostViewController.SettingsExtensionProxy
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy)init;
@end

@implementation SettingsExtensionHostViewController.SettingsExtensionProxy

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_21CE1F428(connectionCopy);

  return v9 & 1;
}

- (_TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end