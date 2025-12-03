@interface PKLaunchServicesProvider
- (id)applicationProxyForBundleURL:(id)l;
- (id)defaultApplicationWorkspace;
- (id)extensionPointForIdentifier:(id)identifier platform:(id)platform;
- (id)extensionPointRecordEnumeratorForExtensionPointIdentifier:(id)identifier;
- (id)plugInKitProxyForURL:(id)l;
- (id)plugInKitProxyForUUID:(id)d;
- (id)plugInRecordEnumerator;
- (id)plugInRecordEnumeratorForExtensionPointRecord:(id)record;
- (id)plugInRecordForIdentifier:(id)identifier;
- (id)plugInRecordForUUID:(id)d;
- (id)pluginKitProxyForIdentifier:(id)identifier;
@end

@implementation PKLaunchServicesProvider

- (id)defaultApplicationWorkspace
{
  v2 = +[PKApplicationWorkspaceProxy defaultWorkspace];

  return v2;
}

- (id)applicationProxyForBundleURL:(id)l
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:l];

  return v3;
}

- (id)plugInKitProxyForURL:(id)l
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForURL:l];

  return v3;
}

- (id)plugInKitProxyForUUID:(id)d
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForUUID:d];

  return v3;
}

- (id)pluginKitProxyForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:identifier];

  return v3;
}

- (id)extensionPointForIdentifier:(id)identifier platform:(id)platform
{
  v4 = [MEMORY[0x1E6963660] extensionPointForIdentifier:identifier platform:platform];

  return v4;
}

- (id)plugInRecordForUUID:(id)d
{
  v3 = MEMORY[0x1E69635D0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUID:dCopy error:0];

  return v5;
}

- (id)plugInRecordForIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69635D0];
  identifierCopy = identifier;
  LODWORD(v3) = [v3 instancesRespondToSelector:sel_initWithBundleIdentifier_requireValid_error_];
  v5 = objc_alloc(MEMORY[0x1E69635D0]);
  if (v3)
  {
    v6 = [v5 initWithBundleIdentifier:identifierCopy requireValid:1 error:0];
  }

  else
  {
    v6 = [v5 initWithBundleIdentifier:identifierCopy error:0];
  }

  v7 = v6;

  return v7;
}

- (id)plugInRecordEnumerator
{
  v2 = [MEMORY[0x1E69635D0] enumeratorWithOptions:0];

  return v2;
}

- (id)extensionPointRecordEnumeratorForExtensionPointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E6963668] enumeratorForExtensionPointIdentifier:identifierCopy];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)plugInRecordEnumeratorForExtensionPointRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:recordCopy options:0];
  }

  else
  {
    v5 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5258(recordCopy, v5);
    }

    v4 = 0;
  }

  return v4;
}

@end