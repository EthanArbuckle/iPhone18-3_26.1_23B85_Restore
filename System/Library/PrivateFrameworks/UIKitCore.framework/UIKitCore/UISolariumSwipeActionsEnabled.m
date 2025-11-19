@interface UISolariumSwipeActionsEnabled
@end

@implementation UISolariumSwipeActionsEnabled

uint64_t ___UISolariumSwipeActionsEnabled_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_4;
  }

  v2 = _UIInternalPreference_SolariumSwipeActions;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_SolariumSwipeActions)
  {
    goto LABEL_4;
  }

  while (v0 >= v2)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_SolariumSwipeActions, @"SolariumSwipeActions", _UIInternalPreferenceUpdateInteger);
    v2 = _UIInternalPreference_SolariumSwipeActions;
    if (v0 == _UIInternalPreference_SolariumSwipeActions)
    {
      goto LABEL_4;
    }
  }

  if (qword_1EA95E708 == 1)
  {
    result = 1;
    goto LABEL_5;
  }

  if (qword_1EA95E708 != 2)
  {
LABEL_4:
    result = _UISolariumEnabled();
  }

  else
  {
    result = 0;
  }

LABEL_5:
  _MergedGlobals_1297 = result;
  return result;
}

@end