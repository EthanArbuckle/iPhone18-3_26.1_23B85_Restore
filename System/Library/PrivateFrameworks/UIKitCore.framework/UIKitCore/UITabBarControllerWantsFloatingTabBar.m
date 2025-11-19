@interface UITabBarControllerWantsFloatingTabBar
@end

@implementation UITabBarControllerWantsFloatingTabBar

void ___UITabBarControllerWantsFloatingTabBar_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v6 = _UIInternalPreference_IgnoreFloatingTabBarLinkCheck, _UIInternalPreferencesRevisionVar == _UIInternalPreference_IgnoreFloatingTabBarLinkCheck))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v6;
      if (v0 < v6)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_IgnoreFloatingTabBarLinkCheck, @"IgnoreFloatingTabBarLinkCheck", _UIInternalPreferenceUpdateBool);
      v6 = _UIInternalPreference_IgnoreFloatingTabBarLinkCheck;
    }

    while (v0 != _UIInternalPreference_IgnoreFloatingTabBarLinkCheck);
  }

  if (byte_1EA95E27C)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v7 = _UIMainBundleIdentifier();
  if ((dyld_program_sdk_at_least() & 1) != 0 || v2)
  {
    v3 = _UIKitUserDefaults();
    v4 = [v3 objectForKey:@"UseFloatingTabBar"];

    if (v4)
    {
      v5 = [v4 BOOLValue];
    }

    else if (_os_feature_enabled_impl())
    {
      v5 = 1;
    }

    else
    {
      v5 = _os_feature_enabled_impl();
    }

    _MergedGlobals_63_0 = v5;
  }

  if ([v7 isEqualToString:@"com.apple.DocumentManagerUICore.Service"])
  {
    _MergedGlobals_63_0 = _UIDocumentViewControllerWantsUIPDocumentLanding();
  }
}

@end