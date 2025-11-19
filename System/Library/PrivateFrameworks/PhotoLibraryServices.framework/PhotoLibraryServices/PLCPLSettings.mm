@interface PLCPLSettings
+ (BOOL)setPrefetchMode:(int64_t)a3 withLibraryBundle:(id)a4 error:(id *)a5;
+ (PLCPLSettings)settingsWithLibraryBundle:(id)a3;
+ (PLCPLSettings)settingsWithPathManager:(id)a3;
- (BOOL)_writeSettingsPayload:(id)a3 notify:(BOOL)a4 error:(id *)a5 didWriteValueBlock:(id)a6;
- (BOOL)_writeSettingsValue:(id)a3 forKey:(id)a4 persist:(BOOL)a5 notify:(BOOL)a6 error:(id *)a7 didWriteValueBlock:(id)a8;
- (BOOL)clearRunOnceFlag:(unint64_t)a3 error:(id *)a4;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)migrateSettings:(id *)a3;
- (BOOL)setICPLEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4;
- (BOOL)setRunOnceFlag:(unint64_t)a3 error:(id *)a4;
- (PLCPLSettings)initWithCoder:(id)a3;
- (PLCPLSettings)initWithLibraryBundle:(id)a3;
- (id)_readLegacyBoolDefaultForKey:(id)a3;
- (id)_readSettingsPayload;
- (id)debugDescription;
- (id)deriveMainScopeIdentifier;
- (unint64_t)runOnceFlags;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLCPLSettings

- (BOOL)isCloudPhotoLibraryEnabled
{
  if ([(PLPhotoLibraryBundle *)self->_libraryBundle isSystemPhotoLibrary])
  {
    v3 = MEMORY[0x1E6959638];
LABEL_5:
    v4 = *v3;

    LOBYTE(v5) = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(v4);
    return v5;
  }

  if ([(PLPhotoLibraryIdentifier *)self->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier])
  {
    v3 = MEMORY[0x1E6959680];
    goto LABEL_5;
  }

  v5 = [(PLCPLSettings *)self isAppLibrary];
  if (v5)
  {

    LOBYTE(v5) = [(PLCPLSettings *)self isICPLEnabled];
  }

  return v5;
}

- (id)_readLegacyBoolDefaultForKey:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:AppBooleanValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)migrateSettings:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v5 = PLReadCloudPhotoLibraryKeepOriginalsEnabled_Legacy();
  if (!v5)
  {
    v5 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"keepOriginals"];
  }

  v6 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"handleOptimizeModeChange"];
  v7 = [v6 BOOLValue];

  v8 = v7;
  v9 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"sendOptimizeSettingFeedback"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v8 |= 2uLL;
  }

  v11 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"markPurgeableResources"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v8 |= 4uLL;
  }

  v13 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"clearPurgeableResources"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v8 |= 8uLL;
  }

  v15 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushVideoAssetsMetadata"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v8 |= 0x10uLL;
  }

  v17 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushMasterMissingMetadata"];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    v8 |= 0x20uLL;
  }

  v19 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushAssetsWithImportedByBundleIdentifier"];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = v8 | 0x40;
  }

  else
  {
    v21 = v8;
  }

  v22 = objc_alloc(MEMORY[0x1E695DF90]);
  v23 = [(PLCPLSettings *)self _readSettingsPayload];
  v24 = [v22 initWithDictionary:v23];

  if (!v5)
  {
    v25 = 0;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v25 = [v5 BOOLValue];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
  [v24 setObject:v26 forKeyedSubscript:@"PrefetchMode"];

  if (v21)
  {
LABEL_18:
    v27 = [v24 objectForKeyedSubscript:@"RunOnceFlags"];
    v28 = [v27 unsignedIntegerValue];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v28 | v21];
    [v24 setObject:v29 forKeyedSubscript:@"RunOnceFlags"];
  }

LABEL_19:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __33__PLCPLSettings_migrateSettings___block_invoke;
  v32[3] = &unk_1E7577B90;
  v32[4] = self;
  v32[5] = v25;
  v30 = [(PLCPLSettings *)self _writeSettingsPayload:v24 notify:0 error:a3 didWriteValueBlock:v32];
  os_unfair_lock_unlock(&self->_lock);

  return v30;
}

- (BOOL)_writeSettingsPayload:(id)a3 notify:(BOOL)a4 error:(id *)a5 didWriteValueBlock:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v10 && ![(PLAppPrivateData *)self->_appPrivateData setValue:v10 forKeyPath:@"Library.CPL" error:a5])
  {
    v13 = 0;
  }

  else
  {
    if (v11)
    {
      v11[2](v11);
    }

    if (v8)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PLCPLSettingsDidChangeNotification", 0, 0, 0);
    }

    v13 = 1;
  }

  return v13;
}

- (BOOL)_writeSettingsValue:(id)a3 forKey:(id)a4 persist:(BOOL)a5 notify:(BOOL)a6 error:(id *)a7 didWriteValueBlock:(id)a8
{
  v9 = a6;
  v10 = a5;
  v14 = a8;
  if (v10)
  {
    v15 = MEMORY[0x1E695DF90];
    v16 = a4;
    v17 = a3;
    v18 = [v15 alloc];
    v19 = [(PLCPLSettings *)self _readSettingsPayload];
    v20 = [v18 initWithDictionary:v19];

    [v20 setObject:v17 forKeyedSubscript:v16];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(PLCPLSettings *)self _writeSettingsPayload:v20 notify:v9 error:a7 didWriteValueBlock:v14];

  return v21;
}

- (id)_readSettingsPayload
{
  v2 = [(PLAppPrivateData *)self->_appPrivateData valueForKeyPath:@"Library.CPL"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;

  return v5;
}

- (id)deriveMainScopeIdentifier
{
  if ([(PLCPLSettings *)self isAppLibrary])
  {
    v3 = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier containerIdentifier];
    v4 = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier uuid];
    v5 = CPLMainScopeIdentifierForApp();
  }

  else
  {
    v5 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  return v5;
}

- (BOOL)clearRunOnceFlag:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(PLCPLSettings *)self runOnceFlags];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 & ~a3];
  LOBYTE(a4) = [(PLCPLSettings *)self _writeSettingsValue:v8 forKey:@"RunOnceFlags" persist:1 notify:0 error:a4 didWriteValueBlock:0];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)setRunOnceFlag:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(PLCPLSettings *)self runOnceFlags];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 | a3];
  LOBYTE(a4) = [(PLCPLSettings *)self _writeSettingsValue:v8 forKey:@"RunOnceFlags" persist:1 notify:0 error:a4 didWriteValueBlock:0];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (unint64_t)runOnceFlags
{
  v2 = [(PLCPLSettings *)self _readSettingsPayload];
  v3 = [v2 objectForKeyedSubscript:@"RunOnceFlags"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_appPrivateData && self->_prefetchMode != a3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PLCPLSettings_setPrefetchMode_error___block_invoke;
    v10[3] = &unk_1E7577B90;
    v10[4] = self;
    v10[5] = a3;
    v7 = [(PLCPLSettings *)self _writeSettingsValue:v8 forKey:@"PrefetchMode" persist:1 notify:1 error:a4 didWriteValueBlock:v10];
  }

  else
  {
    v7 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

void __39__PLCPLSettings_setPrefetchMode_error___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = *(a1 + 40);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PLNotificationKeepOriginalsChanged", 0, 0, 1u);
}

- (BOOL)setICPLEnabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_appPrivateData && self->_iCPLEnabled != v5)
  {
    if ([(PLPhotoLibraryBundle *)self->_libraryBundle isSystemPhotoLibrary])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier]^ 1;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__PLCPLSettings_setICPLEnabled_error___block_invoke;
    v11[3] = &unk_1E7576F80;
    v11[4] = self;
    v12 = v5;
    v7 = [(PLCPLSettings *)self _writeSettingsValue:v9 forKey:@"iCPLEnabled" persist:v8 notify:1 error:a4 didWriteValueBlock:v11];
  }

  else
  {
    v7 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = PLCPLSettings;
  v3 = [(PLCPLSettings *)&v9 description];
  v4 = @"yes";
  if ([(PLCPLSettings *)self isICPLEnabled])
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  if (![(PLCPLSettings *)self isAppLibrary])
  {
    v4 = @"no";
  }

  v6 = [PLCloudResourcePrefetchManager descriptionForPrefetchMode:[(PLCPLSettings *)self prefetchMode]];
  v7 = [v3 stringByAppendingFormat:@": isICPLEnabled: %@, isAppLibary: %@, prefetchMode: %@", v5, v4, v6];

  return v7;
}

- (PLCPLSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLCPLSettings;
  v5 = [(PLCPLSettings *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_iCPLEnabled = [v4 decodeBoolForKey:@"iCPLEnabled"];
    v6->_prefetchMode = [v4 decodeIntegerForKey:@"PrefetchMode"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LibraryIdentifier"];
    libraryIdentifier = v6->_libraryIdentifier;
    v6->_libraryIdentifier = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v5 encodeBool:self->_iCPLEnabled forKey:@"iCPLEnabled"];
  [v5 encodeInteger:self->_prefetchMode forKey:@"PrefetchMode"];
  libraryIdentifier = self->_libraryIdentifier;
  if (libraryIdentifier)
  {
    [v5 encodeObject:libraryIdentifier forKey:@"LibraryIdentifier"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (PLCPLSettings)initWithLibraryBundle:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PLCPLSettings;
  v6 = [(PLCPLSettings *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_libraryBundle, a3);
    v8 = MEMORY[0x1E69BF188];
    v9 = [v5 libraryURL];
    v10 = [v8 appPrivateDataForLibraryURL:v9];
    appPrivateData = v7->_appPrivateData;
    v7->_appPrivateData = v10;

    v12 = [v5 libraryURL];
    v13 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v12 createIfMissing:0 error:0];
    libraryIdentifier = v7->_libraryIdentifier;
    v7->_libraryIdentifier = v13;

    v15 = [(PLCPLSettings *)v7 _readSettingsPayload];
    if ([v5 isSystemPhotoLibrary])
    {
      v16 = MEMORY[0x1E6959638];
    }

    else
    {
      if (![(PLPhotoLibraryIdentifier *)v7->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier])
      {
        v17 = [v15 objectForKeyedSubscript:@"iCPLEnabled"];
        v7->_iCPLEnabled = [v17 BOOLValue];

        goto LABEL_8;
      }

      v16 = MEMORY[0x1E6959680];
    }

    v7->_iCPLEnabled = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*v16);
LABEL_8:
    v18 = [v15 objectForKeyedSubscript:@"PrefetchMode"];
    v7->_prefetchMode = [v18 integerValue];
  }

  return v7;
}

+ (BOOL)setPrefetchMode:(int64_t)a3 withLibraryBundle:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 libraryServicesManager];

  if (v8)
  {
    v9 = [v7 libraryServicesManager];

    v10 = [v9 cloudPhotoLibraryManager];

    if (!v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41022 userInfo:0];
      if (a5)
      {
        v11 = v11;
        *a5 = v11;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = [v7 assetsdClient];

    v10 = [v12 cloudInternalClient];

    if (!v10)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E69BFF48];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"no cloud internal client";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v14 errorWithDomain:v15 code:44001 userInfo:v16];
      if (a5)
      {
        v17 = v17;
        *a5 = v17;
      }

      goto LABEL_11;
    }
  }

  v13 = [v10 setPrefetchMode:a3 error:a5];
LABEL_12:

  return v13;
}

+ (PLCPLSettings)settingsWithLibraryBundle:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLCPLSettings.m" lineNumber:71 description:@"Missing library bundle"];
  }

  v7 = [v6 libraryServicesManager];

  if (v7)
  {
    v8 = [v6 libraryServicesManager];
    v9 = [v8 cplSettings];
  }

  else
  {
    v10 = [v6 assetsdClient];
    v8 = [v10 cloudInternalClient];

    if (!v8)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"PLCPLSettings.m" lineNumber:76 description:@"No cloudInternalClient"];
    }

    v11 = [v8 getCPLSettings];
    v9 = v11;
    if (v11)
    {
      objc_storeStrong((v11 + 16), a3);
    }
  }

  return v9;
}

+ (PLCPLSettings)settingsWithPathManager:(id)a3
{
  v4 = a3;
  v5 = +[PLPhotoLibraryBundleController sharedBundleController];
  v6 = [v4 libraryURL];

  v7 = [v5 openBundleAtLibraryURL:v6];

  v8 = [a1 settingsWithLibraryBundle:v7];

  return v8;
}

@end