@interface TLVibrationManager
+ (TLVibrationManager)sharedVibrationManager;
+ (void)_handleVibrateOnRingOrSilentDidChangeNotification;
+ (void)_handleVibrationPreferencesDidChangeNotificationForPreferencesKinds:(unint64_t)a3 atInitiativeOfVibrationManager:(id)a4;
- (BOOL)_BOOLeanPreferenceForKey:(__CFString *)a3 defaultValue:(BOOL)a4;
- (BOOL)_areSynchronizedVibrationsAllowedForAlertType:(int64_t)a3 topic:(id)a4;
- (BOOL)_migrateLegacySettings;
- (BOOL)_removeAllUserGeneratedVibrationPatternsUsingServiceWithError:(id *)a3;
- (BOOL)_removeAllUserGeneratedVibrationsWithError:(id *)a3;
- (BOOL)_saveUserGeneratedVibrationPatterns:(id)a3 error:(id *)a4;
- (BOOL)_setUserGeneratedVibrationPatternsUsingService:(id)a3 error:(id *)a4;
- (BOOL)_vibrationIsSettableForAlertType:(int64_t)a3;
- (BOOL)deleteUserGeneratedVibrationPatternWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)hasSpecificDefaultVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4;
- (BOOL)refresh;
- (BOOL)setName:(id)a3 forUserGeneratedVibrationWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)shouldVibrateForCurrentRingerSwitchState;
- (BOOL)vibrationWithIdentifierIsValid:(id)a3;
- (id)_completeSystemVibrationsSubdirectoryForSubdirectory:(id)a3;
- (id)_currentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 allowsFallbackToDefaultPreferablyNonSilentVibrationForInvalidPersistedValue:(BOOL)a5;
- (id)_currentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5 allowsNoneDefaultToAnyActualVibrationSubstitution:(BOOL)a6;
- (id)_currentVibrationWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)a3 topic:(id)a4;
- (id)_defaultPreferablyNonSilentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5;
- (id)_defaultVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5;
- (id)_initWithSpecialBehaviors:(unint64_t)a3;
- (id)_localizedNameForVibrationWithIdentifier:(id)a3;
- (id)_nameOfVibrationWithIdentifier:(id)a3;
- (id)_newServiceConnection;
- (id)_patternForSystemVibrationWithIdentifier:(id)a3 correspondingToneIdentifier:(id)a4 targetDevice:(int64_t)a5 shouldLogAssetPath:(BOOL)a6;
- (id)_retrieveUserGeneratedVibrationPatternsUsingService;
- (id)_sanitizeVibrationIdentifier:(id)a3 forAlertType:(int64_t)a4 topic:(id)a5 targetDevice:(int64_t)a6 correspondingToneIdentifier:(id)a7 useDefaultVibrationAsFallback:(BOOL)a8 allowsNoneDefaultToAnyActualVibrationSubstitution:(BOOL)a9 didFallback:(BOOL *)a10;
- (id)_synchronizedVibrationIdentifierForToneIdentifier:(id)a3 targetDevice:(int64_t)a4;
- (id)_systemVibrationIdentifiersForSubdirectory:(id)a3;
- (id)_systemWideVibrationPatternPreferenceKeyForAlertType:(int64_t)a3;
- (id)_userGeneratedVibrationPatterns;
- (id)addUserGeneratedVibrationPattern:(id)a3 name:(id)a4 error:(id *)a5;
- (id)allUserGeneratedVibrationIdentifiers;
- (id)allUserSelectableSystemVibrationIdentifiers;
- (id)currentVibrationNameForAlertType:(int64_t)a3;
- (id)currentVibrationPatternForAlertType:(int64_t)a3;
- (id)defaultVibrationNameForAlertType:(int64_t)a3;
- (id)defaultVibrationPatternForAlertType:(int64_t)a3;
- (id)nameOfVibrationWithIdentifier:(id)a3;
- (id)noneVibrationPattern;
- (id)patternForVibrationWithIdentifier:(id)a3;
- (id)patternForVibrationWithIdentifier:(id)a3 repeating:(BOOL)a4;
- (int64_t)_currentVibrationWatchAlertPolicyForAlertType:(int64_t)a3 topic:(id)a4 didFindPersistedWatchAlertPolicy:(BOOL *)a5;
- (unint64_t)_numberOfUserGeneratedVibrations;
- (unint64_t)_storedSystemVibrationDataMigrationVersion;
- (void)_didChangeUserGeneratedVibrationPatterns;
- (void)_didSetVibrationPreferenceSuccessfullyWithKey:(id)a3 inDomain:(id)a4 usingPreferencesOfKind:(unint64_t)a5;
- (void)_handleUserGeneratedVibrationsDidChangeNotification;
- (void)_makeSystemVibrationDataMigrationVersionCurrentIfNecessary;
- (void)_setCurrentVibrationWatchAlertPolicy:(int64_t)a3 forAlertType:(int64_t)a4 topic:(id)a5;
- (void)dealloc;
- (void)setAllowsAutoRefresh:(BOOL)a3;
- (void)setCurrentVibrationIdentifier:(id)a3 forAlertType:(int64_t)a4 topic:(id)a5;
@end

@implementation TLVibrationManager

+ (TLVibrationManager)sharedVibrationManager
{
  if (sharedVibrationManager__TLVibrationManagerSharedInstanceOnceToken != -1)
  {
    +[TLVibrationManager sharedVibrationManager];
  }

  v3 = sharedVibrationManager__TLVibrationManagerSharedInstance;

  return v3;
}

uint64_t __44__TLVibrationManager_sharedVibrationManager__block_invoke()
{
  sharedVibrationManager__TLVibrationManagerSharedInstance = [[TLVibrationManager alloc] _initWithSpecialBehaviors:1];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithSpecialBehaviors:(unint64_t)a3
{
  v20.receiver = self;
  v20.super_class = TLVibrationManager;
  v4 = [(TLVibrationManager *)&v20 init];
  if (v4)
  {
    v5 = [[TLAccessQueue alloc] initWithLabel:@"_TLVibrationManagerAccessQueue" appendUUIDToLabel:1];
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:@"Chord" forKey:@"texttone:Calendar Alert"];
    [v7 setObject:@"Ding" forKey:@"texttone:New Mail"];
    [v7 setObject:@"Pulse" forKey:@"texttone:Air Drop Invitation"];
    [v7 setObject:@"Swish" forKey:@"texttone:Sharing Post"];
    [v7 setObject:@"Swoosh" forKey:@"texttone:Sent Mail"];
    [v7 setObject:@"Tweet" forKey:@"texttone:Sent Tweet"];
    v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v9 = [v8 wantsModernDefaultRingtone];

    if (v9)
    {
      [v7 setObject:@"Reflection" forKey:@"<default>"];
    }

    v10 = [v7 objectForKey:@"<default>"];

    if (!v10)
    {
      [v7 setObject:@"Opening" forKey:@"<default>"];
    }

    v11 = [v7 copy];
    synchronizedVibrationPatternFromToneIdentifierMapping = v4->_synchronizedVibrationPatternFromToneIdentifierMapping;
    v4->_synchronizedVibrationPatternFromToneIdentifierMapping = v11;

    v4->_specialBehaviors = a3;
    v4->_allowsAutoRefresh = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if ((a3 & 2) != 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
    }

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _TLVibrationManagerHandleUserGeneratedVibrationsDidChangeNotification, @"TLVibrationManagerUserGeneratedVibrationsDidChange", 0, 1026);
    v14 = objc_opt_class();
    objc_sync_enter(v14);
    v15 = _TLVibrationManagerInstancesCount;
    if (!_TLVibrationManagerInstancesCount)
    {
      v16 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v16, v14, _TLVibrationManagerHandleVibrationPreferencesDidChangeNotification, @"_TLVibrationPreferencesDidChangeNotification", 0, 1026);
      [v14 _handleVibrationPreferencesDidChangeNotificationForPreferencesKinds:3 atInitiativeOfVibrationManager:0];
      v17 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v17, v14, _TLVibrationManagerHandleVibrateOnRingOrSilentDidChangeNotification, @"com.apple.springboard.ring-vibrate.changed", 0, 1026);
      v18 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v18, v14, _TLVibrationManagerHandleVibrateOnRingOrSilentDidChangeNotification, @"com.apple.springboard.silent-vibrate.changed", 0, 1026);
      v15 = _TLVibrationManagerInstancesCount;
    }

    _TLVibrationManagerInstancesCount = v15 + 1;
    objc_sync_exit(v14);
  }

  return v4;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1D9356000, v0, OS_LOG_TYPE_ERROR, "Found no living vibration managers while deallocating %p.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __29__TLVibrationManager_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;
}

- (void)setAllowsAutoRefresh:(BOOL)a3
{
  if (self->_specialBehaviors)
  {
    v5 = objc_opt_class();
    v9 = NSStringFromClass(v5);
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"*** -[%@ %@] Attempted to mutate the shared vibration manager: %@. Create your own instance of %@ manually if you need to mutate it.", v9, v8, self, v9}];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__TLVibrationManager_setAllowsAutoRefresh___block_invoke;
    v10[3] = &unk_1E8578D08;
    v10[4] = self;
    v11 = a3;
    [(TLVibrationManager *)self _performBlockInAccessQueue:v10];
  }
}

_BYTE *__43__TLVibrationManager_setAllowsAutoRefresh___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result[65] != v3)
  {
    if ((v3 & 1) == 0 && result[64] == 1)
    {
      [result refresh];
      LOBYTE(v3) = *(a1 + 40);
      result = *(a1 + 32);
    }

    result[65] = v3;
  }

  return result;
}

- (BOOL)refresh
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__TLVibrationManager_refresh__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__TLVibrationManager_refresh__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {
    v3 = *(v1 + 65);
    *(v1 + 65) = 1;
    *(*(a1 + 32) + 64) = 1;
    v4 = [*(a1 + 32) _userGeneratedVibrationPatterns];
    *(*(*(a1 + 40) + 8) + 24) = v4 != 0;

    *(*(a1 + 32) + 65) = v3;
  }
}

- (id)_currentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 allowsFallbackToDefaultPreferablyNonSilentVibrationForInvalidPersistedValue:(BOOL)a5
{
  v5 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = TLLogVibrationManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromTLAlertType(a3);
    *buf = 138544130;
    v49 = self;
    v50 = 2114;
    v51 = v10;
    v52 = 2114;
    v53 = v8;
    v54 = 1024;
    *v55 = v5;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentVibrationForInvalidPersistedValue:(%{BOOL}u).", buf, 0x26u);
  }

  v11 = [v8 length];
  v12 = [(TLVibrationManager *)self _systemWideVibrationPatternPreferenceKeyForAlertType:a3];
  v13 = v12;
  if (v12 && v11)
  {
    v14 = [(__CFString *)v12 stringByAppendingString:@"PerAccount"];

    v13 = v14;
  }

  v15 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v16 = v15;
  if (v13 && v15)
  {
    v47 = v5;
    v17 = CFPreferencesCopyValue(v13, v15, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v18 = TLLogVibrationManagement();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromTLAlertType(a3);
      *buf = 138544386;
      v49 = self;
      v50 = 2114;
      v51 = v19;
      v52 = 2114;
      v53 = v13;
      v54 = 2114;
      *v55 = v16;
      *&v55[8] = 2114;
      *&v55[10] = v17;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Read Preferences value for key '%{public}@' from domain '%{public}@': %{public}@.", buf, 0x34u);
    }

    if (!v17)
    {
      v28 = 0;
      v24 = 0;
LABEL_35:
      v5 = v47;
      goto LABEL_36;
    }

    if (v11)
    {
      v20 = [v17 objectForKey:v8];
      v21 = TLLogVibrationManagement();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromTLAlertType(a3);
        *buf = 138543874;
        v49 = self;
        v50 = 2114;
        v51 = v22;
        v52 = 2114;
        v53 = v20;
        v23 = "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Per-topic: persistedVibrationIdentifier = %{public}@.";
LABEL_24:
        _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x20u);
      }
    }

    else
    {
      v20 = v17;
      v21 = TLLogVibrationManagement();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromTLAlertType(a3);
        *buf = 138543874;
        v49 = self;
        v50 = 2114;
        v51 = v22;
        v52 = 2114;
        v53 = v20;
        v23 = "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. persistedVibrationIdentifier = %{public}@.";
        goto LABEL_24;
      }
    }

    v46 = v20;
    if ([v20 length])
    {
      v45 = [(TLVibrationManager *)self vibrationWithIdentifierIsValid:v20];
      if (v45)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithString:v20];
        v29 = TLLogVibrationManagement();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = NSStringFromTLAlertType(a3);
          *buf = 138543874;
          v49 = self;
          v50 = 2114;
          v51 = v30;
          v52 = 2114;
          v53 = v24;
          _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. currentVibrationIdentifier = %{public}@.", buf, 0x20u);
        }
      }

      else
      {
        v29 = TLLogVibrationManagement();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = NSStringFromTLAlertType(a3);
          *buf = 138543618;
          v49 = self;
          v50 = 2114;
          v51 = v31;
          _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. persistedVibrationIdentifierWasInvalid = YES.", buf, 0x16u);
        }

        v24 = 0;
      }

      v28 = !v45;
    }

    else
    {
      v24 = 0;
      v28 = 0;
    }

    CFRelease(v17);

    goto LABEL_35;
  }

  v24 = [(TLVibrationManager *)self _defaultVibrationIdentifierForAlertType:a3 topic:v8 correspondingToneIdentifier:0];
  v25 = TLLogVibrationManagement();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    NSStringFromTLAlertType(a3);
    v27 = v26 = v5;
    *buf = 138543874;
    v49 = self;
    v50 = 2114;
    v51 = v27;
    v52 = 2114;
    v53 = v24;
    _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Vibration is not settable for this alert type. Returning corresponding default vibration. currentVibrationIdentifier = %{public}@.", buf, 0x20u);

    v5 = v26;
  }

  if (!v16)
  {
    if ([v24 length] || !v11)
    {
      goto LABEL_54;
    }

    v28 = 0;
    goto LABEL_38;
  }

  v28 = 0;
LABEL_36:
  CFRelease(v16);
  if ([v24 length] || !v11)
  {
    if (!v28)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

LABEL_38:
  v32 = v24;
  v24 = [(TLVibrationManager *)self _currentVibrationIdentifierForAlertType:a3 topic:0 allowsFallbackToDefaultPreferablyNonSilentVibrationForInvalidPersistedValue:0];

  v33 = TLLogVibrationManagement();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromTLAlertType(a3);
    *buf = 138543874;
    v49 = self;
    v50 = 2114;
    v51 = v34;
    v52 = 2114;
    v53 = v24;
    _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Falling back to current vibration without topic. currentVibrationIdentifier = %{public}@.", buf, 0x20u);
  }

  if (v28)
  {
    if ([v24 isEqualToString:@"<none>"])
    {

      v35 = TLLogVibrationManagement();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = NSStringFromTLAlertType(a3);
        *buf = 138543874;
        v49 = self;
        v50 = 2114;
        v51 = v36;
        v52 = 2114;
        v53 = 0;
        _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, and fallback value is none. Ignoring fallback value. currentVibrationIdentifier = %{public}@.", buf, 0x20u);
      }

      v24 = 0;
    }

LABEL_46:
    if (![v24 length])
    {
      if (v5)
      {
        v37 = [(TLVibrationManager *)self _defaultPreferablyNonSilentVibrationIdentifierForAlertType:a3 topic:v8 correspondingToneIdentifier:0];

        v38 = TLLogVibrationManagement();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = NSStringFromTLAlertType(a3);
          *buf = 138543874;
          v49 = self;
          v50 = 2114;
          v51 = v39;
          v52 = 2114;
          v53 = v37;
          _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid; falling back to non-silent default vibration. currentVibrationIdentifier = %{public}@.", buf, 0x20u);
        }
      }

      else
      {
        v38 = TLLogVibrationManagement();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v40 = NSStringFromTLAlertType(a3);
          *buf = 138543874;
          v49 = self;
          v50 = 2114;
          v51 = v40;
          v52 = 2114;
          v53 = v24;
          _os_log_impl(&dword_1D9356000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, but falling back to non-silent default vibration is disallowed. currentVibrationIdentifier = %{public}@.", buf, 0x20u);
        }

        v37 = v24;
      }

      v24 = v37;
    }
  }

LABEL_54:
  v41 = TLLogVibrationManagement();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = NSStringFromTLAlertType(a3);
    *buf = 138544386;
    v49 = self;
    v50 = 2114;
    v51 = v42;
    v52 = 2114;
    v53 = v8;
    v54 = 1024;
    *v55 = v5;
    *&v55[4] = 2114;
    *&v55[6] = v24;
    _os_log_impl(&dword_1D9356000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentVibrationForInvalidPersistedValue:(%{BOOL}u). Returning: %{public}@.", buf, 0x30u);
  }

  v43 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_currentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5 allowsNoneDefaultToAnyActualVibrationSubstitution:(BOOL)a6
{
  v6 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = TLLogVibrationManagement();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertType(a3);
    *buf = 138544386;
    v39 = self;
    v40 = 2114;
    v41 = v13;
    v42 = 2114;
    v43 = v10;
    v44 = 2114;
    v45 = v11;
    v46 = 1024;
    v47 = v6;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) correspondingToneIdentifier:(%{public}@) allowsNoneDefaultToAnyActualVibrationSubstitution:(%{BOOL}u).", buf, 0x30u);
  }

  if ([TLAlert _currentOverridePolicyForType:a3]!= 1)
  {
    goto LABEL_7;
  }

  v14 = @"<none>";
  v15 = TLLogVibrationManagement();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromTLAlertType(a3);
    *buf = 138543874;
    v39 = self;
    v40 = 2114;
    v41 = v16;
    v42 = 2114;
    v43 = v14;
    _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Falling back to none due to alert override policy. vibrationIdentifier = %{public}@.", buf, 0x20u);
  }

  if (!v14)
  {
LABEL_7:
    if (v10)
    {
      if (a3 == 13)
      {
        if ([(__CFString *)v10 isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
        {
          v14 = TLLogVibrationManagement();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
LABEL_34:

LABEL_35:
            v14 = [(TLVibrationManager *)self _defaultVibrationIdentifierForAlertType:a3 topic:v10 correspondingToneIdentifier:v11];
            v25 = TLLogVibrationManagement();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = NSStringFromTLAlertType(a3);
              *buf = 138543874;
              v39 = self;
              v40 = 2114;
              v41 = v26;
              v42 = 2114;
              v43 = v14;
              _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Falling back to default due missing setting in Preferences. vibrationIdentifier = %{public}@.", buf, 0x20u);
            }

            goto LABEL_38;
          }

          v18 = NSStringFromTLAlertType(0xDuLL);
          *buf = 138543874;
          v39 = self;
          v40 = 2114;
          v41 = v18;
          v42 = 2114;
          v43 = v10;
          _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Skipping Preferences lookup for topic %{public}@.", buf, 0x20u);
LABEL_33:

          goto LABEL_34;
        }
      }

      else if (a3 == 2)
      {
        if (([(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"]& 1) != 0 || ([(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"]& 1) != 0 || ([(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"]& 1) != 0 || ([(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"]& 1) != 0 || ([(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"]& 1) != 0)
        {
          v17 = 1;
        }

        else
        {
          v17 = [(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"];
        }

        goto LABEL_20;
      }
    }

    v17 = 0;
LABEL_20:
    v19 = [(TLVibrationManager *)self _currentVibrationIdentifierForAlertType:a3 topic:v10];
    v20 = TLLogVibrationManagement();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromTLAlertType(a3);
      *buf = 138543874;
      v39 = self;
      v40 = 2114;
      v41 = v21;
      v42 = 2114;
      v43 = v19;
      _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method: vibrationIdentifier = %{public}@.", buf, 0x20u);
    }

    if (v19)
    {
      LOBYTE(v37) = v6;
      v14 = [(TLVibrationManager *)self _sanitizeVibrationIdentifier:v19 forAlertType:a3 topic:v10 targetDevice:0 correspondingToneIdentifier:v11 useDefaultVibrationAsFallback:1 allowsNoneDefaultToAnyActualVibrationSubstitution:v37 didFallback:0];

      v22 = TLLogVibrationManagement();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromTLAlertType(a3);
        *buf = 138543874;
        v39 = self;
        v40 = 2114;
        v41 = v23;
        v42 = 2114;
        v43 = v14;
        _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Sanitized: vibrationIdentifier = %{public}@.", buf, 0x20u);
      }

      if (!v17)
      {
LABEL_29:
        if (v14)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v14 = 0;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if (([(__CFString *)v14 isEqualToString:@"<none>"]& 1) != 0)
    {
      goto LABEL_29;
    }

    v18 = TLLogVibrationManagement();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromTLAlertType(a3);
      *buf = 138543874;
      v39 = self;
      v40 = 2114;
      v41 = v24;
      v42 = 2114;
      v43 = @"<none>";
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method was not %{public}@; ignoring it.", buf, 0x20u);
    }

    goto LABEL_33;
  }

LABEL_38:
  if (a3 == 18)
  {
    v27 = [(TLVibrationManager *)self currentVibrationIdentifierForAlertType:1 topic:v10];

    v31 = TLLogVibrationManagement();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = NSStringFromTLAlertType(0x12uLL);
      *buf = 138543874;
      v39 = self;
      v40 = 2114;
      v41 = v32;
      v42 = 2114;
      v43 = v27;
      _os_log_impl(&dword_1D9356000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Detected alert type for emergency alert. Resolving to current vibration identifier for incoming call: vibrationIdentifier = %{public}@.", buf, 0x20u);
    }

    v28 = v27;
    goto LABEL_53;
  }

  if (a3 == 3)
  {
    v27 = [(TLVibrationManager *)self currentVibrationIdentifierForAlertType:2 topic:v10];
    if (![v27 isEqualToString:@"<none>"])
    {
      v28 = v14;
      goto LABEL_53;
    }

    v28 = @"<none>";

    v29 = TLLogVibrationManagement();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromTLAlertType(3uLL);
      *buf = 138543874;
      v39 = self;
      v40 = 2114;
      v41 = v30;
      v42 = 2114;
      v43 = v28;
      _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Detected alert type for text message in conversation. vibrationIdentifier = %{public}@.", buf, 0x20u);
    }

    goto LABEL_48;
  }

  if (a3 == 2 && [(__CFString *)v10 isEqualToString:@"TLAlertTopicTextMessageInConversation"]&& ([(__CFString *)v14 isEqualToString:@"<none>"]& 1) == 0)
  {

    v27 = TLLogVibrationManagement();
    v28 = @"Text-Message-Alert-In-Conversation";
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
LABEL_53:

      v14 = v28;
      goto LABEL_54;
    }

    v29 = NSStringFromTLAlertType(2uLL);
    *buf = 138543874;
    v39 = self;
    v40 = 2114;
    v41 = v29;
    v42 = 2114;
    v43 = @"Text-Message-Alert-In-Conversation";
    _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) […]: Detected topic for text message in conversation. vibrationIdentifier = %{public}@.", buf, 0x20u);
LABEL_48:

    goto LABEL_53;
  }

LABEL_54:
  v33 = TLLogVibrationManagement();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromTLAlertType(a3);
    *buf = 138544642;
    v39 = self;
    v40 = 2114;
    v41 = v34;
    v42 = 2114;
    v43 = v10;
    v44 = 2114;
    v45 = v11;
    v46 = 1024;
    v47 = v6;
    v48 = 2114;
    v49 = v14;
    _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) correspondingToneIdentifier:(%{public}@) allowsNoneDefaultToAnyActualVibrationSubstitution:(%{BOOL}u). Returning: %{public}@.", buf, 0x3Au);
  }

  v35 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setCurrentVibrationIdentifier:(id)a3 forAlertType:(int64_t)a4 topic:(id)a5
{
  value = a3;
  v8 = a5;
  v9 = [v8 length];
  v10 = [(TLVibrationManager *)self _systemWideVibrationPatternPreferenceKeyForAlertType:a4];
  v11 = v10;
  if (v10 && v9)
  {
    v12 = [(__CFString *)v10 stringByAppendingString:@"PerAccount"];

    v11 = v12;
  }

  v13 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v14 = v13;
  if (v11 && v13)
  {
    v15 = *MEMORY[0x1E695E8B8];
    v16 = *MEMORY[0x1E695E8B0];
    if (v9)
    {
      v17 = CFPreferencesCopyValue(v11, v13, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 mutableCopy];
        CFRelease(v18);
      }

      else if ([value length])
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      else
      {
        v19 = 0;
      }

      if ([value length])
      {
        [v19 setObject:value forKey:v8];
      }

      else
      {
        [v19 removeObjectForKey:v8];
        if (![v19 count])
        {

          v19 = 0;
        }
      }

      CFPreferencesSetValue(v11, v19, v14, v15, v16);
    }

    else
    {
      CFPreferencesSetValue(v11, value, v13, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }

    [(TLVibrationManager *)self _didSetVibrationPreferenceSuccessfullyWithKey:v11 inDomain:+[TLPreferencesUtilities usingPreferencesOfKind:"preferencesDomain"], 1];
    if ((!value || ([value isEqualToString:@"<none>"] & 1) == 0) && +[TLAlert _currentOverridePolicyForType:](TLAlert, "_currentOverridePolicyForType:", a4) == 1)
    {
      [TLAlert _setCurrentOverridePolicy:0 forType:a4];
    }

    goto LABEL_24;
  }

  if (v13)
  {
LABEL_24:
    CFRelease(v14);
  }
}

- (id)currentVibrationNameForAlertType:(int64_t)a3
{
  v4 = [(TLVibrationManager *)self currentVibrationIdentifierForAlertType:a3];
  v5 = [(TLVibrationManager *)self nameOfVibrationWithIdentifier:v4];

  return v5;
}

- (id)currentVibrationPatternForAlertType:(int64_t)a3
{
  v5 = a3 == 1 || a3 == 28;
  v6 = [(TLVibrationManager *)self currentVibrationIdentifierForAlertType:?];
  v7 = [(TLVibrationManager *)self patternForVibrationWithIdentifier:v6 repeating:v5];

  return v7;
}

- (id)_defaultVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(TLVibrationManager *)self _areSynchronizedVibrationsAllowedForAlertType:a3 topic:v8];
  v11 = TLLogVibrationManagement();
  v12 = &off_1D93A5000;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertType(a3);
    *buf = 138544386;
    v38 = self;
    v39 = 2114;
    v40 = v13;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 1024;
    LODWORD(v46) = v10;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_defaultVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) correspondingToneIdentifier:(%{public}@). areSynchronizedVibrationsAllowed = %{BOOL}u.", buf, 0x30u);
  }

  if (v10)
  {
    v14 = v9;
    if (![(__CFString *)v9 length])
    {
      v15 = +[TLToneManager sharedToneManager];
      v14 = [v15 currentToneIdentifierForAlertType:a3 topic:v8];
    }

    v16 = [(TLVibrationManager *)self _synchronizedVibrationIdentifierForToneIdentifier:v14 targetDevice:0];
    v17 = TLLogVibrationManagement();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromTLAlertType(a3);
      *buf = 138544642;
      v38 = self;
      v39 = 2114;
      v40 = v18;
      v41 = 2114;
      v42 = v8;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v14;
      v47 = 2114;
      v48 = v16;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_defaultVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) correspondingToneIdentifier:(%{public}@). resolvedCorrespondingToneIdentifier = %{public}@; synchronizedVibrationIdentifier = %{public}@.", buf, 0x3Eu);
    }
  }

  else
  {
    v16 = 0;
    v14 = v9;
  }

  v19 = [0 length];
  v20 = 0;
  if (a3 && !v19)
  {
    if (a3 > 0x1D)
    {
      v20 = 0;
    }

    else
    {
      v20 = _TLVibrationManagerDefaultIdentifiers[a3 - 1];
      if (([(__CFString *)v20 isEqualToString:@"Built-In-System-Sound-ID-Vibration"]& 1) == 0 && ([(__CFString *)v20 isEqualToString:@"Corresponding-Synchronized-Vibration"]& 1) == 0)
      {
        v21 = [(TLVibrationManager *)self _patternForSystemVibrationWithIdentifier:v20 correspondingToneIdentifier:v14 targetDevice:0 shouldLogAssetPath:0];
        if (!v21)
        {
          v35 = [@"UserSelectable" stringByAppendingPathComponent:@"Classic"];
          v22 = [(TLVibrationManager *)self _systemVibrationIdentifiersForSubdirectory:v35];

          v36 = v22;
          if (([v22 containsObject:v20] & 1) == 0)
          {
            v23 = *(&_TLVibrationManagerClassicFallbackDefaultIdentifiers + a3 - 1);
            if ([(__CFString *)v23 length])
            {
              v24 = v23;

              v20 = v24;
            }
          }

          v12 = &off_1D93A5000;

          v21 = 0;
        }
      }

      if (![(__CFString *)v20 length])
      {
        v25 = @"<none>";

        v20 = v25;
      }
    }
  }

  if (![(__CFString *)v20 length])
  {
    v26 = @"<none>";

    v20 = v26;
  }

  if ([v16 length] && (-[__CFString isEqualToString:](v20, "isEqualToString:", @"<none>") & 1) == 0)
  {
    v27 = v16;

    v20 = v27;
  }

  if (a3 > 15)
  {
    if (a3 <= 19)
    {
      if (a3 != 16)
      {
        if (a3 == 17 && ([v8 isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"] & 1) != 0)
        {
          v28 = @"App-Notification-Critical-Alert";
          goto LABEL_73;
        }

        goto LABEL_74;
      }

      if ([v8 isEqualToString:@"TLAlertTopicSystemNotificationBackgroundMicUsage"])
      {
        v28 = @"Background-Mic-Usage";
        goto LABEL_73;
      }

      if ([v8 isEqualToString:@"TLAlertTopicSystemNotificationElevationAlert"])
      {
        goto LABEL_72;
      }

      v29 = TLAlertTopicSystemNotificationHeadphoneAudioExposure;
    }

    else
    {
      if (a3 != 20)
      {
        if (a3 == 22)
        {
          if ([v8 isEqualToString:@"TLAlertTopicSOSCountdownTick"])
          {
            v28 = @"SOS-Countdown-Tick";
          }

          else if ([v8 isEqualToString:@"TLAlertTopicSOSDialStart"])
          {
            v28 = @"SOS-Dial-Start";
          }

          else if ([v8 isEqualToString:@"TLAlertTopicSOSButtonChordingTimeout"])
          {
            v28 = @"SOS-Button-Chording-Timeout";
          }

          else
          {
            if (([v8 isEqualToString:@"TLAlertTopicSOSCountdownPreannounce"] & 1) == 0)
            {
              goto LABEL_74;
            }

            v28 = @"SOS-Countdown-Preannounce";
          }
        }

        else
        {
          if (a3 != 27)
          {
            goto LABEL_74;
          }

          if ([v8 isEqualToString:@"TLAlertTopicHandwashingReminder"])
          {
            v28 = @"Handwashing-Reminder";
          }

          else if ([v8 isEqualToString:@"TLAlertTopicHandwashingSessionStart"])
          {
            v28 = @"Handwashing-Session-Start";
          }

          else if ([v8 isEqualToString:@"TLAlertTopicHandwashingSessionProgressTapHaptics"])
          {
            v28 = @"Handwashing-Session-Progress-Tap-Haptics";
          }

          else if ([v8 isEqualToString:@"TLAlertTopicHandwashingSessionProgressVibeHaptics"])
          {
            v28 = @"Handwashing-Session-Progress-Vibe-Haptics";
          }

          else
          {
            if (([v8 isEqualToString:@"TLAlertTopicHandwashingSessionEnd"] & 1) == 0)
            {
              goto LABEL_74;
            }

            v28 = @"Handwashing-Session-End";
          }
        }

        goto LABEL_73;
      }

      v29 = TLAlertTopicPassbookNFCScanComplete;
    }

    goto LABEL_65;
  }

  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 == 2 && (([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicTextMessageAcknowledgmentThumbsUp") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicTextMessageAcknowledgmentThumbsDown") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicTextMessageAcknowledgmentHaHa") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicTextMessageAcknowledgmentExclamation") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicTextMessageAcknowledgmentQuestionMark") & 1) != 0))
      {
        v28 = @"Text-Message-Acknowledgement";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if ([v8 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"])
    {
      goto LABEL_72;
    }

    v29 = TLAlertTopicIncomingCallFaceTimeParticipantJoined;
LABEL_65:
    if ([v8 isEqualToString:*v29])
    {
      goto LABEL_72;
    }

    goto LABEL_74;
  }

  if (a3 != 5)
  {
    if (a3 != 9)
    {
      if (a3 != 13)
      {
        goto LABEL_74;
      }

      if (([v8 isEqualToString:@"TLAlertTopicAlarmGoToSleep"] & 1) == 0)
      {
        if (([v8 isEqualToString:@"TLAlertTopicAlarmWakeUp"] & 1) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_68;
      }

LABEL_72:
      v28 = @"Built-In-System-Sound-ID-Vibration";
      goto LABEL_73;
    }

    if ([v8 isEqualToString:@"TLAlertTopicPhotosNotificationSharingPost"])
    {
LABEL_68:
      v28 = @"<none>";
      goto LABEL_73;
    }

    if (([v8 isEqualToString:@"TLAlertTopicPhotosNotificationMemory"] & 1) == 0)
    {
      goto LABEL_74;
    }

    v28 = @"PhotosMemoriesNotification";
LABEL_73:

    v20 = v28;
    goto LABEL_74;
  }

  if ([v8 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.mobilemail.bulletin-subsection.ThreadNotify"))
  {
    v28 = @"Quick";
    goto LABEL_73;
  }

LABEL_74:
  v30 = TLLogVibrationManagement();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = NSStringFromTLAlertType(a3);
    *buf = *(v12 + 329);
    v38 = self;
    v39 = 2114;
    v40 = v31;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 2114;
    v46 = v20;
    _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: -_defaultVibrationIdentifierForAlertType:(%{public}@) topic:(%{public}@) correspondingToneIdentifier:(%{public}@). Returning: %{public}@.", buf, 0x34u);
  }

  v32 = v20;
  v33 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)defaultVibrationNameForAlertType:(int64_t)a3
{
  v4 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:a3];
  v5 = [(TLVibrationManager *)self nameOfVibrationWithIdentifier:v4];

  return v5;
}

- (id)defaultVibrationPatternForAlertType:(int64_t)a3
{
  v4 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:a3];
  v5 = [(TLVibrationManager *)self _patternForSystemVibrationWithIdentifier:v4 correspondingToneIdentifier:0 targetDevice:0 shouldLogAssetPath:1];

  return v5;
}

- (id)_defaultPreferablyNonSilentVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4 correspondingToneIdentifier:(id)a5
{
  v7 = [(TLVibrationManager *)self _defaultVibrationIdentifierForAlertType:a3 topic:a4 correspondingToneIdentifier:a5];
  v8 = [v7 isEqualToString:@"<none>"];
  if (a3 == 5 && v8)
  {
    v9 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:5 topic:@"com.apple.mobilemail.bulletin-subsection.VIP"];

    v7 = v9;
  }

  return v7;
}

- (BOOL)hasSpecificDefaultVibrationIdentifierForAlertType:(int64_t)a3 topic:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v7 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:a3];
    v8 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:a3 topic:v6];
    if ([v8 isEqualToString:v7])
    {
      LOBYTE(v9) = 0;
    }

    else if ([v7 hasPrefix:@"synchronizedvibration:"])
    {
      v9 = [v8 hasPrefix:@"synchronizedvibration:"] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)noneVibrationPattern
{
  v2 = +[TLVibrationPattern noneVibrationPattern];
  v3 = [v2 propertyListRepresentation];

  return v3;
}

- (id)_completeSystemVibrationsSubdirectoryForSubdirectory:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__TLVibrationManager__completeSystemVibrationsSubdirectoryForSubdirectory___block_invoke;
  v8[3] = &unk_1E85789C8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __75__TLVibrationManager__completeSystemVibrationsSubdirectoryForSubdirectory___block_invoke(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [@"Vibrations" stringByAppendingPathComponent:a1[5]];
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 resourcePath];

    v10 = [v7 deviceCodeName];
    v11 = v10;
    if (!*(*(a1[6] + 8) + 40) && [v10 length])
    {
      v12 = [v5 stringByAppendingPathComponent:v11];
      LOBYTE(v37) = 0;
      v13 = [v9 stringByAppendingPathComponent:v12];
      v14 = [v6 fileExistsAtPath:v13 isDirectory:&v37];

      if (v14 && v37 == 1)
      {
        v15 = [v12 copy];
        v16 = *(a1[6] + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }
    }

    v18 = *(*(a1[6] + 8) + 40);
    if (v18)
    {
      goto LABEL_17;
    }

    v19 = [v7 simplifiedDeviceCodeName];
    if ([v19 length] && (objc_msgSend(v11, "isEqualToString:", v19) & 1) == 0)
    {
      v20 = [v5 stringByAppendingPathComponent:v19];
      LOBYTE(v37) = 0;
      v21 = [v9 stringByAppendingPathComponent:v20];
      v22 = [v6 fileExistsAtPath:v21 isDirectory:&v37];

      if (v22 && v37 == 1)
      {
        v23 = [v20 copy];
        v24 = *(a1[6] + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;
      }
    }

    v18 = *(*(a1[6] + 8) + 40);
    if (v18 || (v26 = [v5 copy], v27 = *(a1[6] + 8), v28 = *(v27 + 40), *(v27 + 40) = v26, v28, (v18 = *(*(a1[6] + 8) + 40)) != 0))
    {
LABEL_17:
      v29 = *(a1[4] + 32);
      if (!v29)
      {
        v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v31 = a1[4];
        v32 = *(v31 + 32);
        *(v31 + 32) = v30;

        v29 = *(a1[4] + 32);
        v18 = *(*(a1[6] + 8) + 40);
      }

      [v29 setObject:v18 forKey:a1[5]];
      v33 = TLLogVibrationManagement();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = a1[5];
        v35 = [v9 stringByAppendingPathComponent:*(*(a1[6] + 8) + 40)];
        v37 = 138543618;
        v38 = v34;
        v39 = 2114;
        v40 = v35;
        _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "Looking up system vibrations for subdirectory %{public}@ at absolute path: %{public}@.", &v37, 0x16u);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)_systemVibrationIdentifiersForSubdirectory:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__TLVibrationManager__systemVibrationIdentifiersForSubdirectory___block_invoke;
  v8[3] = &unk_1E85789C8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __65__TLVibrationManager__systemVibrationIdentifiersForSubdirectory___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [*(a1 + 32) _completeSystemVibrationsSubdirectoryForSubdirectory:*(a1 + 40)];
    v7 = [v5 pathsForResourcesOfType:@"plist" inDirectory:v6];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = v5;
      v10 = 0;
      v11 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v24 + 1) + 8 * i) lastPathComponent];
          v14 = [v13 stringByDeletingPathExtension];

          if ([v14 length])
          {
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v10 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
      if (v10)
      {
        v15 = [v10 copy];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = *(*(a1 + 32) + 24);
        v5 = v23;
        if (!v18)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v20 = *(a1 + 32);
          v21 = *(v20 + 24);
          *(v20 + 24) = v19;

          v18 = *(*(a1 + 32) + 24);
        }

        [v18 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
      }

      else
      {
        v5 = v23;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_patternForSystemVibrationWithIdentifier:(id)a3 correspondingToneIdentifier:(id)a4 targetDevice:(int64_t)a5 shouldLogAssetPath:(BOOL)a6
{
  v6 = a6;
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (![v10 isEqualToString:@"<none>"])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __123__TLVibrationManager__patternForSystemVibrationWithIdentifier_correspondingToneIdentifier_targetDevice_shouldLogAssetPath___block_invoke;
    v46[3] = &unk_1E8579560;
    v13 = v14;
    v47 = v13;
    v48 = self;
    v50 = v6;
    v15 = v10;
    v49 = v15;
    v16 = MEMORY[0x1DA730160](v46);
    v17 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v18 = [v17 hasSynchronizedVibrationsCapability];

    if (!v18)
    {
      goto LABEL_30;
    }

    if (![v15 hasPrefix:@"synchronizedvibration:"])
    {
      goto LABEL_45;
    }

    v19 = [v15 substringFromIndex:{objc_msgSend(@"synchronizedvibration:", "length")}];
    v20 = [v19 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

    v21 = (v16)[2](v16, v20, @"Synchronized");
    v12 = v21;
    if (a5 == 1 && !v21)
    {
      v22 = TLLogVibrationManagement();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _TLAlertTargetDeviceGetHumanReadableDescription(1uLL);
        *buf = 138543618;
        v52 = v15;
        v53 = 2114;
        v54 = v23;
        _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "Making assumption that %{public}@ is a valid synchronized vibration for target device: %{public}@.", buf, 0x16u);
      }

      v24 = [TLVibrationPattern simpleVibrationPatternWithVibrationDuration:0.1 pauseDuration:0.1];
      v12 = [v24 propertyListRepresentation];
    }

    if (!_os_feature_enabled_impl() || v12)
    {
      v25 = v20;
    }

    else
    {
      v25 = [v20 stringByAppendingString:@"-EncoreInfinitum"];

      v26 = (v16)[2](v16, v25, @"Synchronized");
      v12 = v26;
      if (v11 && !v26)
      {
        v27 = +[TLToneManager sharedToneManager];
        v28 = [v27 filePathForToneIdentifier:v11];

        v29 = [v28 lastPathComponent];
        v30 = [v29 containsString:@"-EncoreInfinitum"];

        if (v30)
        {
          v31 = [TLVibrationPattern simpleVibrationPatternWithVibrationDuration:0.1 pauseDuration:0.1];
          v12 = [v31 propertyListRepresentation];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v32 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v33 = [v32 supportsReflectionRemixes];

    if (v33)
    {
      if (v12)
      {
LABEL_35:

        goto LABEL_36;
      }

      v34 = [v25 stringByAppendingString:@"-EncoreRemix"];

      v35 = (v16)[2](v16, v34, @"Synchronized");
      v12 = v35;
      if (v11 && !v35)
      {
        v36 = +[TLToneManager sharedToneManager];
        v37 = [v36 filePathForToneIdentifier:v11];

        v38 = [v37 lastPathComponent];
        v39 = [v38 containsString:@"-EncoreRemix"];

        if (v39)
        {
          v40 = [TLVibrationPattern simpleVibrationPatternWithVibrationDuration:0.1 pauseDuration:0.1];
          v12 = [v40 propertyListRepresentation];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v34 = v25;
    }

    if (!v12)
    {
LABEL_45:
      v41 = [@"UserSelectable" stringByAppendingPathComponent:@"Modern"];
      v12 = (v16)[2](v16, v15, v41);

      if (!v12)
      {
LABEL_30:
        v42 = [@"UserSelectable" stringByAppendingPathComponent:@"Classic"];
        v12 = (v16)[2](v16, v15, v42);

        if (!v12)
        {
          if (v18)
          {
            v43 = @"Modern";
          }

          else
          {
            v43 = @"Classic";
          }

          v25 = [@"Other" stringByAppendingPathComponent:v43];
          v12 = (v16)[2](v16, v15, v25);
          goto LABEL_35;
        }
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v12 = [(TLVibrationManager *)self noneVibrationPattern];
  if (!v6)
  {
    goto LABEL_38;
  }

  v13 = TLLogVibrationManagement();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v10;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "Using none vibration pattern for vibration identifier %{public}@", buf, 0xCu);
  }

LABEL_37:

LABEL_38:
  v44 = *MEMORY[0x1E69E9840];

  return v12;
}

id __123__TLVibrationManager__patternForSystemVibrationWithIdentifier_correspondingToneIdentifier_targetDevice_shouldLogAssetPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v6 _completeSystemVibrationsSubdirectoryForSubdirectory:a3];
  v9 = [v5 URLForResource:v7 withExtension:@"plist" subdirectory:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v9];
    if (v10 && *(a1 + 56) == 1)
    {
      v11 = TLLogVibrationManagement();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = [v9 path];
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "Vibration pattern for identifier %{public}@ found at path: %{public}@.", &v16, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_localizedNameForVibrationWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"<none>"])
  {
    v4 = @"VIBRATION_PICKER_NONE";
  }

  else if ([v3 hasPrefix:@"synchronizedvibration:"])
  {
    v4 = @"SYNCHRONIZED_VIBRATION_NAME";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"vibration:", v3];
  }

  v5 = TLLocalizedString(v4);
  if ([v5 isEqualToString:v4])
  {

    v5 = 0;
  }

  return v5;
}

- (id)_nameOfVibrationWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__TLVibrationManager__nameOfVibrationWithIdentifier___block_invoke;
  v8[3] = &unk_1E8578AE0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __53__TLVibrationManager__nameOfVibrationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasPrefix:@"usergeneratedvibration:"];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v5 = [v3 _localizedNameForVibrationWithIdentifier:*(a1 + 32)];
    v11 = [v5 copy];
    v12 = *(*(a1 + 48) + 8);
    v7 = *(v12 + 40);
    *(v12 + 40) = v11;
    goto LABEL_5;
  }

  v4 = [v3 _userGeneratedVibrationPatterns];
  v5 = [v4 objectForKey:*(a1 + 32)];

  v6 = [v5 objectForKey:@"Pattern"];

  if (v6)
  {
    v7 = [v5 objectForKey:@"Name"];
    v8 = [v7 copy];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

LABEL_5:
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if ([*(a1 + 32) length])
    {
      v13 = [*(a1 + 40) patternForVibrationWithIdentifier:*(a1 + 32)];

      if (v13)
      {
        v14 = [*(a1 + 32) copy];
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

- (id)nameOfVibrationWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TLVibrationManager *)self _nameOfVibrationWithIdentifier:v4];
    if (!v5)
    {
      v5 = TLLocalizedString(@"VIBRATION_UNKNOWN_NAME");
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)patternForVibrationWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__TLVibrationManager_patternForVibrationWithIdentifier___block_invoke;
  v8[3] = &unk_1E8579588;
  v5 = v4;
  v10 = self;
  v11 = &v12;
  v9 = v5;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __56__TLVibrationManager_patternForVibrationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasPrefix:@"usergeneratedvibration:"];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _userGeneratedVibrationPatterns];
    v4 = [objc_claimAutoreleasedReturnValue() objectForKey:*(a1 + 32)];
    v5 = [v4 objectForKey:@"Pattern"];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = [v3 _patternForSystemVibrationWithIdentifier:*(a1 + 32) correspondingToneIdentifier:0 targetDevice:0 shouldLogAssetPath:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)patternForVibrationWithIdentifier:(id)a3 repeating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TLVibrationManager *)self patternForVibrationWithIdentifier:v6];
  if (v4 && ([v6 isEqualToString:@"<none>"] & 1) == 0)
  {
    v8 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:v7];
    v9 = [(TLVibrationPattern *)v8 _artificiallyRepeatingPropertyListRepresentation];

    v7 = v9;
  }

  return v7;
}

- (id)allUserSelectableSystemVibrationIdentifiers
{
  v3 = [@"UserSelectable" stringByAppendingPathComponent:@"Classic"];
  v4 = [(TLVibrationManager *)self _systemVibrationIdentifiersForSubdirectory:v3];
  v5 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v6 = [v5 hasSynchronizedVibrationsCapability];

  if (v6)
  {
    v7 = [@"UserSelectable" stringByAppendingPathComponent:@"Modern"];
    v8 = [(TLVibrationManager *)self _systemVibrationIdentifiersForSubdirectory:v7];
    if (v8)
    {
      v9 = [v4 setByAddingObjectsFromSet:v8];

      v4 = v9;
    }
  }

  v10 = [v4 allObjects];

  return v10;
}

- (id)allUserGeneratedVibrationIdentifiers
{
  v2 = [(TLVibrationManager *)self _userGeneratedVibrationPatterns];
  v3 = [v2 allKeys];

  return v3;
}

- (BOOL)vibrationWithIdentifierIsValid:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TLVibrationManager *)self _nameOfVibrationWithIdentifier:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_systemWideVibrationPatternPreferenceKeyForAlertType:(int64_t)a3
{
  if ((a3 - 1) > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = _TLVibrationManagerSystemWideVibrationPatternPreferenceKeys[a3 - 1];
  }

  return v4;
}

- (BOOL)_vibrationIsSettableForAlertType:(int64_t)a3
{
  v3 = [(TLVibrationManager *)self _systemWideVibrationPatternPreferenceKeyForAlertType:a3];
  v4 = v3 != 0;

  return v4;
}

+ (void)_handleVibrationPreferencesDidChangeNotificationForPreferencesKinds:(unint64_t)a3 atInitiativeOfVibrationManager:(id)a4
{
  v4 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (_TLVibrationManagerShouldIgnoreNextVibrationPreferencesDidChangeNotification == 1)
  {
    _TLVibrationManagerShouldIgnoreNextVibrationPreferencesDidChangeNotification = 0;
    v7 = TLLogVibrationManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = a1;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…: Ignoring notification.", buf, 0xCu);
    }
  }

  else
  {
    v8 = TLLogVibrationManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = a1;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…", buf, 0xCu);
    }

    if (v4)
    {
      v9 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
      v10 = v9;
      if (v9)
      {
        CFPreferencesSynchronize(v9, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
        v11 = TLLogVibrationManagement();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…: Synchronized CFPreferences domain %{public}@.", buf, 0x16u);
        }

        CFRelease(v10);
      }
    }

    if ((v4 & 2) != 0)
    {
      if (+[TLPreferencesUtilities canAccessNanoRegistry]&& (NPSDomainAccessorClass_0 = getNPSDomainAccessorClass_0()) != 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v37 = __Block_byref_object_copy__1;
        v38 = __Block_byref_object_dispose__1;
        v39 = 0;
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __121__TLVibrationManager__handleVibrationPreferencesDidChangeNotificationForPreferencesKinds_atInitiativeOfVibrationManager___block_invoke;
        v29 = &unk_1E8578950;
        v31 = buf;
        v30 = v6;
        [v30 _performBlockInAccessQueue:&v26];
        v13 = *(*&buf[8] + 40);
        if (!v13)
        {
          v14 = [NPSDomainAccessorClass_0 alloc];
          v15 = [TLPreferencesUtilities perWatchPreferencesDomain:v26];
          v16 = [v14 initWithDomain:v15];
          v17 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v16;

          v18 = TLLogVibrationManagement();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(*&buf[8] + 40);
            *v32 = 138543618;
            v33 = a1;
            v34 = 2114;
            v35 = v19;
            _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…: Instantiated domain accessor %{public}@.", v32, 0x16u);
          }

          v13 = *(*&buf[8] + 40);
        }

        v20 = [v13 synchronize];
        v21 = TLLogVibrationManagement();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(*&buf[8] + 40);
          *v32 = 138543618;
          v33 = a1;
          v34 = 2114;
          v35 = v22;
          _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…: Synchronized domain accessor %{public}@.", v32, 0x16u);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v23 = TLLogVibrationManagement();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = +[TLPreferencesUtilities canAccessNanoRegistry];
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 1024;
          *&buf[14] = v24;
          _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleVibrationPreferencesDidChangeNotification…: Skipping synchronizing the domain accessor. canAccessNanoRegistry = %{BOOL}u.", buf, 0x12u);
        }
      }
    }

    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, &__block_literal_global_249);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __121__TLVibrationManager__handleVibrationPreferencesDidChangeNotificationForPreferencesKinds_atInitiativeOfVibrationManager___block_invoke_247()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"TLVibrationPreferencesDidChangeNotification" object:0];
}

+ (void)_handleVibrateOnRingOrSilentDidChangeNotification
{
  v2 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = v2;
    CFPreferencesSynchronize(v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

    CFRelease(v3);
  }
}

- (void)_didSetVibrationPreferenceSuccessfullyWithKey:(id)a3 inDomain:(id)a4 usingPreferencesOfKind:(unint64_t)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = TLLogVibrationManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v25 = v9;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetVibrationPreferenceSuccessfullyWithKey:(%{public}@) inDomain:(%{public}@)…", buf, 0x20u);
  }

  [objc_opt_class() _handleVibrationPreferencesDidChangeNotificationForPreferencesKinds:a5 atInitiativeOfVibrationManager:self];
  _TLVibrationManagerShouldIgnoreNextVibrationPreferencesDidChangeNotification = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLVibrationPreferencesDidChangeNotification", 0, 0, 1u);
  if (a5)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v12 = getNPSManagerClass_softClass_0;
    v23 = getNPSManagerClass_softClass_0;
    if (!getNPSManagerClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNPSManagerClass_block_invoke_0;
      v25 = &unk_1E8578D30;
      v26[0] = &v20;
      __getNPSManagerClass_block_invoke_0(buf);
      v12 = v21[3];
    }

    v13 = v12;
    _Block_object_dispose(&v20, 8);
    if (v12)
    {
      v14 = objc_alloc_init(v12);
      v15 = TLLogVibrationManagement();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetVibrationPreferenceSuccessfully…: Instantiated preferences sync manager %{public}@.", buf, 0x16u);
      }

      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{v8, 0}];
      if (a5)
      {
        [v14 synchronizeUserDefaultsDomain:v9 keys:v16];
        v17 = TLLogVibrationManagement();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v25 = v14;
          LOWORD(v26[0]) = 2114;
          *(v26 + 2) = v16;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetVibrationPreferenceSuccessfully…: Did synchronize user defaults domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }

      if ((a5 & 2) != 0)
      {
        [v14 synchronizeNanoDomain:v9 keys:v16];
        v18 = TLLogVibrationManagement();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v25 = v14;
          LOWORD(v26[0]) = 2114;
          *(v26 + 2) = v16;
          _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetVibrationPreferenceSuccessfully…: Did synchronize nano domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_areSynchronizedVibrationsAllowedForAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  if (![v6 hasSynchronizedVibrationsCapability])
  {
    goto LABEL_6;
  }

  v7 = [TLAlertController _playbackBackEndForAlertType:a3 topic:v5];
  if ((v7 - 1) >= 2)
  {
    if (!v7)
    {
      v8 = [v6 hasSynchronizedEmbeddedVibrationsCapability];
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (id)_synchronizedVibrationIdentifierForToneIdentifier:(id)a3 targetDevice:(int64_t)a4
{
  v5 = a3;
  v6 = +[TLToneManager sharedToneManager];
  v7 = [v6 _aliasForToneIdentifier:v5];

  v8 = [v7 isEqualToString:@"<default>"];
  v9 = [v7 hasPrefix:@"system:"];
  v10 = [v7 hasPrefix:@"texttone:"];
  v11 = [v7 hasPrefix:@"alarmWakeUp:"];
  v12 = v11;
  if ((v8 & 1) != 0 || (v9 & 1) != 0 || (v10 & 1) != 0 || v11)
  {
    v13 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v14 = [v13 hasSynchronizedVibrationsCapability];

    if (v14)
    {
      v15 = [(NSDictionary *)self->_synchronizedVibrationPatternFromToneIdentifierMapping objectForKey:v7];
      if (v15)
      {
        v16 = v15;
        v17 = v25;
LABEL_8:
        v18 = [@"synchronizedvibration:" stringByAppendingString:v16];
        v19 = [(TLVibrationManager *)self _patternForSystemVibrationWithIdentifier:v18 correspondingToneIdentifier:v5 targetDevice:v17 shouldLogAssetPath:0];
        if ([v19 count])
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_20;
      }

      if ((v9 | v10 | v12))
      {
        v21 = v10 ? @"texttone:" : @"alarmWakeUp:";
        v22 = v9 ? @"system:" : v21;
        v23 = [v7 substringFromIndex:{-[__CFString length](v22, "length")}];
        v17 = v25;
        if (v23)
        {
          v16 = v23;
          goto LABEL_8;
        }
      }
    }
  }

  v20 = 0;
LABEL_20:

  return v20;
}

- (id)_sanitizeVibrationIdentifier:(id)a3 forAlertType:(int64_t)a4 topic:(id)a5 targetDevice:(int64_t)a6 correspondingToneIdentifier:(id)a7 useDefaultVibrationAsFallback:(BOOL)a8 allowsNoneDefaultToAnyActualVibrationSubstitution:(BOOL)a9 didFallback:(BOOL *)a10
{
  v10 = a8;
  v16 = a9;
  v17 = a3;
  v18 = a5;
  v19 = a7;
  if ([v17 length])
  {
    if ([v17 hasPrefix:@"synchronizedvibration:"])
    {
      v20 = v19;
      if (![v20 length])
      {
        v21 = +[TLToneManager sharedToneManager];
        v27 = [v21 currentToneIdentifierForAlertType:a4 topic:v18];

        v16 = a9;
        v20 = v27;
      }

      v22 = [(TLVibrationManager *)self _synchronizedVibrationIdentifierForToneIdentifier:v20 targetDevice:a6, v27];

      v23 = 1;
    }

    else
    {
      v22 = v17;
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  if ([(__CFString *)v22 length])
  {
    v24 = 0;
  }

  else
  {
    if (v10)
    {
      [(TLVibrationManager *)self _defaultVibrationIdentifierForAlertType:a4 topic:v18 correspondingToneIdentifier:v19];
    }

    else
    {
      [(TLVibrationManager *)self _currentVibrationIdentifierForAlertType:a4 topic:v18 correspondingToneIdentifier:v19 allowsNoneDefaultToAnyActualVibrationSubstitution:0];
    }
    v25 = ;

    if ((v23 & v16) == 1 && [(__CFString *)v25 isEqualToString:@"<none>"])
    {

      v24 = 0;
      v22 = @"Quick";
    }

    else
    {
      v24 = 1;
      v22 = v25;
    }
  }

  if (a10)
  {
    *a10 = v24;
  }

  return v22;
}

- (void)_handleUserGeneratedVibrationsDidChangeNotification
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __73__TLVibrationManager__handleUserGeneratedVibrationsDidChangeNotification__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v2];
}

- (id)_userGeneratedVibrationPatterns
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__TLVibrationManager__userGeneratedVibrationPatterns__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLVibrationManager *)self _performBlockInAccessQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __53__TLVibrationManager__userGeneratedVibrationPatterns__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 32);
  if ((v3[65] & 1) != 0 || !v2)
  {
    if (v3[65] && v3[64] == 1)
    {

      *(*(a1 + 32) + 64) = 0;
      v3 = *(a1 + 32);
LABEL_7:
      if ([v3 _isUnitTestingModeEnabled])
      {
        v2 = [*(a1 + 32) _retrieveUserGeneratedVibrationPatternsUsingService];
      }

      else
      {
        v4 = MEMORY[0x1E695DF20];
        v5 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
        v2 = [v4 dictionaryWithContentsOfURL:v5];
      }

      objc_storeStrong((*(a1 + 32) + 40), v2);
      goto LABEL_11;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v2;
}

- (void)_didChangeUserGeneratedVibrationPatterns
{
  if ([(TLVibrationManager *)self _isUnitTestingModeEnabled])
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, @"TLVibrationManagerUserGeneratedVibrationsDidChange", 0, 0, 1u);
  }

  else
  {

    [(TLVibrationManager *)self _handleUserGeneratedVibrationsDidChangeNotification];
  }
}

- (BOOL)_saveUserGeneratedVibrationPatterns:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(TLVibrationManager *)self _setUserGeneratedVibrationPatternsUsingService:v6 error:a4])
  {
    [(TLVibrationManager *)self _didChangeUserGeneratedVibrationPatterns];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)addUserGeneratedVibrationPattern:(id)a3 name:(id)a4 error:(id *)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];

    if (v13)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"usergeneratedvibration:", v13];
      if (v11)
      {
        v14 = [(TLVibrationManager *)self _userGeneratedVibrationPatterns];
        v15 = [v8 objectForKey:v11];

        if (v15)
        {

          v11 = 0;
        }

        else
        {
          v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v14];
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v20[0] = @"Name";
          v20[1] = @"Pattern";
          v21[0] = v10;
          v21[1] = v8;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
          [v16 setObject:v17 forKey:v11];
          if (![(TLVibrationManager *)self _saveUserGeneratedVibrationPatterns:v16 error:a5])
          {

            v11 = 0;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)setName:(id)a3 forUserGeneratedVibrationWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TLVibrationManager *)self _userGeneratedVibrationPatterns];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:v9];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
      [v13 setObject:v8 forKey:@"Name"];
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
      [v14 setObject:v13 forKey:v9];
      v15 = [(TLVibrationManager *)self _saveUserGeneratedVibrationPatterns:v14 error:a5];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)deleteUserGeneratedVibrationPatternWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TLVibrationManager *)self _userGeneratedVibrationPatterns];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
    [v9 removeObjectForKey:v6];
    v10 = [(TLVibrationManager *)self _saveUserGeneratedVibrationPatterns:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_numberOfUserGeneratedVibrations
{
  v2 = [(TLVibrationManager *)self _userGeneratedVibrationPatterns];
  v3 = [v2 count];

  return v3;
}

- (BOOL)_removeAllUserGeneratedVibrationsWithError:(id *)a3
{
  v4 = [(TLVibrationManager *)self _removeAllUserGeneratedVibrationPatternsUsingServiceWithError:a3];
  if (v4)
  {
    [(TLVibrationManager *)self _didChangeUserGeneratedVibrationPatterns];
  }

  return v4;
}

- (id)_newServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.tonelibraryd"];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54E48B0];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (id)_retrieveUserGeneratedVibrationPatternsUsingService
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v2 = [(TLVibrationManager *)self _newServiceConnection];
  v3 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke;
  v12[3] = &unk_1E8578B08;
  v4 = v3;
  v13 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_324;
  v9[3] = &unk_1E8578B30;
  v11 = &v14;
  v6 = v4;
  v10 = v6;
  [v5 retrieveUserGeneratedVibrationPatternsWithCompletionHandler:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  [v2 invalidate];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TLLogVibrationManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_cold_1(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_324(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (v7)
  {
    v9 = TLLogVibrationManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_324_cold_1(v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_setUserGeneratedVibrationPatternsUsingService:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v7 = [(TLVibrationManager *)self _newServiceConnection];
  v8 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke;
  v18[3] = &unk_1E85795B0;
  v20 = &v21;
  v9 = v8;
  v19 = v9;
  v10 = [v7 remoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_326;
  v14[3] = &unk_1E85795D8;
  v16 = &v27;
  v17 = &v21;
  v11 = v9;
  v15 = v11;
  [v10 setUserGeneratedVibrationPatterns:v6 withCompletionHandler:v14];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  [v7 invalidate];
  if (a4)
  {
    *a4 = v22[5];
  }

  v12 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

void __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TLLogVibrationManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_326(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = TLLogVibrationManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_326_cold_1(v6);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_removeAllUserGeneratedVibrationPatternsUsingServiceWithError:(id *)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v4 = [(TLVibrationManager *)self _newServiceConnection];
  v5 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke;
  v15[3] = &unk_1E85795B0;
  v17 = &v18;
  v6 = v5;
  v16 = v6;
  v7 = [v4 remoteObjectProxyWithErrorHandler:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_328;
  v11[3] = &unk_1E85795D8;
  v13 = &v24;
  v14 = &v18;
  v8 = v6;
  v12 = v8;
  [v7 removeAllUserGeneratedVibrationPatternsWithCompletionHandler:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  [v4 invalidate];
  if (a3)
  {
    *a3 = v19[5];
  }

  v9 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v9;
}

void __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TLLogVibrationManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_328(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = TLLogVibrationManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_328_cold_1(v6);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_BOOLeanPreferenceForKey:(__CFString *)a3 defaultValue:(BOOL)a4
{
  v6 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  if (v6)
  {
    v7 = v6;
    v8 = CFPreferencesCopyValue(a3, v6, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFBooleanGetTypeID())
      {
        a4 = CFBooleanGetValue(v9) != 0;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  return a4;
}

- (BOOL)shouldVibrateForCurrentRingerSwitchState
{
  v3 = +[TLSilentModeController sharedSilentModeController];
  v4 = [v3 silentModeStatus];

  if (v4 == 1)
  {

    return [(TLVibrationManager *)self shouldVibrateOnSilent];
  }

  else
  {

    return [(TLVibrationManager *)self shouldVibrateOnRing];
  }
}

- (BOOL)_migrateLegacySettings
{
  v3 = [(TLVibrationManager *)self _storedSystemVibrationDataMigrationVersion];
  if (!v3)
  {
    v4 = objc_alloc_init(TLToneManager);
    for (i = 0; i != 10; ++i)
    {
      v6 = qword_1D93A5AB0[i];
      v7 = [(TLToneManager *)v4 currentToneIdentifierForAlertType:v6];
      if ([v7 isEqualToString:@"<none>"])
      {
        v8 = [(TLVibrationManager *)self _currentVibrationIdentifierForAlertType:v6 topic:0];
        if (v8)
        {
        }

        else
        {
          v9 = [(TLVibrationManager *)self defaultVibrationIdentifierForAlertType:v6];
          v10 = [v9 isEqualToString:@"<none>"];

          if ((v10 & 1) == 0)
          {
            [(TLVibrationManager *)self setCurrentVibrationIdentifier:@"<none>" forAlertType:v6];
          }
        }
      }
    }

    v3 = 0;
  }

  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    if (v11)
    {
      v12 = v11;
      [TLPreferencesUtilities migratePerTopicPreferencesInDomain:v11 withRegularPreferenceKeys:_TLVibrationManagerSystemWideVibrationPatternPreferenceKeys regularPreferenceKeysCount:29 intoSinglePerTopicPreferenceWithSuffix:@"PerAccount" usingPreferencesScope:1];
      CFRelease(v12);
    }
  }

  v13 = [(TLVibrationManager *)self _currentVibrationIdentifierForAlertType:5 topic:0];
  if ([v13 isEqualToString:@"<none>"])
  {
    [(TLVibrationManager *)self setCurrentVibrationIdentifier:0 forAlertType:5];
  }

LABEL_17:
  [(TLVibrationManager *)self _makeSystemVibrationDataMigrationVersionCurrentIfNecessary];
  return 1;
}

- (unint64_t)_storedSystemVibrationDataMigrationVersion
{
  v2 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = CFPreferencesCopyValue(@"SystemVibrationDataMigrationVersion", v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFRelease(v2);
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 == CFNumberGetTypeID())
      {
        v2 = [v3 unsignedIntegerValue];
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (void)_makeSystemVibrationDataMigrationVersionCurrentIfNecessary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TLVibrationManager__makeSystemVibrationDataMigrationVersionCurrentIfNecessary__block_invoke;
  block[3] = &unk_1E85789A0;
  block[4] = self;
  if (_makeSystemVibrationDataMigrationVersionCurrentIfNecessary__TLVibrationManagerMakeSystemVibrationDataMigrationVersionCurrentOnceToken != -1)
  {
    dispatch_once(&_makeSystemVibrationDataMigrationVersionCurrentIfNecessary__TLVibrationManagerMakeSystemVibrationDataMigrationVersionCurrentOnceToken, block);
  }
}

void __80__TLVibrationManager__makeSystemVibrationDataMigrationVersionCurrentIfNecessary__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _storedSystemVibrationDataMigrationVersion] <= 2)
  {
    v1 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    if (v1)
    {
      v2 = v1;
      v3 = *MEMORY[0x1E695E8B8];
      v4 = *MEMORY[0x1E695E8B0];
      CFPreferencesSetValue(@"SystemVibrationDataMigrationVersion", &unk_1F54D8710, v1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      CFPreferencesSynchronize(v2, v3, v4);

      CFRelease(v2);
    }
  }
}

- (id)_currentVibrationWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)a3 topic:(id)a4
{
  v6 = a4;
  v7 = [(TLVibrationManager *)self _systemWideVibrationPatternPreferenceKeyForAlertType:a3];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"VibrationIdentifier" withString:@"Vibration"];

  v9 = [v8 stringByAppendingString:@"WatchAlertPolicy"];

  v10 = [v6 length];
  if (v10)
  {
    v11 = [v9 stringByAppendingString:@"PerAccount"];

    v9 = v11;
  }

  return v9;
}

- (int64_t)_currentVibrationWatchAlertPolicyForAlertType:(int64_t)a3 topic:(id)a4 didFindPersistedWatchAlertPolicy:(BOOL *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ((a3 - 13) >= 2)
  {
    if (a3 == 17)
    {
      v10 = +[TLCapabilitiesManager sharedCapabilitiesManager];
      v11 = [v10 supportsNanoEncore];

      v9 = v11 ^ 1u;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v12 = [v8 length];
  v13 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v14 = [(TLVibrationManager *)self _currentVibrationWatchAlertPolicyPreferenceKeyForAlertType:a3 topic:v8];
  if (!v14 || (NPSDomainAccessorClass_0 = getNPSDomainAccessorClass_0()) == 0)
  {
    isKindOfClass = 0;
LABEL_21:
    if (v12)
    {
      v9 = [(TLVibrationManager *)self _currentVibrationWatchAlertPolicyForAlertType:a3 topic:0 didFindPersistedWatchAlertPolicy:0];
    }

    goto LABEL_23;
  }

  v16 = [[NPSDomainAccessorClass_0 alloc] initWithDomain:v13];
  v17 = TLLogVibrationManagement();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v16;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationWatchAlertPolicy…: Instantiated domain accessor %{public}@.", buf, 0x16u);
  }

  v24 = v16;
  v18 = [v16 objectForKey:v14];
  v19 = TLLogVibrationManagement();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v26 = self;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v24;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentVibrationWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", buf, 0x2Au);
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v18 objectForKey:v8];
    }

    else
    {
      v20 = 0;
    }

    v18 = v20;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = TLWatchAlertPolicyFromString(v18);
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (a5)
  {
    *a5 = isKindOfClass & 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_setCurrentVibrationWatchAlertPolicy:(int64_t)a3 forAlertType:(int64_t)a4 topic:(id)a5
{
  v8 = a5;
  if (a3 == 3)
  {
    v9 = [(TLVibrationManager *)self currentVibrationIdentifierForAlertType:a4 topic:v8];
    if ([v9 isEqualToString:@"<none>"])
    {
      a3 = 2;
    }

    else
    {
      a3 = 1;
    }
  }

  v21 = 0;
  v10 = [(TLVibrationManager *)self _currentVibrationWatchAlertPolicyForAlertType:a4 topic:v8 didFindPersistedWatchAlertPolicy:&v21];
  if (v21 != 1 || v10 != a3)
  {
    v12 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v13 = [(TLVibrationManager *)self _currentVibrationWatchAlertPolicyPreferenceKeyForAlertType:a4 topic:v8];
    if (v13)
    {
      v14 = NSStringFromTLWatchAlertPolicy(a3);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__TLVibrationManager__setCurrentVibrationWatchAlertPolicy_forAlertType_topic___block_invoke;
      v16[3] = &unk_1E8578C70;
      v16[4] = self;
      v17 = v12;
      v18 = v8;
      v19 = v13;
      v20 = v14;
      v15 = v14;
      [(TLVibrationManager *)self _performBlockInAccessQueue:v16];
    }

    else
    {
      v15 = TLLogVibrationManagement();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [TLVibrationManager _setCurrentVibrationWatchAlertPolicy:a4 forAlertType:? topic:?];
      }
    }
  }
}

void __78__TLVibrationManager__setCurrentVibrationWatchAlertPolicy_forAlertType_topic___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass_0 = getNPSDomainAccessorClass_0();
  if (!NPSDomainAccessorClass_0)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass_0 alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 56), v3);
  v6 = TLLogVibrationManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v26 = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentVibrationWatchAlertPolicy…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v26, 0x16u);
  }

  v4 = 1;
LABEL_8:
  if ([*(a1 + 48) length])
  {
    v8 = [v3 objectForKey:*(a1 + 56)];
    v9 = TLLogVibrationManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v26 = 138544130;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentVibrationWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", &v26, 0x2Au);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v8 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;
    [v12 setObject:*(a1 + 64) forKey:*(a1 + 48)];
    [v3 setObject:v13 forKey:*(a1 + 56)];
    v17 = TLLogVibrationManagement();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 56);
      v26 = 138544130;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentVibrationWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v26, 0x2Au);
    }
  }

  else
  {
    [v3 setObject:*(a1 + 64) forKey:*(a1 + 56)];
    v13 = TLLogVibrationManagement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v26 = 138544130;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      v30 = 2114;
      v31 = v3;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentVibrationWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v26, 0x2Au);
    }
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 56);
  v22 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  [v20 _didSetVibrationPreferenceSuccessfullyWithKey:v21 inDomain:v22 usingPreferencesOfKind:2];

  if (v4)
  {
    v23 = *(a1 + 32);
    v24 = *(v23 + 56);
    *(v23 + 56) = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Unexpected error while retrieving user generated vibration patterns: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __73__TLVibrationManager__retrieveUserGeneratedVibrationPatternsUsingService__block_invoke_324_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed retrieving user generated vibration patterns: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Unexpected error while setting user generated vibration patterns: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __75__TLVibrationManager__setUserGeneratedVibrationPatternsUsingService_error___block_invoke_326_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed setting user generated vibration patterns with error: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Unexpected error while removing user generated vibration patterns: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __84__TLVibrationManager__removeAllUserGeneratedVibrationPatternsUsingServiceWithError___block_invoke_328_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed removing user generated vibration patterns with error: %{public}@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentVibrationWatchAlertPolicy:(unint64_t)a1 forAlertType:topic:.cold.1(unint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromTLAlertType(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed to update watch alert policy for alert type %{public}@ because it is not settable.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end