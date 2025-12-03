@interface LSApplicationRecord
+ (id)csd_applicationRecordForApplicationIdentifier:(id)identifier;
+ (id)csd_applicationRecordForBundleIdentifier:(id)identifier;
- (BOOL)csd_hasPTTSelfAddEntitlement;
- (BOOL)csd_hasVoIPNetworkExtensionEntitlement;
@end

@implementation LSApplicationRecord

+ (id)csd_applicationRecordForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v4 = [LSBundleRecord bundleRecordWithApplicationIdentifier:identifierCopy error:&v9];
  v5 = v9;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v4;
  }

  else
  {
    if (v5)
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100478D14();
      }
    }

    v6 = 0;
  }

  return v6;
}

+ (id)csd_applicationRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100478D7C();
    }
  }

  return v4;
}

- (BOOL)csd_hasPTTSelfAddEntitlement
{
  entitlements = [(LSApplicationRecord *)self entitlements];
  v3 = [entitlements objectForKey:@"com.apple.developer.push-to-talk" ofClass:objc_opt_class()];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)csd_hasVoIPNetworkExtensionEntitlement
{
  entitlements = [(LSApplicationRecord *)self entitlements];
  v3 = objc_opt_class();
  v4 = [entitlements objectForKey:@"com.apple.developer.networking.networkextension" ofClass:v3 valuesOfClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 containsObject:@"app-push-provider"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end