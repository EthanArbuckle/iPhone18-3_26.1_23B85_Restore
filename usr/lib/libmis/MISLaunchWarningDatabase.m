@interface MISLaunchWarningDatabase
- (id)queryForBundle:(id)a3 withError:(id *)a4;
- (id)queryForExecutableURL:(id)a3 withError:(id *)a4;
@end

@implementation MISLaunchWarningDatabase

- (id)queryForExecutableURL:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    v8 = objc_msgSend_queryExecutableURL_error_(v6, v7, v5, a4);
  }

  else
  {
    v9 = [MISLaunchWarningQueryResult alloc];
    v8 = objc_msgSend_initWithWarningState_withUserOverridden_withKBURL_(v9, v10, 0, 0, 0);
  }

  return v8;
}

- (id)queryForBundle:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    v8 = objc_msgSend_queryAppBundle_error_(v6, v7, v5, a4);
  }

  else
  {
    v9 = [MISLaunchWarningQueryResult alloc];
    v8 = objc_msgSend_initWithWarningState_withUserOverridden_withKBURL_(v9, v10, 0, 0, 0);
  }

  return v8;
}

@end