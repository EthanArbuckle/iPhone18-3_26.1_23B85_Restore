@interface UASharedPasteboardDataManager
+ (id)sharedInstance;
- (BOOL)createTmpArchiveFileWithUUID:(id)d;
- (BOOL)directoryExistsAtPath:(id)path;
- (BOOL)fileExistsForUUID:(id)d inSubFolder:(id)folder;
- (UASharedPasteboardDataManager)init;
- (id)createFileForLocalPasteboardBlob;
- (id)createFileForRemotePasteboardBlob;
- (id)createFileForUUID:(id)d inSubFolder:(id)folder;
- (id)createFolderAtPath:(id)path;
- (id)createSharedDataDirectory;
- (id)fileURLForArchiveWithUUID:(id)d;
- (id)fileURLForCloneItems;
- (id)fileURLForPasteboardItem:(id)item;
- (id)localPasteboardBlobForReading;
- (id)readHandleForArchiveWithUUID:(id)d;
- (id)remotePasteboardBlobForReading;
- (id)sharedDataPath;
- (id)subDirForItem:(id)item;
- (void)cancelAllLocks;
- (void)cleanupArchiveDir;
- (void)cleanupCloneDir;
- (void)cleanupForItem:(id)item;
- (void)cleanupItemsDir;
- (void)finishWritingArchiveForUUID:(id)d;
- (void)obtainLockForItem:(id)item completion:(id)completion;
- (void)releaseLockForItem:(id)item withError:(id)error;
- (void)writeArchiveData:(id)data forItem:(id)item;
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
    createSharedDataDirectory = [(UASharedPasteboardDataManager *)v2 createSharedDataDirectory];
    v5 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setTmpArchiveWriteFiles:v5];

    v6 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setLockTokens:v6];

    v7 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardDataManager *)v3 setProviders:v7];

    if (createSharedDataDirectory)
    {
      v8 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = createSharedDataDirectory;
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
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v9 = 0;
  [v3 createDirectoryAtPath:sharedDataPath withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v9];
  v5 = v9;

  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    sharedDataPath2 = [(UASharedPasteboardDataManager *)self sharedDataPath];
    *buf = 138412290;
    v11 = sharedDataPath2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[FILE MANAGER] Shared Path: %@", buf, 0xCu);
  }

  return v5;
}

- (BOOL)fileExistsForUUID:(id)d inSubFolder:(id)folder
{
  folderCopy = folder;
  uUIDString = [d UUIDString];
  if (folderCopy)
  {
    v8 = [folderCopy stringByAppendingPathComponent:uUIDString];

    uUIDString = v8;
  }

  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v10 = [sharedDataPath stringByAppendingPathComponent:uUIDString];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  return v12;
}

- (id)createFileForUUID:(id)d inSubFolder:(id)folder
{
  dCopy = d;
  folderCopy = folder;
  v8 = +[NSFileManager defaultManager];
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v10 = [v8 fileExistsAtPath:sharedDataPath];

  if ((v10 & 1) == 0)
  {
    createSharedDataDirectory = [(UASharedPasteboardDataManager *)self createSharedDataDirectory];
    if (createSharedDataDirectory)
    {
      uUIDString = createSharedDataDirectory;
      v13 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v28 = 138412290;
        v29 = uUIDString;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[FILE MANAGER] ERROR creating shared pasteboard dir: %@", &v28, 0xCu);
      }

LABEL_6:
      v14 = 0;
      goto LABEL_21;
    }
  }

  if (![(UASharedPasteboardDataManager *)self directoryExistsAtPath:folderCopy])
  {
    v15 = [(UASharedPasteboardDataManager *)self createFolderAtPath:folderCopy];
    if (!v15)
    {
      uUIDString = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_FAULT))
      {
        v28 = 138412290;
        v29 = folderCopy;
        _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_FAULT, "[FILE MANAGER] Error creating subdir: %@", &v28, 0xCu);
      }

      goto LABEL_6;
    }
  }

  uUIDString = [dCopy UUIDString];
  if (folderCopy)
  {
    v16 = [folderCopy stringByAppendingPathComponent:uUIDString];

    uUIDString = v16;
  }

  sharedDataPath2 = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v18 = [sharedDataPath2 stringByAppendingPathComponent:uUIDString];

  v19 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412546;
    v29 = dCopy;
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

- (BOOL)directoryExistsAtPath:(id)path
{
  pathCopy = path;
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [sharedDataPath stringByAppendingPathComponent:pathCopy];

  v9 = 0;
  v7 = +[NSFileManager defaultManager];
  LOBYTE(pathCopy) = [v7 fileExistsAtPath:v6 isDirectory:&v9];

  LOBYTE(v7) = v9;
  return pathCopy & v7;
}

- (id)createFolderAtPath:(id)path
{
  pathCopy = path;
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [sharedDataPath stringByAppendingPathComponent:pathCopy];

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
  currentLocalBlobPath = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (!currentLocalBlobPath)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 stringForKey:@"kLocalPasteboardBlobName"];
    [(UASharedPasteboardDataManager *)self setCurrentLocalBlobPath:v5];
  }

  currentLocalBlobPath2 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (currentLocalBlobPath2)
  {
    currentLocalBlobPath3 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];
    v8 = +[NSFileManager defaultManager];
    v23 = 0;
    [v8 removeItemAtPath:currentLocalBlobPath3 error:&v23];
    v9 = v23;

    v10 = sub_100001A30(@"pasteboard-server");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = currentLocalBlobPath3;
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
      v25 = currentLocalBlobPath3;
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
  currentLocalBlobPath = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];

  if (currentLocalBlobPath)
  {
    currentLocalBlobPath2 = [(UASharedPasteboardDataManager *)self currentLocalBlobPath];
    v5 = [NSFileHandle fileHandleForReadingAtPath:currentLocalBlobPath2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createFileForRemotePasteboardBlob
{
  currentRemoteBlobPath = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (!currentRemoteBlobPath)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 stringForKey:@"kRemotePasteboardBlobName"];
    [(UASharedPasteboardDataManager *)self setCurrentRemoteBlobPath:v5];
  }

  currentRemoteBlobPath2 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (currentRemoteBlobPath2)
  {
    currentRemoteBlobPath3 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];
    v8 = +[NSFileManager defaultManager];
    v23 = 0;
    [v8 removeItemAtPath:currentRemoteBlobPath3 error:&v23];
    v9 = v23;

    v10 = sub_100001A30(@"pasteboard-server");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = currentRemoteBlobPath3;
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
      v25 = currentRemoteBlobPath3;
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
  currentRemoteBlobPath = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];

  if (currentRemoteBlobPath)
  {
    currentRemoteBlobPath2 = [(UASharedPasteboardDataManager *)self currentRemoteBlobPath];
    v5 = [NSFileHandle fileHandleForReadingAtPath:currentRemoteBlobPath2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)subDirForItem:(id)item
{
  uUIDString = [item UUIDString];
  v4 = [NSString stringWithFormat:@"items/%@/", uUIDString];

  return v4;
}

- (id)fileURLForCloneItems
{
  v2 = +[UASharedPasteboardDataManager sharedInstance];
  sharedDataPath = [v2 sharedDataPath];
  v4 = [NSURL fileURLWithPath:sharedDataPath isDirectory:1];

  v5 = [v4 URLByAppendingPathComponent:@"type-clone"];

  v6 = +[NSFileManager defaultManager];
  path = [v5 path];
  LOBYTE(v4) = [v6 fileExistsAtPath:path];

  if ((v4 & 1) == 0)
  {
    v8 = +[NSFileManager defaultManager];
    path2 = [v5 path];
    v13 = 0;
    [v8 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v13];
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

- (id)fileURLForPasteboardItem:(id)item
{
  v4 = [(UASharedPasteboardDataManager *)self subDirForItem:item];
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [sharedDataPath stringByAppendingPathComponent:v4];

  v7 = [NSURL URLWithString:v6];

  return v7;
}

- (id)fileURLForArchiveWithUUID:(id)d
{
  dCopy = d;
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [sharedDataPath stringByAppendingPathComponent:@"archives"];

  uUIDString = [dCopy UUIDString];

  v8 = [v6 stringByAppendingPathComponent:uUIDString];
  v9 = [NSURL URLWithString:v8];

  return v9;
}

- (id)readHandleForArchiveWithUUID:(id)d
{
  v3 = [(UASharedPasteboardDataManager *)self fileURLForArchiveWithUUID:d];
  path = [v3 path];
  v5 = [NSFileHandle fileHandleForReadingAtPath:path];

  return v5;
}

- (BOOL)createTmpArchiveFileWithUUID:(id)d
{
  dCopy = d;
  v5 = [(UASharedPasteboardDataManager *)self createFileForUUID:dCopy inSubFolder:@"archives"];
  if (v5 && ([NSFileHandle fileHandleForWritingAtPath:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    tmpArchiveWriteFiles = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
    uUIDString = [dCopy UUIDString];
    [tmpArchiveWriteFiles setObject:v7 forKeyedSubscript:uUIDString];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)writeArchiveData:(id)data forItem:(id)item
{
  dataCopy = data;
  itemCopy = item;
  tmpArchiveWriteFiles = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
  uUIDString = [itemCopy UUIDString];
  v10 = [tmpArchiveWriteFiles objectForKeyedSubscript:uUIDString];

  if (v10)
  {
    v11 = v10;
    objc_sync_enter(v11);
    v16 = 0;
    v12 = [v11 writeData:dataCopy error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        uUIDString2 = [itemCopy UUIDString];
        *buf = 138543618;
        v18 = uUIDString2;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[File Manager] Error writting data for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    objc_sync_exit(v11);
  }
}

- (void)finishWritingArchiveForUUID:(id)d
{
  dCopy = d;
  tmpArchiveWriteFiles = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
  uUIDString = [dCopy UUIDString];
  v7 = [tmpArchiveWriteFiles objectForKeyedSubscript:uUIDString];

  if (v7)
  {
    v8 = v7;
    objc_sync_enter(v8);
    [v8 synchronizeFile];
    [v8 closeFile];
    tmpArchiveWriteFiles2 = [(UASharedPasteboardDataManager *)self tmpArchiveWriteFiles];
    uUIDString2 = [dCopy UUIDString];
    [tmpArchiveWriteFiles2 removeObjectForKey:uUIDString2];

    objc_sync_exit(v8);
  }
}

- (void)obtainLockForItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v8 = [(UASharedPasteboardDataManager *)self subDirForItem:itemCopy];
  v9 = [(UASharedPasteboardDataManager *)self createFolderAtPath:v8];
  v10 = [NSURL fileURLWithPath:v9 isDirectory:1];
  v11 = [[UASharedPasteboardFileProvider alloc] initWithURL:v10];
  providers = [(UASharedPasteboardDataManager *)self providers];
  [providers setObject:v11 forKeyedSubscript:itemCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015850;
  v14[3] = &unk_1000C4E48;
  v15 = completionCopy;
  v13 = completionCopy;
  [NSFileCoordinator _addFileProvider:v11 completionHandler:v14];
}

- (void)releaseLockForItem:(id)item withError:(id)error
{
  itemCopy = item;
  errorCopy = error;
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uUIDString = [itemCopy UUIDString];
    v15 = 138412290;
    v16 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[File Manager] Releasing lock for item %@", &v15, 0xCu);
  }

  providers = [(UASharedPasteboardDataManager *)self providers];
  v11 = [providers objectForKeyedSubscript:itemCopy];

  if (v11)
  {
    [v11 unlockWithError:errorCopy];
    [NSFileCoordinator _removeFileProvider:v11];
    providers2 = [(UASharedPasteboardDataManager *)self providers];
    [providers2 setObject:0 forKeyedSubscript:itemCopy];

    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      uUIDString2 = [itemCopy UUIDString];
      v15 = 138412290;
      v16 = uUIDString2;
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
  providers = [(UASharedPasteboardDataManager *)self providers];
  allValues = [providers allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 unlockWithError:v4];
        [NSFileCoordinator _removeFileProvider:v11];
      }

      v8 = [allValues countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  providers2 = [(UASharedPasteboardDataManager *)self providers];
  [providers2 removeAllObjects];
}

- (void)cleanupForItem:(id)item
{
  itemCopy = item;
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v6 = [sharedDataPath stringByAppendingPathComponent:@"items"];

  if (v6)
  {
    uUIDString = [itemCopy UUIDString];
    v8 = [v6 stringByAppendingPathComponent:uUIDString];

    v9 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v10 = [NSURL fileURLWithPath:v8];
    lockTokens = [(UASharedPasteboardDataManager *)self lockTokens];
    v12 = [lockTokens objectForKeyedSubscript:itemCopy];

    v13 = sub_100001A30(@"pasteboard-server");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (!v12)
    {
      if (v14)
      {
        *buf = 138543362;
        v30 = itemCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Obtaining write lock to delete file for item: %{public}@", buf, 0xCu);
      }

      v27 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100015FB0;
      v25[3] = &unk_1000C4E70;
      v26 = itemCopy;
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
      v30 = itemCopy;
      v19 = "Deleted file for item: %{public}@";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    [(UASharedPasteboardDataManager *)self releaseLockForItem:itemCopy];
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
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v3 = [sharedDataPath stringByAppendingPathComponent:@"archives"];

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
  sharedDataPath = [(UASharedPasteboardDataManager *)self sharedDataPath];
  v4 = [sharedDataPath stringByAppendingPathComponent:@"items"];

  v5 = +[NSFileManager defaultManager];
  v36 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v36];
  v7 = v36;

  v8 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  if (!v7)
  {
    v27 = v8;
    selfCopy = self;
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
          lockTokens = [(UASharedPasteboardDataManager *)selfCopy lockTokens];
          v20 = [lockTokens objectForKeyedSubscript:v18];

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
  fileURLForCloneItems = [(UASharedPasteboardDataManager *)self fileURLForCloneItems];
  path = [fileURLForCloneItems path];

  v4 = +[NSFileManager defaultManager];
  v27 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:path error:&v27];
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

          v14 = [NSURL fileURLWithPath:path];
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