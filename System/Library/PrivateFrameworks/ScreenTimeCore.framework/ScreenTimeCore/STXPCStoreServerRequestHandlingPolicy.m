@interface STXPCStoreServerRequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
@end

@implementation STXPCStoreServerRequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 entitlements];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.private.screen-time.persistence"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[STLog persistence];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001214D8(v3, v7);
    }

    v6 = 0;
  }

  return v6;
}

@end