@interface PBPasteboardModel
+ (id)sharedModel;
- (id)_init;
- (id)workQueue_getAllPasteboardsOutError:(id *)error;
- (id)workQueue_pasteboardWithPersistenceName:(id)name name:(id)a4 localOnly:(BOOL)only deleteIfExpired:(BOOL)expired;
- (id)workQueue_saveGeneralPasteboardFromContinuityPasteboard:(id)pasteboard;
- (id)workQueue_unserializePasteboardWithPersistenceName:(id)name;
- (void)_pushRemotePasteboard:(id)pasteboard;
- (void)_remotePasteboardDidBecomeAvailable:(BOOL)available;
- (void)_remotePasteboardWillBeFetched:(id)fetched;
- (void)deleteOrphanedPasteboardFilesCompletionBlock:(id)block;
- (void)deletePasteboardNamed:(id)named bundleID:(id)d teamID:(id)iD completionBlock:(id)block;
- (void)getAllPasteboardsCompletionBlock:(id)block;
- (void)getExistingPasteboardWithPersistenceName:(id)name name:(id)a4 UUID:(id)d processInfo:(id)info completionBlock:(id)block;
- (void)getPasteboardWithPersistenceName:(id)name name:(id)a4 createIfNeeded:(BOOL)needed localOnly:(BOOL)only processInfo:(id)info deviceIsLocked:(BOOL)locked completionBlock:(id)block;
- (void)savePasteboard:(id)pasteboard deviceIslocked:(BOOL)islocked completionBlock:(id)block;
- (void)workQueue_createRemoteGeneralPasteboardWithChangeCount:(int64_t)count;
- (void)workQueue_deleteOrphanedPasteboardFiles;
- (void)workQueue_deletePasteboardWithPersistenceName:(id)name regenerateGeneralPasteboard:(BOOL)pasteboard;
- (void)workQueue_faultDataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block;
- (void)workQueue_faultMetadataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block;
- (void)workQueue_reallyFaultDataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block;
- (void)workQueue_reallyFaultMetadataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block;
- (void)workQueue_removeRemotePasteboardAndRestoreGeneralPasteboard;
@end

@implementation PBPasteboardModel

+ (id)sharedModel
{
  if (qword_100039230 != -1)
  {
    dispatch_once(&qword_100039230, &stru_100030B28);
  }

  v3 = qword_100039228;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PBPasteboardModel;
  v2 = [(PBPasteboardModel *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.pasteboard.PBPasteboardModel-work-queue", 0);
    [(PBPasteboardModel *)v2 setWorkQueue:v3];

    v4 = +[NSMutableDictionary dictionary];
    [(PBPasteboardModel *)v2 setWorkQueue_pasteboardCache:v4];
  }

  return v2;
}

- (id)workQueue_unserializePasteboardWithPersistenceName:(id)name
{
  nameCopy = name;
  v4 = PBStorageRootURL();
  v5 = [PBItemCollection unserializeCollectionFromBaseURL:v4 persistenceName:nameCopy outError:0];

  return v5;
}

- (id)workQueue_pasteboardWithPersistenceName:(id)name name:(id)a4 localOnly:(BOOL)only deleteIfExpired:(BOOL)expired
{
  expiredCopy = expired;
  onlyCopy = only;
  nameCopy = name;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  if (nameCopy && v11)
  {
    v14 = 5;
    while (1)
    {
      workQueue_pasteboardCache = [(PBPasteboardModel *)self workQueue_pasteboardCache];
      v13 = [workQueue_pasteboardCache objectForKeyedSubscript:nameCopy];

      if (!onlyCopy)
      {
        break;
      }

      if (!v13 || [v13 isRemote])
      {
        v16 = [(PBPasteboardModel *)self workQueue_unserializePasteboardWithPersistenceName:nameCopy];

        if (!v16)
        {
          goto LABEL_17;
        }

        workQueue_pasteboardCache2 = [(PBPasteboardModel *)self workQueue_pasteboardCache];
        v18 = [workQueue_pasteboardCache2 objectForKeyedSubscript:nameCopy];

        v13 = v16;
        if (!v18)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      if (!expiredCopy)
      {
        goto LABEL_19;
      }

      expirationDate = [v13 expirationDate];
      if (!expirationDate || (+[NSDate date](NSDate, "date"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 compare:expirationDate], v21, v22 != 1))
      {

        goto LABEL_19;
      }

      [(PBPasteboardModel *)self workQueue_deletePasteboardWithPersistenceName:nameCopy];
      if (!--v14)
      {
LABEL_17:
        v13 = 0;
        goto LABEL_19;
      }
    }

    if (v13)
    {
      goto LABEL_13;
    }

    v16 = [(PBPasteboardModel *)self workQueue_unserializePasteboardWithPersistenceName:nameCopy];
    if (!v16)
    {
      goto LABEL_17;
    }

LABEL_12:
    workQueue_pasteboardCache3 = [(PBPasteboardModel *)self workQueue_pasteboardCache];
    [workQueue_pasteboardCache3 setObject:v16 forKeyedSubscript:nameCopy];

    v13 = v16;
    goto LABEL_13;
  }

LABEL_19:

  return v13;
}

- (void)getPasteboardWithPersistenceName:(id)name name:(id)a4 createIfNeeded:(BOOL)needed localOnly:(BOOL)only processInfo:(id)info deviceIsLocked:(BOOL)locked completionBlock:(id)block
{
  nameCopy = name;
  v16 = a4;
  infoCopy = info;
  blockCopy = block;
  v19 = blockCopy;
  if (nameCopy && v16)
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002CC0;
    block[3] = &unk_100030B78;
    lockedCopy = locked;
    v21 = v26;
    v26[0] = nameCopy;
    v26[1] = self;
    v27 = v16;
    onlyCopy = only;
    neededCopy = needed;
    v28 = infoCopy;
    v29 = v19;
    dispatch_async(workQueue, block);

    v22 = v27;
LABEL_6:

    goto LABEL_7;
  }

  if (blockCopy)
  {
    v21 = &v24;
    v24 = blockCopy;
    v23 = v16;
    PBDispatchAsyncCallback();
    v22 = v23;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)getExistingPasteboardWithPersistenceName:(id)name name:(id)a4 UUID:(id)d processInfo:(id)info completionBlock:(id)block
{
  nameCopy = name;
  v13 = a4;
  dCopy = d;
  infoCopy = info;
  blockCopy = block;
  v17 = blockCopy;
  if (nameCopy && v13)
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000033F0;
    block[3] = &unk_100030BF0;
    block[4] = self;
    v23 = nameCopy;
    v24 = v13;
    v25 = dCopy;
    v27 = v17;
    v26 = infoCopy;
    dispatch_async(workQueue, block);

    v19 = v23;
LABEL_6:

    goto LABEL_7;
  }

  if (blockCopy)
  {
    v21 = blockCopy;
    v20 = v13;
    PBDispatchAsyncCallback();

    v19 = v21;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)savePasteboard:(id)pasteboard deviceIslocked:(BOOL)islocked completionBlock:(id)block
{
  islockedCopy = islocked;
  pasteboardCopy = pasteboard;
  blockCopy = block;
  if (islockedCopy)
  {
    name = [pasteboardCopy name];
    v11 = PBIsPasteboardNameGeneralPasteboard();

    if (v11)
    {
      v12 = _PBLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving general pasteboard as locked-device pasteboard.", buf, 2u);
      }

      [pasteboardCopy setDeviceLockedPasteboard:1];
      [pasteboardCopy setLocalOnly:1];
    }
  }

  workQueue = [(PBPasteboardModel *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000040D4;
  block[3] = &unk_100030C40;
  block[4] = self;
  v17 = pasteboardCopy;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = pasteboardCopy;
  dispatch_async(workQueue, block);
}

- (void)workQueue_deletePasteboardWithPersistenceName:(id)name regenerateGeneralPasteboard:(BOOL)pasteboard
{
  pasteboardCopy = pasteboard;
  nameCopy = name;
  if (nameCopy)
  {
    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting pasteboard named: %@", &v13, 0xCu);
    }

    if (pasteboardCopy && (v8 = PBGeneralPasteboardName, [nameCopy isEqualToString:PBGeneralPasteboardName]))
    {
      v9 = [[PBItemCollection alloc] initWithItems:0];
      [v9 setName:v8];
      v10 = [(PBPasteboardModel *)self workQueue_savePasteboard:v9 isServerToServerCopy:0 outNotificationState:0 outChangeCount:0];
    }

    else
    {
      v9 = sub_10000F8E0(nameCopy);
      v11 = +[NSFileManager defaultManager];
      [v11 removeItemAtURL:v9 error:0];

      workQueue_pasteboardCache = [(PBPasteboardModel *)self workQueue_pasteboardCache];
      [workQueue_pasteboardCache removeObjectForKey:nameCopy];
    }
  }
}

- (void)deletePasteboardNamed:(id)named bundleID:(id)d teamID:(id)iD completionBlock:(id)block
{
  namedCopy = named;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  workQueue = [(PBPasteboardModel *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000445C;
  block[3] = &unk_100030C90;
  v20 = namedCopy;
  v21 = dCopy;
  v22 = iDCopy;
  selfCopy = self;
  v24 = blockCopy;
  v15 = blockCopy;
  v16 = iDCopy;
  v17 = dCopy;
  v18 = namedCopy;
  dispatch_async(workQueue, block);
}

- (id)workQueue_getAllPasteboardsOutError:(id *)error
{
  v20 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  v4 = PBStorageRootURL();
  v30 = NSURLIsDirectoryKey;
  v5 = [NSArray arrayWithObjects:&v30 count:1];
  v6 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:1 errorHandler:0];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v22 = 0;
        [v12 getResourceValue:&v22 forKey:NSURLIsDirectoryKey error:0];
        v13 = v22;
        if ([v13 BOOLValue])
        {
          v14 = PBStorageRootURL();
          v21 = 0;
          v15 = [PBItemCollection unserializeCollectionFromPasteboardURL:v12 baseURL:v14 outError:&v21];
          v16 = v21;

          if (v15)
          {
            [v20 addObject:v15];
          }

          else
          {
            v17 = _PBLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v28 = v16;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Could not read pasteboard. Ignoring. Error: %@", buf, 0xCu);
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  if (error)
  {
    *error = 0;
  }

  return v20;
}

- (void)getAllPasteboardsCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(PBPasteboardModel *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000048B4;
  v7[3] = &unk_100030CB8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)workQueue_deleteOrphanedPasteboardFiles
{
  v2 = +[NSMutableSet set];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100004EAC;
  v45[3] = &unk_100030CE0;
  v33 = v2;
  v46 = v33;
  v31 = v3;
  [v3 enumerateApplicationsOfType:0 block:v45];
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v49 = v33;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Installed team IDs: %@", buf, 0xCu);
  }

  v32 = +[NSMutableArray array];
  v5 = +[NSFileManager defaultManager];
  v6 = PBStorageRootURL();
  v51 = NSURLIsDirectoryKey;
  v7 = [NSArray arrayWithObjects:&v51 count:1];
  v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:1 errorHandler:0];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v40 = 0;
        [v13 getResourceValue:&v40 forKey:NSURLIsDirectoryKey error:0];
        v15 = v40;
        if ([v15 BOOLValue])
        {
          v16 = PBStorageRootURL();
          v39 = 0;
          v17 = [PBItemCollection unserializeCollectionFromPasteboardURL:v13 baseURL:v16 outError:&v39];
          v18 = v39;

          if (v17)
          {
            if (([v17 isSystemPasteboard] & 1) == 0)
            {
              originatorTeamID = [v17 originatorTeamID];
              if (originatorTeamID && ([v33 containsObject:originatorTeamID] & 1) == 0)
              {
                persistenceName = [v17 persistenceName];
                [v32 addObject:persistenceName];
              }

              goto LABEL_16;
            }
          }

          else
          {
            originatorTeamID = _PBLog();
            if (os_log_type_enabled(originatorTeamID, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *v49 = v18;
              _os_log_fault_impl(&_mh_execute_header, originatorTeamID, OS_LOG_TYPE_FAULT, "Could not read pasteboard. Error: %@", buf, 0xCu);
            }

LABEL_16:
          }
        }

        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v10);
  }

  if ([v32 count])
  {
    v21 = _PBLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v32 count];
      *buf = 67109378;
      *v49 = v22;
      *&v49[4] = 2112;
      *&v49[6] = v32;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Removing %u pasteboards:\n%@", buf, 0x12u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v32;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          v29 = objc_autoreleasePoolPush();
          [(PBPasteboardModel *)self workQueue_deletePasteboardWithPersistenceName:v28];
          objc_autoreleasePoolPop(v29);
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v25);
    }
  }
}

- (void)deleteOrphanedPasteboardFilesCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(PBPasteboardModel *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004FF8;
  v7[3] = &unk_100030CB8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)_pushRemotePasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  v20 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = pasteboardCopy;
  obj = [pasteboardCopy items];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = objc_alloc_init(UAPasteboardItem);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        availableTypes = [v7 availableTypes];
        v10 = [availableTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(availableTypes);
              }

              v14 = [[PBRemotePasteboardItemProvider alloc] initWithType:*(*(&v22 + 1) + 8 * j) item:v7];
              [v8 addType:v14];
            }

            v11 = [availableTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        types = [v8 types];
        v16 = [types count];

        if (v16)
        {
          [v20 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  if ([v20 count])
  {
    v17 = [v20 copy];
    +[UASharedPasteboard localPasteboardDidAddItems:forGeneration:](UASharedPasteboard, "localPasteboardDidAddItems:forGeneration:", v17, [v18 changeCount]);
  }
}

- (void)workQueue_removeRemotePasteboardAndRestoreGeneralPasteboard
{
  workQueue_pasteboardCache = [(PBPasteboardModel *)self workQueue_pasteboardCache];
  v4 = PBGeneralPasteboardName;
  v5 = [workQueue_pasteboardCache objectForKeyedSubscript:PBGeneralPasteboardName];

  if (v5 && [v5 isRemote])
  {
    workQueue_pasteboardCache2 = [(PBPasteboardModel *)self workQueue_pasteboardCache];
    [workQueue_pasteboardCache2 removeObjectForKey:v4];

    v7 = [(PBPasteboardModel *)self workQueue_pasteboardWithPersistenceName:v4 name:v4 localOnly:0];
    if (!v7)
    {
      v7 = [[PBItemCollection alloc] initWithItems:&__NSArray0__struct];
      [v7 setName:v4];
    }

    v8 = _PBLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uUID = [v7 UUID];
      v13 = 136315650;
      v14 = "[PBPasteboardModel(ContinuityPasteboard) workQueue_removeRemotePasteboardAndRestoreGeneralPasteboard]";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = uUID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Removed remote pasteboard and replaced with pasteboard %@ with UUID %@", &v13, 0x20u);
    }

    [v7 setChangeCount:{objc_msgSend(v5, "changeCount") + 1}];
    v10 = PBStorageRootURL();
    v11 = [v7 serializeToBaseURL:v10];

    if (v11)
    {
      v12 = _PBLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315138;
        v14 = "[PBPasteboardModel(ContinuityPasteboard) workQueue_removeRemotePasteboardAndRestoreGeneralPasteboard]";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s: Could not save general pasteboard after removing remote pastedoard.", &v13, 0xCu);
      }
    }

    sub_10000F95C();
  }
}

- (void)workQueue_createRemoteGeneralPasteboardWithChangeCount:(int64_t)count
{
  v9 = objc_alloc_init(PBItemCollection);
  [v9 setIsRemote:1];
  v5 = +[UASharedPasteboard remotePasteboard];
  currentRemoteDeviceName = [v5 currentRemoteDeviceName];
  [v9 setRemoteDeviceName:currentRemoteDeviceName];

  v7 = PBGeneralPasteboardName;
  [v9 setName:PBGeneralPasteboardName];
  [v9 setChangeCount:count];
  workQueue_pasteboardCache = [(PBPasteboardModel *)self workQueue_pasteboardCache];
  [workQueue_pasteboardCache setObject:v9 forKeyedSubscript:v7];

  sub_10000F95C();
}

- (id)workQueue_saveGeneralPasteboardFromContinuityPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  workQueue_pasteboardCache = [(PBPasteboardModel *)self workQueue_pasteboardCache];
  v6 = PBGeneralPasteboardName;
  v7 = [workQueue_pasteboardCache objectForKeyedSubscript:PBGeneralPasteboardName];

  if (v7 == pasteboardCopy)
  {
    v9 = [PBItemCollection alloc];
    items = [pasteboardCopy items];
    v11 = [v9 initWithItems:items];

    [v11 setName:v6];
    [v11 setChangeCount:{objc_msgSend(pasteboardCopy, "changeCount")}];
    [v11 setIsOrWasRemote:{objc_msgSend(pasteboardCopy, "isOrWasRemote")}];
    remoteDeviceName = [pasteboardCopy remoteDeviceName];
    [v11 setRemoteDeviceName:remoteDeviceName];

    uUID = [pasteboardCopy UUID];
    [v11 setUUID:uUID];

    workQueue_pasteboardCache2 = [(PBPasteboardModel *)self workQueue_pasteboardCache];
    [workQueue_pasteboardCache2 setObject:v11 forKeyedSubscript:v6];

    v15 = PBStorageRootURL();
    v16 = [v11 serializeToBaseURL:v15];

    if (v16)
    {
      v17 = _PBLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v20 = 136315138;
        v21 = "[PBPasteboardModel(ContinuityPasteboard) workQueue_saveGeneralPasteboardFromContinuityPasteboard:]";
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s: Cannot save general pasteboard after retrieving it from remote pasteboard.", &v20, 0xCu);
      }
    }

    v18 = PBStorageRootURL();
    [v11 setStorageBaseURL:v18];

    v8 = v11;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)workQueue_reallyFaultMetadataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  blockCopy = block;
  v11 = objc_alloc_init(NSMutableArray);
  workQueue = [(PBPasteboardModel *)self workQueue];
  dispatch_suspend(workQueue);

  v13 = [infoCopy pid];
  v14 = _PBLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [infoCopy bundleID];
    *buf = 136315650;
    v26 = "[PBPasteboardModel(ContinuityPasteboard) workQueue_reallyFaultMetadataForRemotePasteboard:processInfo:completionBlock:]";
    v27 = 2112;
    v28 = bundleID;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Requesting remote pasteboard types for process with bundle ID %@, pid %d", buf, 0x1Cu);
  }

  v16 = +[UASharedPasteboard remotePasteboard];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012888;
  v20[3] = &unk_1000319A0;
  v21 = pasteboardCopy;
  selfCopy = self;
  v23 = v11;
  v24 = blockCopy;
  v17 = v11;
  v18 = pasteboardCopy;
  v19 = blockCopy;
  [v16 requestRemotePasteboardTypesForProcess:v13 withCompletion:v20];
}

- (void)workQueue_faultMetadataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  blockCopy = block;
  if ([pasteboardCopy isRemote] && !objc_msgSend(pasteboardCopy, "isRemoteMetadataLoaded"))
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    dispatch_suspend(workQueue);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100012FD4;
    v14[3] = &unk_1000319C8;
    v11 = v16;
    v16[0] = blockCopy;
    v12 = v15;
    v15[0] = pasteboardCopy;
    v15[1] = self;
    [(PBPasteboardModel *)self workQueue_reallyFaultMetadataForRemotePasteboard:v15[0] processInfo:infoCopy completionBlock:v14];
    goto LABEL_6;
  }

  if (blockCopy)
  {
    v16[1] = _NSConcreteStackBlock;
    v16[2] = 3221225472;
    v16[3] = sub_100012FBC;
    v16[4] = &unk_100030B50;
    v11 = &v18;
    v18 = blockCopy;
    v12 = &v17;
    v17 = pasteboardCopy;
    PBDispatchAsyncCallback();
LABEL_6:
  }
}

- (void)workQueue_reallyFaultDataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  blockCopy = block;
  v11 = objc_alloc_init(NSMutableArray);
  workQueue = [(PBPasteboardModel *)self workQueue];
  dispatch_suspend(workQueue);

  v13 = [infoCopy pid];
  v14 = _PBLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    bundleID = [infoCopy bundleID];
    *buf = 136315650;
    v26 = "[PBPasteboardModel(ContinuityPasteboard) workQueue_reallyFaultDataForRemotePasteboard:processInfo:completionBlock:]";
    v27 = 2112;
    v28 = bundleID;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Requesting remote pasteboard data for process with bundle ID %@, pid %d", buf, 0x1Cu);
  }

  v16 = +[UASharedPasteboard remotePasteboard];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100013320;
  v20[3] = &unk_1000319A0;
  v21 = pasteboardCopy;
  selfCopy = self;
  v23 = v11;
  v24 = blockCopy;
  v17 = v11;
  v18 = pasteboardCopy;
  v19 = blockCopy;
  [v16 requestRemotePasteboardDataForProcess:v13 withCompletion:v20];
}

- (void)workQueue_faultDataForRemotePasteboard:(id)pasteboard processInfo:(id)info completionBlock:(id)block
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  blockCopy = block;
  if ([pasteboardCopy isRemote] && !objc_msgSend(pasteboardCopy, "isRemoteDataLoaded"))
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    dispatch_suspend(workQueue);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013A78;
    v13[3] = &unk_100030BC8;
    v11 = v14;
    v13[4] = self;
    v14[0] = blockCopy;
    [(PBPasteboardModel *)self workQueue_reallyFaultDataForRemotePasteboard:pasteboardCopy processInfo:infoCopy completionBlock:v13];
    goto LABEL_6;
  }

  if (blockCopy)
  {
    v14[1] = _NSConcreteStackBlock;
    v14[2] = 3221225472;
    v14[3] = sub_100013A60;
    v14[4] = &unk_100030B50;
    v11 = &v16;
    v16 = blockCopy;
    v15 = pasteboardCopy;
    PBDispatchAsyncCallback();

LABEL_6:
  }
}

- (void)_remotePasteboardDidBecomeAvailable:(BOOL)available
{
  if (PBPreferencesBoolValue())
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100013C80;
    v6[3] = &unk_1000319F0;
    v6[4] = self;
    availableCopy = available;
    dispatch_async(workQueue, v6);
  }
}

- (void)_remotePasteboardWillBeFetched:(id)fetched
{
  fetchedCopy = fetched;
  if (PBPreferencesBoolValue())
  {
    workQueue = [(PBPasteboardModel *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013DCC;
    block[3] = &unk_100031600;
    v7 = fetchedCopy;
    dispatch_async(workQueue, block);
  }
}

@end