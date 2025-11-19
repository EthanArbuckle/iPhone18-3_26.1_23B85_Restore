@interface UIUpdateCycleDebugOverlay
@end

@implementation UIUpdateCycleDebugOverlay

void __38___UIUpdateCycleDebugOverlay_instance__block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v1 = _UIInternalPreference_UpdateCycleDebugOverlay;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UpdateCycleDebugOverlay)
    {
      while (v0 >= v1)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_UpdateCycleDebugOverlay, @"UpdateCycleDebugOverlay", _UIInternalPreferenceUpdateBool);
        v1 = _UIInternalPreference_UpdateCycleDebugOverlay;
        if (v0 == _UIInternalPreference_UpdateCycleDebugOverlay)
        {
          return;
        }
      }

      if (byte_1ED48A8EC)
      {
        v2 = objc_opt_new();
        v3 = qword_1ED49C890;
        qword_1ED49C890 = v2;

        v4 = qword_1ED49C890;

        _UIUpdateCompletionObservationAddObserver(&mainCompletionObservation, v4, 0);
      }
    }
  }
}

@end