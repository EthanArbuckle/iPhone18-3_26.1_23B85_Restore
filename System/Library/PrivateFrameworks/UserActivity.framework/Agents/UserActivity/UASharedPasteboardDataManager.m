@interface UASharedPasteboardDataManager
+ (id)sharedInstance;
- (BOOL)createTmpArchiveFileWithUUID:(id)a3;
- (BOOL)directoryExistsAtPath:(id)a3;
- (BOOL)fileExistsForUUID:(id)a3 inSubFolder:(id)a4;
- (UASharedPasteboardDataManager)init;
- (id)createFileForLocalPasteboardBlob;
- (id)createFileForRemotePasteboardBlob;
- (id)createFileForUUID:(id)a3 inSubFolder:(id)a4;
- (id)createFolderAtPath:(id)a3;
- (id)createSharedDataDirectory;
- (id)fileURLForArchiveWithUUID:(id)a3;
- (id)fileURLForCloneItems;
- (id)fileURLForPasteboardItem:(id)a3;
- (id)localPasteboardBlobForReading;
- (id)readHandleForArchiveWithUUID:(id)a3;
- (id)remotePasteboardBlobForReading;
- (id)sharedDataPath;
- (id)subDirForItem:(id)a3;
- (void)cancelAllLocks;
- (void)cleanupArchiveDir;
- (void)cleanupCloneDir;
- (void)cleanupForItem:(id)a3;
- (void)cleanupItemsDir;
- (void)finishWritingArchiveForUUID:(id)a3;
- (void)obtainLockForItem:(id)a3 completion:(id)a4;
- (void)releaseLockForItem:(id)a3 withError:(id)a4;
- (void)writeArchiveData:(id)a3 forItem:(id)a4;
@end

@implementation UASharedPasteboardDataManager

+ (id)sharedInstance
{
  if (qword_1000E5BD8 != -1)
  {
    sub_10007BCD8();
  }

  v3 = qword_1000E5BD0;

  return v3;
}

- (UASharedPasteboardDataManager)init
{
  v10.receiver = self;
  v10.super_class = UASharedPasteboardDataManager;
  v2 = [(UASharedPasteboardDataManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(UASharedPasteboardDataManager *)v2 createSharedDataDirectory];
    v5 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setTmpArchiveWriteFiles:v5];

    v6 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setLockTokens:v6];

    v7 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setProviders:v7];

    if (v4)
    {
      v8 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[FILE MANAGER] ERROR creating shared pasteboard dir: %@", buf, 0xCu);
      }
    }
  }

  return v3;
}

- (id)sharedDataPath
{
  if (qword_1000E5BE8 != -1)
  {
    sub_10007BCEC();
  }

  v3 = qword_1000E5BE0;

  return v3;
}

- (id)createSharedDataDirectory
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v9 = 0;
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v9];
  v5 = v9;

  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(UASharedPasteboardDataManager *)self sharedDataPath];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[FILE MANAGER] Shared Path: %@", buf, 0xCu);
  }

  return v5;
}

- (BOOL)fileExistsForUUID:(id)a3 inSubFolder:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  if (v6)
  {
    v8 = [v6 stringByAppendingPathComponent:v7];

    v7 = v8;
  }

  v9 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v10 = [v9 stringByAppendingPathComponent:v7];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  return v12;
}

- (id)createFileForUUID:(id)a3 inSubFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v9 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v10 = [v8 fileExistsAtPath:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(UASharedPasteboardDataManager *)self createSharedDataDirectory];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v28 = 138412290;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[FILE MANAGER] ERROR creating shared pasteboard dir: %@", &v28, 0xCu);
      }

LABEL_6:
      v14 = 0;
      goto LABEL_21;
    }
  }

  if (![(UASharedPasteboardDataManager *)self directoryExistsAtPath:v7])
  {
    v15 = [(UASharedPasteboardDataManager *)self createFolderAtPath:v7];
    if (!v15)
    {
      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v28 = 138412290;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[FILE MANAGER] Error creating subdir: %@", &v28, 0xCu);
      }

      goto LABEL_6;
    }
  }

  v12 = [v6 UUIDString];
  if (v7)
  {
    v16 = [v7 stringByAppendingPathComponent:v12];

    v12 = v16;
  }

  v17 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v18 = [v17 stringByAppendingPathComponent:v12];

  v19 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[FILE MANAGER] Path for file UUID: %@ -> '%@'", &v28, 0x16u);
  }

  v20 = +[NSData data];
  v21 = [v20 writeToFile:v18 atomically:0];

  v22 = sub_100001A30(@"pasteboard-server");
  v23 = v22;
  if (v21)
  {
    v24 = v18;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[FILE MANAGER] Created file by writing blank data to path: %@", &v28, 0xCu);
      v24 = v18;
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = __error();
      v26 = strerror(*v25);
      v28 = 138412546;
      v29 = v18;
      v30 = 2080;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[FILE MANAGER] Failed to create file at path: %@ / %s", &v28, 0x16u);
    }

    v24 = 0;
  }

  v14 = v24;
LABEL_21:

  return v14;
}

- (BOOL)directoryExistsAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v9 = 0;
  v7 = +[NSFileManager defaultManager];
  LOBYTE(v4) = [v7 fileExistsAtPath:v6 isDirectory:&v9];

  LOBYTE(v7) = v9;
  return v4 & v7;
}

- (id)createFolderAtPath:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = +[NSFileManager defaultManager];
  v19 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v19];
  v9 = v19;

  v10 = sub_100001A30(@"pasteboard-server");
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    v12 = "[FILE MANAGER] Failed to create dir at path: %{public}@ / %{public}@";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v21 = v6;
    v12 = "[FILE MANAGER] Created dir at path: %{public}@";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 12;
  }

  _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
LABEL_7:

  if (v8)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)createFileForLocalPasteboardBlob
{
  v3 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (!v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 stringForKey:@"kLocalPasteboardBlobName"];
    [(UASharedPasteboardDataManager *)self setCurrentLocalBlobPath:v5];
  }

  v6 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (v6)
  {
    v7 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];
    v8 = +[NSFileManager defaultManager];
    v23 = 0;
    [v8 removeItemAtPath:v7 error:&v23];
    v9 = v23;

    v10 = sub_100001A30(@"pasteboard-server");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = v7;
        v26 = 2114;
        v27 = v9;
        v12 = "[FILE MANAGER] Failed to remove item at path: %{public}@ / %{public}@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v7;
      v12 = "[FILE MANAGER] Removed item at path: %{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
      goto LABEL_9;
    }
  }

  v16 = +[NSUUID UUID];
  v17 = [(UASharedPasteboardDataManager *)self createFileForUUID:v16];
  [(UASharedPasteboardDataManager *)self setCurrentLocalBlobPath:v17];
  v18 = +[NSUserDefaults standardUserDefaults];
  [v18 setObject:v17 forKey:@"kLocalPasteboardBlobName"];

  v19 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[FILE MANAGER] Creating file for local pasteboard blob at path: %@", buf, 0xCu);
  }

  if (v17)
  {
    v20 = [NSFileHandle fileHandleForWritingAtPath:v17];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[FILE MANAGER] Created Handle: %@", buf, 0xCu);
  }

  return v20;
}

- (id)localPasteboardBlobForReading
{
  v3 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (v3)
  {
    v4 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];
    v5 = [NSFileHandle fileHandleForReadingAtPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createFileForRemotePasteboardBlob
{
  v3 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (!v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 stringForKey:@"kRemotePasteboardBlobName"];
    [(UASharedPasteboardDataManager *)self setCurrentRemoteBlobPath:v5];
  }

  v6 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (v6)
  {
    v7 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];
    v8 = +[NSFileManager defaultManager];
    v23 = 0;
    [v8 removeItemAtPath:v7 error:&v23];
    v9 = v23;

    v10 = sub_100001A30(@"pasteboard-server");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = v7;
        v26 = 2114;
        v27 = v9;
        v12 = "[FILE MANAGER] Failed to remove item at path: %{public}@ / %{public}@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v7;
      v12 = "[FILE MANAGER] Removed item at path: %{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
      goto LABEL_9;
    }
  }

  v16 = +[NSUUID UUID];
  v17 = [(UASharedPasteboardDataManager *)self createFileForUUID:v16];
  [(UASharedPasteboardDataManager *)self setCurrentRemoteBlobPath:v17];
  v18 = +[NSUserDefaults standardUserDefaults];
  [v18 setObject:v17 forKey:@"kRemotePasteboardBlobName"];

  v19 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[FILE MANAGER] Creating file for remote pasteboard blob at path: %@", buf, 0xCu);
  }

  if (v17)
  {
    v20 = [NSFileHandle fileHandleForWritingAtPath:v17];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[FILE MANAGER] Created Handle: %@", buf, 0xCu);
  }

  return v20;
}

- (id)remotePasteboardBlobForReading
{
  v3 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (v3)
  {
    v4 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];
    v5 = [NSFileHandle fileHandleForReadingAtPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)subDirForItem:(id)a3
{
  v3 = [a3 UUIDString];
  v4 = [NSString stringWithFormat:@"items/%@/", v3];

  return v4;
}

- (id)fileURLForCloneItems
{
  v2 = +[UASharedPasteboardDataManager sharedInstance];
  v3 = [v2 sharedDataPath];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];

  v5 = [v4 URLByAppendingPathComponent:@"type-clone"];

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  LOBYTE(v4) = [v6 fileExistsAtPath:v7];

  if ((v4 & 1) == 0)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v5 path];
    v13 = 0;
    [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[FILE MANAGER] Error creating clone items dir: %@", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (id)fileURLForPasteboardItem:(id)a3
{
  v4 = [(UASharedPasteboardDataManager *)self subDirForItem:a3];
  v5 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [NSURL URLWithString:v6];

  return v7;
}

- (id)fileURLForArchiveWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [v5 stringByAppendingPathComponent:@"archives"];

  v7 = [v4 UUIDString];

  v8 = [v6 stringByAppendingPathComponent:v7];
  v9 = [NSURL URLWithString:v8];

  return v9;
}

- (id)readHandleForArchiveWithUUID:(id)a3
{
  v3 = [(UASharedPasteboardDataManager *)self fileURLForArchiveWithUUID:a3];
  v4 = [v3 path];
  v5 = [NSFileHandle fileHandleForReadingAtPath:v4];

  return v5;
}

- (BOOL)createTmpArchiveFileWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self createFileForUUID:v4 inSubFolder:@"archives"];
  if (v5 && ([NSFileHandle fileHandleForWritingAtPath:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
    v9 = [v4 UUIDString];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)writeArchiveData:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
  v9 = [v7 UUIDString];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = v10;
    objc_sync_enter(v11);
    v16 = 0;
    v12 = [v11 writeData:v6 error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v7 UUIDString];
        *buf = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[File Manager] Error writting data for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    objc_sync_exit(v11);
  }
}

- (void)finishWritingArchiveForUUID:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
  v6 = [v4 UUIDString];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = v7;
    objc_sync_enter(v8);
    [v8 synchronizeFile];
    [v8 closeFile];
    v9 = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
    v10 = [v4 UUIDString];
    [v9 removeObjectForKey:v10];

    objc_sync_exit(v8);
  }
}

- (void)obtainLockForItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UASharedPasteboardDataManager *)self subDirForItem:v7];
  v9 = [(UASharedPasteboardDataManager *)self createFolderAtPath:v8];
  v10 = [NSURL fileURLWithPath:v9 isDirectory:1];
  v11 = [[UASharedPasteboardFileProvider alloc] initWithURL:v10];
  v12 = [(UASharedPasteboardDataManager *)self providers];
  [v12 setObject:v11 forKeyedSubscript:v7];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015850;
  v14[3] = &unk_1000C4E48;
  v15 = v6;
  v13 = v6;
  [NSFileCoordinator _addFileProvider:v11 completionHandler:v14];
}

- (void)releaseLockForItem:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 UUIDString];
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[File Manager] Releasing lock for item %@", &v15, 0xCu);
  }

  v10 = [(UASharedPasteboardDataManager *)self providers];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (v11)
  {
    [v11 unlockWithError:v7];
    [NSFileCoordinator _removeFileProvider:v11];
    v12 = [(UASharedPasteboardDataManager *)self providers];
    [v12 setObject:0 forKeyedSubscript:v6];

    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v6 UUIDString];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[File Manager] Released lock for item %@", &v15, 0xCu);
    }
  }
}

- (void)cancelAllLocks
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[File Manager] Canceling all file coordiation providers", buf, 2u);
  }

  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UASharedPasteboardDataManager *)self providers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 unlockWithError:v4];
        [NSFileCoordinator _removeFileProvider:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(UASharedPasteboardDataManager *)self providers];
  [v12 removeAllObjects];
}

- (void)cleanupForItem:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [v5 stringByAppendingPathComponent:@"items"];

  if (v6)
  {
    v7 = [v4 UUIDString];
    v8 = [v6 stringByAppendingPathComponent:v7];

    v9 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v10 = [NSURL fileURLWithPath:v8];
    v11 = [(UASharedPasteboardDataManager *)self lockTokens];
    v12 = [v11 objectForKeyedSubscript:v4];

    v13 = sub_100001A30(@"pasteboard-server");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (!v12)
    {
      if (v14)
      {
        *buf = 138543362;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Obtaining write lock to delete file for item: %{public}@", buf, 0xCu);
      }

      v27 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100015FB0;
      v25[3] = &unk_1000C4E70;
      v26 = v4;
      [v9 coordinateWritingItemAtURL:v10 options:1 error:&v27 byAccessor:v25];
      v22 = v27;
      if (v22)
      {
        v23 = v22;
        v24 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error getting coord write for deleting item: %{public}@", buf, 0xCu);
        }
      }

      v16 = v26;
      goto LABEL_21;
    }

    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Already have lock for file, deleting", buf, 2u);
    }

    v15 = +[NSFileManager defaultManager];
    v28 = 0;
    [v15 removeItemAtURL:v10 error:&v28];
    v16 = v28;

    v17 = sub_100001A30(@"pasteboard-server");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v16;
        v19 = "Error deleting item: %{public}@";
        v20 = v18;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v4;
      v19 = "Deleted file for item: %{public}@";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    [(UASharedPasteboardDataManager *)self releaseLockForItem:v4];
LABEL_21:

    goto LABEL_22;
  }

  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error to get sharedDir cleaning up", buf, 2u);
  }

LABEL_22:
}

- (void)cleanupArchiveDir
{
  v2 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v3 = [v2 stringByAppendingPathComponent:@"archives"];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v24 = 0;
    v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v24];
    v6 = v24;

    obj = v6;
    if (v6)
    {
      v7 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = obj;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error getting sharedDirPath archives: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = sub_100001A30(@"pasteboard-server");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempting to deleta archive: %@", buf, 0xCu);
            }

            v14 = [v3 stringByAppendingPathComponent:v12];
            v15 = +[NSFileManager defaultManager];
            v19 = 0;
            [v15 removeItemAtPath:v14 error:&v19];
            v16 = v19;

            if (v16)
            {
              v17 = sub_100001A30(@"pasteboard-server");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v27 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error deleting archive: %{public}@", buf, 0xCu);
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)cleanupItemsDir
{
  v3 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v4 = [v3 stringByAppendingPathComponent:@"items"];

  v5 = +[NSFileManager defaultManager];
  v36 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v36];
  v7 = v36;

  v8 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  if (!v7)
  {
    v27 = v8;
    v29 = self;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v6;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Attempting to delete item: %@", buf, 0xCu);
          }

          v15 = v4;
          v16 = [NSURL fileURLWithPath:v4];
          v17 = [NSURL URLWithString:v13 relativeToURL:v16];

          v18 = [[NSUUID alloc] initWithUUIDString:v13];
          v19 = [(UASharedPasteboardDataManager *)v29 lockTokens];
          v20 = [v19 objectForKeyedSubscript:v18];

          v21 = sub_100001A30(@"pasteboard-server");
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if (v20)
          {
            if (v22)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "We have lock for the file, we are receiving the item and should not delete it at this time", buf, 2u);
            }

            v4 = v15;
          }

          else
          {
            if (v22)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Obtaining write lock to delete file", buf, 2u);
            }

            v30[4] = v13;
            v31 = 0;
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_1000167D4;
            v30[3] = &unk_1000C4E70;
            [v27 coordinateWritingItemAtURL:v17 options:1 error:&v31 byAccessor:v30];
            v23 = v31;
            v4 = v15;
            if (v23)
            {
              v24 = v23;
              v25 = sub_100001A30(@"pasteboard-server");
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v38 = v24;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error getting coord write for deleting item: %{public}@", buf, 0xCu);
              }
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v10);
    }

    v7 = 0;
    v6 = v26;
    v8 = v27;
  }
}

- (void)cleanupCloneDir
{
  v2 = [(UASharedPasteboardDataManager *)self fileURLForCloneItems];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v27 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v27];
  v6 = v27;

  v7 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  if (!v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v29 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempting to delete copied item: %{private}@", buf, 0xCu);
          }

          v14 = [NSURL fileURLWithPath:v3];
          v15 = [NSURL URLWithString:v12 relativeToURL:v14];

          v16 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Obtaining write lock to delete file", buf, 2u);
          }

          v21[4] = v12;
          v22 = 0;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100016C80;
          v21[3] = &unk_1000C4E70;
          [v7 coordinateWritingItemAtURL:v15 options:1 error:&v22 byAccessor:v21];
          v17 = v22;
          if (v17)
          {
            v18 = v17;
            v19 = sub_100001A30(@"pasteboard-server");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v29 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error getting coord write for deleting item: %{public}@", buf, 0xCu);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v9);
    }

    v6 = 0;
  }
}

@end