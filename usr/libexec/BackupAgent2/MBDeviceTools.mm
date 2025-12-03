@interface MBDeviceTools
+ (id)toolsWithSettingsContext:(id)context error:(id *)error;
- (BOOL)_extractWithManifest:(id)manifest file:(id)file keybag:(id)keybag toDrivePath:(id)path error:(id *)error;
- (BOOL)extractWithDomainName:(id)name relativePath:(id)path error:(id *)error;
- (BOOL)unbackWithError:(id *)error;
- (MBDeviceTools)initWithSettingsContext:(id)context error:(id *)error;
- (id)infoWithError:(id *)error;
- (id)listWithError:(id *)error;
@end

@implementation MBDeviceTools

+ (id)toolsWithSettingsContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = [[MBDeviceTools alloc] initWithSettingsContext:contextCopy error:error];

  return v6;
}

- (MBDeviceTools)initWithSettingsContext:(id)context error:(id *)error
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = MBDeviceTools;
  v8 = [(MBDeviceTools *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingsContext, context);
    v10 = [[MBToolsDomainManager alloc] initWithTools:v9 error:error];
    domainManager = v9->_domainManager;
    v9->_domainManager = &v10->super;

    if (v9->_domainManager)
    {
      v12 = [[MBBackupHelper alloc] initWithSettingsContext:v9->_settingsContext domainManager:v9->_domainManager];
      backupHelper = v9->_backupHelper;
      v9->_backupHelper = v12;
    }

    else
    {
      backupHelper = v9;
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)_extractWithManifest:(id)manifest file:(id)file keybag:(id)keybag toDrivePath:(id)path error:(id *)error
{
  fileCopy = file;
  keybagCopy = keybag;
  pathCopy = path;
  properties = [manifest properties];
  LOBYTE(manifest) = [properties hasManifestDB];
  fileID = [fileCopy fileID];
  v17 = fileID;
  if (manifest)
  {
    [fileID filenameWithPrefix];
  }

  else
  {
    [fileID filename];
  }
  v18 = ;

  driveBackupDir = [(MBDriveSettingsContext *)self->_settingsContext driveBackupDir];
  v20 = [driveBackupDir stringByAppendingPathComponent:v18];

  if (keybagCopy)
  {
    drive3 = sub_100028F5C();
    encryptionKey = [fileCopy encryptionKey];
    if (encryptionKey)
    {
      v39 = @"FileHandleFactory";
      v40 = [[MBToolsFileHandleFactory alloc] initWithKeyBag:keybagCopy key:encryptionKey];
      v33 = v40;
      v34 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Downloading and decrypting encrypted file from %@", buf, 0xCu);
        _MBLog();
      }

      drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
      errorCopy = error;
      v25 = [drive downloadFileAtPath:v20 toPath:drive3 options:v34 error:error];

      if (v25)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = pathCopy;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Uploading unencrypted file to %@", buf, 0xCu);
          _MBLog();
        }

        drive2 = [(MBDriveSettingsContext *)self->_settingsContext drive];
        v28 = [drive2 uploadFileAtPath:drive3 toPath:pathCopy options:0 error:errorCopy];

        v29 = +[NSFileManager defaultManager];
        [v29 removeItemAtPath:drive3 error:0];
      }

      else
      {
        v28 = 0;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:205 format:@"Encryption key not found"];
      *error = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = pathCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Copying %@ to %@", buf, 0x16u);
      _MBLog();
    }

    drive3 = [(MBDriveSettingsContext *)self->_settingsContext drive];
    v28 = [drive3 copyItemAtPath:v20 toPath:pathCopy options:0 error:error];
  }

  return v28;
}

- (BOOL)extractWithDomainName:(id)name relativePath:(id)path error:(id *)error
{
  nameCopy = name;
  pathCopy = path;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 2112;
    *&buf[14] = pathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Extracting %@-%@", buf, 0x16u);
    v31 = nameCopy;
    v32 = pathCopy;
    _MBLog();
  }

  v11 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:error];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

  [v11 buildIndexFromDatabaseIfNeeded];
  properties = [v12 properties];
  encrypted = [properties encrypted];

  if (!encrypted)
  {
    v18 = 0;
    goto LABEL_9;
  }

  properties2 = [v12 properties];
  keybagData = [properties2 keybagData];

  if (keybagData)
  {
    password = [(MBDriveSettingsContext *)self->_settingsContext password];
    v18 = [MBKeyBag unlockedKeyBagWithData:keybagData password:password error:error];

    if (!v18)
    {
      goto LABEL_24;
    }

LABEL_9:
    v19 = [(MBDomainManager *)self->_domainManager domainForName:nameCopy, v31, v32];
    if (v19)
    {
      if (MBIsValidRelativePath())
      {
        v34 = [MBFileID fileIDWithDomain:v19 relativePath:pathCopy];
        v20 = [v12 fetchFileWithID:v34 error:error];
        v21 = v20;
        if (v20)
        {
          if ([v20 isDirectory])
          {
            drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
            relativePath = [v21 relativePath];
            lastPathComponent = [relativePath lastPathComponent];
            [drive removeItemAtPath:lastPathComponent options:0 error:0];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v42 = sub_100067650;
            v43 = sub_100067660;
            v44 = 0;
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100067668;
            v35[3] = &unk_1000FE2A0;
            v36 = v21;
            selfCopy = self;
            v40 = buf;
            v38 = v12;
            v39 = v18;
            v24 = [v38 enumerateFiles:v35 includeUninstalled:1];
            v25 = *(*&buf[8] + 40);
            v26 = v25 == 0;
            if (error && v25)
            {
              *error = v25;
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_36;
          }

          if ([v21 isRegularFile])
          {
            lastPathComponent2 = [pathCopy lastPathComponent];
            v26 = [(MBDeviceTools *)self _extractWithManifest:v12 file:v21 keybag:v18 toDrivePath:lastPathComponent2 error:error];

LABEL_36:
            goto LABEL_37;
          }

          if (error)
          {
            v27 = [MBError errorWithCode:4 format:@"Not a regular file or directory"];
            goto LABEL_34;
          }
        }

        else if (error)
        {
          v27 = [MBError errorWithCode:4 format:@"File not found in manifest"];
LABEL_34:
          v26 = 0;
          *error = v27;
          goto LABEL_36;
        }

        v26 = 0;
        goto LABEL_36;
      }

      if (error)
      {
        if ([v19 isUninstalledAppDomain])
        {
          [v19 name];
        }

        else
        {
          [v19 rootPath];
        }
        v28 = ;
        *error = [MBError errorWithCode:1 format:@"Path to extract must be relative to domain root (%@)", v28];
      }
    }

    else if (error)
    {
      [MBError errorWithCode:4 format:@"Domain not found"];
      *error = v26 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v26 = 0;
    goto LABEL_37;
  }

  if (!error)
  {
LABEL_24:
    v26 = 0;
    goto LABEL_38;
  }

  [MBError errorWithCode:205 format:@"Keybag data not found"];
  *error = v26 = 0;
LABEL_38:

  return v26;
}

- (id)infoWithError:(id *)error
{
  v23 = [(MBBackupHelper *)self->_backupHelper readStatusWithError:?];
  if (v23)
  {
    v5 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:error];
    v22 = v5;
    if (v5)
    {
      [v5 buildIndexFromDatabaseIfNeeded];
      v24 = [NSMutableString stringWithCapacity:0x4000];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = sub_100067650;
      v34 = sub_100067660;
      v35 = [NSMutableDictionary dictionaryWithCapacity:0];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100067D20;
      v29[3] = &unk_1000FE2C8;
      v29[4] = &v40;
      v29[5] = &v36;
      v29[6] = &v30;
      v6 = [v22 enumerateFiles:v29 includeUninstalled:1];
      v7 = [v23 description];
      [v24 appendFormat:@"%@\n", v7];

      properties = [v22 properties];
      v9 = [properties description];
      [v24 appendFormat:@"%@\n", v9];

      [v24 appendString:@"\n"];
      [v24 appendString:@" Count   Size (B) Domain name\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      allKeys = [v31[5] allKeys];
      v11 = [allKeys sortedArrayUsingSelector:"compare:"];

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v44 count:16];
      if (v12)
      {
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v31[5] objectForKeyedSubscript:v15];
            v17 = [v16 objectAtIndexedSubscript:0];
            longValue = [v17 longValue];

            v19 = [v16 objectAtIndexedSubscript:1];
            longLongValue = [v19 longLongValue];

            [v24 appendFormat:@"  %4ld %10lld %@\n", longValue, longLongValue, v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v25 objects:v44 count:16];
        }

        while (v12);
      }

      [v24 appendFormat:@"  %4ld %10lld %@\n", v41[3], v37[3], @"Total"];
      _Block_object_dispose(&v30, 8);

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v40, 8);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)listWithError:(id *)error
{
  if (!error)
  {
    sub_10009F1D0();
  }

  v4 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:?];
  if (v4)
  {
    v5 = [NSMutableString stringWithCapacity:0x4000];
    v6 = [NSString stringWithFormat:@"%-41s %-41s %7s %8s %4s %4s %-20s %-20s %-20s %11s %6s %s %s %s %s\n", "ID, ", "Digest, ", "Mode, ", "Inode, ", "UID, ", "GID, ", "Last modified, ", "Last status change, ", "Birth, ", "Size, ", "Class, ", "Domain, ", "Relative path, ", "Target, ", "Extended attributes"];
    [v5 appendString:v6];
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setFormatterBehavior:1040];
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100068134;
    v13[3] = &unk_1000FE2F0;
    v14 = v7;
    v8 = v5;
    v15 = v8;
    v9 = v7;
    *error = [v4 enumerateFiles:v13];
    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)unbackWithError:(id *)error
{
  sourceIdentifier = [(MBDriveSettingsContext *)self->_settingsContext sourceIdentifier];
  v6 = sourceIdentifier;
  if (sourceIdentifier)
  {
    targetIdentifier = sourceIdentifier;
  }

  else
  {
    targetIdentifier = [(MBDriveSettingsContext *)self->_settingsContext targetIdentifier];
  }

  v8 = targetIdentifier;

  v9 = [@"_unback_" stringByAppendingPathComponent:v8];
  v32 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:error];
  v11 = v10;
  if (v10)
  {
    [v10 buildIndexFromDatabaseIfNeeded];
    properties = [v11 properties];
    encrypted = [properties encrypted];

    if (encrypted)
    {
      properties2 = [v11 properties];
      keybagData = [properties2 keybagData];

      if (!keybagData)
      {
        if (!error)
        {
          v17 = 0;
LABEL_30:
          v18 = 0;
LABEL_31:
          v19 = 0;
          goto LABEL_34;
        }

        [MBError errorWithCode:205 format:@"Keybag data not found"];
        v17 = 0;
        v18 = 0;
        *error = v19 = 0;
LABEL_34:

        goto LABEL_35;
      }

      password = [(MBDriveSettingsContext *)self->_settingsContext password];
      v17 = [MBKeyBag unlockedKeyBagWithData:keybagData password:password error:error];

      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"_unback_";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Creating directory: %@", &buf, 0xCu);
      _MBLog();
    }

    drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
    v42 = 0;
    v22 = [drive createDirectoryAtPath:@"_unback_" options:0 error:&v42];
    v18 = v42;

    if ((v22 & 1) != 0 || ([MBError isError:v18 withCode:3]& 1) != 0)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Creating directory: %@", &buf, 0xCu);
        _MBLog();
      }

      drive2 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      v41 = v18;
      v25 = [drive2 createDirectoryAtPath:v9 options:0 error:&v41];
      v26 = v41;

      if ((v25 & 1) != 0 || ([MBError isError:v26 withCode:3]& 1) != 0)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v44 = 0x3032000000;
        v45 = sub_100067650;
        v46 = sub_100067660;
        v47 = 0;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100068944;
        v33[3] = &unk_1000FE318;
        v34 = v9;
        v35 = v32;
        selfCopy = self;
        p_buf = &buf;
        v18 = v26;
        v37 = v18;
        v38 = v11;
        v17 = v17;
        v39 = v17;
        v27 = [v38 enumerateFiles:v33 includeUninstalled:1];
        v28 = *(*(&buf + 1) + 40);
        v19 = v28 == 0;
        if (error && v28)
        {
          *error = v28;
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        if (error)
        {
          v30 = v26;
          v19 = 0;
          *error = v26;
        }

        else
        {
          v19 = 0;
        }

        v18 = v26;
      }

      goto LABEL_34;
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v29 = v18;
    v19 = 0;
    *error = v18;
    goto LABEL_34;
  }

  v18 = 0;
  v19 = 0;
LABEL_35:

  return v19;
}

@end