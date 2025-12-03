@interface TLToneManager
+ (BOOL)_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:(id)path;
+ (BOOL)_migrateLegacyToneSettings;
+ (TLToneManager)sharedToneManager;
+ (id)_abbreviatedDescriptionOfMediaPlaybackArchive:(id)archive;
+ (id)_abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:(id)logging;
+ (id)_currentOverridePolicyPreferenceKeyForAlertType:(int64_t)type;
+ (id)_defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
+ (id)_defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
+ (id)_systemWideTonePreferenceKeyForAlertType:(int64_t)type;
+ (void)_migrateLegacyToneSettings;
- (BOOL)_ensureDirectoryExistsAtPath:(id)path;
- (BOOL)_hasUnderlyingPlaybackArchiveForToneIdentifier:(id)identifier;
- (BOOL)_importSyncedToneWithMetadata:(id)metadata fileName:(id)name;
- (BOOL)_loadITunesRingtoneInfoPlistAtPath:(id)path;
- (BOOL)_removeAllTones;
- (BOOL)_removeToneFromManifestAtPath:(id)path fileName:(id)name;
- (BOOL)_removeToneWithIdentifier:(id)identifier orSyncIdentifier:(id)syncIdentifier;
- (BOOL)_removeToneWithSyncIdentifier:(id)identifier;
- (BOOL)_removeTonesFromManifestAtPath:(id)path fileNames:(id)names shouldSkipReload:(BOOL)reload alreadyLockedManifest:(BOOL)manifest removedEntries:(id *)entries;
- (BOOL)_setToneIdentifierUsingService:(id)service keyedByTopic:(id)topic forPreferenceKey:(id)key;
- (BOOL)_toneWithIdentifierIsDefaultRingtone:(id)ringtone;
- (BOOL)_toneWithIdentifierIsMediaPlaybackArchive:(id)archive;
- (BOOL)_toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:(id)ringtone;
- (BOOL)_toneWithIdentifierIsSystemTone:(id)tone;
- (BOOL)_toneWithIdentifierIsValid:(id)valid;
- (BOOL)_wasAffectedByAccidentalToneDeletion;
- (BOOL)_watchPrefersSalientNotifications;
- (BOOL)hasSpecificDefaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (BOOL)toneWithIdentifierIsValid:(id)valid;
- (NSString)_deviceITunesRingtoneDirectory;
- (NSString)_deviceITunesRingtoneInformationPlist;
- (NSString)_iTunesRingtoneDirectory;
- (NSString)_iTunesRingtoneInformationPlist;
- (NSString)_systemRingtoneDirectory;
- (TLToneManager)initWithITunesRingtonePlistAtPath:(id)path;
- (double)_unduckTimeForToneIdentifier:(id)identifier;
- (id)_addToneEntries:(id)entries toManifestAtPath:(id)path mediaDirectory:(id)directory shouldSkipReload:(BOOL)reload;
- (id)_addToneToManifestAtPath:(id)path metadata:(id)metadata fileName:(id)name mediaDirectory:(id)directory;
- (id)_alarmWakeUpRingtoneDirectory;
- (id)_aliasForToneIdentifier:(id)identifier;
- (id)_allSyncedTones;
- (id)_currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(BOOL)value;
- (id)_currentToneWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)type topic:(id)topic;
- (id)_currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchToneIdentifier:(BOOL *)identifier;
- (id)_currentWatchToneIdentifierPreferenceKeyForAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultPreferablyNonSilentToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultRingtoneName;
- (id)_defaultRingtonePath;
- (id)_fileNameFromToneIdentifier:(id)identifier withPrefix:(id)prefix;
- (id)_filePathForToneIdentifier:(id)identifier isValid:(BOOL *)valid;
- (id)_importPurchasedToneWithMetadata:(id)metadata fileName:(id)name;
- (id)_installedTones;
- (id)_localizedNameOfToneWithIdentifier:(id)identifier;
- (id)_nameForToneIdentifier:(id)identifier isValid:(BOOL *)valid;
- (id)_newServiceConnection;
- (id)_previewSoundForToneIdentifier:(id)identifier;
- (id)_removeOrphanedPlistEntriesInManifestAtPath:(id)path mediaDirectory:(id)directory;
- (id)_soundForToneIdentifier:(id)identifier;
- (id)_systemEmbeddedClassicSoundDirectory;
- (id)_systemEmbeddedEncoreInfinitumSoundDirectory;
- (id)_systemEmbeddedEncoreRemixSoundDirectory;
- (id)_systemEmbeddedModernSoundDirectory;
- (id)_systemEmbeddedSoundDirectory;
- (id)_systemWatchSoundDirectory;
- (id)_toneForSyncIdentifier:(id)identifier;
- (id)_toneIdentifierForFileAtPath:(id)path isValid:(BOOL *)valid;
- (id)_toneIdentifierForMediaLibraryItemIdentifier:(unint64_t)identifier;
- (id)_toneIdentifierWithUnderlyingPlaybackArchive:(id)archive;
- (id)_tonePreferencesFromService;
- (id)_toneWithIdentifier:(id)identifier;
- (id)_tonesFromManifestPath:(id)path mediaDirectoryPath:(id)directoryPath;
- (id)_underlyingPlaybackArchiveForToneIdentifier:(id)identifier;
- (id)_unduckTimeNumberForToneIdentifier:(id)identifier fromResourceNamed:(id)named;
- (id)currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)currentToneNameForAlertType:(int64_t)type;
- (id)currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)subtitleForToneIdentifier:(id)identifier;
- (int)_lockManifestAtPath:(id)path;
- (int64_t)_currentOverridePolicyForAlertType:(int64_t)type didFindAlertOverridePolicy:(BOOL *)policy;
- (int64_t)_currentToneWatchAlertPolicyForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchAlertPolicy:(BOOL *)policy;
- (int64_t)_evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:(BOOL)done returningFilePathsForFoundOrphans:(id *)orphans wasAffectedByAccidentalToneDeletion:(BOOL *)deletion;
- (unint64_t)_installedTonesSize;
- (unsigned)currentToneSoundIDForAlertType:(int64_t)type topic:(id)topic;
- (void)_didSetTonePreferenceSuccessfullyWithKey:(id)key inDomain:(id)domain usingPreferencesOfKind:(unint64_t)kind;
- (void)_handleProtectionContentUnlockedEvent;
- (void)_handleTonePreferencesChangedNotificationForPreferencesKinds:(unint64_t)kinds;
- (void)_handleWatchPrefersSalientNotificationDidChange;
- (void)_importTone:(id)tone metadata:(id)metadata completionBlock:(id)block;
- (void)_loadSystemTones;
- (void)_loadToneIdentifierAliasMap;
- (void)_registerDidRequestResetSyncPostAccidentalToneDeletion;
- (void)_reloadTones;
- (void)_reloadTonesAfterExternalChange;
- (void)_removeAllSyncedData;
- (void)_setCurrentOverridePolicy:(int64_t)policy forAlertType:(int64_t)type;
- (void)_setCurrentToneWatchAlertPolicy:(int64_t)policy forAlertType:(int64_t)type topic:(id)topic;
- (void)_setWatchPrefersSalientNotifications:(BOOL)notifications;
- (void)dealloc;
- (void)importTone:(id)tone metadata:(id)metadata completionBlock:(id)block;
- (void)removeImportedToneWithIdentifier:(id)identifier;
- (void)setCurrentToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic;
- (void)setCurrentWatchToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic;
@end

@implementation TLToneManager

+ (TLToneManager)sharedToneManager
{
  if (sharedToneManager__TLToneManagerSharedInstanceOnceToken != -1)
  {
    +[TLToneManager sharedToneManager];
  }

  v3 = sharedToneManager__TLToneManagerSharedInstance;

  return v3;
}

uint64_t __34__TLToneManager_sharedToneManager__block_invoke()
{
  sharedToneManager__TLToneManagerSharedInstance = objc_alloc_init(TLToneManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TLToneManager)initWithITunesRingtonePlistAtPath:(id)path
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v33.receiver = self;
  v33.super_class = TLToneManager;
  v5 = [(TLToneManager *)&v33 init];
  if (v5)
  {
    _TLAlertTypeValidateConsistencyOfEnumeration();
    v6 = [[TLAccessQueue alloc] initWithLabel:@"_TLToneManagerAccessQueue" appendUUIDToLabel:1];
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v5->_shouldUseServiceToAccessTonePreferences = 0;
    v8 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    v9 = v8;
    if (v8)
    {
      CFPreferencesSynchronize(v8, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFRelease(v9);
    }

    if (+[TLPreferencesUtilities canAccessNanoRegistry])
    {
      NPSDomainAccessorClass = getNPSDomainAccessorClass();
      if (NPSDomainAccessorClass)
      {
        v11 = [NPSDomainAccessorClass alloc];
        v12 = +[TLPreferencesUtilities perWatchPreferencesDomain];
        v13 = [v11 initWithDomain:v12];

        v14 = TLLogToneManagement();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v35 = v5;
          v36 = 2114;
          v37 = v13;
          _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -init…: Instantiated domain accessor %{public}@.", buf, 0x16u);
        }

        synchronize = [v13 synchronize];
        v16 = TLLogToneManagement();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v35 = v5;
          v36 = 2114;
          v37 = v13;
          _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -init…: Synchronized domain accessor %{public}@.", buf, 0x16u);
        }
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke;
    v30[3] = &unk_1E8578900;
    v17 = v5;
    v31 = v17;
    v18 = pathCopy;
    v32 = v18;
    [(TLToneManager *)v17 _performBlockInAccessQueue:v30];
    if (!v18)
    {
      objc_initWeak(buf, v17);
      v19 = +[TLContentProtectionStateObserver sharedContentProtectionStateObserver];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke_2;
      v28[3] = &unk_1E8578928;
      objc_copyWeak(&v29, buf);
      v20 = [v19 performBlockAfterProtectedContentUnlocked:v28];
      contentProtectionStateObserverToken = v17->_contentProtectionStateObserverToken;
      v17->_contentProtectionStateObserverToken = v20;

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v17, _TLToneManagerHandleTonePreferencesDidChangeNotification, @"_TLTonePreferencesDidChangeNotification", 0, 1028);
    v23 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v23, v17, _TLToneManagerHandleWatchAlertPrefersSalientNotificationPreferenceDidChangeLocallyNotification, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0, 1028);
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v24, v17, _TLToneManagerHandleWatchAlertPrefersSalientNotificationPreferenceDidChangeRemotelyNotification, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeRemotelyNotification", 0, 1028);
    v25 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v25, v17, _TLToneManagerHandleDeviceRingtonesChangedNotification, @"com.apple.itunesstored.RingtoneAdded", 0, 1028);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadITunesRingtoneInfoPlistAtPath:*(a1 + 40)];
  [*(a1 + 32) _loadSystemTones];
  v2 = *(a1 + 32);

  return [v2 _loadToneIdentifierAliasMap];
}

void __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleProtectionContentUnlockedEvent];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = self->_accessQueue;
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.RingtoneAdded", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"_TLTonePreferencesDidChangeNotification", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeRemotelyNotification", 0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__TLToneManager_dealloc__block_invoke;
  v11[3] = &unk_1E8578950;
  v11[4] = self;
  v11[5] = &v12;
  [(TLAccessQueue *)v3 performSynchronousBlock:v11];

  if (v13[5])
  {
    v9 = +[TLContentProtectionStateObserver sharedContentProtectionStateObserver];
    [v9 cancelBlockScheduledForProtectedContentUnlockedEventWithToken:v13[5]];
  }

  _Block_object_dispose(&v12, 8);

  v10.receiver = self;
  v10.super_class = TLToneManager;
  [(TLToneManager *)&v10 dealloc];
}

void __24__TLToneManager_dealloc__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 80);
  *(v12 + 80) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = 0;
}

- (NSString)_deviceITunesRingtoneDirectory
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/Purchases"];

  return v3;
}

- (NSString)_deviceITunesRingtoneInformationPlist
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/Purchases/Ringtones.plist"];

  return v3;
}

- (NSString)_iTunesRingtoneDirectory
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/iTunes_Control/Ringtones"];

  return v3;
}

- (NSString)_iTunesRingtoneInformationPlist
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/iTunes_Control/iTunes/Ringtones.plist"];

  return v3;
}

- (NSString)_systemRingtoneDirectory
{
  v2 = CPSystemRootDirectory();

  return [v2 stringByAppendingPathComponent:@"/Library/Ringtones"];
}

- (BOOL)_loadITunesRingtoneInfoPlistAtPath:(id)path
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
    v6 = [(TLToneManager *)self _tonesFromManifestPath:pathCopy mediaDirectoryPath:_iTunesRingtoneDirectory];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
    _iTunesRingtoneDirectory2 = [(TLToneManager *)self _iTunesRingtoneDirectory];
    _iTunesRingtoneDirectory = [(TLToneManager *)self _tonesFromManifestPath:_iTunesRingtoneInformationPlist mediaDirectoryPath:_iTunesRingtoneDirectory2];

    if (_iTunesRingtoneDirectory)
    {
      [v6 addObjectsFromArray:_iTunesRingtoneDirectory];
    }

    _deviceITunesRingtoneInformationPlist = [(TLToneManager *)self _deviceITunesRingtoneInformationPlist];
    _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
    v11 = [(TLToneManager *)self _tonesFromManifestPath:_deviceITunesRingtoneInformationPlist mediaDirectoryPath:_deviceITunesRingtoneDirectory];

    if (v11)
    {
      [v6 addObjectsFromArray:v11];
    }
  }

  v12 = TLLogToneManagement();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_load…: Loaded %lu tones.", buf, 0x16u);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v16)
  {
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        identifier = [v19 identifier];
        [v13 setObject:v19 forKey:identifier];
        syncIdentifier = [v19 syncIdentifier];
        if (syncIdentifier)
        {
          [v14 setObject:identifier forKey:syncIdentifier];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v16);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__TLToneManager__loadITunesRingtoneInfoPlistAtPath___block_invoke;
  v27[3] = &unk_1E8578978;
  v27[4] = self;
  v22 = v13;
  v28 = v22;
  v30 = buf;
  v23 = v14;
  v29 = v23;
  [(TLToneManager *)self _performBlockInAccessQueue:v27];
  v24 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

void __52__TLToneManager__loadITunesRingtoneInfoPlistAtPath___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isEqualToDictionary:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (([*(*(a1 + 32) + 24) isEqualToDictionary:*(a1 + 48)] & 1) == 0)
  {
    v5 = [*(a1 + 48) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)_tonesFromManifestPath:(id)path mediaDirectoryPath:(id)directoryPath
{
  v64 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  directoryPathCopy = directoryPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:pathCopy];

  v9 = TLLogToneManagement();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138543874;
      selfCopy7 = self;
      v55 = 2114;
      v56 = pathCopy;
      v57 = 2114;
      v58 = directoryPathCopy;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): About to load tones.", buf, 0x20u);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v43 = v52 = 0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:? error:?];
    v12 = 0;
    v13 = v12;
    if (!v11 || v12)
    {
      v14 = TLLogToneManagement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v55 = 2114;
        v56 = pathCopy;
        v57 = 2114;
        v58 = directoryPathCopy;
        v59 = 2114;
        v60 = v13;
        _os_log_error_impl(&dword_1D9356000, v14, OS_LOG_TYPE_ERROR, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Couldn't load manifest: %{public}@", buf, 0x2Au);
      }
    }

    v15 = [v11 objectForKey:@"Ringtones"];
    v40 = [v15 count];
    if (!v40)
    {
      v16 = TLLogToneManagement();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v55 = 2114;
        v56 = pathCopy;
        v57 = 2114;
        v58 = directoryPathCopy;
        v59 = 2114;
        v60 = v11;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Couldn't find any tone entries in the manifest: %{public}@", buf, 0x2Au);
      }
    }

    v41 = v11;
    v42 = v13;
    v44 = pathCopy;
    [v15 allKeys];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v51 = 0u;
    v17 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v49;
      v20 = 0x1E8578000uLL;
      v45 = *v49;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = [directoryPathCopy stringByAppendingPathComponent:v22];
          v24 = objc_alloc(*(v20 + 528));
          v25 = [v15 objectForKey:v22];
          v26 = [v24 initWithPropertyListRepresentation:v25 filePath:v23];

          v27 = TLLogToneManagement();
          v28 = v27;
          if (v26)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              [v26 identifier];
              v29 = v9;
              v31 = v30 = v15;
              [v26 filePath];
              v32 = v18;
              v34 = v33 = directoryPathCopy;
              *buf = 138543874;
              selfCopy7 = self;
              v55 = 2114;
              v56 = v31;
              v57 = 2114;
              v58 = v34;
              _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath: Appending tone with identifier %{public}@ and file path: %{public}@.", buf, 0x20u);

              directoryPathCopy = v33;
              v18 = v32;

              v15 = v30;
              v9 = v29;
              v19 = v45;
              v20 = 0x1E8578000;
            }

            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v9 addObject:v26];
          }

          else
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy7 = self;
              v55 = 2114;
              v56 = v23;
              _os_log_error_impl(&dword_1D9356000, v28, OS_LOG_TYPE_ERROR, "%{public}@: _tonesFromManifestPath: Skipping inclusion of tone for file path: %{public}@.", buf, 0x16u);
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v18);
    }

    v35 = [v9 copy];
    v36 = TLLogToneManagement();
    pathCopy = v44;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v35 count];
      *buf = 138544386;
      selfCopy7 = self;
      v55 = 2114;
      v56 = v44;
      v57 = 2114;
      v58 = directoryPathCopy;
      v59 = 2048;
      v60 = v37;
      v61 = 2048;
      v62 = v40;
      _os_log_impl(&dword_1D9356000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Loaded %lu tones from %lu entries in the manifest.", buf, 0x34u);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 138543874;
      selfCopy7 = self;
      v55 = 2114;
      v56 = pathCopy;
      v57 = 2114;
      v58 = directoryPathCopy;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Manifest file does not exist. Not loading any tones.", buf, 0x20u);
    }

    v35 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_reloadTonesAfterExternalChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

void __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _loadITunesRingtoneInfoPlistAtPath:0])
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke_2;
    block[3] = &unk_1E85789A0;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_TLToneManagerContentsChangedNotification" object:*(a1 + 32)];
}

- (void)_reloadTones
{
  [(TLToneManager *)self _reloadTonesAfterExternalChange];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.RingtoneAdded", 0, 0, 1u);
}

- (id)_toneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__TLToneManager__toneWithIdentifier___block_invoke;
  v8[3] = &unk_1E85789C8;
  v10 = &v11;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __37__TLToneManager__toneWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_installedTones
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TLToneManager__installedTones__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __32__TLToneManager__installedTones__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)_installedTonesSize
{
  v27 = *MEMORY[0x1E69E9840];
  memset(&v26, 0, 512);
  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v4 = statfs([_deviceITunesRingtoneDirectory UTF8String], &v26);

  if (v4)
  {
    v5 = 4095;
  }

  else
  {
    v5 = v26.f_bsize - 1;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [(TLToneManager *)self _installedTones];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = *MEMORY[0x1E696A3B8];
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        filePath = [*(*(&v21 + 1) + 8 * i) filePath];
        v13 = [defaultManager attributesOfItemAtPath:filePath error:0];
        v14 = [v13 objectForKey:v9];
        longLongValue = [v14 longLongValue];

        v10 = v10 + ((longLongValue + v5) & ~v5);
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_addToneToManifestAtPath:(id)path metadata:(id)metadata fileName:(id)name mediaDirectory:(id)directory
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  metadataCopy = metadata;
  nameCopy = name;
  directoryCopy = directory;
  if (!nameCopy)
  {
    goto LABEL_5;
  }

  v14 = metadataCopy;
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v20 = nameCopy;
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [(TLToneManager *)self _addToneEntries:v15 toManifestAtPath:pathCopy mediaDirectory:directoryCopy shouldSkipReload:0];
  v17 = [v16 objectForKey:nameCopy];

  if (!v17)
  {
LABEL_5:
    v17 = [[TLToneImportResponse alloc] initWithStatusCode:2 toneIdentifier:0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_addToneEntries:(id)entries toManifestAtPath:(id)path mediaDirectory:(id)directory shouldSkipReload:(BOOL)reload
{
  LODWORD(v50) = reload;
  v104 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  pathCopy = path;
  directoryCopy = directory;
  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = pathCopy;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  [(TLToneManager *)self _ensureDirectoryExistsAtPath:stringByDeletingLastPathComponent];

  HIDWORD(v50) = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
  if (HIDWORD(v50) == -1)
  {
LABEL_50:
    v43 = [[TLToneImportResponse alloc] initWithStatusCode:2 toneIdentifier:0];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v44 = entriesCopy;
    v45 = [v44 countByEnumeratingWithState:&v72 objects:v93 count:16];
    if (v45)
    {
      v46 = *v73;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v73 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [v69 setObject:v43 forKey:{*(*(&v72 + 1) + 8 * i), v50}];
        }

        v45 = [v44 countByEnumeratingWithState:&v72 objects:v93 count:16];
      }

      while (v45);
    }

    goto LABEL_58;
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy_;
  v91 = __Block_byref_object_dispose_;
  v92 = 0;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke;
  v86[3] = &unk_1E8578950;
  v86[4] = self;
  v86[5] = &v87;
  [(TLToneManager *)self _performBlockInAccessQueue:v86];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v51 = v10;
  v11 = [v10 objectForKey:{@"Ringtones", v50}];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v51 setObject:v11 forKey:@"Ringtones"];
  }

  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = entriesCopy;
  v63 = v11;
  v60 = [obj countByEnumeratingWithState:&v82 objects:v103 count:16];
  if (v60)
  {
    v61 = 0;
    v59 = *v83;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v83 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v82 + 1) + 8 * j);
        v70 = [obj objectForKey:v12];
        v67 = [directoryCopy stringByAppendingPathComponent:v12];
        v66 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
        v65 = [MEMORY[0x1E6987E28] assetWithURL:?];
        hasProtectedContent = [v65 hasProtectedContent];
        v14 = [v70 mutableCopy];
        v15 = [MEMORY[0x1E696AD98] numberWithBool:hasProtectedContent];
        [v14 setObject:v15 forKey:@"Protected Content"];

        v16 = [TLITunesTone alloc];
        v17 = [directoryCopy stringByAppendingPathComponent:v12];
        v18 = [(TLITunesTone *)v16 initWithPropertyListRepresentation:v14 filePath:v17];

        identifier = [(TLITunesTone *)v18 identifier];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v20 = v88[5];
        v21 = [v20 countByEnumeratingWithState:&v78 objects:v102 count:16];
        if (v21)
        {
          v22 = *v79;
LABEL_13:
          v23 = 0;
          while (1)
          {
            if (*v79 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v78 + 1) + 8 * v23);
            if ([(TLITunesTone *)v18 isDuplicateOfTone:v24])
            {
              break;
            }

            if (v21 == ++v23)
            {
              v21 = [v20 countByEnumeratingWithState:&v78 objects:v102 count:16];
              if (v21)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }

          filePath = [v24 filePath];
          if ([defaultManager fileExistsAtPath:filePath])
          {
            identifier2 = [v24 identifier];

            v28 = TLLogToneManagement();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = objc_opt_class();
              *buf = 138543874;
              v95 = v29;
              v96 = 2114;
              v97 = v18;
              v98 = 2114;
              v99 = v24;
              v30 = v29;
              _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping import of tone %{public}@ because it's a duplicate of the following existing tone: %{public}@.", buf, 0x20u);
            }

            v31 = 1;
            goto LABEL_34;
          }

          lastPathComponent = [filePath lastPathComponent];
          v32 = [v63 objectForKey:?];
          v62 = [v32 mutableCopy];

          if (v62)
          {
            [v63 removeObjectForKey:lastPathComponent];
            v25 = v62;

            identifier2 = [v24 identifier];

            if ([filePath hasPrefix:_deviceITunesRingtoneDirectory])
            {
              [v54 addObject:filePath];
            }

            v33 = TLLogToneManagement();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = objc_opt_class();
              *buf = 138544130;
              v95 = v34;
              v96 = 2114;
              v97 = v18;
              v98 = 2114;
              v99 = v24;
              v100 = 2114;
              v101 = filePath;
              v35 = v34;
              _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Connected newly imported tone %{public}@ to old duplicate's metadata %{public}@ because its asset is missing at %{public}@.", buf, 0x2Au);
            }
          }

          else
          {
            v33 = TLLogToneManagement();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v36 = objc_opt_class();
              *buf = 138543874;
              v95 = v36;
              v96 = 2114;
              v97 = v18;
              v98 = 2114;
              v99 = v24;
              v37 = v36;
              _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Proceeding to import tone %{public}@ despite finding duplicate %{public}@ because they don't appear to be listed in the same manifest.", buf, 0x20u);
            }

            identifier2 = identifier;
            v25 = v14;
          }
        }

        else
        {
LABEL_19:
          v25 = v14;
          identifier2 = identifier;
        }

        [v63 setObject:v25 forKey:v12];
        v31 = 0;
        v61 = 1;
        v14 = v25;
LABEL_34:
        v38 = [[TLToneImportResponse alloc] initWithStatusCode:v31 toneIdentifier:identifier2];
        [v69 setObject:v38 forKey:v12];
      }

      v60 = [obj countByEnumeratingWithState:&v82 objects:v103 count:16];
    }

    while (v60);

    if ((v61 & 1) == 0)
    {
      v40 = 0;
      goto LABEL_47;
    }

    obj = [MEMORY[0x1E696AE40] dataWithPropertyList:v51 format:200 options:0 error:0];
    v39 = [obj writeToFile:v53 options:1 error:0];
    if (v39)
    {
      if ((v50 & 1) == 0)
      {
        [(TLToneManager *)self _reloadTones];
      }
    }

    else
    {
      v41 = TLLogToneManagement();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [TLToneManager _addToneEntries:toManifestAtPath:mediaDirectory:shouldSkipReload:];
      }

      [v69 removeAllObjects];
    }

    v40 = v39 ^ 1;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:
  close(SHIDWORD(v50));
  if ([v54 count])
  {
    v42 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285;
    v76[3] = &unk_1E85789F0;
    v76[4] = self;
    v77 = v54;
    [v42 removeItemsWithAssetPaths:v77 completionBlock:v76];
  }

  _Block_object_dispose(&v87, 8);
  if (v40)
  {
    goto LABEL_50;
  }

LABEL_58:

  v48 = *MEMORY[0x1E69E9840];

  return v69;
}

uint64_t __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = TLLogToneManagement();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = [v10 count];
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully removed %lu items from store download file manifest.", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285_cold_1();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeToneWithIdentifier:(id)identifier orSyncIdentifier:(id)syncIdentifier
{
  identifierCopy = identifier;
  syncIdentifierCopy = syncIdentifier;
  [(TLAccessQueue *)self->_accessQueue assertNotRunningInAccessQueue];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke;
  v14[3] = &unk_1E8578A40;
  v8 = identifierCopy;
  v15 = v8;
  v9 = syncIdentifierCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v20;
  v19 = &v24;
  [(TLToneManager *)self _performBlockInAccessQueue:v14];
  if (*(v21 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_TLToneManagerContentsChangedNotification" object:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.RingtoneAdded", 0, 0, 1u);
  }

  v12 = *(v25 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 40))
    {
      v2 = [*(*(a1 + 48) + 24) objectForKey:?];
      v3 = TLLogToneManagement();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v5 = objc_opt_class();
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        *buf = 138544130;
        v55 = v5;
        v56 = 2114;
        v57 = v6;
        v58 = 2114;
        v59 = v7;
        v60 = 2114;
        v61 = v2;
        v8 = v5;
        _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Resolved supplied sync identifier to tone identifier: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  if ([v2 length])
  {
    v9 = [*(*(a1 + 48) + 16) objectForKey:v2];
    v10 = v9;
    if (!v9)
    {
LABEL_26:

      goto LABEL_27;
    }

    v11 = [v9 filePath];
    v12 = [v11 lastPathComponent];
    v13 = [*(a1 + 48) _deviceITunesRingtoneDirectory];
    v14 = [v11 hasPrefix:v13];

    v15 = *(a1 + 48);
    if (v14)
    {
      [v15 _deviceITunesRingtoneInformationPlist];
    }

    else
    {
      [v15 _iTunesRingtoneInformationPlist];
    }
    v16 = ;
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{v12, 0}];
    *(*(*(a1 + 56) + 8) + 24) = [v17 _removeTonesFromManifestAtPath:v16 fileNames:v18 shouldSkipReload:1 alreadyLockedManifest:0 removedEntries:0];

    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
LABEL_25:

      goto LABEL_26;
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v53 = 0;
    v20 = [v19 removeItemAtPath:v11 error:&v53];
    v21 = v53;
    *(*(*(a1 + 64) + 8) + 24) = v20;

    v22 = *(*(*(a1 + 64) + 8) + 24);
    v23 = TLLogToneManagement();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 48);
        v26 = objc_opt_class();
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        *buf = 138544130;
        v55 = v26;
        v56 = 2114;
        v57 = v27;
        v58 = 2114;
        v59 = v28;
        v60 = 2114;
        v61 = v11;
        v29 = v26;
        _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Successfully deleted tone at file path '%{public}@'.", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 48);
      v44 = objc_opt_class();
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      v48 = v44;
      v45 = [v21 tl_nonRedundantDescription];
      *buf = 138544386;
      v55 = v44;
      v56 = 2114;
      v57 = v46;
      v58 = 2114;
      v59 = v47;
      v60 = 2114;
      v61 = v11;
      v62 = 2114;
      v63 = v45;
      _os_log_error_impl(&dword_1D9356000, v24, OS_LOG_TYPE_ERROR, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x34u);
    }

    v30 = [*(a1 + 48) _deviceITunesRingtoneDirectory];
    if ([v11 hasPrefix:v30])
    {
      v31 = [v11 lastPathComponent];
      v32 = [v31 hasPrefix:@"import_"];

      if (v32)
      {
LABEL_22:
        v33 = [*(*(a1 + 48) + 16) mutableCopy];
        [v33 removeObjectForKey:v2];
        v34 = [v33 copy];
        v35 = *(a1 + 48);
        v36 = *(v35 + 16);
        *(v35 + 16) = v34;

        v37 = [v10 syncIdentifier];
        if (v37)
        {
          v38 = [*(*(a1 + 48) + 24) mutableCopy];
          [v38 removeObjectForKey:v37];
          v39 = [v38 copy];
          v40 = *(a1 + 48);
          v41 = *(v40 + 24);
          *(v40 + 24) = v39;
        }

        goto LABEL_25;
      }

      v30 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288;
      v49[3] = &unk_1E8578A18;
      v49[4] = *(a1 + 48);
      v50 = *(a1 + 32);
      v51 = *(a1 + 40);
      v52 = v11;
      [v30 removeItemWithAssetPath:v52 completionBlock:v49];
    }

    goto LABEL_22;
  }

LABEL_27:

  v42 = *MEMORY[0x1E69E9840];
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288(void *a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = TLLogToneManagement();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = a1[5];
      v11 = a1[6];
      v12 = a1[7];
      v15 = 138544130;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v13 = v9;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Successfully removed item for tone at file path '%{public}@' from store download file manifest.", &v15, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288_cold_1();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeToneFromManifestAtPath:(id)path fileName:(id)name
{
  if (!name)
  {
    return 0;
  }

  v6 = MEMORY[0x1E695DFD8];
  pathCopy = path;
  v8 = [v6 setWithObjects:{name, 0}];
  LOBYTE(self) = [(TLToneManager *)self _removeTonesFromManifestAtPath:pathCopy fileNames:v8 shouldSkipReload:0 alreadyLockedManifest:0 removedEntries:0];

  return self;
}

- (BOOL)_removeTonesFromManifestAtPath:(id)path fileNames:(id)names shouldSkipReload:(BOOL)reload alreadyLockedManifest:(BOOL)manifest removedEntries:(id *)entries
{
  v45 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  namesCopy = names;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  [(TLToneManager *)self _ensureDirectoryExistsAtPath:stringByDeletingLastPathComponent];

  if (manifest)
  {
    v15 = -1;
  }

  else
  {
    v15 = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
    if (v15 == -1)
    {
      v22 = 0;
      v27 = 0;
      if (!entries)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
  v17 = v16;
  if (v16)
  {
    reloadCopy = reload;
    v35 = v15;
    selfCopy = self;
    manifestCopy = manifest;
    v38 = pathCopy;
    v39 = v16;
    v18 = [v16 objectForKey:@"Ringtones"];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = namesCopy;
    v19 = namesCopy;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          if (entries)
          {
            v26 = [v18 objectForKey:*(*(&v40 + 1) + 8 * i)];
            if (v26)
            {
              if (!v22)
              {
                v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v22 setObject:v26 forKey:v25];
            }
          }

          [v18 removeObjectForKey:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v28 = [MEMORY[0x1E696AE40] dataWithPropertyList:v39 format:200 options:0 error:0];
    pathCopy = v38;
    v27 = [v28 writeToFile:v38 options:1 error:0];
    if (v27)
    {
      namesCopy = v37;
      v29 = manifestCopy;
      if (!reloadCopy)
      {
        [(TLToneManager *)selfCopy _reloadTones];
      }
    }

    else
    {
      v30 = TLLogToneManagement();
      namesCopy = v37;
      v29 = manifestCopy;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:];
      }

      if (v22)
      {

        v22 = 0;
      }
    }

    v15 = v35;

    v17 = v39;
    if (!v29)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v22 = 0;
    v27 = 0;
    if (!manifest)
    {
LABEL_30:
      close(v15);
    }
  }

  if (entries)
  {
LABEL_32:
    *entries = [v22 copy];
  }

LABEL_33:

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

- (int)_lockManifestAtPath:(id)path
{
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v4 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"com.apple.ToneLibrary.lock"];

  v5 = open([v4 fileSystemRepresentation], 512, 438);
  if (v5 == -1)
  {
    v15 = TLLogToneManagement();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(TLToneManager *)v15 _lockManifestAtPath:v16, v17, v18, v19, v20, v21, v22];
    }

    goto LABEL_9;
  }

  v6 = v5;
  fcntl(v5, 2, 1);
  if (flock(v6, 2) == -1)
  {
    v7 = TLLogToneManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TLToneManager *)v7 _lockManifestAtPath:v8, v9, v10, v11, v12, v13, v14];
    }

    close(v6);
LABEL_9:
    v6 = -1;
  }

  return v6;
}

- (BOOL)_removeAllTones
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TLToneManager__removeAllTones__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__TLToneManager__removeAllTones__block_invoke(uint64_t a1)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) _deviceITunesRingtoneInformationPlist];
  v47[0] = v3;
  v4 = [*(a1 + 32) _iTunesRingtoneInformationPlist];
  v47[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];

  v6 = v5;
  v7 = [v5 count];
  v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v9 = 0;
  if (v7)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v6 objectAtIndex:v10];
      if ([v2 fileExistsAtPath:v12])
      {
        v13 = [*(a1 + 32) _lockManifestAtPath:v12];
        v11 &= v13 != -1;
        v9 = 1;
      }

      else
      {
        v13 = -1;
      }

      v8[v10] = v13;

      ++v10;
    }

    while (v7 != v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v14 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  v15 = *(*(a1 + 32) + 16);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __32__TLToneManager__removeAllTones__block_invoke_2;
  v43[3] = &unk_1E8578A90;
  v44 = v2;
  v45 = v14;
  v46 = *(a1 + 32);
  v16 = v14;
  [v15 enumerateKeysAndObjectsUsingBlock:v43];

  if (v7)
  {
LABEL_9:
    v38 = v9;
    v17 = 0;
    v40 = v8;
    do
    {
      v18 = [v6 objectAtIndex:v17];
      if ([v2 fileExistsAtPath:v18])
      {
        v42 = 0;
        v19 = [v2 removeItemAtPath:v18 error:&v42];
        v20 = v42;
        *(*(*(a1 + 40) + 8) + 24) = v19;
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          printf("Removed tone manifest at path '%s'.\n", [v18 UTF8String]);
        }

        else
        {
          v21 = *MEMORY[0x1E69E9848];
          v22 = [v18 UTF8String];
          v23 = [v20 tl_nonRedundantDescription];
          v36 = v22;
          v8 = v40;
          fprintf(v21, "Failed to remove item at path '%s'. Error: %s.\n", v36, [v23 UTF8String]);
        }
      }

      v24 = v8[v17];
      if (v24 != -1)
      {
        close(v24);
      }

      v25 = [v18 stringByDeletingLastPathComponent];
      v26 = [v25 stringByAppendingPathComponent:@"com.apple.ToneLibrary.lock"];

      if ([v2 fileExistsAtPath:v26])
      {
        v41 = 0;
        v27 = [v2 removeItemAtPath:v26 error:&v41];
        v28 = v41;
        *(*(*(a1 + 40) + 8) + 24) = v27;
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          printf("Removed tone manifest lock file at path '%s'.\n", [v26 UTF8String]);
        }

        else
        {
          v39 = *MEMORY[0x1E69E9848];
          v29 = [v26 UTF8String];
          [v28 tl_nonRedundantDescription];
          v30 = v2;
          v31 = a1;
          v32 = v7;
          v34 = v33 = v6;
          v37 = v29;
          v8 = v40;
          fprintf(v39, "Failed to remove item at path '%s'. Error: %s.\n", v37, [v34 UTF8String]);

          v6 = v33;
          v7 = v32;
          a1 = v31;
          v2 = v30;
        }
      }

      ++v17;
    }

    while (v7 != v17);
    v9 = v38;
  }

  free(v8);
  if ((v9 & 1) == 0)
  {
    puts("Nothing to remove.");
  }

  [*(a1 + 32) _reloadTones];

  v35 = *MEMORY[0x1E69E9840];
}

void __32__TLToneManager__removeAllTones__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 filePath];
  if (![*(a1 + 32) fileExistsAtPath:v5])
  {
    goto LABEL_24;
  }

  if ([v5 hasPrefix:*(a1 + 40)])
  {
    v6 = [v5 lastPathComponent];
    v7 = [v6 hasPrefix:@"import_"];

    if (v7)
    {
      v8 = "imported";
    }

    else
    {
      v8 = "purchased";
    }

    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 0;
    v8 = "synced";
  }

  v10 = *(a1 + 32);
  v35 = 0;
  v11 = [v10 removeItemAtPath:v5 error:&v35];
  v12 = v35;
  *(*(*(a1 + 56) + 8) + 24) = v11;
  v13 = *(*(*(a1 + 56) + 8) + 24);
  v14 = TLLogToneManagement();
  v15 = v14;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      v17 = objc_opt_class();
      *buf = 138543618;
      v37 = v17;
      v38 = 2114;
      v39 = v5;
      v18 = v17;
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAllTones: Successfully deleted tone at file path '%{public}@'.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 48);
    v28 = objc_opt_class();
    v29 = v28;
    v30 = [v12 tl_nonRedundantDescription];
    *buf = 138543874;
    v37 = v28;
    v38 = 2114;
    v39 = v5;
    v40 = 2114;
    v41 = v30;
    _os_log_error_impl(&dword_1D9356000, v15, OS_LOG_TYPE_ERROR, "%{public}@: _removeAllTones: Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x20u);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = [v5 UTF8String];
    v20 = [v12 tl_nonRedundantDescription];
    fprintf(v22, "Failed to remove item at path '%s'. Error: %s.\n", v23, [v20 UTF8String]);
    goto LABEL_17;
  }

  if (v9)
  {
    v19 = dispatch_semaphore_create(0);
    v20 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __32__TLToneManager__removeAllTones__block_invoke_298;
    v31[3] = &unk_1E8578A68;
    v34 = *(a1 + 56);
    v32 = v5;
    v33 = v19;
    v21 = v19;
    [v20 removeItemWithAssetPath:v32 completionBlock:v31];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

LABEL_17:
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if ([v4 isRingtone])
    {
      v24 = "ringtone";
    }

    else
    {
      v24 = "alert tone";
    }

    v25 = [v4 name];
    printf("Removed %s %s with name '%s' at path '%s'.\n", v8, v24, [v25 UTF8String], objc_msgSend(v5, "UTF8String"));
  }

LABEL_24:
  v26 = *MEMORY[0x1E69E9840];
}

intptr_t __32__TLToneManager__removeAllTones__block_invoke_298(void *a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v5 = *MEMORY[0x1E69E9848];
    v6 = a1[4];
    v7 = v6;
    v8 = a3;
    v9 = [v6 UTF8String];
    v10 = [v8 tl_nonRedundantDescription];

    fprintf(v5, "Failed to remove item at path '%s' from store download manifest. Error: %s.\n", v9, [v10 UTF8String]);
  }

  v11 = a1[5];

  return dispatch_semaphore_signal(v11);
}

- (id)_alarmWakeUpRingtoneDirectory
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourcePath = [v2 resourcePath];
  v4 = [resourcePath stringByAppendingPathComponent:@"AlarmWakeUpRingtones"];

  return v4;
}

- (id)_systemEmbeddedSoundDirectory
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourcePath = [v2 resourcePath];
  v4 = [resourcePath stringByAppendingPathComponent:@"AlertTones"];

  return v4;
}

- (id)_systemEmbeddedClassicSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"Classic"];

  return v3;
}

- (id)_systemEmbeddedModernSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"Modern"];

  return v3;
}

- (id)_systemEmbeddedEncoreInfinitumSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"EncoreInfinitum"];

  return v3;
}

- (id)_systemEmbeddedEncoreRemixSoundDirectory
{
  v3 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  supportsReflectionRemixes = [v3 supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
    v6 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"EncoreRemix"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_systemWatchSoundDirectory
{
  _baseDirectoryForAlertToneSoundFiles = [(TLToneManager *)self _baseDirectoryForAlertToneSoundFiles];
  v3 = [_baseDirectoryForAlertToneSoundFiles stringByAppendingPathComponent:@"nano"];

  return v3;
}

- (void)_loadSystemTones
{
  v122 = *MEMORY[0x1E69E9840];
  _systemSoundDirectory = [(TLToneManager *)self _systemSoundDirectory];
  selfCopy = self;
  _systemWatchSoundDirectory = [(TLToneManager *)self _systemWatchSoundDirectory];
  v104 = @"<none>";
  v105 = kSystemSoundID_NoneTone;
  v106 = kSystemSoundID_NoneTone;
  v108[0] = 0;
  v107 = 0;
  v108[1] = @"texttone:App Notification";
  v108[2] = 0x3F700000523;
  v108[3] = _systemSoundDirectory;
  v108[4] = @"sms-received1.caf";
  v108[5] = @"texttone:Text-Message-Alert-In-Conversation";
  v108[6] = 0x3EB00000515;
  v108[7] = _systemSoundDirectory;
  v108[8] = @"ReceivedMessage.caf";
  v108[9] = @"texttone:FaceTime-Group-Invitation";
  v108[10] = vdup_n_s32(0x4F1u);
  v108[11] = _systemWatchSoundDirectory;
  v108[12] = @"MultiwayInvitation.caf";
  v108[13] = @"texttone:FaceTime-Participant-Joined";
  v108[14] = vdup_n_s32(0x4EFu);
  v108[15] = _systemWatchSoundDirectory;
  v108[16] = @"MultiwayJoin.caf";
  v108[17] = @"texttone:Go-To-Sleep";
  v108[19] = _systemSoundDirectory;
  v108[20] = @"go_to_sleep_alert.caf";
  v108[18] = vdup_n_s32(0x486u);
  v108[21] = @"texttone:App-Notification-Critical-Alert";
  v108[22] = vdup_n_s32(0x48Du);
  v108[23] = _systemSoundDirectory;
  v108[24] = @"3rd_party_critical.caf";
  v108[25] = @"texttone:Passbook-NFC-Scan-Complete";
  v108[26] = vdup_n_s32(0x488u);
  v108[27] = _systemSoundDirectory;
  v108[28] = @"nfc_scan_complete.caf";
  v108[29] = @"texttone:Health";
  v109 = kSystemSoundID_NoneTone;
  v110 = 1262;
  v111 = _systemSoundDirectory;
  v112 = @"health_notification.caf";
  v113 = @"texttone:Health-Urgent";
  v114 = kSystemSoundID_NoneTone;
  v115 = 1363;
  v116 = _systemWatchSoundDirectory;
  v117 = @"HealthNotificationUrgent.caf";
  v118 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
  v119 = vdup_n_s32(0x552u);
  v32 = _systemWatchSoundDirectory;
  v120 = _systemWatchSoundDirectory;
  v121 = @"HeadphoneAudioExposureLimitExceeded.caf";
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = 0; i != 44; i += 4)
  {
    v6 = &(&v104)[i];
    v7 = v108[i - 1];
    v8 = v108[i];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v11 = [v7 stringByAppendingPathComponent:v8];
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    }

    v13 = [[TLSystemTone alloc] initWithSoundFileURL:v12 actualSoundID:*(v6 + 3) previewSoundID:*(v6 + 2) requiresLongFormPlayback:0];
    if (v13)
    {
      [v4 setObject:v13 forKey:*v6];
    }
  }

  _systemEmbeddedSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedSoundDirectory];
  _systemEmbeddedClassicSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedClassicSoundDirectory];
  _systemEmbeddedModernSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedModernSoundDirectory];
  [(TLToneManager *)selfCopy _systemEmbeddedEncoreInfinitumSoundDirectory];
  v17 = 0;
  v35[0] = @"texttone:Alert";
  v35[1] = _systemEmbeddedClassicSoundDirectory;
  v35[2] = @"Alert.m4r";
  v35[3] = @"texttone:Anticipate";
  v35[4] = _systemEmbeddedClassicSoundDirectory;
  v35[5] = @"Anticipate.m4r";
  v35[6] = @"texttone:Bell";
  v35[7] = _systemEmbeddedClassicSoundDirectory;
  v35[8] = @"Bell.m4r";
  v35[9] = @"texttone:Bloom";
  v35[10] = _systemEmbeddedClassicSoundDirectory;
  v35[11] = @"Bloom.m4r";
  v35[12] = @"texttone:Calypso";
  v35[13] = _systemEmbeddedClassicSoundDirectory;
  v35[14] = @"Calypso.m4r";
  v35[15] = @"texttone:Chime";
  v35[16] = _systemEmbeddedClassicSoundDirectory;
  v35[17] = @"Chime.m4r";
  v35[18] = @"texttone:Choo Choo";
  v35[19] = _systemEmbeddedClassicSoundDirectory;
  v35[20] = @"Choo Choo.m4r";
  v35[21] = @"texttone:Descent";
  v35[22] = _systemEmbeddedClassicSoundDirectory;
  v35[23] = @"Descent.m4r";
  v35[24] = @"texttone:New Mail";
  v35[25] = _systemEmbeddedClassicSoundDirectory;
  v35[26] = @"Ding.m4r";
  v35[27] = @"texttone:Electronic";
  v35[28] = _systemEmbeddedClassicSoundDirectory;
  v35[29] = @"Electronic.m4r";
  v35[30] = @"texttone:Fanfare";
  v35[31] = _systemEmbeddedClassicSoundDirectory;
  v35[32] = @"Fanfare.m4r";
  v35[33] = @"texttone:Glass";
  v35[34] = _systemEmbeddedClassicSoundDirectory;
  v35[35] = @"Glass.m4r";
  v35[36] = @"texttone:Horn";
  v35[37] = _systemEmbeddedClassicSoundDirectory;
  v35[38] = @"Horn.m4r";
  v35[39] = @"texttone:Ladder";
  v35[40] = _systemEmbeddedClassicSoundDirectory;
  v35[41] = @"Ladder.m4r";
  v35[42] = @"texttone:Minuet";
  v35[43] = _systemEmbeddedClassicSoundDirectory;
  v35[44] = @"Minuet.m4r";
  v35[45] = @"texttone:News Flash";
  v35[46] = _systemEmbeddedClassicSoundDirectory;
  v35[47] = @"News Flash.m4r";
  v35[48] = @"texttone:Noir";
  v35[49] = _systemEmbeddedClassicSoundDirectory;
  v35[50] = @"Noir.m4r";
  v35[51] = @"texttone:Sherwood Forest";
  v35[52] = _systemEmbeddedClassicSoundDirectory;
  v35[53] = @"Sherwood Forest.m4r";
  v35[54] = @"texttone:Spell";
  v35[55] = _systemEmbeddedClassicSoundDirectory;
  v35[56] = @"Spell.m4r";
  v35[57] = @"texttone:Suspense";
  v35[58] = _systemEmbeddedClassicSoundDirectory;
  v35[59] = @"Suspense.m4r";
  v35[60] = @"texttone:Sharing Post";
  v35[61] = _systemEmbeddedClassicSoundDirectory;
  v35[62] = @"Swish.m4r";
  v35[63] = @"texttone:Sent Mail";
  v35[64] = _systemEmbeddedClassicSoundDirectory;
  v35[65] = @"Swoosh.m4r";
  v35[66] = @"texttone:Telegraph";
  v35[67] = _systemEmbeddedClassicSoundDirectory;
  v35[68] = @"Telegraph.m4r";
  v35[69] = @"texttone:Tiptoes";
  v35[70] = _systemEmbeddedClassicSoundDirectory;
  v35[71] = @"Tiptoes.m4r";
  v35[72] = @"texttone:Tri-tone";
  v35[73] = _systemEmbeddedClassicSoundDirectory;
  v35[74] = @"Tri-Tone.m4r";
  v35[75] = @"texttone:Sent Tweet";
  v35[76] = _systemEmbeddedClassicSoundDirectory;
  v35[77] = @"Tweet.m4r";
  v35[78] = @"texttone:Typewriters";
  v35[79] = _systemEmbeddedClassicSoundDirectory;
  v35[80] = @"Typewriters.m4r";
  v35[81] = @"texttone:Update";
  v35[82] = _systemEmbeddedClassicSoundDirectory;
  v35[83] = @"Update.m4r";
  v35[84] = @"texttone:Note";
  v35[85] = _systemEmbeddedModernSoundDirectory;
  v35[86] = @"Note.m4r";
  v35[87] = @"texttone:Bamboo";
  v35[88] = _systemEmbeddedModernSoundDirectory;
  v35[89] = @"Bamboo.m4r";
  v35[90] = @"texttone:Complete";
  v35[91] = _systemEmbeddedModernSoundDirectory;
  v35[92] = @"Complete.m4r";
  v35[93] = @"texttone:Hello";
  v35[94] = _systemEmbeddedModernSoundDirectory;
  v35[95] = @"Hello.m4r";
  v35[96] = @"texttone:Popcorn";
  v35[97] = _systemEmbeddedModernSoundDirectory;
  v35[98] = @"Popcorn.m4r";
  v35[99] = @"texttone:Synth";
  v35[100] = _systemEmbeddedModernSoundDirectory;
  v35[101] = @"Synth.m4r";
  v35[102] = @"texttone:Aurora";
  v35[103] = _systemEmbeddedModernSoundDirectory;
  v35[104] = @"Aurora.m4r";
  v35[105] = @"texttone:Keys";
  v35[106] = _systemEmbeddedModernSoundDirectory;
  v35[107] = @"Keys.m4r";
  v35[108] = @"texttone:Circles";
  v35[109] = _systemEmbeddedModernSoundDirectory;
  v35[110] = @"Circles.m4r";
  v35[111] = @"texttone:Input";
  v35[112] = _systemEmbeddedModernSoundDirectory;
  v35[113] = @"Input.m4r";
  v36 = v35[114] = @"texttone:Antic";
  v37 = @"Antic-EncoreInfinitum.caf";
  v38 = @"texttone:Cheers";
  v39 = v36;
  v40 = @"Cheers-EncoreInfinitum.caf";
  v41 = @"texttone:Droplet";
  v42 = v36;
  v43 = @"Droplet-EncoreInfinitum.caf";
  v44 = @"texttone:Handoff";
  v45 = v36;
  v46 = @"Handoff-EncoreInfinitum.caf";
  v47 = @"texttone:Milestone";
  v48 = v36;
  v49 = @"Milestone-EncoreInfinitum.caf";
  v50 = @"texttone:Passage";
  v51 = v36;
  v52 = @"Passage-EncoreInfinitum.caf";
  v53 = @"texttone:Portal";
  v54 = v36;
  v55 = @"Portal-EncoreInfinitum.caf";
  v56 = @"texttone:Rattle";
  v57 = v36;
  v58 = @"Rattle-EncoreInfinitum.caf";
  v59 = @"texttone:Rebound";
  v60 = v36;
  v61 = @"Rebound-EncoreInfinitum.caf";
  v62 = @"texttone:Slide";
  v63 = v36;
  v64 = @"Slide-EncoreInfinitum.caf";
  v65 = @"texttone:Welcome";
  v30 = v36;
  v66 = v36;
  v67 = @"Welcome-EncoreInfinitum.caf";
  v68 = @"texttone:Calendar Alert";
  v69 = _systemEmbeddedModernSoundDirectory;
  v70 = @"Chord.m4r";
  v71 = @"texttone:Air Drop Invitation";
  v72 = _systemEmbeddedModernSoundDirectory;
  v73 = @"Pulse.m4r";
  v74 = @"texttone:Photos Sharing Post";
  v75 = _systemEmbeddedSoundDirectory;
  v76 = @"PhotosSharingPostTone.caf";
  v77 = @"texttone:Photos Memory";
  v78 = _systemEmbeddedSoundDirectory;
  v79 = @"PhotosMemoriesNotification.caf";
  v80 = @"texttone:System Background Mic Usage";
  v81 = _systemEmbeddedSoundDirectory;
  v82 = @"Background-Mic-Usage.wav";
  v83 = @"texttone:SOS-Countdown-Tick";
  v84 = _systemEmbeddedSoundDirectory;
  v85 = @"SOS-Countdown-Tick.caf";
  v86 = @"texttone:Text-Message-Acknowledgment-Heart";
  v87 = _systemEmbeddedSoundDirectory;
  v88 = @"Text-Message-Acknowledgement-Heart.caf";
  v89 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
  v90 = _systemEmbeddedSoundDirectory;
  v91 = @"Text-Message-Acknowledgement-ThumbsUp.caf";
  v92 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
  v93 = _systemEmbeddedSoundDirectory;
  v94 = @"Text-Message-Acknowledgement-ThumbsDown.caf";
  v95 = @"texttone:Text-Message-Acknowledgment-HaHa";
  v96 = _systemEmbeddedSoundDirectory;
  v97 = @"Text-Message-Acknowledgement-HaHa.caf";
  v98 = @"texttone:Text-Message-Acknowledgment-Exclamation";
  v99 = _systemEmbeddedSoundDirectory;
  v100 = @"Text-Message-Acknowledgement-Exclamation.caf";
  v101 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
  v103 = @"Text-Message-Acknowledgement-QuestionMark.caf";
  v31 = _systemEmbeddedSoundDirectory;
  v102 = _systemEmbeddedSoundDirectory;
  do
  {
    v18 = v35[v17 + 1];
    v19 = v35[v17 + 2];
    v20 = v19;
    if (v18)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v23 = [v18 stringByAppendingPathComponent:v19];
      v24 = v23;
      if (v23)
      {
        v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23 isDirectory:0];
      }

      else
      {
        v22 = 0;
      }
    }

    v25 = [TLSystemTone alloc];
    v26 = [(TLSystemTone *)v25 initWithSoundFileURL:v22 actualSoundID:kSystemSoundID_InvalidTone previewSoundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:0];
    if (v26)
    {
      [v4 setObject:v26 forKey:v35[v17]];
    }

    v17 += 3;
  }

  while (v17 != 183);
  v27 = [v4 copy];
  systemTonesByIdentifier = selfCopy->_systemTonesByIdentifier;
  selfCopy->_systemTonesByIdentifier = v27;

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_loadToneIdentifierAliasMap
{
  toneIdentifierAliasMap = self->_toneIdentifierAliasMap;
  self->_toneIdentifierAliasMap = &unk_1F54D86A0;
  MEMORY[0x1EEE66BB8]();
}

- (id)_aliasForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if (identifierCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__TLToneManager__aliasForToneIdentifier___block_invoke;
    v9[3] = &unk_1E85789C8;
    v11 = &v12;
    v9[4] = self;
    v10 = identifierCopy;
    [(TLToneManager *)self _performBlockInAccessQueue:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__TLToneManager__aliasForToneIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 40) copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    MEMORY[0x1EEE66BB8]();
  }
}

- (BOOL)_toneWithIdentifierIsDefaultRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
  v6 = [ringtoneCopy isEqualToString:defaultRingtoneIdentifier];

  return v6;
}

- (BOOL)_toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  v5 = ![(TLToneManager *)self _toneWithIdentifierIsSystemTone:ringtoneCopy]&& [(TLToneManager *)self _toneWithIdentifierIsNonDefaultSystemRingtone:ringtoneCopy];

  return v5;
}

- (BOOL)_toneWithIdentifierIsSystemTone:(id)tone
{
  toneCopy = tone;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = [toneCopy hasPrefix:@"texttone:"];
  if (v11[3])
  {
    v5 = 1;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__TLToneManager__toneWithIdentifierIsSystemTone___block_invoke;
    v7[3] = &unk_1E8578AE0;
    v7[4] = self;
    v8 = toneCopy;
    v9 = &v10;
    [(TLToneManager *)self _performBlockInAccessQueue:v7];

    v5 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  return v5 & 1;
}

void __49__TLToneManager__toneWithIdentifierIsSystemTone___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) objectForKey:v3];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (BOOL)_toneWithIdentifierIsMediaPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  if ([archiveCopy hasPrefix:@"mediaPlaybackArchive:"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TLToneManager *)self _underlyingPlaybackArchiveForToneIdentifier:archiveCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_newServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.tonelibraryd"];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54E48B0];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (id)_tonePreferencesFromService
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke;
  v17[3] = &unk_1E8578950;
  v17[4] = self;
  v17[5] = &v18;
  [(TLToneManager *)self _performBlockInAccessQueue:v17];
  v3 = v19[5];
  if (!v3)
  {
    _newServiceConnection = [(TLToneManager *)self _newServiceConnection];
    v5 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_2;
    v15[3] = &unk_1E8578B08;
    v6 = v5;
    v16 = v6;
    v7 = [_newServiceConnection remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_775;
    v12[3] = &unk_1E8578B30;
    v14 = &v18;
    v8 = v6;
    v13 = v8;
    [v7 retrieveCurrentTonePreferencesWithCompletionHandler:v12];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [_newServiceConnection invalidate];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_777;
    v11[3] = &unk_1E8578AB8;
    v11[4] = self;
    v11[5] = &v18;
    [(TLToneManager *)self _performBlockInAccessQueue:v11];

    v3 = v19[5];
  }

  v9 = v3;
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TLLogToneManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__TLToneManager__tonePreferencesFromService__block_invoke_2_cold_1(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_775(uint64_t a1, void *a2, void *a3)
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
    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__tonePreferencesFromService__block_invoke_775_cold_1(v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_setToneIdentifierUsingService:(id)service keyedByTopic:(id)topic forPreferenceKey:(id)key
{
  serviceCopy = service;
  topicCopy = topic;
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  _newServiceConnection = [(TLToneManager *)self _newServiceConnection];
  v12 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke;
  v20[3] = &unk_1E8578B08;
  v13 = v12;
  v21 = v13;
  v14 = [_newServiceConnection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778;
  v17[3] = &unk_1E8578B58;
  v19 = &v22;
  v15 = v13;
  v18 = v15;
  [v14 setCurrentToneIdentifier:serviceCopy keyedByTopic:topicCopy forPreferenceKey:keyCopy completionHandler:v17];

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  [_newServiceConnection invalidate];
  LOBYTE(v14) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TLLogToneManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_cold_1(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (v5)
  {
    v7 = TLLogToneManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778_cold_1(v6);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_systemWideTonePreferenceKeyForAlertType:(int64_t)type
{
  if ((type - 1) > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = _TLToneManagerSystemWideTonePreferenceKeys[type - 1];
  }

  return v4;
}

- (id)_currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(BOOL)value
{
  valueCopy = value;
  v59 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v9 = TLLogToneManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy14 = self;
    v53 = 2114;
    v54 = v10;
    v55 = 2114;
    v56 = topicCopy;
    v57 = 1024;
    *v58 = valueCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(%{BOOL}u).", buf, 0x26u);
  }

  v11 = [topicCopy length];
  v12 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v13 = v12;
  if (v12 && v11)
  {
    v14 = [(__CFString *)v12 stringByAppendingString:@"-per-account"];

    v13 = v14;
  }

  v15 = 0;
  LODWORD(v16) = 0;
  if (![0 length] && v13)
  {
    if (self->_shouldUseServiceToAccessTonePreferences)
    {
      _tonePreferencesFromService = [(TLToneManager *)self _tonePreferencesFromService];
      v18 = [_tonePreferencesFromService objectForKey:v13];

      v19 = TLLogToneManagement();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = NSStringFromTLAlertType(type);
        *buf = 138544130;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v20;
        v55 = 2114;
        v56 = v13;
        v57 = 2114;
        *v58 = v18;
        _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Read Preferences value for key '%{public}@' from service: %{public}@.", buf, 0x2Au);
      }

      if (v11)
      {
        v15 = [v18 objectForKey:topicCopy];
        v16 = TLLogToneManagement();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v53 = 2114;
          v54 = v21;
          v55 = 2114;
          v56 = v15;
          v22 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Per-topic: currentToneIdentifier = %{public}@.";
LABEL_23:
          _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, v22, buf, 0x20u);
        }
      }

      else
      {
        v15 = v18;
        v16 = TLLogToneManagement();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v53 = 2114;
          v54 = v21;
          v55 = 2114;
          v56 = v15;
          v22 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. currentToneIdentifier = %{public}@.";
          goto LABEL_23;
        }
      }

      LODWORD(v16) = 0;
      goto LABEL_41;
    }

    v23 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    if (!v23)
    {
      LODWORD(v16) = 0;
      v15 = 0;
      goto LABEL_41;
    }

    v24 = v23;
    v16 = CFPreferencesCopyAppValue(v13, v23);
    v25 = TLLogToneManagement();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromTLAlertType(type);
      *buf = 138544386;
      selfCopy14 = self;
      v53 = 2114;
      v54 = v26;
      v55 = 2114;
      v56 = v13;
      v57 = 2114;
      *v58 = v24;
      *&v58[8] = 2114;
      *&v58[10] = v16;
      _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Read Preferences value for key '%{public}@' from domain '%{public}@': %{public}@.", buf, 0x34u);
    }

    if (!v16)
    {
      v15 = 0;
LABEL_40:
      CFRelease(v24);
      goto LABEL_41;
    }

    if (v11)
    {
      v27 = [v16 objectForKey:topicCopy];
      v28 = TLLogToneManagement();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromTLAlertType(type);
        v29 = v49 = v27;
        *buf = 138543874;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v29;
        v55 = 2114;
        v56 = v49;
        v30 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Per-topic: persistedToneIdentifier = %{public}@.";
LABEL_29:
        _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0x20u);

        v27 = v49;
      }
    }

    else
    {
      v27 = v16;
      v28 = TLLogToneManagement();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromTLAlertType(type);
        v29 = v49 = v27;
        *buf = 138543874;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v29;
        v55 = 2114;
        v56 = v49;
        v30 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. persistedToneIdentifier = %{public}@.";
        goto LABEL_29;
      }
    }

    cf = v16;
    if ([v27 length])
    {
      v47 = [(TLToneManager *)self toneWithIdentifierIsValid:v27];
      v50 = v27;
      if (v47)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithString:v27];
        v31 = TLLogToneManagement();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v53 = 2114;
          v54 = v32;
          v55 = 2114;
          v56 = v15;
          _os_log_impl(&dword_1D9356000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. currentToneIdentifier = %{public}@.", buf, 0x20u);
        }
      }

      else
      {
        v31 = TLLogToneManagement();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = NSStringFromTLAlertType(type);
          *buf = 138543618;
          selfCopy14 = self;
          v53 = 2114;
          v54 = v33;
          _os_log_impl(&dword_1D9356000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. persistedToneIdentifierWasInvalid = YES.", buf, 0x16u);
        }

        v15 = 0;
      }

      LODWORD(v16) = !v47;

      v27 = v50;
    }

    else
    {
      LODWORD(v16) = 0;
      v15 = 0;
    }

    CFRelease(cf);

    goto LABEL_40;
  }

LABEL_41:
  if ([v15 length] || !v11)
  {
    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v34 = [(TLToneManager *)self _currentToneIdentifierForAlertType:type topic:0];

    v35 = TLLogToneManagement();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = NSStringFromTLAlertType(type);
      *buf = 138543874;
      selfCopy14 = self;
      v53 = 2114;
      v54 = v36;
      v55 = 2114;
      v56 = v34;
      _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Falling back to current tone without topic. currentToneIdentifier = %{public}@.", buf, 0x20u);
    }

    if (!v16)
    {
      v15 = v34;
      goto LABEL_62;
    }

    if ([v34 isEqualToString:@"<none>"])
    {

      v37 = TLLogToneManagement();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v38;
        v55 = 2114;
        v56 = 0;
        _os_log_impl(&dword_1D9356000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, and fallback value is none. Ignoring fallback value. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }

      v15 = 0;
    }

    else
    {
      v15 = v34;
    }
  }

  if (![v15 length])
  {
    if (valueCopy)
    {
      v39 = [(TLToneManager *)self _defaultPreferablyNonSilentToneIdentifierForAlertType:type topic:topicCopy];

      v40 = TLLogToneManagement();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v41;
        v55 = 2114;
        v56 = v39;
        _os_log_impl(&dword_1D9356000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid; falling back to non-silent default tone. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v40 = TLLogVibrationManagement();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v53 = 2114;
        v54 = v42;
        v55 = 2114;
        v56 = v15;
        _os_log_impl(&dword_1D9356000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, but falling back to non-silent default tone is disallowed. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }

      v39 = v15;
    }

    v15 = v39;
  }

LABEL_62:
  v43 = TLLogToneManagement();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = NSStringFromTLAlertType(type);
    *buf = 138544386;
    selfCopy14 = self;
    v53 = 2114;
    v54 = v44;
    v55 = 2114;
    v56 = topicCopy;
    v57 = 1024;
    *v58 = valueCopy;
    *&v58[4] = 2114;
    *&v58[6] = v15;
    _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(%{BOOL}u). Returning: %{public}@.", buf, 0x30u);
  }

  v45 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v37 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v7 = TLLogToneManagement();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromTLAlertType(type);
    v29 = 138543874;
    selfCopy10 = self;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = topicCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@).", &v29, 0x20u);
  }

  if ([TLAlert _currentOverridePolicyForType:type]!= 1)
  {
    goto LABEL_7;
  }

  v9 = @"<none>";
  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertType(type);
    v29 = 138543874;
    selfCopy10 = self;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Falling back to none due to alert override policy. toneIdentifier = %{public}@.", &v29, 0x20u);
  }

  if (!v9)
  {
LABEL_7:
    if (topicCopy)
    {
      if (type == 13)
      {
        if ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
        {
          v9 = TLLogToneManagement();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
LABEL_29:

LABEL_30:
            v9 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
            v17 = TLLogToneManagement();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = NSStringFromTLAlertType(type);
              v29 = 138543874;
              selfCopy10 = self;
              v31 = 2114;
              v32 = v18;
              v33 = 2114;
              v34 = v9;
              _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Falling back to default due missing setting in Preferences. toneIdentifier = %{public}@.", &v29, 0x20u);
            }

            goto LABEL_33;
          }

          v13 = NSStringFromTLAlertType(0xDuLL);
          v29 = 138543874;
          selfCopy10 = self;
          v31 = 2114;
          v32 = v13;
          v33 = 2114;
          v34 = topicCopy;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Skipping Preferences lookup for topic %{public}@.", &v29, 0x20u);
LABEL_28:

          goto LABEL_29;
        }
      }

      else if (type == 2)
      {
        if (([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"]& 1) != 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = [(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"];
        }

        goto LABEL_20;
      }
    }

    v12 = 0;
LABEL_20:
    v9 = [(TLToneManager *)self _currentToneIdentifierForAlertType:type topic:topicCopy];
    v14 = TLLogToneManagement();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromTLAlertType(type);
      v29 = 138543874;
      selfCopy10 = self;
      v31 = 2114;
      v32 = v15;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method: toneIdentifier = %{public}@.", &v29, 0x20u);
    }

    if (!v12 || ([(__CFString *)v9 isEqualToString:@"<none>"]& 1) != 0)
    {
      if (v9)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v13 = TLLogToneManagement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromTLAlertType(type);
      v29 = 138543874;
      selfCopy10 = self;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = @"<none>";
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method was not %{public}@; ignoring it.", &v29, 0x20u);
    }

    goto LABEL_28;
  }

LABEL_33:
  if (type == 18)
  {
    v19 = [(TLToneManager *)self currentToneIdentifierForAlertType:2 topic:topicCopy];

    v23 = TLLogToneManagement();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromTLAlertType(0x12uLL);
      v29 = 138543874;
      selfCopy10 = self;
      v31 = 2114;
      v32 = v24;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected alert type for emergency alert. Resolving to current tone identifier for text messages: toneIdentifier = %{public}@.", &v29, 0x20u);
    }

    v20 = v19;
    goto LABEL_48;
  }

  if (type == 3)
  {
    v19 = [(TLToneManager *)self currentToneIdentifierForAlertType:2 topic:topicCopy];
    if (![v19 isEqualToString:@"<none>"])
    {
      v20 = v9;
      goto LABEL_48;
    }

    v20 = @"<none>";

    v21 = TLLogToneManagement();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromTLAlertType(3uLL);
      v29 = 138543874;
      selfCopy10 = self;
      v31 = 2114;
      v32 = v22;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected alert type for text message in conversation. toneIdentifier = %{public}@.", &v29, 0x20u);
    }

    goto LABEL_43;
  }

  if (type == 2 && [(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageInConversation"]&& ([(__CFString *)v9 isEqualToString:@"<none>"]& 1) == 0)
  {

    v19 = TLLogToneManagement();
    v20 = @"texttone:Text-Message-Alert-In-Conversation";
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_48:

      v9 = v20;
      goto LABEL_49;
    }

    v21 = NSStringFromTLAlertType(2uLL);
    v29 = 138543874;
    selfCopy10 = self;
    v31 = 2114;
    v32 = v21;
    v33 = 2114;
    v34 = @"texttone:Text-Message-Alert-In-Conversation";
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected topic for text message in conversation. toneIdentifier = %{public}@.", &v29, 0x20u);
LABEL_43:

    goto LABEL_48;
  }

LABEL_49:
  v25 = TLLogToneManagement();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromTLAlertType(type);
    v29 = 138544130;
    selfCopy10 = self;
    v31 = 2114;
    v32 = v26;
    v33 = 2114;
    v34 = topicCopy;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v29, 0x2Au);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setCurrentToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  topicCopy = topic;
  v10 = [topicCopy length];
  v11 = TLLogToneManagement();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = NSStringFromTLAlertType(type);
      *v26 = 138543874;
      *&v26[4] = identifierCopy;
      *&v26[12] = 2114;
      *&v26[14] = v13;
      *&v26[22] = 2114;
      v27 = topicCopy;
      v14 = "setCurrentToneIdentifier:@%{public}@ forAlertType:%{public}@ topic:@%{public}@";
      v15 = v11;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, v14, v26, v16);
    }
  }

  else if (v12)
  {
    v13 = NSStringFromTLAlertType(type);
    *v26 = 138543618;
    *&v26[4] = identifierCopy;
    *&v26[12] = 2114;
    *&v26[14] = v13;
    v14 = "setCurrentToneIdentifier:@%{public}@ forAlertType:%{public}@";
    v15 = v11;
    v16 = 22;
    goto LABEL_6;
  }

  v17 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v18 = v17;
  if (v10 && v17)
  {
    v19 = [(__CFString *)v17 stringByAppendingString:@"-per-account"];

    v18 = v19;
  }

  if (v18)
  {
    if (self->_shouldUseServiceToAccessTonePreferences)
    {
      if (![(TLToneManager *)self _setToneIdentifierUsingService:identifierCopy keyedByTopic:topicCopy forPreferenceKey:v18])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v20 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
      if (!v20)
      {
        goto LABEL_32;
      }

      v21 = v20;
      if (v10)
      {
        v22 = CFPreferencesCopyAppValue(v18, v20);
        if (v22)
        {
          v23 = v22;
          v24 = [v22 mutableCopy];
          CFRelease(v23);
        }

        else if ([identifierCopy length])
        {
          v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        else
        {
          v24 = 0;
        }

        if ([identifierCopy length])
        {
          [v24 setObject:identifierCopy forKey:topicCopy];
        }

        else
        {
          [v24 removeObjectForKey:topicCopy];
          if (![v24 count])
          {

            v24 = 0;
          }
        }

        CFPreferencesSetAppValue(v18, v24, v21);
      }

      else
      {
        CFPreferencesSetAppValue(v18, identifierCopy, v20);
      }

      CFRelease(v21);
    }

    [(TLToneManager *)self _didSetTonePreferenceSuccessfullyWithKey:v18 inDomain:+[TLPreferencesUtilities usingPreferencesOfKind:"preferencesDomain"], 1];
    if ((!identifierCopy || ([identifierCopy isEqualToString:@"<none>"] & 1) == 0) && +[TLAlert _currentOverridePolicyForType:](TLAlert, "_currentOverridePolicyForType:", type) == 1)
    {
      [TLAlert _setCurrentOverridePolicy:0 forType:type];
    }
  }

LABEL_32:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)currentToneNameForAlertType:(int64_t)type
{
  v4 = [(TLToneManager *)self currentToneIdentifierForAlertType:type];
  v5 = [(TLToneManager *)self nameForToneIdentifier:v4];

  return v5;
}

- (unsigned)currentToneSoundIDForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v7 = [(TLToneManager *)self currentToneIdentifierForAlertType:type topic:topicCopy];
  v8 = [(TLToneManager *)self _soundForToneIdentifier:v7];
  if (!v8)
  {
    v9 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
    v8 = [(TLToneManager *)self _soundForToneIdentifier:v9];
  }

  soundID = [v8 soundID];

  return soundID;
}

+ (id)_defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v22 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  if ((type - 1) > 0x1C)
  {
    v7 = 0;
  }

  else
  {
    v7 = _TLToneManagerDefaultIdentifiers[type - 1];
    if (![(__CFString *)v7 length])
    {
      v8 = @"<none>";

      v7 = v8;
    }

    switch(type)
    {
      case 1:
        if ([topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"])
        {
          v9 = @"texttone:FaceTime-Group-Invitation";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeParticipantJoined"])
        {
          v9 = @"texttone:FaceTime-Participant-Joined";
          goto LABEL_48;
        }

        break;
      case 2:
        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-Heart";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-HaHa";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-Exclamation";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"])
        {
          v9 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
          goto LABEL_48;
        }

        break;
      case 4:
        if (_os_feature_enabled_impl())
        {
          v9 = @"texttone:Droplet";
          goto LABEL_48;
        }

        break;
      case 5:
        if ([topicCopy isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"] & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToString:", @"com.apple.mobilemail.bulletin-subsection.ThreadNotify"))
        {
          v9 = @"texttone:New Mail";
          goto LABEL_48;
        }

        break;
      case 9:
        if ([topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationSharingPost"])
        {
          v9 = @"texttone:Photos Sharing Post";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationMemory"])
        {
          v9 = @"texttone:Photos Memory";
          goto LABEL_48;
        }

        break;
      case 13:
        if ([topicCopy isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
        {
          v9 = @"texttone:Go-To-Sleep";
          goto LABEL_48;
        }

        if (([topicCopy isEqualToString:@"TLAlertTopicAlarmWakeUp"] & 1) == 0)
        {
          goto LABEL_41;
        }

        v9 = @"alarmWakeUp:Early_Riser";
        goto LABEL_48;
      case 14:
LABEL_41:
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          break;
        }

        v9 = @"system:Radial";
        goto LABEL_48;
      case 16:
        if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationBackgroundMicUsage"])
        {
          v9 = @"texttone:System Background Mic Usage";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationDoorbell"])
        {
          v9 = @"system:Doorbell";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationElevationAlert"])
        {
          v9 = @"texttone:Elevation Alert";
          goto LABEL_48;
        }

        if (([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationHeadphoneAudioExposure"] & 1) == 0)
        {
          break;
        }

        v9 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
        goto LABEL_48;
      case 17:
        if ([topicCopy isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
        {
          v9 = @"texttone:App-Notification-Critical-Alert";
          goto LABEL_48;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicAppNotificationFirstParty"])
        {
          break;
        }

LABEL_46:
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          break;
        }

        v9 = @"texttone:Rebound";
        goto LABEL_48;
      case 20:
        if (([topicCopy isEqualToString:@"TLAlertTopicPassbookNFCScanComplete"] & 1) == 0)
        {
          break;
        }

        v9 = @"texttone:Passbook-NFC-Scan-Complete";
        goto LABEL_48;
      case 22:
        if ([topicCopy isEqualToString:@"TLAlertTopicSOSCountdownTick"])
        {
          v9 = @"texttone:SOS-Countdown-Tick";
LABEL_48:

          v7 = v9;
          break;
        }

        if ([topicCopy isEqualToString:@"TLAlertTopicSOSDialStart"] & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSButtonChordingTimeout") & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSCountdownPreannounce"))
        {
          v9 = @"<none>";
          goto LABEL_48;
        }

        break;
      case 25:
        if (([topicCopy isEqualToString:@"TLAlertTopicHealthUrgent"] & 1) == 0)
        {
          break;
        }

        v9 = @"texttone:Health-Urgent";
        goto LABEL_48;
      case 29:
        goto LABEL_46;
      default:
        break;
    }
  }

  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertType(type);
    v14 = 138544130;
    selfCopy = self;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = topicCopy;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: +_defaultToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v14, 0x2Au);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v29 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  if ((type - 1) > 0x1C)
  {
    v7 = 0;
  }

  else
  {
    v7 = _TLToneManagerDefaultWatchIdentifiers[type - 1];
    if (![(__CFString *)v7 length])
    {
      v8 = @"<none>";

      v7 = v8;
    }
  }

  if (type == 28 || type == 1)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

    v11 = [v10 caseInsensitiveCompare:@"us"];
    if (type == 1)
    {
      if (([topicCopy isEqualToString:@"_TLAlertTopicIncomingCallDeemphasized"] & 1) == 0)
      {
LABEL_14:
        if (v11)
        {

          v7 = @"texttone:Incoming-Call-Haptic-UK";
        }

        goto LABEL_16;
      }
    }

    else if (![topicCopy isEqualToString:@"_TLAlertTopicClassroomDeemphasized"])
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v7 = @"texttone:Incoming-Call-Haptic-Deemphasized-UK";
    }

    else
    {
      v7 = @"texttone:Incoming-Call-Haptic-Deemphasized-US";
    }

LABEL_16:
  }

  v12 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  supportsNanoEncore = [v12 supportsNanoEncore];

  if (supportsNanoEncore)
  {
    if (type == 1)
    {
      v14 = [topicCopy isEqualToString:@"_TLAlertTopicIncomingCallDeemphasized"];

      if (v14)
      {
        v7 = @"system:Pebbles-Deemphasized";
      }

      else
      {
        v7 = @"system:Pebbles";
      }

LABEL_53:
      if ([topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"])
      {
        v15 = @"texttone:FaceTime-Group-Invitation";
      }

      else
      {
        if (([topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeParticipantJoined"] & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:FaceTime-Participant-Joined";
      }

      goto LABEL_127;
    }

    if (type > 10)
    {
      if (type > 18)
      {
        if (type != 19)
        {
          if (type != 20)
          {
            if (type == 24)
            {
LABEL_34:
              if ([topicCopy isEqualToString:@"TLAlertTopicWalkieTalkieActiveStart"])
              {
                v15 = @"texttone:Walkie-Talkie-Active-Start-Haptic";
              }

              else
              {
                if (([topicCopy isEqualToString:@"TLAlertTopicWalkieTalkieActiveEnd"] & 1) == 0)
                {
                  goto LABEL_128;
                }

                v15 = @"texttone:Walkie-Talkie-Active-End-Haptic";
              }

              goto LABEL_127;
            }

            goto LABEL_52;
          }

LABEL_25:
          if ([topicCopy isEqualToString:@"TLAlertTopicPassbookGeofence"])
          {

            v7 = @"texttone:Passbook-Geofence-Haptic";
          }

          if (([topicCopy isEqualToString:@"TLAlertTopicPassbookNFCScanComplete"] & 1) == 0)
          {
            goto LABEL_128;
          }

          v15 = @"texttone:Passbook-NFC-Scan-Complete";
LABEL_127:

          v7 = v15;
          goto LABEL_128;
        }

LABEL_36:
        if ([topicCopy isEqualToString:@"TLAlertTopicActivityGoalAttained"])
        {
          v15 = @"texttone:Activity-Goal-Attained-Haptic";
        }

        else if ([topicCopy isEqualToString:@"TLAlertTopicActivityGoalBehind"])
        {
          v15 = @"texttone:Activity-Goal-Behind-Haptic";
        }

        else
        {
          if (([topicCopy isEqualToString:@"TLAlertTopicActivityFriendsGoalAttained"] & 1) == 0)
          {
            goto LABEL_128;
          }

          v15 = @"texttone:Activity-Friends-Goal-Attained-Haptic";
        }

        goto LABEL_127;
      }

      if (type != 11)
      {
        if (type == 17)
        {

          v7 = @"texttone:Globe";
LABEL_84:
          if ([topicCopy isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
          {
            v15 = @"texttone:App-Notification-Critical-Alert";
          }

          else
          {
            if (([topicCopy isEqualToString:@"TLAlertTopicAppNotificationFirstParty"] & 1) == 0)
            {
              goto LABEL_128;
            }

            v15 = @"texttone:App-Notification-First-Party-Haptic";
          }

          goto LABEL_127;
        }

        goto LABEL_52;
      }

LABEL_64:
      v15 = @"texttone:Moment";
      goto LABEL_127;
    }

    if (type > 4)
    {
      if (type == 5)
      {

        v7 = @"texttone:Resonate";
LABEL_75:
        if (([topicCopy isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"] & 1) == 0 && (objc_msgSend(topicCopy, "isEqualToString:", @"com.apple.mobilemail.bulletin-subsection.ThreadNotify") & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:New-Mail-Haptic";
        goto LABEL_127;
      }

      if (type == 10)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (type == 2)
      {

        v7 = @"texttone:Resonate";
        goto LABEL_72;
      }

      if (type == 4)
      {
        v15 = @"texttone:Resonate";
        goto LABEL_127;
      }
    }
  }

  else
  {
    switch(type)
    {
      case 19:
        goto LABEL_36;
      case 24:
        goto LABEL_34;
      case 20:
        goto LABEL_25;
    }
  }

LABEL_52:
  if (type == 1)
  {
    goto LABEL_53;
  }

  if (type <= 15)
  {
    if (type <= 8)
    {
      if (type != 2)
      {
        if (type != 5)
        {
          goto LABEL_128;
        }

        goto LABEL_75;
      }

LABEL_72:
      if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"])
      {
        v15 = @"texttone:Text-Message-Acknowledgment-Heart";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"])
      {
        v15 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"])
      {
        v15 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"])
      {
        v15 = @"texttone:Text-Message-Acknowledgment-HaHa";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"])
      {
        v15 = @"texttone:Text-Message-Acknowledgment-Exclamation";
      }

      else
      {
        if (([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"] & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
      }

      goto LABEL_127;
    }

    if (type == 9)
    {
      if ([topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationSharingPost"])
      {
        v15 = @"texttone:Photos Sharing Post";
      }

      else
      {
        if (([topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationMemory"] & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:Photos Memory";
      }

      goto LABEL_127;
    }

    if (type != 13)
    {
      goto LABEL_128;
    }

    if ([topicCopy isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
    {
      v16 = @"texttone:Go-To-Sleep";
    }

    else
    {
      if (![topicCopy isEqualToString:@"TLAlertTopicAlarmWakeUp"])
      {
LABEL_105:
        if (([topicCopy isEqualToString:@"TLAlertTopicAlarmNightstand"] & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:Alarm-Nightstand-Haptic";
        goto LABEL_127;
      }

      v16 = @"alarmWakeUp:Early_Riser";
    }

    v7 = v16;
    goto LABEL_105;
  }

  if (type <= 21)
  {
    if (type == 16)
    {
      if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationBackgroundMicUsage"])
      {
        v15 = @"texttone:System Background Mic Usage";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationDoorbell"])
      {
        v15 = @"system:Doorbell";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationElevationAlert"])
      {
        v15 = @"texttone:Elevation Alert";
      }

      else
      {
        if (([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationHeadphoneAudioExposure"] & 1) == 0)
        {
          goto LABEL_128;
        }

        v15 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
      }

      goto LABEL_127;
    }

    if (type != 17)
    {
      goto LABEL_128;
    }

    goto LABEL_84;
  }

  if (type != 22)
  {
    if (type == 25)
    {
      if (([topicCopy isEqualToString:@"TLAlertTopicHealthUrgent"] & 1) == 0)
      {
        goto LABEL_128;
      }

      v15 = @"texttone:Health-Urgent";
    }

    else
    {
      if (type != 27)
      {
        goto LABEL_128;
      }

      if ([topicCopy isEqualToString:@"TLAlertTopicHandwashingReminder"])
      {
        v15 = @"texttone:Handwashing-Reminder";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicHandwashingSessionStart"])
      {
        v15 = @"texttone:Handwashing-Session-Start";
      }

      else
      {
        if (![topicCopy isEqualToString:@"TLAlertTopicHandwashingSessionEnd"])
        {
          goto LABEL_128;
        }

        v15 = @"texttone:Handwashing-Session-End";
      }
    }

    goto LABEL_127;
  }

  if ([topicCopy isEqualToString:@"TLAlertTopicSOSCountdownTick"])
  {
    v15 = @"texttone:SOS-Countdown-Tick";
    goto LABEL_127;
  }

  if ([topicCopy isEqualToString:@"TLAlertTopicSOSDialStart"] || objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSButtonChordingTimeout") || objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSCountdownPreannounce"))
  {
    v15 = @"<none>";
    goto LABEL_127;
  }

LABEL_128:
  v17 = TLLogToneManagement();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromTLAlertType(type);
    v21 = 138544130;
    selfCopy = self;
    v23 = 2114;
    v24 = v18;
    v25 = 2114;
    v26 = topicCopy;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: +_defaultWatchToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v21, 0x2Au);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _defaultToneIdentifierForAlertType:type topic:topicCopy];

  return v6;
}

- (id)defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _defaultWatchToneIdentifierForAlertType:type topic:topicCopy];

  return v6;
}

- (id)_defaultRingtoneName
{
  v2 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  wantsModernDefaultRingtone = [v2 wantsModernDefaultRingtone];

  if (!wantsModernDefaultRingtone || (TLLocalizedString(@"RINGTONE_PICKER_DEFAULT_MODERN_RINGTONE_NAME"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = TLLocalizedString(@"RINGTONE_PICKER_DEFAULT_RINGTONE_NAME");
  }

  return v4;
}

- (id)_defaultRingtonePath
{
  defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
  v4 = [(TLToneManager *)self filePathForToneIdentifier:defaultRingtoneIdentifier];

  return v4;
}

- (id)_defaultPreferablyNonSilentToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v6 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topic];
  v7 = [v6 isEqualToString:@"<none>"];
  if (type == 5 && v7)
  {
    v8 = [(TLToneManager *)self defaultToneIdentifierForAlertType:5 topic:@"com.apple.mobilemail.bulletin-subsection.VIP"];

    v6 = v8;
  }

  return v6;
}

- (BOOL)hasSpecificDefaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  if ([topicCopy length])
  {
    v7 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type];
    v8 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_soundForToneIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v5 = [(TLToneManager *)self _aliasForToneIdentifier:identifierCopy];
  if (-[TLToneManager _toneWithIdentifierIsSystemTone:](self, "_toneWithIdentifierIsSystemTone:", v5) || [v5 isEqualToString:@"<none>"])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__TLToneManager__soundForToneIdentifier___block_invoke;
    v16[3] = &unk_1E8578AE0;
    v16[4] = self;
    v17 = v5;
    v18 = &v19;
    [(TLToneManager *)self _performBlockInAccessQueue:v16];
  }

  else if ([(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:v5]|| [(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v5]|| [(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:v5]|| [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:v5])
  {
    if (_soundForToneIdentifier__sOnce != -1)
    {
      [TLToneManager _soundForToneIdentifier:];
    }

    if ([(TLToneManager *)self toneWithIdentifierIsValid:v5])
    {
      v11 = _soundForToneIdentifier__sSoundCacheAccessQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__TLToneManager__soundForToneIdentifier___block_invoke_3;
      v12[3] = &unk_1E85789C8;
      v15 = &v19;
      v13 = v5;
      selfCopy = self;
      dispatch_sync(v11, v12);
    }
  }

  v6 = TLLogToneManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v20[5];
    *buf = 138543618;
    v26 = identifierCopy;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "_soundForToneIdentifier %{public}@ ==> %{public}@", buf, 0x16u);
  }

  v8 = v20[5];
  _Block_object_dispose(&v19, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __41__TLToneManager__soundForToneIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 actualSound];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

uint64_t __41__TLToneManager__soundForToneIdentifier___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _soundForToneIdentifier__sSoundCache;
  _soundForToneIdentifier__sSoundCache = v0;

  _soundForToneIdentifier__sSoundCacheAccessQueue = dispatch_queue_create("com.apple.ToneLibrary.TLToneManager.soundCacheAccessQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __41__TLToneManager__soundForToneIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [_soundForToneIdentifier__sSoundCache objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = [*(a1 + 40) filePathForToneIdentifier:*(a1 + 32)];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v6 = [*(a1 + 40) _toneWithIdentifierIsAlarmWakeUp:*(a1 + 32)];
    v7 = [TLSystemSound alloc];
    v8 = [(TLSystemSound *)v7 initWithSoundFileURL:v5 soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:v6];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if ([*(*(*(a1 + 48) + 8) + 40) soundID])
    {
      [_soundForToneIdentifier__sSoundCache setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
    }

    else
    {
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }
  }
}

- (id)_filePathForToneIdentifier:(id)identifier isValid:(BOOL *)valid
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__TLToneManager__filePathForToneIdentifier_isValid___block_invoke;
  v13[3] = &unk_1E8578B80;
  v7 = identifierCopy;
  v14 = v7;
  selfCopy = self;
  v16 = &v24;
  v17 = &v18;
  [(TLToneManager *)self _performBlockInAccessQueue:v13];
  if (valid)
  {
    *valid = *(v25 + 24);
  }

  v8 = TLLogToneManagement();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v19[5];
    *buf = 138543618;
    v29 = v7;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "filePathForToneIdentifier: %{public}@ ==> %{public}@", buf, 0x16u);
  }

  v10 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __52__TLToneManager__filePathForToneIdentifier_isValid___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) length])
  {
    v6 = 0;
    goto LABEL_27;
  }

  v2 = [*(a1 + 40) _aliasForToneIdentifier:*(a1 + 32)];
  if ([*(a1 + 40) _toneWithIdentifierIsDefaultRingtone:v2])
  {
    v3 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v4 = [v3 wantsModernDefaultRingtone];

    if (v4)
    {
      v5 = @"Reflection";
    }

    else
    {
      v5 = @"Opening";
    }

    goto LABEL_9;
  }

  v7 = [*(a1 + 40) _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v2];
  v8 = *(a1 + 40);
  if (v7)
  {
    v5 = [v8 _fileNameFromToneIdentifier:v2 withPrefix:@"system:"];
LABEL_9:
    v9 = [*(a1 + 40) _systemRingtoneDirectory];
    if (_os_feature_enabled_impl())
    {
      v10 = [(__CFString *)v5 stringByAppendingString:@"-EncoreInfinitum"];
      v11 = [v9 stringByAppendingPathComponent:v10];
      v6 = [v11 stringByAppendingPathExtension:@"m4r"];

      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v12 fileExistsAtPath:v6];

      if ((v13 & 1) == 0)
      {

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v15 = [v14 supportsReflectionRemixes];

    if (v15 && !v6)
    {
      v16 = [(__CFString *)v5 stringByAppendingString:@"-EncoreRemix"];
      v17 = [v9 stringByAppendingPathComponent:v16];
      v6 = [v17 stringByAppendingPathExtension:@"m4r"];

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [v18 fileExistsAtPath:v6];

      if ((v19 & 1) == 0)
      {

        v6 = 0;
      }
    }

    if (!v6)
    {
      v20 = [v9 stringByAppendingPathComponent:v5];
      v6 = [v20 stringByAppendingPathExtension:@"m4r"];
    }

    goto LABEL_21;
  }

  v26 = [v8 _toneWithIdentifierIsAlarmWakeUp:v2];
  v27 = *(a1 + 40);
  if (v26)
  {
    v28 = [v27 _fileNameFromToneIdentifier:v2 withPrefix:@"alarmWakeUp:"];
    v29 = [*(a1 + 40) _alarmWakeUpRingtoneDirectory];
    v30 = [v29 stringByAppendingPathComponent:v28];

    v6 = [v30 stringByAppendingPathExtension:@"m4r"];
  }

  else
  {
    v31 = [v27 _toneWithIdentifierIsITunesRingtone:v2];
    v32 = *(a1 + 40);
    if (v31)
    {
      v5 = [v32[2] objectForKey:v2];
      v33 = [(__CFString *)v5 filePath];
      v6 = v33;
      if (v33)
      {
        v34 = *(a1 + 40);
        LOBYTE(v33) = [objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v6];
      }

      *(*(*(a1 + 48) + 8) + 24) = v33;
      goto LABEL_22;
    }

    if ([v32 _toneWithIdentifierIsSystemTone:v2])
    {
      v35 = [*(*(a1 + 40) + 32) objectForKey:v2];
      v5 = v35;
      if (!v35 || (-[__CFString soundFileURL](v35, "soundFileURL"), v36 = objc_claimAutoreleasedReturnValue(), [v36 path], v6 = objc_claimAutoreleasedReturnValue(), v36, !v6))
      {
        v6 = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_22;
      }

      v37 = [MEMORY[0x1E696AC08] defaultManager];
      *(*(*(a1 + 48) + 8) + 24) = [v37 fileExistsAtPath:v6];

      if (*(*(*(a1 + 48) + 8) + 24))
      {
LABEL_22:

        goto LABEL_23;
      }

      v9 = TLLogToneManagement();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 40);
        v39 = 138543618;
        v40 = v38;
        v41 = 2114;
        v42 = v6;
        _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: File DOES NOT exist at path %{public}@.", &v39, 0x16u);
      }

LABEL_21:

      goto LABEL_22;
    }

    v6 = v2;
  }

LABEL_23:
  if (!v6 || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v21 = [*(a1 + 40) _defaultRingtonePath];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v6 = v21;
  }

LABEL_27:
  v22 = [v6 copy];
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_previewSoundForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = kSystemSoundID_InvalidTone;
  if (-[TLToneManager _toneWithIdentifierIsSystemTone:](self, "_toneWithIdentifierIsSystemTone:", identifierCopy) || [identifierCopy isEqualToString:@"<none>"])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__TLToneManager__previewSoundForToneIdentifier___block_invoke;
    v15[3] = &unk_1E8578B80;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = &v23;
    v18 = &v19;
    [(TLToneManager *)self _performBlockInAccessQueue:v15];
  }

  else if ([(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy])
  {
    v5 = [(TLToneManager *)self filePathForToneIdentifier:identifierCopy];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
    v7 = [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy];
    v8 = [TLSystemSound alloc];
    v9 = [(TLSystemSound *)v8 initWithSoundFileURL:v6 soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:v7];
    v10 = v24[5];
    v24[5] = v9;

    soundID = [v24[5] soundID];
    *(v20 + 6) = soundID;
  }

  if (*(v20 + 6) == kSystemSoundID_NoneTone)
  {
    v12 = v24[5];
    v24[5] = 0;
  }

  v13 = v24[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __48__TLToneManager__previewSoundForToneIdentifier___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 previewSound];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 56) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) soundID];
  }
}

- (id)_nameForToneIdentifier:(id)identifier isValid:(BOOL *)valid
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__TLToneManager__nameForToneIdentifier_isValid___block_invoke;
  v10[3] = &unk_1E8578BA8;
  v10[4] = self;
  v7 = identifierCopy;
  v12 = &v14;
  validCopy = valid;
  v11 = v7;
  [(TLToneManager *)self _performBlockInAccessQueue:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __48__TLToneManager__nameForToneIdentifier_isValid___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  if (([*(a1 + 32) _toneWithIdentifierIsSystemTone:v2] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"<none>"))
  {
    if ([v2 isEqualToString:@"<none>"])
    {
      TLLocalizedString(@"RINGTONE_PICKER_NONE");
    }

    else
    {
      [*(a1 + 32) _localizedNameOfToneWithIdentifier:v2];
    }
    v3 = ;
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5)
    {
      *v5 = v3 != 0;
    }

    goto LABEL_40;
  }

  if (![v2 length])
  {
    v4 = 0;
    LOBYTE(v9) = 1;
    goto LABEL_38;
  }

  v6 = [*(a1 + 32) _toneWithIdentifierIsDefaultRingtone:v2];
  v7 = *(a1 + 32);
  if (v6)
  {
    goto LABEL_10;
  }

  v10 = [v7 _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v2];
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = [v11 _localizedNameOfToneWithIdentifier:v2];
    if (!v12)
    {
      v13 = *(a1 + 32);
      v14 = @"system:";
LABEL_26:
      v24 = [v13 _fileNameFromToneIdentifier:v2 withPrefix:v14];
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v15 = [v11 _toneWithIdentifierIsAlarmWakeUp:v2];
  v16 = *(a1 + 32);
  if (v15)
  {
    v12 = [v16 _localizedNameOfToneWithIdentifier:v2];
    if (!v12)
    {
      v13 = *(a1 + 32);
      v14 = @"alarmWakeUp:";
      goto LABEL_26;
    }

LABEL_19:
    v4 = v12;
    v8 = 0;
    LOBYTE(v9) = 1;
    goto LABEL_37;
  }

  v17 = [v16 _toneWithIdentifierIsITunesRingtone:v2];
  v18 = *(a1 + 32);
  if (v17)
  {
    v19 = [v18[2] objectForKey:v2];
    v20 = [v19 filePath];
    v4 = [v19 name];
    if (v4)
    {
      v21 = *(a1 + 32);
      LODWORD(v9) = [objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v20];
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v27 = TLLogToneManagement();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v35 = 138544642;
      v36 = v28;
      v37 = 2114;
      v38 = v29;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v4;
      v43 = 2114;
      v44 = v20;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking validity of tone with identifier '%{public}@': %@. Name: '%@'. File path: '%{public}@'. Is valid? %{BOOL}u.", &v35, 0x3Au);
    }

LABEL_35:
    v8 = 0;
    if (v4)
    {
      goto LABEL_37;
    }

LABEL_36:
    v4 = [*(a1 + 32) _defaultRingtoneName];
    LOBYTE(v9) = 0;
    goto LABEL_37;
  }

  v22 = [v18 _toneWithIdentifierIsMediaPlaybackArchive:v2];
  v23 = *(a1 + 32);
  if (v22)
  {
    v19 = [v23 _underlyingPlaybackArchiveForToneIdentifier:*(a1 + 40)];
    v9 = [v19 displayProperties];
    v4 = [v9 title];

    LOBYTE(v9) = v4 != 0;
    goto LABEL_35;
  }

  v25 = [v23 _defaultRingtonePath];
  v26 = [v2 isEqualToString:v25];

  if (v26)
  {
    v7 = *(a1 + 32);
LABEL_10:
    v4 = [v7 _defaultRingtoneName];
    v8 = 0;
    goto LABEL_11;
  }

  v24 = v2;
LABEL_27:
  v8 = v24;
  if (!v24)
  {
    goto LABEL_36;
  }

  v4 = [v24 lastPathComponent];
LABEL_11:
  LOBYTE(v9) = 1;
  if (!v4)
  {
    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v30 = *(a1 + 56);
  if (v30)
  {
    *v30 = v9;
  }

LABEL_40:
  v31 = [v4 copy];
  v32 = *(*(a1 + 48) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v34 = *MEMORY[0x1E69E9840];
}

- (id)subtitleForToneIdentifier:(id)identifier
{
  v3 = [(TLToneManager *)self _underlyingPlaybackArchiveForToneIdentifier:identifier];
  displayProperties = [v3 displayProperties];
  subtitle = [displayProperties subtitle];

  return subtitle;
}

- (id)_toneIdentifierForFileAtPath:(id)path isValid:(BOOL *)valid
{
  pathCopy = path;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke;
  v15[3] = &unk_1E8578AE0;
  v7 = pathCopy;
  v16 = v7;
  selfCopy = self;
  v18 = &v19;
  [(TLToneManager *)self _performBlockInAccessQueue:v15];
  v8 = v20;
  if (valid)
  {
    *valid = v20[5] != 0;
  }

  v9 = v8[5];
  if (!v9)
  {
    defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
    v11 = [defaultRingtoneIdentifier copy];
    v12 = v20[5];
    v20[5] = v11;

    v9 = v20[5];
  }

  v13 = v9;

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke(uint64_t a1)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = [*(a1 + 32) stringByDeletingLastPathComponent];
  v4 = [*(a1 + 40) _iTunesRingtoneDirectory];
  if (v4 && ([v3 isEqualToString:v4] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_deviceITunesRingtoneDirectory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v3, "isEqualToString:", v5), v5, v6))
  {
    v7 = *(*(a1 + 40) + 16);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_2;
    v37[3] = &unk_1E8578BD0;
    v38 = *(a1 + 32);
    v39 = &v40;
    [v7 enumerateKeysAndObjectsUsingBlock:v37];
    v8 = v38;
LABEL_15:

    goto LABEL_16;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _defaultRingtonePath];
  LODWORD(v9) = [v9 isEqualToString:v10];

  v11 = *(a1 + 40);
  if (v9)
  {
    v12 = [v11 defaultRingtoneIdentifier];
    v8 = v41[5];
    v41[5] = v12;
    goto LABEL_15;
  }

  v13 = [v11 _systemRingtoneDirectory];
  v14 = [v3 isEqualToString:v13];

  if (v14)
  {
    v8 = [v2 stringByDeletingPathExtension];
    v15 = [@"system:" stringByAppendingString:v8];
    v16 = v41[5];
    v41[5] = v15;

    goto LABEL_15;
  }

  v17 = [*(a1 + 40) _systemSoundDirectory];
  v18 = [v3 isEqualToString:v17];

  if (v18)
  {
    goto LABEL_14;
  }

  v19 = [*(a1 + 40) _systemEmbeddedSoundDirectory];
  v20 = [v3 isEqualToString:v19];

  if (v20)
  {
    goto LABEL_14;
  }

  v21 = [*(a1 + 40) _systemEmbeddedClassicSoundDirectory];
  v22 = [v3 isEqualToString:v21];

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = [*(a1 + 40) _systemEmbeddedModernSoundDirectory];
  v24 = [v3 isEqualToString:v23];

  if ((v24 & 1) != 0 || ([*(a1 + 40) _systemWatchSoundDirectory], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v3, "isEqualToString:", v25), v25, v26))
  {
LABEL_14:
    v27 = *(*(a1 + 40) + 32);
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_3;
    v34 = &unk_1E8578BF8;
    v35 = *(a1 + 32);
    v36 = &v40;
    [v27 enumerateKeysAndObjectsUsingBlock:&v31];
    v8 = v35;
    goto LABEL_15;
  }

LABEL_16:
  v28 = [v41[5] copy];
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  _Block_object_dispose(&v40, 8);
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [a3 filePath];
  if ([v8 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 soundFileURL];
  v9 = [v8 path];

  if ([v9 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_toneWithIdentifierIsValid:(id)valid
{
  v47 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if ([validCopy length])
  {
    v5 = [(TLToneManager *)self _aliasForToneIdentifier:validCopy];
    if ([(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:v5])
    {
      *(v38 + 24) = 1;
    }

    else if ([(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v5])
    {
      v6 = [(TLToneManager *)self _fileNameFromToneIdentifier:v5 withPrefix:@"system:"];
      _systemRingtoneDirectory = [(TLToneManager *)self _systemRingtoneDirectory];
      v8 = [_systemRingtoneDirectory stringByAppendingPathComponent:v6];

      v9 = [v8 stringByAppendingPathExtension:@"m4r"];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v11 = [defaultManager fileExistsAtPath:v9];

      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v18 = v6;
        v6 = [v18 stringByAppendingString:@"-EncoreInfinitum"];

        _systemRingtoneDirectory2 = [(TLToneManager *)self _systemRingtoneDirectory];
        v20 = [_systemRingtoneDirectory2 stringByAppendingPathComponent:v6];

        v9 = [v20 stringByAppendingPathExtension:@"m4r"];

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [defaultManager2 fileExistsAtPath:v9];

        if ((v12 & 1) == 0)
        {
          v22 = v18;

          v6 = v22;
        }
      }

      v23 = +[TLCapabilitiesManager sharedCapabilitiesManager];
      supportsReflectionRemixes = [v23 supportsReflectionRemixes];

      if (v12 & 1 | ((supportsReflectionRemixes & 1) == 0))
      {
        v25 = v6;
      }

      else
      {
        v25 = [v6 stringByAppendingString:@"-EncoreRemix"];

        _systemRingtoneDirectory3 = [(TLToneManager *)self _systemRingtoneDirectory];
        v27 = [_systemRingtoneDirectory3 stringByAppendingPathComponent:v25];

        v9 = [v27 stringByAppendingPathExtension:@"m4r"];

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [defaultManager3 fileExistsAtPath:v9];
      }

      *(v38 + 24) = v12;
    }

    else if ([(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:v5])
    {
      v13 = [(TLToneManager *)self _fileNameFromToneIdentifier:v5 withPrefix:@"alarmWakeUp:"];
      _alarmWakeUpRingtoneDirectory = [(TLToneManager *)self _alarmWakeUpRingtoneDirectory];
      v15 = [_alarmWakeUpRingtoneDirectory stringByAppendingPathComponent:v13];

      v16 = [v15 stringByAppendingPathExtension:@"m4r"];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      LOBYTE(_alarmWakeUpRingtoneDirectory) = [defaultManager4 fileExistsAtPath:v16];

      *(v38 + 24) = _alarmWakeUpRingtoneDirectory;
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __44__TLToneManager__toneWithIdentifierIsValid___block_invoke;
      v34[3] = &unk_1E85789C8;
      v36 = &v37;
      v34[4] = self;
      v35 = v5;
      [(TLToneManager *)self _performBlockInAccessQueue:v34];
    }
  }

  v29 = TLLogToneManagement();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(v38 + 24);
    *buf = 138543874;
    selfCopy = self;
    v43 = 2114;
    v44 = validCopy;
    v45 = 1024;
    v46 = v30;
    _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Performed basic check for validity of tone with identifier '%{public}@': %{BOOL}u.", buf, 0x1Cu);
  }

  v31 = *(v38 + 24);
  _Block_object_dispose(&v37, 8);

  v32 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

void __44__TLToneManager__toneWithIdentifierIsValid___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (v3)
  {
    v5 = a1[6];
    v4 = a1 + 6;
    *(*(v5 + 8) + 24) = 1;
  }

  else
  {
    v6 = [*(a1[4] + 16) objectForKey:a1[5]];
    v7 = a1[6];
    v4 = a1 + 6;
    *(*(v7 + 8) + 24) = v6 != 0;
  }

  if ((*(*(*v4 + 8) + 24) & 1) == 0)
  {
    v8 = TLLogToneManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_1(v2, v2 + 1);
    }

    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_2(v2);
    }
  }
}

- (BOOL)toneWithIdentifierIsValid:(id)valid
{
  v24 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__TLToneManager_toneWithIdentifierIsValid___block_invoke;
  v11[3] = &unk_1E8578AE0;
  v11[4] = self;
  v5 = validCopy;
  v12 = v5;
  v13 = &v14;
  [(TLToneManager *)self _performBlockInAccessQueue:v11];
  v6 = TLLogToneManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v15 + 24);
    *buf = 138543874;
    selfCopy = self;
    v20 = 2114;
    v21 = v5;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -toneWithIdentifierIsValid:(%{public}@): Returning %{BOOL}u.", buf, 0x1Cu);
  }

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __43__TLToneManager_toneWithIdentifierIsValid___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _toneWithIdentifierIsValid:*(a1 + 40)];
  v3 = v2;
  v12 = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  for (i = 0; ; ++i)
  {
    v5 = _TLToneManagerDefaultIdentifiers[i];
    if ([(__CFString *)v5 length])
    {
      break;
    }

    if (i >= 0x1C)
    {
      goto LABEL_10;
    }

LABEL_8:
    ;
  }

  v6 = [*(a1 + 40) isEqualToString:v5];

  if (i <= 0x1B && (v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (_TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiersOnceToken != -1)
  {
    __43__TLToneManager_toneWithIdentifierIsValid___block_invoke_cold_1();
  }

  if (([_TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers containsObject:*(a1 + 40)] & 1) == 0)
  {
    v7 = [*(a1 + 32) _nameForToneIdentifier:*(a1 + 40) isValid:&v12];
    v8 = TLLogToneManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138544130;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -toneWithIdentifierIsValid:(%{public}@): Double checking that we have a valid name for this tone. Name: '%@', isValid: %{BOOL}u.", buf, 0x26u);
    }

    if (!v7)
    {
      v12 = 0;
    }

    v3 = v12;
  }

LABEL_18:
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v11 = *MEMORY[0x1E69E9840];
}

void __43__TLToneManager_toneWithIdentifierIsValid___block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObjectsFromArray:&unk_1F54D86C8];
  if ([v2 count])
  {
    v0 = [v2 copy];
    v1 = _TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers;
    _TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers = v0;
  }
}

- (id)_unduckTimeNumberForToneIdentifier:(id)identifier fromResourceNamed:(id)named
{
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696AAE8];
  namedCopy = named;
  v9 = [v7 bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:namedCopy withExtension:@"plist"];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10];
    v12 = [(TLToneManager *)self _aliasForToneIdentifier:identifierCopy];
    v13 = [v11 objectForKey:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (double)_unduckTimeForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = @"ToneEarlyUnduckTimes";
  v6 = [(TLToneManager *)self _unduckTimeNumberForToneIdentifier:identifierCopy fromResourceNamed:@"ToneEarlyUnduckTimes"];
  if (v6)
  {
    v7 = v6;
LABEL_3:
    [v7 doubleValue];
    v9 = v8;

    goto LABEL_6;
  }

  v9 = 0.0;
  if (_os_feature_enabled_impl())
  {
    v5 = [@"ToneEarlyUnduckTimes" stringByAppendingString:@"-EncoreInfinitum"];
    v7 = [(TLToneManager *)self _unduckTimeNumberForToneIdentifier:identifierCopy fromResourceNamed:v5];
    if (v7)
    {
      goto LABEL_3;
    }
  }

LABEL_6:

  return v9;
}

- (void)importTone:(id)tone metadata:(id)metadata completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__TLToneManager_importTone_metadata_completionBlock___block_invoke;
  v10[3] = &unk_1E8578C20;
  v11 = blockCopy;
  v9 = blockCopy;
  [(TLToneManager *)self _importTone:tone metadata:metadata completionBlock:v10];
}

void __53__TLToneManager_importTone_metadata_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 statusCode])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v4 toneIdentifier];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_importTone:(id)tone metadata:(id)metadata completionBlock:(id)block
{
  toneCopy = tone;
  metadataCopy = metadata;
  blockCopy = block;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__TLToneManager__importTone_metadata_completionBlock___block_invoke;
  v15[3] = &unk_1E8578C48;
  v15[4] = self;
  v16 = metadataCopy;
  v17 = toneCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = toneCopy;
  v14 = metadataCopy;
  dispatch_async(v11, v15);
}

void __54__TLToneManager__importTone_metadata_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  [*(a1 + 32) _ensureDirectoryExistsAtPath:v2];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  if (v4)
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setObject:v4 forKey:@"GUID"];
    v6 = [*(a1 + 40) objectForKey:@"File Extension"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"m4r";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"import_", v4];
    v9 = [v8 stringByAppendingPathExtension:v7];

    v10 = [v2 stringByAppendingPathComponent:v9];
    v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v22 = 0;
    if ([v11 createFileAtPath:v10 contents:*(a1 + 48) attributes:0])
    {
      v12 = *(a1 + 32);
      v13 = [v12 _deviceITunesRingtoneInformationPlist];
      [*(a1 + 32) _deviceITunesRingtoneDirectory];
      v21 = v7;
      v15 = v14 = v2;
      v22 = [v12 _addToneToManifestAtPath:v13 metadata:v5 fileName:v9 mediaDirectory:v15];

      v2 = v14;
      v7 = v21;
    }

    v17 = *(a1 + 56);
    v16 = a1 + 56;
    if (v17)
    {
      v18 = v22;
      if (v22)
      {
        v19 = 0;
LABEL_12:
        v22 = v18;
        (*(*v16 + 16))();

        goto LABEL_13;
      }

LABEL_11:
      v19 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLToneImportErrorDomain" description:@"Unexpected failure to import tone."];
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v16 = a1 + 56;
    if (v20)
    {
      goto LABEL_11;
    }

    v22 = 0;
  }

LABEL_13:
}

- (void)removeImportedToneWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(TLToneManager *)self _toneWithIdentifier:identifierCopy];
    filePath = [v5 filePath];
    lastPathComponent = [filePath lastPathComponent];
    if (![lastPathComponent hasPrefix:@"import_"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [(TLToneManager *)self _removeToneWithIdentifier:identifierCopy];
    v9 = TLLogToneManagement();
    v10 = v9;
    if (v8)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:

        goto LABEL_9;
      }

      v13 = 138543874;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = filePath;
      v11 = v14;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: removeImportedToneWithIdentifier:(%{public}@): Successfully deleted tone at file path '%{public}@'.", &v13, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v13 = 138543874;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = filePath;
      v11 = v14;
      _os_log_error_impl(&dword_1D9356000, v10, OS_LOG_TYPE_ERROR, "%{public}@: removeImportedToneWithIdentifier:(%{public}@): Failed to delete tone at file path '%{public}@'.", &v13, 0x20u);
    }

    goto LABEL_8;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_importPurchasedToneWithMetadata:(id)metadata fileName:(id)name
{
  nameCopy = name;
  metadataCopy = metadata;
  _deviceITunesRingtoneInformationPlist = [(TLToneManager *)self _deviceITunesRingtoneInformationPlist];
  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v10 = [(TLToneManager *)self _addToneToManifestAtPath:_deviceITunesRingtoneInformationPlist metadata:metadataCopy fileName:nameCopy mediaDirectory:_deviceITunesRingtoneDirectory];

  return v10;
}

- (BOOL)_wasAffectedByAccidentalToneDeletion
{
  v3 = 0;
  [(TLToneManager *)self _evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:0 returningFilePathsForFoundOrphans:0 wasAffectedByAccidentalToneDeletion:&v3];
  return v3;
}

- (id)_allSyncedTones
{
  v2 = MEMORY[0x1E695DF90];
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  v4 = [v2 dictionaryWithContentsOfFile:_iTunesRingtoneInformationPlist];

  v5 = [v4 objectForKey:@"Ringtones"];

  return v5;
}

- (id)_toneForSyncIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__TLToneManager__toneForSyncIdentifier___block_invoke;
  v8[3] = &unk_1E8578AE0;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  v10 = &v11;
  [(TLToneManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __40__TLToneManager__toneForSyncIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  if (v2)
  {
    v3 = [*(a1[4] + 16) objectForKey:v2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_importSyncedToneWithMetadata:(id)metadata fileName:(id)name
{
  nameCopy = name;
  metadataCopy = metadata;
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
  v10 = [(TLToneManager *)self _addToneToManifestAtPath:_iTunesRingtoneInformationPlist metadata:metadataCopy fileName:nameCopy mediaDirectory:_iTunesRingtoneDirectory];

  LOBYTE(metadataCopy) = [v10 statusCode] == 0;
  return metadataCopy;
}

- (BOOL)_removeToneWithSyncIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(TLToneManager *)self _removeToneWithIdentifier:0 orSyncIdentifier:identifierCopy];
  v6 = TLLogToneManagement();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = identifierCopy;
      v8 = v12;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithSyncIdentifier:(%{public}@): Successfully deleted tone.", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TLToneManager _removeToneWithSyncIdentifier:];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_removeAllSyncedData
{
  v43 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  selfCopy = self;
  v6 = [(TLToneManager *)self _lockManifestAtPath:_iTunesRingtoneInformationPlist];
  if (v6 != -1)
  {
    v27 = v6;
    v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:_iTunesRingtoneInformationPlist];
    v25 = [v26 objectForKey:@"Ringtones"];
    allKeys = [v25 allKeys];
    v8 = [allKeys copy];

    v28 = _iTunesRingtoneInformationPlist;
    [defaultManager removeItemAtPath:_iTunesRingtoneInformationPlist error:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [_iTunesRingtoneDirectory stringByAppendingPathComponent:*(*(&v32 + 1) + 8 * v13)];
          v31 = 0;
          v15 = [defaultManager removeItemAtPath:v14 error:&v31];
          v16 = v31;
          v17 = TLLogToneManagement();
          v18 = v17;
          if (v15)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              *buf = 138543618;
              v37 = v19;
              v38 = 2114;
              v39 = v14;
              v20 = v19;
              _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAllSyncedData: Successfully deleted tone at file path '%{public}@'.", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v29 = v21;
            tl_nonRedundantDescription = [v16 tl_nonRedundantDescription];
            *buf = 138543874;
            v37 = v21;
            v38 = 2114;
            v39 = v14;
            v40 = 2114;
            v41 = tl_nonRedundantDescription;
            v23 = tl_nonRedundantDescription;
            _os_log_error_impl(&dword_1D9356000, v18, OS_LOG_TYPE_ERROR, "%{public}@: _removeAllSyncedData: Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x20u);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v11);
    }

    close(v27);
    [(TLToneManager *)selfCopy _reloadTones];

    _iTunesRingtoneInformationPlist = v28;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_removeOrphanedPlistEntriesInManifestAtPath:(id)path mediaDirectory:(id)directory
{
  v32 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  directoryCopy = directory;
  v8 = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
  if (v8 == -1)
  {
    v14 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
    v11 = v10;
    if (v10)
    {
      v25 = v9;
      v26 = pathCopy;
      v24 = v10;
      v12 = [v10 objectForKey:@"Ringtones"];
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [directoryCopy stringByAppendingPathComponent:v20];
            if (([objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v21] & 1) == 0)
            {
              [v13 addObject:v20];
              [v14 addObject:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }

      pathCopy = v26;
      if (![v13 count] || !-[TLToneManager _removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:](self, "_removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:", v26, v13, 1, 1, 0))
      {

        v14 = 0;
      }

      v9 = v25;
      v11 = v24;
    }

    else
    {
      v14 = 0;
    }

    close(v9);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)_evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:(BOOL)done returningFilePathsForFoundOrphans:(id *)orphans wasAffectedByAccidentalToneDeletion:(BOOL *)deletion
{
  doneCopy = done;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v9 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v10 = v9;
  if (!v9)
  {
    LOBYTE(v19) = 0;
    v18 = 0;
    goto LABEL_29;
  }

  v11 = *MEMORY[0x1E695E8B8];
  v12 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(v9, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v13 = CFPreferencesCopyAppValue(@"was-affected-by-accidental-tone-deletion", v10);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    TypeID = CFBooleanGetTypeID();
    v17 = v15 == TypeID;
    if (v15 == TypeID)
    {
      LOBYTE(v19) = CFBooleanGetValue(v14) != 0;
    }

    else
    {
      LOBYTE(v19) = 0;
      doneCopy = 1;
    }

    CFRelease(v14);
    if (!doneCopy)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 0;
    LOBYTE(v19) = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __158__TLToneManager__evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone_returningFilePathsForFoundOrphans_wasAffectedByAccidentalToneDeletion___block_invoke;
  v27[3] = &unk_1E8578AB8;
  v27[4] = self;
  v27[5] = &v28;
  [(TLToneManager *)self _performBlockInAccessQueue:v27];
  if (v19)
  {
    v19 = 1;
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (![v29[5] count])
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v19 = [v29[5] count] != 0;
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_14:
  v20 = *MEMORY[0x1E695E4D0];
  v21 = *MEMORY[0x1E695E4C0];
  if (v19)
  {
    v22 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v22 = *MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"was-affected-by-accidental-tone-deletion", v22, v10);
  if (v19)
  {
    CFPreferencesSetAppValue(@"requires-reset-sync-post-accidental-tone-deletion", v20, v10);
  }

  CFPreferencesSynchronize(v10, v11, v12);
LABEL_20:
  if (![v29[5] count])
  {
LABEL_22:
    v23 = CFPreferencesCopyAppValue(@"requires-reset-sync-post-accidental-tone-deletion", v10);
    v24 = v23;
    if (v23)
    {
      v25 = CFGetTypeID(v23);
      v18 = v25 == CFBooleanGetTypeID() && CFBooleanGetValue(v24) != 0;
      CFRelease(v24);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_28;
  }

  v18 = 1;
LABEL_28:
  CFRelease(v10);
LABEL_29:
  if (orphans)
  {
    *orphans = [v29[5] copy];
  }

  if (deletion)
  {
    *deletion = v19;
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void __158__TLToneManager__evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone_returningFilePathsForFoundOrphans_wasAffectedByAccidentalToneDeletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _deviceITunesRingtoneInformationPlist];
  v4 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  v8 = [v2 _removeOrphanedPlistEntriesInManifestAtPath:v3 mediaDirectory:v4];

  if ([v8 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (v8)
    {
      [*(*(*(a1 + 40) + 8) + 40) unionSet:v8];
    }

    [*(a1 + 32) _reloadTones];
  }
}

- (void)_registerDidRequestResetSyncPostAccidentalToneDeletion
{
  v2 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = v2;
    CFPreferencesSetAppValue(@"requires-reset-sync-post-accidental-tone-deletion", 0, v2);
    CFPreferencesSynchronize(v3, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

    CFRelease(v3);
  }
}

+ (BOOL)_migrateLegacyToneSettings
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v4 = 0;
  v59 = @"PlaySentMailSound";
  v60 = [TLPreferencesUtilities copySharedResourcesPreferencesDomainForDomain:@"com.apple.mobilemail"];
  v61[0] = 0;
  v62[0] = 6;
  v62[1] = @"PlayNewMailSound";
  v44 = [TLPreferencesUtilities copySharedResourcesPreferencesDomainForDomain:@"com.apple.mobilephone"];
  applicationID = v60;
  v62[2] = v60;
  v63 = 0;
  v64 = 5;
  v65 = @"calendar-alarm";
  v66 = v3;
  v67 = 1;
  v68 = 10;
  v69 = @"VoicemailToneEnabled";
  v70 = v44;
  v71 = 0;
  v72 = 4;
  v46 = v3;
  selfCopy = self;
  do
  {
    v5 = (&v59)[v4 / 8];
    v6 = *(&v59 + v4 / 8 + 1);
    v7 = v61[v4 / 4];
    v8 = v62[v4 / 8];
    v9 = CFPreferencesCopyAppValue(v5, v6);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    if (v7)
    {
      if (v7 == 1 && ![v9 length])
      {
LABEL_8:
        v11 = [self _systemWideTonePreferenceKeyForAlertType:v8];
        if (!v11)
        {
          v12 = TLLogGeneral();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

          if (v13)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/TLToneManager.m"];
            v15 = TLLogGeneral();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              lastPathComponent = [v14 lastPathComponent];
              callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
              *buf = 136381443;
              v52 = "+[TLToneManager _migrateLegacyToneSettings]";
              v53 = 2113;
              v54 = lastPathComponent;
              v55 = 2049;
              v56 = 3403;
              v57 = 2113;
              v58 = callStackSymbols;
              v17 = callStackSymbols;
              _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
            }
          }

          else
          {
            v14 = TLLogGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              +[(TLToneManager *)&v49];
            }
          }

          v18 = TLLogGeneral();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromTLAlertType(v8);
            *buf = 138543618;
            v52 = v19;
            v53 = 2114;
            v54 = 0;
            _os_log_error_impl(&dword_1D9356000, v18, OS_LOG_TYPE_ERROR, "Unexpected value for preferences key associated to alertType %{public}@: %{public}@.", buf, 0x16u);
          }

          v3 = v46;
          self = selfCopy;
        }

        CFPreferencesSetAppValue(v11, @"<none>", v3);
        CFPreferencesSetAppValue(v5, 0, v6);
      }
    }

    else if (([v9 BOOLValue] & 1) == 0)
    {
      goto LABEL_8;
    }

    CFRelease(v10);
LABEL_20:
    v4 += 32;
  }

  while (v4 != 128);
  v20 = *MEMORY[0x1E695E8B8];
  v21 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(v44, v20, v21);
  CFRelease(applicationID);
  CFRelease(v44);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"sms-sound", v3, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    goto LABEL_50;
  }

  v23 = AppIntegerValue;
  v24 = [selfCopy _defaultToneIdentifierForAlertType:2 topic:0];
  if (v23 <= 2)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        v25 = @"texttone:Tri-tone";
      }

      else
      {
        if (v23 != 2)
        {
          goto LABEL_39;
        }

        v25 = @"texttone:Chime";
      }
    }

    else
    {
      v25 = @"<none>";
    }

    goto LABEL_38;
  }

  if (v23 > 5)
  {
    if (v23 == 6)
    {
      v25 = @"texttone:Bell";
    }

    else
    {
      if (v23 != 7)
      {
        goto LABEL_39;
      }

      v25 = @"texttone:Electronic";
    }

    goto LABEL_38;
  }

  if (v23 == 3)
  {
    v25 = @"texttone:Glass";
LABEL_38:

    v24 = v25;
    goto LABEL_39;
  }

  if (v23 == 4)
  {
    v25 = @"texttone:Horn";
    goto LABEL_38;
  }

LABEL_39:
  v26 = [selfCopy _systemWideTonePreferenceKeyForAlertType:2];
  if (!v26)
  {
    v27 = TLLogGeneral();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);

    if (v28)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/TLToneManager.m"];
      v30 = TLLogGeneral();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent2 = [v29 lastPathComponent];
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v52 = "+[TLToneManager _migrateLegacyToneSettings]";
        v53 = 2113;
        v54 = lastPathComponent2;
        v55 = 2049;
        v56 = 3433;
        v57 = 2113;
        v58 = callStackSymbols2;
        _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v29 = TLLogGeneral();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(TLToneManager *)v29 _migrateLegacyToneSettings:v33];
      }
    }

    v40 = TLLogGeneral();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      +[(TLToneManager *)v40];
    }
  }

  CFPreferencesSetAppValue(v26, v24, v46);
  CFPreferencesSetAppValue(@"sms-sound", 0, v46);

  v3 = v46;
LABEL_50:
  CFPreferencesSetAppValue(@"was-affected-by-accidental-tone-deletion", 0, v3);
  CFPreferencesSynchronize(v3, v20, v21);
  [TLPreferencesUtilities migratePerTopicPreferencesInDomain:v3 withRegularPreferenceKeys:_TLToneManagerSystemWideTonePreferenceKeys regularPreferenceKeysCount:29 intoSinglePerTopicPreferenceWithSuffix:@"-per-account" usingPreferencesScope:0];
  CFRelease(v3);
  v41 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)_currentWatchToneIdentifierPreferenceKeyForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"watch-", v6];

  v8 = [topicCopy length];
  if (v8)
  {
    v9 = [v7 stringByAppendingString:@"-per-account"];

    v7 = v9;
  }

  return v7;
}

- (id)currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v22 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v7 = TLLogToneManagement();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromTLAlertType(type);
    v16 = 138543874;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = topicCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) topic:(%{public}@).", &v16, 0x20u);
  }

  v9 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:topicCopy didFindPersistedWatchToneIdentifier:0];
  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertType(type);
    v16 = 138543874;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method: toneIdentifier = %{public}@.", &v16, 0x20u);
  }

  if (!v9)
  {
    v9 = [(TLToneManager *)self defaultWatchToneIdentifierForAlertType:type topic:topicCopy];
    v12 = TLLogToneManagement();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromTLAlertType(type);
      v16 = 138543874;
      selfCopy3 = self;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) […]: Falling back to default due missing setting in Preferences. toneIdentifier = %{public}@.", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchToneIdentifier:(BOOL *)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v9 = [topicCopy length];
  v10 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v11 = [(TLToneManager *)self _currentWatchToneIdentifierPreferenceKeyForAlertType:type topic:topicCopy];
  if (!v11 || (NPSDomainAccessorClass = getNPSDomainAccessorClass()) == 0)
  {
    isKindOfClass = 0;
    v20 = 0;
LABEL_18:
    if (v9)
    {
      v23 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:0 didFindPersistedWatchToneIdentifier:0];

      v20 = v23;
    }

    goto LABEL_20;
  }

  v13 = [[NPSDomainAccessorClass alloc] initWithDomain:v10];
  v14 = TLLogToneManagement();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentWatchToneIdentifier…: Instantiated domain accessor %{public}@.", buf, 0x16u);
  }

  v15 = [v13 objectForKey:v11];
  v16 = TLLogToneManagement();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = v15;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentWatchToneIdentifier…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", buf, 0x2Au);
  }

  identifierCopy = identifier;
  if (v9)
  {
    objc_opt_class();
    v17 = v10;
    if (objc_opt_isKindOfClass())
    {
      v18 = [v15 objectForKey:topicCopy];
    }

    else
    {
      v18 = 0;
    }

    v21 = v9;

    v15 = v18;
  }

  else
  {
    v17 = v10;
    v21 = 0;
  }

  v22 = v13;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v9 = v21;
  v10 = v17;
  identifier = identifierCopy;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (identifier)
  {
    *identifier = isKindOfClass & 1;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)setCurrentWatchToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  topicCopy = topic;
  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy = self;
    v27 = 2114;
    v28 = identifierCopy;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = topicCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier:(%{public}@) forAlertType:(%{public}@) topic:(%{public}@)", buf, 0x2Au);
  }

  buf[0] = 0;
  v12 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:topicCopy didFindPersistedWatchToneIdentifier:buf];
  v13 = v12;
  if (buf[0] != 1)
  {
    goto LABEL_11;
  }

  v14 = v12;
  v15 = identifierCopy;
  v16 = v15;
  if (!(v15 | v14))
  {
    goto LABEL_16;
  }

  if (!v15 || !v14)
  {

LABEL_11:
    v14 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v16 = [(TLToneManager *)self _currentWatchToneIdentifierPreferenceKeyForAlertType:type topic:topicCopy];
    if (v16)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__TLToneManager_setCurrentWatchToneIdentifier_forAlertType_topic___block_invoke;
      v20[3] = &unk_1E8578C70;
      v20[4] = self;
      v14 = v14;
      v21 = v14;
      v22 = topicCopy;
      v16 = v16;
      v23 = v16;
      v24 = identifierCopy;
      [(TLToneManager *)self _performBlockInAccessQueue:v20];
    }

    else
    {
      v18 = TLLogToneManagement();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager setCurrentWatchToneIdentifier:type forAlertType:? topic:?];
      }
    }

    goto LABEL_16;
  }

  if (v14 != v15)
  {
    v17 = [v14 isEqualToString:v15];

    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

LABEL_16:

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
}

void __66__TLToneManager_setCurrentWatchToneIdentifier_forAlertType_topic___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v6 = TLLogToneManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v24 = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v3;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v24, 0x16u);
  }

  v4 = 1;
LABEL_8:
  if ([*(a1 + 48) length])
  {
    v8 = [v3 objectForKey:*(a1 + 56)];
    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v24 = 138544130;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v3;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", &v24, 0x2Au);
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
    v17 = *(a1 + 64);
    if (v17)
    {
      [v12 setObject:v17 forKey:*(a1 + 48)];
    }

    else
    {
      [v12 removeObjectForKey:*(a1 + 48)];
    }

    [v3 setObject:v13 forKey:*(a1 + 56)];
    v18 = TLLogToneManagement();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v24 = 138544130;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v3;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v24, 0x2Au);
    }
  }

  else
  {
    [v3 setObject:*(a1 + 64) forKey:*(a1 + 56)];
    v13 = TLLogToneManagement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v24 = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v3;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v24, 0x2Au);
    }
  }

  [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:*(a1 + 56) inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  if (v4)
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 64);
    *(v21 + 64) = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_currentToneWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"sound-identifier" withString:@"sound"];

  v8 = [v7 stringByAppendingString:@"-watch-alert-policy"];

  v9 = [topicCopy length];
  if (v9)
  {
    v10 = [v8 stringByAppendingString:@"-per-account"];

    v8 = v10;
  }

  return v8;
}

- (int64_t)_currentToneWatchAlertPolicyForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchAlertPolicy:(BOOL *)policy
{
  v33 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  if ((type - 13) >= 2)
  {
    if (type == 17)
    {
      v10 = +[TLCapabilitiesManager sharedCapabilitiesManager];
      supportsNanoEncore = [v10 supportsNanoEncore];

      v9 = supportsNanoEncore ^ 1u;
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

  v12 = [topicCopy length];
  v13 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v14 = [(TLToneManager *)self _currentToneWatchAlertPolicyPreferenceKeyForAlertType:type topic:topicCopy];
  if (!v14 || (NPSDomainAccessorClass = getNPSDomainAccessorClass()) == 0)
  {
    isKindOfClass = 0;
LABEL_21:
    if (v12)
    {
      v9 = [(TLToneManager *)self _currentToneWatchAlertPolicyForAlertType:type topic:0 didFindPersistedWatchAlertPolicy:0];
    }

    goto LABEL_23;
  }

  v16 = [[NPSDomainAccessorClass alloc] initWithDomain:v13];
  v17 = TLLogToneManagement();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v27 = 2114;
    v28 = v16;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneWatchAlertPolicy…: Instantiated domain accessor %{public}@.", buf, 0x16u);
  }

  v24 = v16;
  v18 = [v16 objectForKey:v14];
  v19 = TLLogToneManagement();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v24;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", buf, 0x2Au);
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v18 objectForKey:topicCopy];
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
  if (policy)
  {
    *policy = isKindOfClass & 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_setCurrentToneWatchAlertPolicy:(int64_t)policy forAlertType:(int64_t)type topic:(id)topic
{
  v32 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v9 = TLLogToneManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromTLWatchAlertPolicy(policy);
    v11 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy = self;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = topicCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy:(%{public}@) forAlertType:(%{public}@) topic:(%{public}@)", buf, 0x2Au);
  }

  if (policy == 3)
  {
    v12 = [(TLToneManager *)self currentToneIdentifierForAlertType:type topic:topicCopy];
    if ([v12 isEqualToString:@"<none>"])
    {
      policy = 2;
    }

    else
    {
      policy = 1;
    }
  }

  buf[0] = 0;
  v13 = [(TLToneManager *)self _currentToneWatchAlertPolicyForAlertType:type topic:topicCopy didFindPersistedWatchAlertPolicy:buf];
  if (buf[0] != 1 || v13 != policy)
  {
    v14 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v15 = [(TLToneManager *)self _currentToneWatchAlertPolicyPreferenceKeyForAlertType:type topic:topicCopy];
    if (v15)
    {
      v16 = NSStringFromTLWatchAlertPolicy(policy);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__TLToneManager__setCurrentToneWatchAlertPolicy_forAlertType_topic___block_invoke;
      v19[3] = &unk_1E8578C70;
      v19[4] = self;
      v20 = v14;
      v21 = topicCopy;
      v22 = v15;
      v23 = v16;
      v17 = v16;
      [(TLToneManager *)self _performBlockInAccessQueue:v19];
    }

    else
    {
      v17 = TLLogToneManagement();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _setCurrentToneWatchAlertPolicy:type forAlertType:? topic:?];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __68__TLToneManager__setCurrentToneWatchAlertPolicy_forAlertType_topic___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v6 = TLLogToneManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v23 = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v3;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v23, 0x16u);
  }

  v4 = 1;
LABEL_8:
  if ([*(a1 + 48) length])
  {
    v8 = [v3 objectForKey:*(a1 + 56)];
    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v23 = 138544130;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v3;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", &v23, 0x2Au);
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
    v17 = TLLogToneManagement();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 56);
      v23 = 138544130;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v3;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v23, 0x2Au);
    }
  }

  else
  {
    [v3 setObject:*(a1 + 64) forKey:*(a1 + 56)];
    v13 = TLLogToneManagement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v23 = 138544130;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      v27 = 2114;
      v28 = v3;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v23, 0x2Au);
    }
  }

  [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:*(a1 + 56) inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  if (v4)
  {
    v20 = *(a1 + 32);
    v21 = *(v20 + 64);
    *(v20 + 64) = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)_watchPrefersSalientNotifications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__TLToneManager__watchPrefersSalientNotifications__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__TLToneManager__watchPrefersSalientNotifications__block_invoke(uint64_t a1)
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 57) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v2 + 56);
    v3 = TLLogToneManagement();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(*(*(a1 + 40) + 8) + 24);
      v15 = 138543618;
      v16 = v4;
      v17 = 1024;
      *v18 = v5;
      _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: _watchPrefersSalientNotifications: Returning %{BOOL}u from cache.", &v15, 0x12u);
    }

LABEL_10:

    goto LABEL_11;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (NPSDomainAccessorClass)
  {
    v7 = NPSDomainAccessorClass;
    v3 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v8 = [[v7 alloc] initWithDomain:v3];
    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      *v18 = v8;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_watchPrefersSalientNotifications: Instantiated domain accessor %{public}@.", &v15, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLForKey:@"watch-prefers-salient-notification"];
    *(*(a1 + 32) + 56) = *(*(*(a1 + 40) + 8) + 24);
    *(*(a1 + 32) + 57) = 1;
    v11 = TLLogToneManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 40) + 8) + 24);
      v15 = 138543874;
      v16 = v12;
      v17 = 1024;
      *v18 = v13;
      v18[2] = 2114;
      *&v18[3] = v8;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: _watchPrefersSalientNotifications: Read %{BOOL}u from %{public}@; caching this value, and returning it.", &v15, 0x1Cu);
    }

    goto LABEL_10;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setWatchPrefersSalientNotifications:(BOOL)notifications
{
  v5 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TLToneManager__setWatchPrefersSalientNotifications___block_invoke;
  v7[3] = &unk_1E8578C98;
  v7[4] = self;
  v8 = v5;
  notificationsCopy = notifications;
  v6 = v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v7];
}

void __54__TLToneManager__setWatchPrefersSalientNotifications___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v6 = TLLogToneManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v19 = 138543618;
    v20 = v7;
    v21 = 2114;
    *v22 = v3;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setWatchPrefersSalientNotifications…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v19, 0x16u);
  }

  v4 = 1;
LABEL_8:
  v8 = [v3 BOOLForKey:@"watch-prefers-salient-notification"];
  v9 = TLLogToneManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v19 = 138543874;
    v20 = v10;
    v21 = 1024;
    *v22 = v8;
    *&v22[4] = 2114;
    *&v22[6] = v3;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: _setWatchPrefersSalientNotifications…: Read didWatchAlreadyPreferSalientNotifications = %{BOOL}u from %{public}@.", &v19, 0x1Cu);
  }

  v11 = *(a1 + 48);
  if (v11 != v8)
  {
    [v3 setBool:v11 forKey:@"watch-prefers-salient-notification"];
    v12 = TLLogToneManagement();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v19 = 138544130;
      v20 = v13;
      v21 = 2114;
      *v22 = @"watch-prefers-salient-notification";
      *&v22[8] = 2114;
      *&v22[10] = v3;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setWatchPrefersSalientNotifications…: Did set BOOLean value for key %{public}@ on %{public}@: %{BOOL}u.", &v19, 0x26u);
    }

    [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:@"watch-prefers-salient-notification" inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  }

  if (v4)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    *(v15 + 64) = 0;
  }

  if (*(a1 + 48) != v8)
  {
    [*(a1 + 32) _handleWatchPrefersSalientNotificationDidChange];
    *(*(a1 + 32) + 58) = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0, 0, 1u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleWatchPrefersSalientNotificationDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

void __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 57);
  *(v2 + 57) = 0;
  if (v3 != [*(a1 + 32) _watchPrefersSalientNotifications] || (v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = +[TLToneManager sharedToneManager];

    if (v5 == v6)
    {
      v7 = dispatch_get_global_queue(0, 0);
      dispatch_async(v7, &__block_literal_global_934);
    }
  }
}

void __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_TLAlertWatchPrefersSalientToneAndVibrationDidChangeNotification" object:0];
}

+ (id)_currentOverridePolicyPreferenceKeyForAlertType:(int64_t)type
{
  v3 = [self _systemWideTonePreferenceKeyForAlertType:type];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-sound-identifier" withString:&stru_1F54CFF40];

  v5 = [v4 stringByAppendingString:@"-alert-override-policy"];

  return v5;
}

- (int64_t)_currentOverridePolicyForAlertType:(int64_t)type didFindAlertOverridePolicy:(BOOL *)policy
{
  v5 = [objc_opt_class() _currentOverridePolicyPreferenceKeyForAlertType:type];
  if (!v5 || (v6 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain]) == 0)
  {
    v12 = 0;
    v14 = 0;
    if (!policy)
    {
      goto LABEL_9;
    }

LABEL_8:
    *policy = v12;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = CFPreferencesCopyAppValue(v5, v6);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    TypeID = CFStringGetTypeID();
    v12 = v10 == TypeID;
    if (v10 == TypeID)
    {
      v14 = TLAlertOverridePolicyFromString(v9);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  CFRelease(v7);
  if (policy)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v14;
}

- (void)_setCurrentOverridePolicy:(int64_t)policy forAlertType:(int64_t)type
{
  v14 = 0;
  v7 = [(TLToneManager *)self _currentOverridePolicyForAlertType:type didFindAlertOverridePolicy:&v14];
  if (v14 != 1 || v7 != policy)
  {
    v9 = [objc_opt_class() _currentOverridePolicyPreferenceKeyForAlertType:type];
    if (v9)
    {
      v10 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
      if (v10)
      {
        v11 = v10;
        v12 = NSStringFromTLAlertOverridePolicy(policy);
        CFPreferencesSetAppValue(v9, v12, v11);
        CFRelease(v11);

        [(TLToneManager *)self _didSetTonePreferenceSuccessfullyWithKey:v9 inDomain:+[TLPreferencesUtilities usingPreferencesOfKind:"preferencesDomain"], 1];
      }
    }

    else
    {
      v13 = TLLogToneManagement();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _setCurrentOverridePolicy:type forAlertType:?];
      }
    }
  }
}

+ (id)_abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:(id)logging
{
  loggingCopy = logging;
  v4 = [@"mediaPlaybackArchive:" length];
  if ([loggingCopy length] <= (2 * v4))
  {
    v6 = loggingCopy;
  }

  else
  {
    v5 = [loggingCopy substringToIndex:2 * v4];
    v6 = [v5 stringByAppendingString:@"…"];
  }

  return v6;
}

+ (id)_abbreviatedDescriptionOfMediaPlaybackArchive:(id)archive
{
  v3 = MEMORY[0x1E696AD60];
  archiveCopy = archive;
  v5 = [v3 alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  archiveCopy = [v5 initWithFormat:@"<%@: %p", v7, archiveCopy];

  displayProperties = [archiveCopy displayProperties];

  title = [displayProperties title];
  v11 = title;
  if (title)
  {
    [archiveCopy appendFormat:@"; title = %@", title];
  }

  subtitle = [displayProperties subtitle];
  v13 = subtitle;
  if (subtitle)
  {
    [archiveCopy appendFormat:@"; subtitle = %@", subtitle];
  }

  [archiveCopy appendString:@">"];

  return archiveCopy;
}

- (id)_toneIdentifierWithUnderlyingPlaybackArchive:(id)archive
{
  v22 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  v5 = [objc_opt_class() _abbreviatedDescriptionOfMediaPlaybackArchive:archiveCopy];
  v15 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v15];

  v7 = v15;
  if ([v6 length])
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
    if ([v8 length])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"mediaPlaybackArchive:", v8];
      v10 = [objc_opt_class() _abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:v9];
      v11 = TLLogToneManagement();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v18 = 2114;
        v19 = v5;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: _toneIdentifierWithUnderlyingPlaybackArchive:(%{public}@): Returning %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v10 = TLLogToneManagement();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _toneIdentifierWithUnderlyingPlaybackArchive:];
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = TLLogToneManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      tl_nonRedundantDescription = [v7 tl_nonRedundantDescription];
      *buf = 138543874;
      selfCopy2 = self;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = tl_nonRedundantDescription;
      _os_log_error_impl(&dword_1D9356000, v8, OS_LOG_TYPE_ERROR, "%{public}@: _toneIdentifierWithUnderlyingPlaybackArchive:(%{public}@): Failed to serialize playback archive with error: %{public}@.", buf, 0x20u);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_underlyingPlaybackArchiveForToneIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [objc_opt_class() _abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:identifierCopy];
  if ([identifierCopy hasPrefix:@"mediaPlaybackArchive:"])
  {
    v6 = [identifierCopy substringFromIndex:{objc_msgSend(@"mediaPlaybackArchive:", "length")}];
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:1];
  if ([v8 length])
  {
    v9 = MEMORY[0x1E696ACD0];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = getMPPlaybackArchiveClass_softClass;
    v22 = getMPPlaybackArchiveClass_softClass;
    if (!getMPPlaybackArchiveClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPPlaybackArchiveClass_block_invoke;
      v24 = &unk_1E8578D30;
      v25 = &v19;
      __getMPPlaybackArchiveClass_block_invoke(buf);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    v18 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:v8 error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = [objc_opt_class() _abbreviatedDescriptionOfMediaPlaybackArchive:v12];
      v15 = TLLogToneManagement();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v24 = v14;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: _underlyingPlaybackArchiveForToneIdentifier:(%{public}@): Returning %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v14 = TLLogToneManagement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _underlyingPlaybackArchiveForToneIdentifier:];
      }
    }
  }

  else
  {
    v13 = TLLogToneManagement();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TLToneManager _underlyingPlaybackArchiveForToneIdentifier:];
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_hasUnderlyingPlaybackArchiveForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ![(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsSystemTone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy]&& [(TLToneManager *)self _toneWithIdentifierIsMediaPlaybackArchive:identifierCopy];

  return v5;
}

- (id)_fileNameFromToneIdentifier:(id)identifier withPrefix:(id)prefix
{
  identifierCopy = identifier;
  if ([identifierCopy rangeOfString:prefix] || (v7 = v6, v6 >= objc_msgSend(identifierCopy, "length")))
  {
    v8 = 0;
  }

  else
  {
    v8 = [identifierCopy substringFromIndex:v7];
  }

  return v8;
}

- (id)_localizedNameOfToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  if ([v4 wantsModernDefaultRingtone])
  {
    v5 = [(__CFString *)identifierCopy isEqualToString:@"system:Opening"];

    v6 = identifierCopy;
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = @"RINGTONE_PICKER_DEFAULT_RINGTONE_NAME";
    v4 = identifierCopy;
  }

  else
  {
    v6 = identifierCopy;
  }

LABEL_6:
  v7 = TLLocalizedString(v6);
  if ([v7 isEqualToString:v6])
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)_ensureDirectoryExistsAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:pathCopy])
    {
      v5 = 1;
    }

    else
    {
      v9 = 0;
      v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v9];
      v6 = v9;
      if ((v5 & 1) == 0)
      {
        v7 = TLLogToneManagement();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [TLToneManager _ensureDirectoryExistsAtPath:];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didSetTonePreferenceSuccessfullyWithKey:(id)key inDomain:(id)domain usingPreferencesOfKind:(unint64_t)kind
{
  v27[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  domainCopy = domain;
  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = keyCopy;
    *&buf[22] = 2114;
    v26 = domainCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfullyWithKey:(%{public}@) inDomain:(%{public}@)…", buf, 0x20u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__TLToneManager__didSetTonePreferenceSuccessfullyWithKey_inDomain_usingPreferencesOfKind___block_invoke;
  v20[3] = &unk_1E8578CC0;
  v20[4] = self;
  v20[5] = kind;
  [(TLToneManager *)self _performBlockInAccessQueue:v20];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLTonePreferencesDidChangeNotification", 0, 0, 1u);
  if (kind)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v12 = getNPSManagerClass_softClass;
    v24 = getNPSManagerClass_softClass;
    if (!getNPSManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNPSManagerClass_block_invoke;
      v26 = &unk_1E8578D30;
      v27[0] = &v21;
      __getNPSManagerClass_block_invoke(buf);
      v12 = v22[3];
    }

    v13 = v12;
    _Block_object_dispose(&v21, 8);
    if (v12)
    {
      v14 = objc_alloc_init(v12);
      v15 = TLLogToneManagement();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Instantiated preferences sync manager %{public}@.", buf, 0x16u);
      }

      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{keyCopy, 0}];
      if (kind)
      {
        [v14 synchronizeUserDefaultsDomain:domainCopy keys:v16];
        v17 = TLLogToneManagement();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = domainCopy;
          *&buf[22] = 2114;
          v26 = v14;
          LOWORD(v27[0]) = 2114;
          *(v27 + 2) = v16;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Did synchronize user defaults domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }

      if ((kind & 2) != 0)
      {
        [v14 synchronizeNanoDomain:domainCopy keys:v16];
        v18 = TLLogToneManagement();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = domainCopy;
          *&buf[22] = 2114;
          v26 = v14;
          LOWORD(v27[0]) = 2114;
          *(v27 + 2) = v16;
          _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Did synchronize nano domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __90__TLToneManager__didSetTonePreferenceSuccessfullyWithKey_inDomain_usingPreferencesOfKind___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 88) = 0;
  result = [*(a1 + 32) _handleTonePreferencesChangedNotificationForPreferencesKinds:v2];
  *(*(a1 + 32) + 88) = 1;
  return result;
}

+ (BOOL)_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCPreflightOnceToken != -1)
  {
    dispatch_once(&_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCPreflightOnceToken, block);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  v7 = off_1E8578DB0[_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCAccessPreflightStatus + 1];
  v8 = TLLogToneManagement();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v15 = 2114;
      v16 = pathCopy;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: File exists at path %{public}@. TCCAccessPreflight status: %{public}@.", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v15 = 2114;
    v16 = pathCopy;
    v17 = 2114;
    v18 = v7;
    _os_log_error_impl(&dword_1D9356000, v9, OS_LOG_TYPE_ERROR, "%{public}@: File DOES NOT exists at path %{public}@. TCCAccessPreflight status: %{public}@.", buf, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

void __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = getkTCCServiceMediaLibrarySymbolLoc_ptr;
  v19 = getkTCCServiceMediaLibrarySymbolLoc_ptr;
  if (!getkTCCServiceMediaLibrarySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkTCCServiceMediaLibrarySymbolLoc_block_invoke;
    v21 = &unk_1E8578D30;
    v22 = &v16;
    v3 = TCCLibrary();
    v4 = dlsym(v3, "kTCCServiceMediaLibrary");
    *(v22[1] + 24) = v4;
    getkTCCServiceMediaLibrarySymbolLoc_ptr = *(v22[1] + 24);
    v2 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v2)
  {
    goto LABEL_19;
  }

  v5 = *v2;
  v6 = *v2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = getTCCAccessPreflightSymbolLoc_ptr;
  v19 = getTCCAccessPreflightSymbolLoc_ptr;
  if (!getTCCAccessPreflightSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getTCCAccessPreflightSymbolLoc_block_invoke;
    v21 = &unk_1E8578D30;
    v22 = &v16;
    v8 = TCCLibrary();
    v9 = dlsym(v8, "TCCAccessPreflight");
    *(v22[1] + 24) = v9;
    getTCCAccessPreflightSymbolLoc_ptr = *(v22[1] + 24);
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
LABEL_19:
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  v10 = v7(v5, 0);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    if (v10 != 1)
    {
      if (v10)
      {
        v12 = 0;
        v11 = -1;
      }

      else
      {
        v11 = 1;
        v12 = @"granted";
      }

      v13 = TLLogToneManagement();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoked TCCAccessPreflight(kTCCServiceMediaLibrary, NULL). Got result: %{public}@.", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v11 = 2;
  }

  v13 = TLLogToneManagement();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_1(a1);
  }

LABEL_18:

  _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCAccessPreflightStatus = v11;
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_toneIdentifierForMediaLibraryItemIdentifier:(unint64_t)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 stringWithFormat:@"mediaLibrary:%llu-%@", identifier, uUIDString];

  return v7;
}

- (void)_handleTonePreferencesChangedNotificationForPreferencesKinds:(unint64_t)kinds
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_shouldIgnoreNextToneDidChangeNotification)
  {
    self->_shouldIgnoreNextToneDidChangeNotification = 0;
    v4 = TLLogToneManagement();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Ignoring notification.", buf, 0xCu);
    }
  }

  else if (self->_shouldUseServiceToAccessTonePreferences)
  {
    cachedTonePreferences = self->_cachedTonePreferences;
    self->_cachedTonePreferences = 0;

    v6 = TLLogToneManagement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Clearing cached tone preferences.", buf, 0xCu);
    }

    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke;
    block[3] = &unk_1E85789A0;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    kindsCopy = kinds;
    v9 = TLLogToneManagement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…", buf, 0xCu);
    }

    if ((kindsCopy & 1) != 0 && (v10 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain], (v11 = v10) != 0))
    {
      CFPreferencesSynchronize(v10, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      v12 = TLLogToneManagement();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Synchronized CFPreferences domain %{public}@.", buf, 0x16u);
      }

      CFRelease(v11);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    if ((kindsCopy & 2) != 0)
    {
      if (+[TLPreferencesUtilities canAccessNanoRegistry]&& (NPSDomainAccessorClass = getNPSDomainAccessorClass()) != 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v38 = __Block_byref_object_copy_;
        v39 = __Block_byref_object_dispose_;
        v40 = 0;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_979;
        v31[3] = &unk_1E8578950;
        v31[4] = self;
        v31[5] = buf;
        [(TLToneManager *)self _performBlockInAccessQueue:v31];
        v15 = *(*&buf[8] + 40);
        if (!v15)
        {
          v16 = [NPSDomainAccessorClass alloc];
          v17 = +[TLPreferencesUtilities perWatchPreferencesDomain];
          v18 = [v16 initWithDomain:v17];
          v19 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v18;

          v20 = TLLogToneManagement();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(*&buf[8] + 40);
            *v33 = 138543618;
            selfCopy2 = self;
            v35 = 2114;
            v36 = v21;
            _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Instantiated domain accessor %{public}@.", v33, 0x16u);
          }

          v15 = *(*&buf[8] + 40);
        }

        synchronize = [v15 synchronize];
        v23 = TLLogToneManagement();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(*&buf[8] + 40);
          *v33 = 138543618;
          selfCopy2 = self;
          v35 = 2114;
          v36 = v24;
          _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Synchronized domain accessor %{public}@.", v33, 0x16u);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v25 = TLLogToneManagement();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = +[TLPreferencesUtilities canAccessNanoRegistry];
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 1024;
          *&buf[14] = v26;
          _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Skipping synchronizing the domain accessor. canAccessNanoRegistry = %{BOOL}u.", buf, 0x12u);
        }
      }
    }

    v27 = dispatch_get_global_queue(0, 0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_980;
    v29[3] = &unk_1E8578D08;
    v29[4] = self;
    v30 = v13;
    dispatch_async(v27, v29);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TLTonePreferencesDidChangeNotification" object:*(a1 + 32)];
}

void __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_980(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TLTonePreferencesDidChangeNotification" object:*(a1 + 32)];
  if (*(a1 + 40) == 1)
  {
    [v2 postNotificationName:@"_TLAlertOverridePolicyDidChangeNotification" object:0];
  }
}

- (void)_handleProtectionContentUnlockedEvent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__TLToneManager__handleProtectionContentUnlockedEvent__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

uint64_t __54__TLToneManager__handleProtectionContentUnlockedEvent__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = result;
    *(v1 + 48) = 0;

    v4 = *(v3 + 32);

    return [v4 _reloadTonesAfterExternalChange];
  }

  return result;
}

- (void)_addToneEntries:toManifestAtPath:mediaDirectory:shouldSkipReload:.cold.1()
{
  OUTLINED_FUNCTION_6();
  *v2 = 138543362;
  *(v2 + 4) = v3;
  v4 = v3;
  _os_log_error_impl(&dword_1D9356000, v0, OS_LOG_TYPE_ERROR, "%{public}@: Could not update ringtones plist", v1, 0xCu);
}

void __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  v3 = objc_opt_class();
  v4 = *(v1 + 40);
  v5 = v3;
  [v4 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v14 = *MEMORY[0x1E69E9840];
  v2 = v0[4];
  objc_opt_class();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x34u);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_775_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_1D9356000, v4, v5, "%{public}@: Tone with identifier '%{public}@' is neither in of the collections for system or iTunes tones.");
  v6 = *MEMORY[0x1E69E9840];
}

void __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(*a1 + 16) count];
  v8 = [*(*a1 + 16) allKeys];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removeToneWithSyncIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_migrateLegacyToneSettings
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = 0;
  _os_log_error_impl(&dword_1D9356000, log, OS_LOG_TYPE_ERROR, "Unexpected value for preferences key associated to alertType TLAlertTypeTextMessage: %{public}@.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentWatchToneIdentifier:(uint64_t)a1 forAlertType:(unint64_t)a2 topic:.cold.1(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = NSStringFromTLAlertType(a2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentToneWatchAlertPolicy:(unint64_t)a1 forAlertType:topic:.cold.1(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromTLAlertType(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentOverridePolicy:(unint64_t)a1 forAlertType:.cold.1(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromTLAlertType(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_toneIdentifierWithUnderlyingPlaybackArchive:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D9356000, v0, v1, "%{public}@: _toneIdentifierWithUnderlyingPlaybackArchive:(%{public}@): Failed to encode serialized playback archive as a base 64 string.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_underlyingPlaybackArchiveForToneIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D9356000, v0, v1, "%{public}@: _underlyingPlaybackArchiveForToneIdentifier:(%{public}@): Failed to deserialize the serialized playback archive.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_underlyingPlaybackArchiveForToneIdentifier:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D9356000, v0, v1, "%{public}@: _underlyingPlaybackArchiveForToneIdentifier:(%{public}@): Failed to decode base 64 encoded serialized playback archive.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_ensureDirectoryExistsAtPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D9356000, v0, v1, "Failed to create directory at path: %{public}@. %{public}@.");
  v2 = *MEMORY[0x1E69E9840];
}

void __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_5();
  v6 = v2;
  _os_log_fault_impl(&dword_1D9356000, v3, OS_LOG_TYPE_FAULT, "%{public}@: Invoked TCCAccessPreflight(kTCCServiceMediaLibrary, NULL). Got result: %{public}@.", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2()
{
  dlerror();
  abort_report_np();
  return __getNPSDomainAccessorClass_block_invoke_cold_1();
}

@end