@interface PKLaunchServicesProvider
- (id)applicationProxyForBundleURL:(id)a3;
- (id)defaultApplicationWorkspace;
- (id)extensionPointForIdentifier:(id)a3 platform:(id)a4;
- (id)extensionPointRecordEnumeratorForExtensionPointIdentifier:(id)a3;
- (id)plugInKitProxyForURL:(id)a3;
- (id)plugInKitProxyForUUID:(id)a3;
- (id)plugInRecordEnumerator;
- (id)plugInRecordEnumeratorForExtensionPointRecord:(id)a3;
- (id)plugInRecordForIdentifier:(id)a3;
- (id)plugInRecordForUUID:(id)a3;
- (id)pluginKitProxyForIdentifier:(id)a3;
@end

@implementation PKLaunchServicesProvider

- (id)defaultApplicationWorkspace
{
  v2 = +[PKApplicationWorkspaceProxy defaultWorkspace];

  return v2;
}

- (id)applicationProxyForBundleURL:(id)a3
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:a3];

  return v3;
}

- (id)plugInKitProxyForURL:(id)a3
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForURL:a3];

  return v3;
}

- (id)plugInKitProxyForUUID:(id)a3
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForUUID:a3];

  return v3;
}

- (id)pluginKitProxyForIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:a3];

  return v3;
}

- (id)extensionPointForIdentifier:(id)a3 platform:(id)a4
{
  v4 = [MEMORY[0x1E6963660] extensionPointForIdentifier:a3 platform:a4];

  return v4;
}

- (id)plugInRecordForUUID:(id)a3
{
  v3 = MEMORY[0x1E69635D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUID:v4 error:0];

  return v5;
}

- (id)plugInRecordForIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69635D0];
  v4 = a3;
  LODWORD(v3) = [v3 instancesRespondToSelector:sel_initWithBundleIdentifier_requireValid_error_];
  v5 = objc_alloc(MEMORY[0x1E69635D0]);
  if (v3)
  {
    v6 = [v5 initWithBundleIdentifier:v4 requireValid:1 error:0];
  }

  else
  {
    v6 = [v5 initWithBundleIdentifier:v4 error:0];
  }

  v7 = v6;

  return v7;
}

- (id)plugInRecordEnumerator
{
  v2 = [MEMORY[0x1E69635D0] enumeratorWithOptions:0];

  return v2;
}

- (id)extensionPointRecordEnumeratorForExtensionPointIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E6963668] enumeratorForExtensionPointIdentifier:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)plugInRecordEnumeratorForExtensionPointRecord:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:v3 options:0];
  }

  else
  {
    v5 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5258(v3, v5);
    }

    v4 = 0;
  }

  return v4;
}

@end