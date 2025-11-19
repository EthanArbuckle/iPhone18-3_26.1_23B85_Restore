@interface _UIFocusBehavior_CarPlayTouch
+ (id)sharedInstance;
- (int64_t)focusDeferral;
@end

@implementation _UIFocusBehavior_CarPlayTouch

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___UIFocusBehavior_CarPlayTouch_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4A2588 != -1)
  {
    dispatch_once(&qword_1ED4A2588, block);
  }

  v2 = _MergedGlobals_1347;

  return v2;
}

- (int64_t)focusDeferral
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_CarPlayFocusNewDeferralBehavior, _UIInternalPreferencesRevisionVar == _UIInternalPreference_CarPlayFocusNewDeferralBehavior))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = v2 < v5;
      if (v2 < v5)
      {
        break;
      }

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_CarPlayFocusNewDeferralBehavior, @"CarPlayFocusNewDeferralBehavior", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_CarPlayFocusNewDeferralBehavior;
    }

    while (v2 != _UIInternalPreference_CarPlayFocusNewDeferralBehavior);
  }

  if (v3 && byte_1EA95E784 != 0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

@end