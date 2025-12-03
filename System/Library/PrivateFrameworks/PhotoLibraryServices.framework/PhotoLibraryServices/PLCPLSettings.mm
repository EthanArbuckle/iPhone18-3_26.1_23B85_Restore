@interface PLCPLSettings
+ (BOOL)setPrefetchMode:(int64_t)mode withLibraryBundle:(id)bundle error:(id *)error;
+ (PLCPLSettings)settingsWithLibraryBundle:(id)bundle;
+ (PLCPLSettings)settingsWithPathManager:(id)manager;
- (BOOL)_writeSettingsPayload:(id)payload notify:(BOOL)notify error:(id *)error didWriteValueBlock:(id)block;
- (BOOL)_writeSettingsValue:(id)value forKey:(id)key persist:(BOOL)persist notify:(BOOL)notify error:(id *)error didWriteValueBlock:(id)block;
- (BOOL)clearRunOnceFlag:(unint64_t)flag error:(id *)error;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)migrateSettings:(id *)settings;
- (BOOL)setICPLEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setPrefetchMode:(int64_t)mode error:(id *)error;
- (BOOL)setRunOnceFlag:(unint64_t)flag error:(id *)error;
- (PLCPLSettings)initWithCoder:(id)coder;
- (PLCPLSettings)initWithLibraryBundle:(id)bundle;
- (id)_readLegacyBoolDefaultForKey:(id)key;
- (id)_readSettingsPayload;
- (id)debugDescription;
- (id)deriveMainScopeIdentifier;
- (unint64_t)runOnceFlags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLCPLSettings

- (BOOL)isCloudPhotoLibraryEnabled
{
  if ([(PLPhotoLibraryBundle *)self->_libraryBundle isSystemPhotoLibrary])
  {
    v3 = MEMORY[0x1E6959638];
LABEL_5:
    v4 = *v3;

    LOBYTE(isAppLibrary) = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(v4);
    return isAppLibrary;
  }

  if ([(PLPhotoLibraryIdentifier *)self->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier])
  {
    v3 = MEMORY[0x1E6959680];
    goto LABEL_5;
  }

  isAppLibrary = [(PLCPLSettings *)self isAppLibrary];
  if (isAppLibrary)
  {

    LOBYTE(isAppLibrary) = [(PLCPLSettings *)self isICPLEnabled];
  }

  return isAppLibrary;
}

- (id)_readLegacyBoolDefaultForKey:(id)key
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
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

- (BOOL)migrateSettings:(id *)settings
{
  os_unfair_lock_lock(&self->_lock);
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v5 = PLReadCloudPhotoLibraryKeepOriginalsEnabled_Legacy();
  if (!v5)
  {
    v5 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"keepOriginals"];
  }

  v6 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"handleOptimizeModeChange"];
  bOOLValue = [v6 BOOLValue];

  v8 = bOOLValue;
  v9 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"sendOptimizeSettingFeedback"];
  bOOLValue2 = [v9 BOOLValue];

  if (bOOLValue2)
  {
    v8 |= 2uLL;
  }

  v11 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"markPurgeableResources"];
  bOOLValue3 = [v11 BOOLValue];

  if (bOOLValue3)
  {
    v8 |= 4uLL;
  }

  v13 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"clearPurgeableResources"];
  bOOLValue4 = [v13 BOOLValue];

  if (bOOLValue4)
  {
    v8 |= 8uLL;
  }

  v15 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushVideoAssetsMetadata"];
  bOOLValue5 = [v15 BOOLValue];

  if (bOOLValue5)
  {
    v8 |= 0x10uLL;
  }

  v17 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushMasterMissingMetadata"];
  bOOLValue6 = [v17 BOOLValue];

  if (bOOLValue6)
  {
    v8 |= 0x20uLL;
  }

  v19 = [(PLCPLSettings *)self _readLegacyBoolDefaultForKey:@"repushAssetsWithImportedByBundleIdentifier"];
  bOOLValue7 = [v19 BOOLValue];

  if (bOOLValue7)
  {
    v21 = v8 | 0x40;
  }

  else
  {
    v21 = v8;
  }

  v22 = objc_alloc(MEMORY[0x1E695DF90]);
  _readSettingsPayload = [(PLCPLSettings *)self _readSettingsPayload];
  v24 = [v22 initWithDictionary:_readSettingsPayload];

  if (!v5)
  {
    bOOLValue8 = 0;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  bOOLValue8 = [v5 BOOLValue];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:bOOLValue8];
  [v24 setObject:v26 forKeyedSubscript:@"PrefetchMode"];

  if (v21)
  {
LABEL_18:
    v27 = [v24 objectForKeyedSubscript:@"RunOnceFlags"];
    unsignedIntegerValue = [v27 unsignedIntegerValue];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | v21];
    [v24 setObject:v29 forKeyedSubscript:@"RunOnceFlags"];
  }

LABEL_19:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __33__PLCPLSettings_migrateSettings___block_invoke;
  v32[3] = &unk_1E7577B90;
  v32[4] = self;
  v32[5] = bOOLValue8;
  v30 = [(PLCPLSettings *)self _writeSettingsPayload:v24 notify:0 error:settings didWriteValueBlock:v32];
  os_unfair_lock_unlock(&self->_lock);

  return v30;
}

- (BOOL)_writeSettingsPayload:(id)payload notify:(BOOL)notify error:(id *)error didWriteValueBlock:(id)block
{
  notifyCopy = notify;
  payloadCopy = payload;
  blockCopy = block;
  if (payloadCopy && ![(PLAppPrivateData *)self->_appPrivateData setValue:payloadCopy forKeyPath:@"Library.CPL" error:error])
  {
    v13 = 0;
  }

  else
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    if (notifyCopy)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PLCPLSettingsDidChangeNotification", 0, 0, 0);
    }

    v13 = 1;
  }

  return v13;
}

- (BOOL)_writeSettingsValue:(id)value forKey:(id)key persist:(BOOL)persist notify:(BOOL)notify error:(id *)error didWriteValueBlock:(id)block
{
  notifyCopy = notify;
  persistCopy = persist;
  blockCopy = block;
  if (persistCopy)
  {
    v15 = MEMORY[0x1E695DF90];
    keyCopy = key;
    valueCopy = value;
    v18 = [v15 alloc];
    _readSettingsPayload = [(PLCPLSettings *)self _readSettingsPayload];
    v20 = [v18 initWithDictionary:_readSettingsPayload];

    [v20 setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(PLCPLSettings *)self _writeSettingsPayload:v20 notify:notifyCopy error:error didWriteValueBlock:blockCopy];

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
    containerIdentifier = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier containerIdentifier];
    uuid = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier uuid];
    v5 = CPLMainScopeIdentifierForApp();
  }

  else
  {
    v5 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  return v5;
}

- (BOOL)clearRunOnceFlag:(unint64_t)flag error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  runOnceFlags = [(PLCPLSettings *)self runOnceFlags];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:runOnceFlags & ~flag];
  LOBYTE(error) = [(PLCPLSettings *)self _writeSettingsValue:v8 forKey:@"RunOnceFlags" persist:1 notify:0 error:error didWriteValueBlock:0];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)setRunOnceFlag:(unint64_t)flag error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  runOnceFlags = [(PLCPLSettings *)self runOnceFlags];
  flag = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:runOnceFlags | flag];
  LOBYTE(error) = [(PLCPLSettings *)self _writeSettingsValue:flag forKey:@"RunOnceFlags" persist:1 notify:0 error:error didWriteValueBlock:0];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (unint64_t)runOnceFlags
{
  _readSettingsPayload = [(PLCPLSettings *)self _readSettingsPayload];
  v3 = [_readSettingsPayload objectForKeyedSubscript:@"RunOnceFlags"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)setPrefetchMode:(int64_t)mode error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_appPrivateData && self->_prefetchMode != mode)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PLCPLSettings_setPrefetchMode_error___block_invoke;
    v10[3] = &unk_1E7577B90;
    v10[4] = self;
    v10[5] = mode;
    v7 = [(PLCPLSettings *)self _writeSettingsValue:v8 forKey:@"PrefetchMode" persist:1 notify:1 error:error didWriteValueBlock:v10];
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

- (BOOL)setICPLEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  if (self->_appPrivateData && self->_iCPLEnabled != enabledCopy)
  {
    if ([(PLPhotoLibraryBundle *)self->_libraryBundle isSystemPhotoLibrary])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(PLPhotoLibraryIdentifier *)self->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier]^ 1;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__PLCPLSettings_setICPLEnabled_error___block_invoke;
    v11[3] = &unk_1E7576F80;
    v11[4] = self;
    v12 = enabledCopy;
    v7 = [(PLCPLSettings *)self _writeSettingsValue:v9 forKey:@"iCPLEnabled" persist:v8 notify:1 error:error didWriteValueBlock:v11];
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

- (PLCPLSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PLCPLSettings;
  v5 = [(PLCPLSettings *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_iCPLEnabled = [coderCopy decodeBoolForKey:@"iCPLEnabled"];
    v6->_prefetchMode = [coderCopy decodeIntegerForKey:@"PrefetchMode"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LibraryIdentifier"];
    libraryIdentifier = v6->_libraryIdentifier;
    v6->_libraryIdentifier = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeBool:self->_iCPLEnabled forKey:@"iCPLEnabled"];
  [coderCopy encodeInteger:self->_prefetchMode forKey:@"PrefetchMode"];
  libraryIdentifier = self->_libraryIdentifier;
  if (libraryIdentifier)
  {
    [coderCopy encodeObject:libraryIdentifier forKey:@"LibraryIdentifier"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (PLCPLSettings)initWithLibraryBundle:(id)bundle
{
  bundleCopy = bundle;
  v20.receiver = self;
  v20.super_class = PLCPLSettings;
  v6 = [(PLCPLSettings *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_libraryBundle, bundle);
    v8 = MEMORY[0x1E69BF188];
    libraryURL = [bundleCopy libraryURL];
    v10 = [v8 appPrivateDataForLibraryURL:libraryURL];
    appPrivateData = v7->_appPrivateData;
    v7->_appPrivateData = v10;

    libraryURL2 = [bundleCopy libraryURL];
    v13 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL2 createIfMissing:0 error:0];
    libraryIdentifier = v7->_libraryIdentifier;
    v7->_libraryIdentifier = v13;

    _readSettingsPayload = [(PLCPLSettings *)v7 _readSettingsPayload];
    if ([bundleCopy isSystemPhotoLibrary])
    {
      v16 = MEMORY[0x1E6959638];
    }

    else
    {
      if (![(PLPhotoLibraryIdentifier *)v7->_libraryIdentifier isImagePlaygroundDefaultLibraryIdentifier])
      {
        v17 = [_readSettingsPayload objectForKeyedSubscript:@"iCPLEnabled"];
        v7->_iCPLEnabled = [v17 BOOLValue];

        goto LABEL_8;
      }

      v16 = MEMORY[0x1E6959680];
    }

    v7->_iCPLEnabled = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*v16);
LABEL_8:
    v18 = [_readSettingsPayload objectForKeyedSubscript:@"PrefetchMode"];
    v7->_prefetchMode = [v18 integerValue];
  }

  return v7;
}

+ (BOOL)setPrefetchMode:(int64_t)mode withLibraryBundle:(id)bundle error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  libraryServicesManager = [bundleCopy libraryServicesManager];

  if (libraryServicesManager)
  {
    libraryServicesManager2 = [bundleCopy libraryServicesManager];

    cloudPhotoLibraryManager = [libraryServicesManager2 cloudPhotoLibraryManager];

    if (!cloudPhotoLibraryManager)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41022 userInfo:0];
      if (error)
      {
        v11 = v11;
        *error = v11;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    assetsdClient = [bundleCopy assetsdClient];

    cloudPhotoLibraryManager = [assetsdClient cloudInternalClient];

    if (!cloudPhotoLibraryManager)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E69BFF48];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"no cloud internal client";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v14 errorWithDomain:v15 code:44001 userInfo:v16];
      if (error)
      {
        v17 = v17;
        *error = v17;
      }

      goto LABEL_11;
    }
  }

  v13 = [cloudPhotoLibraryManager setPrefetchMode:mode error:error];
LABEL_12:

  return v13;
}

+ (PLCPLSettings)settingsWithLibraryBundle:(id)bundle
{
  bundleCopy = bundle;
  if (!bundleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCPLSettings.m" lineNumber:71 description:@"Missing library bundle"];
  }

  libraryServicesManager = [bundleCopy libraryServicesManager];

  if (libraryServicesManager)
  {
    libraryServicesManager2 = [bundleCopy libraryServicesManager];
    cplSettings = [libraryServicesManager2 cplSettings];
  }

  else
  {
    assetsdClient = [bundleCopy assetsdClient];
    libraryServicesManager2 = [assetsdClient cloudInternalClient];

    if (!libraryServicesManager2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCPLSettings.m" lineNumber:76 description:@"No cloudInternalClient"];
    }

    getCPLSettings = [libraryServicesManager2 getCPLSettings];
    cplSettings = getCPLSettings;
    if (getCPLSettings)
    {
      objc_storeStrong((getCPLSettings + 16), bundle);
    }
  }

  return cplSettings;
}

+ (PLCPLSettings)settingsWithPathManager:(id)manager
{
  managerCopy = manager;
  v5 = +[PLPhotoLibraryBundleController sharedBundleController];
  libraryURL = [managerCopy libraryURL];

  v7 = [v5 openBundleAtLibraryURL:libraryURL];

  v8 = [self settingsWithLibraryBundle:v7];

  return v8;
}

@end