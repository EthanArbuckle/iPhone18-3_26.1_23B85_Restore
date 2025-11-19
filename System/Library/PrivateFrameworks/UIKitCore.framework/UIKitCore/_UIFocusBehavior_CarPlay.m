@interface _UIFocusBehavior_CarPlay
- (BOOL)requiresLegacyScreenBasedWindowLookup;
- (BOOL)wantsFocusSystemForScene:(id)a3;
@end

@implementation _UIFocusBehavior_CarPlay

- (BOOL)requiresLegacyScreenBasedWindowLookup
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_DisableLegacyScreenBasedWindowLookup, _UIInternalPreferencesRevisionVar == _UIInternalPreference_DisableLegacyScreenBasedWindowLookup))
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

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_DisableLegacyScreenBasedWindowLookup, @"DisableLegacyScreenBasedWindowLookup", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_DisableLegacyScreenBasedWindowLookup;
    }

    while (v2 != _UIInternalPreference_DisableLegacyScreenBasedWindowLookup);
  }

  return !byte_1EA95E75C || v3;
}

- (BOOL)wantsFocusSystemForScene:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusBehavior_CarPlay.m" lineNumber:36 description:{@"Attempting to initialize CarPlay focus system with a scene (%@) that is not a windowScene", v5}];
  }

  v6 = [v5 traitCollection];
  v7 = [v6 interactionModel];

  return (v7 & 0xA) != 0;
}

@end