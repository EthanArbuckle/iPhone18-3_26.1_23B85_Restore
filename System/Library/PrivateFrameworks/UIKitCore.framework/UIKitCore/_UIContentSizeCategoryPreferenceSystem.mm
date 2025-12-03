@interface _UIContentSizeCategoryPreferenceSystem
- (id)description;
- (id)initAsSystem;
- (void)_beginObservingPreferredContentSizeChangedNotification;
- (void)_endObservingPreferredContentSizeChangedNotification;
- (void)_postContentSizeCategoryDidChangeNotificationForCarPlay:(BOOL)play;
- (void)_readAndObservePreferences;
- (void)_updateContentSizeCategoriesFromUserDefaultsPostingNotification:(BOOL)notification;
- (void)_updateContentSizeCategory:(id)category carPlay:(id)play postingNotification:(BOOL)notification;
- (void)checkForChanges;
- (void)dealloc;
- (void)setOverridePreferences:(id)preferences;
- (void)setPreferredContentSizeCategory:(id)category;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__postContentSizeCategoryDidChangeNotification name:*MEMORY[0x1E69E4D10] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__postCarPlayContentSizeCategoryDidChangeNotification name:*MEMORY[0x1E69E4CB8] object:0];
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

  preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v8 = [v3 stringWithFormat:@"<%@:%p %@%@ carplay=%@>", v4, self, v5, preferredContentSizeCategory, preferredContentSizeCategoryCarPlay];

  return v8;
}

- (void)setOverridePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v6 = preferencesCopy;
  preferredContentSizeCategoryCarPlay2 = 0;
  preferredContentSizeCategory2 = 0;
  overridePreferences = self->_overridePreferences;
  if (preferencesCopy)
  {
    if ([preferencesCopy isEqual:overridePreferences])
    {
      preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
      preferredContentSizeCategory2 = preferredContentSizeCategory;
      preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
      preferredContentSizeCategoryCarPlay2 = preferredContentSizeCategoryCarPlay;
    }

    else
    {
      objc_storeStrong(&self->_overridePreferences, preferences);
      preferredContentSizeCategory = [v6 preferredContentSizeCategory];
      preferredContentSizeCategory2 = preferredContentSizeCategory;
      preferredContentSizeCategoryCarPlay = [v6 preferredContentSizeCategoryCarPlay];
      preferredContentSizeCategoryCarPlay2 = preferredContentSizeCategoryCarPlay;
      if (preferredContentSizeCategory && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_1.isa) == NSOrderedSame)
      {
        preferredContentSizeCategory2 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];

        preferredContentSizeCategory = preferredContentSizeCategory2;
      }

      if (preferredContentSizeCategoryCarPlay && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategoryCarPlay, &cfstr_Uictcontentsiz_1.isa) == NSOrderedSame)
      {
        preferredContentSizeCategoryCarPlay2 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];

        preferredContentSizeCategoryCarPlay = preferredContentSizeCategoryCarPlay2;
      }
    }
  }

  else
  {
    self->_overridePreferences = 0;

    [objc_opt_class() _populateUserDefaultsContentSizeCategory:&preferredContentSizeCategory2 carPlay:&preferredContentSizeCategoryCarPlay2];
    preferredContentSizeCategoryCarPlay = preferredContentSizeCategoryCarPlay2;
    preferredContentSizeCategory = preferredContentSizeCategory2;
  }

  [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategory:preferredContentSizeCategory carPlay:preferredContentSizeCategoryCarPlay postingNotification:1, preferredContentSizeCategoryCarPlay2];
}

- (void)_updateContentSizeCategoriesFromUserDefaultsPostingNotification:(BOOL)notification
{
  notificationCopy = notification;
  v5 = 0;
  v6 = 0;
  [objc_opt_class() _populateUserDefaultsContentSizeCategory:&v6 carPlay:&v5];
  [(_UIContentSizeCategoryPreferenceSystem *)self _updateContentSizeCategory:v6 carPlay:v5 postingNotification:notificationCopy];
}

- (void)_updateContentSizeCategory:(id)category carPlay:(id)play postingNotification:(BOOL)notification
{
  notificationCopy = notification;
  playCopy = play;
  lhs = _UIContentSizeCategoryPreferenceSafeContentSizeCategory(category);
  if (_UIApplicationIsApplicationWidgetExtension() && UIContentSizeCategoryCompareToCategory(lhs, &cfstr_Uictcontentsiz_10.isa) != NSOrderedAscending)
  {
    v9 = @"UICTContentSizeCategoryAccessibilityL";

    lhs = &v9->isa;
  }

  preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  v11 = [preferredContentSizeCategory isEqualToString:lhs];

  if ((v11 & 1) == 0)
  {
    [(_UIContentSizeCategoryPreferenceSystem *)self setPreferredContentSizeCategory:lhs];
    if (_UIScreenHasScreens())
    {
      [UIScreen _enumerateScreensWithBlock:&__block_literal_global_587];
    }

    if (notificationCopy)
    {
      [(_UIContentSizeCategoryPreferenceSystem *)self _postContentSizeCategoryDidChangeNotification];
    }
  }

  v12 = _UIContentSizeCategoryPreferenceSafeContentSizeCategory(playCopy);

  preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v14 = [preferredContentSizeCategoryCarPlay isEqualToString:v12];

  if ((v14 & 1) == 0)
  {
    [(UIContentSizeCategoryPreference *)self setPreferredContentSizeCategoryCarPlay:v12];
    if (_UIScreenHasScreens())
    {
      [UIScreen _enumerateScreensWithBlock:&__block_literal_global_65_6];
    }

    if (notificationCopy && _os_feature_enabled_impl())
    {
      [(_UIContentSizeCategoryPreferenceSystem *)self _postCarPlayContentSizeCategoryDidChangeNotification];
    }
  }
}

- (void)_postContentSizeCategoryDidChangeNotificationForCarPlay:(BOOL)play
{
  playCopy = play;
  v15[2] = *MEMORY[0x1E69E9840];
  if (!dyld_program_sdk_at_least())
  {
    mainScreen = UIApp;
    goto LABEL_5;
  }

  if (_UIScreenHasScreens())
  {
    mainScreen = [objc_opt_self() mainScreen];
LABEL_5:
    v6 = mainScreen;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  if (playCopy)
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
    if (!playCopy)
    {
      v8 = &UIContentSizeCategoryDidChangeNotification;
    }

    v9 = MEMORY[0x1E696AD88];
    v10 = *v8;
    defaultCenter = [v9 defaultCenter];
    v14[0] = @"UIContentSizeCategoryNewValueKey";
    v14[1] = @"UIContentSizeCategoryTextLegibilityEnabledKey";
    v15[0] = v7;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:_AXSEnhanceTextLegibilityEnabled() != 0];
    v15[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [defaultCenter postNotificationName:v10 object:v6 userInfo:v13];
  }
}

- (void)setPreferredContentSizeCategory:(id)category
{
  categoryCopy = category;
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
  [(UIContentSizeCategoryPreference *)&v10 setPreferredContentSizeCategory:categoryCopy];
  if (self->_applicationOverridesPreferredContentSizeCategory)
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];

    preferredContentSizeCategory2 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory2 isEqualToString:preferredContentSizeCategory];

    if ((v8 & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = _UIContentSizeCategoryPreferenceSystem;
      [(UIContentSizeCategoryPreference *)&v9 setPreferredContentSizeCategory:preferredContentSizeCategory];
    }
  }

  else
  {
    preferredContentSizeCategory = categoryCopy;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4D10] object:0];
  }
}

@end