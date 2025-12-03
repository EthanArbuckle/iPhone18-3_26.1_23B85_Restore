@interface MBDriveBackupEngine
+ (id)backupEngineWithSettingsContext:(id)context debugContext:(id)debugContext;
- (BOOL)_isModifiedWithFileDescriptor:(int)descriptor reason:(id *)reason;
- (BOOL)_shouldRetry;
- (BOOL)cancel;
- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified;
- (BOOL)fileScanner:(id)scanner shouldExcludeFile:(id)file;
- (BOOL)isModifiedSince:(int64_t)since reason:(id *)reason;
- (MBDriveBackupEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext;
- (NSSet)prefixDirectories;
- (id)_addBackupPathsNotInManifestDB:(id)b operationType:(int)type;
- (id)_addMetadataToFile:(id)file;
- (id)_backupAfterPreflight;
- (id)_cleanup;
- (id)_cleanupDeviceSnapshotDir;
- (id)_compactSQLiteDatabaseAtPath:(id)path file:(id)file error:(id *)error;
- (id)_deviceSnapshotDir;
- (id)_deviceSnapshotManifestDatabasePath;
- (id)_deviceSnapshotPropertiesPath;
- (id)_findPathsRemovedFromBackup;
- (id)_moveBatchWithPaths:(id)paths;
- (id)_moveInBatchesWithOperationType:(int)type;
- (id)_openBackupManifestForResume;
- (id)_preconditions;
- (id)_preflight;
- (id)_prepareForPreflight;
- (id)_prepareForUpload;
- (id)_prepareFreeSpace;
- (id)_prepareMoveBackup;
- (id)_prepareProgress;
- (id)_prepareResume;
- (id)_prepareSnapshot;
- (id)_removeBatchWithPaths:(id)paths;
- (id)_removeDeviceSnapshot;
- (id)_removeInBatchesWithOperationType:(int)type;
- (id)_removeOldBackup;
- (id)_resume;
- (id)_resumeAfterFailureMoving;
- (id)_resumeAfterFailureRemoving;
- (id)_resumeAfterFailureUploading;
- (id)_resumeAfterSuccess;
- (id)_retry;
- (id)_scan;
- (id)_scanAllDomains;
- (id)_scanFinished;
- (id)_setup;
- (id)_setupEncryption;
- (id)_setupManifestDB;
- (id)_setupOperationJournal;
- (id)_setupSnapshotDirectory;
- (id)_snapshotFilesystem;
- (id)_upload;
- (id)_uploadInBatches;
- (id)_verifyBackupReloadingManifest:(BOOL)manifest;
- (id)backup;
- (id)backupAfterPreflight;
- (id)cleanup;
- (id)endWithError:(id)error;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
- (id)preflight;
- (id)promptUser;
- (void)_addFileToMove:(id)move;
- (void)_addFileToUploadAndMove:(id)move flags:(unint64_t)flags;
- (void)_recordCurrentTime;
- (void)_removeFilesystemSnapshot;
- (void)_uploadBatch:(id)batch options:(id)options completion:(id)completion;
- (void)dealloc;
- (void)fileModifiedWhileUploadingFile:(id)file reason:(id)reason;
@end

@implementation MBDriveBackupEngine

+ (id)backupEngineWithSettingsContext:(id)context debugContext:(id)debugContext
{
  debugContextCopy = debugContext;
  contextCopy = context;
  v7 = [[MBDriveBackupEngine alloc] initWithSettingsContext:contextCopy debugContext:debugContextCopy];

  return v7;
}

- (MBDriveBackupEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext
{
  contextCopy = context;
  debugContextCopy = debugContext;
  v42 = 0;
  v8 = [MBPersona personalPersonaWithError:&v42];
  v9 = v42;
  v10 = [[MBDomainManager alloc] initWithPersona:v8];
  v41.receiver = self;
  v41.super_class = MBDriveBackupEngine;
  v11 = [(MBEngine *)&v41 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:v10];
  if (v11)
  {
    v12 = objc_alloc_init(MBProgress);
    progress = v11->_progress;
    v11->_progress = v12;

    v14 = [[MBDriveScript alloc] initWithProgress:v11->_progress];
    driveScript = v11->_driveScript;
    v11->_driveScript = v14;

    v16 = [MBProgressDrive alloc];
    v17 = v11->_driveScript;
    settingsContext = [(MBDriveBackupEngine *)v11 settingsContext];
    drive = [settingsContext drive];
    v20 = [(MBProgressDrive *)v16 initWithScript:v17 delegate:drive];
    drive = v11->_drive;
    v11->_drive = &v20->super;

    v22 = [[MBBackupHelper alloc] initWithSettingsContext:contextCopy domainManager:v11->super._domainManager];
    backupHelper = v11->_backupHelper;
    v11->_backupHelper = v22;

    v24 = objc_alloc_init(NSMutableSet);
    modifiedDomains = v11->_modifiedDomains;
    v11->_modifiedDomains = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    uploadOperationsByPath = v11->_uploadOperationsByPath;
    v11->_uploadOperationsByPath = v26;

    v28 = objc_opt_new();
    mountedSnapshotTracker = v11->_mountedSnapshotTracker;
    v11->_mountedSnapshotTracker = v28;

    settingsContext2 = [(MBDriveBackupEngine *)v11 settingsContext];
    isDeviceTransfer = [settingsContext2 isDeviceTransfer];

    if (isDeviceTransfer)
    {
      v11->_engineType = 4;
      if (v11->super._preflightProperties)
      {
        sub_10009C204();
      }

      v32 = objc_alloc_init(MBProperties);
      preflightProperties = v11->super._preflightProperties;
      v11->super._preflightProperties = v32;
    }

    else
    {
      v11->_engineType = 1;
    }

    v11->_concurrentUploadBatchCount = 1;
    v34 = [debugContextCopy intForName:@"BatchSize"];
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = 128;
    }

    v11->_batchSize = v35;
    if ((_os_feature_enabled_impl() & isDeviceTransfer) == 1)
    {
      v36 = objc_alloc_init(NSMutableSet);
      inodeCache = v11->_inodeCache;
      v11->_inodeCache = v36;

      v38 = objc_alloc_init(NSMutableSet);
      cloneIDCache = v11->_cloneIDCache;
      v11->_cloneIDCache = v38;
    }
  }

  return v11;
}

- (void)dealloc
{
  [(MBDriveBackupEngine *)self setScanner:0];
  [(MBDriveBackupEngine *)self _removeFilesystemSnapshot];
  v3.receiver = self;
  v3.super_class = MBDriveBackupEngine;
  [(MBDriveBackupEngine *)&v3 dealloc];
}

- (NSSet)prefixDirectories
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefixDirectories = selfCopy->_prefixDirectories;
  if (!prefixDirectories)
  {
    v4 = objc_opt_new();
    v5 = 0;
    do
    {
      v6 = [NSString stringWithFormat:@"%02x", v5];
      [(NSSet *)v4 addObject:v6];

      v5 = (v5 + 1);
    }

    while (v5 != 256);
    v7 = selfCopy->_prefixDirectories;
    selfCopy->_prefixDirectories = v4;

    prefixDirectories = selfCopy->_prefixDirectories;
  }

  v8 = prefixDirectories;
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)preflight
{
  v3 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  [(MBDriveBackupEngine *)self setStartTime:?];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting backup", buf, 2u);
    _MBLog();
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  [settingsContext log];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    debugContext = self->super._debugContext;
    *buf = 138412290;
    v20 = *&debugContext;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "DebugContext: %@", buf, 0xCu);
    v18 = self->super._debugContext;
    _MBLog();
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting preflight", buf, 2u);
    _MBLog();
  }

  [(MBDriveBackupEngine *)self _preflight];
  v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v13 - v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Finished preflight in %0.3fs", buf, 0xCu);
    _MBLog();
  }

  if (v11 != 0.0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to preflight: %@", buf, 0xCu);
      _MBLog();
    }

    _cleanup = [(MBDriveBackupEngine *)self _cleanup];
  }

  objc_autoreleasePoolPop(v3);

  return *&v11;
}

- (id)backupAfterPreflight
{
  v3 = objc_autoreleasePoolPush();
  [(MBDriveBackupEngine *)self _backupAfterPreflight];
  v4 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  [(MBDriveBackupEngine *)self startTime];
  v8 = v7;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v6 - v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finished backup in %0.3fs", buf, 0xCu);
    _MBLog();
  }

  if (v4 != 0.0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to backup: %@", buf, 0xCu);
      _MBLog();
    }

    _cleanup = [(MBDriveBackupEngine *)self _cleanup];
  }

  objc_autoreleasePoolPop(v3);

  return *&v4;
}

- (id)cleanup
{
  v3 = objc_autoreleasePoolPush();
  _cleanup = [(MBDriveBackupEngine *)self _cleanup];
  if (_cleanup)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = _cleanup;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to cleanup: %@", buf, 0xCu);
      _MBLog();
    }
  }

  objc_autoreleasePoolPop(v3);

  return _cleanup;
}

- (id)promptUser
{
  if (MBIsInternalInstall() && (v22[0] = 0, -[MBEngine persona](self, "persona"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 getBooleanValueForKey:@"EnableLocalBackupPrompt" keyExists:v22], v3, v22[0]) && !v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = @"EnableLocalBackupPrompt";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@:%d", buf, 0x12u);
      _MBLog();
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    v10 = MBLocalizedStringFromTable();
    v11 = MBLocalizedStringFromTable();
    v12 = v11;
    v13 = 0;
    if (v10 && v11)
    {
      v26[0] = &off_1001093B0;
      v26[1] = &off_1001093C8;
      v27[0] = v10;
      v27[1] = v11;
      v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001A0B4;
    v19[3] = &unk_1000FD5D0;
    v21 = buf;
    v14 = dispatch_semaphore_create(0);
    v20 = v14;
    [v9 evaluatePolicy:1013 options:v13 reply:v19];
    v15 = dispatch_time(0, 1800000000000);
    v16 = dispatch_semaphore_wait(v14, v15);
    if (v16)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 134217984;
        v23 = 30;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Timed out waiting %lld minutes for passcode", v22, 0xCu);
        _MBLog();
      }

      [v9 invalidate];
      v6 = [MBError errorWithCode:208 format:@"Device locked - timeout waiting for passcode entry"];
      v7 = v6;
    }

    else
    {
      if (*(*&buf[8] + 24))
      {
        v6 = 0;
      }

      else
      {
        v6 = [MBError errorWithCode:208 format:@"Device locked"];
      }

      v7 = 0;
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v8);
    if (!v16)
    {
      v6 = v6;
      v7 = v6;
    }
  }

  return v7;
}

- (id)backup
{
  promptUser = [(MBDriveBackupEngine *)self promptUser];
  if (!promptUser)
  {
    promptUser = [(MBDriveBackupEngine *)self preflight];
    if (!promptUser)
    {
      promptUser = [(MBDriveBackupEngine *)self backupAfterPreflight];
      if (!promptUser)
      {
        promptUser = [(MBDriveBackupEngine *)self cleanup];
      }
    }
  }

  return promptUser;
}

- (id)_preflight
{
  _preconditions = [(MBDriveBackupEngine *)self _preconditions];
  if (_preconditions || ([(MBDriveBackupEngine *)self _setup], (_preconditions = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_3:
    v4 = _preconditions;
    goto LABEL_4;
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  objectEnumerator = [plugins objectEnumerator];
  v4 = sub_1000375C0(self, objectEnumerator, "startingBackupWithEngine:", self);

  if (!v4)
  {
    _preconditions = [(MBDriveBackupEngine *)self _resume];
    if (!_preconditions)
    {
      if (!self->_fullBackup)
      {
        v9 = [(MBDriveBackupEngine *)self _verifyBackupReloadingManifest:0];
        if (v9)
        {
          v10 = v9;
          v11 = MBGetDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Existing backup is corrupt, forcing a full backup: %@", buf, 0xCu);
            v12 = v10;
            _MBLog();
          }

          self->_fullBackup = 1;
        }
      }

      _preconditions = [(MBDriveBackupEngine *)self _scan];
      if (!_preconditions)
      {
        _preconditions = [(MBDriveBackupEngine *)self _prepareForPreflight];
      }
    }

    goto LABEL_3;
  }

LABEL_4:

  return v4;
}

- (id)_backupAfterPreflight
{
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    _prepareForUpload = [(MBDriveBackupEngine *)self _prepareForUpload];
    if (_prepareForUpload || ([(MBDriveBackupEngine *)self _upload], (_prepareForUpload = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_8:
      v5 = _prepareForUpload;
      objc_autoreleasePoolPop(v3);

      goto LABEL_9;
    }

    if (![(MBDriveBackupEngine *)self _shouldRetry])
    {
      break;
    }

    _prepareForUpload = [(MBDriveBackupEngine *)self _retry];
    if (_prepareForUpload)
    {
      goto LABEL_8;
    }

    _prepareForUpload = [(MBDriveBackupEngine *)self _scan];
    if (_prepareForUpload)
    {
      goto LABEL_8;
    }

    _prepareForUpload = [(MBDriveBackupEngine *)self _prepareForPreflight];
    if (_prepareForUpload)
    {
      goto LABEL_8;
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v3);
  _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _moveWithOperationType:3];
  if (_removeDeviceSnapshot)
  {
    goto LABEL_16;
  }

  _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _removeWithOperationType:4];
  if (_removeDeviceSnapshot)
  {
    goto LABEL_16;
  }

  _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _removeDeviceSnapshot];
  if (_removeDeviceSnapshot)
  {
    goto LABEL_16;
  }

  _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _removeOldBackup];
  if (_removeDeviceSnapshot)
  {
    goto LABEL_16;
  }

  if (![(MBEngine *)self isDeviceTransferEngine])
  {
    _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _verifyBackupReloadingManifest:1];
    if (_removeDeviceSnapshot)
    {
      goto LABEL_16;
    }
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  reverseObjectEnumerator = [plugins reverseObjectEnumerator];
  v5 = sub_1000375C0(self, reverseObjectEnumerator, "endingBackupWithEngine:", self);

  if (!v5)
  {
    _removeDeviceSnapshot = [(MBDriveBackupEngine *)self _postconditions];
LABEL_16:
    v5 = _removeDeviceSnapshot;
  }

LABEL_9:

  return v5;
}

- (id)_setup
{
  v3 = objc_autoreleasePoolPush();
  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrash"])
  {
    abort();
  }

  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateException"])
  {
    [NSException raise:@"SimulatedException" format:@"Simulated exception"];
  }

  v4 = [(MBDebugContext *)self->super._debugContext intForName:@"SimulateErrorCode"];
  if (!v4)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initializing app manager", buf, 2u);
      _MBLog();
    }

    v7 = [MBAppManager alloc];
    settingsContext = [(MBDriveBackupEngine *)self settingsContext];
    mobileInstallation = [settingsContext mobileInstallation];
    v10 = [(MBAppManager *)v7 initWithMobileInstallation:mobileInstallation];
    appManager = self->super._appManager;
    self->super._appManager = v10;

    v12 = self->super._appManager;
    persona = [(MBEngine *)self persona];
    v40 = 0;
    LOBYTE(mobileInstallation) = [(MBAppManager *)v12 loadAppsWithPersona:persona safeHarbors:1 error:&v40];
    password2 = v40;

    if (mobileInstallation)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removing old safe harbors", buf, 2u);
        _MBLog();
      }

      v16 = self->super._appManager;
      settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
      [settingsContext2 safeHarborExpiration];
      [(MBAppManager *)v16 removeOldSafeHarborsWithExpiration:?];

      [(MBDomainManager *)self->super._domainManager addDomainsToBackUpToDriveWithAppManager:self->super._appManager];
      v18 = [NSMutableSet alloc];
      allDomains = [(MBDomainManager *)self->super._domainManager allDomains];
      v20 = [v18 initWithArray:allDomains];
      domainsToScan = self->_domainsToScan;
      self->_domainsToScan = v20;

      [(MBDebugContext *)self->super._debugContext setInt:0 forName:@"RetryCount"];
      if ([(MBEngine *)self isDeviceTransferEngine])
      {
        [(MBDriveBackupEngine *)self password];
        if (objc_claimAutoreleasedReturnValue())
        {
          sub_10009C230();
        }
      }

      else
      {
        v39 = password2;
        v23 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v39];
        v24 = v39;

        [(MBDriveBackupEngine *)self setPassword:v23];
        password = [(MBDriveBackupEngine *)self password];

        if (password || ![MBError isError:v24 withCode:4])
        {
          if (v24)
          {
            v26 = MBGetDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = v24;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error fetching backup password: %@", buf, 0xCu);
              _MBLog();
            }

            v22 = v24;
            password2 = v22;
            goto LABEL_40;
          }
        }

        else
        {
        }

        password2 = [(MBDriveBackupEngine *)self password];

        if (password2)
        {
          settingsContext3 = [(MBDriveBackupEngine *)self settingsContext];
          password3 = [(MBDriveBackupEngine *)self password];
          [settingsContext3 updatePassword:password3];

          password2 = 0;
        }
      }

      password4 = [(MBDriveBackupEngine *)self password];
      [(MBEngine *)self setEncrypted:password4 != 0];

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if ([(MBEngine *)self encrypted])
        {
          v31 = @"enabled";
        }

        else
        {
          v31 = @"disabled";
        }

        *buf = 138412290;
        v42 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Encryption is %@", buf, 0xCu);
        if ([(MBEngine *)self encrypted])
        {
          v32 = @"enabled";
        }

        else
        {
          v32 = @"disabled";
        }

        v38 = v32;
        _MBLog();
      }

      [(MBDebugContext *)self->super._debugContext setBool:[(MBEngine *)self encrypted] forName:@"IsEncrypted"];
      if ([(MBEngine *)self isDeviceTransferEngine])
      {
        goto LABEL_38;
      }

      v33 = +[MBLockdown connect];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 objectForDomain:@"com.apple.mobile.backup" andKey:@"RequiresEncryption"];
        v36 = v35;
        if (!v35 || ![v35 BOOLValue] || -[MBEngine encrypted](self, "encrypted"))
        {
          [v34 disconnect];

LABEL_38:
          objc_autoreleasePoolPop(v3);
          v5 = 0;
          goto LABEL_43;
        }

        v5 = [MBError errorWithCode:207 format:@"No backup password set when required by device management"];

LABEL_41:
        goto LABEL_42;
      }

      v22 = [MBError errorWithCode:1 format:@"Failed to connect to lockdown"];
    }

    else
    {
      v22 = [MBError errorWithCode:1 error:password2 format:@"Error initializing app manager"];
    }

LABEL_40:
    v5 = v22;
    goto LABEL_41;
  }

  v5 = [MBError errorWithCode:v4 format:@"Simulated error code"];
LABEL_42:
  objc_autoreleasePoolPop(v3);
LABEL_43:

  return v5;
}

- (id)endWithError:(id)error
{
  errorCopy = error;
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  reverseObjectEnumerator = [plugins reverseObjectEnumerator];
  v8 = sub_100037638(self, reverseObjectEnumerator, "endedBackupWithEngine:error:", self, errorCopy);

  [(MBDriveBackupEngine *)self _removeFilesystemSnapshot];
  if (!errorCopy && v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MBError descriptionForError:v8];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Backup error - %@", buf, 0xCu);

      v17 = [MBError descriptionForError:v8];
      _MBLog();
    }

    errorCopy = v8;
  }

  v11 = [MBEngine stringForEngineType:[(MBDriveBackupEngine *)self engineType]];
  v12 = [MBEngine stringForEngineMode:[(MBDriveBackupEngine *)self engineMode]];
  v13 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.MobileBackup", v11, v12];

  [MBTelemetry submitEngineCompletedEventName:v13 engineStarted:errorCopy engineError:self->_startTime];
  settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
  [settingsContext2 setEncryptionManager:0];

  v15 = errorCopy;
  return errorCopy;
}

- (id)_cleanup
{
  [(MBBackupOperationJournal *)self->_operationJournal close];
  operationJournal = self->_operationJournal;
  self->_operationJournal = 0;

  [(MBManifestDB *)self->_snapshotManifestDB closeWithError:0];
  snapshotManifestDB = self->_snapshotManifestDB;
  self->_snapshotManifestDB = 0;

  [(MBManifestDB *)self->_backupManifestDB closeAndRemoveFileWithError:0];
  backupManifestDB = self->_backupManifestDB;
  self->_backupManifestDB = 0;

  return [(MBDriveBackupEngine *)self _cleanupDeviceSnapshotDir];
}

- (id)_cleanupDeviceSnapshotDir
{
  if (!self->_uuid)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing snapshot on device", buf, 2u);
    _MBLog();
  }

  v4 = +[NSFileManager defaultManager];
  _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
  v13 = 0;
  v6 = [v4 removeItemAtPath:_deviceSnapshotDir error:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v7 code];

      if (code == 4)
      {
        v8 = 0;
        _deviceSnapshotDir2 = v7;
        v7 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    _deviceSnapshotDir2 = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
    v8 = [MBError errorWithCode:102 error:v7 path:_deviceSnapshotDir2 format:@"Error removing snapshot dir"];
    goto LABEL_12;
  }

  v8 = 0;
LABEL_13:

LABEL_14:

  return v8;
}

- (void)fileModifiedWhileUploadingFile:(id)file reason:(id)reason
{
  fileCopy = file;
  reasonCopy = reason;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    absolutePath = [fileCopy absolutePath];
    fileID = [fileCopy fileID];
    *buf = 138412802;
    v20 = reasonCopy;
    v21 = 2112;
    v22 = absolutePath;
    v23 = 2112;
    v24 = fileID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "File modified while being uploaded (%@): %@ (%@)", buf, 0x20u);

    absolutePath2 = [fileCopy absolutePath];
    fileID2 = [fileCopy fileID];
    _MBLog();
  }

  snapshotManifestDB = self->_snapshotManifestDB;
  fileID3 = [fileCopy fileID];
  v14 = [(MBManifestDB *)snapshotManifestDB setFlags:16 mask:-9 forFileID:fileID3];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  modifiedDomains = selfCopy->_modifiedDomains;
  domain = [fileCopy domain];
  [(NSMutableSet *)modifiedDomains addObject:domain];

  objc_sync_exit(selfCopy);
}

- (id)_preconditions
{
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  targetIdentifier = [settingsContext targetIdentifier];
  v5 = MBDeviceUDID_Legacy();
  v6 = [targetIdentifier isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_10009C25C();
  }

  v7 = +[MBManagedPolicy sharedPolicy];
  v27 = 0;
  v8 = [v7 checkIfDriveBackupIsAllowed:&v27];
  v9 = v27;

  if ((v8 & 1) == 0)
  {
    v10 = v9;
    goto LABEL_7;
  }

  if (BYSetupAssistantNeedsToRun())
  {
    v10 = [MBError errorWithCode:212 format:@"Unable to backup until Setup is finished"];
LABEL_7:
    v11 = v10;
    goto LABEL_27;
  }

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
    manager = [settingsContext2 manager];
  }

  else
  {
    manager = objc_alloc_init(MBManager);
  }

  v26 = 0;
  v14 = [manager restoreStateWithError:&v26];
  v15 = v26;
  if (v14)
  {
    state = [v14 state];
    v17 = state;
    if (state >= 7 || ((0x71u >> state) & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v29) = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "iTunes Backup is unavailable while an iCloud Restore is in progress (%d)", buf, 8u);
        v25 = v17;
        _MBLog();
      }

      v19 = @"iTunes Backup is unavailable while an iCloud Restore is in progress";
      v20 = 25;
LABEL_25:
      v11 = [MBError errorWithCode:v20 format:v19, v25];
      goto LABEL_26;
    }
  }

  else
  {
    v21 = [MBError isError:v15 withCode:210];
    v22 = MBGetDefaultLog();
    v23 = v22;
    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to fetch iCloud Restore state: %{public}@", buf, 0xCu);
        v25 = v15;
        _MBLog();
      }

      v19 = @"Failed to determine iCloud Restore state";
      v20 = 1;
      goto LABEL_25;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No iCloud account", buf, 2u);
      _MBLog();
    }
  }

  v11 = 0;
LABEL_26:

LABEL_27:

  return v11;
}

- (id)_resume
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to retrieve previous backup status", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  backupHelper = self->_backupHelper;
  v55 = 0;
  v8 = [(MBBackupHelper *)backupHelper readStatusWithError:&v55];
  v9 = v55;
  status = self->_status;
  self->_status = v8;

  v11 = self->_status;
  if (!v11)
  {
    goto LABEL_10;
  }

  [(MBStatus *)v11 version];
  if (v12 >= 3.3)
  {
    debugContext = self->super._debugContext;
    backupStateName = [(MBStatus *)self->_status backupStateName];
    [(MBDebugContext *)debugContext setValue:backupStateName forName:@"BackupState"];

    v22 = self->super._debugContext;
    snapshotStateName = [(MBStatus *)self->_status snapshotStateName];
    [(MBDebugContext *)v22 setValue:snapshotStateName forName:@"SnapshotState"];

    [(MBDebugContext *)self->super._debugContext setInt:[(MBStatus *)self->_status isFullBackup] forName:@"StatusIsFullBackup"];
    uuid = [(MBStatus *)self->_status uuid];
    uuid = self->_uuid;
    self->_uuid = uuid;

    self->_fullBackup = [(MBStatus *)self->_status isFullBackup];
    if (![(MBStatus *)self->_status isFinished])
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [(MBStatus *)self->_status snapshotStateName];
        v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v57 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Resuming after failure during '%@' phase", buf, 0xCu);

        snapshotStateName2 = [(MBStatus *)self->_status snapshotStateName];
        _MBLog();
      }
    }

    if ([(MBStatus *)self->_status isUploading])
    {
      _resumeAfterFailureUploading = [(MBDriveBackupEngine *)self _resumeAfterFailureUploading];
    }

    else if ([(MBStatus *)self->_status isMoving])
    {
      _resumeAfterFailureUploading = [(MBDriveBackupEngine *)self _resumeAfterFailureMoving];
    }

    else if ([(MBStatus *)self->_status isRemoving])
    {
      _resumeAfterFailureUploading = [(MBDriveBackupEngine *)self _resumeAfterFailureRemoving];
    }

    else
    {
      if ([(MBStatus *)self->_status isFinished])
      {
        [(MBDriveBackupEngine *)self _resumeAfterSuccess];
      }

      else
      {
        [MBError errorWithCode:205 format:@"Invalid snapshot state: %d", [(MBStatus *)self->_status snapshotState]];
      }
      _resumeAfterFailureUploading = ;
    }

    v33 = _resumeAfterFailureUploading;

    if (v33)
    {
      if ([MBError isError:v33 withCode:203])
      {
        v34 = MBGetDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          [MBError descriptionForError:v33];
          v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v57 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

          v53 = [MBError descriptionForError:v33];
          _MBLog();
        }

        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Performing full backup to replace unsupported format", buf, 2u);
          _MBLog();
        }

        [(MBDebugContext *)self->super._debugContext setFlag:@"ManifestVersionUnsupported"];
        self->_fullBackup = 1;
      }

      else
      {
        if (![MBError isError:v33 withCode:207])
        {
          v32 = v33;
          v9 = v32;
          goto LABEL_72;
        }

        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Password has changed. Performing full backup encrypted with new password.", buf, 2u);
          _MBLog();
        }

        self->_fullBackup = 1;
        _cleanupDeviceSnapshotDir = [(MBDriveBackupEngine *)self _cleanupDeviceSnapshotDir];
      }
    }

    snapshotManifestDB = self->_snapshotManifestDB;
    if (snapshotManifestDB && [(MBManifestDB *)snapshotManifestDB domainRedirects]|| (backupManifestDB = self->_backupManifestDB) != 0 && [(MBManifestDB *)backupManifestDB domainRedirects])
    {
      v41 = MBGetDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Performing full backup because of domain redirects", buf, 2u);
        _MBLog();
      }

      self->_fullBackup = 1;
    }

    properties = [(MBManifestDB *)self->_snapshotManifestDB properties];
    if ([properties hasCorruptSQLiteDBs])
    {
    }

    else
    {
      properties2 = [(MBManifestDB *)self->_backupManifestDB properties];
      hasCorruptSQLiteDBs = [properties2 hasCorruptSQLiteDBs];

      if (!hasCorruptSQLiteDBs)
      {
LABEL_61:
        if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrashAfterResumingSuccessfully", v54])
        {
          abort();
        }

        v9 = 0;
        goto LABEL_63;
      }
    }

    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136380675;
      v57 = COERCE_DOUBLE("9365479");
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "This backup has corrupt SQLite databases. Forcing a full backup to work around %{private}s", buf, 0xCu);
      v54 = "9365479";
      _MBLog();
    }

    self->_fullBackup = 1;
    goto LABEL_61;
  }

  v13 = self->_status;
  if (v13)
  {
    [(MBStatus *)v13 version];
    if (v14 < 3.3)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        [(MBStatus *)self->_status version];
        *buf = 134217984;
        v57 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Status: version=%0.1f", buf, 0xCu);
        [(MBStatus *)self->_status version];
        _MBLog();
      }

      [(MBDebugContext *)self->super._debugContext setFlag:@"OldStatusFound"];
      goto LABEL_27;
    }
  }

LABEL_10:
  if (![MBError isError:v9 withCode:4])
  {
    if ([MBError isError:v9 withCode:203])
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        [MBError descriptionForError:v9];
        v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v57 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

        snapshotStateName2 = [MBError descriptionForError:v9];
        _MBLog();
      }

      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Performing full backup to replace unsupported format", buf, 2u);
        _MBLog();
      }

      v18 = self->super._debugContext;
      v19 = @"StatusVersionUnsupported";
      goto LABEL_26;
    }

    v32 = [MBBackupHelper driveReadError:v9 description:@"Error reading status"];
LABEL_72:
    v50 = v32;
    goto LABEL_68;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "No status exists", buf, 2u);
    _MBLog();
  }

  v18 = self->super._debugContext;
  v19 = @"StatusNotFound";
LABEL_26:
  [(MBDebugContext *)v18 setFlag:v19, snapshotStateName2];

  v9 = 0;
LABEL_27:
  self->_fullBackup = 1;
LABEL_63:
  if (!self->_uuid)
  {
    v46 = MBRandomUUID();
    v47 = self->_uuid;
    self->_uuid = v46;
  }

  v48 = MBGetDefaultLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v57 = v49 - v6;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Retrieved previous backup status in %0.3f s", buf, 0xCu);
    +[NSDate timeIntervalSinceReferenceDate];
    _MBLog();
  }

  v50 = 0;
LABEL_68:

  objc_autoreleasePoolPop(v3);

  return v50;
}

- (id)_openBackupManifestForResume
{
  if (!self->_fullBackup)
  {
    backupHelper = self->_backupHelper;
    v19 = 0;
    properties = [(MBBackupHelper *)backupHelper readBackupManifestDatabaseWithError:&v19];
    v5 = v19;
    backupManifestDB = self->_backupManifestDB;
    self->_backupManifestDB = properties;

    if (v5)
    {
      v7 = v5;
      v8 = v7;
      goto LABEL_22;
    }
  }

  encrypted = [(MBEngine *)self encrypted];
  if (encrypted)
  {
    if (![(MBEngine *)self encrypted])
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  properties = [(MBManifestDB *)self->_backupManifestDB properties];
  if ([(MBManifestDB *)properties encrypted])
  {

    goto LABEL_13;
  }

  if ([(MBEngine *)self encrypted])
  {
LABEL_10:
    properties2 = [(MBManifestDB *)self->_backupManifestDB properties];
    encrypted2 = [properties2 encrypted];

    if ((encrypted & 1) == 0)
    {
    }

    if (encrypted2)
    {
      goto LABEL_15;
    }

LABEL_13:
    self->_fullBackup = 1;
    v8 = [MBError errorWithCode:207 format:@"Encryption settings changed"];
    v7 = 0;
    goto LABEL_22;
  }

LABEL_15:
  if ([(MBEngine *)self encrypted])
  {
    v12 = self->_backupManifestDB;
    password = [(MBDriveBackupEngine *)self password];
    v18 = 0;
    v14 = [(MBManifestDB *)v12 setupEncryptionWithPassword:password withError:&v18];
    v7 = v18;

    if ((v14 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
        _MBLog();
      }

      [(MBManifestDB *)self->_backupManifestDB closeWithError:0];
      v16 = self->_backupManifestDB;
      self->_backupManifestDB = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (id)_resumeAfterFailureUploading
{
  _openBackupManifestForResume = [(MBDriveBackupEngine *)self _openBackupManifestForResume];
  if (_openBackupManifestForResume)
  {
    removeFilesNotAlreadyUploaded = _openBackupManifestForResume;
    v5 = removeFilesNotAlreadyUploaded;
    goto LABEL_29;
  }

  v6 = +[NSFileManager defaultManager];
  _deviceSnapshotManifestDatabasePath = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
  v8 = [v6 fileExistsAtPath:_deviceSnapshotManifestDatabasePath];

  if (v8)
  {
    v9 = [MBManifestDB alloc];
    _deviceSnapshotManifestDatabasePath2 = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
    v11 = [(MBManifestDB *)v9 initWithPath:_deviceSnapshotManifestDatabasePath2 domainManager:self->super._domainManager];

    v83 = 0;
    LOBYTE(_deviceSnapshotManifestDatabasePath2) = [(MBManifestDB *)v11 openWithError:&v83];
    removeFilesNotAlreadyUploaded = v83;
    if (_deviceSnapshotManifestDatabasePath2)
    {
      if ([(MBEngine *)self encrypted])
      {
        password = [(MBDriveBackupEngine *)self password];
        v82 = removeFilesNotAlreadyUploaded;
        v13 = [(MBManifestDB *)v11 setupEncryptionWithPassword:password withError:&v82];
        v14 = v82;

        if ((v13 & 1) == 0)
        {
          v36 = MBGetDefaultLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v85 = v14;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
            _MBLog();
          }

          [(MBManifestDB *)v11 closeWithError:0];
          v37 = v14;
LABEL_44:
          removeFilesNotAlreadyUploaded = v37;
          v5 = v37;
          goto LABEL_27;
        }

        removeFilesNotAlreadyUploaded = v14;
      }

      v15 = removeFilesNotAlreadyUploaded;
      v81 = removeFilesNotAlreadyUploaded;
      v16 = [(MBManifestDB *)v11 checkWithError:&v81];
      removeFilesNotAlreadyUploaded = v81;

      if (v16)
      {
        v80 = removeFilesNotAlreadyUploaded;
        v17 = [(MBManifestDB *)v11 closeWithError:&v80];
        v18 = v80;

        if ((v17 & 1) == 0)
        {
          v38 = MBGetDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v85 = v18;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to close existing snapshot manifest database: %@", buf, 0xCu);
            _MBLog();
          }

          v5 = 0;
          removeFilesNotAlreadyUploaded = v18;
          goto LABEL_27;
        }

        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Reading snapshot properties from device", buf, 2u);
          _MBLog();
        }

        _deviceSnapshotPropertiesPath = [(MBDriveBackupEngine *)self _deviceSnapshotPropertiesPath];
        v79 = v18;
        v11 = [MBProperties propertiesWithFile:_deviceSnapshotPropertiesPath error:&v79];
        v21 = v79;

        if (v11)
        {
          v22 = sub_100028F5C();
          _deviceSnapshotManifestDatabasePath3 = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
          v78 = v21;
          v71 = v22;
          v24 = [v6 moveItemAtPath:_deviceSnapshotManifestDatabasePath3 toPath:v22 error:&v78];
          removeFilesNotAlreadyUploaded = v78;

          v25 = MBGetDefaultLog();
          v26 = v25;
          if ((v24 & 1) == 0)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = removeFilesNotAlreadyUploaded;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to move existing snapshot manifest DB after upload failure: %@", buf, 0xCu);
              v69 = removeFilesNotAlreadyUploaded;
              _MBLog();
            }

            v41 = @"Failed to move snapshot manifest database";
            goto LABEL_48;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Removing snapshot on device", buf, 2u);
            _MBLog();
          }

          v27 = +[NSFileManager defaultManager];
          _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
          v77 = removeFilesNotAlreadyUploaded;
          v29 = [v27 removeItemAtPath:_deviceSnapshotDir error:&v77];
          v30 = v77;

          if (v29)
          {
            v31 = v71;
LABEL_18:
            _setupSnapshotDirectory = [(MBDriveBackupEngine *)self _setupSnapshotDirectory];

            if (_setupSnapshotDirectory)
            {
LABEL_19:
              v33 = _setupSnapshotDirectory;
              removeFilesNotAlreadyUploaded = v33;
LABEL_71:
              v5 = v33;
              goto LABEL_72;
            }

            _deviceSnapshotManifestDatabasePath4 = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
            v76 = 0;
            v46 = [v6 moveItemAtPath:v31 toPath:_deviceSnapshotManifestDatabasePath4 error:&v76];
            removeFilesNotAlreadyUploaded = v76;

            if ((v46 & 1) == 0)
            {
              v65 = MBGetDefaultLog();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = removeFilesNotAlreadyUploaded;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to move existing snapshot manifest DB back in place after upload failure: %@", buf, 0xCu);
                _MBLog();
              }

              v33 = [MBError errorWithCode:102 error:removeFilesNotAlreadyUploaded format:@"Failed to move snapshot manifest database back"];
              goto LABEL_71;
            }

            v47 = [MBManifestDB alloc];
            _deviceSnapshotManifestDatabasePath5 = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
            v49 = [(MBManifestDB *)v47 initWithPath:_deviceSnapshotManifestDatabasePath5 properties:v11 domainManager:self->super._domainManager];
            snapshotManifestDB = self->_snapshotManifestDB;
            self->_snapshotManifestDB = v49;

            v51 = self->_snapshotManifestDB;
            v75 = removeFilesNotAlreadyUploaded;
            LOBYTE(_deviceSnapshotManifestDatabasePath5) = [(MBManifestDB *)v51 openWithError:&v75];
            v30 = v75;

            if (_deviceSnapshotManifestDatabasePath5)
            {
              if ([(MBEngine *)self encrypted])
              {
                v52 = self->_snapshotManifestDB;
                password2 = [(MBDriveBackupEngine *)self password];
                v74 = v30;
                v54 = [(MBManifestDB *)v52 setupEncryptionWithPassword:password2 withError:&v74];
                _setupSnapshotDirectory = v74;

                if ((v54 & 1) == 0)
                {
                  v68 = MBGetDefaultLog();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v85 = _setupSnapshotDirectory;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
                    _MBLog();
                  }

                  goto LABEL_19;
                }

                v30 = _setupSnapshotDirectory;
              }

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Determining which files were already uploaded to the backup", buf, 2u);
                _MBLog();
              }

              settingsContext = [(MBDriveBackupEngine *)self settingsContext];
              drive = [settingsContext drive];
              settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
              driveSnapshotDir = [settingsContext2 driveSnapshotDir];
              v73[0] = _NSConcreteStackBlock;
              v73[1] = 3221225472;
              v73[2] = sub_10001D044;
              v73[3] = &unk_1000FD5F8;
              v73[4] = self;
              v70 = [drive enumerateContentsOfDirectoryAtPath:driveSnapshotDir options:0 foundItem:v73];

              settingsContext3 = [(MBDriveBackupEngine *)self settingsContext];
              drive2 = [settingsContext3 drive];
              settingsContext4 = [(MBDriveBackupEngine *)self settingsContext];
              driveBackupDir = [settingsContext4 driveBackupDir];
              v72[0] = _NSConcreteStackBlock;
              v72[1] = 3221225472;
              v72[2] = sub_10001D1E0;
              v72[3] = &unk_1000FD5F8;
              v72[4] = self;
              v64 = [drive2 enumerateContentsOfDirectoryAtPath:driveBackupDir options:0 foundItem:v72];

              if (v64 && [MBError isError:v64 withCode:4])
              {
                v5 = [MBBackupHelper driveReadError:v64 description:@"Error getting contents of snapshot"];
                removeFilesNotAlreadyUploaded = v64;
                goto LABEL_49;
              }

              removeFilesNotAlreadyUploaded = [(MBManifestDB *)self->_snapshotManifestDB removeFilesNotAlreadyUploaded];

              if (!removeFilesNotAlreadyUploaded)
              {
                v5 = 0;
                goto LABEL_49;
              }

              v67 = MBGetDefaultLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = removeFilesNotAlreadyUploaded;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to remove already uploaded files from snapshot manifest database: %@", buf, 0xCu);
                v69 = removeFilesNotAlreadyUploaded;
                _MBLog();
              }

              v41 = @"Failed to remove already uploaded files from snapshot manifest database";
LABEL_48:
              v5 = [MBError errorWithCode:102 error:removeFilesNotAlreadyUploaded format:v41, v69];
LABEL_49:
              v31 = v71;
LABEL_72:

              goto LABEL_27;
            }

            v66 = MBGetDefaultLog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v30;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to open snapshot manifest database: %@", buf, 0xCu);
              _MBLog();
            }

            v5 = [MBError errorWithCode:102 error:v30 format:@"Failed to open resume snapshot manifest database"];
LABEL_57:
            removeFilesNotAlreadyUploaded = v30;
            goto LABEL_72;
          }

          domain = [v30 domain];
          v31 = v71;
          if ([domain isEqualToString:NSCocoaErrorDomain])
          {
            code = [v30 code];

            if (code == 4)
            {

              v30 = 0;
              goto LABEL_18;
            }
          }

          else
          {
          }

          _deviceSnapshotDir2 = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
          v5 = [MBError errorWithCode:102 error:v30 path:_deviceSnapshotDir2 format:@"Error removing snapshot dir"];

          goto LABEL_57;
        }

        if (([MBError isError:v21 withCode:4]& 1) != 0 || [MBError codeForNSError:v21]== 4)
        {
          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Snapshot properties not found", buf, 2u);
            _MBLog();
          }

          v40 = v21;
          v21 = 0;
        }

        else
        {
          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v85 = v21;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Error reading snapshot properties from device: %@", buf, 0xCu);
            _MBLog();
          }
        }

        v37 = v21;
        goto LABEL_44;
      }

      [(MBManifestDB *)v11 closeWithError:0];
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = removeFilesNotAlreadyUploaded;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Existing snapshot manifest database failed check: %@", buf, 0xCu);
        goto LABEL_25;
      }
    }

    else
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = removeFilesNotAlreadyUploaded;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to open existing snapshot manifest database: %@", buf, 0xCu);
LABEL_25:
        _MBLog();
      }
    }

    v5 = 0;
LABEL_27:

    goto LABEL_28;
  }

  removeFilesNotAlreadyUploaded = 0;
  v5 = 0;
LABEL_28:

LABEL_29:

  return v5;
}

- (id)_resumeAfterFailureMoving
{
  _setupOperationJournal = [(MBDriveBackupEngine *)self _setupOperationJournal];
  if (_setupOperationJournal)
  {
    v4 = _setupOperationJournal;
    v5 = v4;
    goto LABEL_14;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Determining which files which weren't already moved from the snapshot during the last backup", buf, 2u);
    _MBLog();
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x2020000000;
  v18 = 0;
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  drive = [settingsContext drive];
  settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
  driveSnapshotDir = [settingsContext2 driveSnapshotDir];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001D59C;
  v14[3] = &unk_1000FD620;
  v14[4] = self;
  v14[5] = buf;
  v4 = [drive enumerateContentsOfDirectoryAtPath:driveSnapshotDir options:0 foundItem:v14];

  if (!v4 || ![MBError isError:v4 withCode:4])
  {
    if (v16[24] == 1)
    {
      _openBackupManifestForResume = [(MBDriveBackupEngine *)self _openBackupManifestForResume];

      if (_openBackupManifestForResume)
      {
        _resumeAfterFailureRemoving = _openBackupManifestForResume;
        v4 = _resumeAfterFailureRemoving;
        goto LABEL_13;
      }

      v4 = 0;
    }

    _resumeAfterFailureRemoving = [(MBDriveBackupEngine *)self _resumeAfterFailureRemoving];
    goto LABEL_13;
  }

  _resumeAfterFailureRemoving = [MBBackupHelper driveReadError:v4 description:@"Error getting contents of snapshot"];
LABEL_13:
  v5 = _resumeAfterFailureRemoving;
  _Block_object_dispose(buf, 8);
LABEL_14:

  return v5;
}

- (id)_resumeAfterFailureRemoving
{
  _setupOperationJournal = [(MBDriveBackupEngine *)self _setupOperationJournal];
  if (!_setupOperationJournal)
  {
    if (!self->_backupManifestDB)
    {
      _setupOperationJournal = [(MBDriveBackupEngine *)self _openBackupManifestForResume];
      if (_setupOperationJournal)
      {
        goto LABEL_6;
      }

      backupManifestDB = self->_backupManifestDB;
    }

    _setupOperationJournal = [MBDriveBackupEngine _addBackupPathsNotInManifestDB:"_addBackupPathsNotInManifestDB:operationType:" operationType:?];
    if (!_setupOperationJournal)
    {
      _setupOperationJournal = [(MBDriveBackupEngine *)self _resumeAfterSuccess];
    }
  }

LABEL_6:

  return _setupOperationJournal;
}

- (id)_resumeAfterSuccess
{
  if (self->_backupManifestDB || ([(MBDriveBackupEngine *)self _openBackupManifestForResume], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = 0;
    self->_fullBackup = 0;
  }

  return v3;
}

- (id)_scan
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to scan", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  _setupOperationJournal = [(MBDriveBackupEngine *)self _setupOperationJournal];
  if (_setupOperationJournal)
  {
    goto LABEL_6;
  }

  _setupOperationJournal = [(MBDriveBackupEngine *)self _setupManifestDB];
  if (_setupOperationJournal)
  {
    goto LABEL_6;
  }

  _setupOperationJournal = [(MBDriveBackupEngine *)self _setupEncryption];
  if (_setupOperationJournal)
  {
    goto LABEL_6;
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  objectEnumerator = [plugins objectEnumerator];
  v15 = sub_1000375C0(self, objectEnumerator, "preparingBackupWithEngine:", self);

  if (v15)
  {
LABEL_12:
    v8 = v15;
    goto LABEL_7;
  }

  _setupOperationJournal = [(MBDriveBackupEngine *)self _snapshotFilesystem];
  if (_setupOperationJournal)
  {
    goto LABEL_6;
  }

  persona = [(MBEngine *)self persona];
  isPersonalPersona = [persona isPersonalPersona];

  if (isPersonalPersona)
  {
    persona2 = [(MBEngine *)self persona];
    volumeMountPoint = [persona2 volumeMountPoint];

    mountedSnapshotTracker = [(MBDriveBackupEngine *)self mountedSnapshotTracker];
    v21 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

    v22 = [MBiCloudDrivePlugin backUpiCloudDriveDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v21];
    if (v22 || ([MBiCloudDrivePlugin backUpFPFSDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v21], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v22;

      v10 = v9;
      goto LABEL_8;
    }
  }

  [(MBDriveBackupEngine *)self _recordCurrentTime];
  _setupOperationJournal = [(MBDriveBackupEngine *)self _scanAllDomains];
  if (_setupOperationJournal)
  {
    goto LABEL_6;
  }

  settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
  plugins2 = [settingsContext2 plugins];
  objectEnumerator2 = [plugins2 objectEnumerator];
  v15 = sub_1000375C0(self, objectEnumerator2, "preparedBackupWithEngine:", self);

  if (v15)
  {
    goto LABEL_12;
  }

  _setupOperationJournal = [(MBDriveBackupEngine *)self _findPathsRemovedFromBackup];
  if (_setupOperationJournal || ([(MBDriveBackupEngine *)self _scanFinished], (_setupOperationJournal = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_6:
    v8 = _setupOperationJournal;
LABEL_7:
    v9 = v8;
    v10 = v8;
    goto LABEL_8;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v28 = v26 - v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scanned in %0.3f s", buf, 0xCu);
    +[NSDate timeIntervalSinceReferenceDate];
    _MBLog();
  }

  v10 = 0;
LABEL_8:

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)_recordCurrentTime
{
  v3 = time(0);
  v4 = [(MBDebugContext *)self->super._debugContext valueForName:@"SimulatedSystemDate"];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSince1970];
    self->_maximumModificationTime = v6;
    debugContext = self->super._debugContext;
    v8 = [v5 dateByAddingTimeInterval:1.0];
    [(MBDebugContext *)debugContext setValue:v8 forName:@"SimulatedSystemDate"];
  }

  else
  {
    mountedSnapshotTracker = [(MBDriveBackupEngine *)self mountedSnapshotTracker];
    mountedSnapshots = [mountedSnapshotTracker mountedSnapshots];
    v11 = [mountedSnapshots count];

    if (v11)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }

    self->_maximumModificationTime = v12;
    do
    {
      v18[0].tv_sec = 0;
      *&v18[0].tv_usec = 0;
      gettimeofday(v18, 0);
      v13 = 1000000 - v18[0].tv_usec;
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rolling system clock forward %d us\n", buf, 8u);
        _MBLog();
      }

      usleep(v13);
    }

    while (time(0) <= v3);
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    maximumModificationTime = self->_maximumModificationTime;
    LODWORD(v18[0].tv_sec) = 134218240;
    *(&v18[0].tv_sec + 4) = v3;
    *(&v18[0].tv_usec + 2) = 2048;
    *(&v18[0].tv_usec + 6) = maximumModificationTime;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "currentTime:%ld, maximumModificationTime:%ld", v18, 0x16u);
    v17 = self->_maximumModificationTime;
    _MBLog();
  }
}

- (id)_snapshotFilesystem
{
  [(MBDriveBackupEngine *)self mountedSnapshotTracker];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v52 = v66 = 0u;
  mountedSnapshots = [v52 mountedSnapshots];
  v4 = [mountedSnapshots countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v64;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v64 != v6)
        {
          objc_enumerationMutation(mountedSnapshots);
        }

        v8 = *(*(&v63 + 1) + 8 * i);
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          [v8 snapshotName];
          v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          volumeMountPoint = [v8 volumeMountPoint];
          [v8 snapshotMountPoint];
          v13 = v12 = mountedSnapshots;
          *buf = 138412802;
          v69 = v10;
          v70 = 2112;
          v71 = volumeMountPoint;
          v72 = 2112;
          v73 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found existing snapshot %@ for volume %@ mounted at %@", buf, 0x20u);

          snapshotName = [v8 snapshotName];
          volumeMountPoint2 = [v8 volumeMountPoint];
          snapshotMountPoint = [v8 snapshotMountPoint];
          _MBLog();

          mountedSnapshots = v12;
        }
      }

      v5 = [mountedSnapshots countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v5);
    v16 = 0;
  }

  else
  {

    if ([(MBEngine *)self isDeviceTransferEngine])
    {
      v17 = @"D2D";
      sub_100078238();
    }

    else
    {
      v17 = @"Finder";
      sub_100078244();
    }
    mountedSnapshots = ;
    persona = [(MBEngine *)self persona];
    volumesToBackUp = [persona volumesToBackUp];

    sub_100077FBC(@"com.apple.mobilebackup", v17);
    v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    p_info = &OBJC_METACLASS___MBAppGroup.info;
    v61[4] = self;
    v62 = 0;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10001E46C;
    v61[3] = &unk_1000FD648;
    LOBYTE(persona) = [MBFileSystemManager unmount:mountedSnapshots timeout:&v62 error:v61 cancelationHandler:60.0];
    v22 = v62;
    v23 = v22;
    if (persona)
    {
      v60 = 0;
      v24 = [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:volumesToBackUp withPrefix:@"com.apple.mobilebackup" error:&v60];
      v25 = v60;
      v26 = v25;
      if (v24)
      {
        v48 = v25;
        v53 = mountedSnapshots;
        +[NSDate timeIntervalSinceReferenceDate];
        v28 = v27;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v49 = volumesToBackUp;
        obj = volumesToBackUp;
        v29 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v29)
        {
          v30 = v29;
          v51 = *v57;
          v16 = v23;
          v47 = v23;
          while (2)
          {
            for (j = 0; j != v30; j = j + 1)
            {
              if (*v57 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v56 + 1) + 8 * j);
              v54[4] = self;
              v55 = 0;
              v54[0] = _NSConcreteStackBlock;
              v54[1] = 3221225472;
              v54[2] = sub_10001E474;
              v54[3] = &unk_1000FD648;
              v33 = [p_info + 491 createAndMountSnapshotForVolume:v32 name:*&v20 atFirstAvailableMountPoint:v53 error:&v55 cancelationHandler:{v54, *&v43, v44, v45}];
              v34 = v55;
              v35 = v34;
              if (v33)
              {
                v36 = p_info;
                v37 = MBGetDefaultLog();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  v69 = v20;
                  v70 = 2112;
                  v71 = v32;
                  v72 = 2114;
                  v73 = v33;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ for %@ was mounted successfully at %{public}@", buf, 0x20u);
                  v44 = v32;
                  v45 = v33;
                  v43 = v20;
                  _MBLog();
                }

                [v52 trackSnapshotForVolume:v32 snapshotName:*&v20 mountPoint:v33];
                p_info = v36;
              }

              else
              {
                v16 = v34;
              }

              if (!v33)
              {

                mountedSnapshots = v53;
                volumesToBackUp = v49;
                v23 = v47;
                goto LABEL_35;
              }
            }

            v30 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
            v23 = v47;
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v38 = v23;

        +[NSDate timeIntervalSinceReferenceDate];
        v40 = v39;
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v69 = v40 - v28;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Filesystem snapshots created and mounted in %.3fs", buf, 0xCu);
          _MBLog();
        }

        v16 = 0;
        mountedSnapshots = v53;
        volumesToBackUp = v49;
        v23 = v38;
LABEL_35:
        v26 = v48;
      }

      else
      {
        v16 = v25;
      }
    }

    else
    {
      v16 = v22;
    }
  }

  return v16;
}

- (void)_removeFilesystemSnapshot
{
  mountedSnapshotTracker = [(MBDriveBackupEngine *)self mountedSnapshotTracker];
  mountedSnapshots = [mountedSnapshotTracker mountedSnapshots];

  if ([mountedSnapshots count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = mountedSnapshots;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          volumeMountPoint = [v8 volumeMountPoint];
          snapshotMountPoint = [v8 snapshotMountPoint];
          snapshotName = [v8 snapshotName];
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v26 = snapshotName;
            v27 = 2112;
            v28 = snapshotMountPoint;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unmounting APFS snapshot %@ from %@ and removing it", buf, 0x16u);
            v16 = snapshotName;
            v17 = snapshotMountPoint;
            _MBLog();
          }

          v20 = 0;
          v13 = [MBFileSystemManager unmountAndDeleteSnapshotForVolume:volumeMountPoint name:snapshotName mountPoint:snapshotMountPoint error:&v20];
          v14 = v20;
          if ((v13 & 1) == 0 && ([MBError isError:v14 withCode:4]& 1) == 0)
          {
            v15 = MBGetDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v26 = snapshotName;
              v27 = 2112;
              v28 = snapshotMountPoint;
              v29 = 2112;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to unmount or delete the APFS snapshot %@ at %@: %@", buf, 0x20u);
              v17 = snapshotMountPoint;
              v18 = v14;
              v16 = snapshotName;
              _MBLog();
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v5);
    }
  }
}

- (id)_setupOperationJournal
{
  operationJournal = self->_operationJournal;
  v4 = MBGetDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (operationJournal)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Operation journal already initialized", buf, 2u);
      _MBLog();
    }

    v6 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating snapshot directory on device", buf, 2u);
    _MBLog();
  }

  v8 = +[NSFileManager defaultManager];
  _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
  v19[0] = NSFileOwnerAccountName;
  v19[1] = NSFileGroupOwnerAccountName;
  v20[0] = @"mobile";
  v20[1] = @"mobile";
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = 0;
  v11 = [v8 createDirectoryAtPath:_deviceSnapshotDir withIntermediateDirectories:1 attributes:v10 error:&v17];
  v6 = v17;

  if (v11)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Initializing operation journal", buf, 2u);
      _MBLog();
    }

    v13 = [[MBBackupOperationJournal alloc] initWithBatchSize:self->_batchSize];
    v14 = self->_operationJournal;
    self->_operationJournal = v13;

    if (self->_operationJournal)
    {
      goto LABEL_5;
    }

    v15 = @"Error initializing operation journal";
  }

  else
  {
    v15 = @"Error creating snapshot directory on device";
  }

  v7 = [MBError errorWithCode:102 error:v6 format:v15];
LABEL_15:

  return v7;
}

- (id)_setupSnapshotDirectory
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating snapshot directory on device", buf, 2u);
    _MBLog();
  }

  v4 = +[NSFileManager defaultManager];
  _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
  v13[0] = NSFileOwnerAccountName;
  v13[1] = NSFileGroupOwnerAccountName;
  v14[0] = @"mobile";
  v14[1] = @"mobile";
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = 0;
  v7 = [v4 createDirectoryAtPath:_deviceSnapshotDir withIntermediateDirectories:1 attributes:v6 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = [MBError errorWithCode:102 error:v8 format:@"Error creating snapshot directory on device"];

    v8 = v9;
  }

  return v8;
}

- (id)_setupManifestDB
{
  _setupSnapshotDirectory = [(MBDriveBackupEngine *)self _setupSnapshotDirectory];
  if (_setupSnapshotDirectory)
  {
    v4 = _setupSnapshotDirectory;
    v5 = v4;
    goto LABEL_18;
  }

  v6 = sub_10008FD70([(MBDriveBackupEngine *)self engineType]);
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "requiredProductVersion:%{public}@", buf, 0xCu);
    _MBLog();
  }

  snapshotManifestDB = self->_snapshotManifestDB;
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (snapshotManifestDB)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manifest database already initialized", buf, 2u);
      _MBLog();
    }

    v4 = 0;
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initializing snapshot manifest database", buf, 2u);
      _MBLog();
    }

    _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
    v9 = [_deviceSnapshotDir stringByAppendingPathComponent:@"Manifest.db"];

    backupManifestDB = self->_backupManifestDB;
    if (backupManifestDB)
    {
      properties = [(MBManifestDB *)backupManifestDB properties];
    }

    else
    {
      properties = 0;
    }

    v14 = [[MBManifestDB alloc] initWithPath:v9 properties:properties domainManager:self->super._domainManager];
    v15 = self->_snapshotManifestDB;
    self->_snapshotManifestDB = v14;

    v16 = self->_snapshotManifestDB;
    v24 = 0;
    v17 = [(MBManifestDB *)v16 openWithError:&v24];
    v4 = v24;
    if (!v17)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to open snapshot manifest database at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v5 = [MBError errorWithCode:102 error:v4 format:@"Error initializing manifest database"];

      goto LABEL_17;
    }
  }

  properties2 = [(MBManifestDB *)self->_snapshotManifestDB properties];
  [properties2 removeAllContainers];

  properties3 = [(MBManifestDB *)self->_snapshotManifestDB properties];
  allContainers = [(MBAppManager *)self->super._appManager allContainers];
  [properties3 addContainersFromArray:allContainers];

  properties4 = [(MBManifestDB *)self->_snapshotManifestDB properties];
  [properties4 setRequiredProductVersion:v6];

  v4 = v4;
  v5 = v4;
LABEL_17:

LABEL_18:

  return v5;
}

- (id)_setupEncryption
{
  snapshotManifestDB = self->_snapshotManifestDB;
  if (snapshotManifestDB)
  {
    v4 = snapshotManifestDB;
  }

  else
  {
    v4 = self->_backupManifestDB;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    properties = [(MBManifestDB *)v4 properties];
    if ([properties encrypted])
    {
      v7 = @"encrypted";
    }

    else
    {
      v7 = @"unencrypted";
    }

    *buf = 138412290;
    v56 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Existing backup is %@", buf, 0xCu);

    properties2 = [(MBManifestDB *)v4 properties];
    if ([properties2 encrypted])
    {
      v9 = @"encrypted";
    }

    else
    {
      v9 = @"unencrypted";
    }

    v49 = v9;
    _MBLog();
  }

LABEL_13:
  if ([(MBEngine *)self encrypted])
  {
    password = [(MBDriveBackupEngine *)self password];

    if (!password)
    {
      sub_10009C318();
    }
  }

  if ([(MBEngine *)self encrypted])
  {
    password2 = [(MBDriveBackupEngine *)self password];
    v54 = 0;
    v12 = [(MBManifestDB *)v4 setupEncryptionWithPassword:password2 withError:&v54];
    v13 = v54;

    if ((v12 & 1) == 0)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
        _MBLog();
      }

      v15 = v13;
      v16 = v15;
      goto LABEL_54;
    }
  }

  else
  {
    v13 = 0;
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  keybag = [settingsContext keybag];

  if (keybag)
  {
    if (!self->_fullBackup || self->_retryCount)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Keybag already initialized", buf, 2u);
        _MBLog();
      }

      goto LABEL_41;
    }

    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Performing full backup, creating keybag", buf, 2u);
      _MBLog();
    }

    password3 = [(MBDriveBackupEngine *)self password];
    v51 = v13;
    v41 = [MBKeyBag keybagWithPassword:password3 error:&v51];
    v16 = v51;

    settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
    [settingsContext2 setKeybag:v41];

    if (!v16)
    {
      v13 = 0;
      goto LABEL_41;
    }

    goto LABEL_53;
  }

  properties3 = [(MBManifestDB *)v4 properties];
  keybagData = [properties3 keybagData];
  if (!keybagData)
  {
    goto LABEL_39;
  }

  fullBackup = self->_fullBackup;

  if (!fullBackup)
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Decoding and unlocking keybag from manifest", buf, 2u);
      _MBLog();
    }

    properties4 = [(MBManifestDB *)v4 properties];
    properties3 = [properties4 keybagData];

    if (!properties3)
    {
      v37 = [MBError errorWithCode:205 format:@"No keybag in manifest"];
      v16 = v13;
      goto LABEL_45;
    }

    password4 = [(MBDriveBackupEngine *)self password];
    v53 = v13;
    v26 = [MBKeyBag unlockedKeyBagWithData:properties3 password:password4 error:&v53];
    v16 = v53;

    settingsContext3 = [(MBDriveBackupEngine *)self settingsContext];
    [settingsContext3 setKeybag:v26];

    if (v16)
    {
      if (![MBError isError:v16 withCode:207])
      {
        v35 = @"Error decoding keybag from manifest";
        v36 = 205;
        goto LABEL_43;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Password in keychain doesn't match keybag", buf, 2u);
        _MBLog();
      }
    }

    v13 = 0;
LABEL_39:
  }

  settingsContext4 = [(MBDriveBackupEngine *)self settingsContext];
  keybag2 = [settingsContext4 keybag];

  if (keybag2)
  {
LABEL_41:
    encrypted = [(MBEngine *)self encrypted];
    properties5 = [(MBManifestDB *)self->_snapshotManifestDB properties];
    [properties5 setEncrypted:encrypted];

    settingsContext5 = [(MBDriveBackupEngine *)self settingsContext];
    keybag3 = [settingsContext5 keybag];
    v50 = v13;
    properties3 = [keybag3 dataWithError:&v50];
    v16 = v50;

    if (!v16)
    {
      properties6 = [(MBManifestDB *)self->_snapshotManifestDB properties];
      [properties6 setKeybagData:properties3];

      v37 = 0;
      goto LABEL_45;
    }

    v35 = @"Error encoding keybag";
    v36 = 1;
LABEL_43:
    v37 = [MBError errorWithCode:v36 error:v16 format:v35];
LABEL_45:

    goto LABEL_55;
  }

  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Creating keybag", buf, 2u);
    _MBLog();
  }

  password5 = [(MBDriveBackupEngine *)self password];
  v52 = v13;
  v45 = [MBKeyBag keybagWithPassword:password5 error:&v52];
  v16 = v52;

  settingsContext6 = [(MBDriveBackupEngine *)self settingsContext];
  [settingsContext6 setKeybag:v45];

  if (!v16)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Performing a full backup", buf, 2u);
      _MBLog();
    }

    v13 = 0;
    self->_fullBackup = 1;
    goto LABEL_41;
  }

LABEL_53:
  v15 = [MBError errorWithCode:1 error:v16 format:@"Error creating keybag"];
LABEL_54:
  v37 = v15;
LABEL_55:

  return v37;
}

- (id)_scanAllDomains
{
  debugContext = self->super._debugContext;
  v4 = [NSNumber numberWithBool:self->_fullBackup];
  [(MBDebugContext *)debugContext setValue:v4 forName:@"DidFullBackup"];

  v5 = self->super._debugContext;
  v6 = [NSNumber numberWithBool:[(MBDriveBackupEngine *)self isFinalRetry]];
  [(MBDebugContext *)v5 setValue:v6 forName:@"IsFinalRetry"];

  v7 = [[MBFileScanner alloc] initWithDelegate:self mode:2 enginePolicy:[(MBEngine *)self enginePolicy] debugContext:self->super._debugContext];
  [(MBDriveBackupEngine *)self setScanner:v7];
  if ([(MBEngine *)self isCanceled])
  {
    [(MBFileScanner *)v7 cancel];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_domainsToScan;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        mountedSnapshotTracker = [(MBDriveBackupEngine *)self mountedSnapshotTracker];
        volumeMountPoint = [v13 volumeMountPoint];
        v16 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

        if (!v16)
        {
          sub_10009C374();
        }

        if ([v13 isPlaceholderDomain])
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping scanning the PlaceholderDomain", buf, 2u);
            _MBLog();
          }
        }

        else
        {
          v18 = [(MBFileScanner *)v7 scanDomain:v13 snapshotMountPoint:v16];
          if (v18)
          {
            modifiedDomains = v18;

            v23 = modifiedDomains;
            goto LABEL_20;
          }
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    loggableStats = [(MBFileScanner *)v7 loggableStats];
    *buf = 138412290;
    v31 = loggableStats;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Finished scanning all domains - %@", buf, 0xCu);

    loggableStats2 = [(MBFileScanner *)v7 loggableStats];
    _MBLog();
  }

  modifiedDomains = self->_modifiedDomains;
  modifiedDomains = [(MBFileScanner *)v7 modifiedDomains];
  [(NSMutableSet *)modifiedDomains unionSet:modifiedDomains];
  v23 = 0;
LABEL_20:

  return v23;
}

- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified
{
  modifiedCopy = modified;
  fileID = [modifiedCopy fileID];
  v7 = 0;
  if (([(MBManifestDB *)self->_snapshotManifestDB flagsForFileID:fileID error:0]& 8) != 0)
  {
    v7 = [(MBManifestDB *)self->_snapshotManifestDB fetchFileWithID:fileID error:0];
  }

  if (!self->_fullBackup && !v7)
  {
    v7 = [(MBManifestDB *)self->_backupManifestDB fetchFileWithID:fileID error:0];
  }

  if (v7)
  {
    lastModified = [modifiedCopy lastModified];
    v9 = lastModified != [v7 lastModified];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  scannerCopy = scanner;
  fileCopy = file;
  v8 = objc_autoreleasePoolPush();
  snapshotManifestDB = self->_snapshotManifestDB;
  fileID = [fileCopy fileID];
  v11 = [(MBManifestDB *)snapshotManifestDB flagsForFileID:fileID error:0];

  v12 = self->_snapshotManifestDB;
  fileID2 = [fileCopy fileID];
  v14 = [(MBManifestDB *)v12 flagsForFileID:fileID2 error:0];

  v15 = 0;
  if ((v11 & 8) != 0)
  {
    v16 = self->_snapshotManifestDB;
    fileID3 = [fileCopy fileID];
    v15 = [(MBManifestDB *)v16 fetchFileWithID:fileID3 error:0];
  }

  if (!self->_fullBackup && !v15)
  {
    backupManifestDB = self->_backupManifestDB;
    fileID4 = [fileCopy fileID];
    v15 = [(MBManifestDB *)backupManifestDB fetchFileWithID:fileID4 error:0];

    properties = [(MBManifestDB *)self->_backupManifestDB properties];
    if ([properties encrypted])
    {
      v21 = v15 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21 && ([v15 isRegularFile] & 1) != 0)
    {
      encryptionKey = [v15 encryptionKey];

      if (!encryptionKey)
      {
        fileID5 = [fileCopy fileID];
        v24 = [MBError errorWithCode:205 format:@"Encryption key missing: %@ (%@)", v15, fileID5];

LABEL_48:
        goto LABEL_43;
      }

      goto LABEL_14;
    }
  }

  if (!v15)
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      typeString = [fileCopy typeString];
      absolutePath = [fileCopy absolutePath];
      fileID6 = [fileCopy fileID];
      *buf = 138412802;
      v68 = typeString;
      v69 = 2112;
      v70 = absolutePath;
      v71 = 2112;
      v72 = fileID6;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Added %@: %@ (%@)", buf, 0x20u);

      typeString2 = [fileCopy typeString];
      absolutePath2 = [fileCopy absolutePath];
      fileID7 = [fileCopy fileID];
      _MBLog();
    }

    if ([fileCopy isRegularFile])
    {
      [(MBDriveBackupEngine *)self _addFileToUploadAndMove:fileCopy flags:0];
    }

    else
    {
      v24 = [(MBDriveBackupEngine *)self _addMetadataToFile:fileCopy];
      if (!v24)
      {
        [(MBDriveBackupEngine *)self _addFileToLeaveAlone:fileCopy flags:0];
        goto LABEL_43;
      }

      if (![MBError isError:v24 withCode:4])
      {
        goto LABEL_43;
      }

      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath3 = [fileCopy absolutePath];
        fileID8 = [fileCopy fileID];
        *buf = 138412546;
        v68 = absolutePath3;
        v69 = 2112;
        v70 = fileID8;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Removed while getting metadata: %@ (%@)", buf, 0x16u);

        absolutePath4 = [fileCopy absolutePath];
        fileID9 = [fileCopy fileID];
        _MBLog();
      }

      modifiedDomains = self->_modifiedDomains;
      domain = [fileCopy domain];
      [(NSMutableSet *)modifiedDomains addObject:domain];
    }

LABEL_42:
    v24 = 0;
    goto LABEL_43;
  }

LABEL_14:
  lastModified = [fileCopy lastModified];
  if (lastModified == [v15 lastModified])
  {
    v26 = MBGetDefaultLog();
    v27 = v26;
    if ((v11 & 8) != 0 && (v14 & 0x80) != 0)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        absolutePath5 = [fileCopy absolutePath];
        fileID10 = [fileCopy fileID];
        *buf = 138412546;
        v68 = absolutePath5;
        v69 = 2112;
        v70 = fileID10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Unmodified and already uploaded to snapshot: %@ (%@)", buf, 0x16u);

        absolutePath6 = [fileCopy absolutePath];
        fileID11 = [fileCopy fileID];
        _MBLog();
      }

      [(MBDriveBackupEngine *)self _addFileToMove:v15];
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        typeString3 = [fileCopy typeString];
        absolutePath7 = [fileCopy absolutePath];
        fileID12 = [fileCopy fileID];
        *buf = 138412802;
        v68 = typeString3;
        v69 = 2112;
        v70 = absolutePath7;
        v71 = 2112;
        v72 = fileID12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Unmodified %@: %@ (%@)", buf, 0x20u);

        typeString4 = [fileCopy typeString];
        absolutePath8 = [fileCopy absolutePath];
        fileID13 = [fileCopy fileID];
        _MBLog();
      }

      [(MBDriveBackupEngine *)self _addFileToLeaveAlone:v15 flags:0];
    }

    goto LABEL_41;
  }

  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    typeString5 = [fileCopy typeString];
    absolutePath9 = [fileCopy absolutePath];
    fileID14 = [fileCopy fileID];
    *buf = 138412802;
    v68 = typeString5;
    v69 = 2112;
    v70 = absolutePath9;
    v71 = 2112;
    v72 = fileID14;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Modified %@: %@ (%@)", buf, 0x20u);

    typeString6 = [fileCopy typeString];
    absolutePath10 = [fileCopy absolutePath];
    fileID15 = [fileCopy fileID];
    _MBLog();
  }

  if ([fileCopy isRegularFile])
  {
    [(MBDriveBackupEngine *)self _addFileToUploadAndMove:fileCopy flags:0];
LABEL_41:

    goto LABEL_42;
  }

  v24 = [(MBDriveBackupEngine *)self _addMetadataToFile:fileCopy];
  if (!v24)
  {
    [(MBDriveBackupEngine *)self _addFileToLeaveAlone:fileCopy flags:0];
    goto LABEL_48;
  }

  if ([MBError isError:v24 withCode:4])
  {
    v54 = MBGetDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      absolutePath11 = [fileCopy absolutePath];
      fileID16 = [fileCopy fileID];
      *buf = 138412546;
      v68 = absolutePath11;
      v69 = 2112;
      v70 = fileID16;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Removed while getting metadata: %@ (%@)", buf, 0x16u);

      absolutePath12 = [fileCopy absolutePath];
      fileID17 = [fileCopy fileID];
      _MBLog();
    }

    v58 = self->_modifiedDomains;
    domain2 = [fileCopy domain];
    [(NSMutableSet *)v58 addObject:domain2];

    goto LABEL_41;
  }

  v24 = v24;

LABEL_43:
  objc_autoreleasePoolPop(v8);

  return v24;
}

- (BOOL)fileScanner:(id)scanner shouldExcludeFile:(id)file
{
  fileCopy = file;
  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    goto LABEL_7;
  }

  if ([(MBEngine *)self encrypted])
  {
    goto LABEL_7;
  }

  domain = [fileCopy domain];
  relativePathsToOnlyBackupEncrypted = [domain relativePathsToOnlyBackupEncrypted];
  relativePath = [fileCopy relativePath];
  v9 = [relativePathsToOnlyBackupEncrypted containsObject:relativePath];

  if (!v9)
  {
LABEL_7:
    v12 = 0;
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      absolutePath = [fileCopy absolutePath];
      *buf = 138412290;
      v16 = absolutePath;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "File excluded in unencrypted drive backups: %@", buf, 0xCu);

      absolutePath2 = [fileCopy absolutePath];
      _MBLog();
    }

    v12 = 1;
  }

  return v12;
}

- (void)_addFileToUploadAndMove:(id)move flags:(unint64_t)flags
{
  moveCopy = move;
  v6 = [moveCopy size];
  if (*&self->_inodeCache == 0)
  {
    v9 = 0;
  }

  else
  {
    if ([moveCopy isHardLink])
    {
      v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [moveCopy inodeNumber]);
      if (([(NSMutableSet *)self->_inodeCache containsObject:v7]& 1) != 0)
      {
        v9 = 1;
      }

      else
      {
        [(NSMutableSet *)self->_inodeCache addObject:v7];
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    if ([moveCopy isFullClone])
    {
      v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [moveCopy cloneID]);
      if ([(NSMutableSet *)self->_cloneIDCache containsObject:v8])
      {
        v9 = v9 | 2;
      }

      else
      {
        [(NSMutableSet *)self->_cloneIDCache addObject:v8];
      }
    }
  }

  domain = [moveCopy domain];
  fileID = [moveCopy fileID];
  absolutePath = [moveCopy absolutePath];
  v13 = [MBBackupOperation backupOperationWithType:2 domain:domain fileID:fileID path:absolutePath size:v6 flags:v9];

  [(MBBackupOperationJournal *)self->_operationJournal addOperation:v13];
  domain2 = [moveCopy domain];
  fileID2 = [moveCopy fileID];
  v16 = [MBBackupOperation backupOperationWithType:3 domain:domain2 fileID:fileID2 path:0 size:0];

  [(MBBackupOperationJournal *)self->_operationJournal addOperation:v16];
  v17 = [(MBManifestDB *)self->_snapshotManifestDB addPlaceholderForFile:moveCopy flags:flags];
  snapshotManifestDB = self->_snapshotManifestDB;
  fileID3 = [moveCopy fileID];
  v20 = [(MBManifestDB *)snapshotManifestDB setFlags:0 mask:-65 forFileID:fileID3];
}

- (void)_addFileToMove:(id)move
{
  moveCopy = move;
  domain = [moveCopy domain];
  fileID = [moveCopy fileID];
  v10 = [MBBackupOperation backupOperationWithType:3 domain:domain fileID:fileID path:0 size:0];

  [(MBBackupOperationJournal *)self->_operationJournal addOperation:v10];
  snapshotManifestDB = self->_snapshotManifestDB;
  fileID2 = [moveCopy fileID];

  v9 = [(MBManifestDB *)snapshotManifestDB setFlags:136 mask:-65 forFileID:fileID2];
}

- (id)_addMetadataToFile:(id)file
{
  fileCopy = file;
  if ([fileCopy isRegularFile])
  {
    sub_10009C3A0();
  }

  v21 = 0;
  v4 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [fileCopy absolutePathFSR], &v21);
  v5 = v21;
  [fileCopy setExtendedAttributes:v4];

  extendedAttributes = [fileCopy extendedAttributes];

  if (extendedAttributes)
  {
    extendedAttributes2 = [fileCopy extendedAttributes];
    v8 = [MBExtendedAttributes sizeOfAttributes:extendedAttributes2];

    if (v8 >= 0x801)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath = [fileCopy absolutePath];
        *buf = 134218498;
        v23 = v8;
        v24 = 1024;
        v25 = 2048;
        v26 = 2112;
        v27 = absolutePath;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extended attributes size greater than supported (%{bytes}lu > %{bytes}d): %@", buf, 0x1Cu);

        [fileCopy absolutePath];
        v20 = v19 = 2048;
        v18 = v8;
        _MBLog();
      }

      [fileCopy setExtendedAttributes:&__NSDictionary0__struct];
    }

    if ([fileCopy isSymbolicLink])
    {
      if ([fileCopy isDataless])
      {
        relativePath = [fileCopy relativePath];
        backupSymbolicLinkTarget = [MBError errorWithDomain:NSCocoaErrorDomain code:3328 format:@"Dataless symlinks are not supported: %@", relativePath];
      }

      else
      {
        backupSymbolicLinkTarget = [fileCopy backupSymbolicLinkTarget];

        if (backupSymbolicLinkTarget)
        {
          v5 = backupSymbolicLinkTarget;
          backupSymbolicLinkTarget = v5;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      backupSymbolicLinkTarget = 0;
    }
  }

  else
  {
    v13 = [MBError isError:v5 withCode:4];
    absolutePath2 = [fileCopy absolutePath];
    if (v13)
    {
      v15 = @"File removed while getting extended attributes";
      v16 = 4;
    }

    else
    {
      v15 = @"Error reading extended attributes";
      v16 = 101;
    }

    backupSymbolicLinkTarget = [MBError errorWithCode:v16 error:v5 path:absolutePath2 format:v15];
  }

  return backupSymbolicLinkTarget;
}

- (id)_findPathsRemovedFromBackup
{
  if (self->_fullBackup)
  {
    v2 = 0;
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Searching old manifest for removed regular files", buf, 2u);
    _MBLog();
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_100020E64;
  v15 = sub_100020E74;
  v16 = 0;
  backupManifestDB = self->_backupManifestDB;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020E7C;
  v10[3] = &unk_1000FD670;
  v10[4] = self;
  v10[5] = buf;
  v6 = [(MBManifestDB *)backupManifestDB enumerateFiles:v10];
  v2 = v6;
  v7 = *(v12 + 5);
  if (v7 || (v7 = v6) != 0)
  {
    v4 = v7;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(buf, 8);

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (id)_scanFinished
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Committing operation journal", buf, 2u);
    _MBLog();
  }

  [(MBBackupOperationJournal *)self->_operationJournal commit];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(MBBackupOperationJournal *)self->_operationJournal size];
    *buf = 134217984;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Operation journal size: %{bytes}llu", buf, 0xCu);
    v25 = [(MBBackupOperationJournal *)self->_operationJournal size];
    _MBLog();
  }

  if (![(MBEngine *)self encrypted])
  {
    v13 = 0;
    goto LABEL_12;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetching manifest encryption key", buf, 2u);
    _MBLog();
  }

  snapshotManifestDB = self->_snapshotManifestDB;
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  keybag = [settingsContext keybag];
  v28 = 0;
  v10 = [(MBManifestDB *)snapshotManifestDB getEncryptedFileHandleWithKeybag:keybag error:&v28];
  v11 = v28;

  if (!v10)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Couldn't get an encrypted file handle for the manifest DB, and therefore couldn't write out its wrapped key", buf, 2u);
      _MBLog();
    }

    v20 = @"Error getting manifest encryption key";
    v21 = 101;
LABEL_20:
    v19 = [MBError errorWithCode:v21 error:v11 format:v20, v25];
    goto LABEL_21;
  }

  v27 = v11;
  v12 = [v10 encryptionKeyWithError:&v27];
  v13 = v27;

  if (v12)
  {
    properties = [(MBManifestDB *)self->_snapshotManifestDB properties];
    [properties setManifestEncryptionKey:v12];

LABEL_12:
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Saving snapshot properties", buf, 2u);
      _MBLog();
    }

    properties2 = [(MBManifestDB *)self->_snapshotManifestDB properties];
    _deviceSnapshotPropertiesPath = [(MBDriveBackupEngine *)self _deviceSnapshotPropertiesPath];
    v26 = v13;
    v18 = [properties2 writeToFile:_deviceSnapshotPropertiesPath error:&v26];
    v11 = v26;

    if (v18)
    {
      v19 = 0;
      goto LABEL_21;
    }

    v20 = @"Error saving snapshot properties";
    v21 = 102;
    goto LABEL_20;
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't get the wrapped key for the manifest DB", buf, 2u);
    _MBLog();
  }

  v19 = [MBError errorWithCode:101 error:v13 format:@"Error getting manifest encryption key"];

  v11 = v13;
LABEL_21:

  return v19;
}

- (id)_prepareForPreflight
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to prepare for preflight", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  _prepareProgress = [(MBDriveBackupEngine *)self _prepareProgress];
  if (_prepareProgress || ([(MBDriveBackupEngine *)self _prepareFreeSpace], (_prepareProgress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = _prepareProgress;
    v9 = v8;
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v12 = v11;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v12 - v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prepared for preflight in %0.3fs", buf, 0xCu);
      _MBLog();
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)_prepareForUpload
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting to prepare for backup", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  _prepareResume = [(MBDriveBackupEngine *)self _prepareResume];
  if (_prepareResume || ([(MBDriveBackupEngine *)self _prepareMoveBackup], (_prepareResume = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveBackupEngine *)self _prepareSnapshot], (_prepareResume = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = _prepareResume;
    v9 = v8;
  }

  else
  {
    if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrashAfterPreparing"])
    {
      abort();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v12 = v11;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = v12 - v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Prepared for backup in %0.3fs", buf, 0xCu);
      _MBLog();
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)_prepareProgress
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Calculating expected duration", buf, 2u);
    _MBLog();
  }

  if ([(MBStatus *)self->_status isMoving]&& !self->_retryCount)
  {
    driveScript = self->_driveScript;
    v5 = [(MBBackupOperationJournal *)self->_operationJournal driveOperationsForType:0];
    [(MBDriveScript *)driveScript addOperations:v5];

    v6 = self->_driveScript;
    v7 = +[MBDriveOperation operationToMoveItem];
    [(MBDriveScript *)v6 addOperation:v7];

    v8 = self->_driveScript;
    v9 = +[MBDriveOperation operationToMoveItem];
    [(MBDriveScript *)v8 addOperation:v9];

    v10 = self->_driveScript;
    v11 = [MBDriveOperation operationToUploadFileWithSize:0];
    [(MBDriveScript *)v10 addOperation:v11];
  }

  if (([(MBStatus *)self->_status isMoving]|| [(MBStatus *)self->_status isRemoving]) && !self->_retryCount)
  {
    v12 = self->_driveScript;
    v13 = [(MBBackupOperationJournal *)self->_operationJournal driveOperationsForType:1];
    [(MBDriveScript *)v12 addOperations:v13];

    v14 = self->_driveScript;
    v15 = +[MBDriveOperation operationToRemoveItem];
    [(MBDriveScript *)v14 addOperation:v15];

    v16 = self->_driveScript;
    v17 = +[MBDriveOperation operationToRemoveItem];
    [(MBDriveScript *)v16 addOperation:v17];

    v18 = self->_driveScript;
    v19 = [MBDriveOperation operationToUploadFileWithSize:0];
    [(MBDriveScript *)v18 addOperation:v19];
  }

  status = self->_status;
  if (status)
  {
    [(MBStatus *)status version];
    if (v21 < 3.3 && ![(MBDriveBackupEngine *)self movedOldBackup])
    {
      v22 = self->_driveScript;
      v23 = +[MBDriveOperation operationToMoveItem];
      [(MBDriveScript *)v22 addOperation:v23];
    }
  }

  v24 = self->_driveScript;
  v25 = +[MBDriveOperation operationToCreateDirectory];
  [(MBDriveScript *)v24 addOperation:v25];

  v26 = self->_driveScript;
  v27 = +[MBDriveOperation operationToCreateDirectory];
  [(MBDriveScript *)v26 addOperation:v27];

  prefixDirectories = [(MBDriveBackupEngine *)self prefixDirectories];
  v29 = [prefixDirectories count];

  if (v29 >= 1)
  {
    do
    {
      v30 = self->_driveScript;
      v31 = +[MBDriveOperation operationToCreateDirectory];
      [(MBDriveScript *)v30 addOperation:v31];

      v32 = self->_driveScript;
      v33 = +[MBDriveOperation operationToCreateDirectory];
      [(MBDriveScript *)v32 addOperation:v33];

      --v29;
    }

    while (v29);
  }

  v34 = self->_driveScript;
  v35 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v34 addOperation:v35];

  v36 = self->_driveScript;
  v37 = [(MBBackupOperationJournal *)self->_operationJournal driveOperationsForType:2];
  [(MBDriveScript *)v36 addOperations:v37];

  v38 = self->_driveScript;
  v39 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v38 addOperation:v39];

  v40 = self->_driveScript;
  v41 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v40 addOperation:v41];

  v42 = self->_driveScript;
  v43 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v42 addOperation:v43];

  v44 = self->_driveScript;
  v45 = [(MBBackupOperationJournal *)self->_operationJournal driveOperationsForType:3];
  [(MBDriveScript *)v44 addOperations:v45];

  v46 = self->_driveScript;
  v47 = +[MBDriveOperation operationToMoveItem];
  [(MBDriveScript *)v46 addOperation:v47];

  v48 = self->_driveScript;
  v49 = +[MBDriveOperation operationToMoveItem];
  [(MBDriveScript *)v48 addOperation:v49];

  v50 = self->_driveScript;
  v51 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v50 addOperation:v51];

  v52 = self->_driveScript;
  v53 = [(MBBackupOperationJournal *)self->_operationJournal driveOperationsForType:4];
  [(MBDriveScript *)v52 addOperations:v53];

  v54 = self->_driveScript;
  v55 = +[MBDriveOperation operationToRemoveItem];
  [(MBDriveScript *)v54 addOperation:v55];

  v56 = self->_driveScript;
  v57 = +[MBDriveOperation operationToRemoveItem];
  [(MBDriveScript *)v56 addOperation:v57];

  v58 = self->_driveScript;
  v59 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v58 addOperation:v59];

  v60 = self->_status;
  if (v60)
  {
    [(MBStatus *)v60 version];
    if (v61 < 3.3)
    {
      v62 = self->_driveScript;
      v63 = +[MBDriveOperation operationToRemoveItem];
      [(MBDriveScript *)v62 addOperation:v63];
    }
  }

  [(MBDriveScript *)self->_driveScript beginPerforming];
  v64 = [(MBDebugContext *)self->super._debugContext valueForName:@"InjectedDriveErrorIndex"];

  if (v64)
  {
    v65 = [[MBErrorInjectorDrive alloc] initWithScript:self->_driveScript delegate:self->_drive index:[(MBDebugContext *)self->super._debugContext intForName:@"InjectedDriveErrorIndex"] subindex:[(MBDebugContext *)self->super._debugContext intForName:@"InjectedDriveErrorSubindex"]];
    drive = self->_drive;
    self->_drive = &v65->super;

    if ([(MBErrorInjectorDrive *)v65 done])
    {
      [(MBDebugContext *)self->super._debugContext setFlag:@"DoneInjectingDriveErrors"];
    }

    else
    {
      [(MBDebugContext *)self->super._debugContext setInt:[(MBErrorInjectorDrive *)v65 nextIndex] forName:@"NextInjectedDriveErrorIndex"];
      [(MBDebugContext *)self->super._debugContext setInt:[(MBErrorInjectorDrive *)v65 nextSubindex] forName:@"NextInjectedDriveErrorSubindex"];
    }
  }

  v67 = MBGetDefaultLog();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    [(MBProgress *)self->_progress total];
    *buf = 134217984;
    v71 = v68;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Expected duration: %0.3f s", buf, 0xCu);
    [(MBProgress *)self->_progress total];
    _MBLog();
  }

  return 0;
}

- (id)_prepareFreeSpace
{
  v3 = [(MBBackupOperationJournal *)self->_operationJournal countForType:2];
  v4 = [(MBBackupOperationJournal *)self->_operationJournal sizeForType:2];
  v5 = [(MBBackupOperationJournal *)self->_operationJournal sizeExcludingHardlinksAndClonesForType:2];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v29 = v4;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "uploadSize:%llu(%llu), uploadFileCount:%llu", buf, 0x20u);
    _MBLog();
  }

  [(MBDriveBackupEngine *)self setUploadFileCount:v3];
  [(MBDriveBackupEngine *)self setUploadSize:v4];
  [(MBDriveBackupEngine *)self setUploadSizeExcludingHardlinksAndClones:v5];
  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    v7 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v8 = [(MBDrive *)self->_drive freeSpace:&v27 error:&v26];
    v9 = v26;
    if (v8)
    {
      v10 = 0;
      v11 = v4 + 0x8000000;
      while (1)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v29 = v27;
          v30 = 2048;
          v31 = v27;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Free disk space on drive: %llu (%{bytes}llu)", buf, 0x16u);
          _MBLog();
        }

        v13 = (v11 - v27);
        if ((v11 - v27) < 0)
        {
          v9 = v9;
          v7 = v9;
          goto LABEL_28;
        }

        if (v10)
        {
          v16 = v9;
          goto LABEL_25;
        }

        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Need extra space on host: %lld. Requesting host to purge now", buf, 0xCu);
          _MBLog();
        }

        v24 = v9;
        v25 = 0;
        v15 = [(MBDrive *)self->_drive purgeDiskSpace:&v25 amountRequested:v13 + 0x80000000 urgencyLevel:4 error:&v24];
        v16 = v24;

        v17 = MBGetDefaultLog();
        v18 = v17;
        if ((v15 & 1) == 0)
        {
          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v29 = v25;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully purged on host: %llu", buf, 0xCu);
          _MBLog();
        }

        drive = self->_drive;
        v26 = v16;
        v20 = [(MBDrive *)drive freeSpace:&v27 error:&v26];
        v9 = v26;

        v10 = 1;
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to purge disk space of drive: %@", buf, 0xCu);
        _MBLog();
      }

LABEL_25:
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v29 = v27;
        v30 = 2048;
        v31 = v4;
        v32 = 1024;
        LODWORD(v33) = 0x8000000;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Insufficient free disk space on drive to backup (%llu < %llu + %d)", buf, 0x1Cu);
        _MBLog();
      }

      v7 = [MBError errorWithCode:105 format:@"Insufficient free disk space on drive to back up"];
      v9 = v16;
    }

    else
    {
LABEL_17:
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get the free space of drive: %@", buf, 0xCu);
        _MBLog();
      }

      v7 = 0;
    }

LABEL_28:
  }

  return v7;
}

- (id)_prepareResume
{
  if (![(MBStatus *)self->_status isMoving]|| self->_retryCount || ([(MBDriveBackupEngine *)self _moveWithOperationType:0], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (([(MBStatus *)self->_status isMoving]|| [(MBStatus *)self->_status isRemoving]) && !self->_retryCount)
    {
      v3 = [(MBDriveBackupEngine *)self _removeWithOperationType:1];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_prepareMoveBackup
{
  status = self->_status;
  if (status && ([(MBStatus *)status version], v4 < 3.3) && ![(MBDriveBackupEngine *)self movedOldBackup])
  {
    settingsContext = [(MBDriveBackupEngine *)self settingsContext];
    targetIdentifier = [settingsContext targetIdentifier];

    v9 = +[NSDate date];
    v10 = objc_alloc_init(NSDateFormatter);
    [v10 setDateFormat:@"yyyyMMdd-HHmmss"];
    v11 = [v10 stringFromDate:v9];
    v12 = [NSString stringWithFormat:@"%@-%@", targetIdentifier, v11];
    [(MBDriveBackupEngine *)self setMovedBackupName:v12];

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      movedBackupName = [(MBDriveBackupEngine *)self movedBackupName];
      *buf = 138412546;
      v22 = targetIdentifier;
      v23 = 2112;
      v24 = movedBackupName;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Renaming existing backup %@ to %@", buf, 0x16u);

      movedBackupName2 = [(MBDriveBackupEngine *)self movedBackupName];
      _MBLog();
    }

    drive = self->_drive;
    movedBackupName3 = [(MBDriveBackupEngine *)self movedBackupName];
    v20 = 0;
    v17 = [(MBDrive *)drive moveItemAtPath:targetIdentifier toPath:movedBackupName3 options:0 error:&v20];
    v18 = v20;

    if (v17)
    {
      [(MBDriveBackupEngine *)self setMovedOldBackup:1];
      v5 = 0;
    }

    else
    {
      v5 = v18;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_prepareSnapshot
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating backup directory", buf, 2u);
    _MBLog();
  }

  drive = self->_drive;
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  driveBackupDir = [settingsContext driveBackupDir];
  v58 = 0;
  v7 = [(MBDrive *)drive createDirectoryAtPath:driveBackupDir options:0 error:&v58];
  v8 = v58;

  if ((v7 & 1) == 0)
  {
    if (![MBError isError:v8 withCode:3])
    {
      v40 = @"Error creating backup directory";
      goto LABEL_50;
    }

    v8 = 0;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating backup sub-directories", buf, 2u);
    _MBLog();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  prefixDirectories = [(MBDriveBackupEngine *)self prefixDirectories];
  v11 = [prefixDirectories countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(prefixDirectories);
        }

        v15 = *(*(&v54 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
        driveBackupDir2 = [settingsContext2 driveBackupDir];
        v19 = [driveBackupDir2 stringByAppendingPathComponent:v15];

        v20 = self->_drive;
        v53 = v8;
        LOBYTE(driveBackupDir2) = [(MBDrive *)v20 createDirectoryAtPath:v19 options:0 error:&v53];
        v21 = v53;

        if (driveBackupDir2)
        {
          v8 = v21;
        }

        else
        {
          if (![MBError isError:v21 withCode:3])
          {
            v8 = [MBBackupHelper driveWriteError:v21 description:@"Error creating backup sub-directories"];

            objc_autoreleasePoolPop(v16);
            goto LABEL_21;
          }

          v8 = 0;
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [prefixDirectories countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (!v8)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Creating snapshot directory", buf, 2u);
      _MBLog();
    }

    v23 = self->_drive;
    settingsContext3 = [(MBDriveBackupEngine *)self settingsContext];
    driveSnapshotDir = [settingsContext3 driveSnapshotDir];
    v52 = 0;
    v26 = [(MBDrive *)v23 createDirectoryAtPath:driveSnapshotDir options:0 error:&v52];
    v8 = v52;

    if (v26)
    {
LABEL_27:
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Creating snapshot sub-directories", buf, 2u);
        _MBLog();
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      prefixDirectories2 = [(MBDriveBackupEngine *)self prefixDirectories];
      v29 = [prefixDirectories2 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v49;
        while (2)
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(prefixDirectories2);
            }

            v33 = *(*(&v48 + 1) + 8 * j);
            v34 = objc_autoreleasePoolPush();
            settingsContext4 = [(MBDriveBackupEngine *)self settingsContext];
            driveSnapshotDir2 = [settingsContext4 driveSnapshotDir];
            v37 = [driveSnapshotDir2 stringByAppendingPathComponent:v33];

            v38 = self->_drive;
            v47 = v8;
            LOBYTE(driveSnapshotDir2) = [(MBDrive *)v38 createDirectoryAtPath:v37 options:0 error:&v47];
            v39 = v47;

            if (driveSnapshotDir2)
            {
              v8 = v39;
            }

            else
            {
              if (![MBError isError:v39 withCode:3])
              {
                v8 = [MBBackupHelper driveWriteError:v39 description:@"Error creating snapshot sub-directories"];

                objc_autoreleasePoolPop(v34);
                goto LABEL_43;
              }

              v8 = 0;
            }

            objc_autoreleasePoolPop(v34);
          }

          v30 = [prefixDirectories2 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

LABEL_43:

      if (!v8)
      {
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Setting status to uploading", buf, 2u);
          _MBLog();
        }

        v46 = 0;
        v42 = [(MBDriveBackupEngine *)self _uploadStatusToDriveWithSnapshotState:0 error:&v46];
        v8 = v46;
        if (v42)
        {
          v43 = 0;
          goto LABEL_52;
        }
      }

      goto LABEL_48;
    }

    if ([MBError isError:v8 withCode:3])
    {

      v8 = 0;
      goto LABEL_27;
    }

    v40 = @"Error creating snapshot directory";
LABEL_50:
    v44 = [MBBackupHelper driveWriteError:v8 description:v40];
    goto LABEL_51;
  }

LABEL_48:
  v44 = v8;
  v8 = v44;
LABEL_51:
  v43 = v44;
LABEL_52:

  return v43;
}

- (id)_upload
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MBBackupOperationJournal *)self->_operationJournal countForType:2];
  v5 = [(MBBackupOperationJournal *)self->_operationJournal sizeForType:2];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v62 = v4;
    v63 = 2048;
    v64 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting to upload %lu files of size %{bytes}llu", buf, 0x16u);
    v41 = v4;
    v42 = v5;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [(MBDebugContext *)self->super._debugContext performSelectorForName:@"StartingUpload" withObject:self->super._debugContext];
  _uploadInBatches = [(MBDriveBackupEngine *)self _uploadInBatches];
  if (_uploadInBatches)
  {
    goto LABEL_19;
  }

  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateErrorAfterUploading"])
  {
    _uploadInBatches = [MBError errorWithCode:1 format:@"Simulated error after uploading"];
LABEL_19:
    v15 = _uploadInBatches;
    goto LABEL_20;
  }

  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrashAfterUploading"])
  {
    goto LABEL_50;
  }

  if ([(MBDriveBackupEngine *)self _shouldRetry])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Removing ephemeral files added and deleted during retries", buf, 2u);
    _MBLog();
  }

  _uploadInBatches = [(MBManifestDB *)self->_snapshotManifestDB removeEphemeralRetriedFiles];
  if (_uploadInBatches)
  {
    goto LABEL_19;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Preparing to close snapshot manifest database", buf, 2u);
    _MBLog();
  }

  _uploadInBatches = [(MBManifestDB *)self->_snapshotManifestDB unsetAlreadyUploadedFlags];
  if (_uploadInBatches)
  {
    goto LABEL_19;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Closing and checkpointing snapshot manifest database", buf, 2u);
    _MBLog();
  }

  snapshotManifestDB = self->_snapshotManifestDB;
  v60 = 0;
  v21 = [(MBManifestDB *)snapshotManifestDB closeWithError:&v60];
  v15 = v60;
  if (v21)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Uploading properties to snapshot", buf, 2u);
      _MBLog();
    }

    drive = self->_drive;
    _deviceSnapshotPropertiesPath = [(MBDriveBackupEngine *)self _deviceSnapshotPropertiesPath];
    settingsContext = [(MBDriveBackupEngine *)self settingsContext];
    driveSnapshotPropertiesPath = [settingsContext driveSnapshotPropertiesPath];
    v59 = v15;
    v45 = [(MBDrive *)drive uploadFileAtPath:_deviceSnapshotPropertiesPath toPath:driveSnapshotPropertiesPath options:0 error:&v59];
    v52 = v59;

    if ((v45 & 1) == 0)
    {
      v15 = [MBBackupHelper driveWriteError:v52 description:@"Error uploading properties to snapshot"];

      goto LABEL_20;
    }

    _deviceSnapshotPropertiesPath2 = [(MBDriveBackupEngine *)self _deviceSnapshotPropertiesPath];
    v58 = v52;
    v26 = [MBProperties propertiesWithFile:_deviceSnapshotPropertiesPath2 error:&v58];
    v49 = v58;

    if (v26)
    {
      v53 = v26;
      v27 = self->_snapshotManifestDB;
      v57 = v49;
      v28 = [(MBManifestDB *)v27 openWithError:&v57];
      v29 = v57;

      if (v28)
      {
        v30 = MBGetDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Uploading manifest database to snapshot", buf, 2u);
          _MBLog();
        }

        v46 = self->_snapshotManifestDB;
        settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
        driveSnapshotManifestDatabasePath = [settingsContext2 driveSnapshotManifestDatabasePath];
        v43 = self->_drive;
        settingsContext3 = [(MBDriveBackupEngine *)self settingsContext];
        keybag = [settingsContext3 keybag];
        v56 = v29;
        LOBYTE(v43) = [(MBManifestDB *)v46 uploadToPath:driveSnapshotManifestDatabasePath withDrive:v43 keybag:keybag error:&v56];
        v47 = v56;

        if (v43)
        {
          v11 = v47;
          if (![(MBEngine *)self encrypted])
          {
            goto LABEL_36;
          }

          v33 = self->_snapshotManifestDB;
          password = [(MBDriveBackupEngine *)self password];
          v55 = v47;
          LOBYTE(v33) = [(MBManifestDB *)v33 setupEncryptionWithPassword:password withError:&v55];
          v11 = v55;

          if ((v33 & 1) == 0)
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v62 = v11;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
              _MBLog();
            }
          }

          else
          {
LABEL_36:
            v35 = v11;
            v36 = MBGetDefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Setting status to moving", buf, 2u);
              _MBLog();
            }

            v54 = v35;
            v37 = [(MBDriveBackupEngine *)self _uploadStatusToDriveWithSnapshotState:1 error:&v54];
            v11 = v54;

            if (v37)
            {

LABEL_9:
              if (![(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrashAfterUploadingSuccessfully", v41, v42])
              {
                +[NSDate timeIntervalSinceReferenceDate];
                v13 = v12;
                v14 = MBGetDefaultLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218752;
                  v62 = v4;
                  v63 = 2048;
                  v64 = v5;
                  v65 = 2048;
                  v66 = v13 - v8;
                  v67 = 2048;
                  v68 = (v5 / (v13 - v8));
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Uploaded %lu files of %{bytes}llu in %0.3f s at %{bytes}llu/s", buf, 0x2Au);
                  _MBLog();
                }

                v15 = 0;
                goto LABEL_20;
              }

LABEL_50:
              abort();
            }
          }

          v39 = v11;
          v29 = v39;
        }

        else
        {
          v29 = v47;
          v39 = [MBBackupHelper driveWriteError:v47 description:@"Error uploading database to snapshot"];
        }
      }

      else
      {
        v38 = self->_snapshotManifestDB;
        self->_snapshotManifestDB = 0;

        v39 = [MBError errorWithCode:101 format:@"Error opening snapshot manifest database from device"];
      }

      v15 = v39;
      v26 = v53;
    }

    else
    {
      v29 = v49;
      v15 = v29;
    }
  }

LABEL_20:
  objc_autoreleasePoolPop(v3);

  return v15;
}

- (id)_uploadInBatches
{
  if (!self->_batchSize)
  {
    sub_10009C4BC();
  }

  if (!self->_concurrentUploadBatchCount)
  {
    sub_10009C490();
  }

  v76 = self->_drive;
  if (!v76)
  {
    sub_10009C464();
  }

  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    batchSize = self->_batchSize;
    concurrentUploadBatchCount = self->_concurrentUploadBatchCount;
    *buf = 138543874;
    *v129 = v3;
    *&v129[8] = 2048;
    *&v129[10] = batchSize;
    *&v129[18] = 2048;
    *&v129[20] = concurrentUploadBatchCount;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@, uploadBatchSize:%lu, concurrentUploadBatchCount:%lu", buf, 0x20u);
    v6 = objc_opt_class();
    v64 = self->_batchSize;
    v67 = self->_concurrentUploadBatchCount;
    v63 = v6;
    _MBLog();
  }

  v78 = dispatch_semaphore_create(self->_concurrentUploadBatchCount + (self->_concurrentUploadBatchCount >> 1));
  isDeviceTransferEngine = [(MBEngine *)self isDeviceTransferEngine];
  v83 = self->_batchSize;
  if (!v83)
  {
    sub_10009C438();
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  driveSnapshotDir = [settingsContext driveSnapshotDir];

  if (!driveSnapshotDir)
  {
    sub_10009C40C();
  }

  v121 = 0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = sub_100020E64;
  v126 = sub_100020E74;
  v127 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = -1;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v138 = @"FileHandleFactory";
  selfCopy = self;
  v79 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v138 count:1];
  group = dispatch_group_create();
  v85 = [(MBBackupOperationJournal *)self->_operationJournal operationEnumeratorWithDomainManager:self->super._domainManager];
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v84 = 0;
  v86 = 0;
  v82 = 0;
  v88 = 0;
  v90 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    nextObject = [v85 nextObject];
    selfCopy3 = self;
    v11 = nextObject;
    if (nextObject)
    {
      if ([nextObject type] != 2)
      {
        goto LABEL_28;
      }

      domain = [v11 domain];
      v13 = domain == 0;

      if (v13)
      {
        v45 = +[NSAssertionHandler currentHandler];
        [v45 handleFailureInMethod:a2 object:self file:@"MBDriveBackupEngine.m" lineNumber:1915 description:@"No domain for upload operation"];
      }

      fileID = [v11 fileID];
      v15 = fileID == 0;

      if (v15)
      {
        v46 = +[NSAssertionHandler currentHandler];
        [v46 handleFailureInMethod:a2 object:self file:@"MBDriveBackupEngine.m" lineNumber:1916 description:@"No file ID for upload operation"];
      }

      path = [v11 path];
      v17 = path == 0;

      if (v17)
      {
        v47 = +[NSAssertionHandler currentHandler];
        [v47 handleFailureInMethod:a2 object:self file:@"MBDriveBackupEngine.m" lineNumber:1917 description:@"No path for upload operation"];
      }

      if (!v90)
      {
        v90 = [[NSMutableDictionary alloc] initWithCapacity:v83];
      }

      if (!v88)
      {
        v88 = [[NSMutableDictionary alloc] initWithCapacity:v83];
      }

      path2 = [v11 path];
      fileID2 = [v11 fileID];
      filenameWithPrefix = [fileID2 filenameWithPrefix];

      v21 = [driveSnapshotDir stringByAppendingPathComponent:filenameWithPrefix];
      if (isDeviceTransferEngine)
      {
        [v90 objectForKeyedSubscript:path2];
        if (objc_claimAutoreleasedReturnValue())
        {
          __assert_rtn("[MBDriveBackupEngine _uploadInBatches]", "MBDriveBackupEngine.m", 1925, "!isDeviceTransfer || paths[fromPath] == nil");
        }
      }

      v22 = [v11 size];
      [v90 setObject:v21 forKeyedSubscript:path2];
      v23 = path2;
      v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [path2 fileSystemRepresentation]);
      [v88 setObject:v11 forKeyedSubscript:v24];

      selfCopy3 = self;
      v86 += v22;
    }

    else if ([v90 count])
    {
      goto LABEL_26;
    }

    if ([v90 count] != v83)
    {
LABEL_28:
      LOBYTE(isCanceled) = 0;
      goto LABEL_37;
    }

LABEL_26:
    p_isa = selfCopy3;
    objc_sync_enter(p_isa);
    isCanceled = [p_isa isCanceled];
    if (isCanceled)
    {
      v27 = [MBError errorWithCode:202 format:@"File upload cancelled"];
      v28 = v123[5];
      v123[5] = v27;

      objc_sync_exit(p_isa);
    }

    else
    {
      [p_isa[22] addEntriesFromDictionary:v88];
      objc_sync_exit(p_isa);

      v29 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v30 = [[MBDriveUploadBatch alloc] initWithPaths:v90 size:v86 last:v11 == 0];
      v31 = v84;
      if (!v84)
      {
        v31 = v29;
      }

      v84 = v31;
      add_explicit = atomic_fetch_add_explicit(&dword_10011E30C, 1u, memory_order_relaxed);
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = (v29 - v8) / 1000000000.0;
        v35 = v33;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          index = [(MBDriveUploadBatch *)v30 index];
          paths = [(MBDriveUploadBatch *)v30 paths];
          v38 = [paths count];
          *buf = 67110144;
          *v129 = index;
          *&v129[4] = 2048;
          *&v129[6] = v38;
          *&v129[14] = 2048;
          *&v129[16] = v86;
          *&v129[24] = 2048;
          *&v129[26] = v34;
          v130 = 1024;
          LODWORD(v131) = add_explicit;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fetched batch i:%u, c:%lu, s:%llu, t:%.3f, o:%u", buf, 0x2Cu);
        }

        index2 = [(MBDriveUploadBatch *)v30 index];
        paths2 = [(MBDriveUploadBatch *)v30 paths];
        v71 = add_explicit;
        v70 = v34;
        v64 = [paths2 count];
        v67 = v86;
        v63 = index2;
        _MBLog();
      }

      dispatch_group_enter(group);
      v93[0] = _NSConcreteStackBlock;
      v93[1] = 3221225472;
      v93[2] = sub_1000243DC;
      v93[3] = &unk_1000FD698;
      v41 = v78;
      v94 = v41;
      v104 = v29;
      v105 = v84;
      v42 = v30;
      v95 = v42;
      v96 = p_isa;
      v99 = &v122;
      v43 = v88;
      v97 = v43;
      v100 = &v118;
      v101 = &v114;
      v102 = &v110;
      v103 = &v106;
      v98 = group;
      [p_isa _uploadBatch:v42 options:v79 completion:v93];

      dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
      v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);

      v86 = 0;
      v88 = 0;
      v90 = 0;
      ++v82;
      p_isa = &v42->super.isa;
    }

LABEL_37:
    objc_autoreleasePoolPop(context);
    v44 = isCanceled ^ 1;
    if (!v11)
    {
      v44 = 0;
    }
  }

  while ((v44 & 1) != 0);
  dispatch_group_enter(group);
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_1000247D8;
  v91[3] = &unk_1000FD6C0;
  v48 = group;
  v92 = v48;
  [(MBDrive *)v76 finishBatchUploadsWithOptions:v79 completion:v91];
  MBGroupWaitForever();
  v49 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v84) / 1000000000.0;
  v50 = -1.0;
  if (v49 > 0.0)
  {
    v50 = v119[3] / v49 / 1000000.0;
  }

  v51 = v115[3];
  if (v51)
  {
    v52 = v119[3] / v51;
  }

  else
  {
    v52 = 0;
  }

  if (v123[5])
  {
    v53 = MBGetDefaultLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = v111[3];
      v55 = v107[3];
      v56 = v119[3];
      v57 = v123[5];
      *buf = 67110914;
      *v129 = v82;
      *&v129[4] = 2048;
      *&v129[6] = v54;
      *&v129[14] = 2048;
      *&v129[16] = v55;
      *&v129[24] = 2048;
      *&v129[26] = v52;
      v130 = 2048;
      v131 = v56;
      v132 = 2048;
      v133 = v49;
      v134 = 2048;
      v135 = v50;
      v136 = 2112;
      v137 = v57;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to upload after %u batches, s:{%llu,%llu,%llu,%llu}, t:%.3f, r:%.3f - %@", buf, 0x4Eu);
      v74 = v123[5];
      v72 = v119[3];
      v65 = v111[3];
      v68 = v107[3];
      _MBLog();
    }
  }

  else
  {
    v53 = MBGetDefaultLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v111[3];
      v59 = v107[3];
      v60 = v119[3];
      *buf = 67110656;
      *v129 = v82;
      *&v129[4] = 2048;
      *&v129[6] = v58;
      *&v129[14] = 2048;
      *&v129[16] = v59;
      *&v129[24] = 2048;
      *&v129[26] = v52;
      v130 = 2048;
      v131 = v60;
      v132 = 2048;
      v133 = v49;
      v134 = 2048;
      v135 = v50;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Finished uploading %u batches, s:{%llu,%llu,%llu,%llu}, t:%.3f, r:%.3f", buf, 0x44u);
      v73 = v119[3];
      v66 = v111[3];
      v69 = v107[3];
      _MBLog();
    }
  }

  v61 = v123[5];
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);

  return v61;
}

- (void)_uploadBatch:(id)batch options:(id)options completion:(id)completion
{
  batchCopy = batch;
  optionsCopy = options;
  completionCopy = completion;
  if (!batchCopy)
  {
    sub_10009C56C();
  }

  v12 = completionCopy;
  if (!completionCopy)
  {
    sub_10009C540();
  }

  v13 = self->_drive;
  if (!v13)
  {
    sub_10009C514();
  }

  v14 = v13;
  index = [batchCopy index];
  [batchCopy paths];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002495C;
  v19 = v18[3] = &unk_1000FD6E8;
  selfCopy = self;
  v23 = index;
  v21 = v12;
  v22 = a2;
  v16 = v12;
  v17 = v19;
  [(MBDrive *)v14 uploadBatch:batchCopy options:optionsCopy completion:v18];
}

- (id)_moveInBatchesWithOperationType:(int)type
{
  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v7 = [(MBBackupOperationJournal *)self->_operationJournal operationEnumeratorWithDomainManager:self->super._domainManager];
  v8 = objc_autoreleasePoolPush();
  nextObject = [v7 nextObject];
  if (!nextObject)
  {
LABEL_13:
    objc_autoreleasePoolPop(v8);
    if ([v6 count])
    {
      v27 = [(MBDriveBackupEngine *)self _moveBatchWithPaths:v6];
      if (!v27)
      {
        [v6 removeAllObjects];
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_19;
  }

  nextObject2 = nextObject;
  v29 = a2;
  typeCopy = type;
  while (1)
  {
    snapshotManifestDB = self->_snapshotManifestDB;
    fileID = [nextObject2 fileID];
    v31 = 0;
    v13 = [(MBManifestDB *)snapshotManifestDB flagsForFileID:fileID error:&v31];
    v14 = v31;

    if (v14)
    {
      v27 = v14;
      goto LABEL_17;
    }

    if ([nextObject2 type] == type && (v13 & 0x10) == 0)
    {
      break;
    }

LABEL_12:

    objc_autoreleasePoolPop(v8);
    v8 = objc_autoreleasePoolPush();
    nextObject2 = [v7 nextObject];
    if (!nextObject2)
    {
      goto LABEL_13;
    }
  }

  v15 = v6;
  v16 = v7;
  fileID2 = [nextObject2 fileID];

  if (!fileID2)
  {
    sub_10009C658();
  }

  fileID3 = [nextObject2 fileID];
  filenameWithPrefix = [fileID3 filenameWithPrefix];

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  driveSnapshotDir = [settingsContext driveSnapshotDir];
  v22 = [driveSnapshotDir stringByAppendingPathComponent:filenameWithPrefix];

  settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
  driveBackupDir = [settingsContext2 driveBackupDir];
  v25 = [driveBackupDir stringByAppendingPathComponent:filenameWithPrefix];

  v6 = v15;
  [v15 setObject:v25 forKeyedSubscript:v22];
  v7 = v16;
  type = typeCopy;
  if ([v15 count] != self->_batchSize)
  {
LABEL_11:

    goto LABEL_12;
  }

  v26 = [(MBDriveBackupEngine *)self _moveBatchWithPaths:v15];
  if (!v26)
  {
    [v15 removeAllObjects];
    goto LABEL_11;
  }

  v27 = v26;

LABEL_17:
  objc_autoreleasePoolPop(v8);

LABEL_19:

  return v27;
}

- (id)_moveBatchWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v33 = [pathsCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Moving batch of %lu items", buf, 0xCu);
    [pathsCopy count];
    _MBLog();
  }

  drive = self->_drive;
  v30 = 0;
  v31 = 0;
  v7 = [(MBDrive *)drive moveItemsAtPaths:pathsCopy options:0 results:&v31 error:&v30];
  v8 = v31;
  v9 = v30;
  v10 = v9;
  v11 = 0;
  if ((v7 & 1) == 0)
  {
    v24 = v9;
    v25 = v8;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [pathsCopy objectForKeyedSubscript:v17];
            v20 = [v12 objectForKeyedSubscript:v17];
            *buf = 138412802;
            v33 = v17;
            v34 = 2112;
            v35 = v19;
            v36 = 2112;
            v37 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error moving %@ to %@: %@", buf, 0x20u);

            v21 = [pathsCopy objectForKeyedSubscript:v17];
            v23 = [v12 objectForKeyedSubscript:v17];
            _MBLog();
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v14);
    }

    v10 = v24;
    v11 = [MBBackupHelper driveWriteError:v24 description:@"Error moving items from snapshot"];
    v8 = v25;
  }

  return v11;
}

- (id)_removeInBatchesWithOperationType:(int)type
{
  v5 = [NSMutableArray arrayWithCapacity:0];
  v6 = [(MBBackupOperationJournal *)self->_operationJournal operationEnumeratorWithDomainManager:self->super._domainManager];
  v7 = objc_autoreleasePoolPush();
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    typeCopy = type;
    do
    {
      if ([nextObject2 type] != type)
      {
        goto LABEL_10;
      }

      v10 = v6;
      fileID = [nextObject2 fileID];

      if (fileID)
      {
        settingsContext = [(MBDriveBackupEngine *)self settingsContext];
        driveBackupDir = [settingsContext driveBackupDir];
        [nextObject2 fileID];
        v14 = v5;
        v16 = v15 = self;
        filenameWithPrefix = [v16 filenameWithPrefix];
        path = [driveBackupDir stringByAppendingPathComponent:filenameWithPrefix];

        self = v15;
        v5 = v14;

        if (!path)
        {
          goto LABEL_13;
        }
      }

      else
      {
        path = [nextObject2 path];
        if (!path)
        {
LABEL_13:
          sub_10009C6B4();
        }
      }

      [v5 addObject:path];
      v6 = v10;
      if ([v5 count] == self->_batchSize)
      {
        v19 = [(MBDriveBackupEngine *)self _removeBatchWithPaths:v5];
        if (v19)
        {
          v20 = v19;

          objc_autoreleasePoolPop(v7);
          goto LABEL_19;
        }

        [v5 removeAllObjects];
      }

      type = typeCopy;
LABEL_10:

      objc_autoreleasePoolPop(v7);
      v7 = objc_autoreleasePoolPush();
      nextObject2 = [v6 nextObject];
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v7);
  if ([v5 count])
  {
    v20 = [(MBDriveBackupEngine *)self _removeBatchWithPaths:v5];
    if (!v20)
    {
      [v5 removeAllObjects];
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

- (id)_removeBatchWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v33 = [pathsCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing batch of %lu items", buf, 0xCu);
    v21 = [pathsCopy count];
    _MBLog();
  }

  drive = self->_drive;
  v30 = 0;
  v31 = 0;
  v7 = [(MBDrive *)drive removeItemsAtPaths:pathsCopy options:0 results:&v31 error:&v30];
  v8 = v31;
  v9 = v30;
  if (v7)
  {
    goto LABEL_4;
  }

  if ([MBError isError:v9 withCode:2])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (!v12)
    {

LABEL_4:
      v10 = 0;
      goto LABEL_23;
    }

    v13 = v12;
    v23 = v9;
    v24 = v8;
    v25 = pathsCopy;
    v14 = 0;
    v15 = *v27;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v11 objectForKeyedSubscript:{v17, v21, v22}];
        if (([MBError isError:v18 withCode:4]& 1) == 0)
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v33 = v17;
            v34 = 2112;
            v35 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error removing %@: %@", buf, 0x16u);
            v21 = v17;
            v22 = v18;
            _MBLog();
          }

          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v13);

    pathsCopy = v25;
    if (v14)
    {
      v9 = v23;
      v10 = [MBBackupHelper driveWriteError:v23 description:@"Error removing files"];
    }

    else
    {
      v10 = 0;
      v9 = v23;
    }

    v8 = v24;
  }

  else
  {
    v10 = [MBBackupHelper driveWriteError:v9 description:@"Error removing files"];
  }

LABEL_23:

  return v10;
}

- (id)_removeDeviceSnapshot
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing device snapshot directory", buf, 2u);
    _MBLog();
  }

  snapshotManifestDB = self->_snapshotManifestDB;
  if (snapshotManifestDB)
  {
    v15 = 0;
    v5 = [(MBManifestDB *)snapshotManifestDB closeAndRemoveFileWithError:&v15];
    v6 = v15;
    v7 = v6;
    if (v5)
    {
      v8 = self->_snapshotManifestDB;
      self->_snapshotManifestDB = 0;

LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

    v12 = v6;
    v7 = v12;
  }

  else
  {
    v9 = +[NSFileManager defaultManager];
    _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
    v14 = 0;
    v11 = [v9 removeItemAtPath:_deviceSnapshotDir error:&v14];
    v7 = v14;

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = [MBError errorWithCode:102 error:v7 format:@"Error cleaning up snapshot"];
  }

LABEL_10:

  return v12;
}

- (id)_removeOldBackup
{
  if (![(MBDriveBackupEngine *)self movedOldBackup])
  {
    goto LABEL_6;
  }

  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    movedBackupName = [(MBDriveBackupEngine *)self movedBackupName];
    *buf = 138412290;
    v12 = movedBackupName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing old backup %@", buf, 0xCu);

    movedBackupName2 = [(MBDriveBackupEngine *)self movedBackupName];
    _MBLog();
  }

  drive = self->_drive;
  movedBackupName3 = [(MBDriveBackupEngine *)self movedBackupName];
  v10 = 0;
  LODWORD(drive) = [(MBDrive *)drive removeItemAtPath:movedBackupName3 options:0 error:&v10];
  v7 = v10;

  if (drive)
  {

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)_verifyBackupReloadingManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  backupHelper = self->_backupHelper;
  v54 = 0;
  v6 = [(MBBackupHelper *)backupHelper readStatusWithError:&v54];
  v7 = v54;
  v8 = v7;
  if (!v6)
  {
    v14 = v7;
    goto LABEL_7;
  }

  [v6 version];
  v10 = v9;
  v11 = MBGetDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 >= 3.3)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Verifying backup contents", buf, 2u);
      _MBLog();
    }

    if (manifestCopy)
    {
      [(MBManifestDB *)self->_backupManifestDB closeWithError:0];
      backupManifestDB = self->_backupManifestDB;
      self->_backupManifestDB = 0;
    }

    if (self->_backupManifestDB)
    {
LABEL_13:
      v16 = v8;
      v52 = v8;
      v17 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v52];
      v8 = v52;

      if ([MBError isError:v8 withCode:4])
      {

        v8 = 0;
      }

      if ([(MBEngine *)self encrypted])
      {
        v18 = self->_backupManifestDB;
        v51 = v8;
        v19 = [(MBManifestDB *)v18 setupEncryptionWithPassword:v17 withError:&v51];
        v20 = v51;

        if ((v19 & 1) == 0)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v56 = v20;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
            _MBLog();
          }

          v33 = v20;
LABEL_50:
          v8 = v33;
          goto LABEL_51;
        }

        v8 = v20;
      }

      properties = [(MBManifestDB *)self->_backupManifestDB properties];
      encrypted = [properties encrypted];

      if (encrypted)
      {
        if (v17)
        {
          properties2 = [(MBManifestDB *)self->_backupManifestDB properties];
          keybagData = [properties2 keybagData];

          if (keybagData)
          {
            v50 = v8;
            v25 = [MBKeyBag unlockedKeyBagWithData:keybagData password:v17 error:&v50];
            v26 = v50;

            if (!v25)
            {
              v8 = v26;

              v13 = v8;
              goto LABEL_52;
            }

            v8 = v26;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_35;
        }

        v31 = @"Backup properties encrypted but no password set";
      }

      else
      {
        if (!v17)
        {
LABEL_35:
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Getting contents of backup directory", buf, 2u);
            _MBLog();
          }

          settingsContext = [(MBDriveBackupEngine *)self settingsContext];
          drive = [settingsContext drive];
          settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
          driveBackupDir = [settingsContext2 driveBackupDir];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_100026DB0;
          v49[3] = &unk_1000FD5F8;
          v49[4] = self;
          v39 = [drive enumerateContentsOfDirectoryAtPath:driveBackupDir options:0 foundItem:v49];

          if (!v8)
          {
            v40 = self->_backupManifestDB;
            v48 = 0;
            v41 = [(MBManifestDB *)v40 hasUnverifiedFilesWithError:&v48];
            v42 = v48;
            v8 = v42;
            if (v41)
            {
              if (!v42)
              {
                v43 = MBGetDefaultLog();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Manifest references files that are not in the backup", buf, 2u);
                  _MBLog();
                }

                v13 = [MBError errorWithCode:205 format:@"Manifest references files not in backup"];
                v8 = 0;
                goto LABEL_52;
              }
            }

            else
            {
              unsetVerifiedFlags = [(MBManifestDB *)self->_backupManifestDB unsetVerifiedFlags];
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                if (v8)
                {
                  v46 = v8;
                }

                else
                {
                  v46 = @"clean";
                }

                *buf = 138412290;
                v56 = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Finished verifying backup: %@", buf, 0xCu);
                _MBLog();
              }
            }
          }

          v33 = v8;
          goto LABEL_50;
        }

        v31 = @"Backup password set but properties not encrypted";
      }

      v33 = [MBError errorWithCode:205 format:v31];
LABEL_51:
      v13 = v33;
LABEL_52:

      goto LABEL_53;
    }

    v27 = self->_backupHelper;
    v53 = v8;
    v28 = [(MBBackupHelper *)v27 readBackupManifestDatabaseWithError:&v53];
    v29 = v53;

    v30 = self->_backupManifestDB;
    self->_backupManifestDB = v28;

    if (!v29)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v14 = v29;
LABEL_7:
    v8 = v14;
    v13 = v14;
    goto LABEL_53;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping verification of old format backup", buf, 2u);
    _MBLog();
  }

  v13 = 0;
LABEL_53:

  return v13;
}

- (BOOL)_shouldRetry
{
  v3 = [(NSMutableSet *)self->_modifiedDomains count];
  if (v3)
  {
    LOBYTE(v3) = self->_retryCount == 0;
  }

  return v3;
}

- (id)_retry
{
  v3 = objc_autoreleasePoolPush();
  ++self->_retryCount;
  [MBDebugContext setInt:"setInt:forName:" forName:?];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    retryCount = self->_retryCount;
    allObjects = [(NSMutableSet *)self->_modifiedDomains allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 134218498;
    v73 = retryCount;
    v74 = 1024;
    v75 = 1;
    v76 = 2112;
    v77 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrying backup (attempt %lu of %d, modified domains: {%@})", buf, 0x1Cu);

    v8 = self->_retryCount;
    allObjects2 = [(NSMutableSet *)self->_modifiedDomains allObjects];
    [allObjects2 componentsJoinedByString:{@", "}];
    v64 = v62 = 1;
    v60 = v8;
    _MBLog();
  }

  [(MBProgress *)self->_progress current];
  [(MBProgress *)self->_progress setTotal:?];
  v10 = [[MBDriveScript alloc] initWithProgress:self->_progress];
  driveScript = self->_driveScript;
  self->_driveScript = v10;

  v12 = [MBProgressDrive alloc];
  v13 = self->_driveScript;
  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  drive = [settingsContext drive];
  v16 = [(MBProgressDrive *)v12 initWithScript:v13 delegate:drive];
  drive = self->_drive;
  self->_drive = v16;

  snapshotManifestDB = self->_snapshotManifestDB;
  if (!snapshotManifestDB)
  {
    _deviceSnapshotPropertiesPath = [(MBDriveBackupEngine *)self _deviceSnapshotPropertiesPath];
    v71 = 0;
    v44 = [MBProperties propertiesWithFile:_deviceSnapshotPropertiesPath error:&v71];
    v45 = v71;

    if (v44)
    {
      v46 = [MBManifestDB alloc];
      _deviceSnapshotManifestDatabasePath = [(MBDriveBackupEngine *)self _deviceSnapshotManifestDatabasePath];
      v48 = [(MBManifestDB *)v46 initWithPath:_deviceSnapshotManifestDatabasePath properties:v44 domainManager:self->super._domainManager];
      v49 = self->_snapshotManifestDB;
      self->_snapshotManifestDB = v48;

      v50 = self->_snapshotManifestDB;
      v70 = v45;
      LOBYTE(v46) = [(MBManifestDB *)v50 openWithError:&v70];
      v19 = v70;

      if ((v46 & 1) == 0)
      {
        v56 = self->_snapshotManifestDB;
        self->_snapshotManifestDB = 0;

        v57 = [MBError errorWithCode:101 format:@"Error opening snapshot manifest database from device"];
LABEL_52:
        persona = v57;

        objc_autoreleasePoolPop(v3);
        goto LABEL_53;
      }

      if (![(MBEngine *)self encrypted])
      {
        context = v3;
        goto LABEL_45;
      }

      v51 = self->_snapshotManifestDB;
      password = [(MBDriveBackupEngine *)self password];
      v69 = v19;
      v53 = [(MBManifestDB *)v51 setupEncryptionWithPassword:password withError:&v69];
      v45 = v69;

      if (v53)
      {
        context = v3;
        v19 = v45;
LABEL_45:

        snapshotManifestDB = self->_snapshotManifestDB;
        goto LABEL_5;
      }

      v55 = MBGetDefaultLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v45;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
        goto LABEL_50;
      }
    }

    else
    {
      if (([MBError isError:v45 withCode:4]& 1) != 0 || [MBError codeForNSError:v45]== 4)
      {
        v54 = MBGetDefaultLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Snapshot properties not found", buf, 2u);
          _MBLog();
        }

        v55 = v45;
        v45 = 0;
        goto LABEL_51;
      }

      v55 = MBGetDefaultLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v45;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Error reading snapshot properties from device: %@", buf, 0xCu);
LABEL_50:
        _MBLog();
      }
    }

LABEL_51:

    v57 = v45;
    v19 = v57;
    goto LABEL_52;
  }

  context = v3;
  v19 = 0;
LABEL_5:
  v20 = [(MBManifestDB *)snapshotManifestDB properties:v60];
  [v20 removeAllContainers];

  properties = [(MBManifestDB *)self->_snapshotManifestDB properties];
  allContainers = [(MBAppManager *)self->super._appManager allContainers];
  [properties addContainersFromArray:allContainers];

  obj = [MBBackupOperationJournal backupOperationJournalWithBatchSize:self->_batchSize];
  v23 = [(MBBackupOperationJournal *)self->_operationJournal operationEnumeratorWithDomainManager:self->super._domainManager];
  v24 = objc_autoreleasePoolPush();
  nextObject = [v23 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    while (1)
    {
      fileID = [nextObject2 fileID];
      domain = [nextObject2 domain];
      if (!domain || ![(NSMutableSet *)self->_modifiedDomains containsObject:domain])
      {
        if ([nextObject2 type] != 2)
        {
          [obj addOperation:nextObject2];
        }

        goto LABEL_22;
      }

      v29 = self->_snapshotManifestDB;
      v68 = v19;
      v30 = [(MBManifestDB *)v29 flagsForFileID:fileID error:&v68];
      v31 = v68;

      if (v31)
      {
        v42 = v31;

        objc_autoreleasePoolPop(v24);
        v40 = 0;
        persona = v42;
        goto LABEL_40;
      }

      if ([nextObject2 type] != 2)
      {
        break;
      }

      if (fileID)
      {
        goto LABEL_17;
      }

LABEL_21:
      v19 = 0;
LABEL_22:

      objc_autoreleasePoolPop(v24);
      v24 = objc_autoreleasePoolPush();
      nextObject2 = [v23 nextObject];
      if (!nextObject2)
      {
        goto LABEL_23;
      }
    }

    v19 = 0;
    if ([nextObject2 type] != 3 || !fileID)
    {
      goto LABEL_22;
    }

LABEL_17:
    if ((v30 & 0x10) == 0)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        type = [nextObject2 type];
        *buf = 138412546;
        v73 = fileID;
        v74 = 1024;
        v75 = type;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Already uploaded: %@ (operation: %d)", buf, 0x12u);
        v61 = fileID;
        type2 = [nextObject2 type];
        _MBLog();
      }

      v34 = [(MBManifestDB *)self->_snapshotManifestDB setFlags:200 mask:-17 forFileID:fileID];
    }

    goto LABEL_21;
  }

LABEL_23:
  objc_autoreleasePoolPop(v24);
  [(MBBackupOperationJournal *)self->_operationJournal close];
  objc_storeStrong(&self->_operationJournal, obj);
  objc_storeStrong(&self->_domainsToScan, self->_modifiedDomains);
  v35 = objc_alloc_init(NSMutableSet);
  modifiedDomains = self->_modifiedDomains;
  self->_modifiedDomains = v35;

  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Refreshing installed apps", buf, 2u);
    _MBLog();
  }

  appManager = self->super._appManager;
  persona = [(MBEngine *)self persona];
  v67 = v19;
  v40 = 1;
  v41 = [(MBAppManager *)appManager loadAppsWithPersona:persona safeHarbors:1 error:&v67];
  v42 = v67;

  if ((v41 & 1) == 0)
  {
    persona = [MBError errorWithCode:1 error:v42 format:@"Error loading apps"];
    v40 = 0;
  }

LABEL_40:

  objc_autoreleasePoolPop(context);
  if (v40)
  {
    v58 = [(MBDebugContext *)self->super._debugContext intForName:@"SimulateCrashAfterRetrying"];
    if (v58 >= 1 && self->_retryCount >= v58)
    {
      abort();
    }

    persona = 0;
  }

LABEL_53:

  return persona;
}

- (id)_deviceSnapshotDir
{
  if (!self->_uuid)
  {
    sub_10009C720();
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  deviceCacheDir = [settingsContext deviceCacheDir];
  v5 = [deviceCacheDir stringByAppendingPathComponent:self->_uuid];

  return v5;
}

- (id)_deviceSnapshotPropertiesPath
{
  _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
  v3 = [_deviceSnapshotDir stringByAppendingPathComponent:@"Manifest.plist"];

  return v3;
}

- (id)_deviceSnapshotManifestDatabasePath
{
  _deviceSnapshotDir = [(MBDriveBackupEngine *)self _deviceSnapshotDir];
  v3 = [_deviceSnapshotDir stringByAppendingPathComponent:@"Manifest.db"];

  return v3;
}

- (id)_compactSQLiteDatabaseAtPath:(id)path file:(id)file error:(id *)error
{
  pathCopy = path;
  fileCopy = file;
  if (!pathCopy)
  {
    sub_10009C7E4();
  }

  v10 = fileCopy;
  if (!fileCopy)
  {
    sub_10009C7B8();
  }

  if (!error)
  {
    sub_10009C78C();
  }

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_100028F5C();
    v12 = objc_opt_class();
    objc_sync_enter(v12);
    v13 = [MBSQLiteFileHandle compactSQLiteDatabaseAtPath:pathCopy toPath:v11 error:error];
    objc_sync_exit(v12);

    v14 = v11;
    if (v13)
    {
LABEL_8:
      v14 = v14;
      v17 = v14;
      goto LABEL_10;
    }
  }

  v14 = sub_100028F5C();

  v15 = objc_opt_class();
  objc_sync_enter(v15);
  v16 = [MBSQLiteFileHandle copySQLiteFileAtPath:pathCopy toPath:v14 error:error];
  objc_sync_exit(v15);

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (BOOL)isModifiedSince:(int64_t)since reason:(id *)reason
{
  maximumModificationTime = self->_maximumModificationTime;
  if (maximumModificationTime)
  {
    v5 = maximumModificationTime < since;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (time(0) < since)
  {
    return 0;
  }

  if (reason)
  {
    *reason = @"mod time changed";
  }

  return 1;
}

- (BOOL)_isModifiedWithFileDescriptor:(int)descriptor reason:(id *)reason
{
  memset(&v10, 0, sizeof(v10));
  if (!fstat(descriptor, &v10))
  {
    return [(MBDriveBackupEngine *)self isModifiedSince:v10.st_mtimespec.tv_sec reason:reason];
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *__error();
    *buf = 67109120;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error stat'ing file descriptor: %{errno}d", buf, 8u);
    v9 = *__error();
    _MBLog();
  }

  return 0;
}

- (id)_addBackupPathsNotInManifestDB:(id)b operationType:(int)type
{
  bCopy = b;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100020E64;
  v30 = sub_100020E74;
  v31 = 0;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Searching backup contents for removed regular files", buf, 2u);
    _MBLog();
  }

  settingsContext = [(MBDriveBackupEngine *)self settingsContext];
  drive = [settingsContext drive];
  settingsContext2 = [(MBDriveBackupEngine *)self settingsContext];
  driveBackupDir = [settingsContext2 driveBackupDir];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000288B4;
  v20 = &unk_1000FD710;
  selfCopy = self;
  v12 = bCopy;
  v22 = v12;
  v23 = &v26;
  typeCopy = type;
  v13 = [drive enumerateContentsOfDirectoryAtPath:driveBackupDir options:0 foundItem:&v17];

  if (([MBError isError:v13 withCode:4, v17, v18, v19, v20, selfCopy]& 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    v15 = v27[5];
    if (!v15)
    {
      v15 = v13;
    }

    v14 = v15;
  }

  _Block_object_dispose(&v26, 8);

  return v14;
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = MBDriveBackupEngine;
  cancel = [(MBEngine *)&v6 cancel];
  if (!cancel)
  {
    scanner = [(MBDriveBackupEngine *)self scanner];
    [scanner cancel];
  }

  return cancel;
}

@end