@interface UIFocusBehaviorAPIBehavior
@end

@implementation UIFocusBehaviorAPIBehavior

void ___UIFocusBehaviorAPIBehavior_block_invoke()
{
  v0 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v1 = [v0 forcesDefaultFocusAppearance];

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v3 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference__UIFocusDefaultAppearanceEnabled, @"_UIFocusDefaultAppearanceEnabled", _UIInternalPreferenceUpdateBool);
    if (byte_1EA95E76C)
    {
      v2 = v3;
    }

    else
    {
      v2 = 1;
    }
  }

  _UIFocusBehaviorAPIBehavior_apiFocusBehavior = v2;
}

@end