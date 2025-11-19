@interface _UILabelVisualStyle_tvOS
- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)a3 attributes:(id)a4;
- (void)actionsForDeallocationOfLabel:(id)a3;
- (void)actionsForInitializationOfLabel:(id)a3;
@end

@implementation _UILabelVisualStyle_tvOS

- (void)actionsForInitializationOfLabel:(id)a3
{
  v11 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_10;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v4 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v5 = _UIInternalPreference_UILabelDisableTVAnimationsOnResignActive;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UILabelDisableTVAnimationsOnResignActive)
    {
      while (v4 >= v5)
      {
        _UIInternalPreferenceSync(v4, &_UIInternalPreference_UILabelDisableTVAnimationsOnResignActive, @"UILabelDisableTVAnimationsOnResignActive", _UIInternalPreferenceUpdateBool);
        v5 = _UIInternalPreference_UILabelDisableTVAnimationsOnResignActive;
        if (v4 == _UIInternalPreference_UILabelDisableTVAnimationsOnResignActive)
        {
          goto LABEL_11;
        }
      }

      if (byte_1EA95E7F4)
      {
LABEL_10:
        v6 = [MEMORY[0x1E696AD88] defaultCenter];
        [v6 addObserver:v11 selector:sel__applicationWillResignActiveNotification_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
        [v6 addObserver:v11 selector:sel__applicationDidBecomeActiveNotification_ name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
      }
    }
  }

LABEL_11:
  v7 = [(_UILabelVisualStyle_tvOS *)self defaultFont];
  [v11 setFont:v7];

  v8 = +[UIColor blackColor];
  [v11 _setFallbackTextColor:v8 forUserInterfaceStyle:1];

  v9 = +[UIColor whiteColor];
  [v11 _setFallbackTextColor:v9 forUserInterfaceStyle:2];

  v10 = +[UIColor whiteColor];
  [v11 _setFallbackTextColor:v10 forUserInterfaceStyle:1000];
}

- (void)actionsForDeallocationOfLabel:(id)a3
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:@"UIApplicationWillResignActiveNotification" object:UIApp];
  [v5 removeObserver:v4 name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
}

- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)a3 attributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (_UILabelVisualStyleAttributedStringContainsForegroundColorAttribute(v5) & 1) != 0)
  {
    v7 = 1;
  }

  else if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*off_1E70EC920];
    v7 = v8 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end