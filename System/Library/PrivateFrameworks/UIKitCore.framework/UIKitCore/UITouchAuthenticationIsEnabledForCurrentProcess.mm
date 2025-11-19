@interface UITouchAuthenticationIsEnabledForCurrentProcess
@end

@implementation UITouchAuthenticationIsEnabledForCurrentProcess

void ___UITouchAuthenticationIsEnabledForCurrentProcess_block_invoke()
{
  v5 = _UIMainBundleIdentifier();
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v4 = _UIInternalPreference_BundleIdentifierForViewServiceWantingTouchAuthentication, _UIInternalPreferencesRevisionVar == _UIInternalPreference_BundleIdentifierForViewServiceWantingTouchAuthentication))
  {
    v1 = 0;
  }

  else
  {
    while (v0 >= v4)
    {
      _UIInternalPreferenceSync(v0, &_UIInternalPreference_BundleIdentifierForViewServiceWantingTouchAuthentication, @"BundleIdentifierForViewServiceWantingTouchAuthentication", _UIInternalPreferenceUpdateId);
      v1 = 0;
      v4 = _UIInternalPreference_BundleIdentifierForViewServiceWantingTouchAuthentication;
      if (v0 == _UIInternalPreference_BundleIdentifierForViewServiceWantingTouchAuthentication)
      {
        goto LABEL_5;
      }
    }

    v1 = qword_1ED48B2D8;
  }

LABEL_5:
  v2 = v1;
  if ([MEMORY[0x1E69DECA0] shouldAuthenticateServiceBundleId:v5])
  {
    v3 = 1;
  }

  else if (v2)
  {
    v3 = [v5 isEqualToString:v2];
  }

  else
  {
    v3 = 0;
  }

  _MergedGlobals_1192 = v3;
}

@end