@interface UIScreenSupportsDynamicMainScreen
@end

@implementation UIScreenSupportsDynamicMainScreen

uint64_t ___UIScreenSupportsDynamicMainScreen_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DynamicMainScreen, @"DynamicMainScreen", _UIInternalPreferenceUpdateBool);
    v1 = (byte_1ED48B1D4 != 0) & ~result;
  }

  byte_1ED49AAE4 = v1;
  return result;
}

@end