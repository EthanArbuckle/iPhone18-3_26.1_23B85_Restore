@interface _UIFeedbackPreferences
+ (id)sharedPreferences;
- (_UIFeedbackPreferences)init;
- (id)_categoryForNullableCategory:(id)a3;
- (id)_categoryKeyForCategory:(id)a3 type:(unint64_t)a4;
- (id)_defaultKeyForCategoryKey:(id)a3 type:(unint64_t)a4;
- (unint64_t)_defaultFeedbackTypesForCategory:(id)a3;
- (unint64_t)_enabledFeedbackTypesForCategory:(id)a3;
- (unint64_t)enabledFeedbackTypesForCategory:(id)a3;
- (void)_invalidate;
- (void)_setEnabledFeedbackTypes:(unint64_t)a3 forCategory:(id)a4 postNotification:(BOOL)a5;
- (void)_startObservingDefaults;
- (void)_updateEnabledFeedbackTypes:(unint64_t *)a3 forKey:(id)a4 type:(unint64_t)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setUserDefaults:(id)a3;
@end

@implementation _UIFeedbackPreferences

- (_UIFeedbackPreferences)init
{
  v12[4] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIFeedbackPreferences;
  v2 = [(_UIFeedbackPreferences *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFeedbackPreferences *)v2 setUserDefaults:0];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    enabledFeedbackTypes = v3->_enabledFeedbackTypes;
    v3->_enabledFeedbackTypes = v4;

    v11[0] = @"effects";
    v11[1] = @"keyboard";
    v12[0] = &unk_1EFE30718;
    v12[1] = &unk_1EFE30718;
    v11[2] = @"lock";
    v11[3] = @"effects-keyboardclicks";
    v12[2] = &unk_1EFE30718;
    v12[3] = &unk_1EFE30718;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
    defaultFeedbackTypes = v3->_defaultFeedbackTypes;
    v3->_defaultFeedbackTypes = v6;

    [(_UIFeedbackPreferences *)v3 _startObservingDefaults];
    v8 = v3;
  }

  return v3;
}

+ (id)sharedPreferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___UIFeedbackPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1083 != -1)
  {
    dispatch_once(&_MergedGlobals_1083, block);
  }

  v2 = qword_1ED49DC40;

  return v2;
}

- (void)_startObservingDefaults
{
  v17[3] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___UIFeedbackPreferences__startObservingDefaults__block_invoke;
  aBlock[3] = &unk_1E7107ED0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v17[0] = @"effects";
  v17[1] = @"keyboard";
  v17[2] = @"lock";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v3[2](v3, v9, 1);
        v3[2](v3, v9, 2);
        v3[2](v3, v9, 4);
        v3[2](v3, v9, 8);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__accessibilityForceTouchChanged_ name:@"UIAccessibilityForceTouchStatusChangedNotification" object:0];
}

- (unint64_t)_defaultFeedbackTypesForCategory:(id)a3
{
  v4 = [(_UIFeedbackPreferences *)self _categoryForNullableCategory:a3];
  v17 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:1];
  v5 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:2];
  v6 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:4];
  v7 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:8];
  v8 = [(NSDictionary *)self->_defaultFeedbackTypes objectForKeyedSubscript:v17];
  v9 = [v8 unsignedIntegerValue];
  v10 = [(NSDictionary *)self->_defaultFeedbackTypes objectForKeyedSubscript:v6];
  v11 = [v10 unsignedIntegerValue] & 4 | v9 & 1;
  v12 = [(NSDictionary *)self->_defaultFeedbackTypes objectForKeyedSubscript:v7];
  v13 = [v12 unsignedIntegerValue] & 8;
  v14 = [(NSDictionary *)self->_defaultFeedbackTypes objectForKeyedSubscript:v5];
  v15 = v13 | [v14 unsignedIntegerValue] & 2;

  return v11 | v15;
}

- (void)setUserDefaults:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.preferences.sounds"];
  }

  userDefaults = self->_userDefaults;
  self->_userDefaults = v4;
}

- (id)_categoryForNullableCategory:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return @"effects";
  }
}

- (id)_categoryKeyForCategory:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 == @"3DTouch")
  {
    v8 = @"effects";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = [(__CFString *)v5 isEqual:@"3DTouch"];

    v8 = @"effects";
    if (v7)
    {
      goto LABEL_11;
    }

    v9 = v6;
    if (v9 == @"effects-keyboardclicks" || (v10 = v9, v11 = [(__CFString *)v9 isEqual:@"effects-keyboardclicks"], v10, v11))
    {
      if (a4 == 1)
      {
        v8 = @"keyboard";
      }
    }

    else
    {
LABEL_10:
      v8 = v6;
    }
  }

LABEL_11:

  return v8;
}

- (id)_defaultKeyForCategoryKey:(id)a3 type:(unint64_t)a4
{
  v4 = @"pencil-haptic";
  v5 = @"haptic";
  if (a4 == 8)
  {
    v5 = @"trackpad-haptic";
  }

  if (a4 != 4)
  {
    v4 = v5;
  }

  if (a4 == 1)
  {
    v4 = @"audio";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", a3, v4];
}

- (unint64_t)enabledFeedbackTypesForCategory:(id)a3
{
  v4 = [(_UIFeedbackPreferences *)self _categoryForNullableCategory:a3];
  v5 = [(NSMutableDictionary *)self->_enabledFeedbackTypes objectForKeyedSubscript:v4];

  if (!v5)
  {
    [(_UIFeedbackPreferences *)self _setEnabledFeedbackTypes:[(_UIFeedbackPreferences *)self _enabledFeedbackTypesForCategory:v4] forCategory:v4 postNotification:0];
  }

  v6 = [(NSMutableDictionary *)self->_enabledFeedbackTypes objectForKeyedSubscript:v4];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (unint64_t)_enabledFeedbackTypesForCategory:(id)a3
{
  v4 = a3;
  v5 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:1];
  v6 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:2];
  v7 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:4];
  v8 = [(_UIFeedbackPreferences *)self _categoryKeyForCategory:v4 type:8];
  v20 = [(_UIFeedbackPreferences *)self _defaultFeedbackTypesForCategory:v4];
  [(NSUserDefaults *)self->_userDefaults synchronize];
  [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:v5 type:1];
  [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:v6 type:2];
  [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:v7 type:4];
  [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:v8 type:8];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 _feedbackSupportLevel];
  v11 = v20;

  if (v10 <= 1 && (v11 & 1) == 0)
  {
    v20 = 0;
  }

  v12 = v4;
  v13 = v12;
  if (v12 == @"3DTouch")
  {
    goto LABEL_17;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = [(__CFString *)v12 isEqual:@"3DTouch"];

  if (v14)
  {
LABEL_17:
    if (_AXSForceTouchEnabled())
    {
      v20 |= 2uLL;
    }
  }

  v15 = v13;
  if (v15 == @"effects-keyboardclicks")
  {
LABEL_12:
    [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:@"effects" type:2];
    [(_UIFeedbackPreferences *)self _updateEnabledFeedbackTypes:&v20 forKey:@"keyboard" type:1];
    goto LABEL_14;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_13:

    goto LABEL_14;
  }

  v17 = [(__CFString *)v15 isEqual:@"effects-keyboardclicks"];

  if (v17)
  {
    goto LABEL_12;
  }

LABEL_14:
  v18 = v20;

  return v18;
}

- (void)_updateEnabledFeedbackTypes:(unint64_t *)a3 forKey:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  v15 = v8;
  if (a5 != 1 || (v9 = v8, v8 = v15, v9 != @"effects") && ((v10 = v9) == 0 || (v11 = [(__CFString *)v9 isEqual:@"effects"], v10, v8 = v15, (v11 & 1) == 0)))
  {
    v12 = [(_UIFeedbackPreferences *)self _defaultKeyForCategoryKey:v8 type:a5];
    v13 = [(NSUserDefaults *)self->_userDefaults objectForKey:v12];

    if (v13)
    {
      if ([(NSUserDefaults *)self->_userDefaults BOOLForKey:v12])
      {
        v14 = *a3 | a5;
      }

      else
      {
        v14 = *a3 & ~a5;
      }

      *a3 = v14;
    }

    v8 = v15;
  }
}

- (void)_setEnabledFeedbackTypes:(unint64_t)a3 forCategory:(id)a4 postNotification:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_enabledFeedbackTypes setObject:v10 forKeyedSubscript:v9];

  if (v5)
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"_UIFeedbackPreferencesDidChangeNotification" object:self];
  }
}

- (void)_invalidate
{
  [(NSMutableDictionary *)self->_enabledFeedbackTypes removeAllObjects];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIFeedbackPreferencesDidChangeNotification" object:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_userDefaults == a4)
  {

    [(_UIFeedbackPreferences *)self _invalidate];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = _UIFeedbackPreferences;
    [_UIFeedbackPreferences observeValueForKeyPath:sel_observeValueForKeyPath_ofObject_change_context_ ofObject:a3 change:? context:?];
  }
}

@end