@interface _UILabelVisualStyle_tvOS
- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)string attributes:(id)attributes;
- (void)actionsForDeallocationOfLabel:(id)label;
- (void)actionsForInitializationOfLabel:(id)label;
@end

@implementation _UILabelVisualStyle_tvOS

- (void)actionsForInitializationOfLabel:(id)label
{
  labelCopy = label;
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
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:labelCopy selector:sel__applicationWillResignActiveNotification_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];
        [defaultCenter addObserver:labelCopy selector:sel__applicationDidBecomeActiveNotification_ name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
      }
    }
  }

LABEL_11:
  defaultFont = [(_UILabelVisualStyle_tvOS *)self defaultFont];
  [labelCopy setFont:defaultFont];

  v8 = +[UIColor blackColor];
  [labelCopy _setFallbackTextColor:v8 forUserInterfaceStyle:1];

  v9 = +[UIColor whiteColor];
  [labelCopy _setFallbackTextColor:v9 forUserInterfaceStyle:2];

  v10 = +[UIColor whiteColor];
  [labelCopy _setFallbackTextColor:v10 forUserInterfaceStyle:1000];
}

- (void)actionsForDeallocationOfLabel:(id)label
{
  v3 = MEMORY[0x1E696AD88];
  labelCopy = label;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:labelCopy name:@"UIApplicationWillResignActiveNotification" object:UIApp];
  [defaultCenter removeObserver:labelCopy name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
}

- (BOOL)shouldDisableUpdateTextColorOnTraitCollectionChangeForAttributedString:(id)string attributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  if (stringCopy && (_UILabelVisualStyleAttributedStringContainsForegroundColorAttribute(stringCopy) & 1) != 0)
  {
    v7 = 1;
  }

  else if (attributesCopy)
  {
    v8 = [attributesCopy objectForKeyedSubscript:*off_1E70EC920];
    v7 = v8 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end