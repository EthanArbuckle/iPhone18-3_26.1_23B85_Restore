@interface UISplitViewControllerDefaultImplProvider
- (Class)implClassForSplitViewController:(id)a3;
@end

@implementation UISplitViewControllerDefaultImplProvider

- (Class)implClassForSplitViewController:(id)a3
{
  if ((dyld_program_sdk_at_least() & 1) != 0 || [a3 _shouldInitializeColumnStyle])
  {
    v4 = [a3 traitCollection];
    v5 = [v4 userInterfaceIdiom];
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v6 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_6;
    }

    v7 = _UIInternalPreference_SplitViewControllerAdaptiveImplEnabled;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_SplitViewControllerAdaptiveImplEnabled)
    {
      goto LABEL_6;
    }

    while (v6 >= v7)
    {
      _UIInternalPreferenceSync(v6, &_UIInternalPreference_SplitViewControllerAdaptiveImplEnabled, @"SplitViewControllerAdaptiveImplEnabled", _UIInternalPreferenceUpdateInteger);
      v7 = _UIInternalPreference_SplitViewControllerAdaptiveImplEnabled;
      if (v6 == _UIInternalPreference_SplitViewControllerAdaptiveImplEnabled)
      {
        goto LABEL_6;
      }
    }

    if (qword_1EA95E450 == -1)
    {
LABEL_6:
      if (v5 <= 6 && ((1 << v5) & 0x63) != 0)
      {
        _UISolariumFeatureFlagEnabled();

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v8 = objc_opt_class();

  return v8;
}

@end