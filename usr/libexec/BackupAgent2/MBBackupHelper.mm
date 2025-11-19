@interface MBBackupHelper
+ (id)driveReadError:(id)a3 description:(id)a4;
+ (id)driveWriteError:(id)a3 description:(id)a4;
+ (id)errorForException:(id)a3;
- (MBBackupHelper)initWithSettingsContext:(id)a3 domainManager:(id)a4;
- (id)readBackupDatabaseWithError:(id *)a3;
- (id)readBackupManifestWithError:(id *)a3;
- (id)readBackupPropertiesWithError:(id *)a3;
- (id)readSnapshotDatabaseWithError:(id *)a3;
- (id)readSnapshotManifestDatabaseWithError:(id *)a3;
- (id)readSnapshotManifestWithError:(id *)a3;
- (id)readSnapshotPropertiesWithError:(id *)a3;
- (id)readStatusWithError:(id *)a3;
@end

@implementation MBBackupHelper

+ (id)driveReadError:(id)a3 description:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:@"MBErrorDomain"];

  if (!v8)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 domain];
      *buf = 138412546;
      v18 = @"MBErrorDomain";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Drive returned error not in domain %@: %@", buf, 0x16u);

      v16 = [v5 domain];
      _MBLog();
    }

    goto LABEL_10;
  }

  v9 = [v5 code];
  v10 = 103;
  if (v9 <= 10)
  {
    if (v9 == 2)
    {
      goto LABEL_14;
    }

    if (v9 != 4)
    {
LABEL_17:
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = [v5 code];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Drive returned unexpected error code: %{MobileBackup:MBError.code}ld", buf, 0xCu);
        [v5 code];
        _MBLog();
      }

LABEL_10:
      v10 = 103;
      goto LABEL_14;
    }
  }

  else if ((v9 - 11) >= 2)
  {
    if (v9 == 100)
    {
      goto LABEL_14;
    }

    if (v9 == 203)
    {
      v10 = 203;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v10 = 205;
LABEL_14:
  v13 = [MBError errorWithCode:v10 error:v5 format:@"%@", v6, v16];

  return v13;
}

+ (id)driveWriteError:(id)a3 description:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:@"MBErrorDomain"];

  if (!v8)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 domain];
      *buf = 138412546;
      v18 = @"MBErrorDomain";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Drive returned error not in domain %@: %@", buf, 0x16u);

      v16 = [v5 domain];
      _MBLog();
    }

    goto LABEL_11;
  }

  v9 = [v5 code];
  if ((v9 - 3) < 2)
  {
    v10 = 205;
  }

  else
  {
    v10 = 104;
    if (v9 != 2 && v9 != 100)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = [v5 code];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Drive returned unexpected error code: %{MobileBackup:MBError.code}ld", buf, 0xCu);
        [v5 code];
        _MBLog();
      }

LABEL_11:
      v10 = 104;
    }
  }

  v14 = [MBError errorWithCode:v10 error:v5 format:@"%@", v6, v16];

  return v14;
}

+ (id)errorForException:(id)a3
{
  v3 = a3;
  v4 = [v3 error];
  v5 = [v4 code];

  if (v5 <= 10)
  {
    v6 = 1;
    if (v5 == 1 || v5 == 10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v5 - 11) < 2)
    {
      v6 = 205;
      goto LABEL_12;
    }

    if (v5 == 100)
    {
      v6 = 102;
      goto LABEL_12;
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 error];
    *buf = 134217984;
    v16 = [v8 code];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected error code from exception: %{MobileBackup:MBError.code}ld", buf, 0xCu);

    v9 = [v3 error];
    v14 = [v9 code];
    _MBLog();
  }

  v6 = 1;
LABEL_12:
  v10 = [v3 error];
  v11 = [v10 localizedDescription];
  v12 = [MBError errorWithCode:v6 description:v11];

  return v12;
}

- (MBBackupHelper)initWithSettingsContext:(id)a3 domainManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBBackupHelper;
  v9 = [(MBBackupHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settingsContext, a3);
    objc_storeStrong(&v10->_domainManager, a4);
  }

  return v10;
}

- (id)readStatusWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading status", buf, 2u);
    _MBLog();
  }

  v6 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v7 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupStatusPath];
  v8 = [MBStatus statusWithDrive:v6 path:v7 error:a3];

  if (v8)
  {
    v9 = [v8 isVersionAmbiguous];
    v10 = MBGetDefaultLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Status version is ambiguous", buf, 2u);
        _MBLog();
      }

      v12 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      v13 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath];
      v22 = 0;
      v14 = [v12 propertyListAtPath:v13 options:0 error:&v22];
      v15 = v22;

      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"Version"];
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Properties version is %@", buf, 0xCu);
          _MBLog();
        }

        if (!v16)
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Overwriting status version to 1.0", buf, 2u);
            _MBLog();
          }

          [v8 setVersion:1.0];
        }

        v19 = v8;
      }

      else if ([MBError isError:v15 withCode:4])
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No manifest properties found", buf, 2u);
          _MBLog();
        }

        v19 = v8;
      }

      else if (a3)
      {
        [MBBackupHelper driveReadError:v15 description:@"Error reading backup properties"];
        *a3 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Backup status: %@", buf, 0xCu);
        _MBLog();
      }

      v19 = v8;
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  return v19;
}

- (id)readBackupPropertiesWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading backup properties", buf, 2u);
    _MBLog();
  }

  v6 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v7 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath];
  v8 = [MBDriveProperties propertiesWithDrive:v6 path:v7 error:a3];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Backup properties: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (a3)
  {
    *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading backup properties"];
  }

  return v8;
}

- (id)readBackupDatabaseWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading backup database", buf, 2u);
    _MBLog();
  }

  v6 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v7 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupDatabasePath];
  v8 = [MBDatabase databaseWithDrive:v6 path:v7 domainManager:self->_domainManager error:a3];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Backup database: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (a3)
  {
    *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading backup database"];
  }

  return v8;
}

- (id)readBackupManifestWithError:(id *)a3
{
  v5 = [(MBBackupHelper *)self readBackupPropertiesWithError:?];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_45;
  }

  if (![v5 hasManifestDB])
  {
    v24 = [(MBBackupHelper *)self readBackupDatabaseWithError:a3];
    if (v24)
    {
      v25 = v24;
      v22 = [MBManifest manifestWithProperties:v6 database:v24 databaseIndex:0];

      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (![v6 encrypted])
  {
    goto LABEL_11;
  }

  v7 = [(MBDriveSettingsContext *)self->_settingsContext keybag];

  if (!v7)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Decoding and unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    v27 = [v6 keybagData];
    if (v27)
    {
      v28 = [(MBDriveSettingsContext *)self->_settingsContext password];
      v39 = 0;
      v29 = [MBKeyBag unlockedKeyBagWithData:v27 password:v28 error:&v39];
      v30 = v39;
      [(MBDriveSettingsContext *)self->_settingsContext setKeybag:v29];

      v31 = [(MBDriveSettingsContext *)self->_settingsContext keybag];

      if (v31)
      {

        goto LABEL_5;
      }

      if ([MBError isError:v30 withCode:207])
      {
        if (a3)
        {
          v35 = @"Invalid password when restoring encrypted backup";
          v36 = 207;
LABEL_42:
          v32 = [MBError errorWithCode:v36 error:v30 format:v35];
          goto LABEL_43;
        }
      }

      else if (a3)
      {
        v35 = @"Error decoding keybag";
        v36 = 1;
        goto LABEL_42;
      }
    }

    else
    {
      if (a3)
      {
        v32 = [MBError errorWithCode:205 format:@"No keybag in manifest"];
        v30 = 0;
LABEL_43:
        *a3 = v32;
        goto LABEL_44;
      }

      v30 = 0;
    }

LABEL_44:

    goto LABEL_45;
  }

LABEL_5:
  v8 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  v11 = [v10 isUnlocked];

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unlocking backup keybag from manifest", buf, 2u);
    _MBLog();
  }

  v13 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  v14 = [(MBDriveSettingsContext *)self->_settingsContext password];
  v38 = 0;
  v15 = [v13 unlockWithPassword:v14 error:&v38];
  v16 = v38;

  if ((v15 & 1) == 0)
  {
    if ([MBError isError:v16 withCode:207])
    {
      if (a3)
      {
        v33 = @"Invalid password when restoring encrypted backup";
        v34 = 207;
LABEL_37:
        *a3 = [MBError errorWithCode:v34 error:v16 format:v33];
      }
    }

    else if (a3)
    {
      v33 = @"Error decoding keybag";
      v34 = 1;
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_11:
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Fetching new format backup manifest", buf, 2u);
    _MBLog();
  }

  v18 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v19 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupManifestDatabasePath];
  domainManager = self->_domainManager;
  v21 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  v22 = [MBManifestDB manifestDBWithDrive:v18 sourcePath:v19 properties:v6 domainManager:domainManager keybag:v21 error:a3];

  if (!v22)
  {
    if (a3)
    {
      *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading backup manifest database"];
    }

    goto LABEL_20;
  }

  if ([v22 openWithError:a3])
  {
    v23 = v22;
LABEL_20:

    goto LABEL_46;
  }

LABEL_45:
  v22 = 0;
LABEL_46:

  return v22;
}

- (id)readSnapshotPropertiesWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot properties", buf, 2u);
    _MBLog();
  }

  v6 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v7 = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotPropertiesPath];
  v8 = [MBDriveProperties propertiesWithDrive:v6 path:v7 error:a3];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Snapshot properties: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (a3)
  {
    *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading snapshot properties"];
  }

  return v8;
}

- (id)readSnapshotDatabaseWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot database", buf, 2u);
    _MBLog();
  }

  v6 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v7 = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotDatabasePath];
  v8 = [MBDatabase databaseWithDrive:v6 path:v7 domainManager:self->_domainManager error:a3];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Snapshot database: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (a3)
  {
    *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading snapshot database"];
  }

  return v8;
}

- (id)readSnapshotManifestDatabaseWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot manifest database", buf, 2u);
    _MBLog();
  }

  v6 = [(MBBackupHelper *)self readSnapshotPropertiesWithError:a3];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v7 = [(MBDriveSettingsContext *)self->_settingsContext drive];
  v8 = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotManifestDatabasePath];
  v9 = [MBManifestDB manifestDBWithDrive:v7 sourcePath:v8 properties:v6 domainManager:self->_domainManager error:a3];

  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Snapshot manifest database: %@", buf, 0xCu);
      _MBLog();
    }

    if (![v9 openWithError:a3])
    {
      v12 = 0;
      goto LABEL_14;
    }

    v11 = v9;
    goto LABEL_12;
  }

  v12 = 0;
  if (a3)
  {
    *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading snapshot manifest database"];
LABEL_12:
    v12 = v9;
  }

LABEL_14:

LABEL_15:

  return v12;
}

- (id)readSnapshotManifestWithError:(id *)a3
{
  v5 = [(MBBackupHelper *)self readSnapshotPropertiesWithError:?];
  v6 = v5;
  if (v5)
  {
    if ([v5 hasManifestDB])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching new format snapshot manifest", v15, 2u);
        _MBLog();
      }

      v8 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      v9 = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotManifestDatabasePath];
      v10 = [MBManifestDB manifestDBWithDrive:v8 sourcePath:v9 properties:v6 domainManager:self->_domainManager error:a3];

      if (!v10)
      {
        if (a3)
        {
          *a3 = [MBBackupHelper driveReadError:*a3 description:@"Error reading snapshot manifest database"];
        }

        goto LABEL_12;
      }

      if ([v10 openWithError:a3])
      {
        v11 = v10;
LABEL_12:

        goto LABEL_15;
      }
    }

    else
    {
      v12 = [(MBBackupHelper *)self readSnapshotDatabaseWithError:a3];
      if (v12)
      {
        v13 = v12;
        v10 = [MBManifest manifestWithProperties:v6 database:v12 databaseIndex:0];

        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

@end