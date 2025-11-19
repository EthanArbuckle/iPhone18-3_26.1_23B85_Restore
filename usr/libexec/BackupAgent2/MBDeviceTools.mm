@interface MBDeviceTools
+ (id)toolsWithSettingsContext:(id)a3 error:(id *)a4;
- (BOOL)_extractWithManifest:(id)a3 file:(id)a4 keybag:(id)a5 toDrivePath:(id)a6 error:(id *)a7;
- (BOOL)extractWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5;
- (BOOL)unbackWithError:(id *)a3;
- (MBDeviceTools)initWithSettingsContext:(id)a3 error:(id *)a4;
- (id)infoWithError:(id *)a3;
- (id)listWithError:(id *)a3;
@end

@implementation MBDeviceTools

+ (id)toolsWithSettingsContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[MBDeviceTools alloc] initWithSettingsContext:v5 error:a4];

  return v6;
}

- (MBDeviceTools)initWithSettingsContext:(id)a3 error:(id *)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = MBDeviceTools;
  v8 = [(MBDeviceTools *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingsContext, a3);
    v10 = [[MBToolsDomainManager alloc] initWithTools:v9 error:a4];
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

- (BOOL)_extractWithManifest:(id)a3 file:(id)a4 keybag:(id)a5 toDrivePath:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [a3 properties];
  LOBYTE(a3) = [v15 hasManifestDB];
  v16 = [v12 fileID];
  v17 = v16;
  if (a3)
  {
    [v16 filenameWithPrefix];
  }

  else
  {
    [v16 filename];
  }
  v18 = ;

  v19 = [(MBDriveSettingsContext *)self->_settingsContext driveBackupDir];
  v20 = [v19 stringByAppendingPathComponent:v18];

  if (v13)
  {
    v21 = sub_100028F5C();
    v22 = [v12 encryptionKey];
    if (v22)
    {
      v39 = @"FileHandleFactory";
      v40 = [[MBToolsFileHandleFactory alloc] initWithKeyBag:v13 key:v22];
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

      v24 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      v32 = a7;
      v25 = [v24 downloadFileAtPath:v20 toPath:v21 options:v34 error:a7];

      if (v25)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Uploading unencrypted file to %@", buf, 0xCu);
          _MBLog();
        }

        v27 = [(MBDriveSettingsContext *)self->_settingsContext drive];
        v28 = [v27 uploadFileAtPath:v21 toPath:v14 options:0 error:v32];

        v29 = +[NSFileManager defaultManager];
        [v29 removeItemAtPath:v21 error:0];
      }

      else
      {
        v28 = 0;
      }
    }

    else if (a7)
    {
      [MBError errorWithCode:205 format:@"Encryption key not found"];
      *a7 = v28 = 0;
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
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Copying %@ to %@", buf, 0x16u);
      _MBLog();
    }

    v21 = [(MBDriveSettingsContext *)self->_settingsContext drive];
    v28 = [v21 copyItemAtPath:v20 toPath:v14 options:0 error:a7];
  }

  return v28;
}

- (BOOL)extractWithDomainName:(id)a3 relativePath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Extracting %@-%@", buf, 0x16u);
    v31 = v8;
    v32 = v9;
    _MBLog();
  }

  v11 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:a5];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

  [v11 buildIndexFromDatabaseIfNeeded];
  v13 = [v12 properties];
  v14 = [v13 encrypted];

  if (!v14)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v15 = [v12 properties];
  v16 = [v15 keybagData];

  if (v16)
  {
    v17 = [(MBDriveSettingsContext *)self->_settingsContext password];
    v18 = [MBKeyBag unlockedKeyBagWithData:v16 password:v17 error:a5];

    if (!v18)
    {
      goto LABEL_24;
    }

LABEL_9:
    v19 = [(MBDomainManager *)self->_domainManager domainForName:v8, v31, v32];
    if (v19)
    {
      if (MBIsValidRelativePath())
      {
        v34 = [MBFileID fileIDWithDomain:v19 relativePath:v9];
        v20 = [v12 fetchFileWithID:v34 error:a5];
        v21 = v20;
        if (v20)
        {
          if ([v20 isDirectory])
          {
            v33 = [(MBDriveSettingsContext *)self->_settingsContext drive];
            v22 = [v21 relativePath];
            v23 = [v22 lastPathComponent];
            [v33 removeItemAtPath:v23 options:0 error:0];

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
            v37 = self;
            v40 = buf;
            v38 = v12;
            v39 = v18;
            v24 = [v38 enumerateFiles:v35 includeUninstalled:1];
            v25 = *(*&buf[8] + 40);
            v26 = v25 == 0;
            if (a5 && v25)
            {
              *a5 = v25;
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_36;
          }

          if ([v21 isRegularFile])
          {
            v29 = [v9 lastPathComponent];
            v26 = [(MBDeviceTools *)self _extractWithManifest:v12 file:v21 keybag:v18 toDrivePath:v29 error:a5];

LABEL_36:
            goto LABEL_37;
          }

          if (a5)
          {
            v27 = [MBError errorWithCode:4 format:@"Not a regular file or directory"];
            goto LABEL_34;
          }
        }

        else if (a5)
        {
          v27 = [MBError errorWithCode:4 format:@"File not found in manifest"];
LABEL_34:
          v26 = 0;
          *a5 = v27;
          goto LABEL_36;
        }

        v26 = 0;
        goto LABEL_36;
      }

      if (a5)
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
        *a5 = [MBError errorWithCode:1 format:@"Path to extract must be relative to domain root (%@)", v28];
      }
    }

    else if (a5)
    {
      [MBError errorWithCode:4 format:@"Domain not found"];
      *a5 = v26 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v26 = 0;
    goto LABEL_37;
  }

  if (!a5)
  {
LABEL_24:
    v26 = 0;
    goto LABEL_38;
  }

  [MBError errorWithCode:205 format:@"Keybag data not found"];
  *a5 = v26 = 0;
LABEL_38:

  return v26;
}

- (id)infoWithError:(id *)a3
{
  v23 = [(MBBackupHelper *)self->_backupHelper readStatusWithError:?];
  if (v23)
  {
    v5 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:a3];
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

      v8 = [v22 properties];
      v9 = [v8 description];
      [v24 appendFormat:@"%@\n", v9];

      [v24 appendString:@"\n"];
      [v24 appendString:@" Count   Size (B) Domain name\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [v31[5] allKeys];
      v11 = [v10 sortedArrayUsingSelector:"compare:"];

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
            v18 = [v17 longValue];

            v19 = [v16 objectAtIndexedSubscript:1];
            v20 = [v19 longLongValue];

            [v24 appendFormat:@"  %4ld %10lld %@\n", v18, v20, v15];
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

- (id)listWithError:(id *)a3
{
  if (!a3)
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
    *a3 = [v4 enumerateFiles:v13];
    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)unbackWithError:(id *)a3
{
  v5 = [(MBDriveSettingsContext *)self->_settingsContext sourceIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(MBDriveSettingsContext *)self->_settingsContext targetIdentifier];
  }

  v8 = v7;

  v9 = [@"_unback_" stringByAppendingPathComponent:v8];
  v32 = [NSMutableDictionary dictionaryWithCapacity:0];
  v10 = [(MBBackupHelper *)self->_backupHelper readBackupManifestWithError:a3];
  v11 = v10;
  if (v10)
  {
    [v10 buildIndexFromDatabaseIfNeeded];
    v12 = [v11 properties];
    v13 = [v12 encrypted];

    if (v13)
    {
      v14 = [v11 properties];
      v15 = [v14 keybagData];

      if (!v15)
      {
        if (!a3)
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
        *a3 = v19 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v16 = [(MBDriveSettingsContext *)self->_settingsContext password];
      v17 = [MBKeyBag unlockedKeyBagWithData:v15 password:v16 error:a3];

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

    v21 = [(MBDriveSettingsContext *)self->_settingsContext drive];
    v42 = 0;
    v22 = [v21 createDirectoryAtPath:@"_unback_" options:0 error:&v42];
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

      v24 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      v41 = v18;
      v25 = [v24 createDirectoryAtPath:v9 options:0 error:&v41];
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
        v36 = self;
        p_buf = &buf;
        v18 = v26;
        v37 = v18;
        v38 = v11;
        v17 = v17;
        v39 = v17;
        v27 = [v38 enumerateFiles:v33 includeUninstalled:1];
        v28 = *(*(&buf + 1) + 40);
        v19 = v28 == 0;
        if (a3 && v28)
        {
          *a3 = v28;
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        if (a3)
        {
          v30 = v26;
          v19 = 0;
          *a3 = v26;
        }

        else
        {
          v19 = 0;
        }

        v18 = v26;
      }

      goto LABEL_34;
    }

    if (!a3)
    {
      goto LABEL_31;
    }

    v29 = v18;
    v19 = 0;
    *a3 = v18;
    goto LABEL_34;
  }

  v18 = 0;
  v19 = 0;
LABEL_35:

  return v19;
}

@end