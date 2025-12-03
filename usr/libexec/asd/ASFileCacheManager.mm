@interface ASFileCacheManager
+ (id)filenameFromKey:(id)key andCategory:(int64_t)category digest:(id)digest;
+ (id)sharedInstance;
- (ASFileCacheManager)init;
- (id)fileStorageURL;
- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)cleanupCache:(id)cache;
- (void)deleteAllCache:(id)cache;
- (void)deleteForKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)listCachedFilesOnDisk:(id)disk;
- (void)listExpiredEntries:(id)entries;
- (void)listFilesToBeRemoved:(id)removed withExpiredEntries:(id)entries andValidEntries:(id)validEntries completion:(id)completion;
- (void)listUnexpiredEntries:(id)entries;
- (void)quVb0ErcaaAyQJnG:(id)g completion:(id)completion;
@end

@implementation ASFileCacheManager

+ (id)sharedInstance
{
  if (qword_1006D7D30 != -1)
  {
    sub_100594C60();
  }

  v3 = qword_1006D7D28;

  return v3;
}

+ (id)filenameFromKey:(id)key andCategory:(int64_t)category digest:(id)digest
{
  digestCopy = digest;
  if (category)
  {
    v8 = [NSString stringWithFormat:@"c:%ld:k:%@", category, key];
    v9 = [v8 dataUsingEncoding:4];

    v10 = [NSMutableData dataWithLength:32];
    CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v10, "mutableBytes"));
    v11 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
    uUIDString = [v11 UUIDString];

    uUIDString2 = @"data";
  }

  else
  {
    v9 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(digestCopy, "bytes")}];
    uUIDString2 = [v9 UUIDString];
    uUIDString = @"p";
  }

  v14 = [NSString stringWithFormat:@"%@-%@.bin", uUIDString, uUIDString2];

  return v14;
}

- (id)fileStorageURL
{
  v2 = [(NSFileManager *)self->_fileManager URLsForDirectory:5 inDomains:1];
  firstObject = [v2 firstObject];
  v4 = [firstObject URLByAppendingPathComponent:@"CoreAS" isDirectory:1];
  v5 = [v4 URLByAppendingPathComponent:@"Cache" isDirectory:1];

  return v5;
}

- (ASFileCacheManager)init
{
  v18.receiver = self;
  v18.super_class = ASFileCacheManager;
  v2 = [(ASFileCacheManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxTTL = 129600.0;
    v4 = objc_alloc_init(NSFileManager);
    fileManager = v3->_fileManager;
    v3->_fileManager = v4;

    v6 = v3->_fileManager;
    fileStorageURL = [(ASFileCacheManager *)v3 fileStorageURL];
    v17 = 0;
    v8 = [(NSFileManager *)v6 createDirectoryAtURL:fileStorageURL withIntermediateDirectories:1 attributes:0 error:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = objc_opt_new();
      lock = v3->_lock;
      v3->_lock = v10;

      v12 = +[ASCoreDataManager sharedInstance];
      gFJw2BGPtEQWyLz5 = [v12 gFJw2BGPtEQWyLz5];
      managedObjectContext = v3->_managedObjectContext;
      v3->_managedObjectContext = gFJw2BGPtEQWyLz5;

      v15 = v3;
    }

    else
    {
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594C74();
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003A618;
  v22[4] = sub_10003A628;
  v23 = 0;
  v10 = +[NSDate date];
  [(NSLock *)self->_lock lock];
  managedObjectContext = self->_managedObjectContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A630;
  v15[3] = &unk_100690AF0;
  categoryCopy = category;
  v12 = keyCopy;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  selfCopy = self;
  v20 = v22;
  v14 = completionCopy;
  v19 = v14;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v15];

  _Block_object_dispose(v22, 8);
}

- (void)deleteForKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003A618;
  v22[4] = sub_10003A628;
  v23 = 0;
  v10 = +[NSDate date];
  [(NSLock *)self->_lock lock];
  managedObjectContext = self->_managedObjectContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003ABE0;
  v15[3] = &unk_100690AF0;
  categoryCopy = category;
  v12 = keyCopy;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  selfCopy = self;
  v20 = v22;
  v14 = completionCopy;
  v19 = v14;
  [(NSManagedObjectContext *)managedObjectContext performBlock:v15];

  _Block_object_dispose(v22, 8);
}

- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  completionCopy = completion;
  v13 = [NSMutableData dataWithLength:32];
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v13, "mutableBytes"));
  v14 = [ASFileCacheManager filenameFromKey:keyCopy andCategory:category digest:v13];
  fileStorageURL = [(ASFileCacheManager *)self fileStorageURL];
  v16 = [fileStorageURL URLByAppendingPathComponent:v14 isDirectory:1];

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10003A618;
  v35[4] = sub_10003A628;
  v36 = 0;
  maxTTL = self->_maxTTL;
  [(NSLock *)self->_lock lock];
  managedObjectContext = self->_managedObjectContext;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10003B2DC;
  v25[3] = &unk_100690B18;
  v25[4] = self;
  categoryCopy = category;
  v19 = v13;
  v26 = v19;
  v20 = v14;
  v27 = v20;
  v34 = maxTTL;
  v21 = keyCopy;
  v28 = v21;
  v22 = dataCopy;
  v29 = v22;
  v23 = v16;
  v30 = v23;
  v32 = v35;
  v24 = completionCopy;
  v31 = v24;
  [(NSManagedObjectContext *)managedObjectContext performBlock:v25];

  _Block_object_dispose(v35, 8);
}

- (void)quVb0ErcaaAyQJnG:(id)g completion:(id)completion
{
  gCopy = g;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10003A618;
  v33 = sub_10003A628;
  v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [gCopy count]);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_10003A618;
  v27[4] = sub_10003A628;
  v28 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_create("com.apple.asd.filecachemanager", 0);
  for (i = 0; [gCopy count] > i; ++i)
  {
    v10 = v30[5];
    v11 = +[NSNull null];
    [v10 addObject:v11];
  }

  for (j = 0; [gCopy count] > j; ++j)
  {
    v13 = [gCopy objectAtIndexedSubscript:j];
    dispatch_group_enter(v7);
    uUIDString = [v13 UUIDString];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003B7B8;
    v21[3] = &unk_100690B68;
    v22 = v8;
    v24 = v27;
    v25 = &v29;
    v26 = j;
    v23 = v7;
    [(ASFileCacheManager *)self fetchDataForKey:uUIDString andCategory:0 completion:v21];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BA58;
  block[3] = &unk_100690B90;
  v18 = completionCopy;
  v19 = v27;
  v20 = &v29;
  v15 = completionCopy;
  dispatch_group_notify(v7, v8, block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)listCachedFilesOnDisk:(id)disk
{
  fileManager = self->_fileManager;
  diskCopy = disk;
  fileStorageURL = [(ASFileCacheManager *)self fileStorageURL];
  v16 = 0;
  v7 = [(NSFileManager *)fileManager contentsOfDirectoryAtURL:fileStorageURL includingPropertiesForKeys:0 options:4 error:&v16];
  v8 = v16;

  +[NSMutableArray array];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10003BBD0;
  v15 = v14 = &unk_100690BB8;
  v9 = v15;
  [v7 enumerateObjectsUsingBlock:&v11];
  v10 = [NSArray arrayWithArray:v9, v11, v12, v13, v14];
  diskCopy[2](diskCopy, v10, v8);
}

- (void)listExpiredEntries:(id)entries
{
  entriesCopy = entries;
  v5 = +[DB_R151924382 fetchRequest];
  v6 = +[NSDate date];
  v7 = [NSPredicate predicateWithFormat:@"refreshedAt + ttl < %@", v6];

  [v5 setPredicate:v7];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v5];
  [v8 setResultType:0];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10003A618;
  v18[4] = sub_10003A628;
  v19 = 0;
  managedObjectContext = self->_managedObjectContext;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003BE04;
  v13[3] = &unk_100690BE0;
  v13[4] = self;
  v10 = v5;
  v14 = v10;
  v17 = v18;
  v11 = v8;
  v15 = v11;
  v12 = entriesCopy;
  v16 = v12;
  [(NSManagedObjectContext *)managedObjectContext performBlock:v13];

  _Block_object_dispose(v18, 8);
}

- (void)listUnexpiredEntries:(id)entries
{
  entriesCopy = entries;
  v5 = +[DB_R151924382 fetchRequest];
  v6 = +[NSDate date];
  v7 = [NSPredicate predicateWithFormat:@"refreshedAt + ttl >= %@", v6];

  [v5 setPredicate:v7];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10003A618;
  v15[4] = sub_10003A628;
  v16 = 0;
  managedObjectContext = self->_managedObjectContext;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003C1A8;
  v11[3] = &unk_100690C08;
  v11[4] = self;
  v9 = v5;
  v12 = v9;
  v14 = v15;
  v10 = entriesCopy;
  v13 = v10;
  [(NSManagedObjectContext *)managedObjectContext performBlock:v11];

  _Block_object_dispose(v15, 8);
}

- (void)listFilesToBeRemoved:(id)removed withExpiredEntries:(id)entries andValidEntries:(id)validEntries completion:(id)completion
{
  removedCopy = removed;
  entriesCopy = entries;
  validEntriesCopy = validEntries;
  completionCopy = completion;
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  v15 = +[NSMutableSet set];
  v16 = +[NSMutableSet set];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10003C624;
  v51[3] = &unk_100690C30;
  v17 = removedCopy;
  v52 = v17;
  v18 = v15;
  v53 = v18;
  v19 = v16;
  v54 = v19;
  v37 = validEntriesCopy;
  [validEntriesCopy enumerateObjectsUsingBlock:v51];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10003C6CC;
  v47[3] = &unk_100690C30;
  v20 = v18;
  v48 = v20;
  v21 = v14;
  v49 = v21;
  v22 = v19;
  v50 = v22;
  v38 = entriesCopy;
  [entriesCopy enumerateObjectsUsingBlock:v47];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v43 + 1) + 8 * i);
        if ([v17 containsObject:v28])
        {
          [v13 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v25);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = v17;
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v39 + 1) + 8 * j);
        if (([v20 containsObject:v34] & 1) == 0)
        {
          [v13 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v31);
  }

  allObjects = [v13 allObjects];
  allObjects2 = [v22 allObjects];
  completionCopy[2](completionCopy, allObjects, allObjects2);
}

- (void)deleteAllCache:(id)cache
{
  cacheCopy = cache;
  lock = [(ASFileCacheManager *)self lock];
  [lock lock];

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = dispatch_queue_create("com.apple.asd.filecachemanager.purge", 0);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_10003A618;
  v24[4] = sub_10003A628;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003A618;
  v22[4] = sub_10003A628;
  v23 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003CA28;
  v19[3] = &unk_100690C58;
  v8 = v6;
  v20 = v8;
  selfCopy = self;
  [(ASFileCacheManager *)self listCachedFilesOnDisk:v19];
  dispatch_group_enter(v8);
  managedObjectContext = [(ASFileCacheManager *)self managedObjectContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003CC54;
  v16[3] = &unk_100690C80;
  v16[4] = self;
  v18 = v22;
  v10 = v8;
  v17 = v10;
  [managedObjectContext performBlock:v16];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CDC0;
  block[3] = &unk_100690CA8;
  v14 = v24;
  v15 = v22;
  block[4] = self;
  v13 = cacheCopy;
  v11 = cacheCopy;
  dispatch_group_notify(v10, v7, block);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

- (void)cleanupCache:(id)cache
{
  cacheCopy = cache;
  [(NSLock *)self->_lock lock];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003CF70;
  v9[3] = &unk_10068EDA0;
  v9[4] = self;
  v10 = cacheCopy;
  v5 = cacheCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003CFD0;
  v7[3] = &unk_100690D70;
  v7[4] = self;
  v8 = objc_retainBlock(v9);
  v6 = v8;
  [(ASFileCacheManager *)self listCachedFilesOnDisk:v7];
}

@end