@interface SPBackupRankingMetadataHandler
+ (id)sharedInstance;
+ (void)checkForRestoreFile;
- (BOOL)didCreateKeychainItem;
- (SPBackupRankingMetadataHandler)init;
- (char)getDataOutWithSize:(unint64_t)a3 withFlag:(unint64_t)a4 fd:(int *)a5;
- (id)createRandomAESKey;
- (id)dictionaryToSecItemFormat:(id)a3;
- (id)fetchKeyFromKeychain;
- (id)secItemFormatToDictionary:(id)a3;
- (int)getBackupVersion:(unint64_t)a3;
- (int)restoreFromExistingKeyWithOutData:(__CFData *)a3;
- (void)addAttributesToDictionary:(id)a3;
- (void)backUpFileProtectionClassCheck;
- (void)backUpFileProtectionClassCheckWithFd:(int)a3;
- (void)extractAndWriteEncryptedBackupMetadata:(id)a3;
- (void)restoreRankingSignalsFromEncryptedFile:(id)a3;
- (void)tryRestoreFromBackUp;
- (void)writeToKeychain;
@end

@implementation SPBackupRankingMetadataHandler

- (void)backUpFileProtectionClassCheck
{
  v3 = qword_1000A83D0;
  if (v3)
  {
    v6 = v3;
    v4 = v3;
    v5 = open([v6 UTF8String], 0x8000);
    v3 = v6;
    if (v5 != -1)
    {
      [(SPBackupRankingMetadataHandler *)self backUpFileProtectionClassCheckWithFd:v5];
      close(v5);
      v3 = v6;
    }
  }
}

+ (id)sharedInstance
{
  if (qword_1000A8408 != -1)
  {
    sub_100002264();
  }

  v3 = qword_1000A8400;

  return v3;
}

+ (void)checkForRestoreFile
{
  v2 = a1;
  objc_sync_enter(v2);
  v8 = 0;
  if (([qword_1000A83C0 BOOLForKey:@"didCreateLocalBackup"] & 1) == 0)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:qword_1000A83D8 isDirectory:&v8];

    if ((v4 & 1) == 0)
    {
      v5 = [qword_1000A83D0 UTF8String];
      v6 = [qword_1000A83E0 UTF8String];
      rename(v5, v6, v7);
    }
  }

  objc_sync_exit(v2);
}

- (SPBackupRankingMetadataHandler)init
{
  v12.receiver = self;
  v12.super_class = SPBackupRankingMetadataHandler;
  v2 = [(SPBackupRankingMetadataHandler *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.searchd.createEncryptedRankingBackupQueue", v3);
    [(SPBackupRankingMetadataHandler *)v2 setQueue:v4];

    objc_initWeak(&location, v2);
    v5 = SPLogForSPLogCategoryDefault();
    v6 = v5;
    if (gSPLogDebugAsDefault)
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v5, v7))
    {
      *buf = 136315138;
      v14 = "com.apple.searchd.createEncryptedRankingBackup";
      _os_log_impl(&_mh_execute_header, v6, v7, "Registering XPC activity:%s", buf, 0xCu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000283B0;
    v9[3] = &unk_100092F50;
    objc_copyWeak(&v10, &location);
    xpc_activity_register("com.apple.searchd.createEncryptedRankingBackup", XPC_ACTIVITY_CHECK_IN, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)addAttributesToDictionary:(id)a3
{
  v3 = a3;
  [v3 setObject:@"com.apple.Spotlight" forKey:kSecAttrAccessGroup];
  [v3 setObject:kCFBooleanTrue forKey:kSecAttrSynchronizable];
  [v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  [v3 setObject:kCFBooleanTrue forKey:kSecAttrCanEncrypt];
  [v3 setObject:kCFBooleanTrue forKey:kSecAttrCanDecrypt];
  [v3 setObject:kSecAttrKeyClassSymmetric forKey:kSecAttrKeyClass];
}

- (int)restoreFromExistingKeyWithOutData:(__CFData *)a3
{
  result = a3;
  v4 = [(SPBackupRankingMetadataHandler *)self privateKeyQuery];
  v5 = SecItemCopyMatching(v4, &result);

  v6 = [(SPBackupRankingMetadataHandler *)self keychainData];

  if (!v6)
  {
    v8 = objc_opt_new();
    [(SPBackupRankingMetadataHandler *)self setKeychainData:v8];

    if (v5)
    {
      return v5;
    }

LABEL_5:
    v9 = [(SPBackupRankingMetadataHandler *)self keychainData];
    [v9 setObject:result forKey:kSecValueData];

    return v5;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  return v5;
}

- (id)fetchKeyFromKeychain
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(SPBackupRankingMetadataHandler *)self setPrivateKeyQuery:v3];

  v4 = [(SPBackupRankingMetadataHandler *)self privateKeyQuery];
  [v4 setObject:kSecClassKey forKey:kSecClass];

  v5 = [(SPBackupRankingMetadataHandler *)self privateKeyQuery];
  [(SPBackupRankingMetadataHandler *)self addAttributesToDictionary:v5];

  v6 = [(SPBackupRankingMetadataHandler *)self restoreFromExistingKeyWithOutData:0];
  if (!v6)
  {
    goto LABEL_5;
  }

  if (v6 == -25300)
  {
    if ([(SPBackupRankingMetadataHandler *)self didCreateKeychainItem])
    {
      [(SPBackupRankingMetadataHandler *)self writeToKeychain];
      [(SPBackupRankingMetadataHandler *)self restoreFromExistingKeyWithOutData:0];
LABEL_5:
      v7 = [(SPBackupRankingMetadataHandler *)self keychainData];
      v8 = [v7 objectForKey:kSecValueData];

      goto LABEL_10;
    }
  }

  else
  {
    v9 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100062B0C();
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)createRandomAESKey
{
  v2 = 0;
  v5[0] = 0;
  v5[1] = 0;
  do
  {
    *(v5 + v2) = arc4random();
    v2 += 4;
  }

  while (v2 != 16);
  v3 = [[NSData alloc] initWithBytes:v5 length:16];

  return v3;
}

- (BOOL)didCreateKeychainItem
{
  v3 = [(SPBackupRankingMetadataHandler *)self keychainData];

  if (v3)
  {
    v4 = [(SPBackupRankingMetadataHandler *)self keychainData];

    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = [(SPBackupRankingMetadataHandler *)self keychainData];
    v6 = [(SPBackupRankingMetadataHandler *)self dictionaryToSecItemFormat:v5];

    if (SecItemDelete(v6))
    {
      v7 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100062B40();
      }
    }
  }

  else
  {
    v6 = objc_opt_new();
    [(SPBackupRankingMetadataHandler *)self setKeychainData:v6];
  }

LABEL_9:
  v8 = [(SPBackupRankingMetadataHandler *)self createRandomAESKey];
  if (v8)
  {
    v9 = [(SPBackupRankingMetadataHandler *)self keychainData];
    [v9 setObject:v8 forKey:kSecValueData];

    v10 = [(SPBackupRankingMetadataHandler *)self keychainData];
    [(SPBackupRankingMetadataHandler *)self addAttributesToDictionary:v10];
  }

  else
  {
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100062B74();
    }
  }

  return v8 != 0;
}

- (void)writeToKeychain
{
  result = 0;
  v3 = [(SPBackupRankingMetadataHandler *)self privateKeyQuery];
  v4 = SecItemCopyMatching(v3, &result);

  if (v4)
  {
    v5 = [(SPBackupRankingMetadataHandler *)self keychainData];
    v6 = SecItemAdd([(SPBackupRankingMetadataHandler *)self dictionaryToSecItemFormat:v5], 0);

    if (v6 == -25299)
    {
      v7 = [(SPBackupRankingMetadataHandler *)self keychainData];
      v6 = SecItemDelete([(SPBackupRankingMetadataHandler *)self dictionaryToSecItemFormat:v7]);
    }

    if (v6)
    {
      v8 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100062BA8();
      }
    }

    if (result)
    {
      CFRelease(result);
    }
  }

  else
  {
    v9 = result;
    v10 = [NSMutableDictionary dictionaryWithDictionary:result];

    v11 = [(SPBackupRankingMetadataHandler *)self privateKeyQuery];
    v12 = [v11 objectForKey:kSecClass];
    [v10 setObject:v12 forKey:kSecClass];

    v13 = [(SPBackupRankingMetadataHandler *)self keychainData];
    v14 = [(SPBackupRankingMetadataHandler *)self dictionaryToSecItemFormat:v13];

    [v14 removeObjectForKey:kSecClass];
    if (SecItemUpdate(v10, v14))
    {
      v15 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100062BDC();
      }
    }
  }
}

- (id)dictionaryToSecItemFormat:(id)a3
{
  v3 = a3;
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
  [v4 setObject:kSecClassKey forKey:kSecClass];
  v5 = [v3 objectForKey:kSecValueData];

  if (v5)
  {
    [v4 setObject:v5 forKey:kSecValueData];
  }

  return v4;
}

- (id)secItemFormatToDictionary:(id)a3
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:a3];
  [v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  [v3 setObject:kSecClassKey forKey:kSecClass];
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    v5 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100062C10();
    }
  }

  else
  {
    if (!v4)
    {
      [v3 setObject:result forKey:kSecValueData];
      goto LABEL_9;
    }

    v5 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100062C44();
    }
  }

LABEL_9:

  return v3;
}

- (void)backUpFileProtectionClassCheckWithFd:(int)a3
{
  if (a3 != -1 && fcntl(a3, 63) != 3)
  {
    fcntl(a3, 64, 3);
  }
}

- (void)extractAndWriteEncryptedBackupMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SPBackupRankingMetadataHandler *)v5 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029424;
  block[3] = &unk_1000921C8;
  block[4] = v5;
  dispatch_group_async(v4, v6, block);

  objc_sync_exit(v5);
}

- (void)tryRestoreFromBackUp
{
  v2 = self;
  objc_sync_enter(v2);
  v21 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:qword_1000A83E0 isDirectory:&v21];

  if (v4)
  {
    [qword_1000A83C0 doubleForKey:@"lastBackupRestoreAttemptTime"];
    v6 = v5;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = [qword_1000A83C0 integerForKey:@"backupRestoreAttemptCount"];
    v7 = CFAbsoluteTimeGetCurrent() - v6;
    if ((v18[3] < 0x10 || v7 >= 86400.0) && (byte_1000A8410 & 1) == 0 && (byte_1000A8411 & 1) == 0)
    {
      byte_1000A8411 = 1;
      if (v6 == 0.0)
      {
        v8 = &XPC_ACTIVITY_INTERVAL_15_MIN;
      }

      else if (v7 <= 86400.0)
      {
        if (v7 <= 40000.0)
        {
          if (v7 <= 10000.0)
          {
            v8 = &XPC_ACTIVITY_INTERVAL_1_DAY;
            if (v7 > 5000.0)
            {
              v8 = &XPC_ACTIVITY_INTERVAL_8_HOURS;
            }
          }

          else
          {
            v8 = &XPC_ACTIVITY_INTERVAL_4_HOURS;
          }
        }

        else
        {
          v8 = &XPC_ACTIVITY_INTERVAL_1_HOUR;
        }
      }

      else
      {
        v8 = &XPC_ACTIVITY_INTERVAL_5_MIN;
      }

      v9 = *v8;
      objc_initWeak(&location, v2);
      v10 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_ALLOW_BATTERY, 0);
      xpc_dictionary_set_int64(v10, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v10, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_int64(v10, XPC_ACTIVITY_DELAY, v9);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10002A0A8;
      handler[3] = &unk_100092FA0;
      v11 = v10;
      v13 = v11;
      objc_copyWeak(&v15, &location);
      v14 = &v17;
      xpc_activity_register("com.apple.searchd.restoreBackup", XPC_ACTIVITY_CHECK_IN, handler);
      objc_destroyWeak(&v15);

      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v17, 8);
  }

  objc_sync_exit(v2);
}

- (char)getDataOutWithSize:(unint64_t)a3 withFlag:(unint64_t)a4 fd:(int *)a5
{
  *a5 = -1;
  v7 = sub_100028EB8(a3, a4);
  if (v7 < 0)
  {
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100062E48();
    }
  }

  else
  {
    v8 = v7;
    result = mmap(0, a3, 3, 1, v7, 0);
    if (result != -1)
    {
      *a5 = v8;
      return result;
    }

    close(v8);
    v10 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100062E14();
    }
  }

  return 0;
}

- (int)getBackupVersion:(unint64_t)a3
{
  memset(&v10.st_size, 0, 48);
  v4 = open([qword_1000A83D0 UTF8String], 0);
  if (v4 < 0)
  {
    v7 = *__error();
    v8 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100062E7C(v7, v8);
    }

    *__error() = v7;
    return 1;
  }

  else
  {
    v5 = v4;
    fstat(v4, &v10);
    v6 = 1;
    if (v10.st_size >= a3)
    {
      v13 = 0u;
      v14 = 0u;
      *__s1 = 0u;
      v12 = 0u;
      read(v5, __s1, a3);
      if (!strncmp(__s1, "SPOTLIGHT_RANKING_BACKUP_VERSION_00002", a3))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    close(v5);
  }

  return v6;
}

- (void)restoreRankingSignalsFromEncryptedFile:(id)a3
{
  v4 = a3;
  v5 = [(SPBackupRankingMetadataHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A5B4;
  block[3] = &unk_1000921C8;
  block[4] = self;
  dispatch_group_async(v4, v5, block);
}

@end