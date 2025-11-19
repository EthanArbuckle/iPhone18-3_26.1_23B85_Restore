@interface _UIContentSizeCategoryPreferenceSystem
- (id)description;
- (id)initAsSystem;
- (void)_beginObservingPreferredContentSizeChangedNotification;
- (void)_endObservingPreferredContentSizeChangedNotification;
- (void)_postContentSizeCategoryDidChangeNotificationForCarPlay:(BOOL)a3;
- (void)_readAndObservePreferences;
- (void)_updateContentSizeCategoriesFromUserDefaultsPostingNotification:(BOOL)a3;
- (void)_updateContentSizeCategory:(id)a3 carPlay:(id)a4 postingNotification:(BOOL)a5;
- (void)checkForChanges;
- (void)dealloc;
- (void)setOverridePreferences:(id)a3;
- (void)setPreferredContentSizeCategory:(id)a3;
@end

@implementation _UIContentSizeCategoryPreferenceSystem

- (id)initAsSystem
{
  v3.receiver = self;
  v3.super_class = _UIContentSizeCategoryPreferenceSystem;
  result = [(UIContentSizeCategoryPreference *)&v3 initWithContentSizeCategory:@"_UICTContentSizeCategoryUnspecified"];
  if (result)
  {
    *(result + 24) = 0;
    *(result + 25) = 0;
    *(result + 26) = 0;
  }

  return result;
}

- (void)_readAndObservePreferences
{
  [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategoriesFromUserDefaultsPostingNotification:0];

  [(_UIContentSizeCategoryPreferenceSystem *)self _beginObservingPreferredContentSizeChangedNotification];
}

- (void)_beginObservingPreferredContentSizeChangedNotification
{
  if (!self->_observingNotification)
  {
    self->_observingNotification = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _preferredContentSizeChangedCallback, @"ApplePreferredContentSizeCategoryChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, self, _preferredContentSizeChangedCallback, @"AppleCarPlayPreferredContentSizeCategoryChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__postContentSizeCategoryDidChangeNotification name:*MEMORY[0x1E69E4D10] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel__postCarPlayContentSizeCategoryDidChangeNotification name:*MEMORY[0x1E69E4CB8] object:0];
  }
}

- (void)checkForChanges
{
  if (!self->_overridePreferences)
  {
    [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategoriesFromUserDefaultsPostingNotification:1];
  }
}

- (void)dealloc
{
  [(_UIContentSizeCategoryPreferenceSystem *)self _endObservingPreferredContentSizeChangedNotification];
  v3.receiver = self;
  v3.super_class = _UIContentSizeCategoryPreferenceSystem;
  [(_UIContentSizeCategoryPreferenceSystem *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_overridePreferences)
  {
    v5 = @"(overriding) ";
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  v6 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  v7 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v8 = [v3 stringWithFormat:@"<%@:%p %@%@ carplay=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (void)setOverridePreferences:(id)a3
{
  v5 = a3;
  v6 = v5;
  v10 = 0;
  v11 = 0;
  overridePreferences = self->_overridePreferences;
  if (v5)
  {
    if ([v5 isEqual:overridePreferences])
    {
      v8 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
      v11 = v8;
      v9 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
      v10 = v9;
    }

    else
    {
      objc_storeStrong(&self->_overridePreferences, a3);
      v8 = [v6 preferredContentSizeCategory];
      v11 = v8;
      v9 = [v6 preferredContentSizeCategoryCarPlay];
      v10 = v9;
      if (v8 && UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_1.isa) == NSOrderedSame)
      {
        v11 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];

        v8 = v11;
      }

      if (v9 && UIContentSizeCategoryCompareToCategory(v9, &cfstr_Uictcontentsiz_1.isa) == NSOrderedSame)
      {
        v10 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];

        v9 = v10;
      }
    }
  }

  else
  {
    self->_overridePreferences = 0;

    [objc_opt_class() _populateUserDefaultsContentSizeCategory:&v11 carPlay:&v10];
    v9 = v10;
    v8 = v11;
  }

  [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategory:v8 carPlay:v9 postingNotification:1, v10];
}

- (void)_updateContentSizeCategoriesFromUserDefaultsPostingNotification:(BOOL)a3
{
  v3 = a3;
  v5 = 0;
  v6 = 0;
  [objc_opt_class() _populateUserDefaultsContentSizeCategory:&v6 carPlay:&v5];
  [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategory:v6 carPlay:v5 postingNotification:v3];
}

- (void)_updateContentSizeCategory:(id)a3 carPlay:(id)a4 postingNotification:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  lhs = _UIContentSizeCategoryPreferenceSafeContentSizeCategory(a3);
  if (_UIApplicationIsApplicationWidgetExtension() && UIContentSizeCategoryCompareToCategory(lhs, &cfstr_Uictcontentsiz_10.isa) != NSOrderedAscending)
  {
    v9 = @"UICTContentSizeCategoryAccessibilityL";

    lhs = &v9->isa;
  }

  v10 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  v11 = [v10 isEqualToString:lhs];

  if ((v11 & 1) == 0)
  {
    [(_UIContentSizeCategoryPreferenceSystem *)self setPreferredContentSizeCategory:lhs];
    if (_UIScreenHasScreens())
    {
      [UIScreen _enumerateScreensWithBlock:&__block_literal_global_587];
    }

    if (v5)
    {
      [(_UIContentSizeCategoryPreferenceSystem *)self _postContentSizeCategoryDidChangeNotification];
    }
  }

  v12 = _UIContentSizeCategoryPreferenceSafeContentSizeCategory(v8);

  v13 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v14 = [v13 isEqualToString:v12];

  if ((v14 & 1) == 0)
  {
    [(UIContentSizeCategoryPreference *)self setPreferredContentSizeCategoryCarPlay:v12];
    if (_UIScreenHasScreens())
    {
      [UIScreen _enumerateScreensWithBlock:&__block_literal_global_65_6];
    }

    if (v5 && _os_feature_enabled_impl())
    {
      [(_UIContentSizeCategoryPreferenceSystem *)self _postCarPlayContentSizeCategoryDidChangeNotification];
    }
  }
}

- (void)_postContentSizeCategoryDidChangeNotificationForCarPlay:(BOOL)a3
{
  v3 = a3;
  v15[2] = *MEMORY[0x1E69E9840];
  if (!dyld_program_sdk_at_least())
  {
    v5 = UIApp;
    goto LABEL_5;
  }

  if (_UIScreenHasScreens())
  {
    v5 = [objc_opt_self() mainScreen];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  if (v3)
  {
    [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  }

  else
  {
    [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  }
  v7 = ;
  if (v7)
  {
    v8 = UICarPlayContentSizeCategoryDidChangeNotification;
    if (!v3)
    {
      v8 = &UIContentSizeCategoryDidChangeNotification;
    }

    v9 = MEMORY[0x1E696AD88];
    v10 = *v8;
    v11 = [v9 defaultCenter];
    v14[0] = @"UIContentSizeCategoryNewValueKey";
    v14[1] = @"UIContentSizeCategoryTextLegibilityEnabledKey";
    v15[0] = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:_AXSEnhanceTextLegibilityEnabled() != 0];
    v15[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v11 postNotificationName:v10 object:v6 userInfo:v13];
  }
}

- (void)setPreferredContentSizeCategory:(id)a3
{
  v4 = a3;
  if (!self->_didCheckForPreferredContentSizeCategoryOverride)
  {
    if (_UIApplicationIsExtension())
    {
      self->_didCheckForPreferredContentSizeCategoryOverride = 1;
      self->_applicationOverridesPreferredContentSizeCategory = 0;
    }

    else if (UIApp)
    {
      v5 = [UIApplication instanceMethodForSelector:sel_preferredContentSizeCategory];
      if (v5)
      {
        if (v5 != [UIApp methodForSelector:sel_preferredContentSizeCategory])
        {
          self->_applicationOverridesPreferredContentSizeCategory = 1;
        }

        self->_didCheckForPreferredContentSizeCategoryOverride = 1;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = _UIContentSizeCategoryPreferenceSystem;
  [(UIContentSizeCategoryPreference *)&v10 setPreferredContentSizeCategory:v4];
  if (self->_applicationOverridesPreferredContentSizeCategory)
  {
    v6 = [UIApp preferredContentSizeCategory];

    v7 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
    v8 = [v7 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = _UIContentSizeCategoryPreferenceSystem;
      [(UIContentSizeCategoryPreference *)&v9 setPreferredContentSizeCategory:v6];
    }
  }

  else
  {
    v6 = v4;
  }
}

- (void)_endObservingPreferredContentSizeChangedNotification
{
  if (self->_observingNotification)
  {
    self->_observingNotification = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ApplePreferredContentSizeCategoryChangedNotification", 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v5, self, @"AppleCarPlayPreferredContentSizeCategoryChangedNotification", 0);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E69E4D10] object:0];
  }
}

@end