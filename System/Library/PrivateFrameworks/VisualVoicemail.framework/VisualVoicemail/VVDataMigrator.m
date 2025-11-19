@interface VVDataMigrator
+ (id)carrierServiceName;
- (void)createFoldersIfNecessary;
- (void)performIMAPFilePathMigration;
@end

@implementation VVDataMigrator

+ (id)carrierServiceName
{
  CFPreferencesAppSynchronize(@"com.apple.voicemail.datamigration");
  v2 = CFPreferencesCopyAppValue(@"DataMigrationStatus", @"com.apple.voicemail.datamigration");

  return v2;
}

- (void)createFoldersIfNecessary
{
  v2 = [(VVDataMigrator *)self accountDir];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && v8)
    {
      v9 = vm_vmd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10009E334(v3, v8, v9);
      }
    }
  }
}

- (void)performIMAPFilePathMigration
{
  v3 = sub_10008546C();
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];
  v5 = [v4 path];

  v6 = [(VVDataMigrator *)self accountDir];
  v7 = [v6 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];
  v8 = [v7 path];

  v9 = +[NSFileManager defaultManager];
  LODWORD(v6) = [v9 fileExistsAtPath:v8];

  if (v6)
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      v11 = "Determined that file exists at destination path: %@, skipping migration";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v5];

  v10 = vm_vmd_log();
  v14 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined that file exists at fromFilePath: %@", buf, 0xCu);
    }

    v10 = [[NSDictionary alloc] initWithContentsOfFile:v5];
    v52 = [v10 objectForKeyedSubscript:@"AccountSettings"];
    v15 = [v52 objectForKeyedSubscript:@"name"];
    v16 = *(&INIT_DECOMPOSED_PHONE_NUMBER + 1);
    *buf = *&INIT_DECOMPOSED_PHONE_NUMBER;
    v63 = v16;
    v17 = *(&INIT_DECOMPOSED_PHONE_NUMBER + 3);
    *numBytes = *(&INIT_DECOMPOSED_PHONE_NUMBER + 2);
    *v65 = v17;
    v18 = [(VVDataMigrator *)self normalizedPhoneNumber];
    [v18 cStringUsingEncoding:1];
    v19 = [(VVDataMigrator *)self isoCountryCode];
    PNDecomposeForCountry();

    v20 = CFStringCreateWithBytes(kCFAllocatorDefault, numBytes[0], LODWORD(numBytes[1]), 0x8000100u, 0);
    v21 = CFStringCreateWithBytes(kCFAllocatorDefault, v65[0], LODWORD(v65[1]), 0x8000100u, 0);
    v22 = [NSString stringWithFormat:@"%@%@", v20, v21];
    v23 = vm_vmd_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 138412546;
      v57 = v15;
      v58 = 2112;
      v59 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Determined userName:%@ strippedPhoneNumberString:%@", v56, 0x16u);
    }

    v53 = v15;
    if (![v15 containsString:v22])
    {
      v27 = vm_vmd_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(VVDataMigrator *)self normalizedPhoneNumber];
        *v56 = 138412802;
        v57 = v5;
        v58 = 2112;
        v59 = v33;
        v60 = 2112;
        v61 = v53;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Determined that this is not the account we want to migrate: %@, searchHint:%@, userName: %@", v56, 0x20u);
      }

      goto LABEL_32;
    }

    v47 = v22;
    v24 = [[NSURL alloc] initFileURLWithPath:v5];
    v25 = [[NSURL alloc] initFileURLWithPath:v8];
    v26 = +[NSFileManager defaultManager];
    v55 = 0;
    v50 = v25;
    v51 = v24;
    LODWORD(v25) = [v26 copyItemAtURL:v24 toURL:v25 error:&v55];
    v27 = v55;

    v28 = vm_vmd_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    v46 = v25;
    v48 = v21;
    v49 = v20;
    if ((v25 & 1) != 0 || !v27)
    {
      if (v29)
      {
        *v56 = 138412546;
        v57 = v51;
        v58 = 2112;
        v59 = v50;
        v30 = "Performed migration fromURL:%@ toURL:%@";
        v31 = v28;
        v32 = 22;
        goto LABEL_21;
      }
    }

    else if (v29)
    {
      *v56 = 138412802;
      v57 = v51;
      v58 = 2112;
      v59 = v50;
      v60 = 2112;
      v61 = v27;
      v30 = "Error while performing migration fromURL:%@ toURL:%@ error:%@";
      v31 = v28;
      v32 = 32;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, v56, v32);
    }

    v34 = sub_10008546C();
    v35 = [v34 URLByAppendingPathComponent:@"Checkpoint.plist"];

    v36 = [(VVDataMigrator *)self accountDir];
    v37 = [v36 URLByAppendingPathComponent:@"Checkpoint.plist"];

    v38 = +[NSFileManager defaultManager];
    v54 = 0;
    v39 = [v38 copyItemAtURL:v35 toURL:v37 error:&v54];
    v40 = v54;

    v41 = vm_vmd_log();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    v22 = v47;
    if ((v39 & 1) != 0 || !v40)
    {
      if (v42)
      {
        *v56 = 138412546;
        v57 = v35;
        v58 = 2112;
        v59 = v37;
        v43 = "Performed migration fromCheckpointURL:%@ toCheckpointURL:%@";
        v44 = v41;
        v45 = 22;
        goto LABEL_28;
      }
    }

    else if (v42)
    {
      *v56 = 138412802;
      v57 = v35;
      v58 = 2112;
      v59 = v37;
      v60 = 2112;
      v61 = v40;
      v43 = "Error while performing migration fromCheckpointURL:%@ toCheckpointURL:%@ error:%@";
      v44 = v41;
      v45 = 32;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, v56, v45);
    }

    if ((v46 & v39) == 1)
    {
      CFPreferencesSetAppValue(@"DataMigrationStatus", @"NO", @"com.apple.voicemail.datamigration");
      CFPreferencesAppSynchronize(@"com.apple.voicemail.datamigration");
    }

    v21 = v48;
    v20 = v49;
LABEL_32:

    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 138412290;
    *&buf[4] = v5;
    v11 = "Determined that file does not exist at filePath, skipping migration: %@";
    goto LABEL_16;
  }

LABEL_33:
}

@end