@interface PXSettings
+ (BOOL)ignoresKey:(id)key;
+ (NSSet)transientProperties;
+ (id)_signatureDictionaryWithDefaultSettings:(id *)settings;
+ (id)_userDefaults;
+ (id)createSharedInstance;
+ (id)sharedInstance;
+ (void)setSuiteName:(id)name;
- (BOOL)_setOverrideValuesFromDictionary:(id)dictionary;
- (BOOL)hasDefaultValues;
- (BOOL)hasUserDefaultsOverrides;
- (BOOL)isTransientKey:(id)key;
- (BOOL)isTransientKeyPath:(id)path;
- (id)_archiveDictionaryWithSignature;
- (id)archiveDictionary;
- (id)archiveValueForKey:(id)key;
- (void)_resetValuesThatChangedBetweenCurrentDefaultValues:(id)values andArchivedDefaultValues:(id)defaultValues defaultSettings:(id)settings;
- (void)_validateArchivableValue:(id)value forKey:(id)key;
- (void)_willArchiveSettings:(id)settings;
- (void)addDeferredKeyObserver:(id)observer;
- (void)addDeferredKeyPathObserver:(id)observer;
- (void)addKeyObserver:(id)observer;
- (void)addKeyPathObserver:(id)observer;
- (void)applyArchiveValue:(id)value forKey:(id)key;
- (void)clearManualOverrides;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)removeKeyObserver:(id)observer;
- (void)removeKeyPathObserver:(id)observer;
- (void)restoreDefaultValues;
- (void)save;
@end

@implementation PXSettings

+ (id)createSharedInstance
{
  v27 = *MEMORY[0x1E69E9840];
  if (!PFOSVariantHasInternalUI() || !PFOSVariantHasInternalDiagnostics() || (PFIsCamera() & 1) != 0)
  {
    v3 = 0;
LABEL_5:
    initWithDefaultValues = [[self alloc] initWithDefaultValues];
    goto LABEL_6;
  }

  _userDefaults = [self _userDefaults];
  _defaultsKey = [self _defaultsKey];
  v10 = [_userDefaults objectForKey:_defaultsKey];

  v11 = [v10 objectForKeyedSubscript:@"PXSettingsArchiveKey"];
  _userDefaults2 = [self _userDefaults];
  v13 = [_userDefaults2 objectForKey:@"PXSettingsOverride"];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ExpandOverrideDictionary_block_invoke;
  v25[3] = &unk_1E7749C38;
  v3 = v14;
  v26 = v3;
  [v13 enumerateKeysAndObjectsUsingBlock:v25];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  LODWORD(v13) = [mEMORY[0x1E69DC668] launchedToTest];

  if (!v13)
  {
    v24 = 0;
    v16 = [self _signatureDictionaryWithDefaultSettings:&v24];
    v17 = v24;
    v18 = [v10 objectForKeyedSubscript:@"PXSettingsSignatureKey"];
    v19 = [v16 objectForKeyedSubscript:@"PXSettingsSignatureVersionKey"];
    integerValue = [v19 integerValue];
    v21 = [v18 objectForKeyedSubscript:@"PXSettingsSignatureVersionKey"];
    LOBYTE(integerValue) = integerValue == [v21 integerValue];

    if (integerValue)
    {
      if (v11)
      {
        initWithDefaultValues = [self settingsFromArchiveDictionary:v11];
        v22 = [v16 objectForKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];
        v23 = [v18 objectForKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];
        [initWithDefaultValues _resetValuesThatChangedBetweenCurrentDefaultValues:v22 andArchivedDefaultValues:v23 defaultSettings:v17];

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {

      v11 = 0;
    }

    initWithDefaultValues = 0;
    goto LABEL_19;
  }

  if (!v11)
  {

    goto LABEL_5;
  }

  initWithDefaultValues = [self settingsFromArchiveDictionary:v11];
LABEL_20:

  if (!initWithDefaultValues)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v3)
  {
    _defaultsKey2 = [self _defaultsKey];
    v6 = [v3 objectForKey:_defaultsKey2];

    [initWithDefaultValues _setOverrideValuesFromDictionary:v6];
  }

  return initWithDefaultValues;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  _archiveDictionaryWithSignature = [(PXSettings *)self _archiveDictionaryWithSignature];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [containerCopy addAttachmentWithDictionary:_archiveDictionaryWithSignature name:v6];
}

- (void)addDeferredKeyPathObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  objc_initWeak(&from, observerCopy);
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PXSettings_addDeferredKeyPathObserver___block_invoke;
  v6[3] = &unk_1E7749C10;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  [sharedScheduler scheduleMainQueueTask:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __41__PXSettings_addDeferredKeyPathObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addKeyPathObserver:v2];
}

- (void)addDeferredKeyObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  objc_initWeak(&from, observerCopy);
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXSettings_addDeferredKeyObserver___block_invoke;
  v6[3] = &unk_1E7749C10;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  [sharedScheduler scheduleMainQueueTask:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __37__PXSettings_addDeferredKeyObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addKeyObserver:v2];
}

- (void)removeKeyPathObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 removeKeyPathObserver:observerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v6 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeKeyPathObserver:observerCopy];
      }

      while (v7 != v9);
      v7 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addKeyPathObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 addKeyPathObserver:observerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v6 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v10 + 1) + 8 * v9++) addKeyPathObserver:observerCopy];
      }

      while (v7 != v9);
      v7 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeKeyObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 removeKeyObserver:observerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v6 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeKeyObserver:observerCopy];
      }

      while (v7 != v9);
      v7 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addKeyObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 addKeyObserver:observerCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v6 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v10 + 1) + 8 * v9++) addKeyObserver:observerCopy];
      }

      while (v7 != v9);
      v7 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)applyArchiveValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (![(PXSettings *)self isTransientKey:keyCopy])
  {
    v8.receiver = self;
    v8.super_class = PXSettings;
    [(PTSettings *)&v8 applyArchiveValue:valueCopy forKey:keyCopy];
  }
}

- (id)archiveValueForKey:(id)key
{
  keyCopy = key;
  if ([(PXSettings *)self isTransientKey:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXSettings;
    v5 = [(PTSettings *)&v7 archiveValueForKey:keyCopy];
  }

  return v5;
}

- (void)_validateArchivableValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (!CFPropertyListIsValid(valueCopy, kCFPropertyListBinaryFormat_v1_0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

      abort();
    }

    v9 = valueCopy;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    keyEnumerator = [v9 keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          [(PXSettings *)self _validateArchivableValue:v16 forKey:v15];
        }

        v12 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (id)archiveDictionary
{
  [(PXSettings *)self _willArchiveSettings:self];
  v5.receiver = self;
  v5.super_class = PXSettings;
  archiveDictionary = [(PTSettings *)&v5 archiveDictionary];

  return archiveDictionary;
}

- (void)_willArchiveSettings:(id)settings
{
  settingsCopy = settings;
  if (_PXSettingsRootIsSaving == 1)
  {
    v7 = settingsCopy;
    parentSettings = [(PXSettings *)self parentSettings];
    v6 = parentSettings;
    if (parentSettings)
    {
      [parentSettings _willArchiveSettings:v7];
    }

    else
    {
      [(NSMutableSet *)self->_archivedSettings addObject:v7];
    }

    settingsCopy = v7;
  }
}

- (id)_archiveDictionaryWithSignature
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  _PXSettingsRootIsSaving = 1;
  archiveDictionary = [(PXSettings *)self archiveDictionary];
  [v3 setObject:archiveDictionary forKeyedSubscript:@"PXSettingsArchiveKey"];

  _PXSettingsRootIsSaving = 0;
  v5 = [objc_opt_class() _signatureDictionaryWithDefaultSettings:0];
  [v3 setObject:v5 forKeyedSubscript:@"PXSettingsSignatureKey"];

  v6 = [v3 copy];

  return v6;
}

- (void)save
{
  v35 = *MEMORY[0x1E69E9840];
  if (PFOSVariantHasInternalUI() && (PFOSVariantHasInternalDiagnostics() & 1) != 0)
  {
    parentSettings = [(PXSettings *)self parentSettings];
    if (parentSettings)
    {
      v4 = parentSettings;
      [parentSettings save];
    }

    else
    {
      if (self->_hasUserDefaultsOverrides)
      {
        _userDefaults = PLUIGetLog();
        if (os_log_type_enabled(_userDefaults, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy = self;
          v32 = 2112;
          v33 = @"PXSettingsOverride";
          _os_log_impl(&dword_1A3C1C000, _userDefaults, OS_LOG_TYPE_ERROR, "%@: Will skip attempt to save a settings tree with some settings overridden. It would conflict with manual override key %@", buf, 0x16u);
        }
      }

      else
      {
        v6 = [MEMORY[0x1E695DFA8] set];
        archivedSettings = self->_archivedSettings;
        self->_archivedSettings = v6;

        _userDefaults = [objc_opt_class() _userDefaults];
        _defaultsKey = [objc_opt_class() _defaultsKey];
        _archiveDictionaryWithSignature = [(PXSettings *)self _archiveDictionaryWithSignature];
        [(PXSettings *)self _validateArchivableValue:_archiveDictionaryWithSignature forKey:_defaultsKey];
        [_userDefaults setObject:_archiveDictionaryWithSignature forKey:_defaultsKey];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = self->_archivedSettings;
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            v14 = 0;
            do
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v25 + 1) + 8 * v14++) performPostSaveActions];
            }

            while (v12 != v14);
            v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v12);
        }

        v15 = self->_archivedSettings;
        self->_archivedSettings = 0;

        [_userDefaults synchronize];
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
      v17 = [reparentedRootSettings countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          v20 = 0;
          do
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(reparentedRootSettings);
            }

            [*(*(&v21 + 1) + 8 * v20++) save];
          }

          while (v18 != v20);
          v18 = [reparentedRootSettings countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v18);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_FAULT, "internal settings can't be saved", buf, 2u);
    }
  }
}

- (void)clearManualOverrides
{
  parentSettings = [(PXSettings *)self parentSettings];
  v4 = parentSettings;
  if (parentSettings)
  {
    [parentSettings clearManualOverrides];
  }

  else
  {
    _userDefaults = [objc_opt_class() _userDefaults];
    [_userDefaults removeObjectForKey:@"PXSettingsOverride"];
  }
}

- (BOOL)hasDefaultValues
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(objc_opt_class());
  archiveDictionary = [(PXSettings *)self archiveDictionary];
  archiveDictionary2 = [v3 archiveDictionary];
  hasDefaultValues = [archiveDictionary isEqual:archiveDictionary2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v8 = [reparentedRootSettings countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        if (hasDefaultValues)
        {
          hasDefaultValues = [*(*(&v13 + 1) + 8 * i) hasDefaultValues];
        }

        else
        {
          hasDefaultValues = 0;
        }
      }

      v9 = [reparentedRootSettings countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return hasDefaultValues;
}

- (void)restoreDefaultValues
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PXSettings;
  [(PTSettings *)&v12 restoreDefaultValues];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v4 = [reparentedRootSettings countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v8 + 1) + 8 * v7++) restoreDefaultValues];
      }

      while (v5 != v7);
      v5 = [reparentedRootSettings countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_setOverrideValuesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PXSettings__setOverrideValuesFromDictionary___block_invoke;
  v9[3] = &unk_1E7749BE8;
  v9[4] = self;
  v9[5] = &v10;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];
  v5 = v11;
  if (self->_hasUserDefaultsOverrides)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v11 + 24);
  }

  self->_hasUserDefaultsOverrides = v6 & 1;
  v7 = *(v5 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__PXSettings__setOverrideValuesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = [*(a1 + 32) valueForKey:v5];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = v9;
  if (isKindOfClass)
  {
    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | [v8 _setOverrideValuesFromDictionary:v6]) & 1;
      goto LABEL_14;
    }

    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      v14 = "%@: Unable to find child settings object for key %@";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = PLUIGetLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v14 = "%@: Unable to override value for key %@ because it is a child settings tree";
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0x16u);
    }

LABEL_10:

    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "%@: Overriding value for key %@", &v17, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  [*(a1 + 32) setValue:v6 forKey:v5];
LABEL_14:
}

- (BOOL)hasUserDefaultsOverrides
{
  v14 = *MEMORY[0x1E69E9840];
  hasUserDefaultsOverrides = self->_hasUserDefaultsOverrides;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  reparentedRootSettings = [(PXSettings *)self reparentedRootSettings];
  v4 = [reparentedRootSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        if (hasUserDefaultsOverrides)
        {
          hasUserDefaultsOverrides = 1;
        }

        else
        {
          hasUserDefaultsOverrides = [*(*(&v9 + 1) + 8 * i) hasUserDefaultsOverrides];
        }
      }

      v5 = [reparentedRootSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return hasUserDefaultsOverrides;
}

- (void)_resetValuesThatChangedBetweenCurrentDefaultValues:(id)values andArchivedDefaultValues:(id)defaultValues defaultSettings:(id)settings
{
  v29 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  defaultValuesCopy = defaultValues;
  settingsCopy = settings;
  array = [MEMORY[0x1E695DF70] array];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __106__PXSettings__resetValuesThatChangedBetweenCurrentDefaultValues_andArchivedDefaultValues_defaultSettings___block_invoke;
  v24[3] = &unk_1E7749BC0;
  v24[4] = self;
  v12 = defaultValuesCopy;
  v25 = v12;
  v13 = settingsCopy;
  v26 = v13;
  v14 = array;
  v27 = v14;
  [valuesCopy enumerateKeysAndObjectsUsingBlock:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PXSettings *)self defaultValueDidChangeForKey:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

void __106__PXSettings__resetValuesThatChangedBetweenCurrentDefaultValues_andArchivedDefaultValues_defaultSettings___block_invoke(id *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (([a1[4] isTransientKey:v13] & 1) == 0)
  {
    v6 = [a1[5] objectForKeyedSubscript:v13];
    v7 = [a1[6] valueForKey:v13];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([a1[4] valueForKey:v13], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [a1[6] valueForKey:v13];
      [v9 _resetValuesThatChangedBetweenCurrentDefaultValues:v5 andArchivedDefaultValues:v6 defaultSettings:v10];
    }

    else if (([v5 isEqual:v6] & 1) == 0)
    {
      v11 = [v13 isEqualToString:@"version"];
      v12 = a1[4];
      if (v11)
      {
        [v12 restoreDefaultValues];
      }

      else
      {
        [v12 setValue:v7 forKey:v13];
      }

      [a1[7] addObject:v13];
    }
  }
}

- (BOOL)isTransientKeyPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy rangeOfString:@"." options:2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PXSettings *)self isTransientKey:pathCopy];
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = [pathCopy substringToIndex:v5];
    v11 = [(PXSettings *)self valueForKey:v10];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [pathCopy substringFromIndex:v8 + v9];
    v7 = [v12 isTransientKeyPath:v13];
  }

  return v7;
}

- (BOOL)isTransientKey:(id)key
{
  keyCopy = key;
  cachedTransientProperties = self->_cachedTransientProperties;
  if (!cachedTransientProperties)
  {
    transientProperties = [objc_opt_class() transientProperties];
    v7 = self->_cachedTransientProperties;
    self->_cachedTransientProperties = transientProperties;

    cachedTransientProperties = self->_cachedTransientProperties;
  }

  if ([(NSSet *)cachedTransientProperties containsObject:keyCopy])
  {
    v8 = 1;
  }

  else
  {
    v8 = [keyCopy hasPrefix:@"_internal_"];
  }

  return v8;
}

+ (id)_signatureDictionaryWithDefaultSettings:(id *)settings
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  initWithDefaultValues = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "version")}];
  [dictionary setObject:v7 forKeyedSubscript:@"PXSettingsSignatureVersionKey"];

  archiveDictionary = [initWithDefaultValues archiveDictionary];
  [dictionary setObject:archiveDictionary forKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];

  if (settings)
  {
    v9 = initWithDefaultValues;
    *settings = initWithDefaultValues;
  }

  return dictionary;
}

+ (id)_userDefaults
{
  suiteName = [self suiteName];
  if (suiteName)
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:suiteName];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v4 = standardUserDefaults;

  return v4;
}

+ (NSSet)transientProperties
{
  if (transientProperties_onceToken_239756 != -1)
  {
    dispatch_once(&transientProperties_onceToken_239756, &__block_literal_global_239757);
  }

  v3 = transientProperties_transientProperties_239758;

  return v3;
}

void __33__PXSettings_transientProperties__block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = NSStringFromSelector(sel_parentSettings);
  v8[0] = v1;
  v2 = NSStringFromSelector(sel_hasDefaultValues);
  v8[1] = v2;
  v3 = NSStringFromSelector(sel_hasUserDefaultsOverrides);
  v8[2] = v3;
  v4 = NSStringFromSelector(sel_reparentedRootSettings);
  v8[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v6 = [v0 initWithArray:v5];
  v7 = transientProperties_transientProperties_239758;
  transientProperties_transientProperties_239758 = v6;
}

+ (BOOL)ignoresKey:(id)key
{
  keyCopy = key;
  transientProperties = [self transientProperties];
  v6 = [transientProperties containsObject:keyCopy];

  return v6;
}

+ (id)sharedInstance
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettings.m" lineNumber:100 description:@"Concrete subclass must implement. Use either PXSettingsImplementRootSettings() or PXSettingsImplementChildSettings() macro for this."];

  return 0;
}

+ (void)setSuiteName:(id)name
{
  v3 = [name copy];
  v4 = _suiteName;
  _suiteName = v3;
}

@end