@interface userFSVolume
+ (id)newWithDevice:(id)device fsType:(id)type volumeName:(id)name rootNode:(void *)node errorState:(id)state returnError:(id *)error;
- (BOOL)getNodeFromFileID:(unint64_t)d outNode:(id *)node;
- (BOOL)pauseIOQueue;
- (char)pathStringForNode:(id)node name:(id)name buffer:(char *)buffer bufferSize:(unint64_t)size outLength:(unint64_t *)length;
- (id)getFileSystemRepresentation:(id)representation error:(int *)error;
- (id)getFreeSpaceInVolume;
- (id)getNodeForFH:(id)h withError:(int *)error;
- (id)grantLIFSKextAccessToFD;
- (id)lookupWithParent:(id)parent andName:(id)name;
- (id)registerSpotlightNotifer;
- (id)revokeLIFSKextAccessToFD;
- (id)updateRootNode:(void *)node errorState:(id)state;
- (int)searchVolume:(id)volume withCriteria:(id)criteria withSearchToken:(id)token andWithResultsHandler:(id)handler;
- (userFSVolume)init;
- (userFSVolume)initWithDevice:(id)device fsType:(id)type volumeName:(id)name UVFSRootNode:(void *)node errorState:(id)state returnError:(id *)error;
- (void)LIRead:(id)read atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply;
- (void)LIRead:(id)read length:(unint64_t)length atOffset:(unint64_t)offset reply:(id)reply;
- (void)LISearchAbortAll;
- (void)LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply;
- (void)abortAllClientSearchesFor:(unint64_t)for;
- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply;
- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply;
- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)createAppleDoubleManagerIfNeeded;
- (void)createIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)dealloc;
- (void)endIO:(id)o range:(_NSRange)range status:(int)status flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply;
- (void)fetchVolumeMachPortLabeled:(id)labeled forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)insertIntoFHCache:(id)cache;
- (void)insertIntoNameCache:(id)cache withParent:(id)parent;
- (void)insertIntoNameCache:(id)cache withParent:(id)parent withName:(id)name;
- (void)invalidateFileNodesForConnection:(unint64_t)connection;
- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)lookupin:(id)lookupin name:(id)name forClient:(unint64_t)client usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD reply:(id)reply;
- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply;
- (void)purgeFHToNodeTable;
- (void)purgeMappingTables;
- (void)purgeNameToFHTable;
- (void)readDirectory:(id)directory amount:(unint64_t)amount cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory amount:(unint64_t)amount requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)reclaim:(id)reclaim forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)removeFromFHCache:(id)cache;
- (void)removeFromNameCache:(id)cache withParent:(id)parent;
- (void)removeFromNameCache:(id)cache withParent:(id)parent withName:(id)name;
- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)renameItemIn:(id)in named:(id)named toDirectory:(id)directory newName:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)resumeIOQueue;
- (void)revokeDeviceIfNeeded;
- (void)rootFileHandleForClient:(unint64_t)client reply:(id)reply;
- (void)search:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply;
- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply;
- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply;
- (void)startSyncerIfNeeded;
- (void)unmount:(unsigned int)unmount;
- (void)verifyExistenceWithFileIDs:(id)ds reply:(id)reply;
- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply;
- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
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

- (id)updateRootNode:(void *)node errorState:(id)state
{
  stateCopy = state;
  if (!(node | stateCopy))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100020BF8();
    }

    goto LABEL_9;
  }

  if (node)
  {
    rootNode = self->_rootNode;
    if (!rootNode || [(liveFSNode *)rootNode UVFSNode]!= node)
    {
      v9 = [[liveFSNode alloc] initWithVolume:self andRootUVFSNode:node];
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
    if (stateCopy)
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
          deviceName = [(LiveFSRawDevice *)self->_volumeRawDevice deviceName];
          v45 = [NSString stringWithFormat:@"%@.%@.%@", metaDataQueueNamePrefix, deviceName, self->_volumeName];
          serialQueueName = self->_serialQueueName;
          self->_serialQueueName = v45;

          metaDataRequests = self->_metaDataRequests;
          [(NSString *)self->_serialQueueName UTF8String];
          dispatch_queue_set_label_nocopy();
          deviceName2 = [(LiveFSRawDevice *)self->_volumeRawDevice deviceName];
          v49 = [NSString stringWithFormat:@"com.apple.filesystem.uvfs.dataIO.%@.%@", deviceName2, self->_volumeName];
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
  if (!stateCopy && v13)
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

  bytes = [v24 bytes];
  self->_useMetadataBuf = (*bytes & 0x400000000) != 0;
  v38 = *bytes;
  self->_useKOIO = (*bytes & 0x40000000) != 0;
  if ((v38 & 0x40000000) != 0)
  {
    grantLIFSKextAccessToFD = [(userFSVolume *)self grantLIFSKextAccessToFD];
    if (grantLIFSKextAccessToFD)
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
  objc_storeStrong(&self->_errorState, state);

  v12 = 0;
LABEL_62:

  return v12;
}

- (userFSVolume)initWithDevice:(id)device fsType:(id)type volumeName:(id)name UVFSRootNode:(void *)node errorState:(id)state returnError:(id *)error
{
  deviceCopy = device;
  typeCopy = type;
  nameCopy = name;
  stateCopy = state;
  if (*error)
  {
    *error = 0;
  }

  v18 = [(userFSVolume *)self init];
  if (!v18)
  {
    goto LABEL_7;
  }

  v38 = typeCopy;
  [deviceCopy deviceName];
  v19 = obj = name;
  v20 = [NSString stringWithFormat:@"com.apple.%@.ostransaction", v19];
  v21 = +[UserFSSleepManager getUserFSSleepManager];
  powerAssertManager = v18->_powerAssertManager;
  v18->_powerAssertManager = v21;

  [v20 UTF8String];
  v23 = os_transaction_create();
  os_transaction = v18->_os_transaction;
  v18->_os_transaction = v23;

  nameCopy = [NSString stringWithFormat:@"%@.%@.%@", v18->_metaDataQueueNamePrefix, v19, nameCopy];
  serialQueueName = v18->_serialQueueName;
  v18->_serialQueueName = nameCopy;

  typeCopy2 = type;
  v27 = stateCopy;
  metaDataRequests = v18->_metaDataRequests;
  [(NSString *)v18->_serialQueueName UTF8String];
  dispatch_queue_set_label_nocopy();
  nameCopy2 = [NSString stringWithFormat:@"com.apple.filesystem.uvfs.dataIO.%@.%@", v19, nameCopy];
  concurrentQueueName = v18->_concurrentQueueName;
  v18->_concurrentQueueName = nameCopy2;

  IORequests = v18->_IORequests;
  [(NSString *)v18->_concurrentQueueName UTF8String];
  stateCopy = v27;
  dispatch_queue_set_label_nocopy();
  objc_storeStrong(&v18->_volumeRawDevice, device);
  v18->_volumeDeviceFD = [deviceCopy deviceFD];
  v18->_readOnly = [deviceCopy deviceIsReadOnly];
  objc_storeStrong(&v18->_volumeName, obj);
  objc_storeStrong(&v18->_fsType, typeCopy2);
  v32 = [(userFSVolume *)v18 updateRootNode:node errorState:v27];
  if (!v32)
  {

    typeCopy = v38;
LABEL_7:
    v34 = v18;
    goto LABEL_8;
  }

  v33 = v32;
  *error = v33;

  v34 = 0;
  typeCopy = v38;
LABEL_8:

  return v34;
}

+ (id)newWithDevice:(id)device fsType:(id)type volumeName:(id)name rootNode:(void *)node errorState:(id)state returnError:(id *)error
{
  stateCopy = state;
  nameCopy = name;
  typeCopy = type;
  deviceCopy = device;
  v18 = [[self alloc] initWithDevice:deviceCopy fsType:typeCopy volumeName:nameCopy UVFSRootNode:node errorState:stateCopy returnError:error];

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
          reclaim = [(liveFSNode *)v10 reclaim];
          if (reclaim)
          {
            v13 = reclaim;
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

- (BOOL)getNodeFromFileID:(unint64_t)d outNode:(id *)node
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
        if ([v12 lfn_fileid] == d)
        {
          v14 = v12;
          *node = v12;
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

- (void)unmount:(unsigned int)unmount
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021350(self);
  }

  metaDataRequests = [(userFSVolume *)self metaDataRequests];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008D30;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_sync(metaDataRequests, block);

  dispatch_group_wait(self->_searchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000213F8();
  }

  metaDataRequests2 = [(userFSVolume *)self metaDataRequests];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008D88;
  v9[3] = &unk_1000387F8;
  v9[4] = self;
  unmountCopy = unmount;
  dispatch_sync(metaDataRequests2, v9);

  if (self->_useKOIO)
  {
    revokeLIFSKextAccessToFD = [(userFSVolume *)self revokeLIFSKextAccessToFD];
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

- (void)insertIntoFHCache:(id)cache
{
  cacheCopy = cache;
  mountFHtoNodeTable = self->mountFHtoNodeTable;
  lfn_fh = [cacheCopy lfn_fh];
  [(NSMutableDictionary *)mountFHtoNodeTable setObject:cacheCopy forKeyedSubscript:lfn_fh];

  v7 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->mountFHtoNodeTable;
    v9 = v7;
    lfn_fh2 = [cacheCopy lfn_fh];
    lfn_name = [cacheCopy lfn_name];
    v12 = 134219010;
    selfCopy = self;
    v14 = 2048;
    v15 = v8;
    v16 = 2112;
    v17 = lfn_fh2;
    v18 = 2112;
    v19 = lfn_name;
    v20 = 2048;
    v21 = cacheCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "LFV[%p]: FHCache[%p]: + fh[%@] => %@[%p]", &v12, 0x34u);
  }
}

- (void)removeFromFHCache:(id)cache
{
  cacheCopy = cache;
  if ([cacheCopy isNodeReclaimable])
  {
    mountFHtoNodeTable = self->mountFHtoNodeTable;
    lfn_fh = [cacheCopy lfn_fh];
    [(NSMutableDictionary *)mountFHtoNodeTable removeObjectForKey:lfn_fh];

    v7 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->mountFHtoNodeTable;
      v9 = v7;
      lfn_fh2 = [cacheCopy lfn_fh];
      lfn_name = [cacheCopy lfn_name];
      v12 = 134219010;
      selfCopy = self;
      v14 = 2048;
      v15 = v8;
      v16 = 2112;
      v17 = lfn_fh2;
      v18 = 2048;
      v19 = cacheCopy;
      v20 = 2112;
      v21 = lfn_name;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "LFV[%p]: FHCache[%p]: - fh[%@] => name[%p]:[%@]", &v12, 0x34u);
    }
  }
}

- (id)getNodeForFH:(id)h withError:(int *)error
{
  if (error)
  {
    *error = 0;
  }

  v5 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKeyedSubscript:h];
  v6 = v5;
  if (error && !v5)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    lfn_parent = [v5 lfn_parent];
    if (lfn_parent)
    {
      v8 = lfn_parent;
      lfn_name = [v6 lfn_name];
      v10 = [lfn_name isEqualToString:&stru_100038E98];

      if (error)
      {
        if (v10)
        {
LABEL_5:
          *error = 70;
        }
      }
    }
  }

  return v6;
}

- (id)getFileSystemRepresentation:(id)representation error:(int *)error
{
  representationCopy = representation;
  if (representationCopy)
  {
    v7 = [NSMutableData dataWithLength:1025];
    volumeRawDevice = [(userFSVolume *)self volumeRawDevice];
    fsPlugin = [volumeRawDevice fsPlugin];
    if ([fsPlugin FSOps])
    {
      volumeRawDevice2 = [(userFSVolume *)self volumeRawDevice];
      fsPlugin2 = [volumeRawDevice2 fsPlugin];
      v12 = *([fsPlugin2 FSOps] + 39);

      if (v12)
      {
        volumeRawDevice3 = [(userFSVolume *)self volumeRawDevice];
        fsPlugin3 = [volumeRawDevice3 fsPlugin];
        v15 = (*([fsPlugin3 FSOps] + 39))(objc_msgSend(representationCopy, "UTF8String"), objc_msgSend(v7, "bytes"), 1025, -[userFSVolume isCaseSensitive](self, "isCaseSensitive"));

        if (v15)
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100021854();
            if (!error)
            {
              goto LABEL_16;
            }
          }

          else if (!error)
          {
LABEL_16:
            v17 = representationCopy;
            goto LABEL_17;
          }

          *error = v15;
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

    if (([representationCopy getFileSystemRepresentation:objc_msgSend(v7 maxLength:{"bytes"), 1025}] & 1) == 0)
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
  if (error)
  {
    *error = 22;
  }

LABEL_18:

  return v16;
}

- (void)insertIntoNameCache:(id)cache withParent:(id)parent
{
  parentCopy = parent;
  cacheCopy = cache;
  lfn_name = [cacheCopy lfn_name];
  [(userFSVolume *)self insertIntoNameCache:cacheCopy withParent:parentCopy withName:lfn_name];
}

- (void)insertIntoNameCache:(id)cache withParent:(id)parent withName:(id)name
{
  cacheCopy = cache;
  parentCopy = parent;
  nameCopy = name;
  v16 = 0;
  pthread_rwlock_wrlock(&self->mountNameToNodeCacheLock);
  v11 = [(userFSVolume *)self getFileSystemRepresentation:nameCopy error:&v16];
  if (v11)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    lfn_fh = [parentCopy lfn_fh];
    v14 = [LiveFSItemPair newWithParent:lfn_fh fname:v11 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
    [(NSMutableDictionary *)mountNameToNodeCache setObject:cacheCopy forKeyedSubscript:v14];
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
      v22 = cacheCopy;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:node:%p:name:%@.", buf, 0x26u);
    }
  }

  pthread_rwlock_unlock(&self->mountNameToNodeCacheLock);
}

- (void)removeFromNameCache:(id)cache withParent:(id)parent
{
  parentCopy = parent;
  cacheCopy = cache;
  lfn_name = [cacheCopy lfn_name];
  [(userFSVolume *)self removeFromNameCache:cacheCopy withParent:parentCopy withName:lfn_name];
}

- (void)removeFromNameCache:(id)cache withParent:(id)parent withName:(id)name
{
  cacheCopy = cache;
  parentCopy = parent;
  nameCopy = name;
  v38 = 0;
  v11 = 56;
  pthread_rwlock_wrlock(&self->mountNameToNodeCacheLock);
  v12 = [(userFSVolume *)self getFileSystemRepresentation:nameCopy error:&v38];
  if (v12)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    lfn_fh = [parentCopy lfn_fh];
    v33 = v12;
    v15 = [LiveFSItemPair newWithParent:lfn_fh fname:v12 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
    [(NSMutableDictionary *)mountNameToNodeCache removeObjectForKey:v15];

    if (([cacheCopy isNodeReclaimable] & 1) == 0)
    {
      v30 = 56;
      v31 = nameCopy;
      v32 = parentCopy;
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

            if (v22 == cacheCopy)
            {
              itemId = [v21 itemId];
              v24 = [(userFSVolume *)self getNodeForFH:itemId withError:&v38];

              if (!v38 && v24)
              {
                filename = [v21 filename];
                [cacheCopy updateName:filename andParent:v24];

                v27 = userfs_log_default;
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                {
                  v28 = v27;
                  filename2 = [v21 filename];
                  *buf = 134218498;
                  v41 = cacheCopy;
                  v42 = 2112;
                  *v43 = filename2;
                  *&v43[8] = 2048;
                  *&v43[10] = v24;
                  _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removeFromNameCache: liveFSNode [%p] name [%@] and parent [%p] were updated", buf, 0x20u);
                }

                nameCopy = v31;
                parentCopy = v32;
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

      nameCopy = v31;
      parentCopy = v32;
      v11 = v30;
    }

    [cacheCopy updateName:&stru_100038E98 andParent:{0, v30, v31, v32}];
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
      *&v43[6] = cacheCopy;
      *&v43[14] = 2112;
      *&v43[16] = nameCopy;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:node:%p:name:%@.", buf, 0x26u);
    }
  }

  pthread_rwlock_unlock(&self->LiveFSVolume_opaque[v11]);
}

- (id)lookupWithParent:(id)parent andName:(id)name
{
  parentCopy = parent;
  nameCopy = name;
  v15 = 0;
  pthread_rwlock_rdlock(&self->mountNameToNodeCacheLock);
  v8 = [(userFSVolume *)self getFileSystemRepresentation:nameCopy error:&v15];
  if (v8)
  {
    mountNameToNodeCache = self->mountNameToNodeCache;
    lfn_fh = [parentCopy lfn_fh];
    v11 = [LiveFSItemPair newWithParent:lfn_fh fname:v8 caseSensitivity:[(userFSVolume *)self isCaseSensitive]];
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
      v21 = parentCopy;
      v22 = 2112;
      v23 = nameCopy;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: getFileSystemRepresentation error:%d:parent:%p:name:%@.", buf, 0x26u);
    }

    v12 = 0;
  }

  pthread_rwlock_unlock(&self->mountNameToNodeCacheLock);

  return v12;
}

- (char)pathStringForNode:(id)node name:(id)name buffer:(char *)buffer bufferSize:(unint64_t)size outLength:(unint64_t *)length
{
  nodeCopy = node;
  nameCopy = name;
  rootNode = [(userFSVolume *)self rootNode];
  v15 = nodeCopy;
  v16 = v15;
  if (nameCopy || rootNode != v15)
  {
    if (nameCopy)
    {
      v18 = nameCopy;
    }

    else
    {
      lfn_name = [v15 lfn_name];
      if ([lfn_name isEqualToString:&stru_100038E98])
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100021A48();
        }

        nameCopy = 0;
        buffer = 0;
        v17 = v16;
LABEL_29:

        goto LABEL_30;
      }

      v18 = lfn_name;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100021950();
    }

    lengthCopy = length;
    v32 = v16;
    v20 = nameCopy != 0;
    v30 = &buffer[size];
    if (nameCopy || rootNode != v16)
    {
      v22 = 0;
      v17 = v16;
      v23 = &buffer[size];
      while (1)
      {
        uTF8String = [v18 UTF8String];
        if (!uTF8String)
        {
          break;
        }

        v25 = uTF8String;
        v26 = strlen(uTF8String);
        v27 = size >= v26 + 1;
        size -= v26 + 1;
        if (!v27)
        {
          buffer = 0;
          lfn_name = v18;
          v16 = v32;
          goto LABEL_29;
        }

        v21 = &v23[~v26];
        strlcpy(v21, v25, v26 + 1);
        *(v23 - 1) = v22;
        if (!v20)
        {
          [v17 lfn_parent];
          v17 = nameCopy = v17;
        }

        lfn_name = [v17 lfn_name];

        v20 = 0;
        nameCopy = 0;
        v22 = 47;
        v23 = v21;
        v18 = lfn_name;
        if (v17 == rootNode)
        {
          goto LABEL_23;
        }
      }

      v16 = v32;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000219C8();
      }

      buffer = 0;
      lfn_name = v18;
    }

    else
    {
      lfn_name = v18;
      v17 = v16;
      v21 = &buffer[size];
LABEL_23:
      buffer = v21;
      v28 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v16 = v32;
        v34 = v32;
        v35 = 2080;
        bufferCopy = buffer;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "pathToStringForNode:%p path:%s", buf, 0x16u);
      }

      else
      {
        v16 = v32;
      }

      nameCopy = 0;
      *lengthCopy = &v30[~buffer];
    }

    goto LABEL_29;
  }

  *buffer = 0;
  *length = 0;
  v17 = v15;
LABEL_30:

  return buffer;
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
      volumeRawDevice = [(userFSVolume *)self volumeRawDevice];
      deviceIsFile = [volumeRawDevice deviceIsFile];

      if (deviceIsFile)
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

- (void)rootFileHandleForClient:(unint64_t)client reply:(id)reply
{
  replyCopy = reply;
  errorState = [(userFSVolume *)self errorState];

  if (errorState)
  {
    errorState2 = [(userFSVolume *)self errorState];
    replyCopy[2](replyCopy, 0, errorState2);
  }

  else
  {
    errorState2 = [(liveFSNode *)self->_rootNode getFH];
    (replyCopy)[2](replyCopy, errorState2, 0);
  }
}

- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  v14 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021D34();
  }

  v9 = [(userFSVolume *)self getNodeForFH:attributesCopy withError:&v14];
  v10 = v9;
  getAttrData = 0;
  if (!v14 && v9)
  {
    getDeviceFD = [v9 getDeviceFD];
    if (getDeviceFD != -1)
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    }

    getAttrData = [v10 getAttrData];
    if (!getAttrData)
    {
      v14 = 5;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100021DA4();
      }
    }

    if (getDeviceFD != -1)
    {
      [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    }
  }

  v13 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v16 = attributesCopy;
    v17 = 1024;
    v18 = v14;
    v19 = 2048;
    v20 = getAttrData;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "LIGetAttr(%@): reply(%d, %p)", buf, 0x1Cu);
  }

  replyCopy[2](replyCopy, v14, getAttrData);
}

- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  toCopy = to;
  replyCopy = reply;
  v31 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021E14();
  }

  v27 = ofCopy;
  v11 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v31];
  v12 = v11;
  getFreeSpaceInVolume = 0;
  hiddenStatus = 2;
  lfn_interestedClients = 0;
  lfn_interestedClients3 = 0;
  lfn_parent = 0;
  lfn_interestedClients2 = 0;
  v19 = 0;
  if (!v31 && v11)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v30 = 0;
    v20 = [v12 setAttributeTo:toCopy withResultingAttribute:&v30];
    v19 = v30;
    v31 = v20;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v31 || !v19)
    {

      getFreeSpaceInVolume = 0;
      lfn_interestedClients = 0;
      lfn_interestedClients3 = 0;
      lfn_parent = 0;
      lfn_interestedClients2 = 0;
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

    lfn_interestedClients = [v12 lfn_interestedClients];
    hiddenStatus = [v12 hiddenStatus];
    if (lfn_interestedClients)
    {
      lfn_parent = [v12 lfn_parent];
      if (lfn_parent)
      {
        lfn_parent2 = [v12 lfn_parent];
        lfn_interestedClients2 = [lfn_parent2 lfn_interestedClients];

        if (lfn_interestedClients2)
        {
          lfn_parent3 = [v12 lfn_parent];
          lfn_interestedClients2 = [lfn_parent3 lfn_fh];

          lfn_parent4 = [v12 lfn_parent];
          lfn_interestedClients3 = [lfn_parent4 lfn_interestedClients];

          lfn_parent = [v12 lfn_name];
        }

        else
        {
          lfn_interestedClients3 = 0;
          lfn_parent = 0;
        }

        goto LABEL_20;
      }

      lfn_interestedClients3 = 0;
    }

    else
    {
      lfn_interestedClients3 = 0;
      lfn_parent = 0;
    }

    lfn_interestedClients2 = 0;
LABEL_20:
    if ((*([toCopy bytes] + 8) & 0x40) != 0)
    {
      getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
    }

    else
    {
      getFreeSpaceInVolume = 0;
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
    v37 = lfn_interestedClients;
    v38 = 1024;
    v39 = hiddenStatus;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "LISetAttr: reply(%d, %p, %#llx, %d)", buf, 0x22u);
  }

  replyCopy[2](replyCopy, v31, v19, lfn_interestedClients2, lfn_interestedClients3, lfn_parent, lfn_interestedClients, hiddenStatus, getFreeSpaceInVolume);
}

- (void)lookupin:(id)lookupin name:(id)name forClient:(unint64_t)client usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  lookupinCopy = lookupin;
  nameCopy = name;
  replyCopy = reply;
  v54 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021F40();
  }

  v16 = [(userFSVolume *)self getNodeForFH:lookupinCopy withError:&v54];
  v40 = v16;
  v41 = lookupinCopy;
  if (v54)
  {
    v17 = 0;
    getFH = 0;
    getAttrData2 = 0;
    getAttrData = 0;
    v21 = 0;
    v22 = 0;
LABEL_16:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v23 = v16;
  if ([nameCopy length] == 1 && !objc_msgSend(nameCopy, "compare:", @"."))
  {
    v54 = 0;
    lfn_parent2 = v23;
  }

  else
  {
    if ([nameCopy length] != 2 || objc_msgSend(nameCopy, "compare:", @".."))
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
      v53 = 0;
      v24 = [v23 lookup:nameCopy withResultingNode:&v53];
      v22 = v53;
      v54 = v24;
      [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
      goto LABEL_14;
    }

    lfn_parent = [v23 lfn_parent];

    if (!lfn_parent)
    {
      v17 = 0;
      getFH = 0;
      getAttrData2 = 0;
      getAttrData = 0;
      v21 = 0;
      v22 = 0;
      v54 = 22;
      goto LABEL_16;
    }

    v54 = 0;
    lfn_parent2 = [v23 lfn_parent];
  }

  v22 = lfn_parent2;
LABEL_14:
  if (v54)
  {
    v17 = 0;
    getFH = 0;
    getAttrData2 = 0;
    getAttrData = 0;
    v21 = 0;
    goto LABEL_16;
  }

  [v22 getFH];
  v17 = v29 = client;
  getAttrData = [v22 getAttrData];
  v36 = v29;
  [v22 setLfn_inUseClientSet:{objc_msgSend(v22, "lfn_inUseClientSet") | v29}];
  flagsCopy = flags;
  if ((flags & 0x20000000) != 0)
  {
    nameCopy = [NSString stringWithFormat:@"._%@", nameCopy];
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v52 = 0;
    v35 = nameCopy;
    v27 = [v23 lookup:nameCopy withResultingNode:&v52];
    v21 = v52;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    getFH = 0;
    getAttrData2 = 0;
    if (!v27)
    {
      getFH = [v21 getFH];
      getAttrData2 = [v21 getAttrData];
      [v21 setLfn_inUseClientSet:{objc_msgSend(v21, "lfn_inUseClientSet") | v36}];
    }

    if (!getAttrData)
    {
      goto LABEL_17;
    }
  }

  else
  {
    getFH = 0;
    getAttrData2 = 0;
    v21 = 0;
    v27 = 0xFFFFFFFFLL;
    if (!getAttrData)
    {
      goto LABEL_17;
    }
  }

  bytes = [getAttrData bytes];
  if ((flagsCopy & 0x10000000) != 0 && bytes)
  {
    v38 = *([getAttrData bytes] + 6);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10000B210;
    v42[3] = &unk_100038820;
    v43 = v41;
    v44 = nameCopy;
    v17 = v17;
    v45 = v17;
    getAttrData = getAttrData;
    v46 = getAttrData;
    v49 = replyCopy;
    v50 = v54;
    v51 = v27;
    getFH = getFH;
    v47 = getFH;
    getAttrData2 = getAttrData2;
    v48 = getAttrData2;
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
    uTF8String = [v17 UTF8String];
    *buf = 138413570;
    v56 = v41;
    v57 = 2112;
    v58 = nameCopy;
    v59 = 1024;
    v60 = v39;
    v61 = 1024;
    v62 = v27;
    v63 = 2080;
    v64 = uTF8String;
    v65 = 2048;
    v66 = getAttrData;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "LILookup(%@/%@): reply(%d, %d, %s, %p)", buf, 0x36u);
  }

  (*(replyCopy + 2))(replyCopy, v54, v27, v17, getAttrData, getFH, getAttrData2, 0, 0, 0);
LABEL_20:
}

- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  v21 = 0;
  v20 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021FB8();
  }

  v9 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v21];
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
    v23 = ofCopy;
    v24 = 1024;
    v25 = v21;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "LIReadLink(%@): reply(%d, %p, %p)", buf, 0x26u);
  }

  replyCopy[2](replyCopy, v21, v11, v12);
}

- (void)LIRead:(id)read length:(unint64_t)length atOffset:(unint64_t)offset reply:(id)reply
{
  replyCopy = reply;
  readCopy = read;
  [NSMutableData dataWithLength:length];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B6FC;
  v14[3] = &unk_100038848;
  v16 = replyCopy;
  v15 = v17 = length;
  v12 = replyCopy;
  v13 = v15;
  [(userFSVolume *)self LIRead:readCopy atOffset:offset withBuffer:v13 reply:v14];
}

- (void)LIRead:(id)read atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply
{
  bufferCopy = buffer;
  replyCopy = reply;
  v25 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:read withError:&v25];
  v13 = v12;
  if (v25)
  {
    replyCopy[2](replyCopy);
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000B98C;
    v19 = &unk_100038870;
    v20 = v12;
    offsetCopy = offset;
    v21 = bufferCopy;
    selfCopy = self;
    v23 = replyCopy;
    v14 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v16);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v15 = atomic_load(&self->ioQueuePausedCount);
      if (v15 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, selfCopy];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v14);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, selfCopy];
      v14[2](v14);
    }
  }
}

- (void)LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply
{
  bufferCopy = buffer;
  replyCopy = reply;
  v25 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:write withError:&v25];
  v13 = v12;
  if (v25)
  {
    replyCopy[2](replyCopy);
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000BBE8;
    v19 = &unk_100038870;
    v20 = v12;
    offsetCopy = offset;
    v21 = bufferCopy;
    selfCopy = self;
    v23 = replyCopy;
    v14 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v16);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v15 = atomic_load(&self->ioQueuePausedCount);
      if (v15 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, selfCopy];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v14);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v16, v17, v18, v19, v20, v21, selfCopy];
      v14[2](v14);
    }
  }
}

- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply
{
  length = range.length;
  location = range.location;
  fileCopy = file;
  replyCopy = reply;
  v28 = 0;
  v15 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "[userFSVolume blockmapFile:range:flags:operationID:reply:]";
    v31 = 2112;
    v32 = fileCopy;
    v33 = 1024;
    flagsCopy = flags;
    v35 = 2048;
    dCopy = d;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s(%@): flags = 0x%x, opID = %llu.", buf, 0x26u);
  }

  v16 = [(userFSVolume *)self getNodeForFH:fileCopy withError:&v28];
  v17 = v16;
  if (v28)
  {
    replyCopy[2](replyCopy);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF30;
    block[3] = &unk_100038898;
    flagsCopy2 = flags;
    v24 = location;
    v25 = length;
    dCopy2 = d;
    v21 = v16;
    selfCopy = self;
    v23 = replyCopy;
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

- (void)endIO:(id)o range:(_NSRange)range status:(int)status flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply
{
  length = range.length;
  location = range.location;
  oCopy = o;
  replyCopy = reply;
  v33 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v35 = "[userFSVolume endIO:range:status:flags:operationID:reply:]";
    v36 = 2112;
    v37 = oCopy;
    v38 = 1024;
    statusCopy = status;
    v40 = 2048;
    dCopy = d;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s(%@): ioStatus = %u, opID = %llu.", buf, 0x26u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:oCopy withError:&v33];
  v18 = v17;
  if (v33)
  {
    replyCopy[2](replyCopy);
  }

  else
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10000C2C8;
    v24 = &unk_1000388C0;
    v28 = location;
    v29 = length;
    statusCopy2 = status;
    flagsCopy = flags;
    dCopy2 = d;
    v25 = v17;
    selfCopy = self;
    v27 = replyCopy;
    v19 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v21);
    if (dispatchAsyncConcurentLiveItemIO)
    {
      v20 = atomic_load(&self->ioQueuePausedCount);
      if (v20 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000220AC();
      }

      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v21, v22, v23, v24, v25, selfCopy];
      dispatch_group_async(self->_IOGroup, self->_IORequests, v19);
    }

    else
    {
      [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests, v21, v22, v23, v24, v25, selfCopy];
      v19[2](v19);
    }
  }
}

- (void)fetchVolumeMachPortLabeled:(id)labeled forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  labeledCopy = labeled;
  replyCopy = reply;
  if (self->_useKOIO || self->_useMetadataBuf)
  {
    getVolumePort = [(LiveFSServiceUserClient *)self->_kernelUserClient getVolumePort];
    if ((getVolumePort - 1) >= 0xFFFFFFFE)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000220E0();
      }
    }

    else
    {
      v11 = getVolumePort;
      v12 = [LiveFSMachPort newByCopyingPort:getVolumePort];
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

        replyCopy[2](replyCopy, 0, v13);

        goto LABEL_11;
      }
    }

    replyCopy[2](replyCopy, 22, 0);
    goto LABEL_11;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100022160();
  }

  replyCopy[2](replyCopy, 45, 0);
LABEL_11:
}

- (void)createIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  replyCopy = reply;
  v38 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = v17;
    v32 = objc_retainBlock(replyCopy);
    *buf = 138413314;
    *v40 = inCopy;
    *&v40[8] = 2112;
    *&v40[10] = namedCopy;
    *&v40[18] = 2048;
    *&v40[20] = attributesCopy;
    *&v40[28] = 2048;
    *&v40[30] = client;
    *&v40[38] = 2048;
    *&v40[40] = v32;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "LICreate(%@/%@, %p, 0x%llx, %p): start", buf, 0x34u);
  }

  v35 = inCopy;
  v18 = [(userFSVolume *)self getNodeForFH:inCopy withError:&v38];
  v34 = attributesCopy;
  if (v38)
  {
    v19 = namedCopy;
    v20 = 0;
    lfn_interestedClients = 0;
    getAttrData2 = 0;
    getAttrData = 0;
    v24 = 0;
  }

  else
  {
    v25 = [NSMutableData dataWithData:attributesCopy];
    *([v25 mutableBytes] + 6) = 1;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v37 = 0;
    v19 = namedCopy;
    v26 = [v18 createDirEntry:namedCopy withAttrs:v25 withData:0 withResultingNode:&v37];
    v24 = v37;
    v38 = v26;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v38)
    {
      v20 = 0;
      lfn_interestedClients = 0;
      getAttrData2 = 0;
      getAttrData = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      [v24 getFH];
      v20 = v33 = client;
      getAttrData = [v18 getAttrData];
      lfn_interestedClients = [v18 lfn_interestedClients];
      getAttrData2 = [v24 getAttrData];
      [v24 setLfn_inUseClientSet:{objc_msgSend(v24, "lfn_inUseClientSet") | v33}];
      if (self->_spotlightIsEnabled)
      {
        if (getAttrData2)
        {
          v36 = 0;
          v30 = [(userFSVolume *)self pathStringForNode:v18 name:v19 buffer:buf bufferSize:1024 outLength:&v36];
          if (v30)
          {
            [(CSLiveFSVolume *)self->_spotlightNotifer sendEventOfType:0 pid:0 path:v30 pathLength:v36 attributes:getAttrData2];
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
    *&v40[6] = getAttrData;
    *&v40[14] = 2048;
    *&v40[16] = lfn_interestedClients;
    *&v40[24] = 2048;
    *&v40[26] = v20;
    *&v40[34] = 2048;
    *&v40[36] = getAttrData2;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LICreate(): reply(%d, %p, %#llx, %p, %p)", buf, 0x30u);
  }

  v28 = v38;
  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(replyCopy + 2))(replyCopy, v28, getAttrData, lfn_interestedClients, v20, getAttrData2, getFreeSpaceInVolume);
}

- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  replyCopy = reply;
  v41 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = inCopy;
    v32 = v17;
    uTF8String = [inCopy UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    v35 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    *v43 = uTF8String;
    *&v43[8] = 2080;
    *&v43[10] = uTF8String2;
    *&v43[18] = 2048;
    *&v43[20] = attributesCopy;
    *&v43[28] = 2048;
    *&v43[30] = v35;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "LIMakeDir(%s, %s, %p, %p): start", buf, 0x2Au);
  }

  v38 = inCopy;
  v18 = [(userFSVolume *)self getNodeForFH:inCopy withError:&v41];
  v37 = attributesCopy;
  if (v41)
  {
    v19 = namedCopy;
    getFH = 0;
    getAttrData = 0;
    lfn_interestedClients = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = [NSMutableData dataWithData:attributesCopy];
    *([v25 mutableBytes] + 6) = 2;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v40 = 0;
    v19 = namedCopy;
    v26 = [v18 createDirEntry:namedCopy withAttrs:v25 withData:0 withResultingNode:&v40];
    v24 = v40;
    v41 = v26;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v41)
    {
      getFH = 0;
      getAttrData = 0;
      lfn_interestedClients = 0;
      v23 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      getFH = [v24 getFH];
      [v18 getAttrData];
      v23 = v36 = client;
      lfn_interestedClients = [v18 lfn_interestedClients];
      getAttrData = [v24 getAttrData];
      [v24 setLfn_inUseClientSet:{objc_msgSend(v24, "lfn_inUseClientSet") | v36}];
      if (self->_spotlightIsEnabled)
      {
        if (getAttrData)
        {
          v39 = 0;
          v30 = [(userFSVolume *)self pathStringForNode:v18 name:v19 buffer:buf bufferSize:1024 outLength:&v39];
          if (v30)
          {
            [(CSLiveFSVolume *)self->_spotlightNotifer sendEventOfType:7 pid:0 path:v30 pathLength:v39 attributes:getAttrData];
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
    *&v43[16] = getFH;
    *&v43[24] = 2048;
    *&v43[26] = getAttrData;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LIMakeDir(): reply(%d, %p, %p, %p).\n", buf, 0x26u);
  }

  v28 = v41;
  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(replyCopy + 2))(replyCopy, v28, v23, lfn_interestedClients, getFH, getAttrData, getFreeSpaceInVolume);
}

- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  namedCopy = named;
  contentsCopy = contents;
  attributesCopy = attributes;
  v33 = 0;
  replyCopy = reply;
  v18 = [(userFSVolume *)self getNodeForFH:in withError:&v33];
  v19 = v33;
  v30 = attributesCopy;
  v31 = namedCopy;
  if (v33)
  {
    v20 = contentsCopy;
    v21 = 0;
    lfn_interestedClients = 0;
    getAttrData = 0;
    getFH = 0;
    v25 = 0;
  }

  else
  {
    v26 = [NSMutableData dataWithData:attributesCopy];
    *([v26 mutableBytes] + 6) = 3;
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v32 = 0;
    v20 = contentsCopy;
    v27 = [v18 createDirEntry:namedCopy withAttrs:v26 withData:contentsCopy withResultingNode:&v32];
    v25 = v32;
    v33 = v27;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (v33)
    {
      v21 = 0;
      lfn_interestedClients = 0;
      getAttrData = 0;
      getFH = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      getFH = [v25 getFH];
      [v18 getAttrData];
      v21 = v29 = client;
      lfn_interestedClients = [v18 lfn_interestedClients];
      getAttrData = [v25 getAttrData];
      [v25 setLfn_inUseClientSet:{objc_msgSend(v25, "lfn_inUseClientSet") | v29}];
    }

    v19 = v33;
  }

  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  replyCopy[2](replyCopy, v19, v21, lfn_interestedClients, getFH, getAttrData, getFreeSpaceInVolume);
}

- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  namedCopy = named;
  directoryCopy = directory;
  v42 = 0;
  replyCopy = reply;
  v15 = [(userFSVolume *)self getNodeForFH:of withError:&v42];
  v39 = namedCopy;
  if (v42)
  {
    v16 = 0;
LABEL_4:
    v17 = 0;
    v18 = 0;
    lfn_interestedClients2 = 0;
    lfn_interestedClients = 0;
    goto LABEL_5;
  }

  v16 = [(userFSVolume *)self getNodeForFH:directoryCopy withError:&v42];
  if (v42)
  {
    goto LABEL_4;
  }

  [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
  v40 = 0;
  v41 = 0;
  v23 = [v15 link:v16 withName:namedCopy fileAttrOut:&v41 dirAttrOut:&v40];
  v17 = v41;
  v18 = v40;
  v42 = v23;
  [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  lfn_interestedClients = [v16 lfn_interestedClients];
  lfn_interestedClients2 = [v15 lfn_interestedClients];
  if (!v42)
  {
    [(userFSVolume *)self startSyncerIfNeeded];
    if (!v42)
    {
      if ([v15 lfn_check_appledouble])
      {
        lfn_appledouble = [v15 lfn_appledouble];
        if (lfn_appledouble)
        {
          v25 = lfn_appledouble;
          lfn_appledouble2 = [v15 lfn_appledouble];
          purpose = [lfn_appledouble2 purpose];

          if (purpose != 2)
          {
            lfn_appledouble3 = [v15 lfn_appledouble];
            [lfn_appledouble3 reclaimFile];

            [v15 setLfn_appledouble:0];
          }
        }

        lfn_appledouble4 = [v15 lfn_appledouble];

        if (!lfn_appledouble4)
        {
          appleDoubleManager = [(userFSVolume *)self appleDoubleManager];
          lfn_fh = [v15 lfn_fh];
          lfn_name = [v15 lfn_name];
          lfn_parent = [v15 lfn_parent];
          lfn_fh2 = [lfn_parent lfn_fh];
          v28 = [appleDoubleManager AppleDoubleForNamespaceWithBaseFile:lfn_fh named:lfn_name inDirectory:lfn_fh2];
          [v15 setLfn_appledouble:v28];
        }

        lfn_appledouble5 = [v15 lfn_appledouble];
        [v15 setLfn_check_appledouble:{objc_msgSend(lfn_appledouble5, "containerFileExists")}];

        lfn_appledouble6 = [v15 lfn_appledouble];
        [lfn_appledouble6 linkFileToDirectory:directoryCopy andName:v39];

        if (([v15 lfn_check_appledouble] & 1) == 0)
        {
          lfn_appledouble7 = [v15 lfn_appledouble];
          [lfn_appledouble7 reclaimFile];

          [v15 setLfn_appledouble:0];
        }
      }
    }
  }

LABEL_5:
  v21 = v42;
  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  replyCopy[2](replyCopy, v21, v18, lfn_interestedClients, v17, lfn_interestedClients2, getFreeSpaceInVolume);
}

- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply
{
  itemCopy = item;
  fromCopy = from;
  namedCopy = named;
  replyCopy = reply;
  v97 = 0;
  v16 = userfs_log_default;
  v87 = replyCopy;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v52 = fromCopy;
    v53 = v16;
    uTF8String = [fromCopy UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    v56 = objc_retainBlock(replyCopy);
    v57 = itemCopy;
    v58 = v56;
    *buf = 136315906;
    v99 = uTF8String;
    v100 = 2080;
    v101 = uTF8String2;
    v102 = 2048;
    v103 = v56;
    v104 = 2080;
    label = dispatch_queue_get_label(0);
    _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "removeItem(%s, %s, %p): start on %s", buf, 0x2Au);

    itemCopy = v57;
    replyCopy = v87;
  }

  pauseIOQueue = [(userFSVolume *)self pauseIOQueue];
  v85 = [(userFSVolume *)self getNodeForFH:fromCopy withError:&v97];
  if (v97)
  {
    selfCopy4 = self;
    lfn_fh3 = 0;
    lfn_interestedClients = 0;
    lfn_interestedClients2 = 0;
    v22 = 0;
    if (!pauseIOQueue)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  flagsCopy = flags;
  v80 = pauseIOQueue;
  v25 = [(userFSVolume *)self getNodeForFH:itemCopy withError:&v97];
  v83 = v25;
  if (v97 || (v26 = v25) == 0)
  {
    selfCopy4 = self;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000221E0(&v97);
    }

    lfn_fh3 = 0;
    lfn_interestedClients = 0;
    lfn_interestedClients2 = 0;
    v22 = 0;
    v97 = 2;
  }

  else
  {
    if ([itemCopy length])
    {
      getFH = [v26 getFH];
      v28 = [getFH isEqualToString:itemCopy];

      if ((v28 & 1) == 0)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100022254();
        }

        v97 = 2;
      }
    }

    isCaseSensitive = [(userFSVolume *)self isCaseSensitive];
    lfn_name = [v26 lfn_name];
    v31 = lfn_name;
    if (isCaseSensitive)
    {
      v32 = [lfn_name isEqualToString:namedCopy];

      if (v32)
      {
        goto LABEL_50;
      }
    }

    else
    {
      lowercaseString = [lfn_name lowercaseString];
      lowercaseString2 = [namedCopy lowercaseString];
      v35 = [lowercaseString isEqualToString:lowercaseString2];

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
      v78 = fromCopy;
      v81 = v36;
      selfCopy3 = self;
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
          itemId = [v39 itemId];
          lfn_parent = [v26 lfn_parent];
          lfn_fh = [lfn_parent lfn_fh];
          if ([itemId isEqualToString:lfn_fh])
          {
            isCaseSensitive2 = [(userFSVolume *)self isCaseSensitive];
            lfn_name2 = [v26 lfn_name];
            v46 = lfn_name2;
            if (isCaseSensitive2)
            {
              filename = [v39 filename];
              v48 = [v46 isEqualToString:filename];
            }

            else
            {
              filename = [lfn_name2 lowercaseString];
              filename2 = [v39 filename];
              lowercaseString3 = [filename2 lowercaseString];
              v48 = [filename isEqualToString:lowercaseString3];

              v26 = v83;
              fromCopy = v78;
            }

            replyCopy = v87;
            v36 = v81;
            self = selfCopy3;
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

          replyCopy = v87;
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
      v60 = [v85 remove:1 named:namedCopy node:v26 usingFlags:flagsCopy];
    }

    v97 = v60;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    itemCopy = v77;
    if (v97)
    {
      selfCopy4 = self;
      lfn_fh3 = 0;
      lfn_interestedClients = 0;
      lfn_interestedClients2 = 0;
      v22 = 0;
    }

    else
    {
      [(userFSVolume *)self startSyncerIfNeeded];
      if ([v26 lfn_check_appledouble] && (+[LiveFSAppleDoubleManager isDotUnderBarFileName:](LiveFSAppleDoubleManager, "isDotUnderBarFileName:", namedCopy) & 1) == 0)
      {
        lfn_appledouble = [v26 lfn_appledouble];
        if (lfn_appledouble)
        {
          v63 = lfn_appledouble;
          lfn_appledouble2 = [v26 lfn_appledouble];
          purpose = [lfn_appledouble2 purpose];

          v61 = v85;
          if (purpose != 2)
          {
            lfn_appledouble3 = [v26 lfn_appledouble];
            [lfn_appledouble3 reclaimFile];

            [v26 setLfn_appledouble:0];
          }
        }

        lfn_appledouble4 = [v26 lfn_appledouble];

        if (!lfn_appledouble4)
        {
          appleDoubleManager = [(userFSVolume *)self appleDoubleManager];
          lfn_fh2 = [v26 lfn_fh];
          v70 = [appleDoubleManager AppleDoubleForNamespaceWithBaseFile:lfn_fh2 named:namedCopy inDirectory:fromCopy];
          [v26 setLfn_appledouble:v70];

          v61 = v85;
        }

        lfn_appledouble5 = [v26 lfn_appledouble];
        [v26 setLfn_check_appledouble:{objc_msgSend(lfn_appledouble5, "containerFileExists")}];

        lfn_appledouble6 = [v26 lfn_appledouble];
        [lfn_appledouble6 removeFile];

        lfn_appledouble7 = [v26 lfn_appledouble];
        [lfn_appledouble7 reclaimFile];

        [v26 setLfn_appledouble:0];
      }

      lfn_interestedClients = [v26 lfn_interestedClients];
      lfn_fh3 = [v26 lfn_fh];
      [v26 forceUpdateLinkCount];
      [(userFSVolume *)self removeFromNameCache:v26 withParent:v61 withName:namedCopy];
      [v61 getAttrData];
      v74 = v61;
      v22 = selfCopy4 = self;
      lfn_interestedClients2 = [v74 lfn_interestedClients];
      if (selfCopy4->_spotlightIsEnabled)
      {
        v92 = 0;
        v75 = [(userFSVolume *)selfCopy4 pathStringForNode:v74 name:namedCopy buffer:buf bufferSize:1024 outLength:&v92];
        if (v75)
        {
          v91 = 0;
          memset(v90, 0, sizeof(v90));
          v89 = v75;
          v76 = [NSData dataWithBytes:v90 length:184];
          [(CSLiveFSVolume *)selfCopy4->_spotlightNotifer sendEventOfType:1 pid:0 path:v89 pathLength:v92 attributes:v76];
        }
      }
    }
  }

  if (v80)
  {
LABEL_5:
    [(userFSVolume *)selfCopy4 resumeIOQueue];
  }

LABEL_6:
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002244C(&v97);
  }

  v23 = v97;
  getFreeSpaceInVolume = [(userFSVolume *)selfCopy4 getFreeSpaceInVolume];
  (*(replyCopy + 2))(replyCopy, v23, v22, lfn_interestedClients2, lfn_interestedClients, lfn_fh3, 0, getFreeSpaceInVolume);

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000224CC();
  }
}

- (void)renameItemIn:(id)in named:(id)named toDirectory:(id)directory newName:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  directoryCopy = directory;
  nameCopy = name;
  replyCopy = reply;
  v95 = 0;
  v18 = userfs_log_default;
  v91 = nameCopy;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v34 = inCopy;
    v90 = v18;
    uTF8String = [inCopy UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    flagsCopy = flags;
    uTF8String3 = [directoryCopy UTF8String];
    uTF8String4 = [nameCopy UTF8String];
    v40 = objc_retainBlock(replyCopy);
    *buf = 136316162;
    v97 = uTF8String;
    v98 = 2080;
    v99 = uTF8String2;
    v100 = 2080;
    v101 = uTF8String3;
    flags = flagsCopy;
    v102 = 2080;
    v103 = uTF8String4;
    nameCopy = v91;
    v104 = 2048;
    v105 = v40;
    _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "LIRename(%s, %s, %s, %s, %p): start", buf, 0x34u);
  }

  pauseIOQueue = [(userFSVolume *)self pauseIOQueue];
  v88 = inCopy;
  v89 = namedCopy;
  if (!namedCopy || !nameCopy || (~flags & 6) == 0)
  {
    lfn_interestedClients4 = 0;
    lfn_fh3 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    getAttrData = 0;
    v82 = 0;
    v83 = 0;
    lfn_interestedClients3 = 0;
    lfn_interestedClients2 = 0;
    lfn_fh = 0;
    v84 = 0;
    lfn_interestedClients = 0;
    v27 = 0;
    v28 = 22;
    goto LABEL_7;
  }

  if ((flags & 2) != 0 && (self->volCapInterfaces & 0x40000) == 0 || (flags & 4) != 0 && (self->volCapInterfaces & 0x80000) == 0)
  {
    lfn_interestedClients4 = 0;
    lfn_fh3 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    getAttrData = 0;
    v82 = 0;
    v83 = 0;
    lfn_interestedClients3 = 0;
    lfn_interestedClients2 = 0;
    lfn_fh = 0;
    v84 = 0;
    lfn_interestedClients = 0;
    v27 = 0;
    v28 = 45;
LABEL_7:
    v95 = v28;
    if (!pauseIOQueue)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  log = pauseIOQueue;
  v32 = [(userFSVolume *)self getNodeForFH:inCopy withError:&v95];
  v33 = v32;
  if (v95)
  {
    v27 = v32;
    lfn_interestedClients4 = 0;
    lfn_fh3 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    getAttrData = 0;
    v82 = 0;
    v83 = 0;
    lfn_interestedClients3 = 0;
    lfn_interestedClients2 = 0;
    lfn_fh = 0;
    v84 = 0;
    lfn_interestedClients = 0;
  }

  else
  {
    lfn_interestedClients = [v32 lfn_interestedClients];
    v45 = [(userFSVolume *)self lookupWithParent:v33 andName:namedCopy];
    v24 = v45;
    if (v45)
    {
      flagsCopy2 = flags;
      lfn_interestedClients2 = [v45 lfn_interestedClients];
      v84 = v24;
      lfn_fh = [v24 lfn_fh];
      v22 = 0;
      v94 = 0;
      if (self->_spotlightIsEnabled)
      {
        v22 = strdup([(userFSVolume *)self pathStringForNode:v33 name:namedCopy buffer:buf bufferSize:1024 outLength:&v94]);
      }

      v46 = [(userFSVolume *)self getNodeForFH:directoryCopy withError:&v95];
      v82 = v46;
      if (v95)
      {
        v27 = v33;
        lfn_interestedClients4 = 0;
        lfn_fh3 = 0;
        v23 = 0;
        v24 = 0;
        getAttrData = 0;
        v83 = 0;
        lfn_interestedClients3 = 0;
      }

      else
      {
        v47 = v46;
        lfn_interestedClients3 = [v46 lfn_interestedClients];
        v83 = [(userFSVolume *)self lookupWithParent:v47 andName:nameCopy];
        [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
        v74 = v33;
        v95 = [v33 rename:v84 named:namedCopy withToDirNode:v47 withToNode:v83 withToName:nameCopy andFlags:flagsCopy2];
        [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
        if (v95)
        {
          v27 = v33;
          lfn_interestedClients4 = 0;
          lfn_fh3 = 0;
          v23 = 0;
          v24 = 0;
          getAttrData = 0;
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

          if ([v84 lfn_check_appledouble] && (+[LiveFSAppleDoubleManager isDotUnderBarFileName:](LiveFSAppleDoubleManager, "isDotUnderBarFileName:", namedCopy) & 1) == 0)
          {
            if ((flagsCopy2 & 2) != 0 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100022640();
            }

            v50 = v84;
            lfn_appledouble = [v84 lfn_appledouble];
            if (lfn_appledouble)
            {
              v52 = lfn_appledouble;
              lfn_appledouble2 = [v84 lfn_appledouble];
              purpose = [lfn_appledouble2 purpose];

              v50 = v84;
              v55 = purpose == 2;
              v48 = v74;
              if (!v55)
              {
                lfn_appledouble3 = [v84 lfn_appledouble];
                [lfn_appledouble3 reclaimFile];

                [v84 setLfn_appledouble:0];
              }
            }

            lfn_appledouble4 = [v50 lfn_appledouble];

            if (!lfn_appledouble4)
            {
              appleDoubleManager = [(userFSVolume *)self appleDoubleManager];
              lfn_fh2 = [v50 lfn_fh];
              [appleDoubleManager AppleDoubleForNamespaceWithBaseFile:lfn_fh2 named:namedCopy inDirectory:inCopy];
              v61 = v60 = v48;
              [v84 setLfn_appledouble:v61];

              v48 = v60;
              namedCopy = v89;

              v50 = v84;
            }

            lfn_appledouble5 = [v50 lfn_appledouble];
            [v50 setLfn_check_appledouble:{objc_msgSend(lfn_appledouble5, "containerFileExists")}];

            lfn_appledouble6 = [v50 lfn_appledouble];
            [lfn_appledouble6 renameFileToDirectory:directoryCopy andName:v91];

            lfn_appledouble7 = [v50 lfn_appledouble];
            [lfn_appledouble7 reclaimFile];

            [v50 setLfn_appledouble:0];
            v49 = v82;
          }

          if ((flagsCopy2 & 2) != 0)
          {
            if (v83)
            {
              [(userFSVolume *)self removeFromNameCache:v83 withParent:v49];
              v65 = v84;
              [(userFSVolume *)self removeFromNameCache:v84 withParent:v48];
              [v83 updateName:namedCopy andParent:v48];
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
            lfn_interestedClients4 = 0;
            lfn_fh3 = 0;
          }

          else
          {
            lfn_interestedClients4 = v83;
            if (v83)
            {
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_100022674();
              }

              lfn_fh3 = [v83 lfn_fh];
              lfn_interestedClients4 = [v83 lfn_interestedClients];
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
              lfn_fh3 = 0;
            }

            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1000226B0();
            }

            [(userFSVolume *)self removeFromNameCache:v84 withParent:v48 withName:namedCopy];
            [v84 updateName:? andParent:?];
            v49 = v82;
            v48 = v74;
            [(userFSVolume *)self insertIntoNameCache:v84 withParent:v82 withName:v91];
            v83 = 0;
          }

          v27 = v48;
          getAttrData = [v48 getAttrData];
          getAttrData2 = [v49 getAttrData];
          v24 = getAttrData2;
          if (self->_spotlightIsEnabled && getAttrData2 && v23 && v22)
          {
            getAttrData3 = 0;
            if ((flagsCopy2 & 2) != 0 && v83)
            {
              getAttrData3 = [v83 getAttrData];
            }

            v76 = v94;
            v79 = getAttrData3;
            v69 = v93;
            spotlightNotifer = self->_spotlightNotifer;
            getAttrData4 = [v84 getAttrData];
            [(CSLiveFSVolume *)spotlightNotifer sendPairedEventOfType:3 pid:0 fromPath:v22 fromPathLength:v76 fromAttributes:v79 toPath:v23 toPathLength:v69 toAttributes:getAttrData4];
          }
        }
      }
    }

    else
    {
      v27 = v33;
      lfn_interestedClients4 = 0;
      lfn_fh3 = 0;
      v22 = 0;
      v23 = 0;
      getAttrData = 0;
      v82 = 0;
      v83 = 0;
      lfn_interestedClients3 = 0;
      lfn_interestedClients2 = 0;
      lfn_fh = 0;
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
    uTF8String5 = [v88 UTF8String];
    uTF8String6 = [v89 UTF8String];
    uTF8String7 = [directoryCopy UTF8String];
    uTF8String8 = [v91 UTF8String];
    v43 = objc_retainBlock(replyCopy);
    v71 = v95;
    uTF8String9 = [lfn_fh3 UTF8String];
    *buf = 136318978;
    v97 = uTF8String5;
    v98 = 2080;
    v99 = uTF8String6;
    v100 = 2080;
    v101 = uTF8String7;
    v102 = 2080;
    v103 = uTF8String8;
    v104 = 2048;
    v105 = v43;
    v106 = 1024;
    v107 = v71;
    v108 = 2048;
    v109 = getAttrData;
    v110 = 2048;
    v111 = lfn_interestedClients;
    v112 = 2048;
    v113 = v24;
    v114 = 2048;
    v115 = lfn_interestedClients3;
    v116 = 2048;
    v117 = lfn_interestedClients2;
    v118 = 2048;
    v119 = lfn_fh;
    v120 = 1024;
    v121 = 0;
    v122 = 2048;
    v123 = lfn_interestedClients4;
    v124 = 2080;
    v125 = uTF8String9;
    v126 = 1024;
    v127 = 0;
    _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "LIRename(%s, %s, %s, %s, %p): reply(%d, %p, %#llx, %p, %#llx, %#llx, %p, %d, %#llx, %s, %d)", buf, 0x96u);
  }

  v30 = v95;
  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  LOBYTE(v68) = 0;
  (*(replyCopy + 2))(replyCopy, v30, getAttrData, lfn_interestedClients, v24, lfn_interestedClients3, lfn_interestedClients2, lfn_fh, v68, lfn_interestedClients4, lfn_fh3, 0, getFreeSpaceInVolume);
}

- (void)readDirectory:(id)directory amount:(unint64_t)amount cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  directoryCopy = directory;
  [LiveFSSharedMutableBuffer dataWithLength:amount];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000F5F8;
  v18[3] = &unk_1000388E8;
  v20 = replyCopy;
  v19 = v21 = amount;
  v16 = replyCopy;
  v17 = v19;
  [(userFSVolume *)self readDirectory:directoryCopy intoBuffer:v17 cookie:cookie verifier:verifier requestID:d reply:v18];
}

- (void)readDirectory:(id)directory amount:(unint64_t)amount requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  directoryCopy = directory;
  [LiveFSSharedMutableBuffer dataWithLength:amount];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000F7EC;
  v20[3] = &unk_1000388E8;
  v22 = replyCopy;
  v21 = v23 = amount;
  v18 = replyCopy;
  v19 = v21;
  [(userFSVolume *)self readDirectory:directoryCopy intoBuffer:v19 requestedAttributes:attributes cookie:cookie verifier:verifier requestID:d reply:v20];
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  bufferCopy = buffer;
  replyCopy = reply;
  v29 = 0;
  verifierCopy = verifier;
  v28 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = directoryCopy;
    v20 = v16;
    uTF8String = [directoryCopy UTF8String];
    v22 = objc_retainBlock(replyCopy);
    *buf = 136316162;
    v31 = uTF8String;
    v32 = 2048;
    v33 = bufferCopy;
    v34 = 2048;
    cookieCopy2 = cookie;
    v36 = 2048;
    verifierCopy3 = verifier;
    v38 = 2048;
    v39 = v22;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIReadDir(%s, %p, 0x%llx, 0x%llx, %p): start", buf, 0x34u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:directoryCopy withError:&v29];
  if (!v29)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v29 = [v17 readDirectoryEntries:bufferCopy withCookie:cookie withLengthOut:&v28 andWithVerifier:&verifierCopy];
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
    v23 = directoryCopy;
    v24 = v18;
    uTF8String2 = [directoryCopy UTF8String];
    v26 = objc_retainBlock(replyCopy);
    *buf = 136316930;
    v31 = uTF8String2;
    v32 = 2048;
    v33 = bufferCopy;
    v34 = 2048;
    cookieCopy2 = cookie;
    v36 = 2048;
    verifierCopy3 = verifier;
    v38 = 2048;
    v39 = v26;
    v40 = 1024;
    v41 = v29;
    v42 = 2048;
    v43 = v28;
    v44 = 2048;
    v45 = verifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "LIReadDir(%s, %p, 0x%llx, 0x%llx, %p): reply(%d, %ld, 0x%llx)", buf, 0x4Eu);
  }

  (*(replyCopy + 2))(replyCopy, v29, v28, verifierCopy);
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  bufferCopy = buffer;
  replyCopy = reply;
  v29 = 0;
  verifierCopy = verifier;
  v28 = 0;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = directoryCopy;
    v20 = v16;
    uTF8String = [directoryCopy UTF8String];
    v22 = objc_retainBlock(replyCopy);
    *buf = 136316162;
    v31 = uTF8String;
    v32 = 2048;
    v33 = bufferCopy;
    v34 = 2048;
    cookieCopy2 = cookie;
    v36 = 2048;
    verifierCopy3 = verifier;
    v38 = 2048;
    v39 = v22;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIReadDirAndAttrs(%s, %p, 0x%llx, 0x%llx, %p): start", buf, 0x34u);
  }

  v17 = [(userFSVolume *)self getNodeForFH:directoryCopy withError:&v29];
  if (!v29)
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    v29 = [v17 readDirectoryEntriesWithAttrs:bufferCopy withCookie:cookie withLengthOut:&v28 andWithVerifier:&verifierCopy];
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v23 = directoryCopy;
    v24 = v18;
    uTF8String2 = [directoryCopy UTF8String];
    v26 = objc_retainBlock(replyCopy);
    *buf = 136316930;
    v31 = uTF8String2;
    v32 = 2048;
    v33 = bufferCopy;
    v34 = 2048;
    cookieCopy2 = cookie;
    v36 = 2048;
    verifierCopy3 = verifier;
    v38 = 2048;
    v39 = v26;
    v40 = 1024;
    v41 = v29;
    v42 = 2048;
    v43 = v28;
    v44 = 2048;
    v45 = verifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "LIReadDirWithAttrs(%s, %p, 0x%llx, 0x%llx, %p): reply(%d, %ld, 0x%llx)", buf, 0x4Eu);
  }

  (*(replyCopy + 2))(replyCopy, v29, v28, verifierCopy);
}

- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v8 = [(userFSVolume *)self getNodeForFH:statistics withError:&v12];
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

  replyCopy[2](replyCopy);
}

- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v8 = [(userFSVolume *)self getNodeForFH:configuration withError:&v12];
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

  replyCopy[2](replyCopy);
}

- (void)otherAttributeOf:(id)of named:(id)named reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  replyCopy = reply;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v17 = v11;
    lfn_fh = [ofCopy lfn_fh];
    uTF8String = [lfn_fh UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    v21 = objc_retainBlock(replyCopy);
    *buf = 136315650;
    v30 = uTF8String;
    v31 = 2080;
    v32 = uTF8String2;
    v33 = 2048;
    v34 = v21;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LIGetFSAttr(%s, [%s], %p)", buf, 0x20u);
  }

  [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
  v28 = 0;
  v12 = [ofCopy getFileSystemAttribute:namedCopy andResult:&v28];
  v13 = v28;
  [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
  if (!v12 && [namedCopy isEqualToString:@"_N_caps_interfaces"])
  {
    v14 = [NSMutableData dataWithData:v13];
    mutableBytes = [v14 mutableBytes];
    *mutableBytes |= 0x100000uLL;

    v13 = v14;
  }

  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v22 = v16;
    lfn_fh2 = [ofCopy lfn_fh];
    uTF8String3 = [lfn_fh2 UTF8String];
    uTF8String4 = [namedCopy UTF8String];
    v26 = objc_retainBlock(replyCopy);
    v27 = [v13 length];
    *buf = 136316418;
    v30 = uTF8String3;
    v31 = 2080;
    v32 = uTF8String4;
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

  (*(replyCopy + 2))(replyCopy, v12, v13);
}

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  replyCopy = reply;
  v13 = 0;
  v12 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v13];
  if (v13)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000226EC();
    }

    (*(replyCopy + 2))(replyCopy, v13, 0);
  }

  else
  {
    [(userFSVolume *)self otherAttributeOf:v12 named:namedCopy reply:replyCopy];
  }
}

- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  valueCopy = value;
  replyCopy = reply;
  v34 = 0;
  v15 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v21 = ofCopy;
    log = v15;
    uTF8String = [ofCopy UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    v24 = [valueCopy length];
    v25 = objc_retainBlock(replyCopy);
    *buf = 136316162;
    *&buf[4] = uTF8String;
    v36 = 2080;
    v37 = uTF8String2;
    v38 = 2048;
    v39 = valueCopy;
    v40 = 2048;
    v41 = v24;
    v42 = 2048;
    v43 = v25;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "LISetFSAttr(%s, [%s], %p[%lu], %p)", buf, 0x34u);
  }

  v16 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v34];
  if (v34)
  {
    v17 = 0;
  }

  else
  {
    [(UserFSSleepManager *)self->_powerAssertManager disableSystemSleepDelayed:self->_metaDataRequests];
    if ([namedCopy isEqual:@"_N_SYNC"])
    {
      *buf = 0;
      [valueCopy getBytes:buf length:8];
      v18 = [v16 syncTheFileSystem:*buf];
      v17 = 0;
    }

    else
    {
      v33 = 0;
      v18 = [v16 setFileSystemAttributes:namedCopy toValue:valueCopy andResult:&v33];
      v17 = v33;
    }

    v34 = v18;
    [(UserFSSleepManager *)self->_powerAssertManager reenableSystemSleep];
    if (!v34 && [namedCopy isEqualToString:@"_O_f_preallocate"])
    {
      getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
      goto LABEL_12;
    }
  }

  getFreeSpaceInVolume = 0;
LABEL_12:
  v20 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v26 = ofCopy;
    loga = v20;
    uTF8String3 = [ofCopy UTF8String];
    uTF8String4 = [namedCopy UTF8String];
    v28 = [valueCopy length];
    v29 = objc_retainBlock(replyCopy);
    *buf = 136316674;
    *&buf[4] = uTF8String3;
    v36 = 2080;
    v37 = uTF8String4;
    v38 = 2048;
    v39 = valueCopy;
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

  (*(replyCopy + 2))(replyCopy, v34, v17, getFreeSpaceInVolume);
}

- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  replyCopy = reply;
  v75 = 0;
  v12 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v24 = ofCopy;
    v25 = v12;
    uTF8String = [ofCopy UTF8String];
    uTF8String2 = [namedCopy UTF8String];
    v28 = objc_retainBlock(replyCopy);
    *buf = 136315650;
    v77 = uTF8String;
    v78 = 2080;
    v79 = uTF8String2;
    v80 = 2048;
    v81 = v28;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, [%s], %p): start", buf, 0x20u);
  }

  if (!sub_100010F58(namedCopy))
  {
    v14 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v75];
    lfn_xattrCache = [v14 lfn_xattrCache];
    v16 = lfn_xattrCache;
    if (v75)
    {
      v17 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v34 = ofCopy;
        v35 = v17;
        uTF8String3 = [ofCopy UTF8String];
        uTF8String4 = [namedCopy UTF8String];
        v38 = objc_retainBlock(replyCopy);
        *buf = 136315906;
        v77 = uTF8String3;
        v78 = 2080;
        v79 = uTF8String4;
        v80 = 2048;
        v81 = v38;
        v82 = 1024;
        *v83 = v75;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, nil) 1", buf, 0x26u);
      }

      replyCopy[2](replyCopy, v75, 0);
      goto LABEL_20;
    }

    v74 = 0;
    lfn_name = [lfn_xattrCache dataForName:namedCopy wasNegative:&v74];
    v19 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v39 = v19;
      v40 = objc_retainBlock(replyCopy);
      *buf = 138413314;
      v77 = ofCopy;
      v78 = 2112;
      v79 = namedCopy;
      v80 = 2048;
      v81 = v40;
      v82 = 2112;
      *v83 = lfn_name;
      *&v83[8] = 1024;
      *&v83[10] = v74;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "LIGetXattr(%@, %@, %p): xattrData: %@ wasNegative: %d", buf, 0x30u);

      if (lfn_name)
      {
        goto LABEL_13;
      }
    }

    else if (lfn_name)
    {
LABEL_13:
      v20 = replyCopy[2];
      v21 = replyCopy;
      v22 = 0;
      goto LABEL_14;
    }

    if (v74 == 1)
    {
      v20 = replyCopy[2];
      v21 = replyCopy;
      v22 = 93;
      v23 = 0;
      goto LABEL_18;
    }

    appleDoubleManager = [(userFSVolume *)self appleDoubleManager];

    if (appleDoubleManager)
    {
      v75 = 93;
      if ([v14 lfn_check_appledouble])
      {
        rootNode = [(userFSVolume *)self rootNode];

        if (v14 == rootNode)
        {
          lfn_parent = v14;
          lfn_name = @".";
        }

        else
        {
          lfn_name = [v14 lfn_name];
          lfn_parent = [v14 lfn_parent];
        }

        lfn_appledouble = [v14 lfn_appledouble];
        if (lfn_appledouble)
        {
          v48 = lfn_appledouble;
          [v14 lfn_appledouble];
          v49 = v69 = lfn_name;
          purpose = [v49 purpose];

          lfn_name = v69;
          if (purpose)
          {
            lfn_appledouble2 = [v14 lfn_appledouble];
            [lfn_appledouble2 reclaimFile];

            [v14 setLfn_appledouble:0];
          }
        }

        lfn_appledouble3 = [v14 lfn_appledouble];

        if (!lfn_appledouble3)
        {
          appleDoubleManager2 = [(userFSVolume *)self appleDoubleManager];
          getFH = [lfn_parent getFH];
          v55 = [appleDoubleManager2 AppleDoubleForReadingWithBaseFile:ofCopy named:lfn_name inDirectory:getFH];
          [v14 setLfn_appledouble:v55];
        }

        lfn_appledouble4 = [v14 lfn_appledouble];

        if (lfn_appledouble4)
        {
          lfn_appledouble5 = [v14 lfn_appledouble];
          [v14 setLfn_check_appledouble:{objc_msgSend(lfn_appledouble5, "containerFileExists")}];

          lfn_appledouble6 = [v14 lfn_appledouble];
          lfn_appledouble4 = [lfn_appledouble6 valueForXattrNamed:namedCopy posixError:&v75];

          if (([v14 lfn_check_appledouble] & 1) == 0)
          {
            lfn_appledouble7 = [v14 lfn_appledouble];
            [lfn_appledouble7 reclaimFile];

            [v14 setLfn_appledouble:0];
          }
        }

        else
        {
          [v14 setLfn_check_appledouble:0];
        }

        v46 = lfn_parent;
      }

      else
      {
        lfn_appledouble4 = 0;
        v46 = 0;
        lfn_name = 0;
      }

      v59 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v60 = ofCopy;
        v70 = v59;
        v72 = v46;
        uTF8String5 = [ofCopy UTF8String];
        uTF8String6 = [namedCopy UTF8String];
        v63 = objc_retainBlock(replyCopy);
        *buf = 136316162;
        v77 = uTF8String5;
        v78 = 2080;
        v79 = uTF8String6;
        v80 = 2048;
        v81 = v63;
        v82 = 1024;
        *v83 = v75;
        *&v83[4] = 2048;
        *&v83[6] = lfn_appledouble4;
        v46 = v72;
        _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, %p) 3", buf, 0x30u);
      }

      if (v75 == 93)
      {
        [v16 setNegativeForName:namedCopy];
      }

      else if (lfn_appledouble4)
      {
        [v16 setData:lfn_appledouble4 forName:namedCopy];
      }

      replyCopy[2](replyCopy, v75, lfn_appledouble4);

      goto LABEL_19;
    }

    v73 = 0;
    v43 = [v14 getXAttr:namedCopy withBuffer:&v73];
    lfn_name = v73;
    v75 = v43;
    v44 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v64 = ofCopy;
      v65 = v44;
      uTF8String7 = [ofCopy UTF8String];
      uTF8String8 = [namedCopy UTF8String];
      v68 = objc_retainBlock(replyCopy);
      *buf = 136316162;
      v77 = uTF8String7;
      v78 = 2080;
      v79 = uTF8String8;
      v80 = 2048;
      v81 = v68;
      v82 = 1024;
      *v83 = v75;
      *&v83[4] = 2048;
      *&v83[6] = lfn_name;
      _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, %p) 2", buf, 0x30u);
    }

    if (v75 == 93)
    {
      [v16 setNegativeForName:namedCopy];
    }

    else if (lfn_name)
    {
      [v16 setData:lfn_name forName:namedCopy];
    }

    v22 = v75;
    v20 = replyCopy[2];
    v21 = replyCopy;
LABEL_14:
    v23 = lfn_name;
LABEL_18:
    v20(v21, v22, v23);
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v13 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v29 = ofCopy;
    v30 = v13;
    uTF8String9 = [ofCopy UTF8String];
    uTF8String10 = [namedCopy UTF8String];
    v33 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    v77 = uTF8String9;
    v78 = 2080;
    v79 = uTF8String10;
    v80 = 2048;
    v81 = v33;
    v82 = 1024;
    *v83 = 93;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "LIGetXattr(%s, %s, %p): reply(%d, nil) filtered xattr", buf, 0x26u);
  }

  replyCopy[2](replyCopy, 93, 0);
LABEL_21:
}

- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  valueCopy = value;
  replyCopy = reply;
  aDFileErr2 = 0;
  v17 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v27 = ofCopy;
    v28 = v17;
    v29 = valueCopy;
    uTF8String = [ofCopy UTF8String];
    v31 = ofCopy;
    howCopy = how;
    uTF8String2 = [namedCopy UTF8String];
    v34 = objc_retainBlock(replyCopy);
    *buf = 136316162;
    v152 = uTF8String;
    valueCopy = v29;
    v153 = 2080;
    v154 = uTF8String2;
    how = howCopy;
    ofCopy = v31;
    v155 = 2048;
    v156 = v29;
    v157 = 1024;
    howCopy2 = how;
    v159 = 2048;
    v160 = v34;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): start", buf, 0x30u);
  }

  if (!sub_100010F58(namedCopy))
  {
    v19 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&aDFileErr2];
    lfn_xattrCache = [v19 lfn_xattrCache];
    if (aDFileErr2)
    {
      howCopy3 = how;
      v22 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v96 = ofCopy;
        loga = v22;
        v135 = valueCopy;
        uTF8String3 = [ofCopy UTF8String];
        uTF8String4 = [namedCopy UTF8String];
        v99 = objc_retainBlock(replyCopy);
        *buf = 136316418;
        v152 = uTF8String3;
        valueCopy = v135;
        v153 = 2080;
        v154 = uTF8String4;
        v155 = 2048;
        v156 = v135;
        v157 = 1024;
        howCopy2 = howCopy3;
        v159 = 2048;
        v160 = v99;
        v161 = 1024;
        v162 = aDFileErr2;
        _os_log_debug_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 1", buf, 0x36u);
      }

      (*(replyCopy + 2))(replyCopy, aDFileErr2, 0, 0, 0, 0, 2);
      goto LABEL_117;
    }

    v23 = 0;
    v141 = 0;
    if (self->_spotlightIsEnabled)
    {
      v23 = [(userFSVolume *)self pathStringForNode:v19 name:0 buffer:buf bufferSize:1024 outLength:&v141];
    }

    v24 = [namedCopy isEqualToString:@"com.apple.FinderInfo"];
    v25 = 0;
    if (!how && v24)
    {
      if ([valueCopy bytes])
      {
        bytes = [valueCopy bytes];
        v25 = (*bytes | bytes[1] | bytes[2] | bytes[3]) == 0;
        if (*bytes | bytes[1] | bytes[2] | bytes[3])
        {
          how = 0;
        }

        else
        {
          how = 3;
        }
      }

      else
      {
        v25 = 0;
        how = 0;
      }
    }

    v132 = v25;
    howCopy4 = how;
    appleDoubleManager = [(userFSVolume *)self appleDoubleManager];

    if (appleDoubleManager)
    {
      rootNode = [(userFSVolume *)self rootNode];

      v134 = valueCopy;
      v129 = v23;
      if (v19 == rootNode)
      {
        lfn_parent = v19;
        log = @".";
      }

      else
      {
        log = [v19 lfn_name];
        lfn_parent = [v19 lfn_parent];
      }

      lfn_appledouble = [v19 lfn_appledouble];
      if (lfn_appledouble)
      {
        v40 = lfn_appledouble;
        lfn_appledouble2 = [v19 lfn_appledouble];
        purpose = [lfn_appledouble2 purpose];

        if (purpose != 1)
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1000227BC();
          }

          lfn_appledouble3 = [v19 lfn_appledouble];
          [lfn_appledouble3 reclaimFile];

          [v19 setLfn_appledouble:0];
        }
      }

      lfn_appledouble4 = [v19 lfn_appledouble];

      if (!lfn_appledouble4)
      {
        if (howCopy4 == 3)
        {
          appleDoubleManager2 = [(userFSVolume *)self appleDoubleManager];
          getFH = [lfn_parent getFH];
          v54 = [appleDoubleManager2 AppleDoubleForReadingWithBaseFile:ofCopy named:log inDirectory:getFH];
          [v19 setLfn_appledouble:v54];

          lfn_appledouble5 = [v19 lfn_appledouble];

          if (!lfn_appledouble5)
          {
            goto LABEL_92;
          }

          lfn_appledouble6 = [v19 lfn_appledouble];
          containerFileExists = [lfn_appledouble6 containerFileExists];

          lfn_appledouble7 = [v19 lfn_appledouble];
          [lfn_appledouble7 reclaimFile];

          [v19 setLfn_appledouble:0];
          if ((containerFileExists & 1) == 0)
          {
LABEL_92:
            v100 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
            if (v132)
            {
              valueCopy = v134;
              if (v100)
              {
                sub_10002299C();
              }

              v101 = 0;
            }

            else
            {
              valueCopy = v134;
              if (v100)
              {
                sub_100022960();
              }

              v101 = 93;
            }

            (*(replyCopy + 2))(replyCopy, v101, 0, 0, 0, 0, 2);
            lfn_fh = 0;
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

        appleDoubleManager3 = [(userFSVolume *)self appleDoubleManager];
        getFH2 = [lfn_parent getFH];
        v61 = [appleDoubleManager3 AppleDoubleForWritingWithBaseFile:ofCopy named:log inDirectory:getFH2];
        [v19 setLfn_appledouble:v61];

        lfn_appledouble8 = [v19 lfn_appledouble];
        if (lfn_appledouble8)
        {
          v63 = lfn_appledouble8;
          lfn_appledouble9 = [v19 lfn_appledouble];
          aDFileErr = [lfn_appledouble9 ADFileErr];

          if (aDFileErr)
          {
            lfn_appledouble10 = [v19 lfn_appledouble];
            aDFileErr2 = [lfn_appledouble10 ADFileErr];

            lfn_appledouble11 = [v19 lfn_appledouble];
            [lfn_appledouble11 reclaimFile];

            [v19 setLfn_appledouble:0];
            if (aDFileErr2 == 28)
            {
              appleDoubleManager4 = [(userFSVolume *)self appleDoubleManager];
              [lfn_parent getFH];
              v70 = v69 = lfn_xattrCache;
              v71 = [appleDoubleManager4 AppleDoubleForNamespaceWithBaseFile:ofCopy named:log inDirectory:v70];
              [v19 setLfn_appledouble:v71];

              lfn_xattrCache = v69;
              lfn_appledouble12 = [v19 lfn_appledouble];

              if (lfn_appledouble12)
              {
                lfn_appledouble13 = [v19 lfn_appledouble];
                [lfn_appledouble13 removeFile];

                lfn_appledouble14 = [v19 lfn_appledouble];
                [lfn_appledouble14 reclaimFile];

                [v19 setLfn_appledouble:0];
              }
            }

            (*(replyCopy + 2))(replyCopy, aDFileErr2, 0, 0, 0, 0, 2);
            goto LABEL_71;
          }
        }
      }

      lfn_appledouble15 = [v19 lfn_appledouble];

      v46 = userfs_log_default;
      v47 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
      if (!lfn_appledouble15)
      {
        if (v47)
        {
          v120 = ofCopy;
          v121 = v46;
          uTF8String5 = [ofCopy UTF8String];
          uTF8String6 = [namedCopy UTF8String];
          v124 = objc_retainBlock(replyCopy);
          *v143 = 136316418;
          v144 = uTF8String5;
          v145 = 2080;
          *v146 = uTF8String6;
          *&v146[8] = 2048;
          *&v146[10] = v134;
          *&v146[18] = 1024;
          *&v146[20] = howCopy4;
          v147 = 2048;
          v148 = v124;
          v149 = 1024;
          v150 = 5;
          _os_log_debug_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 3", v143, 0x36u);
        }

        (*(replyCopy + 2))(replyCopy, 5, 0, 0, 0, 0, 2);
LABEL_71:
        lfn_fh = 0;
        valueCopy = v134;
LABEL_115:

        goto LABEL_116;
      }

      if (v47)
      {
        sub_100022870(v46, v19);
      }

      [v19 setLfn_check_appledouble:1];
      lfn_appledouble16 = [v19 lfn_appledouble];
      v49 = lfn_appledouble16;
      if (howCopy4 == 3)
      {
        aDFileErr2 = [lfn_appledouble16 removeXattrNamed:namedCopy];

        v50 = v132;
        if (aDFileErr2 != 93)
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

          aDFileErr2 = 0;
        }

        else
        {
          v51 = v129;
          if (aDFileErr2)
          {
            goto LABEL_103;
          }
        }

        [lfn_xattrCache setNegativeForName:namedCopy];
        if (!self->_spotlightIsEnabled || !v51)
        {
          goto LABEL_102;
        }

        v102 = v51;
        getAttrData = [v19 getAttrData];
        if (getAttrData)
        {
          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrRemovedEventForPID:0 path:v102 pathLength:v141 xAttrName:namedCopy attributes:getAttrData];
        }
      }

      else
      {
        aDFileErr2 = [lfn_appledouble16 setValue:v134 forXattrNamed:namedCopy how:howCopy4];

        if (aDFileErr2)
        {
          goto LABEL_103;
        }

        [lfn_xattrCache setData:v134 forName:namedCopy];
        if (!self->_spotlightIsEnabled || !v129)
        {
LABEL_102:
          if (!aDFileErr2)
          {
            lfn_parent2 = [v19 lfn_parent];

            if (lfn_parent2)
            {
              lfn_parent3 = [v19 lfn_parent];
              lfn_interestedClients = [lfn_parent3 lfn_interestedClients];

              if (lfn_interestedClients)
              {
                lfn_parent4 = [v19 lfn_parent];
                lfn_fh = [lfn_parent4 lfn_fh];

                goto LABEL_105;
              }

LABEL_104:
              lfn_fh = 0;
LABEL_105:
              v104 = lfn_xattrCache;
              lfn_appledouble17 = [v19 lfn_appledouble];
              [lfn_appledouble17 reclaimFile];

              [v19 setLfn_appledouble:0];
              v106 = userfs_log_default;
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
              {
                v116 = ofCopy;
                v117 = v106;
                uTF8String7 = [ofCopy UTF8String];
                uTF8String8 = [namedCopy UTF8String];
                v119 = objc_retainBlock(replyCopy);
                *v143 = 136316418;
                v144 = uTF8String7;
                v145 = 2080;
                *v146 = uTF8String8;
                *&v146[8] = 2048;
                *&v146[10] = v134;
                *&v146[18] = 1024;
                *&v146[20] = howCopy4;
                v147 = 2048;
                v148 = v119;
                v149 = 1024;
                v150 = aDFileErr2;
                _os_log_debug_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 4", v143, 0x36u);
              }

              v107 = aDFileErr2;
              lfn_name = [v19 lfn_name];
              (*(replyCopy + 2))(replyCopy, v107, lfn_fh, lfn_interestedClients, lfn_name, [v19 lfn_interestedClients], objc_msgSend(v19, "hiddenStatus"));

              valueCopy = v134;
              lfn_xattrCache = v104;
              goto LABEL_115;
            }
          }

LABEL_103:
          lfn_interestedClients = 0;
          goto LABEL_104;
        }

        getAttrData = [v19 getAttrData];
        if (getAttrData)
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
            *&v146[16] = namedCopy;
            _os_log_debug_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "LISetXattr[ad]:spotlightnotifier:%@:sendXattrModifiedEventForPID:%d:%s:%@", v143, 0x26u);
            v89 = &selRef_setFsPlugin_;
          }

          [*&self->LiveFSVolume_opaque[*(v89 + 313)] sendXattrModifiedEventForPID:0 path:v129 pathLength:v141 xAttrName:namedCopy xAttrValue:v134 attributes:getAttrData];
        }
      }

      goto LABEL_102;
    }

    aDFileErr2 = [v19 setXAttr:namedCopy withXAttr:valueCopy how:howCopy4];
    v37 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v112 = ofCopy;
      logb = v37;
      v136 = valueCopy;
      uTF8String9 = [ofCopy UTF8String];
      v114 = v23;
      uTF8String10 = [namedCopy UTF8String];
      v131 = objc_retainBlock(replyCopy);
      *v143 = 136316418;
      v144 = uTF8String9;
      valueCopy = v136;
      v145 = 2080;
      *v146 = uTF8String10;
      v23 = v114;
      *&v146[8] = 2048;
      *&v146[10] = v136;
      *&v146[18] = 1024;
      *&v146[20] = howCopy4;
      v147 = 2048;
      v148 = v131;
      v149 = 1024;
      v150 = aDFileErr2;
      _os_log_debug_impl(&_mh_execute_header, logb, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) 2", v143, 0x36u);
    }

    v38 = v132;
    if (aDFileErr2 != 93)
    {
      v38 = 0;
    }

    v127 = lfn_xattrCache;
    if (v38)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000229D8();
      }

      aDFileErr2 = 0;
    }

    else if (aDFileErr2)
    {
      v75 = valueCopy;
      goto LABEL_89;
    }

    [(userFSVolume *)self startSyncerIfNeeded];
    if (howCopy4 == 3)
    {
      [lfn_xattrCache setNegativeForName:namedCopy];
      if (self->_spotlightIsEnabled && v23)
      {
        getAttrData2 = [v19 getAttrData];
        if (getAttrData2)
        {
          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrRemovedEventForPID:0 path:v23 pathLength:v141 xAttrName:namedCopy attributes:getAttrData2];
        }

LABEL_85:
      }
    }

    else
    {
      [lfn_xattrCache setData:valueCopy forName:namedCopy];
      if (self->_spotlightIsEnabled && v23)
      {
        getAttrData2 = [v19 getAttrData];
        if (getAttrData2)
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
            *&v146[16] = namedCopy;
            _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "LISetXattr[nxa]:spotlightnotifier:%@:sendXattrModifiedEventForPID:%d:%s:%@", v143, 0x26u);
          }

          [(CSLiveFSVolume *)self->_spotlightNotifer sendXattrModifiedEventForPID:0 path:v23 pathLength:v141 xAttrName:namedCopy xAttrValue:valueCopy attributes:getAttrData2];
        }

        goto LABEL_85;
      }
    }

    v75 = valueCopy;
    lfn_parent5 = [v19 lfn_parent];

    if (lfn_parent5)
    {
      lfn_parent6 = [v19 lfn_parent];
      lfn_interestedClients2 = [lfn_parent6 lfn_interestedClients];

      if (lfn_interestedClients2)
      {
        lfn_parent7 = [v19 lfn_parent];
        lfn_fh = [lfn_parent7 lfn_fh];

LABEL_91:
        v95 = aDFileErr2;
        log = [v19 lfn_name];
        (*(replyCopy + 2))(replyCopy, v95, lfn_fh, lfn_interestedClients2, log, [v19 lfn_interestedClients], objc_msgSend(v19, "hiddenStatus"));
        valueCopy = v75;
        lfn_xattrCache = v128;
LABEL_116:

LABEL_117:
        goto LABEL_118;
      }

LABEL_90:
      lfn_fh = 0;
      goto LABEL_91;
    }

LABEL_89:
    lfn_interestedClients2 = 0;
    goto LABEL_90;
  }

  v18 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v78 = ofCopy;
    v79 = v18;
    v80 = valueCopy;
    uTF8String11 = [ofCopy UTF8String];
    v82 = ofCopy;
    howCopy5 = how;
    uTF8String12 = [namedCopy UTF8String];
    v85 = objc_retainBlock(replyCopy);
    *buf = 136316418;
    v152 = uTF8String11;
    valueCopy = v80;
    v153 = 2080;
    v154 = uTF8String12;
    v155 = 2048;
    v156 = v80;
    v157 = 1024;
    howCopy2 = howCopy5;
    ofCopy = v82;
    v159 = 2048;
    v160 = v85;
    v161 = 1024;
    v162 = 45;
    _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "LISetXattr(%s, %s, %p, %d, %p): reply(%d) filtered xattr", buf, 0x36u);
  }

  (*(replyCopy + 2))(replyCopy, 45, 0, 0, 0, 0, 2);
LABEL_118:
}

- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  v50 = 0;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022A14();
  }

  v9 = [(userFSVolume *)self getNodeForFH:ofCopy withError:&v50];
  lfn_xattrCache = [v9 lfn_xattrCache];
  v11 = lfn_xattrCache;
  if (v50)
  {
    v12 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      v21 = ofCopy;
      v22 = v12;
      uTF8String = [ofCopy UTF8String];
      v24 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v52 = uTF8String;
      v53 = 2048;
      v54 = v24;
      v55 = 1024;
      v56 = v50;
      v57 = 2112;
      v58 = &__NSArray0__struct;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "LIListXattrs(%s, %p): reply(%d, %@) 1", buf, 0x26u);
    }

    (*(replyCopy + 2))(replyCopy, v50, &__NSArray0__struct);
  }

  else if ([lfn_xattrCache noXattrsPresent])
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100022AD0();
    }

    (*(replyCopy + 2))(replyCopy, 0, &__NSArray0__struct);
  }

  else
  {
    appleDoubleManager = [(userFSVolume *)self appleDoubleManager];

    if (appleDoubleManager)
    {
      if ([v9 lfn_check_appledouble])
      {
        rootNode = [(userFSVolume *)self rootNode];

        if (v9 == rootNode)
        {
          lfn_parent = v9;
          lfn_name = @".";
        }

        else
        {
          lfn_name = [v9 lfn_name];
          lfn_parent = [v9 lfn_parent];
        }

        lfn_appledouble = [v9 lfn_appledouble];
        if (lfn_appledouble)
        {
          v27 = lfn_appledouble;
          lfn_appledouble2 = [v9 lfn_appledouble];
          purpose = [lfn_appledouble2 purpose];

          if (purpose)
          {
            lfn_appledouble3 = [v9 lfn_appledouble];
            [lfn_appledouble3 reclaimFile];

            [v9 setLfn_appledouble:0];
          }
        }

        lfn_appledouble4 = [v9 lfn_appledouble];

        v19 = lfn_name;
        if (!lfn_appledouble4)
        {
          appleDoubleManager2 = [(userFSVolume *)self appleDoubleManager];
          getFH = [lfn_parent getFH];
          v34 = [appleDoubleManager2 AppleDoubleForReadingWithBaseFile:ofCopy named:lfn_name inDirectory:getFH];
          [v9 setLfn_appledouble:v34];
        }

        lfn_appledouble5 = [v9 lfn_appledouble];

        if (lfn_appledouble5)
        {
          lfn_appledouble6 = [v9 lfn_appledouble];
          [v9 setLfn_check_appledouble:{objc_msgSend(lfn_appledouble6, "containerFileExists")}];

          lfn_appledouble7 = [v9 lfn_appledouble];
          v37 = [lfn_appledouble7 allXattrNamesAndPosixError:&v50];
          lfn_appledouble5 = sub_10001271C(v37);

          if (([v9 lfn_check_appledouble] & 1) == 0)
          {
            lfn_appledouble8 = [v9 lfn_appledouble];
            [lfn_appledouble8 reclaimFile];

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
        lfn_parent = 0;
        v19 = 0;
        lfn_appledouble5 = &__NSArray0__struct;
      }

      v39 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        v40 = ofCopy;
        v41 = v39;
        uTF8String2 = [ofCopy UTF8String];
        v43 = objc_retainBlock(replyCopy);
        *buf = 136315906;
        v52 = uTF8String2;
        v53 = 2048;
        v54 = v43;
        v55 = 1024;
        v56 = v50;
        v57 = 2112;
        v58 = lfn_appledouble5;
        _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "LIListXattrs(%s, %p): reply(%d, %@) 4", buf, 0x26u);
      }

      if (!v50)
      {
        [v11 setNoXattrsPresent:{objc_msgSend(lfn_appledouble5, "count") == 0}];
      }

      (*(replyCopy + 2))(replyCopy);
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
        v44 = ofCopy;
        v45 = v25;
        uTF8String3 = [ofCopy UTF8String];
        v47 = objc_retainBlock(replyCopy);
        *buf = 136315906;
        v52 = uTF8String3;
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

      (*(replyCopy + 2))(replyCopy);
    }
  }
}

- (void)search:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  searchCopy = search;
  tokenCopy = token;
  criteriaCopy = criteria;
  proxyCopy = proxy;
  replyCopy = reply;
  if (self->_allowSearch)
  {
    v18 = [criteriaCopy objectForKeyedSubscript:LISearchFileContentsInclude];

    if (v18)
    {
      startSearch = 45;
    }

    else
    {
      pthread_rwlock_wrlock(&self->searchRequestsRWLock);
      v20 = [(NSMutableDictionary *)self->searchRequests objectForKeyedSubscript:tokenCopy];

      if (v20)
      {
        pthread_rwlock_unlock(&self->searchRequestsRWLock);
        startSearch = 17;
      }

      else
      {
        v21 = [[liveFilesSearchRequest alloc] initWithVolume:self withStartLocation:searchCopy withSearchToken:tokenCopy withSearchCriteria:criteriaCopy withProxy:proxyCopy andWithCallerID:client];
        if (v21)
        {
          v22 = v21;
          startSearch = [(liveFilesSearchRequest *)v21 startSearch];
          if (!startSearch)
          {
            [(NSMutableDictionary *)self->searchRequests setObject:v22 forKeyedSubscript:tokenCopy];
          }

          pthread_rwlock_unlock(&self->searchRequestsRWLock);
        }

        else
        {
          pthread_rwlock_unlock(&self->searchRequestsRWLock);
          startSearch = 12;
        }
      }
    }
  }

  else
  {
    startSearch = 53;
  }

  replyCopy[2](replyCopy, startSearch);
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

- (void)abortAllClientSearchesFor:(unint64_t)for
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
  v6[4] = for;
  [(NSMutableDictionary *)searchRequests enumerateKeysAndObjectsUsingBlock:v6];
  pthread_rwlock_unlock(&self->searchRequestsRWLock);
}

- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply
{
  searchCopy = search;
  replyCopy = reply;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022C38();
  }

  pthread_rwlock_rdlock(&self->searchRequestsRWLock);
  v9 = [(NSMutableDictionary *)self->searchRequests objectForKeyedSubscript:searchCopy];
  v10 = v9;
  if (v9)
  {
    abortSearch = [v9 abortSearch];
  }

  else
  {
    abortSearch = 2;
  }

  pthread_rwlock_unlock(&self->searchRequestsRWLock);
  replyCopy[2](replyCopy, abortSearch);
}

- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  openCopy = open;
  replyCopy = reply;
  v23 = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v15 = openCopy;
    v16 = v11;
    uTF8String = [openCopy UTF8String];
    v18 = objc_retainBlock(replyCopy);
    *buf = 136315650;
    v25 = uTF8String;
    v26 = 1024;
    modeCopy2 = mode;
    v28 = 2048;
    v29 = v18;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "LIOpen(%s, %o, %p): start", buf, 0x1Cu);
  }

  v12 = [(userFSVolume *)self getNodeForFH:openCopy withError:&v23];
  v13 = v12;
  if (!v23 || v23 == 70 && v12)
  {
    [v12 setLfn_openCount:{objc_msgSend(v12, "lfn_openCount") + 1}];
  }

  v14 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19 = openCopy;
    v20 = v14;
    uTF8String2 = [openCopy UTF8String];
    v22 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    v25 = uTF8String2;
    v26 = 1024;
    modeCopy2 = mode;
    v28 = 2048;
    v29 = v22;
    v30 = 1024;
    v31 = v23;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LIOpen(%s, %o, %p):  reply(%d)", buf, 0x22u);
  }

  (*(replyCopy + 2))(replyCopy, v23);
}

- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  closeCopy = close;
  replyCopy = reply;
  v41 = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v30 = closeCopy;
    v31 = v11;
    uTF8String = [closeCopy UTF8String];
    v33 = objc_retainBlock(replyCopy);
    *buf = 136315650;
    v43 = uTF8String;
    v44 = 1024;
    modeCopy = mode;
    v46 = 2048;
    v47 = v33;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "LIClose(%s, %o, %p): start", buf, 0x1Cu);
  }

  v12 = [(userFSVolume *)self getNodeForFH:closeCopy withError:&v41];
  v13 = v12;
  modeCopy2 = mode;
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
    lfn_interestedClients2 = 0;
    lfn_parent = 0;
    lfn_interestedClients = 0;
    lfn_interestedClients3 = 0;
    goto LABEL_23;
  }

  v41 = 0;
  lfn_interestedClients = [v13 lfn_interestedClients];
  v20 = [v13 lfn_openCount] - 1;
  [v13 setLfn_openCount:v20];
  if (v20)
  {
    v14 = 0;
LABEL_11:
    v15 = 0;
    lfn_interestedClients2 = 0;
    lfn_parent = 0;
    lfn_interestedClients3 = 0;
    goto LABEL_23;
  }

  lfn_wasWritten = [v13 lfn_wasWritten];
  [v13 setLfn_wasWritten:0];
  v14 = [v13 hiddenStatus] != 2;
  if (!lfn_wasWritten)
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
      getAttrData = [v13 getAttrData];
      [(CSLiveFSVolume *)spotlightNotifer sendEventOfType:4 pid:0 path:v23 pathLength:v25 attributes:getAttrData];
    }
  }

  lfn_parent = [v13 lfn_parent];
  if (!lfn_parent)
  {
    lfn_interestedClients2 = 0;
LABEL_21:
    lfn_interestedClients3 = 0;
    goto LABEL_22;
  }

  lfn_parent2 = [v13 lfn_parent];
  lfn_interestedClients2 = [lfn_parent2 lfn_interestedClients];

  if (!lfn_interestedClients2)
  {
    lfn_parent = 0;
    goto LABEL_21;
  }

  lfn_parent3 = [v13 lfn_parent];
  lfn_parent = [lfn_parent3 lfn_fh];

  lfn_parent4 = [v13 lfn_parent];
  lfn_interestedClients3 = [lfn_parent4 lfn_interestedClients];

  lfn_interestedClients2 = [v13 lfn_name];
LABEL_22:
  v15 = 1;
LABEL_23:
  v34 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v35 = closeCopy;
    log = v34;
    uTF8String2 = [closeCopy UTF8String];
    v37 = objc_retainBlock(replyCopy);
    *buf = 136316674;
    v43 = uTF8String2;
    v44 = 1024;
    modeCopy = modeCopy2;
    v46 = 2048;
    v47 = v37;
    v48 = 1024;
    v49 = v41;
    v50 = 2048;
    v51 = lfn_interestedClients;
    v52 = 1024;
    v53 = v15;
    v54 = 1024;
    v55 = v14;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "LIClose(%s, %o, %p):  reply(%d, %#llx, %d, %d)", buf, 0x38u);
  }

  (*(replyCopy + 2))(replyCopy, v41, lfn_parent, lfn_interestedClients3, lfn_interestedClients2, lfn_interestedClients, v15, v14);
}

- (void)reclaim:(id)reclaim forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  reclaimCopy = reclaim;
  replyCopy = reply;
  reclaim = 0;
  v11 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v31 = reclaimCopy;
    v32 = v11;
    uTF8String = [reclaimCopy UTF8String];
    v34 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    v43 = uTF8String;
    v44 = 2048;
    clientCopy3 = client;
    v46 = 2048;
    v47 = v34;
    v48 = 2080;
    v49[0] = dispatch_queue_get_label(0);
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "LIReclaim(%s, %llu, %p): start on %s", buf, 0x2Au);
  }

  appleDoubleManager = [(userFSVolume *)self appleDoubleManager];

  if (appleDoubleManager && (-[userFSVolume appleDoubleManager](self, "appleDoubleManager"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 clientID], v13, v14 == client))
  {
    pauseIOQueue = 0;
  }

  else
  {
    pauseIOQueue = [(userFSVolume *)self pauseIOQueue];
  }

  v16 = [(userFSVolume *)self getNodeForFH:reclaimCopy withError:&reclaim];
  v17 = v16;
  if (!reclaim || (reclaim = v16 != 0, v16))
  {
    lfn_appledouble = [v16 lfn_appledouble];

    if (lfn_appledouble)
    {
      lfn_appledouble2 = [v17 lfn_appledouble];
      [lfn_appledouble2 reclaimFile];

      [v17 setLfn_appledouble:0];
    }

    lfn_inUseClientSet = [v17 lfn_inUseClientSet];
    [v17 setLfn_inUseClientSet:lfn_inUseClientSet & ~client];
    if ((lfn_inUseClientSet & client) == 0 || [v17 lfn_inUseClientSet] || !objc_msgSend(v17, "isNodeReclaimable"))
    {
      reclaim = 0;
      goto LABEL_22;
    }

    lfn_name = [v17 lfn_name];
    if (([lfn_name isEqualToString:&stru_100038E98] & 1) == 0)
    {
      lfn_parent = [v17 lfn_parent];

      if (!lfn_parent)
      {
LABEL_18:
        [(userFSVolume *)self removeFromFHCache:v17];
        reclaim = [v17 reclaim];
        if (reclaim)
        {
          v23 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            v24 = reclaimCopy;
            v25 = v23;
            uTF8String2 = [reclaimCopy UTF8String];
            v27 = objc_retainBlock(replyCopy);
            *buf = 136315906;
            v43 = uTF8String2;
            v44 = 2048;
            clientCopy3 = client;
            v46 = 2048;
            v47 = v27;
            v48 = 1024;
            LODWORD(v49[0]) = reclaim;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "LIReclaim(%s, %llu, %p): fs reclaim error: %d", buf, 0x26u);
          }
        }

        goto LABEL_22;
      }

      lfn_name = [v17 lfn_parent];
      [(userFSVolume *)self removeFromNameCache:v17 withParent:lfn_name];
    }

    goto LABEL_18;
  }

LABEL_22:
  if (pauseIOQueue)
  {
    [(userFSVolume *)self resumeIOQueue];
  }

  v28 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v35 = reclaimCopy;
    v36 = v28;
    uTF8String3 = [reclaimCopy UTF8String];
    v38 = objc_retainBlock(replyCopy);
    v39 = reclaim;
    label = dispatch_queue_get_label(0);
    *buf = 136316162;
    v43 = uTF8String3;
    v44 = 2048;
    clientCopy3 = client;
    v46 = 2048;
    v47 = v38;
    v48 = 1024;
    LODWORD(v49[0]) = v39;
    WORD2(v49[0]) = 2080;
    *(v49 + 6) = label;
    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "LIReclaim(%s, %llu, %p): reply(%d) on %s", buf, 0x30u);
  }

  v29 = reclaim;
  getFreeSpaceInVolume = [(userFSVolume *)self getFreeSpaceInVolume];
  (*(replyCopy + 2))(replyCopy, v29, getFreeSpaceInVolume);
}

- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  v9 = a4;
  interestCopy = interest;
  replyCopy = reply;
  v13 = ~client;
  if (![interestCopy isEqualToString:LIUpdateNSFileProviderRootContainerItemIdentifier])
  {
    v16 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:interestCopy];
    if (!v16)
    {
      v14 = NSPOSIXErrorDomain;
      v15 = 2;
      goto LABEL_17;
    }

    v17 = v16;
    lfn_interestedClients = [v16 lfn_interestedClients];
    if (v9)
    {
      v19 = lfn_interestedClients | client;
    }

    else
    {
      v19 = lfn_interestedClients & v13;
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
    allKeys = [(NSMutableDictionary *)self->mountFHtoNodeTable allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v31 = replyCopy;
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
            objc_enumerationMutation(allKeys);
          }

          v23 = [(NSMutableDictionary *)self->mountFHtoNodeTable objectForKey:*(*(&v35 + 1) + 8 * v25)];

          [v23 setLfn_interestedClients:{objc_msgSend(v23, "lfn_interestedClients") & v13}];
          v25 = v25 + 1;
          v26 = v23;
        }

        while (v22 != v25);
        v22 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);

      replyCopy = v31;
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
  v34 = replyCopy;
  v29 = v27;
  v30 = replyCopy;
  dispatch_async(v28, block);
}

- (void)invalidateFileNodesForConnection:(unint64_t)connection
{
  metaDataRequests = [(userFSVolume *)self metaDataRequests];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013BC8;
  v6[3] = &unk_100038998;
  v6[4] = self;
  v6[5] = connection;
  dispatch_async(metaDataRequests, v6);
}

- (int)searchVolume:(id)volume withCriteria:(id)criteria withSearchToken:(id)token andWithResultsHandler:(id)handler
{
  volumeCopy = volume;
  criteriaCopy = criteria;
  tokenCopy = token;
  handlerCopy = handler;
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
  v10 = [(NSMutableDictionary *)self->searchRequests objectForKey:tokenCopy];
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

    volumeRawDevice = [(userFSVolume *)self volumeRawDevice];
    fsPlugin = [volumeRawDevice fsPlugin];
    v13 = *([fsPlugin FSOps] + 30);

    if (v13)
    {
      v14 = userfs_log_default;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        startLocation = [v127 startLocation];
        sub_100022DCC(startLocation, v225, v14);
      }

      *(v198[0] + 24) = 0;
      startLocation2 = [v127 startLocation];
      v17 = [pathElement pathElementFromName:0 withParentFH:startLocation2 withCookie:0 andWithCookieVerifier:0];
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
        cookie = [v126 cookie];
        cookieVerifier = [v126 cookieVerifier];
        v19 = userfs_log_default;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          parentFH = [v126 parentFH];
          elementName = [v126 elementName];
          *v214 = 138412546;
          *&v214[4] = parentFH;
          *&v214[12] = 2112;
          *&v214[14] = elementName;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "searchVolume:pop:%@/%@", v214, 0x16u);
        }

        elementName2 = [v126 elementName];
        v21 = elementName2 == 0;

        if (v21)
        {
          parentFH2 = [v126 parentFH];
          v28 = v192[5];
          v192[5] = parentFH2;

LABEL_22:
          metaDataRequests = [(userFSVolume *)self metaDataRequests];
          v177[0] = _NSConcreteStackBlock;
          v177[1] = 3221225472;
          v177[2] = sub_100015C24;
          v177[3] = &unk_100038A10;
          v177[5] = &v185;
          v177[4] = self;
          v177[6] = &v191;
          v177[7] = &v197;
          dispatch_sync(metaDataRequests, v177);

          v30 = v126;
          v31 = v127;
          if (*(v198[0] + 24))
          {
            v32 = userfs_log_default;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v104 = v192[5];
              parentFH3 = [v126 parentFH];
              *v214 = 138412546;
              *&v214[4] = v104;
              *&v214[12] = 2112;
              *&v214[14] = parentFH3;
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
                getFH = [v186[5] getFH];
                lfn_name = [v186[5] lfn_name];
                *v214 = 138412546;
                *&v214[4] = getFH;
                *&v214[12] = 2112;
                *&v214[14] = lfn_name;
                _os_log_debug_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEBUG, "searchVolume:scanDir:done:reclaiming %@[%@]", v214, 0x16u);
              }

              metaDataRequests2 = [(userFSVolume *)self metaDataRequests];
              v131[0] = _NSConcreteStackBlock;
              v131[1] = 3221225472;
              v131[2] = sub_10001636C;
              v131[3] = &unk_100038B68;
              v131[4] = self;
              v133 = &v185;
              v132 = v127;
              dispatch_sync(metaDataRequests2, v131);

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
            searchCriteria = [v127 searchCriteria];
            v175 = 0;
            LODWORD(v89) = [v89 scanDirectoryForMatches:searchCriteria withScanDirCookie:&cookie withScanDirCookieVerifier:&cookieVerifier withSearchResultType:&v176 withSearchResult:&v175 withSearchResultAttr:v214];
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
              lfn_name2 = [v186[5] lfn_name];
              *v208 = 138412290;
              *&v208[4] = lfn_name2;
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

          [v126 setCookie:cookie];
          [v126 setCookieVerifier:cookieVerifier];
          v93 = userfs_log_default;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            lfn_name3 = [v186[5] lfn_name];
            *v208 = 138413058;
            *&v208[4] = lfn_name3;
            *&v208[12] = 2048;
            *&v208[14] = cookie;
            *&v208[22] = 2048;
            v209 = cookieVerifier;
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
                cookie2 = [v126 cookie];
                *v208 = 134217984;
                *&v208[4] = cookie2;
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
              metaDataRequests3 = [(userFSVolume *)self metaDataRequests];
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
              dispatch_sync(metaDataRequests3, v135);

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
                  elementName3 = [v126 elementName];
                  cookie3 = [v126 cookie];
                  *buf = 138412546;
                  *&buf[4] = elementName3;
                  *&buf[12] = 2048;
                  *&buf[14] = cookie3;
                  _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "searchVolume:push:[%@]@%#llx", buf, 0x16u);
                }

                [(pathStack *)v122 push:v126];
                v45 = v186[5];
                metaDataRequests4 = [(userFSVolume *)self metaDataRequests];
                v134[0] = _NSConcreteStackBlock;
                v134[1] = 3221225472;
                v134[2] = sub_10001630C;
                v134[3] = &unk_100038A10;
                v134[4] = self;
                v134[5] = &v185;
                v134[6] = v208;
                v134[7] = &v197;
                dispatch_sync(metaDataRequests4, v134);

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

                  lfn_name4 = [v186[5] lfn_name];
                  getFH2 = [v45 getFH];
                  v83 = [pathElement pathElementFromName:lfn_name4 withParentFH:getFH2 withCookie:0 andWithCookieVerifier:0];
                  [(pathStack *)v122 push:v83];

                  v26 = 6;
                }
              }
            }

            _Block_object_dispose(v208, 8);

            goto LABEL_130;
          }

          fullPath = [(pathStack *)v122 fullPath];
          elementName4 = [v126 elementName];
          v35 = objc_alloc_init(NSMutableString);
          if (fullPath && ([fullPath isEqualToString:&stru_100038E98] & 1) == 0)
          {
            [v35 appendFormat:@"%@/", fullPath];
          }

          if (elementName4)
          {
            [v35 appendFormat:@"%@/", elementName4];
          }

          [v35 appendString:v125];
          v36 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
          {
            *v208 = 138412290;
            *&v208[4] = v35;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "searchVolume:match:%@", v208, 0xCu);
          }

          v37 = [criteriaCopy objectForKeyedSubscript:LISearchObjXattrsToReturn];
          v117 = v35;
          v115 = fullPath;
          v116 = elementName4;

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
              [criteriaCopy objectForKeyedSubscript:LISearchObjXattrsToReturn];
              objc_claimAutoreleasedReturnValue();
              sub_100022E24();
            }

            v39 = objc_alloc_init(NSMutableDictionary);
            metaDataRequests5 = [(userFSVolume *)self metaDataRequests];
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
            dispatch_sync(metaDataRequests5, v165);

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
              v46 = [criteriaCopy objectForKeyedSubscript:LISearchObjXattrsToReturn];
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

                      metaDataRequests6 = [(userFSVolume *)self metaDataRequests];
                      v154[0] = _NSConcreteStackBlock;
                      v154[1] = 3221225472;
                      v154[2] = sub_100015DCC;
                      v154[3] = &unk_100038A88;
                      v154[4] = self;
                      v154[5] = v208;
                      v154[6] = &v171;
                      v154[7] = &v155;
                      dispatch_sync(metaDataRequests6, v154);

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

                                metaDataRequests7 = [(userFSVolume *)self metaDataRequests];
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
                                dispatch_sync(metaDataRequests7, v145);
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
                      metaDataRequests8 = [(userFSVolume *)self metaDataRequests];
                      v144[0] = _NSConcreteStackBlock;
                      v144[1] = 3221225472;
                      v144[2] = sub_100016060;
                      v144[3] = &unk_100038B00;
                      v144[4] = self;
                      v144[5] = v49;
                      v144[6] = v208;
                      v144[7] = &v171;
                      v144[8] = buf;
                      dispatch_sync(metaDataRequests8, v144);

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

              metaDataRequests9 = [(userFSVolume *)self metaDataRequests];
              v141[0] = _NSConcreteStackBlock;
              v141[1] = 3221225472;
              v141[2] = sub_10001616C;
              v141[3] = &unk_100038B68;
              v141[4] = self;
              v143 = v208;
              v142 = v114;
              dispatch_async(metaDataRequests9, v141);

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
                lfn_name5 = [v186[5] lfn_name];
                *v208 = 138412546;
                *&v208[4] = lfn_name5;
                *&v208[12] = 2112;
                *&v208[14] = v117;
                _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "searchVolume:scanDir:%@:match:%@:posting", v208, 0x16u);
              }

              resultsHandler = [v127 resultsHandler];
              v68 = resultsHandler;
              if (v39)
              {
                v69 = v39;
              }

              else
              {
                v69 = &__NSDictionary0__struct;
              }

              [resultsHandler addSearchResult:v117 attributes:v214 attributeSize:184 xAttrs:v69];
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

        metaDataRequests10 = [(userFSVolume *)self metaDataRequests];
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
        dispatch_sync(metaDataRequests10, block);

        v24 = *(v198[0] + 24);
        if (v24)
        {
          v25 = userfs_log_default;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            elementName5 = [v23 elementName];
            parentFH4 = [v23 parentFH];
            *v214 = 138412546;
            *&v214[4] = elementName5;
            *&v214[12] = 2112;
            *&v214[14] = parentFH4;
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
    *&v214[4] = volumeCopy;
    *&v214[12] = 1024;
    *&v214[14] = v111;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "searchVolume:posting:done:%@:%d", v214, 0x12u);
  }

  resultsHandler2 = [v10 resultsHandler];
  [resultsHandler2 tokenDone:*(v198[0] + 24)];

  pthread_rwlock_wrlock(&self->searchRequestsRWLock);
  [(NSMutableDictionary *)self->searchRequests removeObjectForKey:tokenCopy];
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

- (void)verifyExistenceWithFileIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  v8 = [dsCopy length] >> 3;
  if (v8)
  {
    +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [dsCopy length] >> 3);
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
    v16 = dsCopy;
    v18 = v10;
    v19 = replyCopy;
    v17 = v9;
    v13 = v9;
    v14 = v10;
    dispatch_group_async(IOGroup, IORequests, v15);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 22, 0);
  }
}

- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v9 = [dCopy length] >> 3;
  if (v9)
  {
    getAttrData = [(liveFSNode *)self->_rootNode getAttrData];
    v11 = getAttrData;
    if (getAttrData)
    {
      v12 = *([getAttrData bytes] + 8);
      IOGroup = self->_IOGroup;
      IORequests = self->_IORequests;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000167EC;
      block[3] = &unk_100038C28;
      v20 = v9;
      v16 = dCopy;
      selfCopy = self;
      v18 = replyCopy;
      v19 = v12;
      dispatch_group_async(IOGroup, IORequests, block);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 22, 0);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 22, 0);
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
  rootNode = [(userFSVolume *)self rootNode];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016EE4;
  v6[3] = &unk_100038C50;
  v6[4] = self;
  v6[5] = &v7;
  [(userFSVolume *)self otherAttributeOf:rootNode named:@"_N_f_bavail" reply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end