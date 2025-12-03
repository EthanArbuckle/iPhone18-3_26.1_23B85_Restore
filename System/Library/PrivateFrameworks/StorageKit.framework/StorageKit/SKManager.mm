@interface SKManager
+ (BOOL)isMountPointWithPath:(id)path;
+ (id)BSDNameFromString:(id)string;
+ (id)initializedManager;
+ (id)sharedManager;
+ (id)sharedManagerWithBindingsSafety:(BOOL)safety;
+ (id)syncSharedManager;
- (BOOL)isBusy;
- (OS_dispatch_queue)callbackQueue;
- (SKManager)initWithBindingSafety:(BOOL)safety;
- (id)_diskForPath:(id)path;
- (id)_diskForString:(id)string;
- (id)allDisks;
- (id)allDisksSet;
- (id)childDisksForWholeDisk:(id)disk;
- (id)diskForBSDname:(id)dname;
- (id)diskForPath:(id)path;
- (id)diskForString:(id)string;
- (id)diskForUUID:(id)d;
- (id)diskForVolumeName:(id)name;
- (id)filesystemWithSKType:(id)type isCaseSensitive:(BOOL)sensitive isEncrypted:(BOOL)encrypted;
- (id)filesystems;
- (id)formatableFileSystems;
- (id)knownDiskForDictionary:(id)dictionary;
- (id)knownDiskForDictionary:(id)dictionary waitingForDaemon:(BOOL)daemon fromSet:(id)set;
- (id)knownDisksForDictionaries:(id)dictionaries;
- (id)newDiskWithDictionary:(id)dictionary;
- (id)physicalStoresForAPFSVolume:(id)volume;
- (id)visibleDisks;
- (id)volumesForAPFSPS:(id)s;
- (id)wholeDiskForDisk:(id)disk;
- (void)_disksAppeared:(id)appeared toListener:(id)listener;
- (void)_initialPopulateCompleteForListener:(id)listener;
- (void)addListener:(id)listener;
- (void)disksAppeared:(id)appeared;
- (void)disksChanged:(id)changed;
- (void)disksDisappeared:(id)disappeared;
- (void)initialPopulateComplete;
- (void)knownDiskForDictionary:(id)dictionary notify:(id)notify onQueue:(id)queue;
- (void)managerResumed;
- (void)managerStalled;
- (void)removeListener:(id)listener;
- (void)setCallbackQueue:(id)queue;
- (void)setVisibleRoles:(id)roles;
- (void)syncAllDisks;
@end

@implementation SKManager

+ (id)sharedManagerWithBindingsSafety:(BOOL)safety
{
  if (safety)
  {
    +[SKManager sharedManagerWithBindingsSafety:];
  }

  return +[SKManager sharedManager];
}

+ (id)sharedManager
{
  if (NSClassFromString(&cfstr_Skdaemonmanage.isa))
  {
    v3 = +[SKBaseManager sharedManager];
    [v3 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_0];

    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_FAULT, "Client sharedManager has been called from the daemon.", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SKManager_sharedManager__block_invoke_27;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v5 = sSharedManager;

  return v5;
}

id __26__SKManager_sharedManager__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKManager.m", 63);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void __26__SKManager_sharedManager__block_invoke_27(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___SKManager;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = sSharedManager;
  sSharedManager = v1;
}

- (SKManager)initWithBindingSafety:(BOOL)safety
{
  v21.receiver = self;
  v21.super_class = SKManager;
  v4 = [(SKBaseManager *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_shouldBeBindingsSafe = safety;
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
    allDisks = v5->allDisks;
    v5->allDisks = v6;

    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    listenersAppearedDisks = v5->_listenersAppearedDisks;
    v5->_listenersAppearedDisks = v8;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v5->_listeners;
    v5->_listeners = weakObjectsHashTable;

    v12 = objc_opt_new();
    waitingForDiskSet = v5->_waitingForDiskSet;
    v5->_waitingForDiskSet = v12;

    v14 = dispatch_queue_create("com.apple.SKManager.waitingForDisk", 0);
    waitingForDiskQueue = v5->_waitingForDiskQueue;
    v5->_waitingForDiskQueue = v14;

    v16 = +[SKManager defaultVisibleRoles];
    visibleRoles = v5->_visibleRoles;
    v5->_visibleRoles = v16;

    v18 = dispatch_queue_create("com.apple.SKManager.frameworkOperations", MEMORY[0x277D85CD8]);
    frameworkAsyncOperationsQueue = v5->_frameworkAsyncOperationsQueue;
    v5->_frameworkAsyncOperationsQueue = v18;
  }

  return v5;
}

+ (id)syncSharedManager
{
  sharedManager = [self sharedManager];
  [sharedManager syncAllDisks];

  return sharedManager;
}

+ (id)initializedManager
{
  sharedManager = [self sharedManager];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SKManager_initializedManager__block_invoke;
  block[3] = &unk_279D1F5B0;
  v3 = sharedManager;
  v6 = v3;
  if (initializedManager_once != -1)
  {
    dispatch_once(&initializedManager_once, block);
  }

  return v3;
}

- (OS_dispatch_queue)callbackQueue
{
  v2 = +[SKHelperClient sharedClient];
  callbackQueue = [v2 callbackQueue];

  return callbackQueue;
}

- (void)setCallbackQueue:(id)queue
{
  queueCopy = queue;
  v4 = +[SKHelperClient sharedClient];
  [v4 setCallbackQueue:queueCopy];
}

- (id)allDisks
{
  v3 = self->allDisks;
  objc_sync_enter(v3);
  allObjects = [(NSMutableSet *)self->allDisks allObjects];
  objc_sync_exit(v3);

  return allObjects;
}

- (id)allDisksSet
{
  v3 = self->allDisks;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)self->allDisks copy];
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)isBusy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = +[SKHelperClient sharedClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__SKManager_isBusy__block_invoke;
  v4[3] = &unk_279D1F5D8;
  v4[4] = &v5;
  [v2 isBusyWithBlocking:1 completionBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)syncAllDisks
{
  v2 = +[SKHelperClient sharedClient];
  [v2 syncAllDisks];
}

- (void)setVisibleRoles:(id)roles
{
  rolesCopy = roles;
  v4 = self->allDisks;
  objc_sync_enter(v4);
  v5 = [rolesCopy copy];
  visibleRoles = self->_visibleRoles;
  self->_visibleRoles = v5;

  objc_sync_exit(v4);
}

- (id)visibleDisks
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v4 = self->allDisks;
  objc_sync_enter(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->allDisks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        role = [v9 role];
        if ([(NSSet *)self->_visibleRoles containsObject:role])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)diskForBSDname:(id)dname
{
  v20 = *MEMORY[0x277D85DE8];
  dnameCopy = dname;
  if (dnameCopy)
  {
    v5 = self->allDisks;
    objc_sync_enter(v5);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->allDisks;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          diskIdentifier = [v10 diskIdentifier];
          v12 = [diskIdentifier isEqualToString:dnameCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)diskForUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  obj = self->allDisks;
  objc_sync_enter(obj);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->allDisks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        volumeUUID = [v9 volumeUUID];
        if ([volumeUUID isEqualToString:dCopy])
        {

LABEL_13:
          v13 = [(SKManager *)self contentDiskWithDisk:v9];
          goto LABEL_14;
        }

        mediaUUID = [v9 mediaUUID];
        v12 = [mediaUUID isEqualToString:dCopy];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v13 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  objc_sync_exit(obj);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)diskForVolumeName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = self->allDisks;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->allDisks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        volumeName = [v10 volumeName];
        v12 = [volumeName isEqualToString:nameCopy];

        if (v12)
        {
          v13 = [(SKManager *)self contentDiskWithDisk:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_sync_exit(v5);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)isMountPointWithPath:(id)path
{
  v7 = 0;
  v6 = 0;
  v5[1] = 0x400000000;
  v5[2] = 0;
  v5[0] = 0x800000005;
  v3 = getattrlist([path fileSystemRepresentation], v5, &v6, 0xCuLL, 0);
  result = 0;
  if (!v3)
  {
    return (HIDWORD(v6) == 2) & v7;
  }

  return result;
}

+ (id)BSDNameFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"apfs://disk"])
  {
    v4 = stringCopy;
  }

  else
  {
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\/dev\\/)?r?(disk\\d+(s\\d+){0 options:2})$" error:{1, 0}];
    v6 = [v5 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v7 = v6;
    if (v6 && [v6 count] == 1 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "numberOfRanges"), v8, v9 >= 3))
    {
      v10 = [v7 objectAtIndexedSubscript:0];
      v11 = [v10 rangeAtIndex:2];
      v4 = [stringCopy substringWithRange:{v11, v12}];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_diskForString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  memset(uu, 0, sizeof(uu));
  if ([stringCopy length] != 36 || uuid_parse(objc_msgSend(stringCopy, "UTF8String"), uu) || (-[SKManager diskForUUID:](self, "diskForUUID:", stringCopy), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [objc_opt_class() BSDNameFromString:stringCopy];
    if (v5)
    {
      v6 = [(SKManager *)self diskForBSDname:v5];
LABEL_5:
      v7 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [(SKManager *)self _diskForPath:stringCopy];
    if (v8 && [SKManager isMountPointWithPath:stringCopy])
    {
      v9 = v8;
    }

    else
    {
      v6 = [(SKManager *)self diskForVolumeName:stringCopy];

      if (!v6)
      {
        goto LABEL_5;
      }

      v9 = v6;
    }

    v7 = v9;
    v6 = v9;
    goto LABEL_12;
  }

  v7 = v12;
  v6 = v7;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)diskForString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v6 = [(SKManager *)self _diskForString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      [(SKManager *)self syncAllDisks];
      v8 = [(SKManager *)self _diskForString:v5];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_diskForPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v27 = 0u;
  memset(v28, 0, 432);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (([pathCopy isEqualToString:@"/"] & 1) == 0)
  {
    v5 = open([pathCopy fileSystemRepresentation], 2129920);
    if (v5 != -1)
    {
      v6 = v5;
      if (!fstatfs_ext())
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28 + 8];

        pathCopy = v7;
      }

      close(v6);
    }
  }

  v8 = self->allDisks;
  objc_sync_enter(v8);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->allDisks;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        mountPoint = [v13 mountPoint];
        v15 = [mountPoint isEqualToString:pathCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_16;
        }
      }

      v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  objc_sync_exit(v8);
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)diskForPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && [pathCopy length])
  {
    v6 = [(SKManager *)self _diskForPath:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      [(SKManager *)self syncAllDisks];
      v8 = [(SKManager *)self _diskForPath:v5];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)wholeDiskForDisk:(id)disk
{
  diskCopy = disk;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if ([diskCopy isWholeDisk])
  {
    v5 = diskCopy;
LABEL_3:
    v6 = v5;
    goto LABEL_7;
  }

  cachedWholeDiskByIdentifier = [diskCopy cachedWholeDiskByIdentifier];
  if (!cachedWholeDiskByIdentifier)
  {
    [(SKManager *)self syncAllDisks];
    cachedWholeDiskByIdentifier = [diskCopy cachedWholeDiskByIdentifier];
    if (!cachedWholeDiskByIdentifier)
    {
      v9 = +[SKHelperClient sharedClient];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __30__SKManager_wholeDiskForDisk___block_invoke;
      v10[3] = &unk_279D1F600;
      v10[4] = &v11;
      [v9 wholeDiskForDisk:diskCopy blocking:1 withCallbackBlock:v10];

      v5 = v12[5];
      goto LABEL_3;
    }
  }

  v6 = cachedWholeDiskByIdentifier;

LABEL_7:
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)childDisksForWholeDisk:(id)disk
{
  diskCopy = disk;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  type = [diskCopy type];
  v6 = [type isEqualToString:kSKDiskTypeRAID[0]];

  if ((v6 & 1) == 0 && (([diskCopy children], (v9 = objc_claimAutoreleasedReturnValue()) != 0) || (-[SKManager syncAllDisks](self, "syncAllDisks"), objc_msgSend(diskCopy, "children"), (v9 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v8 = v9;
  }

  else
  {
    v7 = +[SKHelperClient sharedClient];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__SKManager_childDisksForWholeDisk___block_invoke;
    v11[3] = &unk_279D1F628;
    v11[4] = &v12;
    [v7 childDisksForWholeDisk:diskCopy blocking:1 withCallbackBlock:v11];

    v8 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)filesystems
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__SKManager_filesystems__block_invoke;
  block[3] = &unk_279D1F5B0;
  block[4] = self;
  if (filesystems_onceToken != -1)
  {
    dispatch_once(&filesystems_onceToken, block);
  }

  return self->_filesystems;
}

void __24__SKManager_filesystems__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
  v3 = +[SKHelperClient sharedClient];
  v4 = [v3 retrieveFilesystems];

  v5 = SKGetOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_DEFAULT, "Initializing filesystems dictionary", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [SKFilesystem alloc];
        v13 = [(SKFilesystem *)v12 initWithDictionaryRepresentation:v11, v17];
        [v2 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v2;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)formatableFileSystems
{
  v17 = *MEMORY[0x277D85DE8];
  filesystems = [(SKManager *)self filesystems];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = filesystems;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 shouldShow])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)filesystemWithSKType:(id)type isCaseSensitive:(BOOL)sensitive isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  sensitiveCopy = sensitive;
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [(SKManager *)self filesystems];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        type = [v14 type];
        if ([type isEqualToString:typeCopy] && objc_msgSend(v14, "isCaseSensitive") == sensitiveCopy)
        {
          isEncrypted = [v14 isEncrypted];

          if (isEncrypted == encryptedCopy)
          {
            v17 = v14;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)physicalStoresForAPFSVolume:(id)volume
{
  volumeCopy = volume;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v4 = +[SKHelperClient sharedClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SKManager_physicalStoresForAPFSVolume___block_invoke;
  v7[3] = &unk_279D1F628;
  v7[4] = &v8;
  [v4 physicalStoresForAPFSVolume:volumeCopy blocking:1 completionBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)volumesForAPFSPS:(id)s
{
  sCopy = s;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v4 = +[SKHelperClient sharedClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SKManager_volumesForAPFSPS___block_invoke;
  v7[3] = &unk_279D1F628;
  v7[4] = &v8;
  [v4 volumesForAPFSPS:sCopy blocking:1 completionBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)knownDisksForDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  allDisksSet = [(SKManager *)self allDisksSet];
  v6 = [(SKManager *)self knownDisksForDictionaries:dictionariesCopy waitingForDaemon:1 fromSet:allDisksSet];

  return v6;
}

id __64__SKManager_knownDisksForDictionaries_waitingForDaemon_fromSet___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKManager.m", 565);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)knownDiskForDictionary:(id)dictionary notify:(id)notify onQueue:(id)queue
{
  dictionaryCopy = dictionary;
  notifyCopy = notify;
  queueCopy = queue;
  if (dictionaryCopy)
  {
    allDisksSet = [(SKManager *)self allDisksSet];
    v12 = [(SKManager *)self knownDiskForDictionary:dictionaryCopy waitingForDaemon:0 fromSet:allDisksSet];

    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SKManager_knownDiskForDictionary_notify_onQueue___block_invoke_2;
      block[3] = &unk_279D1F678;
      v22 = notifyCopy;
      v12 = v12;
      v21 = v12;
      dispatch_async(queueCopy, block);

      v13 = v22;
    }

    else
    {
      v14 = dispatch_time(0, 100000000);
      v15 = dispatch_get_global_queue(0, 0);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__SKManager_knownDiskForDictionary_notify_onQueue___block_invoke_3;
      v16[3] = &unk_279D1F6A0;
      v16[4] = self;
      v17 = dictionaryCopy;
      v19 = notifyCopy;
      v18 = queueCopy;
      dispatch_after(v14, v15, v16);

      v13 = v17;
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__SKManager_knownDiskForDictionary_notify_onQueue___block_invoke;
    v23[3] = &unk_279D1F650;
    v24 = notifyCopy;
    dispatch_async(queueCopy, v23);
    v12 = v24;
  }
}

- (id)knownDiskForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  allDisksSet = [(SKManager *)self allDisksSet];
  v6 = [(SKManager *)self knownDiskForDictionary:dictionaryCopy waitingForDaemon:1 fromSet:allDisksSet];

  return v6;
}

- (id)knownDiskForDictionary:(id)dictionary waitingForDaemon:(BOOL)daemon fromSet:(id)set
{
  daemonCopy = daemon;
  v50 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  setCopy = set;
  if (dictionaryCopy && ([MEMORY[0x277CBEB68] null], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(dictionaryCopy, "isEqual:", v10), v10, (v11 & 1) == 0))
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v13 = dispatch_semaphore_create(0);
    waitingForDiskQueue = self->_waitingForDiskQueue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __61__SKManager_knownDiskForDictionary_waitingForDaemon_fromSet___block_invoke;
    v29 = &unk_279D1F6F0;
    v30 = setCopy;
    v15 = dictionaryCopy;
    v31 = v15;
    v34 = &v36;
    v35 = daemonCopy;
    v16 = v13;
    v32 = v16;
    selfCopy = self;
    dispatch_sync(waitingForDiskQueue, &v26);
    v17 = v37;
    if (daemonCopy && !v37[5])
    {
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v37;
      if (!v37[5])
      {
        v18 = [SKBaseManager sharedManager:v26];
        [v18 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_69];

        v19 = SKGetOSLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = [v15 objectForKey:@"volumeName"];
          v21 = [v15 objectForKey:@"volumeUUID"];
          v22 = [v15 objectForKey:@"diskIdentifier"];
          v23 = [v15 objectForKey:@"mountPoint"];
          *buf = 138413058;
          v43 = v20;
          v44 = 2114;
          v45 = v21;
          v46 = 2114;
          v47 = v22;
          v48 = 2112;
          v49 = v23;
          _os_log_impl(&dword_26BBB8000, v19, OS_LOG_TYPE_FAULT, "SKManager: no daemon-known disk resembling: {%@,%{public}@,%{public}@,%@}", buf, 0x2Au);
        }

        v17 = v37;
      }
    }

    v12 = v17[5];

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v12 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

void __61__SKManager_knownDiskForDictionary_waitingForDaemon_fromSet___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if ([v7 matchesDictionary:*(a1 + 40)])
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*(a1 + 72) == 1 && !*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = objc_alloc_init(SKWaitingForDiskElement);
    [(SKWaitingForDiskElement *)v8 setDiskDictionary:*(a1 + 40)];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __61__SKManager_knownDiskForDictionary_waitingForDaemon_fromSet___block_invoke_2;
    v13 = &unk_279D1F6C8;
    v15 = *(a1 + 64);
    v14 = *(a1 + 48);
    [(SKWaitingForDiskElement *)v8 setBlock:&v10];
    [*(*(a1 + 56) + 64) addObject:{v8, v10, v11, v12, v13}];
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

void __61__SKManager_knownDiskForDictionary_waitingForDaemon_fromSet___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __61__SKManager_knownDiskForDictionary_waitingForDaemon_fromSet___block_invoke_3()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKManager.m", 650);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)newDiskWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"type"];
  v5 = [dictionaryCopy objectForKey:@"**ClassName**"];
  if ([v4 isEqualToString:kSKDiskTypeAPFSPS[0]] && (objc_msgSend(v5, "isEqualToString:", @"SKAPFSStoreDisk") & 1) != 0)
  {
    v6 = off_279D1F1D0;
  }

  else if ([v4 isEqualToString:kSKDiskTypeAPFSContainer[0]] && (objc_msgSend(v5, "isEqualToString:", @"SKAPFSContainerDisk") & 1) != 0)
  {
    v6 = off_279D1F1B8;
  }

  else if ([v4 isEqualToString:kSKDiskTypeAPFSLV[0]] && (objc_msgSend(v5, "isEqualToString:", @"SKAPFSDisk") & 1) != 0)
  {
    v6 = off_279D1F1C0;
  }

  else if ([v5 isEqualToString:@"SKAPFSSnapshotDisk"])
  {
    v6 = off_279D1F1C8;
  }

  else
  {
    if (([v5 isEqualToString:@"SKDisk"] & 1) == 0)
    {
      [SKManager newDiskWithDictionary:v5];
    }

    v6 = off_279D1F230;
  }

  v7 = [objc_alloc(*v6) initWithDictionary:dictionaryCopy];

  return v7;
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  [(NSHashTable *)self->_listeners addObject:listenerCopy];
  listenersAppearedDisks = self->_listenersAppearedDisks;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(listenerCopy, "hash")}];
  [(NSMutableDictionary *)listenersAppearedDisks setObject:v7 forKey:v8];

  allDisks = [(SKManager *)self allDisks];
  v10 = [allDisks count];

  if (v10)
  {
    v11 = +[SKHelperClient sharedClient];
    xpcQueue = [v11 xpcQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SKManager_addListener___block_invoke;
    block[3] = &unk_279D1F718;
    block[4] = self;
    v18 = listenerCopy;
    dispatch_async(xpcQueue, block);
  }

  objc_sync_exit(v5);

  v13 = +[SKHelperClient sharedClient];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __25__SKManager_addListener___block_invoke_2;
  v15[3] = &unk_279D1F718;
  v15[4] = self;
  v16 = listenerCopy;
  v14 = listenerCopy;
  [v13 syncAllDisksWithCompletionBlock:v15];
}

void __25__SKManager_addListener___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 allDisks];
  [v2 _disksAppeared:v3 toListener:*(a1 + 40)];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_listeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_listeners removeObject:listenerCopy];
  listenersAppearedDisks = self->_listenersAppearedDisks;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(listenerCopy, "hash")}];
  [(NSMutableDictionary *)listenersAppearedDisks removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)initialPopulateComplete
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_listeners;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(SKManager *)self _initialPopulateCompleteForListener:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initialPopulateCompleteForListener:(id)listener
{
  listenerCopy = listener;
  callbackQueue = [(SKManager *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKManager__initialPopulateCompleteForListener___block_invoke;
  block[3] = &unk_279D1F5B0;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_async(callbackQueue, block);
}

uint64_t __49__SKManager__initialPopulateCompleteForListener___block_invoke(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "CLIENT - Initial Populate Complete", v5, 2u);
  }

  v3 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 32) initialPopulateComplete];
  }

  return result;
}

- (void)disksAppeared:(id)appeared
{
  v42 = *MEMORY[0x277D85DE8];
  appearedCopy = appeared;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(appearedCopy, "count")}];
  v6 = [MEMORY[0x277CBEB58] set];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = appearedCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [(SKManager *)self knownDiskForDictionary:v11 waitingForDaemon:0];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = [(SKManager *)self newDiskWithDictionary:v11];
          [v5 addObject:v14];
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  waitingForDiskQueue = self->_waitingForDiskQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SKManager_disksAppeared___block_invoke;
  block[3] = &unk_279D1F740;
  block[4] = self;
  v16 = v5;
  v30 = v16;
  v31 = &v36;
  dispatch_sync(waitingForDiskQueue, block);
  if ([v6 count])
  {
    allObjects = [v6 allObjects];
    [(SKManager *)self disksChanged:allObjects];
  }

  v18 = self->_listeners;
  objc_sync_enter(v18);
  allObjects2 = [v16 allObjects];
  SKLogArrayRedacted(v37[24], "CLIENT - Disks appeared:", allObjects2);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_listeners;
  v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v21)
  {
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [(SKManager *)self _disksAppeared:allObjects2 toListener:*(*(&v25 + 1) + 8 * j), v25];
      }

      v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
    }

    while (v21);
  }

  objc_sync_exit(v18);
  _Block_object_dispose(&v36, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __27__SKManager_disksAppeared___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 64) count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v1;
    obj = *(v1 + 40);
    v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v23 + 1) + 8 * i);
          v4 = objc_opt_new();
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v5 = *(*(v18 + 32) + 64);
          v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v6)
          {
            v7 = *v20;
            do
            {
              for (j = 0; j != v6; ++j)
              {
                if (*v20 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v19 + 1) + 8 * j);
                v10 = [v9 diskDictionary];
                v11 = [v3 matchesDictionary:v10];

                if (v11)
                {
                  v12 = [v9 block];
                  (v12)[2](v12, v3);

                  [v4 addObject:v9];
                }
              }

              v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v6);
          }

          [*(*(v18 + 32) + 64) minusSet:v4];
        }

        v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v17);
    }

    v1 = v18;
  }

  v13 = *(*(v1 + 32) + 24);
  objc_sync_enter(v13);
  if ([*(*(v1 + 32) + 24) count])
  {
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }

  [*(*(v1 + 32) + 24) unionSet:*(v1 + 40)];
  objc_sync_exit(v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_disksAppeared:(id)appeared toListener:(id)listener
{
  appearedCopy = appeared;
  listenerCopy = listener;
  if (objc_opt_respondsToSelector())
  {
    listenersAppearedDisks = self->_listenersAppearedDisks;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(listenerCopy, "hash")}];
    v10 = [(NSMutableDictionary *)listenersAppearedDisks objectForKey:v9];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([listenerCopy visibleDiskRoles], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = MEMORY[0x277CCAC30];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __39__SKManager__disksAppeared_toListener___block_invoke;
      v20[3] = &unk_279D1F768;
      v21 = v10;
      v22 = listenerCopy;
      v13 = [v12 predicateWithBlock:v20];
      v14 = [appearedCopy filteredArrayUsingPredicate:v13];
    }

    else
    {
      v14 = appearedCopy;
    }

    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    [v10 unionSet:v15];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__SKManager__disksAppeared_toListener___block_invoke_2;
    v17[3] = &unk_279D1F718;
    v18 = v14;
    v19 = listenerCopy;
    v16 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v17);
  }
}

uint64_t __39__SKManager__disksAppeared_toListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) visibleDiskRoles];
    v6 = [v3 role];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

uint64_t __39__SKManager__disksAppeared_toListener___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 disksAppeared:v4];
  }

  return result;
}

- (void)disksDisappeared:(id)disappeared
{
  v56 = *MEMORY[0x277D85DE8];
  disappearedCopy = disappeared;
  selfCopy = self;
  allDisksSet = [(SKManager *)self allDisksSet];
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(disappearedCopy, "count")}];
  obj = self->allDisks;
  objc_sync_enter(obj);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = self->allDisks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = *v50;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v10 = disappearedCopy;
        v11 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v11)
        {
          v12 = *v46;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v46 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if ([v9 matchesDictionary:{*(*(&v45 + 1) + 8 * j), obj}])
              {
                [v4 addObject:v9];
                [v9 setIsValid:0];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v11);
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)selfCopy->allDisks minusSet:v4];
  objc_sync_exit(obj);

  obja = selfCopy->_listeners;
  objc_sync_enter(obja);
  SKLogArrayRedacted(OS_LOG_TYPE_DEFAULT, "CLIENT - Disks disappeared:", v4);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = selfCopy->_listeners;
  v14 = [(NSHashTable *)v33 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v14)
  {
    v15 = *v42;
    v31 = v40;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v33);
        }

        v17 = *(*(&v41 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v17 visibleDiskRoles], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
          {
            v22 = [(SKManager *)selfCopy knownDisksForDictionaries:disappearedCopy waitingForDaemon:0 fromSet:allDisksSet, obja, v31];
          }

          else
          {
            allObjects = [v4 allObjects];
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v40[0] = __30__SKManager_disksDisappeared___block_invoke;
            v40[1] = &unk_279D1F768;
            v40[2] = selfCopy;
            v40[3] = v17;
            v21 = [MEMORY[0x277CCAC30] predicateWithBlock:v39];
            v22 = [allObjects filteredArrayUsingPredicate:v21];
          }

          listenersAppearedDisks = selfCopy->_listenersAppearedDisks;
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "hash", obja)}];
          v25 = [(NSMutableDictionary *)listenersAppearedDisks objectForKey:v24];

          v26 = [MEMORY[0x277CBEB98] setWithArray:v22];
          [v25 minusSet:v26];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __30__SKManager_disksDisappeared___block_invoke_2;
          block[3] = &unk_279D1F718;
          v37 = v22;
          v38 = v17;
          v27 = v22;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }

      v14 = [(NSHashTable *)v33 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obja);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __30__SKManager_disksDisappeared___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v2, "hash")}];
  v7 = [v3 objectForKey:v6];

  v8 = [v7 containsObject:v5];
  return v8;
}

uint64_t __30__SKManager_disksDisappeared___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 disksDisappeared:v4];
  }

  return result;
}

- (void)disksChanged:(id)changed
{
  v72 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = [changedCopy mutableCopy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__SKManager_disksChanged___block_invoke;
  aBlock[3] = &unk_279D1F718;
  selfCopy = self;
  aBlock[4] = self;
  v36 = changedCopy;
  v68 = v36;
  block = _Block_copy(aBlock);
  if (self->_shouldBeBindingsSafe)
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    block[2]();
  }

  v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v38 = self->allDisks;
  objc_sync_enter(v38);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v6)
  {
    v7 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v10 = selfCopy->allDisks;
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v59 objects:v70 count:16];
        if (v11)
        {
          v12 = *v60;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v60 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v59 + 1) + 8 * j) matchesDictionary:v9])
              {

                goto LABEL_19;
              }
            }

            v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v59 objects:v70 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        [v41 addObject:v9];
LABEL_19:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v38);
  if ([v41 count])
  {
    [(SKManager *)selfCopy disksAppeared:v41];
    [obj removeObjectsInArray:v41];
  }

  v14 = [(SKManager *)selfCopy knownDisksForDictionaries:obj waitingForDaemon:0];
  v39 = selfCopy->_listeners;
  objc_sync_enter(v39);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = selfCopy->_listeners;
  v15 = [(NSHashTable *)v42 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v15)
  {
    v16 = *v56;
    v40 = *v56;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v42);
        }

        v18 = *(*(&v55 + 1) + 8 * k);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v18 visibleDiskRoles], v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
        {
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __26__SKManager_disksChanged___block_invoke_5;
          v46[3] = &unk_279D1F718;
          v46[4] = v18;
          v47 = v14;
          dispatch_async(MEMORY[0x277D85CD0], v46);
          v22 = v47;
        }

        else
        {
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __26__SKManager_disksChanged___block_invoke_2;
          v54[3] = &unk_279D1F790;
          v54[4] = v18;
          v21 = [MEMORY[0x277CCAC30] predicateWithBlock:v54];
          v22 = [v14 filteredArrayUsingPredicate:v21];

          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __26__SKManager_disksChanged___block_invoke_3;
          v53[3] = &unk_279D1F790;
          v53[4] = v18;
          v23 = [MEMORY[0x277CCAC30] predicateWithBlock:v53];
          v44 = [v14 filteredArrayUsingPredicate:v23];

          listenersAppearedDisks = selfCopy->_listenersAppearedDisks;
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "hash")}];
          v26 = [(NSMutableDictionary *)listenersAppearedDisks objectForKey:v25];

          v27 = v14;
          v28 = v15;
          v29 = [MEMORY[0x277CBEB58] setWithArray:v44];
          [v29 intersectSet:v26];
          v30 = [MEMORY[0x277CBEB58] setWithArray:v22];
          [v30 minusSet:v26];
          v31 = [MEMORY[0x277CBEB58] setWithArray:v22];
          [v31 minusSet:v30];
          [v31 minusSet:v29];
          [v26 minusSet:v29];
          [v26 unionSet:v30];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __26__SKManager_disksChanged___block_invoke_4;
          v48[3] = &unk_279D1F7B8;
          v49 = v31;
          v50 = v18;
          v51 = v29;
          v52 = v30;
          v32 = v30;
          v33 = v29;
          v34 = v31;
          dispatch_async(MEMORY[0x277D85CD0], v48);

          v15 = v28;
          v14 = v27;
          v16 = v40;
        }
      }

      v15 = [(NSHashTable *)v42 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v39);
  v35 = *MEMORY[0x277D85DE8];
}

void __26__SKManager_disksChanged___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = *(*(a1 + 32) + 24);
  objc_sync_enter(v13);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(*(a1 + 32) + 24);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = *v20;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v6 = *(a1 + 40);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = *v16;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v15 + 1) + 8 * j);
              if ([v5 matchesDictionary:{v10, v13}])
              {
                v11 = v10;
                objc_sync_enter(v11);
                [v5 updateWithDictionary:v11];
                objc_sync_exit(v11);
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v7);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v2);
  }

  objc_sync_exit(v13);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __26__SKManager_disksChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 visibleDiskRoles];
  v5 = [v3 role];

  v6 = [v4 containsObject:v5];
  return v6;
}

uint64_t __26__SKManager_disksChanged___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 visibleDiskRoles];
  v5 = [v3 role];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void __26__SKManager_disksChanged___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      SKLogArrayRedacted(OS_LOG_TYPE_DEFAULT, "CLIENT - Disks changed:", *(a1 + 32));
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) allObjects];
      [v3 disksChanged:v4];
    }
  }

  if ([*(a1 + 48) count])
  {
    v5 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      SKLogArrayRedacted(OS_LOG_TYPE_DEFAULT, "CLIENT - Disks disappeared:", *(a1 + 48));
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) allObjects];
      [v6 disksDisappeared:v7];
    }
  }

  if ([*(a1 + 56) count])
  {
    v8 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 56) allObjects];
      [v9 disksAppeared:v10];

      v11 = *(a1 + 56);

      SKLogArrayRedacted(OS_LOG_TYPE_DEFAULT, "CLIENT - Disks appeared:", v11);
    }
  }
}

uint64_t __26__SKManager_disksChanged___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 disksChanged:v5];
  }

  return result;
}

- (void)managerStalled
{
  v17 = *MEMORY[0x277D85DE8];
  self->diskQueueStuck = 1;
  obj = self->_listeners;
  objc_sync_enter(obj);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_listeners;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __27__SKManager_managerStalled__block_invoke;
          block[3] = &unk_279D1F5B0;
          block[4] = v8;
          dispatch_async(v6, block);
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)managerResumed
{
  v17 = *MEMORY[0x277D85DE8];
  self->diskQueueStuck = 0;
  v3 = self->_listeners;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__SKManager_managerResumed__block_invoke;
        block[3] = &unk_279D1F5B0;
        block[4] = v9;
        dispatch_async(v7, block);
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __27__SKManager_managerResumed__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 managerResumed];
  }

  return result;
}

@end