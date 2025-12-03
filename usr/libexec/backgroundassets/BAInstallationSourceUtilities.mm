@interface BAInstallationSourceUtilities
+ (int64_t)installationSourceFromAuditToken:(id *)token applicationIdentifier:(id)identifier;
@end

@implementation BAInstallationSourceUtilities

+ (int64_t)installationSourceFromAuditToken:(id *)token applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_1000104FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100048570(identifierCopy, v5);
  }

  v6 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
  v7 = v6;
  if (v6)
  {
    if ([v6 profileValidated])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = sub_1000104FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000485E8(identifierCopy, v9);
    }

    v8 = 3;
  }

  return v8;
}

@end