@interface _UIFocusBehavior_CarPlay
- (BOOL)requiresLegacyScreenBasedWindowLookup;
- (BOOL)wantsFocusSystemForScene:(id)scene;
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

- (BOOL)wantsFocusSystemForScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusBehavior_CarPlay.m" lineNumber:36 description:{@"Attempting to initialize CarPlay focus system with a scene (%@) that is not a windowScene", sceneCopy}];
  }

  traitCollection = [sceneCopy traitCollection];
  interactionModel = [traitCollection interactionModel];

  return (interactionModel & 0xA) != 0;
}

@end