@interface UIContextMenuMagicMorphAnimationEnabled
@end

@implementation UIContextMenuMagicMorphAnimationEnabled

void ___UIContextMenuMagicMorphAnimationEnabled_block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (_UISolariumEnabled())
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v2 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_ContextMenuMagicMorphEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ContextMenuMagicMorphEnabled))
    {
      v3 = 1;
    }

    else
    {
      do
      {
        v3 = v2 >= v5;
        if (v2 < v5)
        {
          break;
        }

        _UIInternalPreferenceSync(v2, &_UIInternalPreference_ContextMenuMagicMorphEnabled, @"ContextMenuMagicMorphEnabled", _UIInternalPreferenceUpdateBool);
        v5 = _UIInternalPreference_ContextMenuMagicMorphEnabled;
      }

      while (v2 != _UIInternalPreference_ContextMenuMagicMorphEnabled);
    }

    if (byte_1EA95E974)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 6)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  _MergedGlobals_1408 = v4;
}

@end