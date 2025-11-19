@interface MBDriveRestoreEngine
+ (id)restoreEngineWithSettingsContext:(id)a3 debugContext:(id)a4;
- (BOOL)_shouldRestoreContentWithFile:(id)a3 quiet:(BOOL)a4;
- (BOOL)encrypted;
- (BOOL)isRestoringToSameDevice;
- (BOOL)shouldVerifyDigests;
- (MBDriveRestoreEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4;
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
- (id)_restoreRegularFiles:(id)a3 size:(unint64_t)a4;
- (id)_resume;
- (id)_resumeAfterFailureMoving;
- (id)_resumeAfterFailureRemoving;
- (id)_resumeAfterFailureUploading;
- (id)_resumeAfterSuccess;
- (id)_setUp;
- (id)_temporaryPathForFile:(id)a3;
- (id)endWithError:(id)a3;
- (id)fileForTemporaryPath:(id)a3;
- (id)restore;
@end

@implementation MBDriveRestoreEngine

+ (id)restoreEngineWithSettingsContext:(id)a3 debugContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBDriveRestoreEngine alloc] initWithSettingsContext:v6 debugContext:v5];

  return v7;
}

- (MBDriveRestoreEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4
{
  v6 = a3;
  v33 = 0;
  v7 = a4;
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
  v12 = [(MBEngine *)&v32 initWithSettingsContext:v6 debugContext:v7 domainManager:v11];

  if (v12)
  {
    v13 = [(MBDriveRestoreEngine *)v12 settingsContext];
    if ([v13 isDeviceTransfer])
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
    v21 = [(MBDriveRestoreEngine *)v12 settingsContext];
    v22 = [v21 drive];
    v23 = [(MBProgressDrive *)v19 initWithScript:v20 delegate:v22];
    drive = v12->_drive;
    v12->_drive = &v23->super;

    v25 = [[MBBackupHelper alloc] initWithSettingsContext:v6 domainManager:v12->super._domainManager];
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

  v3 = [(MBDriveRestoreEngine *)self properties];

  if (!v3)
  {
    sub_10009D1D0();
  }

  v4 = [(MBDriveRestoreEngine *)self properties];
  v5 = [v4 deviceID];
  v6 = MBDeviceUDID_Legacy();
  v7 = [v5 isEqualToString:v6];

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

  v3 = [(MBManifestLike *)manifest properties];
  v4 = [v3 encrypted];

  return v4;
}

- (BOOL)shouldVerifyDigests
{
  v2 = [(MBDebugContext *)self->super._debugContext valueForName:@"VerifyDigests"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
  v3 = [(MBDriveRestoreEngine *)self settingsContext];
  v4 = [v3 keybag];

  if (!v4)
  {
    sub_10009D31C();
  }

  v5 = [(MBDriveRestoreEngine *)self settingsContext];
  v6 = [v5 keybag];

  return v6;
}

- (id)restore
{
  v3 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MBDriveRestoreEngine *)self settingsContext];
    [v7 sourceIdentifier];
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting restore from %@", buf, 0xCu);

    v9 = [(MBDriveRestoreEngine *)self settingsContext];
    v26 = [v9 sourceIdentifier];
    _MBLog();
  }

  MBLogDeviceProperties();
  v10 = [(MBDriveRestoreEngine *)self settingsContext];
  [v10 log];

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

  v13 = [(MBDriveRestoreEngine *)self _restore];
  v14 = MBGetDefaultLog();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MBError loggableDescriptionForError:v13];
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = [MBError descriptionForError:v13];
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

      v18 = [MBError loggableDescriptionForError:v13];
      v28 = [MBError descriptionForError:v13];
      _MBLog();
    }

    v19 = [(MBDriveRestoreEngine *)self _cleanup];
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

    v13 = [(MBDriveRestoreEngine *)self _cleanup];
    if (v13)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MBError loggableDescriptionForError:v13];
        v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v23 = [MBError descriptionForError:v13];
        *buf = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

        v24 = [MBError loggableDescriptionForError:v13];
        v29 = [MBError descriptionForError:v13];
        _MBLog();
      }
    }
  }

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (id)_restore
{
  v3 = [(MBDriveRestoreEngine *)self _preconditions];
  if (!v3)
  {
    v3 = [(MBDriveRestoreEngine *)self _setUp];
    if (!v3)
    {
      v3 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsStartingRestoreWithEngine:self];
      if (!v3)
      {
        v3 = [(MBDriveRestoreEngine *)self _resume];
        if (!v3)
        {
          v3 = [(MBDriveRestoreEngine *)self _prepare];
          if (!v3)
          {
            v3 = [(MBDriveRestoreEngine *)self _restoreContent];
            if (!v3)
            {
              v3 = [(MBDriveRestoreEngine *)self _annotate];
              if (!v3)
              {
                v3 = [(MBDriveRestoreEngine *)self _restoreDirectoryAttributes];
                if (!v3)
                {
                  v3 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndingRestoreWithEngine:self];
                  if (!v3)
                  {
                    v3 = [(MBDriveRestoreEngine *)self _moveRestoreDirs];
                    if (!v3)
                    {
                      v3 = [(MBDriveRestoreEngine *)self _postconditions];
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

  return v3;
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
  v6 = [(MBDriveRestoreEngine *)self settingsContext];
  v7 = [v6 mobileInstallation];
  v8 = [(MBAppManager *)v5 initWithMobileInstallation:v7];
  appManager = self->super._appManager;
  self->super._appManager = v8;

  v10 = self->super._appManager;
  v11 = [(MBEngine *)self persona];
  v38 = 0;
  LOBYTE(v10) = [(MBAppManager *)v10 loadAppsWithPersona:v11 safeHarbors:1 error:&v38];
  v12 = v38;

  if (v10)
  {
    v13 = [(MBEngine *)self persona];
    v37 = v12;
    v14 = [v13 createRestoreDirectoriesWithError:&v37];
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
        v19 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:v13 identifiedBy:@"drive-restore-engine" error:&v35];
        v12 = v35;

        userTemporaryDirectory = self->_userTemporaryDirectory;
        self->_userTemporaryDirectory = v19;

        if (self->_userTemporaryDirectory)
        {
          v21 = [MBRestorePolicy alloc];
          v34 = self->super._appManager;
          v22 = [(MBDriveRestoreEngine *)self settingsContext];
          v23 = [v22 plugins];
          v24 = [(MBDriveRestoreEngine *)self properties];
          v25 = [v24 buildVersion];
          v26 = [(MBDriveRestoreEngine *)self settingsContext];
          v27 = [v26 shouldRestoreSystemFiles];
          BYTE2(v33) = 0;
          BYTE1(v33) = [(MBEngine *)self restoresPrimaryAccount];
          LOBYTE(v33) = v27;
          v28 = [MBRestorePolicy initWithPersona:v21 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:v13 plugins:self serviceRestoreMode:v34 osBuildVersionOfBackup:v23 shouldRestoreSystemFiles:0 isRestoringPrimaryAccount:v25 shouldCreateMissingIntermediateDirectories:v33];
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

- (id)_temporaryPathForFile:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 shouldRestoreToSharedVolume];
  v7 = &OBJC_IVAR___MBDriveRestoreEngine__userTemporaryDirectory;
  if (v6)
  {
    v7 = &OBJC_IVAR___MBDriveRestoreEngine__sharedTemporaryDirectory;
  }

  v8 = *(&self->super.super.isa + *v7);

  v9 = [v8 path];

  v10 = [v4 fileID];

  v11 = [v10 description];
  v12 = [v9 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)endWithError:(id)a3
{
  v4 = a3;
  v5 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndedRestoreWithEngine:self error:v4];
  v6 = v5;
  if (!v4 && v5)
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

    v4 = v6;
  }

  v9 = [MBEngine stringForEngineType:[(MBDriveRestoreEngine *)self engineType]];
  v10 = [MBEngine stringForEngineMode:[(MBDriveRestoreEngine *)self engineMode]];
  v11 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.MobileBackup", v9, v10];

  [MBTelemetry submitEngineCompletedEventName:v11 engineStarted:v4 engineError:self->_startTime];
  v12 = v4;

  return v4;
}

- (id)_preconditions
{
  v3 = [(MBDriveRestoreEngine *)self settingsContext];
  v4 = [v3 sourceIdentifier];

  if (!v4)
  {
    sub_10009D388();
  }

  v5 = [(MBDriveRestoreEngine *)self settingsContext];
  v6 = [v5 targetIdentifier];
  v7 = MBDeviceUDID_Legacy();
  v8 = [v6 isEqualToString:v7];

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
  v15 = [v10 properties];
  v16 = [v15 deviceClass];

  if (v16)
  {
    v17 = sub_10005E730(v14, v16);
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v55 = v14;
      v56 = 2112;
      v57 = v16;
      v58 = 1024;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass: %@ shouldRestoreSystemFiles: %d", buf, 0x1Cu);
      v48 = v16;
      v49 = v17;
      v46 = v14;
      _MBLog();
    }

    v19 = [(MBDriveRestoreEngine *)self settingsContext];
    [v19 setShouldRestoreSystemFiles:v17];
  }

  else
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(MBDriveRestoreEngine *)self settingsContext];
      v21 = [v20 shouldRestoreSystemFiles];
      *buf = 138412546;
      v55 = v14;
      v56 = 1024;
      LODWORD(v57) = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass not present in backup, using host provided argument for shouldRestoreSystemFiles: %d", buf, 0x12u);

      v22 = [(MBDriveRestoreEngine *)self settingsContext];
      v46 = v14;
      v48 = [v22 shouldRestoreSystemFiles];
      _MBLog();
    }
  }

  v23 = [(MBDriveRestoreEngine *)self settingsContext];
  v24 = [v23 shouldRestoreSystemFiles];

  if ((v24 & 1) == 0)
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
  [v10 closeWithError:{&v52, v46, v48, v49}];
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

    v30 = [(MBDriveRestoreEngine *)self settingsContext];
    v31 = [v30 manager];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
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
      v37 = [v35 state];
      v38 = v37;
      if (v37 >= 7 || ((0x71u >> v37) & 1) == 0)
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
          v18 = [(MBStatus *)self->_status snapshotStateName];
          *buf = 134218242;
          v37 = v17;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Status: version=%0.1f, name=%@", buf, 0x16u);

          [(MBStatus *)self->_status version];
          v34 = [(MBStatus *)self->_status snapshotStateName];
          _MBLog();
        }

        [(MBDebugContext *)self->super._debugContext setFlag:@"OldStatusFound"];
        [(MBStatus *)self->_status version];
        v33 = v19;
        v20 = @"Unsupported backup status version: %0.1f";
        goto LABEL_20;
      }
    }

    goto LABEL_10;
  }

  debugContext = self->super._debugContext;
  v23 = [(MBStatus *)self->_status backupStateName];
  [(MBDebugContext *)debugContext setValue:v23 forName:@"BackupState"];

  v24 = self->super._debugContext;
  v25 = [(MBStatus *)self->_status snapshotStateName];
  [(MBDebugContext *)v24 setValue:v25 forName:@"SnapshotState"];

  [(MBDebugContext *)self->super._debugContext setInt:[(MBStatus *)self->_status isFullBackup] forName:@"StatusIsFullBackup"];
  if ([(MBStatus *)self->_status isBackupEmpty])
  {
    v20 = @"Backup state is empty";
LABEL_16:
    v26 = 204;
LABEL_21:
    v27 = [MBError errorWithCode:v26 format:v20, v33, v34];
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
    v33 = [(MBStatus *)self->_status backupState];
    v20 = @"Invalid backup state: %d";
LABEL_30:
    v26 = 205;
    goto LABEL_21;
  }

  if ([(MBStatus *)self->_status isUploading])
  {
    v30 = [(MBDriveRestoreEngine *)self _resumeAfterFailureUploading];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isMoving])
  {
    v30 = [(MBDriveRestoreEngine *)self _resumeAfterFailureMoving];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isRemoving])
  {
    v30 = [(MBDriveRestoreEngine *)self _resumeAfterFailureRemoving];
    goto LABEL_37;
  }

  if (![(MBStatus *)self->_status isFinished])
  {
    v33 = [(MBStatus *)self->_status snapshotState];
    v20 = @"Invalid snapshot state: %d";
    goto LABEL_30;
  }

  v30 = [(MBDriveRestoreEngine *)self _resumeAfterSuccess];
LABEL_37:
  v31 = v30;

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
  v5 = [(MBDriveRestoreEngine *)self settingsContext];
  v6 = [v5 driveSnapshotDir];
  v54 = 0;
  v7 = [(MBDrive *)drive contentsOfDirectoryAtPath:v6 options:0 error:&v54];
  v8 = v54;
  v9 = [v7 allKeys];
  v10 = [NSSet setWithArray:v9];

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

                v39 = [(MBManifestLike *)self->_manifest databaseIndex];
                v40 = [v39 setFlags:8 forFileID:v37];
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
  v7 = [(MBDriveRestoreEngine *)self _checkCompatibility];
  if (v7)
  {
    goto LABEL_9;
  }

  v7 = [(MBDriveRestoreEngine *)self _prepareEncryption];
  if (v7)
  {
    goto LABEL_9;
  }

  v7 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsPreparingRestoreWithEngine:self];
  if (v7 || ([(MBDriveRestoreEngine *)self _prepareProgress], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareFreeSpace], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareCopyBackup], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_9:
    v8 = v7;
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
  v3 = [(MBDriveRestoreEngine *)self settingsContext];
  v4 = [v3 sourceIdentifier];

  v5 = [v4 stringByAppendingPathComponent:@"Info.plist"];
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
    v10 = [v8 productVersion];
    v11 = [(MBManifestLike *)self->_manifest properties];
    v12 = [v11 requiredProductVersion];

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@ - productVersion:%{public}@, requiredProductVersion:%{public}@", buf, 0x20u);
      _MBLog();
    }

    if (v10 && (MBProductVersion(), v14 = objc_claimAutoreleasedReturnValue(), v15 = MBIsRestoreCompatible(), v14, (v15 & 1) == 0))
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
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ at %@: %@", buf, 0x20u);
      _MBLog();
    }

    v16 = 0;
  }

  return v16;
}

- (id)_prepareEncryption
{
  v3 = [(MBManifestLike *)self->_manifest properties];
  v4 = [v3 encrypted];

  v5 = [(MBDriveRestoreEngine *)self settingsContext];
  v6 = [v5 password];

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    if (v4)
    {
      sub_10009D4DC();
    }

    if (v6)
    {
      sub_10009D4B0();
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  manifest = self->_manifest;
  v39 = 0;
  v8 = [(MBManifestLike *)manifest setupEncryptionWithPassword:v6 withError:&v39];
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
  v13 = [(MBDriveRestoreEngine *)self settingsContext];
  v14 = [v13 keybag];

  if (!v14)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Decoding and unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    v19 = [(MBManifestLike *)self->_manifest properties];
    v20 = [v19 keybagData];

    if (v20)
    {
      v37 = v9;
      v21 = [MBKeyBag unlockedKeyBagWithData:v20 password:v6 error:&v37];
      v12 = v37;

      v22 = [(MBDriveRestoreEngine *)self settingsContext];
      [v22 setKeybag:v21];

      v23 = [(MBDriveRestoreEngine *)self settingsContext];
      v24 = [v23 keybag];

      if (v24)
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

  v15 = [(MBDriveRestoreEngine *)self settingsContext];
  v16 = [v15 keybag];
  v17 = [v16 isUnlocked];

  if ((v17 & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    v26 = [(MBDriveRestoreEngine *)self settingsContext];
    v27 = [v26 keybag];
    v38 = v9;
    v28 = [v27 unlockWithPassword:v6 error:&v38];
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
    if (v4)
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
  v3 = [(MBDriveRestoreEngine *)self settingsContext];
  v4 = [v3 shouldCopyBackup];

  v5 = MBGetDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!v4)
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

  v7 = [(MBDriveRestoreEngine *)self settingsContext];
  v8 = [v7 targetIdentifier];

  [v8 stringByAppendingPathComponent:@"Info.plist"];
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
  v19 = [(MBDrive *)v18 usageOfDirectoryAtPath:v8 count:&v65 size:&v64 options:0 error:&v63];
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
  [NSString stringWithFormat:@"%@-%@", v8, v34];
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
  v40 = [(MBDrive *)v39 copyItemAtPath:v8 toPath:*&v58 options:0 error:&v60];
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
    v48 = [v12 displayName];
    v49 = [v46 stringFromDate:v32];
    v50 = [NSString stringWithFormat:@"%@ - %@", v48, v49];
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

- (BOOL)_shouldRestoreContentWithFile:(id)a3 quiet:(BOOL)a4
{
  v86 = a3;
  v6 = [v86 domain];
  v7 = [(MBDriveRestoreEngine *)self settingsContext];
  if ([v7 shouldRestoreSystemFiles])
  {
  }

  else
  {
    v8 = [v6 isAppDomain];

    if ((v8 & 1) == 0)
    {
      v9 = v86;
      if ([v6 isSystemSharedContainerDomain] && -[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self->_restorePolicy, "shouldAlwaysRestoreSystemSharedContainerDomain:", v6))
      {
        v15 = 1;
        goto LABEL_94;
      }

      v46 = [v86 relativePath];
      v10 = [v46 pathComponents];

      v47 = [v10 count];
      v48 = 0;
      do
      {
        v49 = objc_autoreleasePoolPush();
        v50 = [v10 subarrayWithRange:0, v48];
        v51 = [NSString pathWithComponents:v50];

        v52 = [v6 relativePathsOfSystemFilesToAlwaysRestore];
        v53 = [v52 containsObject:v51];

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
      v14 = [v6 relativePathsOfSystemFilesToAlwaysRestore];
      v83 = [v14 countByEnumeratingWithState:&v96 objects:v106 count:16];
      v84 = v10;
      if (v83)
      {
        v54 = *v97;
        v87 = v6;
        v82 = *v97;
        do
        {
          v55 = 0;
          do
          {
            if (*v97 != v54)
            {
              objc_enumerationMutation(v14);
            }

            v56 = v55;
            v57 = [*(*(&v96 + 1) + 8 * v55) pathComponents];
            v58 = [v57 count];
            v59 = 0;
            do
            {
              v60 = [v57 subarrayWithRange:{0, v59}];
              v61 = [NSString pathWithComponents:v60];

              v62 = [v86 relativePath];
              v63 = [v62 isEqualToString:v61];

              if (v63)
              {
                v15 = 1;
                goto LABEL_69;
              }

              ++v59;
            }

            while (v59 <= v58);

            v55 = v56 + 1;
            v10 = v84;
            v6 = v87;
            v54 = v82;
          }

          while (v55 != v83);
          v83 = [v14 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v83);
      }

      if (!a4)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v87 = v6;
          v64 = [v86 absolutePath];
          *buf = 138412290;
          v103 = v64;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Not restoring because it's a system file: %@", buf, 0xCu);

          v57 = [v86 absolutePath];
          _MBLog();
          v15 = 0;
LABEL_69:

          v10 = v84;
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

  v9 = v86;
  if ([v6 isUninstalledAppDomain])
  {
    if (!a4)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v6 containerID];
        [v86 relativePath];
        v13 = v12 = v6;
        *buf = 138412546;
        v103 = v11;
        v104 = 2112;
        v105 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not restoring because the app %@ isn't being restored: %@", buf, 0x16u);

        v14 = [v12 containerID];
        v80 = [v86 relativePath];
        _MBLog();

        v6 = v12;
        goto LABEL_66;
      }

      goto LABEL_67;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_94;
  }

  if ([v6 isLegacyPerAppPlaceholderDomain])
  {
    if (!a4)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v65 = [v86 absolutePath];
        *buf = 138412290;
        v103 = v65;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not restoring because it's a placeholder app file: %@", buf, 0xCu);

        v14 = [v86 absolutePath];
        _MBLog();
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    goto LABEL_10;
  }

  v85 = a4;
  v16 = [(MBDriveRestoreEngine *)self properties];
  v17 = [v16 hasCorruptSQLiteDBs];

  if (v17)
  {
    v18 = [v86 relativePath];
    v10 = [v18 pathExtension];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v14 = MBSQLitePathExtensions();
    v19 = [v14 countByEnumeratingWithState:&v92 objects:v101 count:16];
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
            objc_enumerationMutation(v14);
          }

          if ([v10 isEqualToString:*(*(&v92 + 1) + 8 * i)])
          {
            v66 = v6;
            v67 = MBGetDefaultLog();
            v9 = v86;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = [v86 absolutePath];
              *buf = 138412290;
              v103 = v68;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Not restoring %@ because sqlite databases are corrupt in this backup", buf, 0xCu);

              v79 = [v86 absolutePath];
              _MBLog();
            }

            v15 = 0;
            v6 = v66;
            goto LABEL_92;
          }
        }

        v20 = [v14 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v20);
    }
  }

  v87 = v6;
  v9 = v86;
  v23 = [v86 relativePath];
  v24 = [v23 pathComponents];

  v25 = [v24 count];
  v26 = 0;
  while (1)
  {
    v10 = v24;
    v27 = [v24 subarrayWithRange:0, v26];
    v14 = [NSString pathWithComponents:v27];

    v28 = [v87 relativePathsNotToRestore];
    v29 = [v28 containsObject:v14];

    if (v29)
    {
      if (v85)
      {
        goto LABEL_90;
      }

      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v86 absolutePath];
        *buf = 138412290;
        v103 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring: %@", buf, 0xCu);

        v71 = [v86 absolutePath];
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if (![(MBDriveRestoreEngine *)self isRestoringToSameDevice])
    {
      v30 = [v87 relativePathsNotToMigrate];
      v31 = [v30 containsObject:v14];

      if (v31)
      {
        if (v85)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v72 = [v86 absolutePath];
          *buf = 138412290;
          v103 = v72;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a migrate: %@", buf, 0xCu);

          v71 = [v86 absolutePath];
          goto LABEL_85;
        }

LABEL_89:

        goto LABEL_90;
      }
    }

    if (![(MBEngine *)self isDeviceTransferEngine])
    {
      v32 = [v87 relativePathsNotToRestoreFromLocal];
      v33 = [v32 containsObject:v14];

      if (v33)
      {
        if (v85)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v73 = [v86 absolutePath];
          *buf = 138412290;
          v103 = v73;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a local restore: %@", buf, 0xCu);

          v71 = [v86 absolutePath];
LABEL_85:
          _MBLog();
        }

        goto LABEL_89;
      }
    }

    if (v26 < v25 && [v86 isSymbolicLink])
    {
      v34 = [v10 objectAtIndexedSubscript:v26];
      if (([v34 isEqualToString:@".."] & 1) == 0)
      {

        goto LABEL_36;
      }

      v35 = [v87 shouldRestoreRelativeSymlinks];

      if ((v35 & 1) == 0)
      {
        break;
      }
    }

LABEL_36:

    ++v26;
    v24 = v10;
    if (v26 > v25)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v36 = [(MBDriveRestoreEngine *)self settingsContext];
      v14 = [v36 plugins];

      v37 = [v14 countByEnumeratingWithState:&v88 objects:v100 count:16];
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
          objc_enumerationMutation(v14);
        }

        v43 = *(*(&v88 + 1) + 8 * v41);
        if (objc_opt_respondsToSelector())
        {
          restorePolicy = self->_restorePolicy;
          v45 = [v86 absolutePath];
          LOBYTE(restorePolicy) = [v43 shouldRestoreContentWithPolicy:restorePolicy atPath:v45];

          if ((restorePolicy & 1) == 0)
          {
            break;
          }
        }

        if (v38 == ++v41)
        {
          v38 = [v14 countByEnumeratingWithState:&v88 objects:v100 count:16];
          v15 = 1;
          v40 = &selRef_progress;
          if (v38)
          {
            goto LABEL_39;
          }

          goto LABEL_78;
        }
      }

      if (v85)
      {
        v15 = 0;
LABEL_78:
        v9 = v86;
        goto LABEL_91;
      }

      v69 = MBGetDefaultLog();
      v9 = v86;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v74 = objc_opt_class();
        Name = class_getName(v74);
        v76 = [v86 absolutePath];
        *buf = 136446466;
        v103 = Name;
        v104 = 2112;
        v105 = v76;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);

        v77 = objc_opt_class();
        class_getName(v77);
        v81 = [v86 absolutePath];
        _MBLog();
      }

      goto LABEL_89;
    }
  }

  if (!v85)
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
  v6 = v87;
LABEL_92:

LABEL_93:
LABEL_94:

  return v15;
}

- (id)_restoreRegularFiles:(id)a3 size:(unint64_t)a4
{
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v149 = [v6 count];
    v150 = 2048;
    v151 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Downloading %lu files of size %{bytes}llu", buf, 0x16u);
    v103 = [v6 count];
    v104 = a4;
    _MBLog();
  }

  v126 = [NSMutableDictionary dictionaryWithCapacity:0];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v6;
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
        v13 = [(MBManifestLike *)self->_manifest databaseIndex:v103];
        v14 = [v12 fileID];
        v15 = [v13 flagsForFileID:v14 error:0];

        v16 = [(MBDriveRestoreEngine *)self settingsContext];
        v17 = v16;
        if ((v15 & 8) != 0)
        {
          [v16 driveSnapshotDir];
        }

        else
        {
          [v16 driveBackupDir];
        }
        v18 = ;

        v19 = [v12 nonRedirectedDomain];
        v20 = [v12 relativePath];
        v21 = [MBFileID fileIDWithDomain:v19 relativePath:v20];

        v22 = [(MBManifestLike *)self->_manifest properties];
        if ([v22 hasManifestDB])
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
  v159 = self;
  v26 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
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
          v63 = [v56 objectForKeyedSubscript:{v62, v103, v104}];
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
              v151 = v63;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Error downloading %@: %@", buf, 0x16u);
              v103 = v62;
              v104 = v63;
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
        v96 = [MBError errorWithCode:v66 format:v65, v103];
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
          v37 = [v36 domain];
          v38 = [v37 shouldDigest];

          if (v38)
          {
            v39 = [v36 digest];
            if (v39)
            {
              v40 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v36];
              v41 = +[MBDigest sha256];
              v132 = 0;
              v42 = [v41 digestForFileAtPath:v40 error:&v132];
              v123 = v132;
              if (v42)
              {
                v43 = [(std::__fs::filesystem::path *)v42 isEqualToData:v39];
                v44 = MBGetDefaultLog();
                v45 = v44;
                if (v43)
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    v46 = [v36 absolutePath];
                    *buf = 138412290;
                    v149 = v46;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Digest matches: %@", buf, 0xCu);

                    v103 = [v36 absolutePath];
                    _MBLog();
                  }
                }

                else
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v52 = [v36 absolutePath];
                    v53 = [v36 fileID];
                    *buf = 138413058;
                    v149 = v42;
                    v150 = 2112;
                    v151 = v39;
                    v152 = 2112;
                    v153 = v52;
                    v154 = 2112;
                    v155 = v53;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "File SHA256 digest does not match manifest (%@ vs %@): %@ (%@)", buf, 0x2Au);

                    v54 = [v36 absolutePath];
                    [v36 fileID];
                    v107 = v106 = v54;
                    v103 = v42;
                    v104 = v39;
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
                  v151 = v123;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to compute the SHA1 digest for %@: %@", buf, 0x16u);
                  v103 = v40;
                  v104 = v123;
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
                v48 = [v36 absolutePath];
                v49 = [v36 fileID];
                *buf = 138412546;
                v149 = v48;
                v150 = 2112;
                v151 = v49;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Digest missing from file: %@ (%@)", buf, 0x16u);

                v50 = [v36 absolutePath];
                [v36 fileID];
                v104 = v103 = v50;
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
    v96 = v55;
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
        v70 = [(std::__fs::filesystem::path *)v124 fileSystemRepresentation];
        v71 = [(MBRestorePolicy *)self->_restorePolicy restorePathForDriveRestorable:v69];
        restorePolicy = self->_restorePolicy;
        v73 = [v69 domain];
        v74 = [v69 relativePath];
        v75 = [(MBRestorePolicy *)restorePolicy validateRestoreDomain:v73 relativePath:v74];

        if (v75)
        {
          v30 = v75;
          v96 = v30;
          v29 = v113;
          v26 = v115;
          v97 = contexta;
          v87 = v71;
LABEL_105:

          objc_autoreleasePoolPop(v97);
          goto LABEL_106;
        }

        v76 = v71;
        v77 = [v71 fileSystemRepresentation];
        v78 = MBGetDefaultLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = [v69 description];
          v80 = [v69 fileID];
          *buf = 138412546;
          v149 = v79;
          v150 = 2112;
          v151 = v80;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "Restoring regular file: %@ (%@)", buf, 0x16u);

          v81 = [v69 description];
          v105 = [v69 fileID];
          _MBLog();
        }

        v82 = [MBRestorableOperation restore:v69 regularFileAtPath:v124 settingAttributes:1];
        if (v82)
        {
          v30 = v82;
          v96 = v30;
          v29 = v113;
          v26 = v115;
          v97 = contexta;
          v87 = v76;
          goto LABEL_105;
        }

        v84 = v70;
        rename(v70, v77, v83);
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
              v151 = v76;
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
                v151 = v77;
                v152 = 1024;
                LODWORD(v153) = v86;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog();
              }

              v99 = NSStringFromSelector(a2);
              v96 = [MBError posixErrorWithCode:v86 path:v76 format:@"%@ rename error", v99];

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
              v96 = [MBError errorWithCode:102 error:v91 path:v76 format:@"Error removing directory item while restoring regular file"];
LABEL_101:
              v29 = v113;
              v26 = v115;
              v97 = contexta;
              goto LABEL_105;
            }

            rename(v84, v77, v92);
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
                v151 = v77;
                v152 = 1024;
                LODWORD(v153) = 21;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog();
              }

              v101 = NSStringFromSelector(a2);
              v96 = [MBError posixErrorWithCode:21 path:v87 format:@"%@ rename error", v101];

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
          v151 = v77;
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

  v96 = 0;
  v29 = v113;
  v26 = v115;
LABEL_106:

  return v96;
}

- (id)_annotate
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MBDriveRestoreEngine *)self settingsContext];
  v5 = [v4 shouldRemoveItemsNotRestored];

  v6 = MBGetDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Annotating", buf, 2u);
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [(MBEngine *)self persona];
    engineType = self->_engineType;
    v12 = [(MBEngine *)self backupPolicy];
    v13 = [(MBDriveRestoreEngine *)self settingsContext];
    v6 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", v10, engineType, v12, [v13 shouldRestoreSystemFiles], -[MBDriveRestoreEngine encrypted](self, "encrypted"));

    v14 = [(MBDomainManager *)self->super._domainManager allDomains];
    v15 = [v6 annotateDomains:v14];

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
  v2 = [(MBEngine *)self persona];
  v6 = 0;
  [v2 finalizeRestoreDirectoriesWithError:&v6];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)fileForTemporaryPath:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [MBFileID fileIDWithString:v6];

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