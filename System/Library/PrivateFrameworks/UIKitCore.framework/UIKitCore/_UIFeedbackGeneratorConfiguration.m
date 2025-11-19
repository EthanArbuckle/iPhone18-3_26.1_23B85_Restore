@interface _UIFeedbackGeneratorConfiguration
+ (BOOL)_enableHIDFeedbackForAllGenerators;
+ (id)_configurationWithKey:(id)a3 requiredSupportLevel:(int64_t)a4 preparationBlock:(id)a5;
+ (id)_disabledConfiguration;
+ (id)defaultConfiguration;
- (BOOL)_setupIfNecessary;
- (BOOL)_shouldEnable;
- (BOOL)defaultEnabled;
- (BOOL)isEqual:(id)a3;
- (NSSet)usedFeedbacks;
- (NSString)descriptionKey;
- (_UIFeedbackGeneratorConfiguration)init;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
- (id)_updateFeedbackForOutputMode:(id)a3;
- (id)_updateFeedbacksForOutputMode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)tweakedConfigurationForCaller:(id)a3 usage:(id)a4;
- (void)_updateEnabled;
- (void)dealloc;
- (void)setOutputMode:(int64_t)a3;
- (void)setSettingsEnabled:(BOOL)a3;
@end

@implementation _UIFeedbackGeneratorConfiguration

- (_UIFeedbackGeneratorConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackGeneratorConfiguration;
  v2 = [(_UIFeedbackGeneratorConfiguration *)&v6 init];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(_UIFeedbackGeneratorConfiguration *)v2 set_stats_key:v4];

  [(_UIFeedbackGeneratorConfiguration *)v2 setOutputMode:1];
  [(_UIFeedbackGeneratorConfiguration *)v2 setRequiredSupportLevel:0];
  [(_UIFeedbackGeneratorConfiguration *)v2 setRequiredPeripheralSupportLevel:-1];
  return v2;
}

- (void)_updateEnabled
{
  v3 = [(_UIFeedbackGeneratorConfiguration *)self _shouldEnable];

  [(_UIFeedbackGeneratorConfiguration *)self setEnabled:v3];
}

- (BOOL)_shouldEnable
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(_UIFeedbackGeneratorConfiguration *)self outputMode];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [(_UIFeedbackGeneratorConfiguration *)self settingsEnabled];
  LOBYTE(v6) = v5;
  if ((~v4 & 3) == 0 || !v5)
  {
    return v6;
  }

  if ([(_UIFeedbackGeneratorConfiguration *)self defaultEnabled])
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (![(_UIFeedbackGeneratorConfiguration *)self isSetup])
  {
LABEL_16:
    LOBYTE(v6) = 0;
    return v6;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(_UIFeedbackGeneratorConfiguration *)self usedFeedbacks];
  v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 hapticOutputMode];
        if ((~([v10 audioOutputMode] | v11) & 3) == 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_19;
        }
      }

      v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v6;
}

- (BOOL)_setupIfNecessary
{
  v3 = [(_UIFeedbackGeneratorConfiguration *)self isSetup];
  if (!v3)
  {
    [(_UIFeedbackGeneratorConfiguration *)self setSetup:1];
    if ([(_UIFeedbackGeneratorConfiguration *)self requiredSupportLevel]== -1)
    {
      v6 = 0;
    }

    else
    {
      v4 = +[UIDevice currentDevice];
      v5 = [v4 _feedbackSupportLevel];
      v6 = v5 >= [(_UIFeedbackGeneratorConfiguration *)self requiredSupportLevel];
    }

    if ([(_UIFeedbackGeneratorConfiguration *)self requiredPeripheralSupportLevel]== -1)
    {
      v7 = [objc_opt_class() _enableHIDFeedbackForAllGenerators] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    if (((v6 | v7) & 1) == 0)
    {
      v8 = +[UIDevice currentDevice];
      v9 = [(UIDevice *)v8 _peripheralFeedbackSupportLevel];
      v6 = v9 >= [(_UIFeedbackGeneratorConfiguration *)self requiredPeripheralSupportLevel];
    }

    if ((_UIFeedbackEngineSupportsAll() & 1) != 0 || v6)
    {
      preparationBlock = self->_preparationBlock;
      if (preparationBlock)
      {
        preparationBlock[2](preparationBlock, self);
      }

      else
      {
        [(_UIFeedbackGeneratorConfiguration *)self setSettingsEnabled:0];
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = +[_UIFeedbackPreferences sharedPreferences];
      [v11 addObserver:self selector:sel__preferencesUpdated_ name:0x1EFB4AAD0 object:v12];
    }

    else
    {
      [(_UIFeedbackGeneratorConfiguration *)self setSettingsEnabled:0];
    }

    [(_UIFeedbackGeneratorConfiguration *)self _updateEnabled];
  }

  return !v3;
}

+ (BOOL)_enableHIDFeedbackForAllGenerators
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_EnableHIDFeedbackForAllGenerators, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableHIDFeedbackForAllGenerators))
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

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_EnableHIDFeedbackForAllGenerators, @"EnableHIDFeedbackForAllGenerators", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_EnableHIDFeedbackForAllGenerators;
    }

    while (v2 != _UIInternalPreference_EnableHIDFeedbackForAllGenerators);
  }

  return byte_1EA95E32C && v3;
}

- (NSSet)usedFeedbacks
{
  v2 = self;
  v28 = *MEMORY[0x1E69E9840];
  usedFeedbacks = self->_usedFeedbacks;
  if (!usedFeedbacks)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(_UIFeedbackGeneratorConfiguration *)v2 feedbackKeyPaths];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      v9 = off_1E70EB000;
      v10 = 0x1E695D000uLL;
      v11 = 0x1E695D000uLL;
      v22 = v2;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v13 = [(_UIFeedbackGeneratorConfiguration *)v2 valueForKeyPath:*(*(&v23 + 1) + 8 * v12)];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v4 addObject:v13];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v4 addObjectsFromArray:v13];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v13 allValues];
                  v14 = v5;
                  v15 = v9;
                  v16 = v10;
                  v18 = v17 = v11;
                  [v4 addObjectsFromArray:v18];

                  v11 = v17;
                  v10 = v16;
                  v9 = v15;
                  v5 = v14;
                  v2 = v22;
                }
              }
            }
          }

          ++v12;
        }

        while (v7 != v12);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v19 = [(_UIFeedbackGeneratorConfiguration *)v2 _updateFeedbacksForOutputMode:v4];
    v20 = v2->_usedFeedbacks;
    v2->_usedFeedbacks = v19;

    usedFeedbacks = v2->_usedFeedbacks;
  }

  return usedFeedbacks;
}

- (BOOL)defaultEnabled
{
  v2 = +[_UIFeedbackPreferences sharedPreferences];
  v3 = [v2 enabledFeedbackTypesForCategory:0] != 0;

  return v3;
}

- (void)dealloc
{
  if (self->_setup)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = +[_UIFeedbackPreferences sharedPreferences];
    [v3 removeObserver:self name:0x1EFB4AAD0 object:v4];
  }

  v5.receiver = self;
  v5.super_class = _UIFeedbackGeneratorConfiguration;
  [(_UIFeedbackGeneratorConfiguration *)&v5 dealloc];
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [self->_preparationBlock copy];
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  objc_storeStrong(v4 + 4, self->_clientClass);
  v7 = [(NSString *)self->_usage copy];
  v8 = *(v4 + 5);
  *(v4 + 5) = v7;

  *(v4 + 8) = self->_settingsEnabled;
  *(v4 + 8) = self->_activationStyle;
  *(v4 + 6) = self->_requiredSupportLevel;
  *(v4 + 7) = self->_requiredPeripheralSupportLevel;
  *(v4 + 9) = self->_outputMode;
  v9 = [(NSString *)self->__stats_key copy];
  v10 = *(v4 + 10);
  *(v4 + 10) = v9;

  if ([(_UIFeedbackGeneratorConfiguration *)self isSetup])
  {
    *(v4 + 9) = 1;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [(_UIFeedbackGeneratorConfiguration *)self feedbackKeyPaths];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [(_UIFeedbackGeneratorConfiguration *)self valueForKeyPath:v16];
          if (v17)
          {
            [v4 setValue:v17 forKeyPath:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [(_UIFeedbackGeneratorConfiguration *)self hidFeedbackPatternNameKeyPaths];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v26 + 1) + 8 * j);
          v24 = [(_UIFeedbackGeneratorConfiguration *)self valueForKeyPath:v23];
          if (v24)
          {
            [v4 setValue:v24 forKeyPath:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = [(_UIFeedbackGeneratorConfiguration *)self feedbackKeyPaths];
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = [(_UIFeedbackGeneratorConfiguration *)self valueForKeyPath:v11];
          v13 = [v5 valueForKeyPath:v11];
          v14 = v12;
          v15 = v13;
          v16 = v15;
          if (v14 == v15)
          {
          }

          else
          {
            if (v14)
            {
              v17 = v15 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
LABEL_34:

LABEL_35:
              v29 = 0;
              goto LABEL_36;
            }

            v18 = [v14 isEqual:v15];

            if ((v18 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [(_UIFeedbackGeneratorConfiguration *)self hidFeedbackPatternNameKeyPaths];
    v19 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          v24 = [(_UIFeedbackGeneratorConfiguration *)self valueForKeyPath:v23];
          v25 = [v5 valueForKeyPath:v23];
          v14 = v24;
          v26 = v25;
          v16 = v26;
          if (v14 == v26)
          {
          }

          else
          {
            if (v14)
            {
              v27 = v26 == 0;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              goto LABEL_34;
            }

            v28 = [v14 isEqual:v26];

            if ((v28 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        v20 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
        v29 = 1;
      }

      while (v20);
    }

    else
    {
      v29 = 1;
    }

LABEL_36:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_isEnabled);
  v9 = v3;
  v4 = NSStringFromSelector(sel_activationStyle);
  v10 = v4;
  v5 = NSStringFromSelector(sel_requiredSupportLevel);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [UIDescriptionBuilder descriptionForObject:self keys:v6, v9, v10];

  return v7;
}

- (NSString)descriptionKey
{
  if (self->_clientClass && [(NSString *)self->_usage length])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = NSStringFromClass(self->_clientClass);
    v5 = [v3 stringWithFormat:@"%@.%@", v4, self->_usage];
  }

  else
  {
    v6 = objc_opt_class();
    v5 = NSStringFromClass(v6);
  }

  return v5;
}

- (id)tweakedConfigurationForCaller:(id)a3 usage:(id)a4
{
  v5 = a4;
  v6 = [(_UIFeedbackGeneratorConfiguration *)self tweakedConfigurationForClass:objc_opt_class() usage:v5];

  return v6;
}

- (id)_updateFeedbackForOutputMode:(id)a3
{
  v4 = a3;
  v5 = [(_UIFeedbackGeneratorConfiguration *)self outputMode];
  if (v5 == 1)
  {
    v6 = v4;
  }

  else
  {
    v7 = v5;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__76;
    v21 = __Block_byref_object_dispose__76;
    v22 = v4;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __66___UIFeedbackGeneratorConfiguration__updateFeedbackForOutputMode___block_invoke;
    v11 = &unk_1E7107238;
    v13 = v15;
    v14 = v7;
    v12 = &v17;
    __66___UIFeedbackGeneratorConfiguration__updateFeedbackForOutputMode___block_invoke(v9, 1);
    v10(v9, 2);
    v6 = v18[5];
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v17, 8);
  }

  return v6;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v7 = a3;
  if ([objc_opt_class() _enableHIDFeedbackForAllGenerators] && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [_UIFeedbackBackBoardHIDPattern feedbackPatternWithName:0x1EFB49390 deviceType:a4 senderID:a5];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)_updateFeedbacksForOutputMode:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIFeedbackGeneratorConfiguration *)self outputMode]== 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_UIFeedbackGeneratorConfiguration *)self _updateFeedbackForOutputMode:*(*(&v13 + 1) + 8 * i), v13];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)setOutputMode:(int64_t)a3
{
  if (self->_outputMode != a3)
  {
    self->_outputMode = a3;
    if ([(_UIFeedbackGeneratorConfiguration *)self isSetup])
    {

      [(_UIFeedbackGeneratorConfiguration *)self _updateEnabled];
    }
  }
}

- (void)setSettingsEnabled:(BOOL)a3
{
  if (self->_settingsEnabled != a3)
  {
    self->_settingsEnabled = a3;
    if ([(_UIFeedbackGeneratorConfiguration *)self isSetup])
    {

      [(_UIFeedbackGeneratorConfiguration *)self _updateEnabled];
    }
  }
}

+ (id)_disabledConfiguration
{
  v2 = objc_alloc_init(a1);
  [v2 setSettingsEnabled:0];

  return v2;
}

+ (id)_configurationWithKey:(id)a3 requiredSupportLevel:(int64_t)a4 preparationBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setActivationStyle:2];
  [v10 set_stats_key:v9];

  [v10 setPreparationBlock:v8];
  [v10 setSettingsEnabled:1];
  [v10 setRequiredSupportLevel:a4];

  return v10;
}

@end