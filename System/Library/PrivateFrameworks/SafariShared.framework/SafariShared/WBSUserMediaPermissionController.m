@interface WBSUserMediaPermissionController
+ (id)localizedStringForPerSitePreferenceValue:(id)a3;
+ (id)sharedController;
- (BOOL)_isPreferenceValid:(id)a3;
- (BOOL)_removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4;
- (BOOL)_setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5;
- (WBSUserMediaPermissionController)initWithUserMediaPermissionsFileURL:(id)a3 perSitePreferencesStore:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_init;
- (id)_policyForOrigin:(id)a3 topLevelOrigin:(id)a4;
- (id)_saltForOrigin:(id)a3 topLevelOrigin:(id)a4 frameIdentifier:(unint64_t)a5;
- (id)_saltWithPolicyEntry:(id)a3 computedPermission:(unint64_t)a4 frameIdentifier:(unint64_t)a5;
- (id)_standardizedURLForDomain:(id)a3;
- (id)_validPolicyForDomainWithOrigin:(id)a3 topLevelOrigin:(id)a4;
- (id)_validPolicyForOrigin:(id)a3 topLevelOrigin:(id)a4;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)preferenceNameForPreference:(id)a3;
- (id)preferences;
- (id)saltForOrigin:(id)a3 topLevelOrigin:(id)a4 frameIdentifier:(unint64_t)a5;
- (id)valuesForPreference:(id)a3;
- (int64_t)_mediaCaptureSettingForMediaCaptureType:(int64_t)a3 userMediaPermission:(unint64_t)a4;
- (unint64_t)_permissionByApplyingDefaultsForMissingValuesInPermission:(unint64_t)a3;
- (unint64_t)_permissionByRemovingDefaultPermissionFlagsInPermission:(unint64_t)a3;
- (unint64_t)_permissionForOrigin:(id)a3 topLevelOrigin:(id)a4;
- (unint64_t)_permissionMaskForMediaCaptureType:(int64_t)a3;
- (unint64_t)_userMediaPermissionForMediaCaptureType:(int64_t)a3 mediaCaptureSetting:(int64_t)a4;
- (unint64_t)permissionForDomain:(id)a3;
- (unint64_t)permissionForNonHTTPSOriginFromPermission:(unint64_t)a3;
- (unint64_t)permissionForOrigin:(id)a3 topLevelOrigin:(id)a4;
- (void)_cachedSettingsDidChangeAndWriteImmediately:(BOOL)a3 completionHandler:(id)a4;
- (void)_dispatchAsyncOnInternalQueue:(id)a3;
- (void)_dispatchSyncOnInternalQueue:(id)a3;
- (void)_invalidateAllPermissionsForDomain:(id)a3;
- (void)_invalidateCachedSettingsForOriginHash:(id)a3;
- (void)_loadSavedPermissions;
- (void)_setPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6;
- (void)checkUserMediaPermissionForURL:(id)a3 mainFrameURL:(id)a4 frameIdentifier:(unint64_t)a5 decisionHandler:(id)a6;
- (void)didCommitLoadForFrameWithIdentifier:(unint64_t)a3;
- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4;
- (void)getPermissionForOrigin:(id)a3 topLevelOrigin:(id)a4 completionHandler:(id)a5;
- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6;
- (void)reloadPreferences;
- (void)removeAllOriginsAddedAfterDate:(id)a3;
- (void)removeAllPermissionsWithCompletionHandler:(id)a3;
- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5;
- (void)resetOriginPermissionsWithCompletionHandler:(id)a3;
- (void)savePendingChangesBeforeTermination;
- (void)savePendingChangesWithCompletionHandler:(id)a3;
- (void)setPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6;
- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6;
@end

@implementation WBSUserMediaPermissionController

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WBSUserMediaPermissionController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[WBSUserMediaPermissionController sharedController]::onceToken != -1)
  {
    dispatch_once(&+[WBSUserMediaPermissionController sharedController]::onceToken, block);
  }

  v2 = +[WBSUserMediaPermissionController sharedController]::controller;

  return v2;
}

void __52__WBSUserMediaPermissionController_sharedController__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = +[WBSUserMediaPermissionController sharedController]::controller;
  +[WBSUserMediaPermissionController sharedController]::controller = v1;
}

- (WBSUserMediaPermissionController)initWithUserMediaPermissionsFileURL:(id)a3 perSitePreferencesStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = WBSUserMediaPermissionController;
  v9 = [(WBSUserMediaPermissionController *)&v25 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.Safari.UserMediaPermissionsController", v10);
    v12 = *(v9 + 6);
    *(v9 + 6) = v11;

    dispatch_suspend(*(v9 + 6));
    atomic_store(0, v9 + 7);
    objc_storeStrong(v9 + 8, a3);
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(v9 + 4);
    *(v9 + 4) = v13;

    v15 = *(v9 + 6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__WBSUserMediaPermissionController_initWithUserMediaPermissionsFileURL_perSitePreferencesStore___block_invoke;
    block[3] = &unk_1E7FB6F80;
    v16 = v9;
    v24 = v16;
    dispatch_async(v15, block);
    [v16 setDefaultsDelegate:v16];
    objc_storeStrong(v16 + 9, a4);
    v17 = [[WBSPerSitePreference alloc] initWithIdentifier:@"CameraPreference"];
    v18 = v16[10];
    v16[10] = v17;

    v19 = [[WBSPerSitePreference alloc] initWithIdentifier:@"MicrophonePreference"];
    v20 = v16[11];
    v16[11] = v19;

    v21 = v16;
  }

  return v9;
}

- (id)_init
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 safari_settingsDirectoryURL];
  v5 = [v4 URLByAppendingPathComponent:@"UserMediaPermissions.plist" isDirectory:0];

  v6 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
  v7 = [(WBSUserMediaPermissionController *)self initWithUserMediaPermissionsFileURL:v5 perSitePreferencesStore:v6];

  return v7;
}

- (void)reloadPreferences
{
  v2 = atomic_load(&self->_savedStateLoadStatus);
  if (v2 == 2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __53__WBSUserMediaPermissionController_reloadPreferences__block_invoke;
    v3[3] = &unk_1E7FB6F80;
    v3[4] = self;
    [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v3];
  }
}

uint64_t __53__WBSUserMediaPermissionController_reloadPreferences__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  atomic_store(1uLL, (*(a1 + 32) + 56));
  v5 = *(a1 + 32);

  return [v5 _loadSavedPermissions];
}

- (void)savePendingChangesBeforeTermination
{
  if (atomic_load(&self->_savedStateLoadStatus))
  {
    if (self->_userMediaPermissionsFileURL)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __71__WBSUserMediaPermissionController_savePendingChangesBeforeTermination__block_invoke;
      v3[3] = &unk_1E7FB6F80;
      v3[4] = self;
      [(WBSUserMediaPermissionController *)self _dispatchSyncOnInternalQueue:v3];
    }
  }
}

- (void)savePendingChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = atomic_load(&self->_savedStateLoadStatus);
  if (v6 && self->_userMediaPermissionsFileURL && self->_saveUserMediaPermissionsWriter)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__WBSUserMediaPermissionController_savePendingChangesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7FB6F08;
    v7[4] = self;
    v8 = v4;
    [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v7];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)_invalidateCachedSettingsForOriginHash:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_cachedSettings objectForKeyedSubscript:a3];
  if (v4)
  {
    [v4 setPersistentSalt:0];
    [v4 setPermission:0];
    [(WBSUserMediaPermissionController *)self _cachedSettingsDidChange];
  }
}

- (unint64_t)permissionForOrigin:(id)a3 topLevelOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__WBSUserMediaPermissionController_permissionForOrigin_topLevelOrigin___block_invoke;
  v12[3] = &unk_1E7FCB3B8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v8 = v7;
  v9 = v6;
  [(WBSUserMediaPermissionController *)self _dispatchSyncOnInternalQueue:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __71__WBSUserMediaPermissionController_permissionForOrigin_topLevelOrigin___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _permissionForOrigin:*(a1 + 40) topLevelOrigin:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)getPermissionForOrigin:(id)a3 topLevelOrigin:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__38;
  v16[4] = __Block_byref_object_dispose__38;
  v17 = MEMORY[0x1BFB13CE0](a5);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__WBSUserMediaPermissionController_getPermissionForOrigin_topLevelOrigin_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC9558;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = v16;
  v10 = v9;
  v11 = v8;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v12];

  _Block_object_dispose(v16, 8);
}

void __92__WBSUserMediaPermissionController_getPermissionForOrigin_topLevelOrigin_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _permissionForOrigin:*(a1 + 40) topLevelOrigin:*(a1 + 48)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__WBSUserMediaPermissionController_getPermissionForOrigin_topLevelOrigin_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7FCB3E0;
  v3[4] = *(a1 + 56);
  v3[5] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __92__WBSUserMediaPermissionController_getPermissionForOrigin_topLevelOrigin_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (unint64_t)_permissionForOrigin:(id)a3 topLevelOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSUserMediaPermissionController *)self _validPolicyForDomainWithOrigin:v6 topLevelOrigin:v7];
  v9 = [v8 permission];

  v10 = [(WBSUserMediaPermissionController *)self _permissionByApplyingDefaultsForMissingValuesInPermission:v9];
  return v10;
}

- (id)_validPolicyForDomainWithOrigin:(id)a3 topLevelOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSUserMediaPermissionController *)self _standardizedURLForDomain:v7];
  if (![v8 length] || ((-[WBSUserMediaPermissionController _validPolicyForOrigin:topLevelOrigin:](self, "_validPolicyForOrigin:topLevelOrigin:", v8, v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[WBSUserMediaPermissionController _captureDevicesAreAllDefaultsGivenPermission:](self, "_captureDevicesAreAllDefaultsGivenPermission:", objc_msgSend(v9, "permission")), v11 = v10, !v10) ? (v12 = 0) : (v12 = v9), v12, v11))
  {
    v9 = [(WBSUserMediaPermissionController *)self _validPolicyForOrigin:v6 topLevelOrigin:v7];
  }

  return v9;
}

- (id)_validPolicyForOrigin:(id)a3 topLevelOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSUserMediaPermissionController *)self _policyForOrigin:v6 topLevelOrigin:v7];
  v9 = v8;
  if (v8 && ([v8 isValid] & 1) == 0)
  {
    v10 = originHash(v6, v7);
    [(WBSUserMediaPermissionController *)self _invalidateCachedSettingsForOriginHash:v10];

    v9 = 0;
  }

  return v9;
}

- (id)_policyForOrigin:(id)a3 topLevelOrigin:(id)a4
{
  cachedSettings = self->_cachedSettings;
  v5 = originHash(a3, a4);
  v6 = [(NSMutableDictionary *)cachedSettings objectForKeyedSubscript:v5];

  return v6;
}

- (unint64_t)permissionForNonHTTPSOriginFromPermission:(unint64_t)a3
{
  v3 = a3 & 0xFFFFFFFFFFFFFFFALL | 1;
  if ((a3 & 4) == 0)
  {
    v3 = a3;
  }

  if ((v3 & 0x20) != 0)
  {
    return v3 & 0xFFFFFFFFFFFFFFD3 | 8;
  }

  else
  {
    return v3;
  }
}

- (void)setPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__WBSUserMediaPermissionController_setPermission_expirationPolicy_forOrigin_topLevelOrigin___block_invoke;
  v14[3] = &unk_1E7FC8190;
  v17 = a3;
  v18 = a4;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v14];
}

- (void)_setPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6
{
  v15 = a5;
  v10 = a6;
  v11 = [(WBSUserMediaPermissionController *)self _permissionByRemovingDefaultPermissionFlagsInPermission:a3];
  v12 = originHash(v15, v10);
  v13 = [(NSMutableDictionary *)self->_cachedSettings objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    [(WBSUserMediaCapturePolicyEntry *)v13 updatePermission:v11 expirationPolicy:a4];
  }

  else
  {
    v14 = [[WBSUserMediaCapturePolicyEntry alloc] initWithPermission:v11 expirationPolicy:a4 forOrigin:v15 topLevelOrigin:v10];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  [(WBSUserMediaPermissionController *)self _cachedSettingsDidChange];
}

- (unint64_t)_permissionByRemovingDefaultPermissionFlagsInPermission:(unint64_t)a3
{
  v4 = [(WBSUserMediaPermissionController *)self _permissionByApplyingDefaultsForMissingValuesInPermission:0];
  if (((v4 ^ a3) & 7) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  }

  if (((v5 ^ v4) & 0x38) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFC7;
  }

  if (((v5 ^ v4) & 0xC0) != 0)
  {
    return v5;
  }

  else
  {
    return v5 & 0xFFFFFFFFFFFFFF3FLL;
  }
}

- (id)saltForOrigin:(id)a3 topLevelOrigin:(id)a4 frameIdentifier:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__WBSUserMediaPermissionController_saltForOrigin_topLevelOrigin_frameIdentifier___block_invoke;
  v14[3] = &unk_1E7FCB408;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v10 = v9;
  v11 = v8;
  [(WBSUserMediaPermissionController *)self _dispatchSyncOnInternalQueue:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __81__WBSUserMediaPermissionController_saltForOrigin_topLevelOrigin_frameIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saltForOrigin:*(a1 + 40) topLevelOrigin:*(a1 + 48) frameIdentifier:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_saltForOrigin:(id)a3 topLevelOrigin:(id)a4 frameIdentifier:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = originHash(v8, v9);
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_cachedSettings objectForKeyedSubscript:v10];
    v12 = v11;
    if (v11)
    {
      if (![(WBSUserMediaCapturePolicyEntry *)v11 isValid])
      {
        [(WBSUserMediaPermissionController *)self _invalidateCachedSettingsForOriginHash:v10];
      }
    }

    else
    {
      v12 = [[WBSUserMediaCapturePolicyEntry alloc] initWithPermission:0 expirationPolicy:1 forOrigin:v8 topLevelOrigin:v9];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    v14 = [(WBSUserMediaPermissionController *)self _saltWithPolicyEntry:v12 computedPermission:[(WBSUserMediaPermissionController *)self _permissionByApplyingDefaultsForMissingValuesInPermission:[(WBSUserMediaCapturePolicyEntry *)v12 permission]] frameIdentifier:a5];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXUserMediaCapture();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSUserMediaPermissionController _saltForOrigin:v13 topLevelOrigin:? frameIdentifier:?];
    }

    v14 = &stru_1F3A5E418;
  }

  return v14;
}

- (id)_saltWithPolicyEntry:(id)a3 computedPermission:(unint64_t)a4 frameIdentifier:(unint64_t)a5
{
  v6 = a4;
  v8 = ~a4;
  v9 = a3;
  v10 = v9;
  if ((v8 & 0x12) == 0)
  {
    v11 = &stru_1F3A5E418;
    goto LABEL_13;
  }

  v12 = [v9 ephemeralSalts];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v11 = [v12 objectForKeyedSubscript:v13];

  if ((v6 & 0x24) != 0)
  {
    if (!v11)
    {
      v14 = [v10 persistentSalt];

      if (!v14)
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
        v16 = [v15 UUIDString];
        [v10 setPersistentSalt:v16];

        [(WBSUserMediaPermissionController *)self _cachedSettingsDidChange];
      }

      v11 = [v10 persistentSalt];
    }
  }

  else
  {
    v17 = [v10 ephemeralSalts];

    if (v17)
    {
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      [v10 setEphemeralSalts:v18];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    v19 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v11 = [v19 UUIDString];

    v20 = [v10 ephemeralSalts];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    [v20 setObject:v11 forKeyedSubscript:v21];
  }

LABEL_13:

  return v11;
}

- (void)removeAllOriginsAddedAfterDate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__WBSUserMediaPermissionController_removeAllOriginsAddedAfterDate___block_invoke;
  v6[3] = &unk_1E7FB7F10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v6];
}

void __67__WBSUserMediaPermissionController_removeAllOriginsAddedAfterDate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(*(a1 + 32) + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__WBSUserMediaPermissionController_removeAllOriginsAddedAfterDate___block_invoke_2;
  v13[3] = &unk_1E7FCB430;
  v14 = *(a1 + 40);
  v4 = v2;
  v15 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v13];
  if ([v4 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v16 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(a1 + 32) + 32) removeObjectForKey:{*(*(&v9 + 1) + 8 * v8++), v9}];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v16 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) _cachedSettingsDidChange];
  }
}

void __67__WBSUserMediaPermissionController_removeAllOriginsAddedAfterDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695DF00];
  [v5 permissionGrantDate];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  if ([v7 compare:*(a1 + 32)] == 1)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)resetOriginPermissionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__WBSUserMediaPermissionController_resetOriginPermissionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7FB6F08;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v6];
}

void __80__WBSUserMediaPermissionController_resetOriginPermissionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__WBSUserMediaPermissionController_resetOriginPermissionsWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7FC5E58;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _cachedSettingsDidChangeAndWriteImmediately:1 completionHandler:v3];
}

uint64_t __80__WBSUserMediaPermissionController_resetOriginPermissionsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_loadSavedPermissions
{
  if (self->_userMediaPermissionsFileURL)
  {
    v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:?];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__WBSUserMediaPermissionController__loadSavedPermissions__block_invoke;
    v4[3] = &unk_1E7FCB458;
    v4[4] = self;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
    atomic_store(2uLL, &self->_savedStateLoadStatus);
  }

  else
  {
    atomic_store(2uLL, &self->_savedStateLoadStatus);
  }
}

void __57__WBSUserMediaPermissionController__loadSavedPermissions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 length])
      {
        v6 = [[WBSUserMediaCapturePolicyEntry alloc] initWithDictionaryRepresentation:v5];
        [*(*(a1 + 32) + 32) setObject:v6 forKeyedSubscript:v7];
      }
    }
  }
}

- (void)didCommitLoadForFrameWithIdentifier:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__WBSUserMediaPermissionController_didCommitLoadForFrameWithIdentifier___block_invoke;
  v3[3] = &unk_1E7FB7610;
  v3[4] = self;
  v3[5] = a3;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v3];
}

void __72__WBSUserMediaPermissionController_didCommitLoadForFrameWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v2 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WBSUserMediaPermissionController_didCommitLoadForFrameWithIdentifier___block_invoke_2;
  v7[3] = &unk_1E7FCB480;
  v3 = *(a1 + 40);
  v7[4] = &v8;
  v7[5] = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  if (v9[5])
  {
    v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:?];
    if ([*(a1 + 32) _captureDevicesAreAllDefaultsGivenPermission:{objc_msgSend(v4, "permission")}])
    {
      v5 = [v4 ephemeralSalts];
      if ([v5 count])
      {
      }

      else
      {
        v6 = [v4 persistentSalt];

        if (!v6)
        {
          [*(*(a1 + 32) + 32) removeObjectForKey:v9[5]];
        }
      }
    }
  }

  _Block_object_dispose(&v8, 8);
}

void __72__WBSUserMediaPermissionController_didCommitLoadForFrameWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = [v8 ephemeralSalts];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v8 ephemeralSalts];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    [v12 removeObjectForKey:v13];

    *a4 = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_cachedSettings, "count")}];
  cachedSettings = self->_cachedSettings;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSUserMediaPermissionController__dictionaryRepresentation__block_invoke;
  v7[3] = &unk_1E7FCB430;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)cachedSettings enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __61__WBSUserMediaPermissionController__dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v5 isValid] & 1) != 0 && (objc_msgSend(*(a1 + 32), "_captureDevicesAreAllDefaultsGivenPermission:", objc_msgSend(v5, "permission")) & 1) == 0)
  {
    v6 = [v5 dictionaryRepresentation];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)_cachedSettingsDidChangeAndWriteImmediately:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_userMediaPermissionsFileURL)
  {
    saveUserMediaPermissionsWriter = self->_saveUserMediaPermissionsWriter;
    if (!saveUserMediaPermissionsWriter)
    {
      objc_initWeak(&location, self);
      v8 = objc_alloc(MEMORY[0x1E69C8840]);
      userMediaPermissionsFileURL = self->_userMediaPermissionsFileURL;
      internalQueue = self->_internalQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__WBSUserMediaPermissionController__cachedSettingsDidChangeAndWriteImmediately_completionHandler___block_invoke;
      v16[3] = &unk_1E7FC9B28;
      objc_copyWeak(&v17, &location);
      v11 = [v8 initWithName:@"UserMediaPermissions" fileURL:userMediaPermissionsFileURL dataSourceQueue:internalQueue dataSourceBlock:v16];
      v12 = self->_saveUserMediaPermissionsWriter;
      self->_saveUserMediaPermissionsWriter = v11;

      [(WBSCoalescedAsynchronousWriter *)self->_saveUserMediaPermissionsWriter setDelegate:self];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      saveUserMediaPermissionsWriter = self->_saveUserMediaPermissionsWriter;
    }

    [(WBSCoalescedAsynchronousWriter *)saveUserMediaPermissionsWriter scheduleWrite];
    if (v4)
    {
      v13 = self->_saveUserMediaPermissionsWriter;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __98__WBSUserMediaPermissionController__cachedSettingsDidChangeAndWriteImmediately_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7FB7B80;
      v15 = v6;
      [(WBSCoalescedAsynchronousWriter *)v13 startScheduledWriteNowWithCompletionHandler:v14];
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

id __98__WBSUserMediaPermissionController__cachedSettingsDidChangeAndWriteImmediately_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x1E696AE40];
  v3 = [WeakRetained _dictionaryRepresentation];
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

uint64_t __98__WBSUserMediaPermissionController__cachedSettingsDidChangeAndWriteImmediately_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)checkUserMediaPermissionForURL:(id)a3 mainFrameURL:(id)a4 frameIdentifier:(unint64_t)a5 decisionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__WBSUserMediaPermissionController_checkUserMediaPermissionForURL_mainFrameURL_frameIdentifier_decisionHandler___block_invoke;
  v16[3] = &unk_1E7FC5910;
  v17 = v10;
  v18 = v11;
  v20 = v12;
  v21 = a5;
  v19 = self;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v16];
}

void __112__WBSUserMediaPermissionController_checkUserMediaPermissionForURL_mainFrameURL_frameIdentifier_decisionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) absoluteString];
  v3 = [*(a1 + 40) absoluteString];
  v4 = [*(a1 + 48) _validPolicyForDomainWithOrigin:v2 topLevelOrigin:v3];
  v5 = [*(a1 + 48) _permissionByApplyingDefaultsForMissingValuesInPermission:{objc_msgSend(v4, "permission")}];
  v6 = [*(a1 + 48) _saltWithPolicyEntry:v4 computedPermission:v5 frameIdentifier:*(a1 + 64)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__WBSUserMediaPermissionController_checkUserMediaPermissionForURL_mainFrameURL_frameIdentifier_decisionHandler___block_invoke_2;
  block[3] = &unk_1E7FC71C0;
  v7 = *(a1 + 56);
  v10 = v6;
  v11 = v7;
  v12 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (unint64_t)_permissionMaskForMediaCaptureType:(int64_t)a3
{
  if (a3 == 1)
  {
    return 7;
  }

  else
  {
    return 56;
  }
}

- (id)preferences
{
  v5[2] = *MEMORY[0x1E69E9840];
  microphoneMediaCapturePreference = self->_microphoneMediaCapturePreference;
  v5[0] = self->_cameraMediaCapturePreference;
  v5[1] = microphoneMediaCapturePreference;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (id)valuesForPreference:(id)a3
{
  if ([(WBSUserMediaPermissionController *)self _mediaCaptureTypeForPreference:a3]>= 2)
  {
    return 0;
  }

  else
  {
    return &unk_1F3A9B3A8;
  }
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  v4 = a3;
  v5 = [objc_opt_class() localizedStringForPerSitePreferenceValue:v4];

  return v5;
}

- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__WBSUserMediaPermissionController_setValue_ofPreference_forDomain_completionHandler___block_invoke;
  v18[3] = &unk_1E7FCB4A8;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v18];
}

void __86__WBSUserMediaPermissionController_setValue_ofPreference_forDomain_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setValue:*(a1 + 40) ofPreference:*(a1 + 48) forDomain:*(a1 + 56)];
  if (*(a1 + 64))
  {
    v3 = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __86__WBSUserMediaPermissionController_setValue_ofPreference_forDomain_completionHandler___block_invoke_2;
    v4[3] = &unk_1E7FC58E8;
    v5 = *(a1 + 64);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (BOOL)_setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSUserMediaPermissionController *)self _standardizedURLForDomain:v10];
  v12 = [(WBSUserMediaPermissionController *)self _validPolicyForDomainWithOrigin:v11 topLevelOrigin:v11];
  v13 = [v12 permission];

  v14 = [(WBSUserMediaPermissionController *)self _mediaCaptureTypeForPreference:v9];
  v15 = [(WBSUserMediaPermissionController *)self _permissionMaskForMediaCaptureType:v14];
  v16 = [v8 integerValue];
  v17 = v13 & ~v15;
  if (v16)
  {
    if (v16 == 1)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v17 |= 2uLL;
        }
      }

      else
      {
        v17 |= 0x10uLL;
      }
    }

    else if (v16 == 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v17 |= 4uLL;
        }
      }

      else
      {
        v17 |= 0x20uLL;
      }
    }
  }

  else
  {
    v18 = v17 | 1;
    if (v14 != 1)
    {
      v18 = v17;
    }

    if (v14)
    {
      v17 = v18;
    }

    else
    {
      v17 |= 8uLL;
    }
  }

  if (v17 != v13)
  {
    [(WBSUserMediaPermissionController *)self _invalidateAllPermissionsForDomain:v10];
    [(WBSUserMediaPermissionController *)self _setPermission:v17 expirationPolicy:2 forOrigin:v11 topLevelOrigin:v11];
    v19 = [(WBSPerSitePreferenceManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v19 perSitePreferenceManager:self didUpdateValueForPreference:v9 onDomain:v10 toValue:v8];
    }
  }

  return 1;
}

- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__WBSUserMediaPermissionController_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v15[3] = &unk_1E7FC6910;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v15];
}

void __90__WBSUserMediaPermissionController_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaCaptureTypeForPreference:*(a1 + 40)];
  v3 = [*(a1 + 32) _standardizedURLForDomain:*(a1 + 48)];
  v4 = [*(a1 + 32) _validPolicyForDomainWithOrigin:v3 topLevelOrigin:v3];
  v5 = [*(a1 + 32) _mediaCaptureSettingForMediaCaptureType:v2 userMediaPermission:{objc_msgSend(v4, "permission")}];
  v6 = [v4 isValid];
  if (v5 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7 == 1 && ![v4 permissionExpiresWithinOneDay])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__WBSUserMediaPermissionController_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_3;
    block[3] = &unk_1E7FC5938;
    v10 = v12;
    v12[0] = *(a1 + 56);
    v12[1] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__WBSUserMediaPermissionController_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_2;
    v13[3] = &unk_1E7FB6C10;
    v14 = *(a1 + 56);
    [v8 getDefaultPreferenceValueForPreference:v9 completionHandler:v13];
    v10 = &v14;
  }
}

void __90__WBSUserMediaPermissionController_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  (*(v1 + 16))(v1);
}

- (int64_t)_mediaCaptureSettingForMediaCaptureType:(int64_t)a3 userMediaPermission:(unint64_t)a4
{
  v4 = 1;
  v5 = 2;
  if ((a4 & 4) == 0)
  {
    v5 = (a4 & 1) - 1;
  }

  if ((a4 & 2) == 0)
  {
    v4 = v5;
  }

  v6 = 1;
  v7 = 2;
  if ((a4 & 0x20) == 0)
  {
    v7 = ((a4 >> 3) & 1) - 1;
  }

  if ((a4 & 0x10) == 0)
  {
    v6 = v7;
  }

  if (a3)
  {
    v6 = v4;
  }

  if (a3 == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)_userMediaPermissionForMediaCaptureType:(int64_t)a3 mediaCaptureSetting:(int64_t)a4
{
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      if (!a3)
      {
        return 16;
      }

      if (a3 == 1)
      {
        return 2;
      }
    }

    else
    {
      if (a4)
      {
        return self;
      }

      if (!a3)
      {
        return 8;
      }

      if (a3 == 1)
      {
        return 1;
      }
    }
  }

  if (a3)
  {
    return 4;
  }

  else
  {
    return 32;
  }
}

- (unint64_t)_permissionByApplyingDefaultsForMissingValuesInPermission:(unint64_t)a3
{
  v5 = dispatch_group_create();
  v6 = v5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ((a3 & 0x38) == 0)
  {
    dispatch_group_enter(v5);
    cameraMediaCapturePreference = self->_cameraMediaCapturePreference;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__WBSUserMediaPermissionController__permissionByApplyingDefaultsForMissingValuesInPermission___block_invoke;
    v18[3] = &unk_1E7FCB4D0;
    v20 = &v21;
    v18[4] = self;
    v19 = v6;
    [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:cameraMediaCapturePreference completionHandler:v18];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ((a3 & 7) == 0)
  {
    dispatch_group_enter(v6);
    microphoneMediaCapturePreference = self->_microphoneMediaCapturePreference;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__WBSUserMediaPermissionController__permissionByApplyingDefaultsForMissingValuesInPermission___block_invoke_2;
    v11[3] = &unk_1E7FCB4D0;
    v13 = &v14;
    v11[4] = self;
    v12 = v6;
    [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:microphoneMediaCapturePreference completionHandler:v11];
  }

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v22[3] | v15[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v21, 8);

  return v9 | a3;
}

void __94__WBSUserMediaPermissionController__permissionByApplyingDefaultsForMissingValuesInPermission___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _userMediaPermissionForMediaCaptureType:0 mediaCaptureSetting:{objc_msgSend(v3, "integerValue")}];
  dispatch_group_leave(*(a1 + 40));
}

void __94__WBSUserMediaPermissionController__permissionByApplyingDefaultsForMissingValuesInPermission___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _userMediaPermissionForMediaCaptureType:1 mediaCaptureSetting:{objc_msgSend(v3, "integerValue")}];
  dispatch_group_leave(*(a1 + 40));
}

- (unint64_t)permissionForDomain:(id)a3
{
  v4 = [(WBSUserMediaPermissionController *)self _standardizedURLForDomain:a3];
  v5 = [(WBSUserMediaPermissionController *)self permissionForOrigin:v4 topLevelOrigin:v4];

  return v5;
}

- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__WBSUserMediaPermissionController_getAllDomainsConfiguredForPreference_usingBlock___block_invoke;
  v10[3] = &unk_1E7FCB4F8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(WBSPerSitePreferenceManager *)self getDefaultPreferenceValueForPreference:v9 completionHandler:v10];
}

void __84__WBSUserMediaPermissionController_getAllDomainsConfiguredForPreference_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__WBSUserMediaPermissionController_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_2;
  v6[3] = &unk_1E7FC6910;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 _dispatchAsyncOnInternalQueue:v6];
}

void __84__WBSUserMediaPermissionController_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _mediaCaptureTypeForPreference:*(a1 + 40)];
  v4 = [v2[2] integerValue];
  v18 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [*(*v2 + 4) allValues];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (([v9 permissionExpiresWithinOneDay] & 1) == 0)
        {
          v10 = [*(a1 + 32) _mediaCaptureSettingForMediaCaptureType:v3 userMediaPermission:{objc_msgSend(v9, "permission")}];
          if (v10 != -1 && v10 != v4)
          {
            v12 = MEMORY[0x1E695DFF8];
            v13 = [v9 topLevelOrigin];
            v14 = [v12 URLWithString:v13];
            v15 = [v14 safari_userVisibleHostWithoutWWWSubdomain];
            [v18 addObject:v15];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSUserMediaPermissionController_getAllDomainsConfiguredForPreference_usingBlock___block_invoke_3;
  block[3] = &unk_1E7FB6BC0;
  v16 = *(a1 + 56);
  v20 = v18;
  v21 = v16;
  v17 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__WBSUserMediaPermissionController_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke;
  v14[3] = &unk_1E7FC6910;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(WBSUserMediaPermissionController *)self _dispatchAsyncOnInternalQueue:v14];
}

void __102__WBSUserMediaPermissionController_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removePreferenceValuesForDomains:*(a1 + 40) fromPreference:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v3 = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __102__WBSUserMediaPermissionController_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_2;
    v4[3] = &unk_1E7FC58E8;
    v5 = *(a1 + 56);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (BOOL)_removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v24 = a4;
  v6 = [(WBSUserMediaPermissionController *)self _permissionMaskForMediaCaptureType:[(WBSUserMediaPermissionController *)self _mediaCaptureTypeForPreference:?]];
  v26 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v25;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = *v34;
    v9 = ~v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(WBSUserMediaPermissionController *)self _standardizedURLForDomain:*(*(&v33 + 1) + 8 * v10)];
        v12 = [(WBSUserMediaPermissionController *)self _policyForOrigin:v11 topLevelOrigin:v11];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 permission] & v9;
          if (v14)
          {
            [v13 setPermission:v14];
          }

          else
          {
            [v26 addObject:v13];
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = v26;
  v15 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v27);
        }

        cachedSettings = self->_cachedSettings;
        v19 = *(*(&v29 + 1) + 8 * v17);
        v20 = [v19 origin];
        v21 = [v19 topLevelOrigin];
        v22 = originHash(v20, v21);

        [(NSMutableDictionary *)cachedSettings removeObjectForKey:v22];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v15);
  }

  [(WBSUserMediaPermissionController *)self _cachedSettingsDidChange];
  return 1;
}

- (id)preferenceNameForPreference:(id)a3
{
  v3 = [(WBSUserMediaPermissionController *)self _mediaCaptureTypeForPreference:a3];
  if (v3 == 1)
  {
    v4 = WBSPerSitePreferenceNameMicrophone;
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = WBSPerSitePreferenceNameCamera;
  }

  v3 = *v4;
LABEL_6:

  return v3;
}

- (BOOL)_isPreferenceValid:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_cameraMediaCapturePreference])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:self->_microphoneMediaCapturePreference];
  }

  return v5;
}

+ (id)localizedStringForPerSitePreferenceValue:(id)a3
{
  v4 = a3;
  if ([v4 integerValue] <= 2)
  {
    v3 = _WBSLocalizedString();
  }

  return v3;
}

- (id)_standardizedURLForDomain:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = [v4 safari_userVisibleHostWithoutWWWSubdomain];

  v6 = MEMORY[0x1E696AEC0];
  if ([v5 length])
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = [v6 stringWithFormat:@"mediacapture://%@", v7];

  return v8;
}

- (void)_invalidateAllPermissionsForDomain:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(NSMutableDictionary *)self->_cachedSettings allValues];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = MEMORY[0x1E695DFF8];
        v10 = [v8 topLevelOrigin];
        v11 = [v9 URLWithString:v10];
        v12 = [v11 safari_userVisibleHostWithoutWWWSubdomain];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = [v8 origin];
          v15 = [v8 topLevelOrigin];
          v16 = originHash(v14, v15);
          [(WBSUserMediaPermissionController *)self _invalidateCachedSettingsForOriginHash:v16];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)_dispatchAsyncOnInternalQueue:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_savedStateLoadStatus);
  block = v4;
  if (!v5)
  {
    atomic_store(1uLL, &self->_savedStateLoadStatus);
    dispatch_resume(self->_internalQueue);
    v4 = block;
  }

  if (v4)
  {
    dispatch_async(self->_internalQueue, block);
    v4 = block;
  }
}

- (void)_dispatchSyncOnInternalQueue:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_savedStateLoadStatus);
  block = v4;
  if (!v5)
  {
    atomic_store(1uLL, &self->_savedStateLoadStatus);
    dispatch_resume(self->_internalQueue);
    v4 = block;
  }

  if (v4)
  {
    dispatch_sync(self->_internalQueue, block);
    v4 = block;
  }
}

- (void)removeAllPermissionsWithCompletionHandler:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  microphoneMediaCapturePreference = self->_microphoneMediaCapturePreference;
  v12[0] = self->_cameraMediaCapturePreference;
  v12[1] = microphoneMediaCapturePreference;
  v13[0] = &unk_1F3A9B048;
  v13[1] = &unk_1F3A9B048;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__WBSUserMediaPermissionController_removeAllPermissionsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FCB520;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [(WBSPerSitePreferenceManager *)self setDefaultPreferenceValues:v6 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__WBSUserMediaPermissionController_removeAllPermissionsWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__WBSUserMediaPermissionController_removeAllPermissionsWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7FB6B70;
    v6 = *(a1 + 32);
    v7 = a2;
    [WeakRetained resetOriginPermissionsWithCompletionHandler:v5];
  }
}

uint64_t __78__WBSUserMediaPermissionController_removeAllPermissionsWithCompletionHandler___block_invoke_2(uint64_t a1, char a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (*(a1 + 40) & a2));
  }

  return result;
}

@end