@interface BAInstallationSourceUtilities
+ (int64_t)installationSourceFromAuditToken:(id *)a3 applicationIdentifier:(id)a4;
@end

@implementation BAInstallationSourceUtilities

+ (int64_t)installationSourceFromAuditToken:(id *)a3 applicationIdentifier:(id)a4
{
  v4 = a4;
  v5 = sub_1000104FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100048570(v4, v5);
  }

  v6 = [LSApplicationProxy applicationProxyForIdentifier:v4];
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
      sub_1000485E8(v4, v9);
    }

    v8 = 3;
  }

  return v8;
}

@end