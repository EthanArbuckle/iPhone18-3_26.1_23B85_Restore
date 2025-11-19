@interface PXSettings
+ (BOOL)ignoresKey:(id)a3;
+ (NSSet)transientProperties;
+ (id)_signatureDictionaryWithDefaultSettings:(id *)a3;
+ (id)_userDefaults;
+ (id)createSharedInstance;
+ (id)sharedInstance;
+ (void)setSuiteName:(id)a3;
- (BOOL)_setOverrideValuesFromDictionary:(id)a3;
- (BOOL)hasDefaultValues;
- (BOOL)hasUserDefaultsOverrides;
- (BOOL)isTransientKey:(id)a3;
- (BOOL)isTransientKeyPath:(id)a3;
- (id)_archiveDictionaryWithSignature;
- (id)archiveDictionary;
- (id)archiveValueForKey:(id)a3;
- (void)_resetValuesThatChangedBetweenCurrentDefaultValues:(id)a3 andArchivedDefaultValues:(id)a4 defaultSettings:(id)a5;
- (void)_validateArchivableValue:(id)a3 forKey:(id)a4;
- (void)_willArchiveSettings:(id)a3;
- (void)addDeferredKeyObserver:(id)a3;
- (void)addDeferredKeyPathObserver:(id)a3;
- (void)addKeyObserver:(id)a3;
- (void)addKeyPathObserver:(id)a3;
- (void)applyArchiveValue:(id)a3 forKey:(id)a4;
- (void)clearManualOverrides;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)removeKeyObserver:(id)a3;
- (void)removeKeyPathObserver:(id)a3;
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
    v4 = [[a1 alloc] initWithDefaultValues];
    goto LABEL_6;
  }

  v8 = [a1 _userDefaults];
  v9 = [a1 _defaultsKey];
  v10 = [v8 objectForKey:v9];

  v11 = [v10 objectForKeyedSubscript:@"PXSettingsArchiveKey"];
  v12 = [a1 _userDefaults];
  v13 = [v12 objectForKey:@"PXSettingsOverride"];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ExpandOverrideDictionary_block_invoke;
  v25[3] = &unk_1E7749C38;
  v3 = v14;
  v26 = v3;
  [v13 enumerateKeysAndObjectsUsingBlock:v25];

  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  LODWORD(v13) = [v15 launchedToTest];

  if (!v13)
  {
    v24 = 0;
    v16 = [a1 _signatureDictionaryWithDefaultSettings:&v24];
    v17 = v24;
    v18 = [v10 objectForKeyedSubscript:@"PXSettingsSignatureKey"];
    v19 = [v16 objectForKeyedSubscript:@"PXSettingsSignatureVersionKey"];
    v20 = [v19 integerValue];
    v21 = [v18 objectForKeyedSubscript:@"PXSettingsSignatureVersionKey"];
    LOBYTE(v20) = v20 == [v21 integerValue];

    if (v20)
    {
      if (v11)
      {
        v4 = [a1 settingsFromArchiveDictionary:v11];
        v22 = [v16 objectForKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];
        v23 = [v18 objectForKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];
        [v4 _resetValuesThatChangedBetweenCurrentDefaultValues:v22 andArchivedDefaultValues:v23 defaultSettings:v17];

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {

      v11 = 0;
    }

    v4 = 0;
    goto LABEL_19;
  }

  if (!v11)
  {

    goto LABEL_5;
  }

  v4 = [a1 settingsFromArchiveDictionary:v11];
LABEL_20:

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v3)
  {
    v5 = [a1 _defaultsKey];
    v6 = [v3 objectForKey:v5];

    [v4 _setOverrideValuesFromDictionary:v6];
  }

  return v4;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v7 = [(PXSettings *)self _archiveDictionaryWithSignature];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 addAttachmentWithDictionary:v7 name:v6];
}

- (void)addDeferredKeyPathObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v5 = [off_1E7721858 sharedScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PXSettings_addDeferredKeyPathObserver___block_invoke;
  v6[3] = &unk_1E7749C10;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  [v5 scheduleMainQueueTask:v6];

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

- (void)addDeferredKeyObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v5 = [off_1E7721858 sharedScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXSettings_addDeferredKeyObserver___block_invoke;
  v6[3] = &unk_1E7749C10;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  [v5 scheduleMainQueueTask:v6];

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

- (void)removeKeyPathObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 removeKeyPathObserver:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PXSettings *)self reparentedRootSettings];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeKeyPathObserver:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addKeyPathObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 addKeyPathObserver:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PXSettings *)self reparentedRootSettings];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) addKeyPathObserver:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeKeyObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 removeKeyObserver:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PXSettings *)self reparentedRootSettings];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeKeyObserver:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addKeyObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXSettings;
  [(PTSettings *)&v14 addKeyObserver:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PXSettings *)self reparentedRootSettings];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) addKeyObserver:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)applyArchiveValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PXSettings *)self isTransientKey:v7])
  {
    v8.receiver = self;
    v8.super_class = PXSettings;
    [(PTSettings *)&v8 applyArchiveValue:v6 forKey:v7];
  }
}

- (id)archiveValueForKey:(id)a3
{
  v4 = a3;
  if ([(PXSettings *)self isTransientKey:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXSettings;
    v5 = [(PTSettings *)&v7 archiveValueForKey:v4];
  }

  return v5;
}

- (void)_validateArchivableValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!CFPropertyListIsValid(v7, kCFPropertyListBinaryFormat_v1_0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];

      abort();
    }

    v9 = v7;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          [(PXSettings *)self _validateArchivableValue:v16 forKey:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(PTSettings *)&v5 archiveDictionary];

  return v3;
}

- (void)_willArchiveSettings:(id)a3
{
  v4 = a3;
  if (_PXSettingsRootIsSaving == 1)
  {
    v7 = v4;
    v5 = [(PXSettings *)self parentSettings];
    v6 = v5;
    if (v5)
    {
      [v5 _willArchiveSettings:v7];
    }

    else
    {
      [(NSMutableSet *)self->_archivedSettings addObject:v7];
    }

    v4 = v7;
  }
}

- (id)_archiveDictionaryWithSignature
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  _PXSettingsRootIsSaving = 1;
  v4 = [(PXSettings *)self archiveDictionary];
  [v3 setObject:v4 forKeyedSubscript:@"PXSettingsArchiveKey"];

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
    v3 = [(PXSettings *)self parentSettings];
    if (v3)
    {
      v4 = v3;
      [v3 save];
    }

    else
    {
      if (self->_hasUserDefaultsOverrides)
      {
        v5 = PLUIGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v31 = self;
          v32 = 2112;
          v33 = @"PXSettingsOverride";
          _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "%@: Will skip attempt to save a settings tree with some settings overridden. It would conflict with manual override key %@", buf, 0x16u);
        }
      }

      else
      {
        v6 = [MEMORY[0x1E695DFA8] set];
        archivedSettings = self->_archivedSettings;
        self->_archivedSettings = v6;

        v5 = [objc_opt_class() _userDefaults];
        v8 = [objc_opt_class() _defaultsKey];
        v9 = [(PXSettings *)self _archiveDictionaryWithSignature];
        [(PXSettings *)self _validateArchivableValue:v9 forKey:v8];
        [v5 setObject:v9 forKey:v8];
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

        [v5 synchronize];
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = [(PXSettings *)self reparentedRootSettings];
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
              objc_enumerationMutation(v16);
            }

            [*(*(&v21 + 1) + 8 * v20++) save];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  v2 = [(PXSettings *)self parentSettings];
  v4 = v2;
  if (v2)
  {
    [v2 clearManualOverrides];
  }

  else
  {
    v3 = [objc_opt_class() _userDefaults];
    [v3 removeObjectForKey:@"PXSettingsOverride"];
  }
}

- (BOOL)hasDefaultValues
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(PXSettings *)self archiveDictionary];
  v5 = [v3 archiveDictionary];
  v6 = [v4 isEqual:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(PXSettings *)self reparentedRootSettings];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (v6)
        {
          v6 = [*(*(&v13 + 1) + 8 * i) hasDefaultValues];
        }

        else
        {
          v6 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
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
  v3 = [(PXSettings *)self reparentedRootSettings];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) restoreDefaultValues];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_setOverrideValuesFromDictionary:(id)a3
{
  v4 = a3;
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
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
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
  v3 = [(PXSettings *)self reparentedRootSettings];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return hasUserDefaultsOverrides;
}

- (void)_resetValuesThatChangedBetweenCurrentDefaultValues:(id)a3 andArchivedDefaultValues:(id)a4 defaultSettings:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __106__PXSettings__resetValuesThatChangedBetweenCurrentDefaultValues_andArchivedDefaultValues_defaultSettings___block_invoke;
  v24[3] = &unk_1E7749BC0;
  v24[4] = self;
  v12 = v9;
  v25 = v12;
  v13 = v10;
  v26 = v13;
  v14 = v11;
  v27 = v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v24];
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

- (BOOL)isTransientKeyPath:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"." options:2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PXSettings *)self isTransientKey:v4];
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = [v4 substringToIndex:v5];
    v11 = [(PXSettings *)self valueForKey:v10];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 substringFromIndex:v8 + v9];
    v7 = [v12 isTransientKeyPath:v13];
  }

  return v7;
}

- (BOOL)isTransientKey:(id)a3
{
  v4 = a3;
  cachedTransientProperties = self->_cachedTransientProperties;
  if (!cachedTransientProperties)
  {
    v6 = [objc_opt_class() transientProperties];
    v7 = self->_cachedTransientProperties;
    self->_cachedTransientProperties = v6;

    cachedTransientProperties = self->_cachedTransientProperties;
  }

  if ([(NSSet *)cachedTransientProperties containsObject:v4])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 hasPrefix:@"_internal_"];
  }

  return v8;
}

+ (id)_signatureDictionaryWithDefaultSettings:(id *)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "version")}];
  [v5 setObject:v7 forKeyedSubscript:@"PXSettingsSignatureVersionKey"];

  v8 = [v6 archiveDictionary];
  [v5 setObject:v8 forKeyedSubscript:@"PXSettingsSignatureDefaultValuesKey"];

  if (a3)
  {
    v9 = v6;
    *a3 = v6;
  }

  return v5;
}

+ (id)_userDefaults
{
  v2 = [a1 suiteName];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v4 = v3;

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

+ (BOOL)ignoresKey:(id)a3
{
  v4 = a3;
  v5 = [a1 transientProperties];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)sharedInstance
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXSettings.m" lineNumber:100 description:@"Concrete subclass must implement. Use either PXSettingsImplementRootSettings() or PXSettingsImplementChildSettings() macro for this."];

  return 0;
}

+ (void)setSuiteName:(id)a3
{
  v3 = [a3 copy];
  v4 = _suiteName;
  _suiteName = v3;
}

@end