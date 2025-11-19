@interface SettingsExtensionHostViewController.SettingsExtensionProxy
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy)init;
@end

@implementation SettingsExtensionHostViewController.SettingsExtensionProxy

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21CE1F428(v7);

  return v9 & 1;
}

- (_TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end