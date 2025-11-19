@interface ASCoreDataManager
+ (ASCoreDataManager)sharedInstance;
+ (id)fjcJHNNiQ83H10La;
+ (id)getCoreDataDirectoryURL:(id)a3 error:(id *)a4;
+ (id)getModelURL:(id)a3;
+ (id)storeNameWithExtensionForStoreWithName:(id)a3;
- (ASCoreDataManager)initWithStore:(id)a3 options:(id)a4;
- (ASCoreDataManager)initWithStores:(id)a3 options:(id)a4;
- (BOOL)removeStoreWithURL:(id)a3 error:(id)a4;
- (id)createDescriptionForStoreName:(id)a3 config:(id)a4 derivedKey:(id)a5;
- (id)gFJw2BGPtEQWyLz5;
- (id)getStoreURL:(id)a3;
- (id)migrateCoreDataManager;
- (id)retrieveLegacyRavioliWithCoreDataManager:(id)a3;
- (int64_t)j2Xe3JZjJDN8Y8xD:(id)a3;
- (void)mILKmibfRWMwFVWD:(id)a3 iZGmRj7VI4MJ9lO1:(id)a4 AndError:(id *)a5;
- (void)npsTCqegVwa7yuzs;
@end

@implementation ASCoreDataManager

+ (ASCoreDataManager)sharedInstance
{
  if (qword_1006D7D18 != -1)
  {
    sub_1005945B4();
  }

  v3 = qword_1006D7D10;

  return v3;
}

- (id)createDescriptionForStoreName:(id)a3 config:(id)a4 derivedKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ASCoreDataManager *)self getStoreURL:a3];
  v11 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v10];
  v12 = [NSString stringWithString:v8];
  [v11 setConfiguration:v12];

  if (v9)
  {
    [v11 setOption:v9 forKey:NSSQLiteSEEKeychainItemOption];
    [v11 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
  }

  return v11;
}

+ (id)getModelURL:(id)a3
{
  v3 = [a3 URLsForDirectory:5 inDomains:8];
  v4 = [v3 firstObject];

  v5 = [v4 URLByAppendingPathComponent:@"CoreAS" isDirectory:1];
  v6 = [@"Model56902430" stringByAppendingString:@".momd"];
  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)getCoreDataDirectoryURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 URLsForDirectory:5 inDomains:1];
  v7 = [v6 firstObject];

  v8 = [v7 URLByAppendingPathComponent:@"CoreAS" isDirectory:1];
  if (!v8 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005945C8();
  }

  [v5 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a4];
  if (*a4 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100594638(a4);
  }

  return v8;
}

- (id)getStoreURL:(id)a3
{
  v4 = [ASCoreDataManager storeNameWithExtensionForStoreWithName:a3];
  v5 = [(NSURL *)self->_coreDataDirectoryURL URLByAppendingPathComponent:v4];

  return v5;
}

- (ASCoreDataManager)initWithStores:(id)a3 options:(id)a4
{
  v5 = a3;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v51.receiver = self;
  v51.super_class = ASCoreDataManager;
  v6 = [(ASCoreDataManager *)&v51 init];
  if (!v6)
  {
    v31 = 0;
    goto LABEL_47;
  }

  v35 = v5;
  v38 = objc_alloc_init(NSFileManager);
  v39 = v6;
  v40 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v50 = 0;
  v7 = [ASCoreDataManager getCoreDataDirectoryURL:v38 error:&v50];
  v8 = v50;
  if (!v7 || v8)
  {
    *(v53 + 24) = 0;
  }

  v33 = v8;
  v34 = v7;
  objc_storeStrong(&v6->_coreDataDirectoryURL, v7);
  v9 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[ASCoreDataManager initWithStores:options:]";
    *&buf[12] = 1024;
    *&buf[14] = 190;
    *&buf[18] = 2112;
    *&buf[20] = v34;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d - coreDataDirectoryURL = %@", buf, 0x1Cu);
  }

  v37 = [ASCoreDataManager getModelURL:v38];
  v10 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Using model at URL %@", buf, 0xCu);
  }

  v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v37];
  [(ASCoreDataManager *)v6 setGgQex4P6Prvm5Zac:v11];

  v12 = [(ASCoreDataManager *)v6 ggQex4P6Prvm5Zac];
  v13 = v12 == 0;

  if (v13)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005946B0();
    }

    *(v53 + 24) = 0;
  }

  v36 = [(ASCoreDataManager *)v6 ggQex4P6Prvm5Zac];
  v14 = [[NSPersistentContainer alloc] initWithName:@"Model56902430" managedObjectModel:v36];
  [(ASCoreDataManager *)v6 setXc4PEFTuh2u6xE7M:v14];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = *v47;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v47 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v46 + 1) + 8 * i);
      v20 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Processing %@", buf, 0xCu);
      }

      v21 = [v15 objectForKeyedSubscript:v19];
      v22 = [(ASCoreDataManager *)v6 getStoreURL:v19];
      if (([v21 isEqualToString:@"Default"] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @"config_YTQhA") & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @"config_WNFwQ") & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @"config_ZBCBa") & 1) == 0)
      {
        [v21 isEqualToString:@"config_JotNU"];
      }

      if (![v21 isEqualToString:@"config_WzTtA"])
      {
        v26 = 0;
        goto LABEL_32;
      }

      v23 = +[ASCoreDataManager fjcJHNNiQ83H10La];
      v24 = v23;
      if (!v23)
      {
        *(v53 + 24) = 0;
LABEL_41:

        v31 = 0;
        goto LABEL_46;
      }

      v45 = [v23 length];
      *v57 = 0;
      v25 = v24;
      [v24 bytes];
      sub_1002C9B10();
      if (*v57)
      {
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
        {
          sub_1005946EC();
        }

        *(v53 + 24) = 0;

        goto LABEL_41;
      }

      v26 = [[NSData alloc] initWithBytes:buf length:{16, v57, v33}];
      v27 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
      {
        *v57 = 138412290;
        v58 = v19;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "For %@: CoreData store encryption enabled.", v57, 0xCu);
      }

      v6 = v39;
LABEL_32:
      v28 = [(ASCoreDataManager *)v6 createDescriptionForStoreName:v19 config:v21 derivedKey:v26];
      [v40 addObject:v28];
    }

    v16 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_34:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  v29 = [(ASCoreDataManager *)v6 xc4PEFTuh2u6xE7M];
  [v29 setPersistentStoreDescriptions:v40];

  v30 = [(ASCoreDataManager *)v6 xc4PEFTuh2u6xE7M];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100037CB8;
  v41[3] = &unk_100690A08;
  v43 = buf;
  v6 = v6;
  v42 = v6;
  v44 = &v52;
  [v30 loadPersistentStoresWithCompletionHandler:v41];

  if (*(*&buf[8] + 24) == 1)
  {
    v6 = [(ASCoreDataManager *)v6 initWithStores:v15 options:0];
    goto LABEL_43;
  }

  if (*(v53 + 24) == 1)
  {
LABEL_43:
    v6 = v6;
    v31 = v6;
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_46:

  v5 = v35;
LABEL_47:
  _Block_object_dispose(&v52, 8);

  return v31;
}

- (ASCoreDataManager)initWithStore:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v49.receiver = self;
  v49.super_class = ASCoreDataManager;
  v8 = [(ASCoreDataManager *)&v49 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSFileManager);
    v43 = [ASCoreDataManager getModelURL:v9];
    v48 = 0;
    v10 = [ASCoreDataManager getCoreDataDirectoryURL:v9 error:&v48];
    v44 = v48;
    if (!v10 || v44)
    {
      *(v51 + 24) = 0;
    }

    v42 = [(ASCoreDataManager *)v8 getStoreURL:v6];
    objc_storeStrong(&v8->_coreDataDirectoryURL, v10);
    v11 = [v7 objectForKeyedSubscript:@"2BC2E664-199A-4A80-910A-CD19B11354F2"];
    v12 = [v11 integerValue];
    v13 = v12;
    v14 = 1;
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        if ([(ASCoreDataManager *)v8 removeStoreWithURL:v42 error:0])
        {
          if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
          {
            sub_100594814();
          }

          v15 = [(ASCoreDataManager *)v8 initWithStore:v6];
          v8 = v15;
          goto LABEL_17;
        }
      }

      else
      {
        v14 = v12 != 6;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v67 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
        v68 = &off_1006BA940;
        v17 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v8 = [(ASCoreDataManager *)v8 initWithStore:v6 options:v17];

        v16 = v8;
LABEL_49:

        goto LABEL_50;
      }

      if (v12 == 3)
      {
        v15 = [(ASCoreDataManager *)v8 migrateCoreDataManager];
LABEL_17:
        v16 = v15;
        goto LABEL_49;
      }
    }

    v18 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v43];
    [(ASCoreDataManager *)v8 setGgQex4P6Prvm5Zac:v18];

    v19 = [(ASCoreDataManager *)v8 ggQex4P6Prvm5Zac];
    LODWORD(v18) = v19 == 0;

    if (v18)
    {
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_1005946B0();
      }

      *(v51 + 24) = 0;
    }

    v41 = [(ASCoreDataManager *)v8 ggQex4P6Prvm5Zac];
    v20 = [[NSPersistentContainer alloc] initWithName:@"Model56902430" managedObjectModel:v41];
    [(ASCoreDataManager *)v8 setXc4PEFTuh2u6xE7M:v20];

    v21 = v13 != 6 || v14;
    if (v21 == 1)
    {
      v22 = [(ASCoreDataManager *)v8 j2Xe3JZjJDN8Y8xD:v10];
      if (v22 == 1)
      {
        v65 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
        v66 = &off_1006BA958;
        v30 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v8 = [(ASCoreDataManager *)v8 initWithStore:v6 options:v30];

        goto LABEL_37;
      }

      if (v22 == 3)
      {
        v63 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
        v64 = &off_1006BA970;
        v23 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v8 = [(ASCoreDataManager *)v8 initWithStore:v6 options:v23];

LABEL_37:
        v16 = v8;
LABEL_48:

        goto LABEL_49;
      }
    }

    if (v14)
    {
      v24 = +[ASCoreDataManager fjcJHNNiQ83H10La];
      v25 = v24;
      if (!v24)
      {
        v16 = 0;
        *(v51 + 24) = 0;
        goto LABEL_48;
      }

      v47 = [v24 length];
      *v46 = 0;
      v26 = v25;
      [v25 bytes];
      v39 = v46;
      sub_1002C9B10();
      if (*v46)
      {
        v27 = 0;
      }

      else
      {
        v27 = [[NSData alloc] initWithBytes:buf length:{16, v46}];
        v31 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
        {
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "CoreData store encryption enabled.", v46, 2u);
        }
      }

      v29 = v27;
    }

    else
    {
      v28 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "CoreData store encryption disabled due to legacyMode detected.", buf, 2u);
      }

      v29 = 0;
    }

    v40 = v29;
    v32 = [(ASCoreDataManager *)v8 createDescriptionForStoreName:v6 config:@"Default" derivedKey:v39];
    v61 = @"cache_spill";
    v62 = @"1000";
    v33 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v32 setOption:v33 forKey:NSSQLitePragmasOption];

    *buf = 0;
    v58 = buf;
    v59 = 0x2020000000;
    v60 = 0;
    v56 = v32;
    v34 = [NSArray arrayWithObjects:&v56 count:1];
    v35 = [(ASCoreDataManager *)v8 xc4PEFTuh2u6xE7M];
    [v35 setPersistentStoreDescriptions:v34];

    v36 = [(ASCoreDataManager *)v8 xc4PEFTuh2u6xE7M];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10003868C;
    v45[3] = &unk_100690A30;
    v45[4] = buf;
    v45[5] = &v50;
    [v36 loadPersistentStoresWithCompletionHandler:v45];

    if (v58[24] == 1)
    {
      v54 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
      v55 = &off_1006BA940;
      v37 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v8 = [(ASCoreDataManager *)v8 initWithStore:v6 options:v37];

      v16 = v8;
    }

    else if (*(v51 + 24) == 1)
    {
      v8 = v8;
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);

    goto LABEL_48;
  }

  v16 = 0;
LABEL_50:
  _Block_object_dispose(&v50, 8);

  return v16;
}

- (BOOL)removeStoreWithURL:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v21 = v6;
  [v7 removeItemAtURL:v5 error:&v21];
  v8 = v21;

  v9 = v8;
  if (!v8)
  {
    v10 = [v5 path];
    v11 = [NSString stringWithFormat:@"%@-wal", v10];
    v20 = 0;
    [v7 removeItemAtPath:v11 error:&v20];
    v12 = v20;
    if (v12)
    {
      v13 = qword_1006DF770;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 localizedDescription];
        *buf = 138412290;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Failed to remove -wal file with error %@", buf, 0xCu);
      }
    }

    v15 = [NSString stringWithFormat:@"%@-shm", v10];
    v19 = v12;
    [v7 removeItemAtPath:v15 error:&v19];
    v9 = v19;

    if (v9)
    {
      v16 = qword_1006DF770;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v9 localizedDescription];
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Failed to remove -shm file with error %@", buf, 0xCu);
      }
    }
  }

  return v8 == 0;
}

- (int64_t)j2Xe3JZjJDN8Y8xD:(id)a3
{
  v18 = +[NSFileManager defaultManager];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [&off_1006BABF8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = 5;
    v5 = *v21;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(&off_1006BABF8);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [(ASCoreDataManager *)self getStoreURL:v7];
        v9 = [v8 relativePath];
        if ([v18 fileExistsAtPath:v9])
        {
          v10 = [NSFileHandle fileHandleForReadingAtPath:v9];
          v19 = 0;
          v11 = [v10 readDataUpToLength:16 error:&v19];
          v12 = v19;
          if (v12)
          {
            v14 = qword_1006DF770;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [v12 localizedDescription];
              sub_100594850(v15, buf, v14);
            }

            goto LABEL_20;
          }

          strcpy(buf, "SQLite format 3");
          v13 = [NSData dataWithBytes:buf length:16];
          if ([v13 isEqualToData:v11])
          {
            if ([v7 isEqualToString:@"Model56902430g"])
            {
              v4 = 3;
            }

            else
            {
              v4 = 1;
            }
          }

          else
          {
            v4 = 2;
          }
        }
      }

      v3 = [&off_1006BABF8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_20:
    v4 = 5;
  }

  return v4;
}

- (id)migrateCoreDataManager
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Migration requirement detected. Performing migration", buf, 2u);
  }

  v4 = [ASCoreDataManager alloc];
  v22 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
  v23 = &off_1006BA988;
  v5 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v6 = [(ASCoreDataManager *)v4 initWithStore:@"Model56902430g" options:v5];

  v7 = [(ASCoreDataManager *)self retrieveLegacyRavioliWithCoreDataManager:v6];

  v8 = [(ASCoreDataManager *)self getStoreURL:@"Model56902430g"];
  if (![(ASCoreDataManager *)self removeStoreWithURL:v8 error:0]&& os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005948A8();
  }

  v9 = [ASCoreDataManager alloc];
  v20 = @"2BC2E664-199A-4A80-910A-CD19B11354F2";
  v21 = &off_1006BA9A0;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v11 = [(ASCoreDataManager *)v9 initWithStore:@"Model56902430i" options:v10];

  v12 = [[PJXBDBF1h0EU80dy alloc] initWithCoreDataManager:v11];
  v13 = +[_TtC3asd16RavioliConstants ravioliUUID];
  v18 = 0;
  [(PJXBDBF1h0EU80dy *)v12 c94QZ147F1UWY71l:v13 jkjlhN0UgO78kW6q:v7 error:&v18];
  v14 = v18;

  v15 = qword_1006DF770;
  if (v14)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594920();
    }

    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Restored existing JSON Bags into new store.", buf, 2u);
    }

    v16 = v11;
  }

  return v16;
}

- (id)gFJw2BGPtEQWyLz5
{
  v3 = [(ASCoreDataManager *)self xc4PEFTuh2u6xE7M];

  if (v3)
  {
    v4 = [(ASCoreDataManager *)self xc4PEFTuh2u6xE7M];
    v5 = [v4 newBackgroundContext];

    [v5 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)npsTCqegVwa7yuzs
{
  if (self->_coreDataDirectoryURL)
  {
    [@"Model56902430" stringByAppendingString:@"i"];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039188;
    block[3] = &unk_100690A58;
    block[4] = self;
    v7 = v6 = @"Model56902430";
    v3 = qword_1006D7D20;
    v4 = v7;
    if (v3 != -1)
    {
      dispatch_once(&qword_1006D7D20, block);
    }
  }
}

- (void)mILKmibfRWMwFVWD:(id)a3 iZGmRj7VI4MJ9lO1:(id)a4 AndError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000397F4;
  v22 = sub_100039804;
  v23 = 0;
  v10 = [(ASCoreDataManager *)self gFJw2BGPtEQWyLz5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003980C;
  v13[3] = &unk_100690A80;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = &v18;
  v11 = v10;
  [v11 performBlockAndWait:v13];

  v12 = v19[5];
  if (v12)
  {
    *a5 = v12;
  }

  _Block_object_dispose(&v18, 8);
}

+ (id)storeNameWithExtensionForStoreWithName:(id)a3
{
  v3 = [a3 stringByAppendingString:@".sqlite"];

  return v3;
}

- (id)retrieveLegacyRavioliWithCoreDataManager:(id)a3
{
  v3 = a3;
  v4 = [v3 gFJw2BGPtEQWyLz5];
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R09283478"];
  [v5 setFetchLimit:1];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100039F1C;
  v24[4] = sub_100039F2C;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100039F1C;
  v22[4] = sub_100039F2C;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100039F1C;
  v20 = sub_100039F2C;
  v21 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039F34;
  v10[3] = &unk_100690AA8;
  v13 = v22;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v14 = v24;
  v15 = &v16;
  [v6 performBlockAndWait:v10];
  v8 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);

  return v8;
}

+ (id)fjcJHNNiQ83H10La
{
  v14 = MGCopyAnswer();
  v16 = [v14 longValue];
  v13 = [NSData dataWithBytes:&v16 length:8];
  v20[0] = kSecClass;
  v20[1] = kSecAttrAccount;
  v21[0] = kSecClassGenericPassword;
  v21[1] = @"asd.uuid.data.a";
  v20[2] = kSecMatchLimit;
  v20[3] = kSecReturnAttributes;
  v21[2] = kSecMatchLimitOne;
  v21[3] = &__kCFBooleanTrue;
  v20[4] = kSecReturnData;
  v20[5] = kSecAttrAccessGroup;
  v21[4] = &__kCFBooleanTrue;
  v21[5] = @"com.apple.asd";
  v2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
  result = 0;
  if (!SecItemCopyMatching(v2, &result))
  {
    v11 = result;
    v4 = [result objectForKey:kSecValueData];

    if (v4)
    {
      goto LABEL_9;
    }
  }

  v3 = +[NSUUID UUID];
  v19[0] = 0;
  v19[1] = 0;
  [v3 getUUIDBytes:v19];
  v4 = [NSData dataWithBytes:v19 length:16];
  v17[0] = kSecClass;
  v17[1] = kSecAttrAccount;
  v18[0] = kSecClassGenericPassword;
  v18[1] = @"asd.uuid.data.a";
  v17[2] = kSecValueData;
  v17[3] = kSecAttrAccessible;
  v18[2] = v4;
  v18[3] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v17[4] = kSecAttrAccessGroup;
  v18[4] = @"com.apple.asd";
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  v6 = SecItemAdd(v5, 0);
  if (!v6)
  {

LABEL_9:
    v10 = v13;
    v3 = [NSMutableData dataWithData:v13];
    [v3 appendData:v4];
    v9 = [v3 copy];
    goto LABEL_10;
  }

  v7 = v6;
  v8 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005955D8(v7, v8);
  }

  v9 = 0;
  v10 = v13;
LABEL_10:

  return v9;
}

@end