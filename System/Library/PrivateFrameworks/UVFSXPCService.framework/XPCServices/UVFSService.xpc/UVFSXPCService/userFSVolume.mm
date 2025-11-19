@interface userFSVolume
+ (id)newWithDevice:(id)a3 fsType:(id)a4 volumeName:(id)a5 rootNode:(void *)a6 errorState:(id)a7 returnError:(id *)a8;
- (BOOL)getNodeFromFileID:(unint64_t)a3 outNode:(id *)a4;
- (BOOL)pauseIOQueue;
- (char)pathStringForNode:(id)a3 name:(id)a4 buffer:(char *)a5 bufferSize:(unint64_t)a6 outLength:(unint64_t *)a7;
- (id)getFileSystemRepresentation:(id)a3 error:(int *)a4;
- (id)getFreeSpaceInVolume;
- (id)getNodeForFH:(id)a3 withError:(int *)a4;
- (id)grantLIFSKextAccessToFD;
- (id)lookupWithParent:(id)a3 andName:(id)a4;
- (id)registerSpotlightNotifer;
- (id)revokeLIFSKextAccessToFD;
- (id)updateRootNode:(void *)a3 errorState:(id)a4;
- (int)searchVolume:(id)a3 withCriteria:(id)a4 withSearchToken:(id)a5 andWithResultsHandler:(id)a6;
- (userFSVolume)init;
- (userFSVolume)initWithDevice:(id)a3 fsType:(id)a4 volumeName:(id)a5 UVFSRootNode:(void *)a6 errorState:(id)a7 returnError:(id *)a8;
- (void)LIRead:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6;
- (void)LIRead:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 reply:(id)a6;
- (void)LISearchAbortAll;
- (void)LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6;
- (void)abortAllClientSearchesFor:(unint64_t)a3;
- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unsigned int)a5 operationID:(unint64_t)a6 reply:(id)a7;
- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)createAppleDoubleManagerIfNeeded;
- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)dealloc;
- (void)endIO:(id)a3 range:(_NSRange)a4 status:(int)a5 flags:(unsigned int)a6 operationID:(unint64_t)a7 reply:(id)a8;
- (void)fetchVolumeMachPortLabeled:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)insertIntoFHCache:(id)a3;
- (void)insertIntoNameCache:(id)a3 withParent:(id)a4;
- (void)insertIntoNameCache:(id)a3 withParent:(id)a4 withName:(id)a5;
- (void)invalidateFileNodesForConnection:(unint64_t)a3;
- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)lookupin:(id)a3 name:(id)a4 forClient:(unint64_t)a5 usingFlags:(unsigned int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 andClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)otherAttributeOf:(id)a3 named:(id)a4 reply:(id)a5;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)purgeFHToNodeTable;
- (void)purgeMappingTables;
- (void)purgeNameToFHTable;
- (void)readDirectory:(id)a3 amount:(unint64_t)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 amount:(unint64_t)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)reclaim:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)removeFromFHCache:(id)a3;
- (void)removeFromNameCache:(id)a3 withParent:(id)a4;
- (void)removeFromNameCache:(id)a3 withParent:(id)a4 withName:(id)a5;
- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)renameItemIn:(id)a3 named:(id)a4 toDirectory:(id)a5 newName:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)resumeIOQueue;
- (void)revokeDeviceIfNeeded;
- (void)rootFileHandleForClient:(unint64_t)a3 reply:(id)a4;
- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 forClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)startSyncerIfNeeded;
- (void)unmount:(unsigned int)a3;
- (void)verifyExistenceWithFileIDs:(id)a3 reply:(id)a4;
- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
@end

@implementation userFSVolume

- (userFSVolume)init
{
  v27.receiver = self;
  v27.super_class = userFSVolume;
  v2 = [(userFSVolume *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INITIATED, 0);
    if (!v3)
    {
      goto LABEL_7;
    }

    v2->LiveFSVolume_opaque[OBJC_IVAR___LiveFSVolume__renameChangesFileID] = 0;
    v2->LiveFSVolume_opaque[OBJC_IVAR___LiveFSVolume__hasPersistentFileIDs] = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    mountFHtoNodeTable = v2->mountFHtoNodeTable;
    v2->mountFHtoNodeTable = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    mountNameToNodeCache = v2->mountNameToNodeCache;
    v2->mountNameToNodeCache = v6;

    v8 = pthread_rwlock_init(&v2->mountNameToNodeCacheLock, 0);
    if (!v2->mountNameToNodeCache || v8 != 0)
    {
      goto LABEL_7;
    }

    atomic_store(0, &v2->ioQueuePausedCount);
    v11 = pthread_rwlock_init(&v2->searchRequestsRWLock, 0);
    v12 = [[NSMutableDictionary alloc] initWithCapacity:3];
    searchRequests = v2->searchRequests;
    v2->searchRequests = v12;

    if (!v2->searchRequests)
    {
      goto LABEL_7;
    }

    if (v11)
    {
      goto LABEL_7;
    }

    atomic_store(3u, &v2->nextFileID);
    atomic_store(0, &v2->nextFreeSpaceSeqno);
    v2->_volumeDeviceFD = -1;
    v2->volumeDeviceGranted = 0;
    v14 = dispatch_queue_create(0, 0);
    metaDataRequests = v2->_metaDataRequests;
    v2->_metaDataRequests = v14;

    v16 = dispatch_queue_create(0, v3);
    IORequests = v2->_IORequests;
    v2->_IORequests = v16;

    v18 = dispatch_queue_create(0, v3);
    v19 = v2->_SearchRequests;
    v2->_SearchRequests = v18;

    if (!v2->_metaDataRequests)
    {
      goto LABEL_7;
    }

    if (!v2->_IORequests)
    {
      goto LABEL_7;
    }

    if (!v2->_SearchRequests)
    {
      goto LABEL_7;
    }

    v20 = dispatch_group_create();
    IOGroup = v2->_IOGroup;
    v2->_IOGroup = v20;

    v22 = dispatch_group_create();
    searchGroup = v2->_searchGroup;
    v2->_searchGroup = v22;

    metaDataQueueNamePrefix = v2->_metaDataQueueNamePrefix;
    v2->_metaDataQueueNamePrefix = @"com.apple.filesystem.uvfs.metaIO";

    if (!v2->_IOGroup)
    {
      goto LABEL_7;
    }

    if (v2->_searchGroup)
    {
      v2->_allowSearch = 1;
      v2->_spotlightIsEnabled = enableSpotlight;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100020B30(&v2->_spotlightIsEnabled);
      }

      initAllUVFSdecmpfsRegistration();
      v25 = +[LiveFSServiceUserClient defaultClient];
      kernelUserClient = v2->_kernelUserClient;
      v2->_kernelUserClient = v25;
    }

    else
    {
LABEL_7:

      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100020BBC();
      }

      v3 = v2;
      v2 = 0;
    }
  }

  return v2;
}

- (id)updateRootNode:(void *)a3 errorState:(id)a4
{
  v7 = a4;
  if (!(a3 | v7))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100020BF8();
    }

    goto LABEL_9;
  }

  if (a3)
  {
    rootNode = self->_rootNode;
    if (!rootNode || [(liveFSNode *)rootNode UVFSNode]!= a3)
    {
      v9 = [[liveFSNode alloc] initWithVolume:self andRootUVFSNode:a3];
      v10 = self->_rootNode;
      self->_rootNode = v9;

      if (self->_rootNode)
      {
        [(userFSVolume *)self insertIntoFHCache:?];
        v11 = 1;
        goto LABEL_11;
      }

LABEL_9:
      v12 = getNSErrorFromLiveFSErrno();
      goto LABEL_62;
    }
  }

  v11 = 0;
LABEL_11:
  if (![(NSString *)self->_volumeName length])
  {
    if (v7)
    {
      v14 = 0;
      if (v11)
      {
        goto LABEL_15;
      }

      goto LABEL_60;
    }

LABEL_24:
    v27 = self->_rootNode;
    v57 = 0;
    v28 = [(liveFSNode *)v27 getFileSystemAttribute:@"_S_f_vol_name" andResult:&v57];
    v29 = v57;
    v14 = v29;
    if (v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29 == 0;
    }

    if (v30)
    {
      if (v28 == 2)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100020D78();
        }

        volumeName = self->_volumeName;
        v32 = @"Untitled";
        goto LABEL_43;
      }
    }

    else if ([(NSString *)v29 length])
    {
      volumeName = v14;
      v33 = [NSString stringWithUTF8String:[(NSString *)v14 bytes]];
      v34 = self->_volumeName;
      self->_volumeName = v33;

      v35 = self->_volumeName;
      if (v35)
      {
        if (![(NSString *)v35 isEqual:&stru_100038E98])
        {
LABEL_58:
          v14 = 0;
LABEL_59:

          metaDataQueueNamePrefix = self->_metaDataQueueNamePrefix;
          v44 = [(LiveFSRawDevice *)self->_volumeRawDevice deviceName];
          v45 = [NSString stringWithFormat:@"%@.%@.%@", metaDataQueueNamePrefix, v44, self->_volumeName];
          serialQueueName = self->_serialQueueName;
          self->_serialQueueName = v45;

          metaDataRequests = self->_metaDataRequests;
          [(NSString *)self->_serialQueueName UTF8String];
          dispatch_queue_set_label_nocopy();
          v48 = [(LiveFSRawDevice *)self->_volumeRawDevice deviceName];
          v49 = [NSString stringWithFormat:@"com.apple.filesystem.uvfs.dataIO.%@.%@", v48, self->_volumeName];
          concurrentQueueName = self->_concurrentQueueName;
          self->_concurrentQueueName = v49;

          IORequests = self->_IORequests;
          [(NSString *)self->_concurrentQueueName UTF8String];
          dispatch_queue_set_label_nocopy();
          if (v11)
          {
            goto LABEL_15;
          }

LABEL_60:
          v21 = 0;
          goto LABEL_61;
        }

        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100020C2C();
        }

        v36 = @"Untitled";
      }

      else
      {
        v41 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100020C68(volumeName, v41);
        }

        v36 = @"ERRORNAME";
      }

      v42 = self->_volumeName;
      self->_volumeName = &v36->isa;

      goto LABEL_58;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100020D08();
    }

    volumeName = self->_volumeName;
    v32 = @"ERRORNAME";
LABEL_43:
    self->_volumeName = &v32->isa;
    goto LABEL_59;
  }

  v13 = [(NSString *)self->_volumeName isEqualToString:@"Untitled"];
  v14 = 0;
  if (!v7 && v13)
  {
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_60;
  }

LABEL_15:
  v15 = self->_rootNode;
  v56 = 0;
  v16 = [(liveFSNode *)v15 getFileSystemAttribute:@"_N_caps_format" andResult:&v56];
  v17 = v56;
  v18 = v17;
  if (!v16)
  {
    self->volCapFormat = *[v17 bytes];

    v18 = 0;
  }

  v19 = self->_rootNode;
  v55 = v18;
  v20 = [(liveFSNode *)v19 getFileSystemAttribute:@"_N_caps_interfaces" andResult:&v55];
  v21 = v55;

  if (!v20)
  {
    self->volCapInterfaces = *[v21 bytes];

    v21 = 0;
  }

  self->syncTimerNeeded = (self->volCapFormat & 8) != 0;
  [(userFSVolume *)self createAppleDoubleManagerIfNeeded];
  v22 = self->_rootNode;
  v54 = 0;
  v23 = [(liveFSNode *)v22 getFileSystemAttribute:@"_N_mntflags" andResult:&v54];
  v24 = v54;
  v25 = v24;
  if (v23)
  {
    v26 = v14;
LABEL_53:
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];

    goto LABEL_62;
  }

  v37 = [v24 bytes];
  self->_useMetadataBuf = (*v37 & 0x400000000) != 0;
  v38 = *v37;
  self->_useKOIO = (*v37 & 0x40000000) != 0;
  if ((v38 & 0x40000000) != 0)
  {
    v39 = [(userFSVolume *)self grantLIFSKextAccessToFD];
    if (v39)
    {
      self->_useKOIO = 0;
    }
  }

  v40 = self->_rootNode;
  v53 = v14;
  v23 = [(liveFSNode *)v40 getFileSystemAttribute:@"_N_f_bsize" andResult:&v53];
  v26 = v53;

  if (v23 || !v26)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100020DB4();
    }

    goto LABEL_53;
  }

  self->blockSize = *[(NSString *)v26 bytes];

  v14 = v26;
LABEL_61:
  objc_storeStrong(&self->_errorState, a4);

  v12 = 0;
LABEL_62:

  return v12;
}

- (userFSVolume)initWithDevice:(id)a3 fsType:(id)a4 volumeName:(id)a5 UVFSRootNode:(void *)a6 errorState:(id)a7 returnError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (*a8)
  {
    *a8 = 0;
  }

  v18 = [(userFSVolume *)self init];
  if (!v18)
  {
    goto LABEL_7;
  }

  v38 = v15;
  [v14 deviceName];
  v19 = obj = a5;
  v20 = [NSString stringWithFormat:@"com.apple.%@.ostransaction", v19];
  v21 = +[UserFSSleepManager getUserFSSleepManager];
  powerAssertManager = v18->_powerAssertManager;
  v18->_powerAssertManager = v21;

  [v20 UTF8String];
  v23 = os_transaction_create();
  os_transaction = v18->_os_transaction;
  v18->_os_transaction = v23;

  v25 = [NSString stringWithFormat:@"%@.%@.%@", v18->_metaDataQueueNamePrefix, v19, v16];
  serialQueueName = v18->_serialQueueName;
  v18->_serialQueueName = v25;

  v36 = a4;
  v27 = v17;
  metaDataRequests = v18->_metaDataRequests;
  [(NSString *)v18->_serialQueueName UTF8String];
  dispatch_queue_set_label_nocopy();
  v29 = [NSString stringWithFormat:@"com.apple.filesystem.uvfs.dataIO.%@.%@", v19, v16];
  concurrentQueueName = v18->_concurrentQueueName;
  v18->_concurrentQueueName = v29;

  IORequests = v18->_IORequests;
  [(NSString *)v18->_concurrentQueueName UTF8String];
  v17 = v27;
  dispatch_queue_set_label_nocopy();
  objc_storeStrong(&v18->_volumeRawDevice, a3);
  v18->_volumeDeviceFD = [v14 deviceFD];
  v18->_readOnly = [v14 deviceIsReadOnly];
  objc_storeStrong(&v18->_volumeName, obj);
  objc_storeStrong(&v18->_fsType, v36);
  v32 = [(userFSVolume *)v18 updateRootNode:a6 errorState:v27];
  if (!v32)
  {

    v15 = v38;
LABEL_7:
    v34 = v18;
    goto LABEL_8;
  }

  v33 = v32;
  *a8 = v33;

  v34 = 0;
  v15 = v38;
LABEL_8:

  return v34;
}

+ (id)newWithDevice:(id)a3 fsType:(id)a4 volumeName:(id)a5 rootNode:(void *)a6 errorState:(id)a7 returnError:(id *)a8
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[a1 alloc] initWithDevice:v17 fsType:v16 volumeName:v15 UVFSRootNode:a6 errorState:v14 returnError:a8];

  return v18;
}

- (id)registerSpotlightNotifer
{
  v3 = [[CSLiveFSVolume alloc] initWithVolumeName:self->_volumeName];
  spotlightNotifer = self->_spotlightNotifer;
  self->_spotlightNotifer = v3;

  if (self->_spotlightNotifer)
  {
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100020DF0();
    }

    v5 = getNSErrorFromLiveFSErrno();
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020E2C(&self->_spotlightNotifer);
  }

  return v5;
}

- (void)purgeNameToFHTable
{
  v3 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000210F4(self, v3);
  }

  pthread_rwlock_wrlock(&self->mountNameToNodeCacheLock);
  [(NSMutableDictionary *)self->mountNameToNodeCache removeAllObjects];
  pthread_rwlock_unlock(&self->mountNameToNodeCacheLock);
}

- (void)purgeFHToNodeTable
{
  v3 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002118C(self, v3);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->mountFHtoNodeTable;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:*(*(&v19 + 1) + 8 * v9), v16];
        v11 = v10;
        if (v10 == self->_rootNode)
        {
          v15 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100021224(&v17, v18, v15);
          }
        }

        else
        {
          v12 = [(liveFSNode *)v10 reclaim];
          if (v12)
          {
            v13 = v12;
            v14 = userfs_log_default;
            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v24 = v11;
              v25 = 1024;
              v26 = v13;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "LFM: purgeFHToNodeTable: error reclaiming state for node %@: %d", buf, 0x12u);
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->mountFHtoNodeTable removeAllObjects];
}

- (BOOL)getNodeFromFileID:(unint64_t)a3 outNode:(id *)a4
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->mountFHtoNodeTable;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:*(*(&v16 + 1) + 8 * v11), v16];
        if ([v12 lfn_fileid] == a3)
        {
          v14 = v12;
          *a4 = v12;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100021264();
          }

          LOBYTE(v13) = 1;
          return v13;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    sub_1000212E0();
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)purgeMappingTables
{
  [(userFSVolume *)self purgeNameToFHTable];

  [(userFSVolume *)self purgeFHToNodeTable];
}

- (void)unmount:(unsigned int)a3
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021350(self);
  }

  v5 = [(userFSVolume *)self metaDataRequests];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008D30;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_sync(v5, block);

  dispatch_group_wait(self->_searchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000213F8();
  }

  v6 = [(userFSVolume *)self metaDataRequests];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008D88;
  v9[3] = &unk_1000387F8;
  v9[4] = self;
  v10 = a3;
  dispatch_sync(v6, v9);

  if (self->_useKOIO)
  {
    v7 = [(userFSVolume *)self revokeLIFSKextAccessToFD];
  }

  [(LiveFSRawDevice *)self->_volumeRawDevice unloadVolume:self];
  volumeRawDevice = self->_volumeRawDevice;
  self->_volumeRawDevice = 0;

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021434(self);
  }
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mountNameToNodeCacheLock);
  v3.receiver = self;
  v3.super_class = userFSVolume;
  [(userFSVolume *)&v3 dealloc];
}

- (void)createAppleDoubleManagerIfNeeded
{
  if ((self->volCapInterfaces & 0x4000) != 0)
  {
    v6 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000215CC(v6);
    }
  }

  else
  {
    v3 = [LiveFSAppleDoubleManager AppleDoubleManagerForMount:self];
    appleDoubleManager = self->_appleDoubleManager;
    self->_appleDoubleManager = v3;

    v5 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100021664(v5);
    }

    self->volCapInterfaces &= ~0x40000uLL;
  }
}

- (BOOL)pauseIOQueue
{
  add = atomic_fetch_add(&self->ioQueuePausedCount, 1u);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000216FC();
    if (add)
    {
      goto LABEL_6;
    }
  }

  else if (add)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002176C();
  }

  dispatch_group_wait(self->_IOGroup, 0xFFFFFFFFFFFFFFFFLL);
LABEL_6:
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000217A8();
  }

  return 1;
}

- (void)resumeIOQueue
{
  atomic_fetch_add(&self->ioQueuePausedCount, 0xFFFFFFFF);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000217E4();
  }
}

- (void)insertIntoFHCache:(id)a3
{
  v4 = a3;
  mountFHtoNodeTable = self->mountFHtoNodeTable;
  v6 = [v4 lfn_fh];
  [(NSMutableDictionary *)mountFHtoNodeTable setObject:v4 forKeyedSubscript:v6];

  v7 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->mountFHtoNodeTable;
    v9 = v7;
    v10 = [v4 lfn_fh];
    v11 = [v4 lfn_name];
    v12 = 134219010;
    v13 = self;
    v14 = 2048;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2048;
    v21 = v4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "LFV[%p]: FHCache[%p]: + fh[%@] => %@[%p]", &v12, 0x34u);
  }
}

- (void)removeFromFHCache:(id)a3
{
  v4 = a3;
  if ([v4 isNodeReclaimable])
  {
    mountFHtoNodeTable = self->mountFHtoNodeTable;
    v6 = [v4 lfn_fh];
    [(NSMutableDictionary *)mountFHtoNodeTable removeObjectForKey:v6];

    v7 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->mountFHtoNodeTable;
      v9 = v7;
      v10 = [v4 lfn_fh];
      v11 = [v4 lfn_name];
      v12 = 134219010;
      v13 = self;
      v14 = 2048;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = v4;
      v20 = 2112;
      v21 = v11;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "LFV[%p]: FHCache[%p]: - fh[%@] => name[%p]:[%@]", &v12, 0x34u);
    }
  }
}

- (id)getNodeForFH:(id)a3 withError:(int *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKeyedSubscript:a3];
  v6 = v5;
  if (a4 && !v5)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    v7 = [v5 lfn_parent];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 lfn_name];
      v10 = [v9 isEqualToString:&stru_100038E98];

      if (a4)
      {
        if (v10)
        {
LABEL_5:
          *a4 = 70;
        }
      }
    }
  }

  return v6;
}

- (id)getFileSystemRepresentation:(id)a3 error:(int *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [NSMutableData dataWithLength:1025];
    v8 = [(userFSVolume *)self volumeRawDevice];
    v9 = [v8 fsPlugin];
    if ([v9 FSOps])
    {
      v10 = [(userFSVolume *)self volumeRawDevice];
      v11 = [v10 fsPlugin];
      v12 = *([v11 FSOps] + 39);

      if (v12)
      {
        v13 = [(userFSVolume *)self volumeRawDevice];
        v14 = [v13 fsPlugin];
        v15 = (*([v14 FSOps] + 39))(objc_msgSend(v6, "UTF8String"), objc_msgSend(v7, "bytes"), 1025, -[userFSVolume isCaseSensitive](self, "isCaseSensitive"));

        if (v15)
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100021854();
            if (!a4)
            {
              goto LABEL_16;
            }
          }

          else if (!a4)
          {
LABEL_16:
            v17 = v6;
            goto LABEL_17;
          }

          *a4 = v15;
          goto LABEL_16;
        }

LABEL_14:
        v17 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v7 bytes]);
LABEL_17:
        v16 = v17;

        goto LABEL_18;
      }
    }

    else
    {
    }

    if (([v6 getFileSystemRepresentation:objc_msgSend(v7 maxLength:{"bytes"), 1025}] & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000218D0();
  }

  v16 = 0;
  if (a4)
  {
    *a4 = 22;
  }

LABEL_18:

  return v16;
}

- (void)insertIntoNameCache:(id)a3 withParent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 lfn_name];
  [(userFSVolume *)self insertIntoNameCache:v7 withParent:v6 withName:v8];
}

- (void)insertIntoNameCache:(id)a3 withParent:(id)a4 withName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  pthread_rwlock_wrlock(&self->mountNameToNodeCacheLock);
  v11 = [(userFSVolume *)self getFileSystemRepresentation:v10 error:&v16];
  if (v11)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    v13 = [v9 lfn_fh];
    v14 = [LiveFSItemPair newWithParent:v13 fname:v11 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
    [(NSMutableDictionary *)mountNameToNodeCache setObject:v8 forKeyedSubscript:v14];
  }

  else
  {
    v15 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[userFSVolume insertIntoNameCache:withParent:withName:]";
      v19 = 1024;
      v20 = v16;
      v21 = 2048;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:node:%p:name:%@.", buf, 0x26u);
    }
  }

  pthread_rwlock_unlock(&self->mountNameToNodeCacheLock);
}

- (void)removeFromNameCache:(id)a3 withParent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 lfn_name];
  [(userFSVolume *)self removeFromNameCache:v7 withParent:v6 withName:v8];
}

- (void)removeFromNameCache:(id)a3 withParent:(id)a4 withName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = 0;
  v11 = 56;
  pthread_rwlock_wrlock(&self->mountNameToNodeCacheLock);
  v12 = [(userFSVolume *)self getFileSystemRepresentation:v10 error:&v38];
  if (v12)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    v14 = [v9 lfn_fh];
    v33 = v12;
    v15 = [LiveFSItemPair newWithParent:v14 fname:v12 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
    [(NSMutableDictionary *)mountNameToNodeCache removeObjectForKey:v15];

    if (([v8 isNodeReclaimable] & 1) == 0)
    {
      v30 = 56;
      v31 = v10;
      v32 = v9;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = self->mountNameToNodeCache;
      v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = [(NSMutableDictionary *)self->mountNameToNodeCache objectForKey:v21, v30, v31, v32];

            if (v22 == v8)
            {
              v23 = [v21 itemId];
              v24 = [(userFSVolume *)self getNodeForFH:v23 withError:&v38];

              if (!v38 && v24)
              {
                v26 = [v21 filename];
                [v8 updateName:v26 andParent:v24];

                v27 = userfs_log_default;
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                {
                  v28 = v27;
                  v29 = [v21 filename];
                  *buf = 134218498;
                  v41 = v8;
                  v42 = 2112;
                  *v43 = v29;
                  *&v43[8] = 2048;
                  *&v43[10] = v24;
                  _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removeFromNameCache: liveFSNode [%p] name [%@] and parent [%p] were updated", buf, 0x20u);
                }

                v10 = v31;
                v9 = v32;
                v11 = v30;
                goto LABEL_21;
              }
            }
          }

          v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v10 = v31;
      v9 = v32;
      v11 = v30;
    }

    [v8 updateName:&stru_100038E98 andParent:{0, v30, v31, v32}];
LABEL_21:
    v12 = v33;
  }

  else
  {
    v25 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v41 = "[userFSVolume removeFromNameCache:withParent:withName:]";
      v42 = 1024;
      *v43 = v38;
      *&v43[4] = 2048;
      *&v43[6] = v8;
      *&v43[14] = 2112;
      *&v43[16] = v10;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:node:%p:name:%@.", buf, 0x26u);
    }
  }

  pthread_rwlock_unlock(&self->LiveFSVolume_opaque[v11]);
}

- (id)lookupWithParent:(id)a3 andName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  pthread_rwlock_rdlock(&self->mountNameToNodeCacheLock);
  v8 = [(userFSVolume *)self getFileSystemRepresentation:v7 error:&v15];
  if (v8)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    v10 = [v6 lfn_fh];
    v11 = [LiveFSItemPair newWithParent:v10 fname:v8 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
    v12 = [(NSMutableDictionary *)mountNameToNodeCache objectForKeyedSubscript:v11];
  }

  else
  {
    v13 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[userFSVolume lookupWithParent:andName:]";
      v18 = 1024;
      v19 = v15;
      v20 = 2048;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:parent:%p:name:%@.", buf, 0x26u);
    }

    v12 = 0;
  }

  pthread_rwlock_unlock(&self->mountNameToNodeCacheLock);

  return v12;
}

- (char)pathStringForNode:(id)a3 name:(id)a4 buffer:(char *)a5 bufferSize:(unint64_t)a6 outLength:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(userFSVolume *)self rootNode];
  v15 = v12;
  v16 = v15;
  if (v13 || v14 != v15)
  {
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v19 = [v15 lfn_name];
      if ([v19 isEqualToString:&stru_100038E98])
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100021A48();
        }

        v13 = 0;
        a5 = 0;
        v17 = v16;
LABEL_29:

        goto LABEL_30;
      }

      v18 = v19;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100021950();
    }

    v31 = a7;
    v32 = v16;
    v20 = v13 != 0;
    v30 = &a5[a6];
    if (v13 || v14 != v16)
    {
      v22 = 0;
      v17 = v16;
      v23 = &a5[a6];
      while (1)
      {
        v24 = [v18 UTF8String];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = strlen(v24);
        v27 = a6 >= v26 + 1;
        a6 -= v26 + 1;
        if (!v27)
        {
          a5 = 0;
          v19 = v18;
          v16 = v32;
          goto LABEL_29;
        }

        v21 = &v23[~v26];
        strlcpy(v21, v25, v26 + 1);
        *(v23 - 1) = v22;
        if (!v20)
        {
          [v17 lfn_parent];
          v17 = v13 = v17;
        }

        v19 = [v17 lfn_name];

        v20 = 0;
        v13 = 0;
        v22 = 47;
        v23 = v21;
        v18 = v19;
        if (v17 == v14)
        {
          goto LABEL_23;
        }
      }

      v16 = v32;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000219C8();
      }

      a5 = 0;
      v19 = v18;
    }

    else
    {
      v19 = v18;
      v17 = v16;
      v21 = &a5[a6];
LABEL_23:
      a5 = v21;
      v28 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v16 = v32;
        v34 = v32;
        v35 = 2080;
        v36 = a5;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "pathToStringForNode:%p path:%s", buf, 0x16u);
      }

      else
      {
        v16 = v32;
      }

      v13 = 0;
      *v31 = &v30[~a5];
    }

    goto LABEL_29;
  }

  *a5 = 0;
  *a7 = 0;
  v17 = v15;
LABEL_30:

  return a5;
}

- (void)startSyncerIfNeeded
{
  if (self->syncTimerNeeded && !self->syncTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_metaDataRequests);
    syncTimer = self->syncTimer;
    self->syncTimer = v3;

    dispatch_source_set_timer(self->syncTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
    v5 = self->syncTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000A35C;
    handler[3] = &unk_100038668;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(self->syncTimer);
    v6 = self->syncTimer;
    v7 = dispatch_time(0, 200000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100021B44();
    }
  }

  else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021AB8(&self->syncTimerNeeded, self);
  }
}

- (id)grantLIFSKextAccessToFD
{
  if (self->volumeDeviceGranted)
  {
    v2 = 0;
  }

  else
  {
    kernelUserClient = self->_kernelUserClient;
    if (self->_readOnly)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = [(LiveFSServiceUserClient *)kernelUserClient openFileDescriptorForKernel:self->_volumeDeviceFD flags:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [(userFSVolume *)self volumeRawDevice];
      v9 = [v8 deviceIsFile];

      if (v9)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100021C3C();
        }
      }

      else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100021BBC();
      }

      v2 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v2 = 0;
      self->volumeDeviceGranted = 1;
    }
  }

  return v2;
}

- (id)revokeLIFSKextAccessToFD
{
  if (self->volumeDeviceGranted)
  {
    v3 = [(LiveFSServiceUserClient *)self->_kernelUserClient closeFileDescriptorForKernel:self->_volumeDeviceFD];
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100021CB8();
      }

      v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v4 userInfo:0];
    }

    else
    {
      v5 = 0;
      self->volumeDeviceGranted = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)revokeDeviceIfNeeded
{
  if (self->volumeDeviceGranted)
  {
    v4 = [(userFSVolume *)self revokeLIFSKextAccessToFD:v2];
  }
}

- (void)rootFileHandleForClient:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(userFSVolume *)self errorState];

  if (v6)
  {
    v7 = [(userFSVolume *)self errorState];
    v5[2](v5, 0, v7);
  }

  else
  {
    v7 = [(liveFSNode *)self->_rootNode getFH];
    (v5)[2](v5, v7, 0);
  }
}

- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v14 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021D34();
  }

  v9 = [(userFSVolume *)self getNodeForFH:v7 withError:&v14];
  v10 = v9;
  v11 = 0;
  if (!v14 && v9)
  {
    v12 = [v9 getDeviceFD];
    if (v12 != -1)
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    }

    v11 = [v10 getAttrData];
    if (!v11)
    {
      v14 = 5;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100021DA4();
      }
    }

    if (v12 != -1)
    {
      [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    }
  }

  v13 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v16 = v7;
    v17 = 1024;
    v18 = v14;
    v19 = 2048;
    v20 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "LIGetAttr(%@): reply(%d, %p)", buf, 0x1Cu);
  }

  v8[2](v8, v14, v11);
}

- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v28 = a4;
  v10 = a6;
  v31 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021E14();
  }

  v27 = v9;
  v11 = [(userFSVolume *)self getNodeForFH:v9 withError:&v31];
  v12 = v11;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v31 && v11)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v30 = 0;
    v20 = [v12 setAttributeTo:v28 withResultingAttribute:&v30];
    v19 = v30;
    v31 = v20;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v31 || !v19)
    {

      v13 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_23;
    }

    [(userFSVolume *)self startSyncerIfNeeded];
    if (self->_spotlightIsEnabled)
    {
      v29 = 0;
      v21 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100021E84(v27, v12, v21);
      }

      v22 = [(userFSVolume *)self pathStringForNode:v12 name:0 buffer:buf bufferSize:1024 outLength:&v29];
      if (v22)
      {
        [(CSLiveFSVolume *)self->_spotlightNotifer sendEventOfType:2 pid:0 path:v22 pathLength:v29 attributes:v19];
      }
    }

    v15 = [v12 lfn_interestedClients];
    v14 = [v12 hiddenStatus];
    if (v15)
    {
      v17 = [v12 lfn_parent];
      if (v17)
      {
        v23 = [v12 lfn_parent];
        v18 = [v23 lfn_interestedClients];

        if (v18)
        {
          v24 = [v12 lfn_parent];
          v18 = [v24 lfn_fh];

          v25 = [v12 lfn_parent];
          v16 = [v25 lfn_interestedClients];

          v17 = [v12 lfn_name];
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        goto LABEL_20;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = 0;
LABEL_20:
    if ((*([v28 bytes] + 8) & 0x40) != 0)
    {
      v13 = [(userFSVolume *)self getFreeSpaceInVolume];
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_23:
  v26 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v33 = v31;
    v34 = 2048;
    v35 = v19;
    v36 = 2048;
    v37 = v15;
    v38 = 1024;
    v39 = v14;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "LISetAttr: reply(%d, %p, %#llx, %d)", buf, 0x22u);
  }

  v10[2](v10, v31, v19, v18, v16, v17, v15, v14, v13);
}

- (void)lookupin:(id)a3 name:(id)a4 forClient:(unint64_t)a5 usingFlags:(unsigned int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v54 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021F40();
  }

  v16 = [(userFSVolume *)self getNodeForFH:v13 withError:&v54];
  v40 = v16;
  v41 = v13;
  if (v54)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_16:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v23 = v16;
  if ([v14 length] == 1 && !objc_msgSend(v14, "compare:", @"."))
  {
    v54 = 0;
    v25 = v23;
  }

  else
  {
    if ([v14 length] != 2 || objc_msgSend(v14, "compare:", @".."))
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
      v53 = 0;
      v24 = [v23 lookup:v14 withResultingNode:&v53];
      v22 = v53;
      v54 = v24;
      [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
      goto LABEL_14;
    }

    v26 = [v23 lfn_parent];

    if (!v26)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v54 = 22;
      goto LABEL_16;
    }

    v54 = 0;
    v25 = [v23 lfn_parent];
  }

  v22 = v25;
LABEL_14:
  if (v54)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  [v22 getFH];
  v17 = v29 = a5;
  v20 = [v22 getAttrData];
  v36 = v29;
  [v22 setLfn_inUseClientSet:{objc_msgSend(v22, "lfn_inUseClientSet") | v29}];
  v37 = a6;
  if ((a6 & 0x20000000) != 0)
  {
    v30 = [NSString stringWithFormat:@"._%@", v14];
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v52 = 0;
    v35 = v30;
    v27 = [v23 lookup:v30 withResultingNode:&v52];
    v21 = v52;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    v18 = 0;
    v19 = 0;
    if (!v27)
    {
      v18 = [v21 getFH];
      v19 = [v21 getAttrData];
      [v21 setLfn_inUseClientSet:{objc_msgSend(v21, "lfn_inUseClientSet") | v36}];
    }

    if (!v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v27 = 0xFFFFFFFFLL;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  v31 = [v20 bytes];
  if ((v37 & 0x10000000) != 0 && v31)
  {
    v38 = *([v20 bytes] + 6);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10000B210;
    v42[3] = &unk_100038820;
    v43 = v41;
    v44 = v14;
    v17 = v17;
    v45 = v17;
    v20 = v20;
    v46 = v20;
    v49 = v15;
    v50 = v54;
    v51 = v27;
    v18 = v18;
    v47 = v18;
    v19 = v19;
    v48 = v19;
    [(userFSVolume *)self blockmapFile:v17 range:0 flags:v38 operationID:257 reply:0, v42];

    goto LABEL_20;
  }

LABEL_17:
  v28 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v39 = v54;
    v32 = v17;
    v33 = v28;
    v34 = [v17 UTF8String];
    *buf = 138413570;
    v56 = v41;
    v57 = 2112;
    v58 = v14;
    v59 = 1024;
    v60 = v39;
    v61 = 1024;
    v62 = v27;
    v63 = 2080;
    v64 = v34;
    v65 = 2048;
    v66 = v20;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "LILookup(%@/%@): reply(%d, %d, %s, %p)", buf, 0x36u);
  }

  (*(v15 + 2))(v15, v54, v27, v17, v20, v18, v19, 0, 0, 0);
LABEL_20:
}

- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21 = 0;
  v20 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021FB8();
  }

  v9 = [(userFSVolume *)self getNodeForFH:v7 withError:&v21];
  v10 = v9;
  v11 = 0;
  if (v21)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      v13 = malloc_type_calloc(1uLL, 0x1001uLL, 0xFC692D64uLL);
      if (v13)
      {
        v14 = v13;
        [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
        v19 = 0;
        v15 = [v10 readSymLinkDataInto:v14 ofSize:4096 withSymLinkDataSize:&v20 andWithSymLinkAttrData:&v19];
        v12 = v19;
        v21 = v15;
        [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
        v11 = 0;
        if (!v21)
        {
          v16 = [NSString alloc];
          v11 = [v16 initWithBytes:v14 length:v20 encoding:4];
          if (!v11)
          {
            v17 = userfs_log_default;
            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100022028(v17);
            }

            v11 = 0;
            v21 = 5;
          }
        }

        free(v14);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v23 = v7;
    v24 = 1024;
    v25 = v21;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "LIReadLink(%@): reply(%d, %p, %p)", buf, 0x26u);
  }

  v8[2](v8, v21, v11, v12);
}

- (void)LIRead:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a3;
  [NSMutableData dataWithLength:a4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B6FC;
  v14[3] = &unk_100038848;
  v16 = v10;
  v15 = v17 = a4;
  v12 = v10;
  v13 = v15;
  [(userFSVolume *)self LIRead:v11 atOffset:a5 withBuffer:v13 reply:v14];
}

- (void)LIRead:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v25 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:a3 withError:&v25];
  v13 = v12;
  if (v25)
  {
    v11[2](v11);
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000B98C;
    v19 = &unk_100038870;
    v20 = v12;
    v24 = a4;
    v21 = v10;
    v22 = self;
    v23 = v11;
    v14 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v16);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v15 = atomic_load(&self->ioQueuePausedCount);
      if (v15 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, v22];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v14);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, v22];
      v14[2](v14);
    }
  }
}

- (void)LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v25 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:a3 withError:&v25];
  v13 = v12;
  if (v25)
  {
    v11[2](v11);
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000BBE8;
    v19 = &unk_100038870;
    v20 = v12;
    v24 = a4;
    v21 = v10;
    v22 = self;
    v23 = v11;
    v14 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v16);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v15 = atomic_load(&self->ioQueuePausedCount);
      if (v15 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, v22];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v14);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, v22];
      v14[2](v14);
    }
  }
}

- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unsigned int)a5 operationID:(unint64_t)a6 reply:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v14 = a7;
  v28 = 0;
  v15 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "[userFSVolume blockmapFile:range:flags:operationID:reply:]";
    v31 = 2112;
    v32 = v13;
    v33 = 1024;
    v34 = a5;
    v35 = 2048;
    v36 = a6;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s(%@): flags = 0x%x, opID = %llu.", buf, 0x26u);
  }

  v16 = [(userFSVolume *)self getNodeForFH:v13 withError:&v28];
  v17 = v16;
  if (v28)
  {
    v14[2](v14);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF30;
    block[3] = &unk_100038898;
    v27 = a5;
    v24 = location;
    v25 = length;
    v26 = a6;
    v21 = v16;
    v22 = self;
    v23 = v14;
    v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v19 = atomic_load(&self->ioQueuePausedCount);
      if (v19 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v18);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
      v18[2](v18);
    }
  }
}

- (void)endIO:(id)a3 range:(_NSRange)a4 status:(int)a5 flags:(unsigned int)a6 operationID:(unint64_t)a7 reply:(id)a8
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v15 = a8;
  v33 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v35 = "[userFSVolume endIO:range:status:flags:operationID:reply:]";
    v36 = 2112;
    v37 = v14;
    v38 = 1024;
    v39 = a5;
    v40 = 2048;
    v41 = a7;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s(%@): ioStatus = %u, opID = %llu.", buf, 0x26u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:v14 withError:&v33];
  v18 = v17;
  if (v33)
  {
    v15[2](v15);
  }

  else
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10000C2C8;
    v24 = &unk_1000388C0;
    v28 = location;
    v29 = length;
    v31 = a5;
    v32 = a6;
    v30 = a7;
    v25 = v17;
    v26 = self;
    v27 = v15;
    v19 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v21);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v20 = atomic_load(&self->ioQueuePausedCount);
      if (v20 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v21, v22, v23, v24, v25, v26];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v19);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v21, v22, v23, v24, v25, v26];
      v19[2](v19);
    }
  }
}

- (void)fetchVolumeMachPortLabeled:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v8 = a3;
  v9 = a6;
  if (self->_useKOIO || self->_useMetadataBuf)
  {
    v10 = [(LiveFSServiceUserClient *)self->_kernelUserClient getVolumePort];
    if ((v10 - 1) >= 0xFFFFFFFE)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000220E0();
      }
    }

    else
    {
      v11 = v10;
      v12 = [LiveFSMachPort newByCopyingPort:v10];
      if (v12)
      {
        v13 = v12;
        v14 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
        {
          v15 = 136315650;
          v16 = "[userFSVolume fetchVolumeMachPortLabeled:forClient:requestID:reply:]";
          v17 = 1024;
          v18 = v11;
          v19 = 2048;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: volumePort = %d, LiveFSMachPort = %p.", &v15, 0x1Cu);
        }

        v9[2](v9, 0, v13);

        goto LABEL_11;
      }
    }

    v9[2](v9, 22, 0);
    goto LABEL_11;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100022160();
  }

  v9[2](v9, 45, 0);
LABEL_11:
}

- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v38 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = v17;
    v32 = objc_retainBlock(v16);
    *buf = 138413314;
    *v40 = v13;
    *&v40[8] = 2112;
    *&v40[10] = v14;
    *&v40[18] = 2048;
    *&v40[20] = v15;
    *&v40[28] = 2048;
    *&v40[30] = a6;
    *&v40[38] = 2048;
    *&v40[40] = v32;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "LICreate(%@/%@, %p, 0x%llx, %p): start", buf, 0x34u);
  }

  v35 = v13;
  v18 = [(userFSVolume *)self getNodeForFH:v13 withError:&v38];
  v34 = v15;
  if (v38)
  {
    v19 = v14;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = [NSMutableData dataWithData:v15];
    *([v25 mutableBytes] + 6) = 1;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v37 = 0;
    v19 = v14;
    v26 = [v18 createDirEntry:v14 withAttrs:v25 withData:0 withResultingNode:&v37];
    v24 = v37;
    v38 = v26;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v38)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      [v24 getFH];
      v20 = v33 = a6;
      v23 = [v18 getAttrData];
      v21 = [v18 lfn_interestedClients];
      v22 = [v24 getAttrData];
      [v24 setLfn_inUseClientSet:{objc_msgSend(v24, "lfn_inUseClientSet") | v33}];
      if (self->_spotlightIsEnabled)
      {
        if (v22)
        {
          v36 = 0;
          v30 = [(userFSVolume *)self pathStringForNode:v18 name:v19 buffer:buf bufferSize:1024 outLength:&v36];
          if (v30)
          {
            [(CSLiveFSVolume *)self->_spotlightNotifer sendEventOfType:0 pid:0 path:v30 pathLength:v36 attributes:v22];
          }
        }
      }
    }
  }

  v27 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110144;
    *v40 = v38;
    *&v40[4] = 2048;
    *&v40[6] = v23;
    *&v40[14] = 2048;
    *&v40[16] = v21;
    *&v40[24] = 2048;
    *&v40[26] = v20;
    *&v40[34] = 2048;
    *&v40[36] = v22;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LICreate(): reply(%d, %p, %#llx, %p, %p)", buf, 0x30u);
  }

  v28 = v38;
  v29 = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(v16 + 2))(v16, v28, v23, v21, v20, v22, v29);
}

- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v41 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = v13;
    v32 = v17;
    v33 = [v13 UTF8String];
    v34 = [v14 UTF8String];
    v35 = objc_retainBlock(v16);
    *buf = 136315906;
    *v43 = v33;
    *&v43[8] = 2080;
    *&v43[10] = v34;
    *&v43[18] = 2048;
    *&v43[20] = v15;
    *&v43[28] = 2048;
    *&v43[30] = v35;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "LIMakeDir(%s, %s, %p, %p): start", buf, 0x2Au);
  }

  v38 = v13;
  v18 = [(userFSVolume *)self getNodeForFH:v13 withError:&v41];
  v37 = v15;
  if (v41)
  {
    v19 = v14;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = [NSMutableData dataWithData:v15];
    *([v25 mutableBytes] + 6) = 2;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v40 = 0;
    v19 = v14;
    v26 = [v18 createDirEntry:v14 withAttrs:v25 withData:0 withResultingNode:&v40];
    v24 = v40;
    v41 = v26;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v41)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      v20 = [v24 getFH];
      [v18 getAttrData];
      v23 = v36 = a6;
      v22 = [v18 lfn_interestedClients];
      v21 = [v24 getAttrData];
      [v24 setLfn_inUseClientSet:{objc_msgSend(v24, "lfn_inUseClientSet") | v36}];
      if (self->_spotlightIsEnabled)
      {
        if (v21)
        {
          v39 = 0;
          v30 = [(userFSVolume *)self pathStringForNode:v18 name:v19 buffer:buf bufferSize:1024 outLength:&v39];
          if (v30)
          {
            [(CSLiveFSVolume *)self->_spotlightNotifer sendEventOfType:7 pid:0 path:v30 pathLength:v39 attributes:v21];
          }
        }
      }
    }
  }

  v27 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    *v43 = v41;
    *&v43[4] = 2048;
    *&v43[6] = v23;
    *&v43[14] = 2048;
    *&v43[16] = v20;
    *&v43[24] = 2048;
    *&v43[26] = v21;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LIMakeDir(): reply(%d, %p, %p, %p).\n", buf, 0x26u);
  }

  v28 = v41;
  v29 = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(v16 + 2))(v16, v28, v23, v22, v20, v21, v29);
}

- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 andClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v33 = 0;
  v17 = a9;
  v18 = [(userFSVolume *)self getNodeForFH:a3 withError:&v33];
  v19 = v33;
  v30 = v16;
  v31 = v14;
  if (v33)
  {
    v20 = v15;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = [NSMutableData dataWithData:v16];
    *([v26 mutableBytes] + 6) = 3;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v32 = 0;
    v20 = v15;
    v27 = [v18 createDirEntry:v14 withAttrs:v26 withData:v15 withResultingNode:&v32];
    v25 = v32;
    v33 = v27;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v33)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      v24 = [v25 getFH];
      [v18 getAttrData];
      v21 = v29 = a7;
      v22 = [v18 lfn_interestedClients];
      v23 = [v25 getAttrData];
      [v25 setLfn_inUseClientSet:{objc_msgSend(v25, "lfn_inUseClientSet") | v29}];
    }

    v19 = v33;
  }

  v28 = [(userFSVolume *)self getFreeSpaceInVolume];
  v17[2](v17, v19, v21, v22, v24, v23, v28);
}

- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v12 = a4;
  v13 = a5;
  v42 = 0;
  v14 = a8;
  v15 = [(userFSVolume *)self getNodeForFH:a3 withError:&v42];
  v39 = v12;
  if (v42)
  {
    v16 = 0;
LABEL_4:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_5;
  }

  v16 = [(userFSVolume *)self getNodeForFH:v13 withError:&v42];
  if (v42)
  {
    goto LABEL_4;
  }

  [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
  v40 = 0;
  v41 = 0;
  v23 = [v15 link:v16 withName:v12 fileAttrOut:&v41 dirAttrOut:&v40];
  v17 = v41;
  v18 = v40;
  v42 = v23;
  [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  v20 = [v16 lfn_interestedClients];
  v19 = [v15 lfn_interestedClients];
  if (!v42)
  {
    [(userFSVolume *)self startSyncerIfNeeded];
    if (!v42)
    {
      if ([v15 lfn_check_appledouble])
      {
        v24 = [v15 lfn_appledouble];
        if (v24)
        {
          v25 = v24;
          v35 = [v15 lfn_appledouble];
          v37 = [v35 purpose];

          if (v37 != 2)
          {
            v26 = [v15 lfn_appledouble];
            [v26 reclaimFile];

            [v15 setLfn_appledouble:0];
          }
        }

        v27 = [v15 lfn_appledouble];

        if (!v27)
        {
          v38 = [(userFSVolume *)self appleDoubleManager];
          v36 = [v15 lfn_fh];
          v33 = [v15 lfn_name];
          v34 = [v15 lfn_parent];
          v32 = [v34 lfn_fh];
          v28 = [v38 AppleDoubleForNamespaceWithBaseFile:v36 named:v33 inDirectory:v32];
          [v15 setLfn_appledouble:v28];
        }

        v29 = [v15 lfn_appledouble];
        [v15 setLfn_check_appledouble:{objc_msgSend(v29, "containerFileExists")}];

        v30 = [v15 lfn_appledouble];
        [v30 linkFileToDirectory:v13 andName:v39];

        if (([v15 lfn_check_appledouble] & 1) == 0)
        {
          v31 = [v15 lfn_appledouble];
          [v31 reclaimFile];

          [v15 setLfn_appledouble:0];
        }
      }
    }
  }

LABEL_5:
  v21 = v42;
  v22 = [(userFSVolume *)self getFreeSpaceInVolume];
  v14[2](v14, v21, v18, v20, v17, v19, v22);
}

- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v86 = a5;
  v15 = a8;
  v97 = 0;
  v16 = userfs_log_default;
  v87 = v15;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v52 = v14;
    v53 = v16;
    v54 = [v14 UTF8String];
    v55 = [v86 UTF8String];
    v56 = objc_retainBlock(v15);
    v57 = v13;
    v58 = v56;
    *buf = 136315906;
    v99 = v54;
    v100 = 2080;
    v101 = v55;
    v102 = 2048;
    v103 = v56;
    v104 = 2080;
    label = dispatch_queue_get_label(0);
    _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "removeItem(%s, %s, %p): start on %s", buf, 0x2Au);

    v13 = v57;
    v15 = v87;
  }

  v17 = [(userFSVolume *)self pauseIOQueue];
  v85 = [(userFSVolume *)self getNodeForFH:v14 withError:&v97];
  if (v97)
  {
    v18 = self;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v79 = a6;
  v80 = v17;
  v25 = [(userFSVolume *)self getNodeForFH:v13 withError:&v97];
  v83 = v25;
  if (v97 || (v26 = v25) == 0)
  {
    v18 = self;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000221E0(&v97);
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v97 = 2;
  }

  else
  {
    if ([v13 length])
    {
      v27 = [v26 getFH];
      v28 = [v27 isEqualToString:v13];

      if ((v28 & 1) == 0)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100022254();
        }

        v97 = 2;
      }
    }

    v29 = [(userFSVolume *)self isCaseSensitive];
    v30 = [v26 lfn_name];
    v31 = v30;
    if (v29)
    {
      v32 = [v30 isEqualToString:v86];

      if (v32)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v33 = [v30 lowercaseString];
      v34 = [v86 lowercaseString];
      v35 = [v33 isEqualToString:v34];

      if (v35)
      {
        goto LABEL_50;
      }
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100022314();
    }

    v97 = 2;
    if ([v26 getLinkCount] >= 2)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v36 = self->mountNameToNodeCache;
      v88 = [(NSMutableDictionary *)v36 countByEnumeratingWithState:&v93 objects:v106 count:16];
      if (!v88)
      {
        goto LABEL_49;
      }

      v37 = *v94;
      v78 = v14;
      v81 = v36;
      v82 = self;
      v84 = *v94;
LABEL_30:
      v38 = 0;
      while (1)
      {
        if (*v94 != v37)
        {
          objc_enumerationMutation(v36);
        }

        v39 = *(*(&v93 + 1) + 8 * v38);
        v40 = [(NSMutableDictionary *)self->mountNameToNodeCache objectForKey:v39];
        if (v26 == v40)
        {
          v41 = [v39 itemId];
          v42 = [v26 lfn_parent];
          v43 = [v42 lfn_fh];
          if ([v41 isEqualToString:v43])
          {
            v44 = [(userFSVolume *)self isCaseSensitive];
            v45 = [v26 lfn_name];
            v46 = v45;
            if (v44)
            {
              v47 = [v39 filename];
              v48 = [v46 isEqualToString:v47];
            }

            else
            {
              v47 = [v45 lowercaseString];
              v49 = [v39 filename];
              v50 = [v49 lowercaseString];
              v48 = [v47 isEqualToString:v50];

              v26 = v83;
              v14 = v78;
            }

            v15 = v87;
            v36 = v81;
            self = v82;
            v37 = v84;
            if (v48)
            {
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1000223CC();
              }

              v97 = 0;
              goto LABEL_49;
            }

            goto LABEL_39;
          }

          v15 = v87;
          v37 = v84;
        }

LABEL_39:
        if (v88 == ++v38)
        {
          v51 = [(NSMutableDictionary *)v36 countByEnumeratingWithState:&v93 objects:v106 count:16];
          v88 = v51;
          if (v51)
          {
            goto LABEL_30;
          }

LABEL_49:

          break;
        }
      }
    }

LABEL_50:
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v60 = v97;
    v61 = v85;
    if (!v97)
    {
      v60 = [v85 remove:1 named:v86 node:v26 usingFlags:v79];
    }

    v97 = v60;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    v13 = v77;
    if (v97)
    {
      v18 = self;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      if ([v26 lfn_check_appledouble] && (+[LiveFSAppleDoubleManager isDotUnderBarFileName:](LiveFSAppleDoubleManager, "isDotUnderBarFileName:", v86) & 1) == 0)
      {
        v62 = [v26 lfn_appledouble];
        if (v62)
        {
          v63 = v62;
          v64 = [v26 lfn_appledouble];
          v65 = [v64 purpose];

          v61 = v85;
          if (v65 != 2)
          {
            v66 = [v26 lfn_appledouble];
            [v66 reclaimFile];

            [v26 setLfn_appledouble:0];
          }
        }

        v67 = [v26 lfn_appledouble];

        if (!v67)
        {
          v68 = [(userFSVolume *)self appleDoubleManager];
          v69 = [v26 lfn_fh];
          v70 = [v68 AppleDoubleForNamespaceWithBaseFile:v69 named:v86 inDirectory:v14];
          [v26 setLfn_appledouble:v70];

          v61 = v85;
        }

        v71 = [v26 lfn_appledouble];
        [v26 setLfn_check_appledouble:{objc_msgSend(v71, "containerFileExists")}];

        v72 = [v26 lfn_appledouble];
        [v72 removeFile];

        v73 = [v26 lfn_appledouble];
        [v73 reclaimFile];

        [v26 setLfn_appledouble:0];
      }

      v20 = [v26 lfn_interestedClients];
      v19 = [v26 lfn_fh];
      [v26 forceUpdateLinkCount];
      [(userFSVolume *)self removeFromNameCache:v26 withParent:v61 withName:v86];
      [v61 getAttrData];
      v74 = v61;
      v22 = v18 = self;
      v21 = [v74 lfn_interestedClients];
      if (v18->_spotlightIsEnabled)
      {
        v92 = 0;
        v75 = [(userFSVolume *)v18 pathStringForNode:v74 name:v86 buffer:buf bufferSize:1024 outLength:&v92];
        if (v75)
        {
          v91 = 0;
          memset(v90, 0, sizeof(v90));
          v89 = v75;
          v76 = [NSData dataWithBytes:v90 length:184];
          [(CSLiveFSVolume *)v18->_spotlightNotifer sendEventOfType:1 pid:0 path:v89 pathLength:v92 attributes:v76];
        }
      }
    }
  }

  if (v80)
  {
LABEL_5:
    [(userFSVolume *)v18 resumeIOQueue];
  }

LABEL_6:
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002244C(&v97);
  }

  v23 = v97;
  v24 = [(userFSVolume *)v18 getFreeSpaceInVolume];
  (*(v15 + 2))(v15, v23, v22, v21, v20, v19, 0, v24);

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000224CC();
  }
}

- (void)renameItemIn:(id)a3 named:(id)a4 toDirectory:(id)a5 newName:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v92 = a5;
  v16 = a6;
  v17 = a9;
  v95 = 0;
  v18 = userfs_log_default;
  v91 = v16;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v34 = v14;
    v90 = v18;
    v35 = [v14 UTF8String];
    v36 = [v15 UTF8String];
    v37 = a7;
    v38 = [v92 UTF8String];
    v39 = [v16 UTF8String];
    v40 = objc_retainBlock(v17);
    *buf = 136316162;
    v97 = v35;
    v98 = 2080;
    v99 = v36;
    v100 = 2080;
    v101 = v38;
    a7 = v37;
    v102 = 2080;
    v103 = v39;
    v16 = v91;
    v104 = 2048;
    v105 = v40;
    _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "LIRename(%s, %s, %s, %s, %p): start", buf, 0x34u);
  }

  v19 = [(userFSVolume *)self pauseIOQueue];
  v88 = v14;
  v89 = v15;
  if (!v15 || !v16 || (~a7 & 6) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v82 = 0;
    v83 = 0;
    v85 = 0;
    v86 = 0;
    v26 = 0;
    v84 = 0;
    v87 = 0;
    v27 = 0;
    v28 = 22;
    goto LABEL_7;
  }

  if ((a7 & 2) != 0 && (self->volCapInterfaces & 0x40000) == 0 || (a7 & 4) != 0 && (self->volCapInterfaces & 0x80000) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v82 = 0;
    v83 = 0;
    v85 = 0;
    v86 = 0;
    v26 = 0;
    v84 = 0;
    v87 = 0;
    v27 = 0;
    v28 = 45;
LABEL_7:
    v95 = v28;
    if (!v19)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  log = v19;
  v32 = [(userFSVolume *)self getNodeForFH:v14 withError:&v95];
  v33 = v32;
  if (v95)
  {
    v27 = v32;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v82 = 0;
    v83 = 0;
    v85 = 0;
    v86 = 0;
    v26 = 0;
    v84 = 0;
    v87 = 0;
  }

  else
  {
    v87 = [v32 lfn_interestedClients];
    v45 = [(userFSVolume *)self lookupWithParent:v33 andName:v15];
    v24 = v45;
    if (v45)
    {
      v78 = a7;
      v86 = [v45 lfn_interestedClients];
      v84 = v24;
      v26 = [v24 lfn_fh];
      v22 = 0;
      v94 = 0;
      if (self->_spotlightIsEnabled)
      {
        v22 = strdup([(userFSVolume *)self pathStringForNode:v33 name:v15 buffer:buf bufferSize:1024 outLength:&v94]);
      }

      v46 = [(userFSVolume *)self getNodeForFH:v92 withError:&v95];
      v82 = v46;
      if (v95)
      {
        v27 = v33;
        v20 = 0;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v83 = 0;
        v85 = 0;
      }

      else
      {
        v47 = v46;
        v85 = [v46 lfn_interestedClients];
        v83 = [(userFSVolume *)self lookupWithParent:v47 andName:v16];
        [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
        v74 = v33;
        v95 = [v33 rename:v84 named:v15 withToDirNode:v47 withToNode:v83 withToName:v16 andFlags:v78];
        [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
        if (v95)
        {
          v27 = v33;
          v20 = 0;
          v21 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
        }

        else
        {
          v48 = v33;
          [(userFSVolume *)self startSyncerIfNeeded];
          v23 = 0;
          v93 = 0;
          v49 = v82;
          if (self->_spotlightIsEnabled)
          {
            v23 = strdup([(userFSVolume *)self pathStringForNode:v82 name:v91 buffer:buf bufferSize:1024 outLength:&v93]);
          }

          if ([v84 lfn_check_appledouble] && (+[LiveFSAppleDoubleManager isDotUnderBarFileName:](LiveFSAppleDoubleManager, "isDotUnderBarFileName:", v15) & 1) == 0)
          {
            if ((v78 & 2) != 0 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100022640();
            }

            v50 = v84;
            v51 = [v84 lfn_appledouble];
            if (v51)
            {
              v52 = v51;
              v53 = [v84 lfn_appledouble];
              v54 = [v53 purpose];

              v50 = v84;
              v55 = v54 == 2;
              v48 = v74;
              if (!v55)
              {
                v56 = [v84 lfn_appledouble];
                [v56 reclaimFile];

                [v84 setLfn_appledouble:0];
              }
            }

            v57 = [v50 lfn_appledouble];

            if (!v57)
            {
              v58 = [(userFSVolume *)self appleDoubleManager];
              v59 = [v50 lfn_fh];
              [v58 AppleDoubleForNamespaceWithBaseFile:v59 named:v15 inDirectory:v14];
              v61 = v60 = v48;
              [v84 setLfn_appledouble:v61];

              v48 = v60;
              v15 = v89;

              v50 = v84;
            }

            v62 = [v50 lfn_appledouble];
            [v50 setLfn_check_appledouble:{objc_msgSend(v62, "containerFileExists")}];

            v63 = [v50 lfn_appledouble];
            [v63 renameFileToDirectory:v92 andName:v91];

            v64 = [v50 lfn_appledouble];
            [v64 reclaimFile];

            [v50 setLfn_appledouble:0];
            v49 = v82;
          }

          if ((v78 & 2) != 0)
          {
            if (v83)
            {
              [(userFSVolume *)self removeFromNameCache:v83 withParent:v49];
              v65 = v84;
              [(userFSVolume *)self removeFromNameCache:v84 withParent:v48];
              [v83 updateName:v15 andParent:v48];
              [v84 updateName:v91 andParent:v49];
              [(userFSVolume *)self insertIntoNameCache:v83 withParent:v48];
            }

            else
            {
              v65 = v84;
              [(userFSVolume *)self removeFromNameCache:v84 withParent:v48];
              [v84 updateName:v91 andParent:v49];
            }

            [(userFSVolume *)self insertIntoNameCache:v65 withParent:v49];
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v20 = v83;
            if (v83)
            {
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_100022674();
              }

              v21 = [v83 lfn_fh];
              v20 = [v83 lfn_interestedClients];
              [userFSVolume removeFromNameCache:"removeFromNameCache:withParent:withName:" withParent:v83 withName:?];
              if ([v83 isNodeReclaimable])
              {
                [v83 updateName:@"/unlinked" andParent:v82];
                [(userFSVolume *)self insertIntoNameCache:v83 withParent:v82];
              }

              v48 = v74;
            }

            else
            {
              v21 = 0;
            }

            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1000226B0();
            }

            [(userFSVolume *)self removeFromNameCache:v84 withParent:v48 withName:v15];
            [v84 updateName:? andParent:?];
            v49 = v82;
            v48 = v74;
            [(userFSVolume *)self insertIntoNameCache:v84 withParent:v82 withName:v91];
            v83 = 0;
          }

          v27 = v48;
          v25 = [v48 getAttrData];
          v66 = [v49 getAttrData];
          v24 = v66;
          if (self->_spotlightIsEnabled && v66 && v23 && v22)
          {
            v67 = 0;
            if ((v78 & 2) != 0 && v83)
            {
              v67 = [v83 getAttrData];
            }

            v76 = v94;
            v79 = v67;
            v69 = v93;
            spotlightNotifer = self->_spotlightNotifer;
            v72 = [v84 getAttrData];
            [(CSLiveFSVolume *)spotlightNotifer sendPairedEventOfType:3 pid:0 fromPath:v22 fromPathLength:v76 fromAttributes:v79 toPath:v23 toPathLength:v69 toAttributes:v72];
          }
        }
      }
    }

    else
    {
      v27 = v33;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v25 = 0;
      v82 = 0;
      v83 = 0;
      v85 = 0;
      v86 = 0;
      v26 = 0;
      v84 = 0;
      v95 = 2;
    }
  }

  if (log)
  {
LABEL_8:
    [(userFSVolume *)self resumeIOQueue];
  }

LABEL_9:
  if (v22)
  {
    free(v22);
  }

  if (v23)
  {
    free(v23);
  }

  v29 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v41 = v88;
    loga = v29;
    v77 = [v88 UTF8String];
    v75 = [v89 UTF8String];
    v73 = [v92 UTF8String];
    v42 = [v91 UTF8String];
    v43 = objc_retainBlock(v17);
    v71 = v95;
    v44 = [v21 UTF8String];
    *buf = 136318978;
    v97 = v77;
    v98 = 2080;
    v99 = v75;
    v100 = 2080;
    v101 = v73;
    v102 = 2080;
    v103 = v42;
    v104 = 2048;
    v105 = v43;
    v106 = 1024;
    v107 = v71;
    v108 = 2048;
    v109 = v25;
    v110 = 2048;
    v111 = v87;
    v112 = 2048;
    v113 = v24;
    v114 = 2048;
    v115 = v85;
    v116 = 2048;
    v117 = v86;
    v118 = 2048;
    v119 = v26;
    v120 = 1024;
    v121 = 0;
    v122 = 2048;
    v123 = v20;
    v124 = 2080;
    v125 = v44;
    v126 = 1024;
    v127 = 0;
    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "LIRename(%s, %s, %s, %s, %p): reply(%d, %p, %#llx, %p, %#llx, %#llx, %p, %d, %#llx, %s, %d)", buf, 0x96u);
  }

  v30 = v95;
  v31 = [(userFSVolume *)self getFreeSpaceInVolume];
  LOBYTE(v68) = 0;
  (*(v17 + 2))(v17, v30, v25, v87, v24, v85, v86, v26, v68, v20, v21, 0, v31);
}

- (void)readDirectory:(id)a3 amount:(unint64_t)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v14 = a8;
  v15 = a3;
  [LiveFSSharedMutableBuffer dataWithLength:a4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000F5F8;
  v18[3] = &unk_1000388E8;
  v20 = v14;
  v19 = v21 = a4;
  v16 = v14;
  v17 = v19;
  [(userFSVolume *)self readDirectory:v15 intoBuffer:v17 cookie:a5 verifier:a6 requestID:a7 reply:v18];
}

- (void)readDirectory:(id)a3 amount:(unint64_t)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v16 = a9;
  v17 = a3;
  [LiveFSSharedMutableBuffer dataWithLength:a4];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000F7EC;
  v20[3] = &unk_1000388E8;
  v22 = v16;
  v21 = v23 = a4;
  v18 = v16;
  v19 = v21;
  [(userFSVolume *)self readDirectory:v17 intoBuffer:v19 requestedAttributes:a5 cookie:a6 verifier:a7 requestID:a8 reply:v20];
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v29 = 0;
  v27 = a6;
  v28 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = v13;
    v20 = v16;
    v21 = [v13 UTF8String];
    v22 = objc_retainBlock(v15);
    *buf = 136316162;
    v31 = v21;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a6;
    v38 = 2048;
    v39 = v22;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIReadDir(%s, %p, 0x%llx, 0x%llx, %p): start", buf, 0x34u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:v13 withError:&v29];
  if (!v29)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v29 = [v17 readDirectoryEntries:v14 withCookie:a5 withLengthOut:&v28 andWithVerifier:&v27];
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v29 == -1001)
    {
      if (v28)
      {
        v29 = 0;
      }
    }
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v23 = v13;
    v24 = v18;
    v25 = [v13 UTF8String];
    v26 = objc_retainBlock(v15);
    *buf = 136316930;
    v31 = v25;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a6;
    v38 = 2048;
    v39 = v26;
    v40 = 1024;
    v41 = v29;
    v42 = 2048;
    v43 = v28;
    v44 = 2048;
    v45 = v27;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "LIReadDir(%s, %p, 0x%llx, 0x%llx, %p): reply(%d, %ld, 0x%llx)", buf, 0x4Eu);
  }

  (*(v15 + 2))(v15, v29, v28, v27);
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a9;
  v29 = 0;
  v27 = a7;
  v28 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = v13;
    v20 = v16;
    v21 = [v13 UTF8String];
    v22 = objc_retainBlock(v15);
    *buf = 136316162;
    v31 = v21;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = a6;
    v36 = 2048;
    v37 = a7;
    v38 = 2048;
    v39 = v22;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIReadDirAndAttrs(%s, %p, 0x%llx, 0x%llx, %p): start", buf, 0x34u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:v13 withError:&v29];
  if (!v29)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v29 = [v17 readDirectoryEntriesWithAttrs:v14 withCookie:a6 withLengthOut:&v28 andWithVerifier:&v27];
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v23 = v13;
    v24 = v18;
    v25 = [v13 UTF8String];
    v26 = objc_retainBlock(v15);
    *buf = 136316930;
    v31 = v25;
    v32 = 2048;
    v33 = v14;
    v34 = 2048;
    v35 = a6;
    v36 = 2048;
    v37 = a7;
    v38 = 2048;
    v39 = v26;
    v40 = 1024;
    v41 = v29;
    v42 = 2048;
    v43 = v28;
    v44 = 2048;
    v45 = v27;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "LIReadDirWithAttrs(%s, %p, 0x%llx, 0x%llx, %p): reply(%d, %ld, 0x%llx)", buf, 0x4Eu);
  }

  (*(v15 + 2))(v15, v29, v28, v27);
}

- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a5;
  v12 = 0;
  v8 = [(userFSVolume *)self getNodeForFH:a3 withError:&v12];
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v11 = 0;
    v10 = [v8 statFS:&v11];
    v9 = v11;
    v12 = v10;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  }

  v7[2](v7);
}

- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a5;
  v12 = 0;
  v8 = [(userFSVolume *)self getNodeForFH:a3 withError:&v12];
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v11 = 0;
    v10 = [v8 pathConf:&v11];
    v9 = v11;
    v12 = v10;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  }

  v7[2](v7);
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v17 = v11;
    v18 = [v8 lfn_fh];
    v19 = [v18 UTF8String];
    v20 = [v9 UTF8String];
    v21 = objc_retainBlock(v10);
    *buf = 136315650;
    v30 = v19;
    v31 = 2080;
    v32 = v20;
    v33 = 2048;
    v34 = v21;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LIGetFSAttr(%s, [%s], %p)", buf, 0x20u);
  }

  [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
  v28 = 0;
  v12 = [v8 getFileSystemAttribute:v9 andResult:&v28];
  v13 = v28;
  [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  if (!v12 && [v9 isEqualToString:@"_N_caps_interfaces"])
  {
    v14 = [NSMutableData dataWithData:v13];
    v15 = [v14 mutableBytes];
    *v15 |= 0x100000uLL;

    v13 = v14;
  }

  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v22 = v16;
    v23 = [v8 lfn_fh];
    v24 = [v23 UTF8String];
    v25 = [v9 UTF8String];
    v26 = objc_retainBlock(v10);
    v27 = [v13 length];
    *buf = 136316418;
    v30 = v24;
    v31 = 2080;
    v32 = v25;
    v33 = 2048;
    v34 = v26;
    v35 = 1024;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v27;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "LIGetFSAttr(%s, [%s], %p: reply(%d, %p[%lu])", buf, 0x3Au);
  }

  (*(v10 + 2))(v10, v12, v13);
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v13 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:v9 withError:&v13];
  if (v13)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000226EC();
    }

    (*(v11 + 2))(v11, v13, 0);
  }

  else
  {
    [(userFSVolume *)self otherAttributeOf:v12 named:v10 reply:v11];
  }
}

- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v34 = 0;
  v15 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v21 = v11;
    log = v15;
    v22 = [v11 UTF8String];
    v23 = [v12 UTF8String];
    v24 = [v13 length];
    v25 = objc_retainBlock(v14);
    *buf = 136316162;
    *&buf[4] = v22;
    v36 = 2080;
    v37 = v23;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v24;
    v42 = 2048;
    v43 = v25;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "LISetFSAttr(%s, [%s], %p[%lu], %p)", buf, 0x34u);
  }

  v16 = [(userFSVolume *)self getNodeForFH:v11 withError:&v34];
  if (v34)
  {
    v17 = 0;
  }

  else
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    if ([v12 isEqual:@"_N_SYNC"])
    {
      *buf = 0;
      [v13 getBytes:buf length:8];
      v18 = [v16 syncTheFileSystem:*buf];
      v17 = 0;
    }

    else
    {
      v33 = 0;
      v18 = [v16 setFileSystemAttributes:v12 toValue:v13 andResult:&v33];
      v17 = v33;
    }

    v34 = v18;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (!v34 && [v12 isEqualToString:@"_O_f_preallocate"])
    {
      v19 = [(userFSVolume *)self getFreeSpaceInVolume];
      goto LABEL_12;
    }
  }

  v19 = 0;
LABEL_12:
  v20 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v26 = v11;
    loga = v20;
    v30 = [v11 UTF8String];
    v27 = [v12 UTF8String];
    v28 = [v13 length];
    v29 = objc_retainBlock(v14);
    *buf = 136316674;
    *&buf[4] = v30;
    v36 = 2080;
    v37 = v27;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v28;
    v42 = 2048;
    v43 = v29;
    v44 = 1024;
    v45 = v34;
    v46 = 2048;
    v47 = v17;
    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "LISetFSAttr(%s, [%s], %p[%lu], %p): reply(%d, %p)", buf, 0x44u);
  }

  (*(v14 + 2))(v14, v34, v17, v19);
}

- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v75 = 0;
  v12 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v24 = v9;
    v25 = v12;
    v26 = [v9 UTF8String];
    v27 = [v10 UTF8String];
    v28 = objc_retainBlock(v11);
    *buf = 136315650;
    v77 = v26;
    v78 = 2080;
    v79 = v27;
    v80 = 2048;
    v81 = v28;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, [%s], %p): start", buf, 0x20u);
  }

  if (!sub_100010F58(v10))
  {
    v14 = [(userFSVolume *)self getNodeForFH:v9 withError:&v75];
    v15 = [v14 lfn_xattrCache];
    v16 = v15;
    if (v75)
    {
      v17 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v34 = v9;
        v35 = v17;
        v36 = [v9 UTF8String];
        v37 = [v10 UTF8String];
        v38 = objc_retainBlock(v11);
        *buf = 136315906;
        v77 = v36;
        v78 = 2080;
        v79 = v37;
        v80 = 2048;
        v81 = v38;
        v82 = 1024;
        *v83 = v75;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, nil) 1", buf, 0x26u);
      }

      v11[2](v11, v75, 0);
      goto LABEL_20;
    }

    v74 = 0;
    v18 = [v15 dataForName:v10 wasNegative:&v74];
    v19 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v39 = v19;
      v40 = objc_retainBlock(v11);
      *buf = 138413314;
      v77 = v9;
      v78 = 2112;
      v79 = v10;
      v80 = 2048;
      v81 = v40;
      v82 = 2112;
      *v83 = v18;
      *&v83[8] = 1024;
      *&v83[10] = v74;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "LIGetXattr(%@, %@, %p): xattrData: %@ wasNegative: %d", buf, 0x30u);

      if (v18)
      {
        goto LABEL_13;
      }
    }

    else if (v18)
    {
LABEL_13:
      v20 = v11[2];
      v21 = v11;
      v22 = 0;
      goto LABEL_14;
    }

    if (v74 == 1)
    {
      v20 = v11[2];
      v21 = v11;
      v22 = 93;
      v23 = 0;
      goto LABEL_18;
    }

    v41 = [(userFSVolume *)self appleDoubleManager];

    if (v41)
    {
      v75 = 93;
      if ([v14 lfn_check_appledouble])
      {
        v42 = [(userFSVolume *)self rootNode];

        if (v14 == v42)
        {
          v71 = v14;
          v18 = @".";
        }

        else
        {
          v18 = [v14 lfn_name];
          v71 = [v14 lfn_parent];
        }

        v47 = [v14 lfn_appledouble];
        if (v47)
        {
          v48 = v47;
          [v14 lfn_appledouble];
          v49 = v69 = v18;
          v50 = [v49 purpose];

          v18 = v69;
          if (v50)
          {
            v51 = [v14 lfn_appledouble];
            [v51 reclaimFile];

            [v14 setLfn_appledouble:0];
          }
        }

        v52 = [v14 lfn_appledouble];

        if (!v52)
        {
          v53 = [(userFSVolume *)self appleDoubleManager];
          v54 = [v71 getFH];
          v55 = [v53 AppleDoubleForReadingWithBaseFile:v9 named:v18 inDirectory:v54];
          [v14 setLfn_appledouble:v55];
        }

        v45 = [v14 lfn_appledouble];

        if (v45)
        {
          v56 = [v14 lfn_appledouble];
          [v14 setLfn_check_appledouble:{objc_msgSend(v56, "containerFileExists")}];

          v57 = [v14 lfn_appledouble];
          v45 = [v57 valueForXattrNamed:v10 posixError:&v75];

          if (([v14 lfn_check_appledouble] & 1) == 0)
          {
            v58 = [v14 lfn_appledouble];
            [v58 reclaimFile];

            [v14 setLfn_appledouble:0];
          }
        }

        else
        {
          [v14 setLfn_check_appledouble:0];
        }

        v46 = v71;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v18 = 0;
      }

      v59 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v60 = v9;
        v70 = v59;
        v72 = v46;
        v61 = [v9 UTF8String];
        v62 = [v10 UTF8String];
        v63 = objc_retainBlock(v11);
        *buf = 136316162;
        v77 = v61;
        v78 = 2080;
        v79 = v62;
        v80 = 2048;
        v81 = v63;
        v82 = 1024;
        *v83 = v75;
        *&v83[4] = 2048;
        *&v83[6] = v45;
        v46 = v72;
        _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, %p) 3", buf, 0x30u);
      }

      if (v75 == 93)
      {
        [v16 setNegativeForName:v10];
      }

      else if (v45)
      {
        [v16 setData:v45 forName:v10];
      }

      v11[2](v11, v75, v45);

      goto LABEL_19;
    }

    v73 = 0;
    v43 = [v14 getXAttr:v10 withBuffer:&v73];
    v18 = v73;
    v75 = v43;
    v44 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v64 = v9;
      v65 = v44;
      v66 = [v9 UTF8String];
      v67 = [v10 UTF8String];
      v68 = objc_retainBlock(v11);
      *buf = 136316162;
      v77 = v66;
      v78 = 2080;
      v79 = v67;
      v80 = 2048;
      v81 = v68;
      v82 = 1024;
      *v83 = v75;
      *&v83[4] = 2048;
      *&v83[6] = v18;
      _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, %p) 2", buf, 0x30u);
    }

    if (v75 == 93)
    {
      [v16 setNegativeForName:v10];
    }

    else if (v18)
    {
      [v16 setData:v18 forName:v10];
    }

    v22 = v75;
    v20 = v11[2];
    v21 = v11;
LABEL_14:
    v23 = v18;
LABEL_18:
    v20(v21, v22, v23);
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v13 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v29 = v9;
    v30 = v13;
    v31 = [v9 UTF8String];
    v32 = [v10 UTF8String];
    v33 = objc_retainBlock(v11);
    *buf = 136315906;
    v77 = v31;
    v78 = 2080;
    v79 = v32;
    v80 = 2048;
    v81 = v33;
    v82 = 1024;
    *v83 = 93;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, nil) filtered xattr", buf, 0x26u);
  }

  v11[2](v11, 93, 0);
LABEL_21:
}

- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v142 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v27 = v13;
    v28 = v17;
    v29 = v15;
    v30 = [v13 UTF8String];
    v31 = v13;
    v32 = a6;
    v33 = [v14 UTF8String];
    v34 = objc_retainBlock(v16);
    *buf = 136316162;
    v152 = v30;
    v15 = v29;
    v153 = 2080;
    v154 = v33;
    a6 = v32;
    v13 = v31;
    v155 = 2048;
    v156 = v29;
    v157 = 1024;
    v158 = a6;
    v159 = 2048;
    v160 = v34;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): start", buf, 0x30u);
  }

  if (!sub_100010F58(v14))
  {
    v19 = [(userFSVolume *)self getNodeForFH:v13 withError:&v142];
    v20 = [v19 lfn_xattrCache];
    if (v142)
    {
      v21 = a6;
      v22 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v96 = v13;
        loga = v22;
        v135 = v15;
        v97 = [v13 UTF8String];
        v98 = [v14 UTF8String];
        v99 = objc_retainBlock(v16);
        *buf = 136316418;
        v152 = v97;
        v15 = v135;
        v153 = 2080;
        v154 = v98;
        v155 = 2048;
        v156 = v135;
        v157 = 1024;
        v158 = v21;
        v159 = 2048;
        v160 = v99;
        v161 = 1024;
        v162 = v142;
        _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 1", buf, 0x36u);
      }

      (*(v16 + 2))(v16, v142, 0, 0, 0, 0, 2);
      goto LABEL_117;
    }

    v23 = 0;
    v141 = 0;
    if (self->_spotlightIsEnabled)
    {
      v23 = [(userFSVolume *)self pathStringForNode:v19 name:0 buffer:buf bufferSize:1024 outLength:&v141];
    }

    v24 = [v14 isEqualToString:@"com.apple.FinderInfo"];
    v25 = 0;
    if (!a6 && v24)
    {
      if ([v15 bytes])
      {
        v26 = [v15 bytes];
        v25 = (*v26 | v26[1] | v26[2] | v26[3]) == 0;
        if (*v26 | v26[1] | v26[2] | v26[3])
        {
          a6 = 0;
        }

        else
        {
          a6 = 3;
        }
      }

      else
      {
        v25 = 0;
        a6 = 0;
      }
    }

    v132 = v25;
    v137 = a6;
    v35 = [(userFSVolume *)self appleDoubleManager];

    if (v35)
    {
      v36 = [(userFSVolume *)self rootNode];

      v134 = v15;
      v129 = v23;
      if (v19 == v36)
      {
        v130 = v19;
        log = @".";
      }

      else
      {
        log = [v19 lfn_name];
        v130 = [v19 lfn_parent];
      }

      v39 = [v19 lfn_appledouble];
      if (v39)
      {
        v40 = v39;
        v41 = [v19 lfn_appledouble];
        v42 = [v41 purpose];

        if (v42 != 1)
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1000227BC();
          }

          v43 = [v19 lfn_appledouble];
          [v43 reclaimFile];

          [v19 setLfn_appledouble:0];
        }
      }

      v44 = [v19 lfn_appledouble];

      if (!v44)
      {
        if (v137 == 3)
        {
          v52 = [(userFSVolume *)self appleDoubleManager];
          v53 = [v130 getFH];
          v54 = [v52 AppleDoubleForReadingWithBaseFile:v13 named:log inDirectory:v53];
          [v19 setLfn_appledouble:v54];

          v55 = [v19 lfn_appledouble];

          if (!v55)
          {
            goto LABEL_92;
          }

          v56 = [v19 lfn_appledouble];
          v57 = [v56 containerFileExists];

          v58 = [v19 lfn_appledouble];
          [v58 reclaimFile];

          [v19 setLfn_appledouble:0];
          if ((v57 & 1) == 0)
          {
LABEL_92:
            v100 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
            if (v132)
            {
              v15 = v134;
              if (v100)
              {
                sub_10002299C();
              }

              v101 = 0;
            }

            else
            {
              v15 = v134;
              if (v100)
              {
                sub_100022960();
              }

              v101 = 93;
            }

            (*(v16 + 2))(v16, v101, 0, 0, 0, 0, 2);
            v77 = 0;
            goto LABEL_115;
          }

          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1000227F8();
          }
        }

        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100022834();
        }

        v59 = [(userFSVolume *)self appleDoubleManager];
        v60 = [v130 getFH];
        v61 = [v59 AppleDoubleForWritingWithBaseFile:v13 named:log inDirectory:v60];
        [v19 setLfn_appledouble:v61];

        v62 = [v19 lfn_appledouble];
        if (v62)
        {
          v63 = v62;
          v64 = [v19 lfn_appledouble];
          v65 = [v64 ADFileErr];

          if (v65)
          {
            v66 = [v19 lfn_appledouble];
            v142 = [v66 ADFileErr];

            v67 = [v19 lfn_appledouble];
            [v67 reclaimFile];

            [v19 setLfn_appledouble:0];
            if (v142 == 28)
            {
              v68 = [(userFSVolume *)self appleDoubleManager];
              [v130 getFH];
              v70 = v69 = v20;
              v71 = [v68 AppleDoubleForNamespaceWithBaseFile:v13 named:log inDirectory:v70];
              [v19 setLfn_appledouble:v71];

              v20 = v69;
              v72 = [v19 lfn_appledouble];

              if (v72)
              {
                v73 = [v19 lfn_appledouble];
                [v73 removeFile];

                v74 = [v19 lfn_appledouble];
                [v74 reclaimFile];

                [v19 setLfn_appledouble:0];
              }
            }

            (*(v16 + 2))(v16, v142, 0, 0, 0, 0, 2);
            goto LABEL_71;
          }
        }
      }

      v45 = [v19 lfn_appledouble];

      v46 = userfs_log_default;
      v47 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
      if (!v45)
      {
        if (v47)
        {
          v120 = v13;
          v121 = v46;
          v122 = [v13 UTF8String];
          v123 = [v14 UTF8String];
          v124 = objc_retainBlock(v16);
          *v143 = 136316418;
          v144 = v122;
          v145 = 2080;
          *v146 = v123;
          *&v146[8] = 2048;
          *&v146[10] = v134;
          *&v146[18] = 1024;
          *&v146[20] = v137;
          v147 = 2048;
          v148 = v124;
          v149 = 1024;
          v150 = 5;
          _os_log_debug_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 3", v143, 0x36u);
        }

        (*(v16 + 2))(v16, 5, 0, 0, 0, 0, 2);
LABEL_71:
        v77 = 0;
        v15 = v134;
LABEL_115:

        goto LABEL_116;
      }

      if (v47)
      {
        sub_100022870(v46, v19);
      }

      [v19 setLfn_check_appledouble:1];
      v48 = [v19 lfn_appledouble];
      v49 = v48;
      if (v137 == 3)
      {
        v142 = [v48 removeXattrNamed:v14];

        v50 = v132;
        if (v142 != 93)
        {
          v50 = 0;
        }

        if (v50)
        {
          v51 = v129;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100022924();
          }

          v142 = 0;
        }

        else
        {
          v51 = v129;
          if (v142)
          {
            goto LABEL_103;
          }
        }

        [v20 setNegativeForName:v14];
        if (!self->_spotlightIsEnabled || !v51)
        {
          goto LABEL_102;
        }

        v102 = v51;
        v86 = [v19 getAttrData];
        if (v86)
        {
          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrRemovedEventForPID:0 path:v102 pathLength:v141 xAttrName:v14 attributes:v86];
        }
      }

      else
      {
        v142 = [v48 setValue:v134 forXattrNamed:v14 how:v137];

        if (v142)
        {
          goto LABEL_103;
        }

        [v20 setData:v134 forName:v14];
        if (!self->_spotlightIsEnabled || !v129)
        {
LABEL_102:
          if (!v142)
          {
            v109 = [v19 lfn_parent];

            if (v109)
            {
              v110 = [v19 lfn_parent];
              v103 = [v110 lfn_interestedClients];

              if (v103)
              {
                v111 = [v19 lfn_parent];
                v77 = [v111 lfn_fh];

                goto LABEL_105;
              }

LABEL_104:
              v77 = 0;
LABEL_105:
              v104 = v20;
              v105 = [v19 lfn_appledouble];
              [v105 reclaimFile];

              [v19 setLfn_appledouble:0];
              v106 = userfs_log_default;
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                v116 = v13;
                v117 = v106;
                v133 = [v13 UTF8String];
                v118 = [v14 UTF8String];
                v119 = objc_retainBlock(v16);
                *v143 = 136316418;
                v144 = v133;
                v145 = 2080;
                *v146 = v118;
                *&v146[8] = 2048;
                *&v146[10] = v134;
                *&v146[18] = 1024;
                *&v146[20] = v137;
                v147 = 2048;
                v148 = v119;
                v149 = 1024;
                v150 = v142;
                _os_log_debug_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 4", v143, 0x36u);
              }

              v107 = v142;
              v108 = [v19 lfn_name];
              (*(v16 + 2))(v16, v107, v77, v103, v108, [v19 lfn_interestedClients], objc_msgSend(v19, "hiddenStatus"));

              v15 = v134;
              v20 = v104;
              goto LABEL_115;
            }
          }

LABEL_103:
          v103 = 0;
          goto LABEL_104;
        }

        v86 = [v19 getAttrData];
        if (v86)
        {
          v87 = userfs_log_default;
          v88 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
          v89 = &selRef_setFsPlugin_;
          if (v88)
          {
            spotlightNotifer = self->_spotlightNotifer;
            *v143 = 138413058;
            v144 = spotlightNotifer;
            v145 = 1024;
            *v146 = 0;
            *&v146[4] = 2080;
            *&v146[6] = v129;
            *&v146[14] = 2112;
            *&v146[16] = v14;
            _os_log_debug_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "LISetXattr[ad]:spotlightnotifier:%@:sendXattrModifiedEventForPID:%d:%s:%@", v143, 0x26u);
            v89 = &selRef_setFsPlugin_;
          }

          [*&self->LiveFSVolume_opaque[*(v89 + 313)] sendXattrModifiedEventForPID:0 path:v129 pathLength:v141 xAttrName:v14 xAttrValue:v134 attributes:v86];
        }
      }

      goto LABEL_102;
    }

    v142 = [v19 setXAttr:v14 withXAttr:v15 how:v137];
    v37 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v112 = v13;
      logb = v37;
      v136 = v15;
      v113 = [v13 UTF8String];
      v114 = v23;
      v115 = [v14 UTF8String];
      v131 = objc_retainBlock(v16);
      *v143 = 136316418;
      v144 = v113;
      v15 = v136;
      v145 = 2080;
      *v146 = v115;
      v23 = v114;
      *&v146[8] = 2048;
      *&v146[10] = v136;
      *&v146[18] = 1024;
      *&v146[20] = v137;
      v147 = 2048;
      v148 = v131;
      v149 = 1024;
      v150 = v142;
      _os_log_debug_impl(&_mh_execute_header, logb, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 2", v143, 0x36u);
    }

    v38 = v132;
    if (v142 != 93)
    {
      v38 = 0;
    }

    v127 = v20;
    if (v38)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000229D8();
      }

      v142 = 0;
    }

    else if (v142)
    {
      v75 = v15;
      goto LABEL_89;
    }

    [(userFSVolume *)self startSyncerIfNeeded];
    if (v137 == 3)
    {
      [v20 setNegativeForName:v14];
      if (self->_spotlightIsEnabled && v23)
      {
        v76 = [v19 getAttrData];
        if (v76)
        {
          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrRemovedEventForPID:0 path:v23 pathLength:v141 xAttrName:v14 attributes:v76];
        }

LABEL_85:
      }
    }

    else
    {
      [v20 setData:v15 forName:v14];
      if (self->_spotlightIsEnabled && v23)
      {
        v76 = [v19 getAttrData];
        if (v76)
        {
          v90 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            v125 = self->_spotlightNotifer;
            *v143 = 138413058;
            v144 = v125;
            v145 = 1024;
            *v146 = 0;
            *&v146[4] = 2080;
            *&v146[6] = v23;
            *&v146[14] = 2112;
            *&v146[16] = v14;
            _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "LISetXattr[nxa]:spotlightnotifier:%@:sendXattrModifiedEventForPID:%d:%s:%@", v143, 0x26u);
          }

          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrModifiedEventForPID:0 path:v23 pathLength:v141 xAttrName:v14 xAttrValue:v15 attributes:v76];
        }

        goto LABEL_85;
      }
    }

    v75 = v15;
    v91 = [v19 lfn_parent];

    if (v91)
    {
      v92 = [v19 lfn_parent];
      v93 = [v92 lfn_interestedClients];

      if (v93)
      {
        v94 = [v19 lfn_parent];
        v77 = [v94 lfn_fh];

LABEL_91:
        v95 = v142;
        log = [v19 lfn_name];
        (*(v16 + 2))(v16, v95, v77, v93, log, [v19 lfn_interestedClients], objc_msgSend(v19, "hiddenStatus"));
        v15 = v75;
        v20 = v128;
LABEL_116:

LABEL_117:
        goto LABEL_118;
      }

LABEL_90:
      v77 = 0;
      goto LABEL_91;
    }

LABEL_89:
    v93 = 0;
    goto LABEL_90;
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v78 = v13;
    v79 = v18;
    v80 = v15;
    v81 = [v13 UTF8String];
    v82 = v13;
    v83 = a6;
    v84 = [v14 UTF8String];
    v85 = objc_retainBlock(v16);
    *buf = 136316418;
    v152 = v81;
    v15 = v80;
    v153 = 2080;
    v154 = v84;
    v155 = 2048;
    v156 = v80;
    v157 = 1024;
    v158 = v83;
    v13 = v82;
    v159 = 2048;
    v160 = v85;
    v161 = 1024;
    v162 = 45;
    _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) filtered xattr", buf, 0x36u);
  }

  (*(v16 + 2))(v16, 45, 0, 0, 0, 0, 2);
LABEL_118:
}

- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v50 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022A14();
  }

  v9 = [(userFSVolume *)self getNodeForFH:v7 withError:&v50];
  v10 = [v9 lfn_xattrCache];
  v11 = v10;
  if (v50)
  {
    v12 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v21 = v7;
      v22 = v12;
      v23 = [v7 UTF8String];
      v24 = objc_retainBlock(v8);
      *buf = 136315906;
      v52 = v23;
      v53 = 2048;
      v54 = v24;
      v55 = 1024;
      v56 = v50;
      v57 = 2112;
      v58 = &__NSArray0__struct;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "LIListXattrs(%s, %p): reply(%d, %@) 1", buf, 0x26u);
    }

    (*(v8 + 2))(v8, v50, &__NSArray0__struct);
  }

  else if ([v10 noXattrsPresent])
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100022AD0();
    }

    (*(v8 + 2))(v8, 0, &__NSArray0__struct);
  }

  else
  {
    v13 = [(userFSVolume *)self appleDoubleManager];

    if (v13)
    {
      if ([v9 lfn_check_appledouble])
      {
        v14 = [(userFSVolume *)self rootNode];

        if (v9 == v14)
        {
          v15 = v9;
          v48 = @".";
        }

        else
        {
          v48 = [v9 lfn_name];
          v15 = [v9 lfn_parent];
        }

        v26 = [v9 lfn_appledouble];
        if (v26)
        {
          v27 = v26;
          v28 = [v9 lfn_appledouble];
          v29 = [v28 purpose];

          if (v29)
          {
            v30 = [v9 lfn_appledouble];
            [v30 reclaimFile];

            [v9 setLfn_appledouble:0];
          }
        }

        v31 = [v9 lfn_appledouble];

        v19 = v48;
        if (!v31)
        {
          v32 = [(userFSVolume *)self appleDoubleManager];
          v33 = [v15 getFH];
          v34 = [v32 AppleDoubleForReadingWithBaseFile:v7 named:v48 inDirectory:v33];
          [v9 setLfn_appledouble:v34];
        }

        v20 = [v9 lfn_appledouble];

        if (v20)
        {
          v35 = [v9 lfn_appledouble];
          [v9 setLfn_check_appledouble:{objc_msgSend(v35, "containerFileExists")}];

          v36 = [v9 lfn_appledouble];
          v37 = [v36 allXattrNamesAndPosixError:&v50];
          v20 = sub_10001271C(v37);

          if (([v9 lfn_check_appledouble] & 1) == 0)
          {
            v38 = [v9 lfn_appledouble];
            [v38 reclaimFile];

            [v9 setLfn_appledouble:0];
          }
        }

        else
        {
          [v9 setLfn_check_appledouble:0];
        }
      }

      else
      {
        v15 = 0;
        v19 = 0;
        v20 = &__NSArray0__struct;
      }

      v39 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v40 = v7;
        v41 = v39;
        v42 = [v7 UTF8String];
        v43 = objc_retainBlock(v8);
        *buf = 136315906;
        v52 = v42;
        v53 = 2048;
        v54 = v43;
        v55 = 1024;
        v56 = v50;
        v57 = 2112;
        v58 = v20;
        _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "LIListXattrs(%s, %p): reply(%d, %@) 4", buf, 0x26u);
      }

      if (!v50)
      {
        [v11 setNoXattrsPresent:{objc_msgSend(v20, "count") == 0}];
      }

      (*(v8 + 2))(v8);
    }

    else
    {
      v49 = 0;
      v16 = [v9 listXattr:&v49];
      v17 = v49;
      v18 = v17;
      v50 = v16;
      if (v16 == 45)
      {

        v50 = 0;
        v19 = &__NSArray0__struct;
      }

      else
      {
        v19 = sub_10001271C(v17);
      }

      v25 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v44 = v7;
        v45 = v25;
        v46 = [v7 UTF8String];
        v47 = objc_retainBlock(v8);
        *buf = 136315906;
        v52 = v46;
        v53 = 2048;
        v54 = v47;
        v55 = 1024;
        v56 = v50;
        v57 = 2112;
        v58 = v19;
        _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "LIListXattrs(%s, %p): reply(%d, %@) 2", buf, 0x26u);
      }

      if (!v50)
      {
        [v11 setNoXattrsPresent:{objc_msgSend(v19, "count") == 0}];
      }

      (*(v8 + 2))(v8);
    }
  }
}

- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 forClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  if (self->_allowSearch)
  {
    v18 = [v15 objectForKeyedSubscript:LISearchFileContentsInclude];

    if (v18)
    {
      v19 = 45;
    }

    else
    {
      pthread_rwlock_wrlock(&self->searchRequestsRWLock);
      v20 = [(NSMutableDictionary *)self->searchRequests objectForKeyedSubscript:v14];

      if (v20)
      {
        pthread_rwlock_unlock(&self->searchRequestsRWLock);
        v19 = 17;
      }

      else
      {
        v21 = [[liveFilesSearchRequest alloc] initWithVolume:self withStartLocation:v23 withSearchToken:v14 withSearchCriteria:v15 withProxy:v16 andWithCallerID:a7];
        if (v21)
        {
          v22 = v21;
          v19 = [(liveFilesSearchRequest *)v21 startSearch];
          if (!v19)
          {
            [(NSMutableDictionary *)self->searchRequests setObject:v22 forKeyedSubscript:v14];
          }

          pthread_rwlock_unlock(&self->searchRequestsRWLock);
        }

        else
        {
          pthread_rwlock_unlock(&self->searchRequestsRWLock);
          v19 = 12;
        }
      }
    }
  }

  else
  {
    v19 = 53;
  }

  v17[2](v17, v19);
}

- (void)LISearchAbortAll
{
  pthread_rwlock_rdlock(&self->searchRequestsRWLock);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022B8C();
  }

  [(NSMutableDictionary *)self->searchRequests enumerateKeysAndObjectsUsingBlock:&stru_100038928];
  pthread_rwlock_unlock(&self->searchRequestsRWLock);
}

- (void)abortAllClientSearchesFor:(unint64_t)a3
{
  pthread_rwlock_rdlock(&self->searchRequestsRWLock);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022BC8();
  }

  searchRequests = self->searchRequests;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012C5C;
  v6[3] = &unk_100038948;
  v6[4] = a3;
  [(NSMutableDictionary *)searchRequests enumerateKeysAndObjectsUsingBlock:v6];
  pthread_rwlock_unlock(&self->searchRequestsRWLock);
}

- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022C38();
  }

  pthread_rwlock_rdlock(&self->searchRequestsRWLock);
  v9 = [(NSMutableDictionary *)self->searchRequests objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 abortSearch];
  }

  else
  {
    v11 = 2;
  }

  pthread_rwlock_unlock(&self->searchRequestsRWLock);
  v8[2](v8, v11);
}

- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v23 = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v15 = v9;
    v16 = v11;
    v17 = [v9 UTF8String];
    v18 = objc_retainBlock(v10);
    *buf = 136315650;
    v25 = v17;
    v26 = 1024;
    v27 = a4;
    v28 = 2048;
    v29 = v18;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "LIOpen(%s, %o, %p): start", buf, 0x1Cu);
  }

  v12 = [(userFSVolume *)self getNodeForFH:v9 withError:&v23];
  v13 = v12;
  if (!v23 || v23 == 70 && v12)
  {
    [v12 setLfn_openCount:{objc_msgSend(v12, "lfn_openCount") + 1}];
  }

  v14 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = v9;
    v20 = v14;
    v21 = [v9 UTF8String];
    v22 = objc_retainBlock(v10);
    *buf = 136315906;
    v25 = v21;
    v26 = 1024;
    v27 = a4;
    v28 = 2048;
    v29 = v22;
    v30 = 1024;
    v31 = v23;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIOpen(%s, %o, %p):  reply(%d)", buf, 0x22u);
  }

  (*(v10 + 2))(v10, v23);
}

- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v41 = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v30 = v9;
    v31 = v11;
    v32 = [v9 UTF8String];
    v33 = objc_retainBlock(v10);
    *buf = 136315650;
    v43 = v32;
    v44 = 1024;
    v45 = a4;
    v46 = 2048;
    v47 = v33;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "LIClose(%s, %o, %p): start", buf, 0x1Cu);
  }

  v12 = [(userFSVolume *)self getNodeForFH:v9 withError:&v41];
  v13 = v12;
  v39 = a4;
  if (v41)
  {
    goto LABEL_4;
  }

  if ([v12 lfn_wasWritten])
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v41 = [v13 syncTheFileSystem:1];
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  }

  if (v41 != 30 && v41)
  {
LABEL_4:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v41 = 0;
  v18 = [v13 lfn_interestedClients];
  v20 = [v13 lfn_openCount] - 1;
  [v13 setLfn_openCount:v20];
  if (v20)
  {
    v14 = 0;
LABEL_11:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v21 = [v13 lfn_wasWritten];
  [v13 setLfn_wasWritten:0];
  v14 = [v13 hiddenStatus] != 2;
  if (!v21)
  {
    goto LABEL_11;
  }

  if (self->_spotlightIsEnabled)
  {
    v40 = 0;
    v22 = [(userFSVolume *)self pathStringForNode:v13 name:0 buffer:buf bufferSize:1024 outLength:&v40];
    if (v22)
    {
      v23 = v22;
      spotlightNotifer = self->_spotlightNotifer;
      v25 = v40;
      v26 = [v13 getAttrData];
      [(CSLiveFSVolume *)spotlightNotifer sendEventOfType:4 pid:0 path:v23 pathLength:v25 attributes:v26];
    }
  }

  v17 = [v13 lfn_parent];
  if (!v17)
  {
    v16 = 0;
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v27 = [v13 lfn_parent];
  v16 = [v27 lfn_interestedClients];

  if (!v16)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v28 = [v13 lfn_parent];
  v17 = [v28 lfn_fh];

  v29 = [v13 lfn_parent];
  v19 = [v29 lfn_interestedClients];

  v16 = [v13 lfn_name];
LABEL_22:
  v15 = 1;
LABEL_23:
  v34 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v35 = v9;
    log = v34;
    v36 = [v9 UTF8String];
    v37 = objc_retainBlock(v10);
    *buf = 136316674;
    v43 = v36;
    v44 = 1024;
    v45 = v39;
    v46 = 2048;
    v47 = v37;
    v48 = 1024;
    v49 = v41;
    v50 = 2048;
    v51 = v18;
    v52 = 1024;
    v53 = v15;
    v54 = 1024;
    v55 = v14;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "LIClose(%s, %o, %p):  reply(%d, %#llx, %d, %d)", buf, 0x38u);
  }

  (*(v10 + 2))(v10, v41, v17, v19, v16, v18, v15, v14);
}

- (void)reclaim:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v41 = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = v9;
    v32 = v11;
    v33 = [v9 UTF8String];
    v34 = objc_retainBlock(v10);
    *buf = 136315906;
    v43 = v33;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = v34;
    v48 = 2080;
    v49[0] = dispatch_queue_get_label(0);
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "LIReclaim(%s, %llu, %p): start on %s", buf, 0x2Au);
  }

  v12 = [(userFSVolume *)self appleDoubleManager];

  if (v12 && (-[userFSVolume appleDoubleManager](self, "appleDoubleManager"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 clientID], v13, v14 == a4))
  {
    v15 = 0;
  }

  else
  {
    v15 = [(userFSVolume *)self pauseIOQueue];
  }

  v16 = [(userFSVolume *)self getNodeForFH:v9 withError:&v41];
  v17 = v16;
  if (!v41 || (v41 = v16 != 0, v16))
  {
    v18 = [v16 lfn_appledouble];

    if (v18)
    {
      v19 = [v17 lfn_appledouble];
      [v19 reclaimFile];

      [v17 setLfn_appledouble:0];
    }

    v20 = [v17 lfn_inUseClientSet];
    [v17 setLfn_inUseClientSet:v20 & ~a4];
    if ((v20 & a4) == 0 || [v17 lfn_inUseClientSet] || !objc_msgSend(v17, "isNodeReclaimable"))
    {
      v41 = 0;
      goto LABEL_22;
    }

    v21 = [v17 lfn_name];
    if (([v21 isEqualToString:&stru_100038E98] & 1) == 0)
    {
      v22 = [v17 lfn_parent];

      if (!v22)
      {
LABEL_18:
        [(userFSVolume *)self removeFromFHCache:v17];
        v41 = [v17 reclaim];
        if (v41)
        {
          v23 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            v24 = v9;
            v25 = v23;
            v26 = [v9 UTF8String];
            v27 = objc_retainBlock(v10);
            *buf = 136315906;
            v43 = v26;
            v44 = 2048;
            v45 = a4;
            v46 = 2048;
            v47 = v27;
            v48 = 1024;
            LODWORD(v49[0]) = v41;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "LIReclaim(%s, %llu, %p): fs reclaim error: %d", buf, 0x26u);
          }
        }

        goto LABEL_22;
      }

      v21 = [v17 lfn_parent];
      [(userFSVolume *)self removeFromNameCache:v17 withParent:v21];
    }

    goto LABEL_18;
  }

LABEL_22:
  if (v15)
  {
    [(userFSVolume *)self resumeIOQueue];
  }

  v28 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v35 = v9;
    v36 = v28;
    v37 = [v9 UTF8String];
    v38 = objc_retainBlock(v10);
    v39 = v41;
    label = dispatch_queue_get_label(0);
    *buf = 136316162;
    v43 = v37;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = v38;
    v48 = 1024;
    LODWORD(v49[0]) = v39;
    WORD2(v49[0]) = 2080;
    *(v49 + 6) = label;
    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "LIReclaim(%s, %llu, %p): reply(%d) on %s", buf, 0x30u);
  }

  v29 = v41;
  v30 = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(v10 + 2))(v10, v29, v30);
}

- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v9 = a4;
  v11 = a3;
  v12 = a7;
  v13 = ~a5;
  if (![v11 isEqualToString:LIUpdateNSFileProviderRootContainerItemIdentifier])
  {
    v16 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:v11];
    if (!v16)
    {
      v14 = NSPOSIXErrorDomain;
      v15 = 2;
      goto LABEL_17;
    }

    v17 = v16;
    v18 = [v16 lfn_interestedClients];
    if (v9)
    {
      v19 = v18 | a5;
    }

    else
    {
      v19 = v18 & v13;
    }

    [v17 setLfn_interestedClients:v19];

LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = [(NSMutableDictionary *)self->mountFHtoNodeTable allKeys];
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v31 = v12;
      v23 = 0;
      v24 = *v36;
      do
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v23 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:*(*(&v35 + 1) + 8 * v25)];

          [v23 setLfn_interestedClients:{objc_msgSend(v23, "lfn_interestedClients") & v13}];
          v25 = v25 + 1;
          v26 = v23;
        }

        while (v22 != v25);
        v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);

      v12 = v31;
    }

    goto LABEL_20;
  }

  v14 = NSPOSIXErrorDomain;
  v15 = 22;
LABEL_17:
  v27 = [NSError errorWithDomain:v14 code:v15 userInfo:0];
LABEL_21:
  v28 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013B20;
  block[3] = &unk_100038970;
  v33 = v27;
  v34 = v12;
  v29 = v27;
  v30 = v12;
  dispatch_async(v28, block);
}

- (void)invalidateFileNodesForConnection:(unint64_t)a3
{
  v5 = [(userFSVolume *)self metaDataRequests];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013BC8;
  v6[3] = &unk_100038998;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (int)searchVolume:(id)a3 withCriteria:(id)a4 withSearchToken:(id)a5 andWithResultsHandler:(id)a6
{
  v121 = a3;
  v120 = a4;
  v123 = a5;
  v118 = a6;
  v197 = 0;
  v198[0] = &v197;
  v198[1] = 0x2020000000;
  v199 = 0;
  v122 = objc_alloc_init(pathStack);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022D5C();
  }

  pthread_rwlock_rdlock(&self->searchRequestsRWLock);
  v10 = [(NSMutableDictionary *)self->searchRequests objectForKey:v123];
  pthread_rwlock_unlock(&self->searchRequestsRWLock);
  v127 = v10;
  if (v10)
  {
    if (([v10 aborted] & 1) != 0 || !-[userFSVolume allowSearch](self, "allowSearch"))
    {
      *(v198[0] + 24) = 53;
      v108 = userfs_log_default;
      if (!os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_151;
      }

      *v214 = 0;
      v109 = "searchVolume:searchRequest:aborted";
      goto LABEL_141;
    }

    v11 = [(userFSVolume *)self volumeRawDevice];
    v12 = [v11 fsPlugin];
    v13 = *([v12 FSOps] + 30);

    if (v13)
    {
      v14 = userfs_log_default;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v127 startLocation];
        sub_100022DCC(v15, v225, v14);
      }

      *(v198[0] + 24) = 0;
      v16 = [v127 startLocation];
      v17 = [pathElement pathElementFromName:0 withParentFH:v16 withCookie:0 andWithCookieVerifier:0];
      [(pathStack *)v122 push:v17];

      v18 = 0;
      while (1)
      {
        v126 = [(pathStack *)v122 pop];

        if (!v126 || ([v127 aborted] & 1) != 0)
        {
          break;
        }

        v119 = objc_autoreleasePoolPush();
        v191 = 0;
        v192 = &v191;
        v193 = 0x3032000000;
        v194 = sub_100008688;
        v195 = sub_100008698;
        v196 = 0;
        v185 = 0;
        v186 = &v185;
        v187 = 0x3032000000;
        v188 = sub_100008688;
        v189 = sub_100008698;
        v190 = 0;
        v184 = [v126 cookie];
        v183 = [v126 cookieVerifier];
        v19 = userfs_log_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v100 = [v126 parentFH];
          v101 = [v126 elementName];
          *v214 = 138412546;
          *&v214[4] = v100;
          *&v214[12] = 2112;
          *&v214[14] = v101;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "searchVolume:pop:%@/%@", v214, 0x16u);
        }

        v20 = [v126 elementName];
        v21 = v20 == 0;

        if (v21)
        {
          v27 = [v126 parentFH];
          v28 = v192[5];
          v192[5] = v27;

LABEL_22:
          v29 = [(userFSVolume *)self metaDataRequests];
          v177[0] = _NSConcreteStackBlock;
          v177[1] = 3221225472;
          v177[2] = sub_100015C24;
          v177[3] = &unk_100038A10;
          v177[5] = &v185;
          v177[4] = self;
          v177[6] = &v191;
          v177[7] = &v197;
          dispatch_sync(v29, v177);

          v30 = v126;
          v31 = v127;
          if (*(v198[0] + 24))
          {
            v32 = userfs_log_default;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v104 = v192[5];
              v105 = [v126 parentFH];
              *v214 = 138412546;
              *&v214[4] = v104;
              *&v214[12] = 2112;
              *&v214[14] = v105;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to get the node(reclaimed?) for %@, skipping in: %@", v214, 0x16u);
            }

            v26 = 3;
            goto LABEL_136;
          }

          while (2)
          {
            if ([v30 cookie] == -1 || (objc_msgSend(v31, "aborted") & 1) != 0)
            {
LABEL_133:
              v98 = userfs_log_default;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v106 = [v186[5] getFH];
                v107 = [v186[5] lfn_name];
                *v214 = 138412546;
                *&v214[4] = v106;
                *&v214[12] = 2112;
                *&v214[14] = v107;
                _os_log_debug_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEBUG, "searchVolume:scanDir:done:reclaiming %@[%@]", v214, 0x16u);
              }

              v99 = [(userFSVolume *)self metaDataRequests];
              v131[0] = _NSConcreteStackBlock;
              v131[1] = 3221225472;
              v131[2] = sub_10001636C;
              v131[3] = &unk_100038B68;
              v131[4] = self;
              v133 = &v185;
              v132 = v127;
              dispatch_sync(v99, v131);

              v26 = 0;
              goto LABEL_136;
            }

            context = objc_autoreleasePoolPush();
            v176 = 0;
            v224 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v215 = 0u;
            memset(v214, 0, sizeof(v214));
            v89 = v186[5];
            v90 = [v127 searchCriteria];
            v175 = 0;
            LODWORD(v89) = [v89 scanDirectoryForMatches:v90 withScanDirCookie:&v184 withScanDirCookieVerifier:&v183 withSearchResultType:&v176 withSearchResult:&v175 withSearchResultAttr:v214];
            v125 = v175;
            *(v198[0] + 24) = v89;

            v91 = v198[0];
            v92 = *(v198[0] + 24);
            if (v92 <= -1001)
            {
              if (v92 != -1002)
              {
                if (v92 == -1001)
                {
                  v39 = 0;
                  v45 = 0;
                  goto LABEL_124;
                }

LABEL_118:
                v94 = userfs_log_default;
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_100022F20(v212, v198, v213, v94);
                }

                v39 = 0;
                v45 = 0;
LABEL_129:
                v26 = 2;
LABEL_130:

                objc_autoreleasePoolPop(context);
                v30 = v126;
                v31 = v127;
                if (v26 && v26 != 5)
                {
                  if (v26 != 6)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_133;
                }

                continue;
              }

              v95 = userfs_log_default;
              if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
              {
                [v186[5] lfn_name];
                objc_claimAutoreleasedReturnValue();
                sub_100022ECC();
              }

              v39 = 0;
              v45 = 0;
              v91 = v198[0];
LABEL_124:
              *(v91 + 24) = 0;
LABEL_125:
              v26 = 6;
              goto LABEL_130;
            }

            break;
          }

          if (v92 == -1000)
          {
            v96 = userfs_log_default;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v97 = [v186[5] lfn_name];
              *v208 = 138412290;
              *&v208[4] = v97;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "searchVolume:scanDir:dir:changed:%@", v208, 0xCu);
            }

            v39 = 0;
            v45 = 0;
            *(v198[0] + 24) = 35;
            goto LABEL_129;
          }

          if (v92)
          {
            goto LABEL_118;
          }

          [v126 setCookie:v184];
          [v126 setCookieVerifier:v183];
          v93 = userfs_log_default;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            v75 = [v186[5] lfn_name];
            *v208 = 138413058;
            *&v208[4] = v75;
            *&v208[12] = 2048;
            *&v208[14] = v184;
            *&v208[22] = 2048;
            v209 = v183;
            LOWORD(v210) = 1024;
            *(&v210 + 2) = v176;
            _os_log_debug_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "searchVolume:scanDir:%@:cookie:%#llx:cookieVerf:%#llx:action:%u", v208, 0x26u);
          }

          v70 = v176;
          if ((v176 & 1) == 0)
          {
            v39 = 0;
            if ((v176 & 2) == 0)
            {
LABEL_116:
              if (v70 || [v126 cookie] == -1)
              {
                v45 = 0;
                v26 = 0;
                goto LABEL_130;
              }

              v44 = userfs_log_default;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
              {
                v84 = [v126 cookie];
                *v208 = 134217984;
                *&v208[4] = v84;
                _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "search: Recieved No Action but cookie is not EOF [%llu]", v208, 0xCu);
              }

              v45 = 0;
              goto LABEL_125;
            }

LABEL_84:
            *v208 = 0;
            *&v208[8] = v208;
            *&v208[16] = 0x3032000000;
            v209 = sub_100008688;
            v210 = sub_100008698;
            v211 = 0;
            if (([v125 isEqualToString:@"."] & 1) != 0 || objc_msgSend(v125, "isEqualToString:", @".."))
            {
              v71 = userfs_log_default;
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v125;
                _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "searchVolume:skipping:%@", buf, 0xCu);
              }

              v45 = 0;
              v26 = 5;
            }

            else
            {
              v72 = [(userFSVolume *)self metaDataRequests];
              v135[0] = _NSConcreteStackBlock;
              v135[1] = 3221225472;
              v135[2] = sub_100016228;
              v135[3] = &unk_100038A38;
              v135[4] = self;
              v138 = &v185;
              v73 = v125;
              v136 = v73;
              v137 = v127;
              v139 = &v197;
              v140 = v208;
              dispatch_sync(v72, v135);

              v74 = userfs_log_default;
              if (*(v198[0] + 24))
              {
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
                {
                  v85 = *(v198[0] + 24);
                  *buf = 67109378;
                  *&buf[4] = v85;
                  *&buf[8] = 2112;
                  *&buf[10] = v73;
                  _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "searchVolume:push:lookup:failed:%d:skipping:%@", buf, 0x12u);
                }

                v45 = 0;
                v26 = 5;
              }

              else
              {
                v76 = userfs_log_default;
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  v86 = [v126 elementName];
                  v87 = [v126 cookie];
                  *buf = 138412546;
                  *&buf[4] = v86;
                  *&buf[12] = 2048;
                  *&buf[14] = v87;
                  _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "searchVolume:push:[%@]@%#llx", buf, 0x16u);
                }

                [(pathStack *)v122 push:v126];
                v45 = v186[5];
                v77 = [(userFSVolume *)self metaDataRequests];
                v134[0] = _NSConcreteStackBlock;
                v134[1] = 3221225472;
                v134[2] = sub_10001630C;
                v134[3] = &unk_100038A10;
                v134[4] = self;
                v134[5] = &v185;
                v134[6] = v208;
                v134[7] = &v197;
                dispatch_sync(v77, v134);

                v78 = userfs_log_default;
                if (*(v198[0] + 24))
                {
                  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v88 = *(v198[0] + 24);
                    *buf = 67109378;
                    *&buf[4] = v88;
                    *&buf[8] = 2112;
                    *&buf[10] = v73;
                    _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "searchVolume:push:getfh:failed:%d:skipping:%@", buf, 0x12u);
                  }

                  v26 = 2;
                }

                else
                {
                  v80 = userfs_log_default;
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                  {
                    [v186[5] lfn_name];
                    objc_claimAutoreleasedReturnValue();
                    sub_100022E78();
                  }

                  v81 = [v186[5] lfn_name];
                  v82 = [v45 getFH];
                  v83 = [pathElement pathElementFromName:v81 withParentFH:v82 withCookie:0 andWithCookieVerifier:0];
                  [(pathStack *)v122 push:v83];

                  v26 = 6;
                }
              }
            }

            _Block_object_dispose(v208, 8);

            goto LABEL_130;
          }

          v33 = [(pathStack *)v122 fullPath];
          v34 = [v126 elementName];
          v35 = objc_alloc_init(NSMutableString);
          if (v33 && ([v33 isEqualToString:&stru_100038E98] & 1) == 0)
          {
            [v35 appendFormat:@"%@/", v33];
          }

          if (v34)
          {
            [v35 appendFormat:@"%@/", v34];
          }

          [v35 appendString:v125];
          v36 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            *v208 = 138412290;
            *&v208[4] = v35;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "searchVolume:match:%@", v208, 0xCu);
          }

          v37 = [v120 objectForKeyedSubscript:LISearchObjXattrsToReturn];
          v117 = v35;
          v115 = v33;
          v116 = v34;

          if (v37)
          {
            v171 = 0;
            v172 = &v171;
            v173 = 0x2020000000;
            v174 = 0;
            *v208 = 0;
            *&v208[8] = v208;
            *&v208[16] = 0x3032000000;
            v209 = sub_100008688;
            v210 = sub_100008698;
            v211 = 0;
            v38 = userfs_log_default;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [v120 objectForKeyedSubscript:LISearchObjXattrsToReturn];
              objc_claimAutoreleasedReturnValue();
              sub_100022E24();
            }

            v39 = objc_alloc_init(NSMutableDictionary);
            v40 = [(userFSVolume *)self metaDataRequests];
            v165[0] = _NSConcreteStackBlock;
            v165[1] = 3221225472;
            v165[2] = sub_100015C84;
            v165[3] = &unk_100038A38;
            v165[4] = self;
            v168 = &v185;
            v41 = v125;
            v166 = v41;
            v114 = v127;
            v167 = v114;
            v169 = &v171;
            v170 = v208;
            dispatch_sync(v40, v165);

            v42 = *(v172 + 6);
            if (v42)
            {
              v43 = userfs_log_default;
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v41;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "search: lookup failed, skipping posting result for %@", buf, 0xCu);
              }
            }

            else
            {
              v163 = 0u;
              v164 = 0u;
              v161 = 0u;
              v162 = 0u;
              v46 = [v120 objectForKeyedSubscript:LISearchObjXattrsToReturn];
              v47 = [v46 countByEnumeratingWithState:&v161 objects:v207 count:16];
              if (v47)
              {
                obj = v46;
                v129 = *v162;
                do
                {
                  v48 = 0;
                  v130 = v47;
                  do
                  {
                    if (*v162 != v129)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v49 = *(*(&v161 + 1) + 8 * v48);
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3032000000;
                    v204 = sub_100008688;
                    v205 = sub_100008698;
                    v206 = 0;
                    v155 = 0;
                    v156 = &v155;
                    v157 = 0x3032000000;
                    v158 = sub_100008688;
                    v159 = sub_100008698;
                    v160 = 0;
                    if ([v49 hasSuffix:@"*"])
                    {
                      v50 = [v49 substringToIndex:{objc_msgSend(v49, "length") - 1}];
                      v51 = userfs_log_default;
                      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        *v200 = 138412290;
                        *v201 = v50;
                        _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "search: xattrNamePrefix = '%@'", v200, 0xCu);
                      }

                      v52 = [(userFSVolume *)self metaDataRequests];
                      v154[0] = _NSConcreteStackBlock;
                      v154[1] = 3221225472;
                      v154[2] = sub_100015DCC;
                      v154[3] = &unk_100038A88;
                      v154[4] = self;
                      v154[5] = v208;
                      v154[6] = &v171;
                      v154[7] = &v155;
                      dispatch_sync(v52, v154);

                      if (!*(v172 + 6) && v156[5])
                      {
                        v152 = 0u;
                        v153 = 0u;
                        v150 = 0u;
                        v151 = 0u;
                        v53 = v156[5];
                        v54 = [v53 countByEnumeratingWithState:&v150 objects:v202 count:16];
                        if (v54)
                        {
                          v55 = *v151;
                          do
                          {
                            for (i = 0; i != v54; i = i + 1)
                            {
                              if (*v151 != v55)
                              {
                                objc_enumerationMutation(v53);
                              }

                              v57 = *(*(&v150 + 1) + 8 * i);
                              if ([v57 hasPrefix:v50])
                              {
                                v58 = userfs_log_default;
                                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                                {
                                  *v200 = 138412546;
                                  *v201 = v57;
                                  *&v201[8] = 2112;
                                  *&v201[10] = v50;
                                  _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "search: xattr name '%@' matches prefix '%@'", v200, 0x16u);
                                }

                                v59 = [(userFSVolume *)self metaDataRequests];
                                v145[0] = _NSConcreteStackBlock;
                                v145[1] = 3221225472;
                                v145[2] = sub_100015ED4;
                                v145[3] = &unk_100038AD8;
                                v145[4] = self;
                                v145[5] = v57;
                                v147 = v208;
                                v148 = &v171;
                                v149 = buf;
                                v146 = v39;
                                dispatch_sync(v59, v145);
                              }
                            }

                            v54 = [v53 countByEnumeratingWithState:&v150 objects:v202 count:16];
                          }

                          while (v54);
                        }
                      }
                    }

                    else
                    {
                      v60 = [(userFSVolume *)self metaDataRequests];
                      v144[0] = _NSConcreteStackBlock;
                      v144[1] = 3221225472;
                      v144[2] = sub_100016060;
                      v144[3] = &unk_100038B00;
                      v144[4] = self;
                      v144[5] = v49;
                      v144[6] = v208;
                      v144[7] = &v171;
                      v144[8] = buf;
                      dispatch_sync(v60, v144);

                      v61 = *(v172 + 6);
                      if (v61 != 93)
                      {
                        if (v61)
                        {
                          v63 = userfs_log_default;
                          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
                          {
                            v64 = *(v172 + 6);
                            *v200 = 67109378;
                            *v201 = v64;
                            *&v201[4] = 2112;
                            *&v201[6] = v49;
                            _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "search: got error %d from getXAttr for '%@'", v200, 0x12u);
                          }
                        }

                        else
                        {
                          v62 = *(*&buf[8] + 40);
                          if (v62)
                          {
                            [v39 setObject:v62 forKeyedSubscript:v49];
                          }
                        }
                      }
                    }

                    _Block_object_dispose(&v155, 8);

                    _Block_object_dispose(buf, 8);
                    v48 = v48 + 1;
                  }

                  while (v48 != v130);
                  v46 = obj;
                  v47 = [obj countByEnumeratingWithState:&v161 objects:v207 count:16];
                }

                while (v47);
              }

              v65 = [(userFSVolume *)self metaDataRequests];
              v141[0] = _NSConcreteStackBlock;
              v141[1] = 3221225472;
              v141[2] = sub_10001616C;
              v141[3] = &unk_100038B68;
              v141[4] = self;
              v143 = v208;
              v142 = v114;
              dispatch_async(v65, v141);

              v42 = 0;
            }

            _Block_object_dispose(v208, 8);
            _Block_object_dispose(&v171, 8);
            if (!v42)
            {
LABEL_77:
              v66 = userfs_log_default;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
              {
                v79 = [v186[5] lfn_name];
                *v208 = 138412546;
                *&v208[4] = v79;
                *&v208[12] = 2112;
                *&v208[14] = v117;
                _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "searchVolume:scanDir:%@:match:%@:posting", v208, 0x16u);
              }

              v67 = [v127 resultsHandler];
              v68 = v67;
              if (v39)
              {
                v69 = v39;
              }

              else
              {
                v69 = &__NSDictionary0__struct;
              }

              [v67 addSearchResult:v117 attributes:v214 attributeSize:184 xAttrs:v69];
            }

            v70 = v176;
            if ((v176 & 2) == 0)
            {
              goto LABEL_116;
            }

            goto LABEL_84;
          }

          v39 = 0;
          goto LABEL_77;
        }

        v22 = [(userFSVolume *)self metaDataRequests];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100015B38;
        block[3] = &unk_1000389E8;
        block[4] = self;
        v23 = v126;
        v179 = v23;
        v180 = v127;
        v181 = &v197;
        v182 = &v191;
        dispatch_sync(v22, block);

        v24 = *(v198[0] + 24);
        if (v24)
        {
          v25 = userfs_log_default;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v102 = [v23 elementName];
            v103 = [v23 parentFH];
            *v214 = 138412546;
            *&v214[4] = v102;
            *&v214[12] = 2112;
            *&v214[14] = v103;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to lookup: %@, skipping in: %@", v214, 0x16u);
          }

          v26 = 3;
        }

        else
        {
          v26 = 0;
        }

        if (!v24)
        {
          goto LABEL_22;
        }

LABEL_136:
        _Block_object_dispose(&v185, 8);

        _Block_object_dispose(&v191, 8);
        objc_autoreleasePoolPop(v119);
        v18 = v126;
        if (v26)
        {
          v18 = v126;
          if (v26 != 3)
          {

            v10 = v127;
            goto LABEL_151;
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100022F74();
      }

      *(v198[0] + 24) = 45;
    }

    v10 = v127;
    if ([v127 aborted])
    {
      *(v198[0] + 24) = 53;
      v108 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
      {
        *v214 = 0;
        v109 = "searchVolume:searchRequest:aborted during search";
LABEL_141:
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, v109, v214, 2u);
      }
    }
  }

  else
  {
    *(v198[0] + 24) = 2;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100022FB0(v198);
      v10 = 0;
    }
  }

LABEL_151:
  v110 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    v111 = *(v198[0] + 24);
    *v214 = 138412546;
    *&v214[4] = v121;
    *&v214[12] = 1024;
    *&v214[14] = v111;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "searchVolume:posting:done:%@:%d", v214, 0x12u);
  }

  v112 = [v10 resultsHandler];
  [v112 tokenDone:*(v198[0] + 24)];

  pthread_rwlock_wrlock(&self->searchRequestsRWLock);
  [(NSMutableDictionary *)self->searchRequests removeObjectForKey:v123];
  pthread_rwlock_unlock(&self->searchRequestsRWLock);
  [v127 invalidateConnections];
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100023028();
  }

  dispatch_group_leave(self->_searchGroup);

  _Block_object_dispose(&v197, 8);
  return 0;
}

- (void)verifyExistenceWithFileIDs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length] >> 3;
  if (v8)
  {
    +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v6 length] >> 3);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000165C0;
    v9 = v21[3] = &unk_100038BB0;
    v22 = v9;
    v23 = v8;
    v10 = objc_retainBlock(v21);
    IOGroup = self->_IOGroup;
    IORequests = self->_IORequests;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100016604;
    v15[3] = &unk_100038BD8;
    v15[4] = self;
    v20 = v8;
    v16 = v6;
    v18 = v10;
    v19 = v7;
    v17 = v9;
    v13 = v9;
    v14 = v10;
    dispatch_group_async(IOGroup, IORequests, v15);
  }

  else
  {
    (*(v7 + 2))(v7, 22, 0);
  }
}

- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 length] >> 3;
  if (v9)
  {
    v10 = [(liveFSNode *)self->_rootNode getAttrData];
    v11 = v10;
    if (v10)
    {
      v12 = *([v10 bytes] + 8);
      IOGroup = self->_IOGroup;
      IORequests = self->_IORequests;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000167EC;
      block[3] = &unk_100038C28;
      v20 = v9;
      v16 = v7;
      v17 = self;
      v18 = v8;
      v19 = v12;
      dispatch_group_async(IOGroup, IORequests, block);
    }

    else
    {
      (*(v8 + 2))(v8, 22, 0);
    }
  }

  else
  {
    (*(v8 + 2))(v8, 22, 0);
  }
}

- (id)getFreeSpaceInVolume
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100008688;
  v11 = sub_100008698;
  v12 = 0;
  v3 = [(userFSVolume *)self rootNode];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016EE4;
  v6[3] = &unk_100038C50;
  v6[4] = self;
  v6[5] = &v7;
  [(userFSVolume *)self otherAttributeOf:v3 named:@"_N_f_bavail" reply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end