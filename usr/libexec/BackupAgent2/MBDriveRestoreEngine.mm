@interface MBDriveRestoreEngine
+ (id)restoreEngineWithSettingsContext:(id)context debugContext:(id)debugContext;
- (BOOL)_shouldRestoreContentWithFile:(id)file quiet:(BOOL)quiet;
- (BOOL)encrypted;
- (BOOL)isRestoringToSameDevice;
- (BOOL)shouldVerifyDigests;
- (MBDriveRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext;
- (MBKeyBag)keybag;
- (MBManifest)manifest;
- (id)_annotate;
- (id)_checkCompatibility;
- (id)_cleanup;
- (id)_moveRestoreDirs;
- (id)_preconditions;
- (id)_prepare;
- (id)_prepareCopyBackup;
- (id)_prepareEncryption;
- (id)_prepareFreeSpace;
- (id)_prepareProgress;
- (id)_restore;
- (id)_restoreContent;
- (id)_restoreDirectoryAttributes;
- (id)_restoreRegularFiles:(id)files size:(unint64_t)size;
- (id)_resume;
- (id)_resumeAfterFailureMoving;
- (id)_resumeAfterFailureRemoving;
- (id)_resumeAfterFailureUploading;
- (id)_resumeAfterSuccess;
- (id)_setUp;
- (id)_temporaryPathForFile:(id)file;
- (id)endWithError:(id)error;
- (id)fileForTemporaryPath:(id)path;
- (id)restore;
@end

@implementation MBDriveRestoreEngine

+ (id)restoreEngineWithSettingsContext:(id)context debugContext:(id)debugContext
{
  debugContextCopy = debugContext;
  contextCopy = context;
  v7 = [[MBDriveRestoreEngine alloc] initWithSettingsContext:contextCopy debugContext:debugContextCopy];

  return v7;
}

- (MBDriveRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext
{
  contextCopy = context;
  v33 = 0;
  debugContextCopy = debugContext;
  v8 = [MBPersona personalPersonaWithError:&v33];
  v9 = v33;
  v10 = v9;
  if (!v8)
  {
    sub_10009D0D8(v9);
  }

  v11 = [[MBDomainManager alloc] initWithPersona:v8];
  v32.receiver = self;
  v32.super_class = MBDriveRestoreEngine;
  v12 = [(MBEngine *)&v32 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:v11];

  if (v12)
  {
    settingsContext = [(MBDriveRestoreEngine *)v12 settingsContext];
    if ([settingsContext isDeviceTransfer])
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v12->_engineType = v14;

    v15 = objc_alloc_init(MBProgress);
    progress = v12->_progress;
    v12->_progress = v15;

    v17 = [[MBDriveScript alloc] initWithProgress:v12->_progress];
    script = v12->_script;
    v12->_script = v17;

    v19 = [MBProgressDrive alloc];
    v20 = v12->_script;
    settingsContext2 = [(MBDriveRestoreEngine *)v12 settingsContext];
    drive = [settingsContext2 drive];
    v23 = [(MBProgressDrive *)v19 initWithScript:v20 delegate:drive];
    drive = v12->_drive;
    v12->_drive = &v23->super;

    v25 = [[MBBackupHelper alloc] initWithSettingsContext:contextCopy domainManager:v12->super._domainManager];
    backupHelper = v12->_backupHelper;
    v12->_backupHelper = v25;

    v27 = objc_alloc_init(NSMutableDictionary);
    regularFileIDsByInodeNumber = v12->_regularFileIDsByInodeNumber;
    v12->_regularFileIDsByInodeNumber = v27;

    v29 = objc_alloc_init(NSMutableSet);
    restoredAppBundleIDs = v12->_restoredAppBundleIDs;
    v12->_restoredAppBundleIDs = v29;

    [(MBDomainManager *)v11 setDelegate:v12];
  }

  return v12;
}

- (BOOL)isRestoringToSameDevice
{
  if (![(MBEngine *)self isRestoreEngine])
  {
    sub_10009D164();
  }

  properties = [(MBDriveRestoreEngine *)self properties];

  if (!properties)
  {
    sub_10009D1D0();
  }

  properties2 = [(MBDriveRestoreEngine *)self properties];
  deviceID = [properties2 deviceID];
  v6 = MBDeviceUDID_Legacy();
  v7 = [deviceID isEqualToString:v6];

  return v7;
}

- (BOOL)encrypted
{
  manifest = self->_manifest;
  if (!manifest)
  {
    sub_10009D23C();
    manifest = v6;
  }

  properties = [(MBManifestLike *)manifest properties];
  encrypted = [properties encrypted];

  return encrypted;
}

- (BOOL)shouldVerifyDigests
{
  v2 = [(MBDebugContext *)self->super._debugContext valueForName:@"VerifyDigests"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (MBManifest)manifest
{
  manifest = self->_manifest;
  if (manifest)
  {
  }

  else
  {
    sub_10009D2AC();
    manifest = v5;
  }

  return manifest;
}

- (MBKeyBag)keybag
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  keybag = [settingsContext keybag];

  if (!keybag)
  {
    sub_10009D31C();
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag2 = [settingsContext2 keybag];

  return keybag2;
}

- (id)restore
{
  v3 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
    [settingsContext sourceIdentifier];
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting restore from %@", buf, 0xCu);

    settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
    sourceIdentifier = [settingsContext2 sourceIdentifier];
    _MBLog();
  }

  MBLogDeviceProperties();
  settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
  [settingsContext3 log];

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    debugContext = self->super._debugContext;
    *buf = 138412290;
    v31 = *&debugContext;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "DebugContext: %@", buf, 0xCu);
    v27 = self->super._debugContext;
    _MBLog();
  }

  _restore = [(MBDriveRestoreEngine *)self _restore];
  v14 = MBGetDefaultLog();
  v15 = v14;
  if (_restore)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MBError loggableDescriptionForError:_restore];
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = [MBError descriptionForError:_restore];
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

      v18 = [MBError loggableDescriptionForError:_restore];
      v28 = [MBError descriptionForError:_restore];
      _MBLog();
    }

    _cleanup = [(MBDriveRestoreEngine *)self _cleanup];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v31 = v20 - v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finished restore in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog();
    }

    _restore = [(MBDriveRestoreEngine *)self _cleanup];
    if (_restore)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MBError loggableDescriptionForError:_restore];
        v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v23 = [MBError descriptionForError:_restore];
        *buf = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

        v24 = [MBError loggableDescriptionForError:_restore];
        v29 = [MBError descriptionForError:_restore];
        _MBLog();
      }
    }
  }

  objc_autoreleasePoolPop(v3);

  return _restore;
}

- (id)_restore
{
  _preconditions = [(MBDriveRestoreEngine *)self _preconditions];
  if (!_preconditions)
  {
    _preconditions = [(MBDriveRestoreEngine *)self _setUp];
    if (!_preconditions)
    {
      _preconditions = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsStartingRestoreWithEngine:self];
      if (!_preconditions)
      {
        _preconditions = [(MBDriveRestoreEngine *)self _resume];
        if (!_preconditions)
        {
          _preconditions = [(MBDriveRestoreEngine *)self _prepare];
          if (!_preconditions)
          {
            _preconditions = [(MBDriveRestoreEngine *)self _restoreContent];
            if (!_preconditions)
            {
              _preconditions = [(MBDriveRestoreEngine *)self _annotate];
              if (!_preconditions)
              {
                _preconditions = [(MBDriveRestoreEngine *)self _restoreDirectoryAttributes];
                if (!_preconditions)
                {
                  _preconditions = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndingRestoreWithEngine:self];
                  if (!_preconditions)
                  {
                    _preconditions = [(MBDriveRestoreEngine *)self _moveRestoreDirs];
                    if (!_preconditions)
                    {
                      _preconditions = [(MBDriveRestoreEngine *)self _postconditions];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return _preconditions;
}

- (id)_setUp
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTime = v3;
  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrash"])
  {
    abort();
  }

  if ((MBAcquireRestoreLock() & 1) == 0)
  {
    v30 = [MBError errorWithCode:1 format:@"Acquiring restore lock failed"];
    goto LABEL_18;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Initializing app manager", buf, 2u);
    _MBLog();
  }

  v5 = [MBAppManager alloc];
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  mobileInstallation = [settingsContext mobileInstallation];
  v8 = [(MBAppManager *)v5 initWithMobileInstallation:mobileInstallation];
  appManager = self->super._appManager;
  self->super._appManager = v8;

  v10 = self->super._appManager;
  persona = [(MBEngine *)self persona];
  v38 = 0;
  LOBYTE(v10) = [(MBAppManager *)v10 loadAppsWithPersona:persona safeHarbors:1 error:&v38];
  v12 = v38;

  if (v10)
  {
    persona2 = [(MBEngine *)self persona];
    v37 = v12;
    v14 = [persona2 createRestoreDirectoriesWithError:&v37];
    v15 = v37;

    if (v14)
    {
      v36 = v15;
      v16 = [MBTemporaryDirectory sharedTemporaryDirectoryIdentifiedBy:@"drive-restore-engine" error:&v36];
      v17 = v36;

      sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
      self->_sharedTemporaryDirectory = v16;

      if (self->_sharedTemporaryDirectory)
      {
        v35 = v17;
        v19 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:persona2 identifiedBy:@"drive-restore-engine" error:&v35];
        v12 = v35;

        userTemporaryDirectory = self->_userTemporaryDirectory;
        self->_userTemporaryDirectory = v19;

        if (self->_userTemporaryDirectory)
        {
          v21 = [MBRestorePolicy alloc];
          v34 = self->super._appManager;
          settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
          plugins = [settingsContext2 plugins];
          properties = [(MBDriveRestoreEngine *)self properties];
          buildVersion = [properties buildVersion];
          settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
          shouldRestoreSystemFiles = [settingsContext3 shouldRestoreSystemFiles];
          BYTE2(v33) = 0;
          BYTE1(v33) = [(MBEngine *)self restoresPrimaryAccount];
          LOBYTE(v33) = shouldRestoreSystemFiles;
          v28 = [MBRestorePolicy initWithPersona:v21 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona2 plugins:self serviceRestoreMode:v34 osBuildVersionOfBackup:plugins shouldRestoreSystemFiles:0 isRestoringPrimaryAccount:buildVersion shouldCreateMissingIntermediateDirectories:v33];
          restorePolicy = self->_restorePolicy;
          self->_restorePolicy = v28;

          v30 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v31 = v12;
      }

      else
      {
        v31 = v17;
      }
    }

    else
    {
      v31 = v15;
    }

    v12 = v31;
    v30 = v31;
    goto LABEL_16;
  }

  v30 = [MBError errorWithCode:1 error:v12 format:@"Error initializing app manager"];
LABEL_17:

LABEL_18:

  return v30;
}

- (id)_cleanup
{
  manifest = self->_manifest;
  if (manifest)
  {
    [(MBManifestLike *)manifest closeWithError:0];
  }

  [(MBTemporaryDirectory *)self->_sharedTemporaryDirectory dispose];
  sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
  self->_sharedTemporaryDirectory = 0;

  [(MBTemporaryDirectory *)self->_userTemporaryDirectory dispose];
  userTemporaryDirectory = self->_userTemporaryDirectory;
  self->_userTemporaryDirectory = 0;

  MBReleaseRestoreLock();
  return 0;
}

- (id)_temporaryPathForFile:(id)file
{
  fileCopy = file;
  domain = [fileCopy domain];
  shouldRestoreToSharedVolume = [domain shouldRestoreToSharedVolume];
  v7 = &OBJC_IVAR___MBDriveRestoreEngine__userTemporaryDirectory;
  if (shouldRestoreToSharedVolume)
  {
    v7 = &OBJC_IVAR___MBDriveRestoreEngine__sharedTemporaryDirectory;
  }

  v8 = *(&self->super.super.isa + *v7);

  path = [v8 path];

  fileID = [fileCopy fileID];

  v11 = [fileID description];
  v12 = [path stringByAppendingPathComponent:v11];

  return v12;
}

- (id)endWithError:(id)error
{
  errorCopy = error;
  v5 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndedRestoreWithEngine:self error:errorCopy];
  v6 = v5;
  if (!errorCopy && v5)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MBError descriptionForError:v6];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Restore error - %@", buf, 0xCu);

      v14 = [MBError descriptionForError:v6];
      _MBLog();
    }

    errorCopy = v6;
  }

  v9 = [MBEngine stringForEngineType:[(MBDriveRestoreEngine *)self engineType]];
  v10 = [MBEngine stringForEngineMode:[(MBDriveRestoreEngine *)self engineMode]];
  v11 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.MobileBackup", v9, v10];

  [MBTelemetry submitEngineCompletedEventName:v11 engineStarted:errorCopy engineError:self->_startTime];
  v12 = errorCopy;

  return errorCopy;
}

- (id)_preconditions
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  sourceIdentifier = [settingsContext sourceIdentifier];

  if (!sourceIdentifier)
  {
    sub_10009D388();
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  targetIdentifier = [settingsContext2 targetIdentifier];
  v7 = MBDeviceUDID_Legacy();
  v8 = [targetIdentifier isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    sub_10009D3F4();
  }

  backupHelper = self->_backupHelper;
  v53 = 0;
  v10 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v53];
  v11 = v53;
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_42;
  }

  v14 = MBDeviceClass();
  properties = [v10 properties];
  deviceClass = [properties deviceClass];

  if (deviceClass)
  {
    v17 = sub_10005E730(v14, deviceClass);
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v55 = v14;
      v56 = 2112;
      v57 = deviceClass;
      v58 = 1024;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass: %@ shouldRestoreSystemFiles: %d", buf, 0x1Cu);
      shouldRestoreSystemFiles2 = deviceClass;
      v49 = v17;
      v46 = v14;
      _MBLog();
    }

    settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
    [settingsContext3 setShouldRestoreSystemFiles:v17];
  }

  else
  {
    settingsContext3 = MBGetDefaultLog();
    if (os_log_type_enabled(settingsContext3, OS_LOG_TYPE_DEFAULT))
    {
      settingsContext4 = [(MBDriveRestoreEngine *)self settingsContext];
      shouldRestoreSystemFiles = [settingsContext4 shouldRestoreSystemFiles];
      *buf = 138412546;
      v55 = v14;
      v56 = 1024;
      LODWORD(v57) = shouldRestoreSystemFiles;
      _os_log_impl(&_mh_execute_header, settingsContext3, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass not present in backup, using host provided argument for shouldRestoreSystemFiles: %d", buf, 0x12u);

      settingsContext5 = [(MBDriveRestoreEngine *)self settingsContext];
      v46 = v14;
      shouldRestoreSystemFiles2 = [settingsContext5 shouldRestoreSystemFiles];
      _MBLog();
    }
  }

  settingsContext6 = [(MBDriveRestoreEngine *)self settingsContext];
  shouldRestoreSystemFiles3 = [settingsContext6 shouldRestoreSystemFiles];

  if ((shouldRestoreSystemFiles3 & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not restoring system files", buf, 2u);
      _MBLog();
    }
  }

  v52 = 0;
  [v10 closeWithError:{&v52, v46, shouldRestoreSystemFiles2, v49}];
  v26 = v52;
  v12 = v26;
  if (!v26)
  {
    v27 = +[MBManagedPolicy sharedPolicy];
    v51 = 0;
    v28 = [v27 checkIfDriveRestoreIsAllowed:&v51];
    v29 = v51;

    if ((v28 & 1) == 0)
    {
      v13 = v29;
LABEL_40:

      goto LABEL_41;
    }

    settingsContext7 = [(MBDriveRestoreEngine *)self settingsContext];
    manager = [settingsContext7 manager];
    v32 = manager;
    if (manager)
    {
      v33 = manager;
    }

    else
    {
      v33 = objc_alloc_init(MBManager);
    }

    v34 = v33;

    v50 = 0;
    v35 = [v34 restoreStateWithError:&v50];
    v36 = v50;
    if (v35)
    {
      state = [v35 state];
      v38 = state;
      if (state >= 7 || ((0x71u >> state) & 1) == 0)
      {
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v55) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Restore from iTunes Backup is unavailable while an iCloud Restore is in progress (%d)", buf, 8u);
          v47 = v38;
          _MBLog();
        }

        v40 = @"Restore from iTunes Backup is unavailable while an iCloud Restore is in progress";
        v41 = 25;
LABEL_38:
        v13 = [MBError errorWithCode:v41 format:v40, v47];
        goto LABEL_39;
      }
    }

    else
    {
      v42 = [MBError isError:v36 withCode:210];
      v43 = MBGetDefaultLog();
      v44 = v43;
      if ((v42 & 1) == 0)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v55 = v36;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to fetch iCloud Restore state: %{public}@", buf, 0xCu);
          v47 = v36;
          _MBLog();
        }

        v40 = @"Failed to determine iCloud Restore state";
        v41 = 1;
        goto LABEL_38;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No iCloud account", buf, 2u);
        _MBLog();
      }
    }

    v13 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v13 = v26;
LABEL_41:

LABEL_42:

  return v13;
}

- (id)_resume
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to retrieve previous backup status", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  backupHelper = self->_backupHelper;
  v35 = 0;
  v8 = [(MBBackupHelper *)backupHelper readStatusWithError:&v35];
  v9 = v35;
  status = self->_status;
  self->_status = v8;

  v11 = self->_status;
  if (!v11)
  {
LABEL_10:
    if (![MBError isError:v9 withCode:4])
    {
      v27 = [MBBackupHelper driveReadError:v9 description:@"Error reading status"];
LABEL_22:
      v28 = v27;
      goto LABEL_23;
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "No status exists", buf, 2u);
      _MBLog();
    }

    [(MBDebugContext *)self->super._debugContext setFlag:@"StatusNotFound"];
    v20 = @"No status exists in backup";
    goto LABEL_16;
  }

  [(MBStatus *)v11 version];
  if (v12 < 2.4)
  {
    v13 = self->_status;
    if (v13)
    {
      [(MBStatus *)v13 version];
      if (v14 < 2.4)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [(MBStatus *)self->_status version];
          v17 = v16;
          snapshotStateName = [(MBStatus *)self->_status snapshotStateName];
          *buf = 134218242;
          v37 = v17;
          v38 = 2112;
          v39 = snapshotStateName;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Status: version=%0.1f, name=%@", buf, 0x16u);

          [(MBStatus *)self->_status version];
          snapshotStateName2 = [(MBStatus *)self->_status snapshotStateName];
          _MBLog();
        }

        [(MBDebugContext *)self->super._debugContext setFlag:@"OldStatusFound"];
        [(MBStatus *)self->_status version];
        backupState = v19;
        v20 = @"Unsupported backup status version: %0.1f";
        goto LABEL_20;
      }
    }

    goto LABEL_10;
  }

  debugContext = self->super._debugContext;
  backupStateName = [(MBStatus *)self->_status backupStateName];
  [(MBDebugContext *)debugContext setValue:backupStateName forName:@"BackupState"];

  v24 = self->super._debugContext;
  snapshotStateName3 = [(MBStatus *)self->_status snapshotStateName];
  [(MBDebugContext *)v24 setValue:snapshotStateName3 forName:@"SnapshotState"];

  [(MBDebugContext *)self->super._debugContext setInt:[(MBStatus *)self->_status isFullBackup] forName:@"StatusIsFullBackup"];
  if ([(MBStatus *)self->_status isBackupEmpty])
  {
    v20 = @"Backup state is empty";
LABEL_16:
    v26 = 204;
LABEL_21:
    v27 = [MBError errorWithCode:v26 format:v20, backupState, snapshotStateName2];
    goto LABEL_22;
  }

  if ([(MBStatus *)self->_status isBackupOld])
  {
    v20 = @"Backup is in old format";
LABEL_20:
    v26 = 203;
    goto LABEL_21;
  }

  if (![(MBStatus *)self->_status isBackupNew])
  {
    backupState = [(MBStatus *)self->_status backupState];
    v20 = @"Invalid backup state: %d";
LABEL_30:
    v26 = 205;
    goto LABEL_21;
  }

  if ([(MBStatus *)self->_status isUploading])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureUploading];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isMoving])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureMoving];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isRemoving])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureRemoving];
    goto LABEL_37;
  }

  if (![(MBStatus *)self->_status isFinished])
  {
    backupState = [(MBStatus *)self->_status snapshotState];
    v20 = @"Invalid snapshot state: %d";
    goto LABEL_30;
  }

  _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterSuccess];
LABEL_37:
  v31 = _resumeAfterFailureUploading;

  if (v31)
  {
    v27 = v31;
    v9 = v27;
    goto LABEL_22;
  }

  [(MBManifestLike *)self->_manifest buildIndexFromDatabaseIfNeeded];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v37 = v32 - v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finished retrieving previous backup status in %0.3f s", buf, 0xCu);
    +[NSDate timeIntervalSinceReferenceDate];
    _MBLog();
  }

  v28 = 0;
LABEL_23:

  objc_autoreleasePoolPop(v3);

  return v28;
}

- (id)_resumeAfterFailureUploading
{
  backupHelper = self->_backupHelper;
  v10 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v10];
  v5 = v10;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    if ([MBError isError:v5 withCode:4])
    {
      v7 = [MBError errorWithCode:204 format:@"Initial backup failed while uploading files"];
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_resumeAfterFailureMoving
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Getting contents of snapshot", buf, 2u);
    _MBLog();
  }

  drive = self->_drive;
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  driveSnapshotDir = [settingsContext driveSnapshotDir];
  v54 = 0;
  v7 = [(MBDrive *)drive contentsOfDirectoryAtPath:driveSnapshotDir options:0 error:&v54];
  v8 = v54;
  allKeys = [v7 allKeys];
  v10 = [NSSet setWithArray:allKeys];

  if (v8)
  {
    v11 = [MBBackupHelper driveReadError:v8 description:@"Error getting contents of snapshot"];
    goto LABEL_36;
  }

  v12 = [v10 containsObject:@"Manifest.plist"];
  backupHelper = self->_backupHelper;
  if (v12)
  {
    v53 = 0;
    v14 = &v53;
    v15 = [(MBBackupHelper *)backupHelper readSnapshotPropertiesWithError:&v53];
  }

  else
  {
    v52 = 0;
    v14 = &v52;
    v15 = [(MBBackupHelper *)backupHelper readBackupPropertiesWithError:&v52];
  }

  v16 = v15;
  v17 = *v14;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (![v16 hasManifestDB])
    {
      v23 = [v10 containsObject:@"Manifest.mbdb"];
      v24 = self->_backupHelper;
      if (v23)
      {
        v50 = 0;
        v25 = &v50;
        v26 = [(MBBackupHelper *)v24 readSnapshotDatabaseWithError:&v50];
      }

      else
      {
        v49 = 0;
        v25 = &v49;
        v26 = [(MBBackupHelper *)v24 readBackupDatabaseWithError:&v49];
      }

      v27 = v26;
      v28 = *v25;
      v8 = v28;
      if (v28)
      {
        v11 = v28;
      }

      else
      {
        v43 = v27;
        v29 = [MBManifest manifestWithProperties:v16 database:v27 databaseIndex:0];
        manifest = self->_manifest;
        self->_manifest = v29;

        [(MBManifestLike *)self->_manifest buildIndexFromDatabaseIfNeeded];
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Determining which files remain in the snapshot", buf, 2u);
          _MBLog();
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = v10;
        v32 = v10;
        v33 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v46;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [MBFileID fileIDWithString:*(*(&v45 + 1) + 8 * i), v42];
              if (v37)
              {
                v38 = MBGetDefaultLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v56 = v37;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "In snapshot: %@", buf, 0xCu);
                  v42 = v37;
                  _MBLog();
                }

                databaseIndex = [(MBManifestLike *)self->_manifest databaseIndex];
                v40 = [databaseIndex setFlags:8 forFileID:v37];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v34);
        }

        v11 = 0;
        v10 = v44;
        v27 = v43;
        v8 = 0;
      }

      goto LABEL_35;
    }

    v19 = self->_backupHelper;
    v51 = 0;
    v20 = [(MBBackupHelper *)v19 readSnapshotManifestDatabaseWithError:&v51];
    v21 = v51;
    v22 = self->_manifest;
    self->_manifest = v20;

    if (!v21)
    {
      v8 = 0;
      v11 = 0;
      goto LABEL_35;
    }

    v18 = v21;
  }

  v8 = v18;
  v11 = v18;
LABEL_35:

LABEL_36:

  return v11;
}

- (id)_resumeAfterFailureRemoving
{
  backupHelper = self->_backupHelper;
  v9 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v9];
  v5 = v9;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    v7 = v5;
  }

  return v5;
}

- (id)_resumeAfterSuccess
{
  backupHelper = self->_backupHelper;
  v9 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v9];
  v5 = v9;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    v7 = v5;
  }

  return v5;
}

- (id)_prepare
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to prepare for restore", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  _checkCompatibility = [(MBDriveRestoreEngine *)self _checkCompatibility];
  if (_checkCompatibility)
  {
    goto LABEL_9;
  }

  _checkCompatibility = [(MBDriveRestoreEngine *)self _prepareEncryption];
  if (_checkCompatibility)
  {
    goto LABEL_9;
  }

  _checkCompatibility = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsPreparingRestoreWithEngine:self];
  if (_checkCompatibility || ([(MBDriveRestoreEngine *)self _prepareProgress], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareFreeSpace], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareCopyBackup], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_9:
    v8 = _checkCompatibility;
    v9 = v8;
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v13 = v11 - v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished preparing for restore in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog();
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)_checkCompatibility
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  sourceIdentifier = [settingsContext sourceIdentifier];

  v5 = [sourceIdentifier stringByAppendingPathComponent:@"Info.plist"];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = @"Info.plist";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loading %{public}@ at %@", buf, 0x16u);
    _MBLog();
  }

  drive = self->_drive;
  v19 = 0;
  v8 = [MBInfo infoWithDrive:drive path:v5 error:&v19];
  v9 = v19;
  if (v8)
  {
    productVersion = [v8 productVersion];
    properties = [(MBManifestLike *)self->_manifest properties];
    requiredProductVersion = [properties requiredProductVersion];

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2114;
      v23 = productVersion;
      v24 = 2114;
      v25 = requiredProductVersion;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@ - productVersion:%{public}@, requiredProductVersion:%{public}@", buf, 0x20u);
      _MBLog();
    }

    if (productVersion && (MBProductVersion(), v14 = objc_claimAutoreleasedReturnValue(), v15 = MBIsRestoreCompatible(), v14, (v15 & 1) == 0))
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Refusing to restore from an incompatible backup", buf, 2u);
        _MBLog();
      }

      v16 = [MBError errorWithCode:203 format:@"Backup is from an incompatible OS version"];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    productVersion = MBGetDefaultLog();
    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, productVersion, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ at %@: %@", buf, 0x20u);
      _MBLog();
    }

    v16 = 0;
  }

  return v16;
}

- (id)_prepareEncryption
{
  properties = [(MBManifestLike *)self->_manifest properties];
  encrypted = [properties encrypted];

  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  password = [settingsContext password];

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    if (encrypted)
    {
      sub_10009D4DC();
    }

    if (password)
    {
      sub_10009D4B0();
    }

    goto LABEL_10;
  }

  if (!encrypted)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  manifest = self->_manifest;
  v39 = 0;
  v8 = [(MBManifestLike *)manifest setupEncryptionWithPassword:password withError:&v39];
  v9 = v39;
  if ((v8 & 1) == 0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
      _MBLog();
    }

    v11 = v9;
    v12 = v11;
    goto LABEL_35;
  }

LABEL_11:
  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag = [settingsContext2 keybag];

  if (!keybag)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Decoding and unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    properties2 = [(MBManifestLike *)self->_manifest properties];
    keybagData = [properties2 keybagData];

    if (keybagData)
    {
      v37 = v9;
      v21 = [MBKeyBag unlockedKeyBagWithData:keybagData password:password error:&v37];
      v12 = v37;

      settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
      [settingsContext3 setKeybag:v21];

      settingsContext4 = [(MBDriveRestoreEngine *)self settingsContext];
      keybag2 = [settingsContext4 keybag];

      if (keybag2)
      {

        goto LABEL_22;
      }

      if ([MBError isError:v12 withCode:207])
      {
        v34 = @"Invalid password when restoring encrypted backup";
        v35 = 207;
      }

      else
      {
        v34 = @"Error decoding keybag";
        v35 = 1;
      }

      v31 = [MBError errorWithCode:v35 error:v12 format:v34];
    }

    else
    {
      v31 = [MBError errorWithCode:205 format:@"No keybag in manifest"];
      v12 = v9;
    }

    goto LABEL_39;
  }

  settingsContext5 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag3 = [settingsContext5 keybag];
  isUnlocked = [keybag3 isUnlocked];

  if ((isUnlocked & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    settingsContext6 = [(MBDriveRestoreEngine *)self settingsContext];
    keybag4 = [settingsContext6 keybag];
    v38 = v9;
    v28 = [keybag4 unlockWithPassword:password error:&v38];
    v12 = v38;

    if (v28)
    {
      goto LABEL_22;
    }

    if ([MBError isError:v12 withCode:207])
    {
      v32 = @"Invalid password when restoring encrypted backup";
      v33 = 207;
    }

    else
    {
      v32 = @"Error decoding keybag";
      v33 = 1;
    }

    v11 = [MBError errorWithCode:v33 error:v12 format:v32];
LABEL_35:
    v31 = v11;
    goto LABEL_39;
  }

  v12 = v9;
LABEL_22:
  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (encrypted)
    {
      v30 = @"encrypted";
    }

    else
    {
      v30 = @"unencrypted";
    }

    *buf = 138412290;
    v41 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Backup is %@", buf, 0xCu);
    _MBLog();
  }

  [(MBDebugContext *)self->super._debugContext setBool:[(MBDriveRestoreEngine *)self encrypted] forName:@"IsEncrypted"];
  v31 = 0;
LABEL_39:

  return v31;
}

- (id)_prepareProgress
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Calculating expected duration", buf, 2u);
    _MBLog();
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10003140C;
  v43[4] = sub_10003141C;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  manifest = self->_manifest;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100031424;
  v22[3] = &unk_1000FD868;
  v22[4] = self;
  v22[5] = v43;
  v22[6] = &v39;
  v22[7] = &v35;
  v22[8] = &v31;
  v22[9] = &v27;
  v22[10] = &v23;
  v22[11] = a2;
  v6 = [(MBManifestLike *)manifest enumerateFiles:v22];
  v7 = v40[3];
  if (v7)
  {
    script = self->_script;
    v9 = [MBDriveOperation operationToDownloadFilesWithCount:v7 size:v36[3]];
    [(MBDriveScript *)script addOperation:v9];

    ++v32[3];
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v32[3];
      v13 = v24[3];
      v14 = v28[3];
      totalDownloadCount = self->_totalDownloadCount;
      [(MBProgress *)self->_progress total];
      *buf = 134219008;
      v46 = v12;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v14;
      v51 = 2048;
      v52 = totalDownloadCount;
      v53 = 2048;
      v54 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enqueued batches (%lld) of total files (%lld), hard links (%llu), total download (%lld). Expected duration: %0.3f s", buf, 0x34u);
    }

    v17 = v32[3];
    v18 = v24[3];
    v19 = v28[3];
    v20 = self->_totalDownloadCount;
    [(MBProgress *)self->_progress total];
    _MBLog();
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);

  return 0;
}

- (id)_prepareFreeSpace
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking free disk space", buf, 2u);
    _MBLog();
  }

  v4 = MBFreeDiskSpace();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v12 = v4;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Free disk space on device: %llu (%{bytes}llu)", buf, 0x16u);
    _MBLog();
  }

  if ([(MBEngine *)self isDeviceTransferEngine]|| v4 >= self->_totalDownloadSize)
  {
    v8 = 0;
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      totalDownloadSize = self->_totalDownloadSize;
      *buf = 134218752;
      v12 = v4;
      v13 = 2048;
      v14 = v4;
      v15 = 2048;
      v16 = totalDownloadSize;
      v17 = 2048;
      v18 = totalDownloadSize;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Insufficient free disk space on device to restore: %llu (%{bytes}llu) < %llu (%{bytes}llu)", buf, 0x2Au);
      v10 = self->_totalDownloadSize;
      _MBLog();
    }

    v8 = [MBError errorWithCode:106 format:@"Insufficient free disk space on device to restore (%llu < %llu)", v4, self->_totalDownloadSize];
  }

  return v8;
}

- (id)_prepareCopyBackup
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  shouldCopyBackup = [settingsContext shouldCopyBackup];

  v5 = MBGetDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!shouldCopyBackup)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not copying backup", buf, 2u);
      _MBLog();
    }

    [(MBDriveScript *)self->_script beginPerforming];
    v14 = 0;
    goto LABEL_14;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Copying backup", buf, 2u);
    _MBLog();
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  targetIdentifier = [settingsContext2 targetIdentifier];

  [targetIdentifier stringByAppendingPathComponent:@"Info.plist"];
  v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v68 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Decoding %@", buf, 0xCu);
    v56 = v9;
    _MBLog();
  }

  drive = self->_drive;
  v66 = 0;
  v12 = [MBInfo infoWithDrive:drive path:*&v9 error:&v66];
  v13 = v66;
  if (v13)
  {
    v14 = v13;
    if ([MBError isError:v13 withCode:4])
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No backup info exists", buf, 2u);
        _MBLog();
      }

      [(MBDriveScript *)self->_script beginPerforming];
      v16 = 0;
    }

    else
    {
      v16 = [MBBackupHelper driveReadError:v14 description:@"Error decoding backup info"];
    }

    goto LABEL_49;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Determining backup usage", buf, 2u);
    _MBLog();
  }

  v64 = 0;
  v65 = 0.0;
  v18 = self->_drive;
  v63 = 0;
  v19 = [(MBDrive *)v18 usageOfDirectoryAtPath:targetIdentifier count:&v65 size:&v64 options:0 error:&v63];
  v20 = v63;
  if ((v19 & 1) == 0)
  {
    v16 = [MBBackupHelper driveReadError:v20 description:@"Error determining backup usage"];

    v14 = v20;
    goto LABEL_49;
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Checking free disk space on drive", buf, 2u);
    _MBLog();
  }

  v61 = v20;
  *&v62 = 0.0;
  v22 = [(MBDrive *)self->_drive freeSpace:&v62 error:&v61];
  v14 = v61;

  v23 = MBGetDefaultLog();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v68 = *&v62;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{bytes}llu of free disk space on drive", buf, 0xCu);
      v56 = *&v62;
      _MBLog();
    }

    v25 = v64;
    if (v62 < v64 + 0x8000000)
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v68 = *&v62;
        v69 = 2048;
        v70 = v64;
        v71 = 1024;
        v72 = 0x8000000;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Skipping copying backup because there is not enough free disk space on the drive (%{bytes}llu < %{bytes}llu + %{bytes}d)", buf, 0x1Cu);
        _MBLog();
      }

      [(MBDriveScript *)self->_script beginPerforming];
LABEL_14:
      v16 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [MBError descriptionForError:v14];
      v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v68 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error getting free space of drive: %@", buf, 0xCu);

      [MBError descriptionForError:v14];
      v56 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      _MBLog();
    }

    v25 = v64;
  }

  script = self->_script;
  v29 = [MBDriveOperation operationToC0pyItemWithCount:*&v65 size:v25, *&v56];
  [(MBDriveScript *)script insertOperation:v29 atIndex:0];

  v30 = self->_script;
  v31 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v30 insertOperation:v31 atIndex:1];

  [(MBDriveScript *)self->_script beginPerforming];
  v32 = +[NSDate date];
  v33 = objc_alloc_init(NSDateFormatter);
  [v33 setDateFormat:@"yyyyMMdd-HHmmss"];
  v34 = [v33 stringFromDate:v32];
  [NSString stringWithFormat:@"%@-%@", targetIdentifier, v34];
  v58 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v35 = MBGetDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v68 = v58;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Naming backup copy %@", buf, 0xCu);
    _MBLog();
  }

  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v68 = v65;
    v69 = 2048;
    v70 = v64;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Starting to copy backup with %ld files of size %{bytes}llu", buf, 0x16u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v38 = v37;
  v39 = self->_drive;
  v60 = v14;
  v40 = [(MBDrive *)v39 copyItemAtPath:targetIdentifier toPath:*&v58 options:0 error:&v60];
  v41 = v60;

  if (v40)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v43 = v42;
    v44 = MBGetDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v68 = v43 - v38;
      v69 = 2048;
      v70 = (v64 / (v43 - v38));
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Finished copying backup in %0.3f s at %{bytes}llu/s", buf, 0x16u);
      _MBLog();
    }

    v57 = v41;

    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Updating backup info", buf, 2u);
      _MBLog();
    }

    [v12 setTargetIdentifier:*&v58];
    v46 = objc_alloc_init(NSDateFormatter);

    v47 = MBLocale();
    [v46 setLocale:v47];

    [v46 setDateStyle:2];
    [v46 setTimeStyle:1];
    displayName = [v12 displayName];
    v49 = [v46 stringFromDate:v32];
    v50 = [NSString stringWithFormat:@"%@ - %@", displayName, v49];
    [v12 setDisplayName:v50];

    [*&v58 stringByAppendingPathComponent:@"Info.plist"];
    v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v52 = MBGetDefaultLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v68 = v51;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Writing %@", buf, 0xCu);
      _MBLog();
    }

    v53 = self->_drive;
    v16 = v57;
    v59 = v57;
    v54 = [v12 writeToDrive:v53 path:*&v51 error:&v59];
    v14 = v59;

    if ((v54 & 1) == 0)
    {
      v16 = [MBBackupHelper driveWriteError:v14 description:@"Error writing updated backup info"];
    }

    v33 = v46;
  }

  else
  {
    v16 = [MBBackupHelper driveWriteError:v41 description:@"Error copying backup"];
    v54 = 0;
    v14 = v41;
  }

  if (v54)
  {
    goto LABEL_14;
  }

LABEL_49:

  return v16;
}

- (id)_restoreContent
{
  v4 = objc_autoreleasePoolPush();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    totalDownloadCount = self->_totalDownloadCount;
    totalDownloadSize = self->_totalDownloadSize;
    *buf = 134218240;
    *&buf[4] = totalDownloadCount;
    *&buf[12] = 2048;
    *&buf[14] = totalDownloadSize;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to restore %lu files of size %{bytes}llu", buf, 0x16u);
    v26 = self->_totalDownloadCount;
    v28 = self->_totalDownloadSize;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = sub_10003140C;
  v66 = sub_10003141C;
  v67 = [NSMutableArray arrayWithCapacity:0];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10003140C;
  v38 = sub_10003141C;
  v39 = 0;
  manifest = self->_manifest;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100032A58;
  v33[3] = &unk_1000FD868;
  v33[4] = self;
  v33[5] = &v34;
  v33[6] = buf;
  v33[7] = &v52;
  v33[8] = &v48;
  v33[9] = &v44;
  v33[10] = &v40;
  v33[11] = a2;
  v11 = [(MBManifestLike *)manifest enumerateFiles:v33];
  v12 = v35[5];
  if (v12)
  {
    v13 = v12;
    goto LABEL_13;
  }

  if ([*(*&buf[8] + 40) count])
  {
    v13 = [(MBDriveRestoreEngine *)self _restoreRegularFiles:*(*&buf[8] + 40) size:v53[3]];
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = [*(*&buf[8] + 40) count];
    v49[3] += v14;
    ++*(v45 + 3);
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v45[3];
    v17 = v49[3];
    v18 = self->_totalDownloadSize;
    v19 = v41[3];
    *v56 = 134218752;
    v57 = v16;
    v58 = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = v19;
    v62 = 2048;
    v63 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restored batches (%lld) of total files (%lld), hard links (%llu) of total %lld bytes", v56, 0x2Au);
    v31 = v41[3];
    v32 = self->_totalDownloadSize;
    v27 = *(v45 + 3);
    v29 = v49[3];
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21 - v9;
    v24 = (self->_totalDownloadSize / v23);
    *v56 = 134218240;
    v57 = v23;
    v58 = 2048;
    v59 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Finished restoring files in %0.3f s at %{bytes}llu/s", v56, 0x16u);
    v30 = (self->_totalDownloadSize / v23);
    _MBLog();
  }

  v13 = 0;
LABEL_13:
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v4);

  return v13;
}

- (BOOL)_shouldRestoreContentWithFile:(id)file quiet:(BOOL)quiet
{
  fileCopy = file;
  domain = [fileCopy domain];
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  if ([settingsContext shouldRestoreSystemFiles])
  {
  }

  else
  {
    isAppDomain = [domain isAppDomain];

    if ((isAppDomain & 1) == 0)
    {
      v9 = fileCopy;
      if ([domain isSystemSharedContainerDomain] && -[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self->_restorePolicy, "shouldAlwaysRestoreSystemSharedContainerDomain:", domain))
      {
        v15 = 1;
        goto LABEL_94;
      }

      relativePath = [fileCopy relativePath];
      pathComponents = [relativePath pathComponents];

      v47 = [pathComponents count];
      v48 = 0;
      do
      {
        v49 = objc_autoreleasePoolPush();
        v50 = [pathComponents subarrayWithRange:0, v48];
        v51 = [NSString pathWithComponents:v50];

        relativePathsOfSystemFilesToAlwaysRestore = [domain relativePathsOfSystemFilesToAlwaysRestore];
        v53 = [relativePathsOfSystemFilesToAlwaysRestore containsObject:v51];

        objc_autoreleasePoolPop(v49);
        if (v53)
        {
          v15 = 1;
          goto LABEL_93;
        }

        ++v48;
      }

      while (v48 <= v47);
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      relativePathsOfSystemFilesToAlwaysRestore2 = [domain relativePathsOfSystemFilesToAlwaysRestore];
      v83 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v96 objects:v106 count:16];
      v84 = pathComponents;
      if (v83)
      {
        v54 = *v97;
        v87 = domain;
        v82 = *v97;
        do
        {
          v55 = 0;
          do
          {
            if (*v97 != v54)
            {
              objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
            }

            v56 = v55;
            pathComponents2 = [*(*(&v96 + 1) + 8 * v55) pathComponents];
            v58 = [pathComponents2 count];
            v59 = 0;
            do
            {
              v60 = [pathComponents2 subarrayWithRange:{0, v59}];
              v61 = [NSString pathWithComponents:v60];

              relativePath2 = [fileCopy relativePath];
              v63 = [relativePath2 isEqualToString:v61];

              if (v63)
              {
                v15 = 1;
                goto LABEL_69;
              }

              ++v59;
            }

            while (v59 <= v58);

            v55 = v56 + 1;
            pathComponents = v84;
            domain = v87;
            v54 = v82;
          }

          while (v55 != v83);
          v83 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v83);
      }

      if (!quiet)
      {
        relativePathsOfSystemFilesToAlwaysRestore2 = MBGetDefaultLog();
        if (os_log_type_enabled(relativePathsOfSystemFilesToAlwaysRestore2, OS_LOG_TYPE_INFO))
        {
          v87 = domain;
          absolutePath = [fileCopy absolutePath];
          *buf = 138412290;
          v103 = absolutePath;
          _os_log_impl(&_mh_execute_header, relativePathsOfSystemFilesToAlwaysRestore2, OS_LOG_TYPE_INFO, "Not restoring because it's a system file: %@", buf, 0xCu);

          pathComponents2 = [fileCopy absolutePath];
          _MBLog();
          v15 = 0;
LABEL_69:

          pathComponents = v84;
          goto LABEL_91;
        }

LABEL_66:
        v15 = 0;
        goto LABEL_92;
      }

LABEL_67:
      v15 = 0;
      goto LABEL_93;
    }
  }

  v9 = fileCopy;
  if ([domain isUninstalledAppDomain])
  {
    if (!quiet)
    {
      pathComponents = MBGetDefaultLog();
      if (os_log_type_enabled(pathComponents, OS_LOG_TYPE_INFO))
      {
        containerID = [domain containerID];
        [fileCopy relativePath];
        v13 = v12 = domain;
        *buf = 138412546;
        v103 = containerID;
        v104 = 2112;
        v105 = v13;
        _os_log_impl(&_mh_execute_header, pathComponents, OS_LOG_TYPE_INFO, "Not restoring because the app %@ isn't being restored: %@", buf, 0x16u);

        relativePathsOfSystemFilesToAlwaysRestore2 = [v12 containerID];
        relativePath3 = [fileCopy relativePath];
        _MBLog();

        domain = v12;
        goto LABEL_66;
      }

      goto LABEL_67;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_94;
  }

  if ([domain isLegacyPerAppPlaceholderDomain])
  {
    if (!quiet)
    {
      pathComponents = MBGetDefaultLog();
      if (os_log_type_enabled(pathComponents, OS_LOG_TYPE_INFO))
      {
        absolutePath2 = [fileCopy absolutePath];
        *buf = 138412290;
        v103 = absolutePath2;
        _os_log_impl(&_mh_execute_header, pathComponents, OS_LOG_TYPE_INFO, "Not restoring because it's a placeholder app file: %@", buf, 0xCu);

        relativePathsOfSystemFilesToAlwaysRestore2 = [fileCopy absolutePath];
        _MBLog();
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    goto LABEL_10;
  }

  quietCopy = quiet;
  properties = [(MBDriveRestoreEngine *)self properties];
  hasCorruptSQLiteDBs = [properties hasCorruptSQLiteDBs];

  if (hasCorruptSQLiteDBs)
  {
    relativePath4 = [fileCopy relativePath];
    pathComponents = [relativePath4 pathExtension];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    relativePathsOfSystemFilesToAlwaysRestore2 = MBSQLitePathExtensions();
    v19 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v93;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v93 != v21)
          {
            objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
          }

          if ([pathComponents isEqualToString:*(*(&v92 + 1) + 8 * i)])
          {
            v66 = domain;
            v67 = MBGetDefaultLog();
            v9 = fileCopy;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              absolutePath3 = [fileCopy absolutePath];
              *buf = 138412290;
              v103 = absolutePath3;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Not restoring %@ because sqlite databases are corrupt in this backup", buf, 0xCu);

              absolutePath4 = [fileCopy absolutePath];
              _MBLog();
            }

            v15 = 0;
            domain = v66;
            goto LABEL_92;
          }
        }

        v20 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v20);
    }
  }

  v87 = domain;
  v9 = fileCopy;
  relativePath5 = [fileCopy relativePath];
  pathComponents3 = [relativePath5 pathComponents];

  v25 = [pathComponents3 count];
  v26 = 0;
  while (1)
  {
    pathComponents = pathComponents3;
    v27 = [pathComponents3 subarrayWithRange:0, v26];
    relativePathsOfSystemFilesToAlwaysRestore2 = [NSString pathWithComponents:v27];

    relativePathsNotToRestore = [v87 relativePathsNotToRestore];
    v29 = [relativePathsNotToRestore containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

    if (v29)
    {
      if (quietCopy)
      {
        goto LABEL_90;
      }

      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        absolutePath5 = [fileCopy absolutePath];
        *buf = 138412290;
        v103 = absolutePath5;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring: %@", buf, 0xCu);

        absolutePath6 = [fileCopy absolutePath];
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if (![(MBDriveRestoreEngine *)self isRestoringToSameDevice])
    {
      relativePathsNotToMigrate = [v87 relativePathsNotToMigrate];
      v31 = [relativePathsNotToMigrate containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

      if (v31)
      {
        if (quietCopy)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          absolutePath7 = [fileCopy absolutePath];
          *buf = 138412290;
          v103 = absolutePath7;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a migrate: %@", buf, 0xCu);

          absolutePath6 = [fileCopy absolutePath];
          goto LABEL_85;
        }

LABEL_89:

        goto LABEL_90;
      }
    }

    if (![(MBEngine *)self isDeviceTransferEngine])
    {
      relativePathsNotToRestoreFromLocal = [v87 relativePathsNotToRestoreFromLocal];
      v33 = [relativePathsNotToRestoreFromLocal containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

      if (v33)
      {
        if (quietCopy)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          absolutePath8 = [fileCopy absolutePath];
          *buf = 138412290;
          v103 = absolutePath8;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a local restore: %@", buf, 0xCu);

          absolutePath6 = [fileCopy absolutePath];
LABEL_85:
          _MBLog();
        }

        goto LABEL_89;
      }
    }

    if (v26 < v25 && [fileCopy isSymbolicLink])
    {
      v34 = [pathComponents objectAtIndexedSubscript:v26];
      if (([v34 isEqualToString:@".."] & 1) == 0)
      {

        goto LABEL_36;
      }

      shouldRestoreRelativeSymlinks = [v87 shouldRestoreRelativeSymlinks];

      if ((shouldRestoreRelativeSymlinks & 1) == 0)
      {
        break;
      }
    }

LABEL_36:

    ++v26;
    pathComponents3 = pathComponents;
    if (v26 > v25)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
      relativePathsOfSystemFilesToAlwaysRestore2 = [settingsContext2 plugins];

      v37 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v88 objects:v100 count:16];
      if (!v37)
      {
        v15 = 1;
        goto LABEL_91;
      }

      v38 = v37;
      v39 = *v89;
      v40 = &selRef_progress;
LABEL_39:
      v41 = 0;
      v42 = v40[358];
      while (1)
      {
        if (*v89 != v39)
        {
          objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
        }

        v43 = *(*(&v88 + 1) + 8 * v41);
        if (objc_opt_respondsToSelector())
        {
          restorePolicy = self->_restorePolicy;
          absolutePath9 = [fileCopy absolutePath];
          LOBYTE(restorePolicy) = [v43 shouldRestoreContentWithPolicy:restorePolicy atPath:absolutePath9];

          if ((restorePolicy & 1) == 0)
          {
            break;
          }
        }

        if (v38 == ++v41)
        {
          v38 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v88 objects:v100 count:16];
          v15 = 1;
          v40 = &selRef_progress;
          if (v38)
          {
            goto LABEL_39;
          }

          goto LABEL_78;
        }
      }

      if (quietCopy)
      {
        v15 = 0;
LABEL_78:
        v9 = fileCopy;
        goto LABEL_91;
      }

      v69 = MBGetDefaultLog();
      v9 = fileCopy;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v74 = objc_opt_class();
        Name = class_getName(v74);
        absolutePath10 = [fileCopy absolutePath];
        *buf = 136446466;
        v103 = Name;
        v104 = 2112;
        v105 = absolutePath10;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);

        v77 = objc_opt_class();
        class_getName(v77);
        absolutePath11 = [fileCopy absolutePath];
        _MBLog();
      }

      goto LABEL_89;
    }
  }

  if (!quietCopy)
  {
    v69 = MBGetDefaultLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a relative symbolic link in a prohibited domain", buf, 2u);
      _MBLog();
    }

    goto LABEL_89;
  }

LABEL_90:
  v15 = 0;
LABEL_91:
  domain = v87;
LABEL_92:

LABEL_93:
LABEL_94:

  return v15;
}

- (id)_restoreRegularFiles:(id)files size:(unint64_t)size
{
  filesCopy = files;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v149 = [filesCopy count];
    v150 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Downloading %lu files of size %{bytes}llu", buf, 0x16u);
    absolutePath2 = [filesCopy count];
    sizeCopy2 = size;
    _MBLog();
  }

  v126 = [NSMutableDictionary dictionaryWithCapacity:0];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = filesCopy;
  v8 = [obj countByEnumeratingWithState:&v143 objects:v160 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v144;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v144 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v143 + 1) + 8 * i);
        v13 = [(MBManifestLike *)self->_manifest databaseIndex:absolutePath2];
        fileID = [v12 fileID];
        v15 = [v13 flagsForFileID:fileID error:0];

        settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
        v17 = settingsContext;
        if ((v15 & 8) != 0)
        {
          [settingsContext driveSnapshotDir];
        }

        else
        {
          [settingsContext driveBackupDir];
        }
        v18 = ;

        nonRedirectedDomain = [v12 nonRedirectedDomain];
        relativePath = [v12 relativePath];
        v21 = [MBFileID fileIDWithDomain:nonRedirectedDomain relativePath:relativePath];

        properties = [(MBManifestLike *)self->_manifest properties];
        if ([properties hasManifestDB])
        {
          [v21 filenameWithPrefix];
        }

        else
        {
          [v21 filename];
        }
        v23 = ;

        v24 = [v18 stringByAppendingPathComponent:v23];
        v25 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v12];
        [v126 setObject:v25 forKeyedSubscript:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v143 objects:v160 count:16];
    }

    while (v9);
  }

  v158 = @"FileHandleFactory";
  selfCopy = self;
  v26 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v158 count:1];
  drive = self->_drive;
  v141 = 0;
  v142 = 0;
  v28 = [(MBDrive *)drive downloadFilesAtPaths:v126 options:v26 results:&v142 error:&v141];
  v29 = v142;
  v30 = v141;
  if ((v28 & 1) == 0)
  {
    if (![MBError isError:v30 withCode:2])
    {
      v55 = [MBBackupHelper driveReadError:v30 description:@"Error downloading files"];
      goto LABEL_91;
    }

    v109 = v30;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v56 = v29;
    v57 = [v56 countByEnumeratingWithState:&v137 objects:v157 count:16];
    if (v57)
    {
      v58 = v57;
      v112 = v29;
      v59 = 0;
      v60 = *v138;
      do
      {
        for (j = 0; j != v58; j = j + 1)
        {
          if (*v138 != v60)
          {
            objc_enumerationMutation(v56);
          }

          v62 = *(*(&v137 + 1) + 8 * j);
          v63 = [v56 objectForKeyedSubscript:{v62, absolutePath2, sizeCopy2}];
          if (([MBError isError:v63 withCode:105]& 1) != 0)
          {
            v59 = 1;
          }

          else
          {
            v64 = MBGetDefaultLog();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v149 = v62;
              v150 = 2112;
              sizeCopy = v63;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Error downloading %@: %@", buf, 0x16u);
              absolutePath2 = v62;
              sizeCopy2 = v63;
              _MBLog();
            }
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v137 objects:v157 count:16];
      }

      while (v58);

      v29 = v112;
      if (v59)
      {
        v65 = @"No space left on device";
        v66 = 106;
LABEL_94:
        absolutePath2 = [MBError errorWithCode:v66 format:v65, absolutePath2];
        v30 = v109;
        goto LABEL_106;
      }
    }

    else
    {
    }

    v65 = @"Multiple errors downloading files";
    v66 = 205;
    goto LABEL_94;
  }

  if ([(MBEngine *)self isDeviceTransferEngine]&& [(MBDriveRestoreEngine *)self shouldVerifyDigests])
  {
    v108 = v30;
    v111 = v29;
    v114 = v26;
    v136 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    v31 = obj;
    v32 = [v31 countByEnumeratingWithState:&v133 objects:v156 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v134;
      v119 = v31;
      context = *v134;
      do
      {
        v35 = 0;
        v117 = v33;
        do
        {
          if (*v134 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v133 + 1) + 8 * v35);
          domain = [v36 domain];
          shouldDigest = [domain shouldDigest];

          if (shouldDigest)
          {
            digest = [v36 digest];
            if (digest)
            {
              v40 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v36];
              v41 = +[MBDigest sha256];
              v132 = 0;
              v42 = [v41 digestForFileAtPath:v40 error:&v132];
              v123 = v132;
              if (v42)
              {
                v43 = [(std::__fs::filesystem::path *)v42 isEqualToData:digest];
                v44 = MBGetDefaultLog();
                v45 = v44;
                if (v43)
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    absolutePath = [v36 absolutePath];
                    *buf = 138412290;
                    v149 = absolutePath;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Digest matches: %@", buf, 0xCu);

                    absolutePath2 = [v36 absolutePath];
                    _MBLog();
                  }
                }

                else
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    absolutePath3 = [v36 absolutePath];
                    fileID2 = [v36 fileID];
                    *buf = 138413058;
                    v149 = v42;
                    v150 = 2112;
                    sizeCopy = digest;
                    v152 = 2112;
                    v153 = absolutePath3;
                    v154 = 2112;
                    v155 = fileID2;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "File SHA256 digest does not match manifest (%@ vs %@): %@ (%@)", buf, 0x2Au);

                    absolutePath4 = [v36 absolutePath];
                    [v36 fileID];
                    v107 = v106 = absolutePath4;
                    absolutePath2 = v42;
                    sizeCopy2 = digest;
                    _MBLog();
                  }

                  [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
                }

                v33 = v117;
                v31 = v119;
              }

              else
              {
                v51 = MBGetDefaultLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v149 = v40;
                  v150 = 2112;
                  sizeCopy = v123;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to compute the SHA1 digest for %@: %@", buf, 0x16u);
                  absolutePath2 = v40;
                  sizeCopy2 = v123;
                  v31 = v119;
                  _MBLog();
                }

                [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
              }

              v34 = context;
            }

            else
            {
              v47 = MBGetDefaultLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                absolutePath5 = [v36 absolutePath];
                fileID3 = [v36 fileID];
                *buf = 138412546;
                v149 = absolutePath5;
                v150 = 2112;
                sizeCopy = fileID3;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Digest missing from file: %@ (%@)", buf, 0x16u);

                absolutePath6 = [v36 absolutePath];
                [v36 fileID];
                sizeCopy2 = absolutePath2 = absolutePath6;
                _MBLog();
              }

              [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
            }
          }

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v133 objects:v156 count:16];
      }

      while (v33);
    }

    v29 = v111;
    v26 = v114;
    v30 = v108;
  }

  if (self->_digestDidNotMatchForSomeFiles)
  {
    v55 = [MBError errorWithCode:205 format:@"Digest didn't match for some files"];
LABEL_91:
    absolutePath2 = v55;
    goto LABEL_106;
  }

  v113 = v29;
  v115 = v26;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v116 = obj;
  v118 = [v116 countByEnumeratingWithState:&v128 objects:v147 count:16];
  if (v118)
  {
    v120 = *v129;
    while (2)
    {
      for (k = 0; k != v118; k = k + 1)
      {
        v68 = v30;
        if (*v129 != v120)
        {
          objc_enumerationMutation(v116);
        }

        v69 = *(*(&v128 + 1) + 8 * k);
        contexta = objc_autoreleasePoolPush();
        v124 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v69];
        fileSystemRepresentation = [(std::__fs::filesystem::path *)v124 fileSystemRepresentation];
        v71 = [(MBRestorePolicy *)self->_restorePolicy restorePathForDriveRestorable:v69];
        restorePolicy = self->_restorePolicy;
        domain2 = [v69 domain];
        relativePath2 = [v69 relativePath];
        v75 = [(MBRestorePolicy *)restorePolicy validateRestoreDomain:domain2 relativePath:relativePath2];

        if (v75)
        {
          v30 = v75;
          absolutePath2 = v30;
          v29 = v113;
          v26 = v115;
          v97 = contexta;
          v87 = v71;
LABEL_105:

          objc_autoreleasePoolPop(v97);
          goto LABEL_106;
        }

        v76 = v71;
        fileSystemRepresentation2 = [v71 fileSystemRepresentation];
        v78 = MBGetDefaultLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = [v69 description];
          fileID4 = [v69 fileID];
          *buf = 138412546;
          v149 = v79;
          v150 = 2112;
          sizeCopy = fileID4;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "Restoring regular file: %@ (%@)", buf, 0x16u);

          v81 = [v69 description];
          fileID5 = [v69 fileID];
          _MBLog();
        }

        v82 = [MBRestorableOperation restore:v69 regularFileAtPath:v124 settingAttributes:1];
        if (v82)
        {
          v30 = v82;
          absolutePath2 = v30;
          v29 = v113;
          v26 = v115;
          v97 = contexta;
          v87 = v76;
          goto LABEL_105;
        }

        v84 = fileSystemRepresentation;
        rename(fileSystemRepresentation, fileSystemRepresentation2, v83);
        if (v85)
        {
          v86 = *__error();
          v87 = v76;
          if (v86 == 92 || v86 == 63)
          {
            v94 = MBGetDefaultLog();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v149 = v124;
              v150 = 2112;
              sizeCopy = v76;
              v152 = 1024;
              LODWORD(v153) = v86;
              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "Skipped rename from %@ to %@: %{errno}d", buf, 0x1Cu);
              _MBLog();
            }

            v30 = 0;
          }

          else
          {
            if (v86 != 21)
            {
              v98 = MBGetDefaultLog();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v149 = v84;
                v150 = 2080;
                sizeCopy = fileSystemRepresentation2;
                v152 = 1024;
                LODWORD(v153) = v86;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog();
              }

              v99 = NSStringFromSelector(a2);
              absolutePath2 = [MBError posixErrorWithCode:v86 path:v76 format:@"%@ rename error", v99];

              v30 = 0;
              goto LABEL_101;
            }

            v88 = MBGetDefaultLog();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Removing existing directory", buf, 2u);
              _MBLog();
            }

            v89 = +[NSFileManager defaultManager];
            v127 = 0;
            v90 = [v89 removeItemAtPath:v76 error:&v127];
            v91 = v127;

            if ((v90 & 1) == 0)
            {
              v30 = v91;
              absolutePath2 = [MBError errorWithCode:102 error:v91 path:v76 format:@"Error removing directory item while restoring regular file"];
LABEL_101:
              v29 = v113;
              v26 = v115;
              v97 = contexta;
              goto LABEL_105;
            }

            rename(v84, fileSystemRepresentation2, v92);
            if (v93)
            {
              v100 = MBGetDefaultLog();
              v29 = v113;
              v26 = v115;
              v30 = v91;
              v97 = contexta;
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v149 = v84;
                v150 = 2080;
                sizeCopy = fileSystemRepresentation2;
                v152 = 1024;
                LODWORD(v153) = 21;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog();
              }

              v101 = NSStringFromSelector(a2);
              absolutePath2 = [MBError posixErrorWithCode:21 path:v87 format:@"%@ rename error", v101];

              goto LABEL_105;
            }

            v30 = v91;
          }
        }

        else
        {
          v30 = 0;
          v87 = v76;
        }

        v95 = MBGetDefaultLog();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v149 = v84;
          v150 = 2080;
          sizeCopy = fileSystemRepresentation2;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Renamed %s to %s", buf, 0x16u);
          _MBLog();
        }

        objc_autoreleasePoolPop(contexta);
      }

      v118 = [v116 countByEnumeratingWithState:&v128 objects:v147 count:16];
      if (v118)
      {
        continue;
      }

      break;
    }
  }

  absolutePath2 = 0;
  v29 = v113;
  v26 = v115;
LABEL_106:

  return absolutePath2;
}

- (id)_annotate
{
  v3 = objc_autoreleasePoolPush();
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  shouldRemoveItemsNotRestored = [settingsContext shouldRemoveItemsNotRestored];

  v6 = MBGetDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (shouldRemoveItemsNotRestored)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Annotating", buf, 2u);
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    persona = [(MBEngine *)self persona];
    engineType = self->_engineType;
    backupPolicy = [(MBEngine *)self backupPolicy];
    settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
    v6 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", persona, engineType, backupPolicy, [settingsContext2 shouldRestoreSystemFiles], -[MBDriveRestoreEngine encrypted](self, "encrypted"));

    allDomains = [(MBDomainManager *)self->super._domainManager allDomains];
    v15 = [v6 annotateDomains:allDomains];

    if (v15)
    {
      v16 = v15;

      objc_autoreleasePoolPop(v3);
      goto LABEL_12;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v21 = v18 - v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Annotated in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog();
    }
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not annotating", buf, 2u);
    _MBLog();
  }

  objc_autoreleasePoolPop(v3);
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)_restoreDirectoryAttributes
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003140C;
  v20 = sub_10003141C;
  v21 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to restore directory modification times", buf, 2u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  manifest = self->_manifest;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035A50;
  v15[3] = &unk_1000FD670;
  v15[4] = self;
  v15[5] = &v16;
  v8 = [(MBManifestLike *)manifest enumerateFiles:v15];
  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        *buf = 134217984;
        v23 = v13 - v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Finished restoring directory modification times in %0.3f s", buf, 0xCu);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog();
    }
  }

  objc_autoreleasePoolPop(v3);
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)_moveRestoreDirs
{
  persona = [(MBEngine *)self persona];
  v6 = 0;
  [persona finalizeRestoreDirectoriesWithError:&v6];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)fileForTemporaryPath:(id)path
{
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v7 = [MBFileID fileIDWithString:stringByDeletingPathExtension];

  if (!v7)
  {
    sub_10009D620();
  }

  v8 = [(MBManifestLike *)self->_manifest fetchFileWithID:v7 error:0];
  if (!v8)
  {
    sub_10009D698();
  }

  return v8;
}

@end