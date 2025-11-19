@interface UIColorPickerSceneHostingImpl
@end

@implementation UIColorPickerSceneHostingImpl

BOOL __52___UIColorPickerSceneHostingImpl_setupRemoteHosting__block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_IgnoreColorPickerPresentationTimeout, _UIInternalPreferencesRevisionVar == _UIInternalPreference_IgnoreColorPickerPresentationTimeout))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_IgnoreColorPickerPresentationTimeout, @"IgnoreColorPickerPresentationTimeout", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_IgnoreColorPickerPresentationTimeout;
    }

    while (v0 != _UIInternalPreference_IgnoreColorPickerPresentationTimeout);
  }

  return byte_1EA95E5DC && v1;
}

@end