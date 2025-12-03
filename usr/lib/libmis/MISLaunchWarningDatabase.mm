@interface MISLaunchWarningDatabase
- (id)queryForBundle:(id)bundle withError:(id *)error;
- (id)queryForExecutableURL:(id)l withError:(id *)error;
@end

@implementation MISLaunchWarningDatabase

- (id)queryForExecutableURL:(id)l withError:(id *)error
{
  lCopy = l;
  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    v8 = objc_msgSend_queryExecutableURL_error_(v6, v7, lCopy, error);
  }

  else
  {
    v9 = [MISLaunchWarningQueryResult alloc];
    v8 = objc_msgSend_initWithWarningState_withUserOverridden_withKBURL_(v9, v10, 0, 0, 0);
  }

  return v8;
}

- (id)queryForBundle:(id)bundle withError:(id *)error
{
  bundleCopy = bundle;
  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    v8 = objc_msgSend_queryAppBundle_error_(v6, v7, bundleCopy, error);
  }

  else
  {
    v9 = [MISLaunchWarningQueryResult alloc];
    v8 = objc_msgSend_initWithWarningState_withUserOverridden_withKBURL_(v9, v10, 0, 0, 0);
  }

  return v8;
}

@end