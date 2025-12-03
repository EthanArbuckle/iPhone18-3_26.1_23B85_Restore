@interface smbMount
+ (id)smbMountFromServerURL:(id)l shareName:(id)name password:(id)password result:(int *)result;
- ($153B227C17007545984278727FAEAED4)serverGuid;
- (id)initForServerURL:(id)l shareName:(id)name password:(id)password result:(int *)result;
- (id)lookupHandle:(id)handle IsStale:(BOOL *)stale;
- (int)checkServerConnection;
- (int)connectToServer;
- (int)connectionState;
- (int)deliverSearchResults:(id)results;
- (int)tryCreateRootNode;
- (timespec)lastRequestTime;
- (unint64_t)newConnectionIDOrError:(id *)error;
- (void)LIRead:(id)read atOffset:(unint64_t)offset withPointer:(char *)pointer length:(unint64_t)length reply:(id)reply;
- (void)SetShutDownReason:(int)reason;
- (void)_LIAccessCheck:(id)check requestedAccess:(unsigned int)access reply:(id)reply;
- (void)_LIClose:(id)close keepingMode:(int)mode reply:(id)reply;
- (void)_LICreate:(id)create named:(id)named withAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply;
- (void)_LIGetFsAttr:(id)attr name:(id)name reply:(id)reply;
- (void)_LIGetXattr:(id)xattr name:(id)name reply:(id)reply;
- (void)_LIListXattrs:(id)xattrs reply:(id)reply;
- (void)_LILookup:(id)lookup name:(id)name forClient:(unint64_t)client reply:(id)reply;
- (void)_LIMakeDir:(id)dir named:(id)named withAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply;
- (void)_LIMakeSymLink:(id)link named:(id)named withContents:(id)contents andAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply;
- (void)_LIPathConf:(id)conf reply:(id)reply;
- (void)_LIRead:(id)read atOffset:(unint64_t)offset withPointer:(char *)pointer length:(unint64_t)length reply:(id)reply;
- (void)_LIReadDir:(id)dir intoBuffer:(id)buffer forCookie:(unint64_t)cookie andVerifier:(unint64_t)verifier reply:(id)reply;
- (void)_LIReadDirAndAttrs:(id)attrs intoBuffer:(id)buffer forCookie:(unint64_t)cookie andVerifier:(unint64_t)verifier reply:(id)reply;
- (void)_LIReadLink:(id)link reply:(id)reply;
- (void)_LIReclaim:(id)reclaim forClient:(unint64_t)client reply:(id)reply;
- (void)_LIRemove:(id)remove name:(id)name reply:(id)reply;
- (void)_LIRemoveDir:(id)dir name:(id)name reply:(id)reply;
- (void)_LIRename:(id)rename name:(id)name toDir:(id)dir andName:(id)andName withFlags:(unsigned int)flags reply:(id)reply;
- (void)_LISearch:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy withCallerID:(unint64_t)d reply:(id)reply;
- (void)_LISearchAbort:(id)abort reply:(id)reply;
- (void)_LISearchAbortAllClientSearches:(unint64_t)searches;
- (void)_LISetAttr:(id)attr setAttrs:(id)attrs reply:(id)reply;
- (void)_LISetUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client reply:(id)reply;
- (void)_LISetXattr:(id)xattr name:(id)name value:(id)value how:(int)how reply:(id)reply;
- (void)_LIStatFS:(id)s reply:(id)reply;
- (void)_LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply;
- (void)_getAttr:(id)attr reply:(id)reply;
- (void)_invalidateFileNodesForConnection:(unint64_t)connection;
- (void)_setConnectionState:(int)state;
- (void)_submitRequestBlock:(id)block continuationBlock:(id)continuationBlock allowRetries:(BOOL)retries;
- (void)abortAllClientSearchesFor:(unint64_t)for;
- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply;
- (void)cancelIdleTimer;
- (void)checkAccessTo:(id)to requestedAccess:(unsigned int)access requestID:(unint64_t)d reply:(id)reply;
- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)createIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)dealloc;
- (void)decreaseChangeNotifyCount:(unint64_t)count;
- (void)decreaseOpenFileCount:(unint64_t)count;
- (void)disconnect;
- (void)disconnectFromServer;
- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)flushAndDisconnect;
- (void)flushAndReconnect;
- (void)flushEIOCancelWait;
- (void)handleNodeDisappeared:(id)disappeared;
- (void)idleTimerFired;
- (void)increaseChangeNotifyCount:(unint64_t)count;
- (void)increaseOpenFileCount:(unint64_t)count;
- (void)invalidateFileNodesForConnection:(unint64_t)connection;
- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)lookupin:(id)lookupin name:(id)name forClient:(unint64_t)client usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)notifyConnectionLost;
- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory amount:(unint64_t)amount cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory amount:(unint64_t)amount requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from length:(unint64_t)length atOffset:(unint64_t)offset requestID:(unint64_t)d reply:(id)reply;
- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)readRequest:(id)request bptr:(char *)bptr smbNode:(id)node fileRef:(id)ref rdparamPtr:(smb_read_write *)ptr result:(int)result thisOffset:(unint64_t)offset bytesRemain:(unint64_t)self0 bytesRead:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3;
- (void)reclaim:(id)reclaim forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)reconnectCancelWait;
- (void)reconnectSession;
- (void)releaseConnectionAllocation:(unint64_t)allocation;
- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)renameItemIn:(id)in named:(id)named toDirectory:(id)directory newName:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)renameOverExistingDir:(id)dir FromName:(id)name toDir:(id)toDir NewName:(id)newName ToFile:(id)file CompletionHandler:(id)handler;
- (void)renameOverExistingFile:(id)file FromName:(id)name toDir:(id)dir NewName:(id)newName ToFile:(id)toFile CompletionHandler:(id)handler;
- (void)replenishSearchCreditsFor:(id)for credits:(unsigned int)credits requestID:(unint64_t)d reply:(id)reply;
- (void)requestDisconnect;
- (void)resetChangeNotifyCount;
- (void)resetOpenFileCount;
- (void)resumeIdleTimer;
- (void)rootFileHandleForClient:(unint64_t)client reply:(id)reply;
- (void)search:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)setAttrInternalLocked:(id)locked setAttrs:(id)attrs CompletionHandler:(id)handler;
- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply;
- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply;
- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply;
- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply;
- (void)writeRequest:(id)request withBuffer:(id)buffer smbNode:(id)node fileRef:(id)ref wrparamPtr:(smb_read_write *)ptr result:(int)result thisOffset:(unint64_t)offset bytesWritten:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3;
- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
@end

@implementation smbMount

- (id)initForServerURL:(id)l shareName:(id)name password:(id)password result:(int *)result
{
  lCopy = l;
  nameCopy = name;
  v50.receiver = self;
  v50.super_class = smbMount;
  v10 = [(smbMount *)&v50 init];
  v11 = v10;
  if (v10)
  {
    transaction = v10->_transaction;
    v10->_transaction = 0;

    v13 = dispatch_queue_create("com.apple.SMBProvider.Ops", 0);
    opsQueue = v11->_opsQueue;
    v11->_opsQueue = v13;

    v15 = dispatch_queue_create("com.apple.SMBProvider.ConnectionQueue", 0);
    connQueue = v11->_connQueue;
    v11->_connQueue = v15;

    v17 = dispatch_queue_create("com.apple.SMBProvider.connectionSyncQueue", 0);
    connectionSyncQueue = v11->_connectionSyncQueue;
    v11->_connectionSyncQueue = v17;

    v19 = dispatch_queue_create("com.apple.SMBProvider.nodeTableSyncQueue", 0);
    nodeTableSyncQueue = v11->_nodeTableSyncQueue;
    v11->_nodeTableSyncQueue = v19;

    v21 = dispatch_queue_create("com.apple.SMBProvider.MgmtQ", 0);
    mgmtQueue = v11->_mgmtQueue;
    v11->_mgmtQueue = v21;

    v23 = dispatch_queue_create("com.apple.SMBProvider.readwriteSyncQ", 0);
    readwriteSyncQueue = v11->_readwriteSyncQueue;
    v11->_readwriteSyncQueue = v23;

    v25 = dispatch_group_create();
    opsSyncGroup = v11->_opsSyncGroup;
    v11->_opsSyncGroup = v25;

    v27 = dispatch_group_create();
    namespaceChangingGroup = v11->_namespaceChangingGroup;
    v11->_namespaceChangingGroup = v27;

    v11->_connState = 0;
    v11->_shutdownReason = 0;
    v11->_serverConnected = 0;
    host = [lCopy host];
    serverName = v11->_serverName;
    v11->_serverName = host;

    objc_storeStrong(&v11->_shareName, name);
    user = [lCopy user];
    userName = v11->_userName;
    v11->_userName = user;

    v11->_isGuestLogin = 0;
    mountURL = v11->_mountURL;
    v11->_mountURL = 0;

    v34 = objc_alloc_init(NSMutableDictionary);
    handleTable = v11->_handleTable;
    v11->_handleTable = v34;

    v36 = objc_alloc_init(NSMutableDictionary);
    nameTable = v11->_nameTable;
    v11->_nameTable = v36;

    v38 = objc_alloc_init(NSMutableString);
    modelName = v11->_modelName;
    v11->_modelName = v38;

    v40 = objc_alloc_init(NSMutableString);
    fsName = v11->_fsName;
    v11->_fsName = v40;

    v11->_shareInfo.fsType = 0;
    v11->_sm_flags = 1;
    v42 = objc_alloc_init(NSMutableDictionary);
    searchObjects = v11->_searchObjects;
    v11->_searchObjects = v42;

    v44 = objc_opt_new();
    searchLock = v11->_searchLock;
    v11->_searchLock = v44;

    v46 = [lCopy URLByAppendingPathComponent:nameCopy];
    v47 = v11->_mountURL;
    v11->_mountURL = v46;

    atomic_store(2uLL, &v11->_nextFileID);
    atomic_store(0, &v11->_pendingRequests);
    clock_gettime(_CLOCK_REALTIME, &v11->_lastRequestTime);
    rootNode = v11->_rootNode;
    v11->_rootNode = 0;

    v11->_idleTimerRunning = 0;
    [(smbMount *)v11 resumeIdleTimer];
  }

  return v11;
}

- (int)connectToServer
{
  memset(v53, 0, sizeof(v53));
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  [(smbMount *)self setOpenFileCounter:0];
  [(smbMount *)self setPendingChangeNotifyCount:0];
  v3 = objc_alloc_init(SMBPiston);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000501E8();
    }

    v5 = 12;
    goto LABEL_8;
  }

  [(smbMount *)self setPendingRequests:0];
  clock_gettime(_CLOCK_REALTIME, &self->_lastRequestTime);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v4 = [smb_subr sendNegotiate:v3 Server:self->_serverName netBIOSName:0 VPNCookie:0 Result:&v49];
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004FC74(&v49);
    }

    goto LABEL_8;
  }

  self->_serverGuid = v50;
  self->_serverSecMode = WORD2(v49);
  self->_serverDialect = WORD3(v49);
  self->_serverNegContextCnt = WORD4(v49);
  v7 = DWORD1(v51);
  self->_serverCaps = v51;
  self->_serverMaxTx = v7;
  v8 = HIDWORD(v51);
  self->_serverMaxRd = DWORD2(v51);
  self->_serverMaxWr = v8;
  if ([(NSString *)self->_userName caseInsensitiveCompare:@"GUEST"]== NSOrderedSame)
  {
    self->_isGuestLogin = 1;
    LODWORD(v46) = 1;
    userName = self->_userName;
    self->_userName = @"GUEST";

    v10 = [smb_subr sendSessionSetup:v3 User:self->_userName Password:0 Realm:0 Param:&v46];
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_16;
  }

  if ([(NSString *)self->_userName length]>= 0x100)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004FD68();
    }

    v5 = 22;
    goto LABEL_8;
  }

  if ([(NSString *)self->_userName containsString:@";"])
  {
    v11 = [(NSString *)self->_userName rangeOfString:@";"];
    v12 = [(NSString *)self->_userName substringToIndex:v11];
    userDomain = self->_userDomain;
    self->_userDomain = v12;

    v14 = [(NSString *)self->_userName substringFromIndex:v11 + 1];
    v15 = self->_userName;
    self->_userName = v14;
  }

  v16 = qword_1000954F0;
  mountURL = [(smbMount *)self mountURL];
  v42 = 0;
  v18 = [v16 getPasswordForIdentifier:mountURL error:&v42];
  v19 = v42;

  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004FCF0();
    }

    v5 = 80;
    goto LABEL_8;
  }

  if ((v52 & 2) != 0)
  {
    v20 = objc_opt_new();
    realms = [v20 realms];

    if (self->_userDomain && [realms count])
    {
      LODWORD(v46) = 8;
      v10 = [smb_subr sendSessionSetup:v3 User:self->_userName Password:v18 Realm:self->_userDomain Param:&v46];

      if (v10 != 80)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }
  }

  if ((v52 & 0x44) == 0 || (LODWORD(v46) = 2, v22 = [smb_subr sendSessionSetup:v3 User:self->_userName Password:v18 Realm:@"WELLKNOWN:COM.APPLE.LKDC" Param:&v46], v22 == 80))
  {
    LODWORD(v46) = 4;
    v22 = [smb_subr sendSessionSetup:v3 User:self->_userName Password:v18 Realm:self->_userDomain Param:&v46];
  }

  v10 = v22;
LABEL_36:

  if (!v10)
  {
LABEL_37:
    self->_sessionFlags = WORD2(v47);
    self->_sessionID = *(&v47 + 1);
    v23 = [smb_subr sendTreeConnect:v3 ShareName:self->_shareName Param:&v43];
    if (v23)
    {
      v5 = v23;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004FE28(&v43);
      }

      if (v43 == -1073741790)
      {
        v5 = 10100;
      }

      goto LABEL_61;
    }

    self->serverSockAddrLen = 128;
    v24 = [v3 getPeerAddress:&self->serverSockAddr withLength:&self->serverSockAddrLen];
    if (v24)
    {
      v5 = v24;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004FEA4();
      }
    }

    else
    {
      v25 = v45;
      self->_shareID = HIDWORD(v45);
      self->_shareType = BYTE4(v43);
      v26 = HIDWORD(v44);
      self->_shareFlags = v44;
      self->_shareCaps = v26;
      self->_shareMaxAccess = v25;
      v27 = [smb_subr sendQueryShare:v3 ShareID:self->_shareID Model:self->_modelName FSName:self->_fsName Param:&self->_shareInfo];
      if (v27)
      {
        v5 = v27;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004FF1C(&self->_shareInfo.ntStatus);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10004FF98(&self->_shareInfo);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100050018(&self->_shareInfo);
        }

        self->_sm_flags = self->_sm_flags & 0xFFFFFFFE | (self->_shareInfo.fileSystemAttrs >> 7) & 1;
        if ((self->_shareInfo.fileSystemAttrs & 0x40000) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005009C(self);
        }

        v28 = [smb_subr queryShareRootSync:v3 ShareID:self->_shareID FAttrs:v53];
        if (!v28)
        {
          rootNode = [(smbMount *)self rootNode];

          if (!rootNode)
          {
            v30 = [[smbNode alloc] initWithName:@"TheRooT" andParent:0 andAttr:v53];
            if (!v30)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000501A4();
              }

              v5 = 12;
              goto LABEL_60;
            }

            v31 = v30;
            [(smbNode *)v30 setMp:self];
            [(smbNode *)v31 updateFileID];
            rootNode = self->_rootNode;
            self->_rootNode = v31;
            v33 = v31;

            handleTable = self->_handleTable;
            v35 = [(smbNode *)v33 fh];
            [(NSMutableDictionary *)handleTable setObject:v33 forKey:v35];

            nameTable = self->_nameTable;
            v37 = [(smbNode *)v33 fh];
            v38 = [LiveFSItemPair newWithParent:v37 fname:@"." caseSensitivity:[(smbMount *)self isCaseSensitive]];
            [(NSMutableDictionary *)nameTable setObject:v33 forKey:v38];

            v39 = self->_nameTable;
            v40 = [(smbNode *)v33 fh];
            v41 = [LiveFSItemPair newWithParent:v40 fname:@".." caseSensitivity:[(smbMount *)self isCaseSensitive]];
            [(NSMutableDictionary *)v39 setObject:v33 forKey:v41];
          }

          [(smbMount *)self setPd:v3];
          v5 = 0;
          self->_serverConnected = 1;
          goto LABEL_9;
        }

        v5 = v28;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005012C();
        }
      }
    }

LABEL_60:
    [smb_subr sendTreeDisonnect:v3 ShareID:self->_shareID Param:&v43];
LABEL_61:
    [smb_subr sendLogoff:v3 Param:&v46];
LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

LABEL_16:
  v5 = sub_100032674(v10);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004FDAC(&v46);
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)disconnectFromServer
{
  if ([(smbMount *)self serverConnected])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000502D0(self);
    }

    memset(v8, 0, sizeof(v8));
    v3 = [(smbMount *)self pd];
    [smb_subr sendTreeDisonnect:v3 ShareID:[(smbMount *)self shareID] Param:v8];

    v4 = [(smbMount *)self pd:0];
    [smb_subr sendLogoff:v4 Param:&v7];

    v5 = [(smbMount *)self pd];
    [v5 disconnect];

    [(smbMount *)self setServerConnected:0];
    pd = self->_pd;
    self->_pd = 0;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10005022C(self);
  }
}

- (int)tryCreateRootNode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectionSyncQueue = self->_connectionSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009DC8;
  v5[3] = &unk_10008C858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionSyncQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)checkServerConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectionSyncQueue = self->_connectionSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A104;
  v5[3] = &unk_10008C858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionSyncQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)idleTimerFired
{
  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v6);
  tv_sec = v6.tv_sec;
  if (tv_sec - [(smbMount *)self lastRequestTime]>= 120)
  {
    connState = [(smbMount *)self connState];
    switch(connState)
    {
      case 7u:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005082C(self);
        }

        [(smbMount *)self setConnState:0];
        [(smbMount *)self setShutdownReason:0];
        goto LABEL_25;
      case 1u:
        if ([(smbMount *)self openFileCounter])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100050974(self);
          }
        }

        else
        {
          if (![(smbMount *)self pendingChangeNotifyCount])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100050AE4(self);
            }

            [(smbMount *)self setConnState:0];
LABEL_24:
            [(smbMount *)self disconnectFromServer];
LABEL_25:
            [(smbMount *)self cancelIdleTimer];
            return;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100050A2C(self);
          }
        }

        break;
      case 0u:
        rootNode = [(smbMount *)self rootNode];

        if (rootNode)
        {
          goto LABEL_25;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000508D0(self);
        }

        if ([(smbMount *)self connectToServer])
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      default:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100050B88(self);
        }

        break;
    }
  }
}

- (void)resumeIdleTimer
{
  idleTimer = [(smbMount *)self idleTimer];

  if (!idleTimer)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    [(smbMount *)self setIdleTimer:v4];

    idleTimer2 = [(smbMount *)self idleTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000A5F8;
    handler[3] = &unk_10008C880;
    handler[4] = self;
    dispatch_source_set_event_handler(idleTimer2, handler);
  }

  idleTimer3 = [(smbMount *)self idleTimer];
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(idleTimer3, v7, 0x6FC23AC00uLL, 0x2FAF080uLL);

  if (![(smbMount *)self idleTimerRunning])
  {
    [(smbMount *)self setIdleTimerRunning:1];
    idleTimer4 = [(smbMount *)self idleTimer];
    dispatch_resume(idleTimer4);
  }
}

- (void)cancelIdleTimer
{
  idleTimer = [(smbMount *)self idleTimer];

  if (idleTimer && [(smbMount *)self idleTimerRunning]== 1)
  {
    [(smbMount *)self setIdleTimerRunning:0];
    idleTimer2 = [(smbMount *)self idleTimer];
    dispatch_suspend(idleTimer2);
  }
}

- (void)increaseOpenFileCount:(unint64_t)count
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A7B4;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(connectionSyncQueue, v6);
}

- (void)decreaseOpenFileCount:(unint64_t)count
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A890;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(connectionSyncQueue, v6);
}

- (void)resetOpenFileCount
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9C0;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
}

- (void)increaseChangeNotifyCount:(unint64_t)count
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AA60;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(connectionSyncQueue, v6);
}

- (void)decreaseChangeNotifyCount:(unint64_t)count
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AB3C;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(connectionSyncQueue, v6);
}

- (void)resetChangeNotifyCount
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC6C;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
}

+ (id)smbMountFromServerURL:(id)l shareName:(id)name password:(id)password result:(int *)result
{
  passwordCopy = password;
  nameCopy = name;
  lCopy = l;
  v13 = [[self alloc] initForServerURL:lCopy shareName:nameCopy password:passwordCopy result:result];

  return v13;
}

- (void)disconnect
{
  connectionSyncQueue = self->_connectionSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD98;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
  [(smbMount *)self requestDisconnect];
}

- (void)invalidateFileNodesForConnection:(unint64_t)connection
{
  if ([(smbMount *)self connState])
  {
    v5 = dispatch_time(0, 15000000000);
    opsSyncGroup = [(smbMount *)self opsSyncGroup];
    v7 = dispatch_group_wait(opsSyncGroup, v5);

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100050E6C();
      }
    }

    else
    {
      namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

      opsQueue = [(smbMount *)self opsQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000AF34;
      v10[3] = &unk_10008C8A8;
      v10[4] = self;
      v10[5] = connection;
      dispatch_async(opsQueue, v10);
    }
  }
}

- (void)_invalidateFileNodesForConnection:(unint64_t)connection
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000B2A0;
  v36 = sub_10000B2B0;
  v37 = 0;
  if ([(smbMount *)self checkServerConnection])
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100050EB0();
    }
  }

  v6 = dispatch_group_create();
  v7 = v33[5];
  v33[5] = v6;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  handleTable = [(smbMount *)self handleTable];
  v9 = 0;
  v10 = [handleTable countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = ~connection;
    v12 = *v29;
    v22 = v25;
    obj = handleTable;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        handleTable2 = [(smbMount *)self handleTable];
        v16 = [handleTable2 objectForKey:v14];

        v9 = v16;
        [v16 setInterestedClients:{objc_msgSend(v16, "interestedClients") & v11}];
        inUseClientSet = [v16 inUseClientSet];
        [v16 setInUseClientSet:inUseClientSet & v11];
        if ((inUseClientSet & connection) != 0 && ![v16 inUseClientSet])
        {
          rootNode = [(smbMount *)self rootNode];
          v19 = [rootNode fh];
          v20 = [v14 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            dispatch_group_enter(v33[5]);
            fileRefSyncQueue = [v9 fileRefSyncQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v25[0] = sub_10000B2B8;
            v25[1] = &unk_10008C858;
            v26 = v9;
            v27 = &v32;
            dispatch_async(fileRefSyncQueue, block);

            dispatch_group_wait(v33[5], 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      handleTable = obj;
      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v32, 8);
}

- (unint64_t)newConnectionIDOrError:(id *)error
{
  v4.receiver = self;
  v4.super_class = smbMount;
  return [(smbMount *)&v4 newConnectionIDOrError:error];
}

- (void)releaseConnectionAllocation:(unint64_t)allocation
{
  v3.receiver = self;
  v3.super_class = smbMount;
  [(smbMount *)&v3 releaseConnectionAllocation:allocation];
}

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  pd = self->_pd;
  self->_pd = 0;

  shareName = self->_shareName;
  self->_shareName = 0;

  rootNode = self->_rootNode;
  self->_rootNode = 0;

  handleTable = self->_handleTable;
  self->_handleTable = 0;

  nameTable = self->_nameTable;
  self->_nameTable = 0;

  modelName = self->_modelName;
  self->_modelName = 0;

  fsName = self->_fsName;
  self->_fsName = 0;

  v11.receiver = self;
  v11.super_class = smbMount;
  [(smbMount *)&v11 dealloc];
}

- (id)lookupHandle:(id)handle IsStale:(BOOL *)stale
{
  v5 = [(NSMutableDictionary *)self->_handleTable objectForKey:handle];
  v6 = v5;
  if (v5)
  {
    *stale = [v5 isViable] ^ 1;
  }

  return v6;
}

- (void)handleNodeDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  [disappearedCopy setZombieState:1];
  if (([disappearedCopy isRoot] & 1) == 0)
  {
    nameTable = [(smbMount *)self nameTable];
    parent = [disappearedCopy parent];
    v6 = [parent fh];
    name = [disappearedCopy name];
    v8 = [LiveFSItemPair newWithParent:v6 fname:name caseSensitivity:[(smbMount *)self isCaseSensitive]];
    [nameTable removeObjectForKey:v8];
  }
}

- (void)rootFileHandleForClient:(unint64_t)client reply:(id)reply
{
  replyCopy = reply;
  rootNode = self->_rootNode;
  if (rootNode)
  {
    goto LABEL_2;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100050F00(self);
  }

  if (![(smbMount *)self checkServerConnection])
  {
    rootNode = self->_rootNode;
LABEL_2:
    v7 = [(smbNode *)rootNode fh];
    replyCopy[2](replyCopy, v7, 0);
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100050FA4();
  }

  v7 = getNSErrorFromLiveFSErrno();
  (replyCopy)[2](replyCopy, 0, v7);
LABEL_9:
}

- (void)lookupin:(id)lookupin name:(id)name forClient:(unint64_t)client usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  lookupinCopy = lookupin;
  nameCopy = name;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B800;
  block[3] = &unk_10008C920;
  block[4] = self;
  v22 = lookupinCopy;
  v24 = replyCopy;
  clientCopy = client;
  v23 = nameCopy;
  v18 = replyCopy;
  v19 = nameCopy;
  v20 = lookupinCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LILookup:(id)lookup name:(id)name forClient:(unint64_t)client reply:(id)reply
{
  lookupCopy = lookup;
  nameCopy = name;
  replyCopy = reply;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10000B2A0;
  v72 = sub_10000B2B0;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10000B2A0;
  v66 = sub_10000B2B0;
  v67 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_10000B2A0;
  v60[4] = sub_10000B2B0;
  v61 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100051054();
    }

    goto LABEL_21;
  }

  if (!lookupCopy || ![lookupCopy length])
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = nameCopy;
      sub_10005116C([nameCopy UTF8String], v74);
    }

    goto LABEL_20;
  }

  if (!nameCopy || ![nameCopy length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100051128();
    }

LABEL_20:
    checkServerConnection = 22;
LABEL_21:
    (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0);
    goto LABEL_22;
  }

  nodeTableSyncQueue = self->_nodeTableSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BFD0;
  block[3] = &unk_10008C948;
  v54 = &v62;
  block[4] = self;
  v16 = lookupCopy;
  v53 = v16;
  v55 = &v56;
  dispatch_sync(nodeTableSyncQueue, block);
  if (v63[5] && *(v57 + 24) != 1)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000C02C;
    v46[3] = &unk_10008C9C0;
    v22 = replyCopy;
    v49 = v22;
    v50 = &v62;
    clientCopy = client;
    v23 = nameCopy;
    v47 = v23;
    selfCopy = self;
    v24 = objc_retainBlock(v46);
    v25 = self->_nodeTableSyncQueue;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10000C2F0;
    v42[3] = &unk_10008C9E8;
    v45 = &v68;
    v42[4] = self;
    v26 = v16;
    v43 = v26;
    v27 = v23;
    v44 = v27;
    dispatch_sync(v25, v42);
    if (v69[5])
    {
      (v24[2])(v24);
    }

    else
    {
      v28 = malloc_type_malloc(0xF0uLL, 0x1000040D9093685uLL);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10000C398;
      v38[3] = &unk_10008CA38;
      v40 = &v62;
      v39 = v27;
      v41 = v28;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10000C470;
      v29[3] = &unk_10008CBA0;
      v37 = v28;
      v35 = &v62;
      v30 = v39;
      v33 = v22;
      selfCopy2 = self;
      v36 = v60;
      v32 = v26;
      v34 = v24;
      [(smbMount *)self submitRequestBlock:v38 continuationBlock:v29];
    }
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = nameCopy;
      sub_1000510A4([nameCopy UTF8String], v74);
    }

    if (*(v57 + 24) == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000510E4();
      }

      v19 = 70;
    }

    else
    {
      v19 = 2;
    }

    (*(replyCopy + 2))(replyCopy, v19, 0, 0);
  }

LABEL_22:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1C0;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = attributesCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = attributesCopy;
  dispatch_async(opsQueue, block);
}

- (void)_getAttr:(id)attr reply:(id)reply
{
  attrCopy = attr;
  replyCopy = reply;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000B2A0;
  v29 = sub_10000B2B0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D5B4;
    block[3] = &unk_10008C948;
    v19 = &v25;
    block[4] = self;
    v18 = attrCopy;
    v20 = &v21;
    dispatch_sync(nodeTableSyncQueue, block);
    v11 = v26[5];
    v12 = *(v22 + 24);
    if (v11)
    {
      if ((v22[3] & 1) == 0)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000D610;
        v14[3] = &unk_10008CC18;
        v16 = &v25;
        v14[4] = self;
        v15 = replyCopy;
        [v11 fetchAttrDataWithCompletionHandler:v14];

        goto LABEL_13;
      }

      v13 = 70;
    }

    else if (v22[3])
    {
      v13 = 70;
    }

    else
    {
      v13 = 2;
    }

    (*(replyCopy + 2))(replyCopy, v13, 0);
LABEL_13:

    goto LABEL_14;
  }

  v9 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000514B8();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0);
LABEL_14:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  openCopy = open;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D848;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = openCopy;
  modeCopy = mode;
  v18 = replyCopy;
  v14 = replyCopy;
  v15 = openCopy;
  dispatch_async(opsQueue, v16);
}

- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  closeCopy = close;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000E4B8;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = closeCopy;
  modeCopy = mode;
  v18 = replyCopy;
  v14 = replyCopy;
  v15 = closeCopy;
  dispatch_async(opsQueue, v16);
}

- (void)_LIClose:(id)close keepingMode:(int)mode reply:(id)reply
{
  closeCopy = close;
  replyCopy = reply;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_10000B2A0;
  v44[4] = sub_10000B2B0;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000B2A0;
  v42 = sub_10000B2B0;
  v43 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_10000B2A0;
  v36[4] = sub_10000B2B0;
  v37 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EB68;
    block[3] = &unk_10008C948;
    v32 = &v38;
    block[4] = self;
    v31 = closeCopy;
    v33 = &v50;
    dispatch_sync(nodeTableSyncQueue, block);
    v13 = v39[5];
    v14 = *(v51 + 24);
    if (v13)
    {
      if ((v51[3] & 1) == 0)
      {
        isDir = [v13 isDir];
        v16 = v39[5];
        if (isDir)
        {
          [v16 decDirRefCount];
          v17 = 0;
        }

        else
        {
          if ([v16 openFileRefs] > 0)
          {
            fileRefSyncQueue = [v39[5] fileRefSyncQueue];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10000EBC4;
            v20[3] = &unk_10008CDA8;
            modeCopy = mode;
            v22 = &v38;
            v23 = v34;
            v24 = v46;
            v25 = v48;
            v26 = v44;
            v27 = v35;
            v28 = v36;
            v21 = replyCopy;
            dispatch_async(fileRefSyncQueue, v20);

LABEL_22:
            goto LABEL_23;
          }

          v19 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v39[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_1000517C0();
          }

          v17 = 22;
        }

LABEL_21:
        (*(replyCopy + 2))(replyCopy, v17, 0, 0, 0, 0, 0, 0);
        goto LABEL_22;
      }
    }

    else if ((v51[3] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005180C();
      }

      v17 = 9;
      goto LABEL_21;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100051884();
    }

    v17 = 70;
    goto LABEL_21;
  }

  v11 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100051770();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0, 0, 0);
LABEL_23:
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);
}

- (void)reclaim:(id)reclaim forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  reclaimCopy = reclaim;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000EF70;
  v16[3] = &unk_10008CDD0;
  v16[4] = self;
  v17 = reclaimCopy;
  v18 = replyCopy;
  clientCopy = client;
  v14 = replyCopy;
  v15 = reclaimCopy;
  dispatch_async(opsQueue, v16);
}

- (void)_LIReclaim:(id)reclaim forClient:(unint64_t)client reply:(id)reply
{
  reclaimCopy = reclaim;
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000B2A0;
  v33 = sub_10000B2B0;
  v34 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([(smbMount *)self checkServerConnection])
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_1000518FC();
    }
  }

  nodeTableSyncQueue = self->_nodeTableSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F444;
  block[3] = &unk_10008C948;
  v25 = &v29;
  block[4] = self;
  v12 = reclaimCopy;
  v24 = v12;
  v26 = v27;
  dispatch_sync(nodeTableSyncQueue, block);
  v13 = v30[5];
  if (!v13)
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v18 = v12;
      sub_10005194C([v12 UTF8String], v35);
    }

    goto LABEL_14;
  }

  [v13 lockMeta];
  inUseClientSet = [v30[5] inUseClientSet];
  [v30[5] setInUseClientSet:inUseClientSet & ~client];
  [v30[5] unlockMeta];
  if ((inUseClientSet & client) == 0 || [v30[5] inUseClientSet])
  {
LABEL_14:
    replyCopy[2](replyCopy, 0);
    goto LABEL_15;
  }

  [v30[5] setZombieState:1];
  if (([v30[5] isRoot] & 1) == 0)
  {
    nodeTableSyncQueue = [(smbMount *)self nodeTableSyncQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000F4A0;
    v22[3] = &unk_10008C858;
    v22[4] = self;
    v22[5] = &v29;
    dispatch_sync(nodeTableSyncQueue, v22);
  }

  fileRefSyncQueue = [v30[5] fileRefSyncQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000F5B8;
  v19[3] = &unk_10008CDF8;
  v21 = &v29;
  v20 = replyCopy;
  dispatch_async(fileRefSyncQueue, v19);

LABEL_15:
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  bufferCopy = buffer;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000F7A0;
  v22[3] = &unk_10008CE48;
  v22[4] = self;
  v23 = directoryCopy;
  cookieCopy = cookie;
  verifierCopy = verifier;
  v24 = bufferCopy;
  v25 = replyCopy;
  v19 = replyCopy;
  v20 = bufferCopy;
  v21 = directoryCopy;
  dispatch_async(opsQueue, v22);
}

- (void)_LIReadDir:(id)dir intoBuffer:(id)buffer forCookie:(unint64_t)cookie andVerifier:(unint64_t)verifier reply:(id)reply
{
  dirCopy = dir;
  bufferCopy = buffer;
  replyCopy = reply;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_10000B2A0;
  v73 = sub_10000B2B0;
  v74 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v58 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  v58 = checkServerConnection;
  if (!checkServerConnection)
  {
    v60[3] = 0;
    v64[3] = 0;
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FE5C;
    block[3] = &unk_10008C948;
    v52 = &v69;
    block[4] = self;
    v19 = dirCopy;
    v51 = v19;
    v53 = &v54;
    dispatch_sync(nodeTableSyncQueue, block);
    v20 = v70[5];
    v21 = *(v55 + 24);
    if (v20)
    {
      if ((v55[3] & 1) == 0)
      {
        if ([v20 isDir])
        {
          v22 = [v70[5] getDirEnumerator:&v58];
          if (v22)
          {
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10000FEB8;
            v41[3] = &unk_10008CE98;
            v45 = &v59;
            v46 = &v63;
            v17 = v22;
            v42 = v17;
            cookieCopy = cookie;
            verifierCopy = verifier;
            v43 = bufferCopy;
            selfCopy = self;
            v47 = v67;
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100010098;
            v34[3] = &unk_10008CEC0;
            v36 = &v59;
            v35 = replyCopy;
            v37 = &v63;
            v38 = &v69;
            cookieCopy2 = cookie;
            verifierCopy2 = verifier;
            [(smbMount *)self submitRequestBlock:v41 continuationBlock:v34];

LABEL_16:
            goto LABEL_17;
          }

          v31 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            name = [v70[5] name];
            v33 = name;
            sub_100051A28([name UTF8String], &v58, v75, name);
          }

          v25 = v58;
        }

        else
        {
          v28 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            name2 = [v70[5] name];
            v30 = name2;
            [name2 UTF8String];
            sub_1000519DC();
          }

          v25 = 20;
        }

LABEL_15:
        (*(replyCopy + 2))(replyCopy, v25, 0, 0);
        v17 = 0;
        goto LABEL_16;
      }
    }

    else if ((v55[3] & 1) == 0)
    {
      v26 = &_os_log_default;
      v25 = 2;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v27 = v19;
        sub_100051A84([v19 UTF8String], v75);
      }

      goto LABEL_14;
    }

    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v24 = v19;
      sub_100051AC4([v19 UTF8String], v75);
    }

    v25 = 70;
LABEL_14:

    v58 = v25;
    goto LABEL_15;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_10005198C();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0);
  v17 = 0;
LABEL_17:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(&v69, 8);
}

- (void)readDirectory:(id)directory amount:(unint64_t)amount cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  replyCopy = reply;
  v16 = [LiveFSSharedMutableBuffer dataWithLength:amount];
  v17 = v16;
  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100010290;
    v18[3] = &unk_10008CEE8;
    v19 = v16;
    amountCopy = amount;
    v20 = replyCopy;
    [(smbMount *)self readDirectory:directoryCopy intoBuffer:v19 cookie:cookie verifier:verifier requestID:d reply:v18];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 12, 0, 0, 0);
  }
}

- (void)readDirectory:(id)directory amount:(unint64_t)amount requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  replyCopy = reply;
  v17 = [LiveFSSharedMutableBuffer dataWithLength:amount];
  v18 = v17;
  if (v17)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000104A8;
    v19[3] = &unk_10008CEE8;
    v20 = v17;
    amountCopy = amount;
    v21 = replyCopy;
    [(smbMount *)self readDirectory:directoryCopy intoBuffer:v20 requestedAttributes:attributes cookie:cookie verifier:verifier requestID:d reply:v19];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 12, 0, 0, 0);
  }
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  bufferCopy = buffer;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000106B0;
  v22[3] = &unk_10008CE48;
  v22[4] = self;
  v23 = directoryCopy;
  cookieCopy = cookie;
  verifierCopy = verifier;
  v24 = bufferCopy;
  v25 = replyCopy;
  v19 = replyCopy;
  v20 = bufferCopy;
  v21 = directoryCopy;
  dispatch_async(opsQueue, v22);
}

- (void)_LIReadDirAndAttrs:(id)attrs intoBuffer:(id)buffer forCookie:(unint64_t)cookie andVerifier:(unint64_t)verifier reply:(id)reply
{
  attrsCopy = attrs;
  bufferCopy = buffer;
  replyCopy = reply;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10000B2A0;
  v63 = sub_10000B2B0;
  v64 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v48 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  v48 = checkServerConnection;
  if (!checkServerConnection)
  {
    v50[3] = 0;
    v54[3] = 0;
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010D00;
    block[3] = &unk_10008C948;
    v42 = &v59;
    block[4] = self;
    v41 = attrsCopy;
    v43 = &v44;
    dispatch_sync(nodeTableSyncQueue, block);
    v19 = v60[5];
    v20 = *(v45 + 24);
    if (v19)
    {
      if ((v45[3] & 1) == 0)
      {
        if ([v19 isDir])
        {
          v21 = [v60[5] getDirEnumerator:&v48];
          if (v21)
          {
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100010D5C;
            v32[3] = &unk_10008CF38;
            v35 = &v49;
            v36 = &v53;
            v17 = v21;
            v33 = v17;
            cookieCopy = cookie;
            verifierCopy = verifier;
            v34 = bufferCopy;
            v37 = v57;
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_100010E9C;
            v25[3] = &unk_10008CEC0;
            v27 = &v49;
            v26 = replyCopy;
            v28 = &v53;
            v29 = &v59;
            cookieCopy2 = cookie;
            verifierCopy2 = verifier;
            [(smbMount *)self submitRequestBlock:v32 continuationBlock:v25];

LABEL_21:
            goto LABEL_22;
          }

          v24 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v60[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_100051CD0();
          }

          v22 = v48;
LABEL_20:
          (*(replyCopy + 2))(replyCopy, v22, 0, 0);
          v17 = 0;
          goto LABEL_21;
        }

        v23 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [v60[5] name];
          objc_claimAutoreleasedReturnValue();
          sub_100051C84();
        }

        v22 = 20;
LABEL_19:
        v48 = v22;
        goto LABEL_20;
      }
    }

    else if ((v45[3] & 1) == 0)
    {
      v22 = 2;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100051D28();
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100051DA0();
    }

    v22 = 70;
    goto LABEL_19;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100051C34();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0);
  v17 = 0;
LABEL_22:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v59, 8);
}

- (void)createIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000110AC;
  v24[3] = &unk_10008CF88;
  v24[4] = self;
  v25 = inCopy;
  v26 = namedCopy;
  v27 = attributesCopy;
  v28 = replyCopy;
  clientCopy = client;
  v20 = replyCopy;
  v21 = attributesCopy;
  v22 = namedCopy;
  v23 = inCopy;
  dispatch_async(opsQueue, v24);
}

- (void)_LICreate:(id)create named:(id)named withAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply
{
  createCopy = create;
  namedCopy = named;
  attrsCopy = attrs;
  replyCopy = reply;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_10000B2A0;
  v76 = sub_10000B2B0;
  v77 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_10000B2A0;
  v70[4] = sub_10000B2B0;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_10000B2A0;
  v68[4] = sub_10000B2B0;
  v69 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v67[3] = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10000B2A0;
  v65 = sub_10000B2B0;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    if ([attrsCopy length] <= 0xB7)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100052064(v78, [attrsCopy length]);
      }

      checkServerConnection = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011920;
    block[3] = &unk_10008C948;
    v54 = &v72;
    block[4] = self;
    v20 = createCopy;
    v53 = v20;
    v55 = &v57;
    dispatch_sync(nodeTableSyncQueue, block);
    v21 = *(v58 + 24);
    if (v73[5])
    {
      if ((v58[3] & 1) == 0)
      {
        v22 = self->_nodeTableSyncQueue;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10001197C;
        v48[3] = &unk_10008C9E8;
        v51 = &v61;
        v48[4] = self;
        v49 = v20;
        v23 = namedCopy;
        v50 = v23;
        dispatch_sync(v22, v48);
        if (v62[5])
        {
          v24 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v73[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_100051F98();
          }

          (*(replyCopy + 2))(replyCopy, 17, 0, 0, 0, 0);
        }

        else
        {
          v30 = malloc_type_malloc(0xF0uLL, 0x1000040D9093685uLL);
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_100011A24;
          v44[3] = &unk_10008CA38;
          v46 = &v72;
          v45 = v23;
          v47 = v30;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100011B00;
          v31[3] = &unk_10008D078;
          v42 = v30;
          v32 = v45;
          v36 = &v72;
          v35 = replyCopy;
          selfCopy = self;
          v37 = v56;
          v38 = &v61;
          clientCopy = client;
          v39 = v67;
          v34 = attrsCopy;
          v40 = v68;
          v41 = v70;
          [(smbMount *)self submitRequestBlockOnce:v44 continuationBlock:v31];
        }

        goto LABEL_26;
      }
    }

    else if ((v58[3] & 1) == 0)
    {
      v28 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v29 = namedCopy;
        sub_100051FE4([namedCopy UTF8String], v78);
      }

      v27 = 2;
      goto LABEL_23;
    }

    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v26 = v20;
      sub_100052024([v20 UTF8String], v78);
    }

    v27 = 70;
LABEL_23:

    (*(replyCopy + 2))(replyCopy, v27, 0, 0, 0, 0);
LABEL_26:

    goto LABEL_9;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100051F48();
  }

LABEL_8:

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0);
LABEL_9:
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);
}

- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000126B4;
  v24[3] = &unk_10008CF88;
  v24[4] = self;
  v25 = inCopy;
  v26 = namedCopy;
  v27 = attributesCopy;
  v28 = replyCopy;
  clientCopy = client;
  v20 = replyCopy;
  v21 = attributesCopy;
  v22 = namedCopy;
  v23 = inCopy;
  dispatch_async(opsQueue, v24);
}

- (void)_LIMakeDir:(id)dir named:(id)named withAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply
{
  dirCopy = dir;
  namedCopy = named;
  attrsCopy = attrs;
  replyCopy = reply;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_10000B2A0;
  v76[4] = sub_10000B2B0;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_10000B2A0;
  v74[4] = sub_10000B2B0;
  v75 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_10000B2A0;
  v71 = sub_10000B2B0;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10000B2A0;
  v65 = sub_10000B2B0;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    if ([attrsCopy length] <= 0xB7)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000524CC(v78, [attrsCopy length]);
      }

      checkServerConnection = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012F28;
    block[3] = &unk_10008C948;
    v54 = &v67;
    block[4] = self;
    v20 = dirCopy;
    v53 = v20;
    v55 = &v57;
    dispatch_sync(nodeTableSyncQueue, block);
    v21 = *(v58 + 24);
    if (v68[5])
    {
      if ((v58[3] & 1) == 0)
      {
        v22 = self->_nodeTableSyncQueue;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100012F84;
        v48[3] = &unk_10008C9E8;
        v51 = &v61;
        v48[4] = self;
        v49 = v20;
        v23 = namedCopy;
        v50 = v23;
        dispatch_sync(v22, v48);
        if (v62[5])
        {
          v24 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v68[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_100052400();
          }

          (*(replyCopy + 2))(replyCopy, 17, 0, 0, 0, 0);
        }

        else
        {
          v30 = malloc_type_malloc(0xF0uLL, 0x1000040D9093685uLL);
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_10001302C;
          v44[3] = &unk_10008CA38;
          v46 = &v67;
          v45 = v23;
          v47 = v30;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100013108;
          v31[3] = &unk_10008D078;
          v42 = v30;
          v32 = v45;
          v36 = &v67;
          v35 = replyCopy;
          selfCopy = self;
          v37 = v56;
          v38 = &v61;
          clientCopy = client;
          v39 = v73;
          v34 = attrsCopy;
          v40 = v74;
          v41 = v76;
          [(smbMount *)self submitRequestBlockOnce:v44 continuationBlock:v31];
        }

        goto LABEL_26;
      }
    }

    else if ((v58[3] & 1) == 0)
    {
      v28 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v29 = namedCopy;
        sub_10005244C([namedCopy UTF8String], v78);
      }

      v27 = 2;
      goto LABEL_23;
    }

    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v26 = v20;
      sub_10005248C([v20 UTF8String], v78);
    }

    v27 = 70;
LABEL_23:

    (*(replyCopy + 2))(replyCopy, v27, 0, 0, 0, 0);
LABEL_26:

    goto LABEL_9;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000523B0();
  }

LABEL_8:

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0);
LABEL_9:
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v74, 8);

  _Block_object_dispose(v76, 8);
}

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013C88;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = ofCopy;
  v20 = namedCopy;
  v21 = replyCopy;
  v15 = replyCopy;
  v16 = namedCopy;
  v17 = ofCopy;
  dispatch_async(opsQueue, v18);
}

- (void)_LIGetFsAttr:(id)attr name:(id)name reply:(id)reply
{
  attrCopy = attr;
  nameCopy = name;
  replyCopy = reply;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2810000000;
  v79 = "";
  v80 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_10005281C();
    }

    goto LABEL_5;
  }

  if ([nameCopy isEqualToString:@"_N_PC_LINK_MAX"])
  {
    v15 = v77;
    v77[4] = 1;
    v14 = [NSData dataWithBytes:v15 + 4 length:8];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

LABEL_81:
    checkServerConnection = 12;
    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:@"_N_PC_NAME_MAX"])
  {
    v16 = v77;
    v77[4] = self->_shareInfo.maxComponentNameLen;
    v14 = [NSData dataWithBytes:v16 + 4 length:8];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([nameCopy isEqualToString:@"_B_PC_NO_TRUNC"])
  {
    v17 = v77;
    *(v77 + 32) = 0;
    v14 = [NSData dataWithBytes:v17 + 4 length:8];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([nameCopy isEqualToString:@"_N_PC_FILESIZEBITS"])
  {
    v18 = v77;
    v19 = 64;
    if (self->_share_fstype == 1)
    {
      v19 = 33;
    }

    v77[4] = v19;
    v14 = [NSData dataWithBytes:v18 + 4 length:8];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([nameCopy isEqualToString:@"_N_PC_XATTR_SIZE_BITS"])
  {
    if ((self->_shareInfo.fileSystemAttrs & 0x40000) != 0)
    {
      v20 = v77;
      v77[4] = 33;
      v14 = [NSData dataWithBytes:v20 + 4 length:8];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

LABEL_25:
    checkServerConnection = 45;
LABEL_5:
    v13 = replyCopy[2];
LABEL_6:
    v13(replyCopy, checkServerConnection, 0);
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"_N_f_bsize"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100014B14;
    v75[3] = &unk_10008CAD8;
    v75[4] = self;
    v75[5] = &v81;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100014C4C;
    v70[3] = &unk_10008D118;
    v74 = 0;
    v71 = replyCopy;
    v72 = &v76;
    v73 = &v81;
    [(smbMount *)self submitRequestBlock:v75 continuationBlock:v70];

LABEL_40:
    _Block_object_dispose(&v81, 8);
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"_N_f_iosize"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100014D1C;
    v69[3] = &unk_10008CAD8;
    v69[4] = self;
    v69[5] = &v81;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100014E54;
    v64[3] = &unk_10008D118;
    v68 = 0;
    v65 = replyCopy;
    v66 = &v76;
    v67 = &v81;
    [(smbMount *)self submitRequestBlock:v69 continuationBlock:v64];

    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"_N_f_blocks"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100014F24;
    v63[3] = &unk_10008CAD8;
    v63[4] = self;
    v63[5] = &v81;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100015064;
    v58[3] = &unk_10008D118;
    v62 = 0;
    v59 = replyCopy;
    v60 = &v76;
    v61 = &v81;
    [(smbMount *)self submitRequestBlock:v63 continuationBlock:v58];

    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"_N_f_bfree"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100015134;
    v57[3] = &unk_10008CAD8;
    v57[4] = self;
    v57[5] = &v81;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100015274;
    v52[3] = &unk_10008D118;
    v56 = 0;
    v53 = replyCopy;
    v54 = &v76;
    v55 = &v81;
    [(smbMount *)self submitRequestBlock:v57 continuationBlock:v52];

    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"_N_f_bavail"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100015344;
    v51[3] = &unk_10008CAD8;
    v51[4] = self;
    v51[5] = &v81;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100015484;
    v46[3] = &unk_10008D118;
    v50 = 0;
    v47 = replyCopy;
    v48 = &v76;
    v49 = &v81;
    [(smbMount *)self submitRequestBlock:v51 continuationBlock:v46];

    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"_N_f_bused"])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100015554;
    v45[3] = &unk_10008CAD8;
    v45[4] = self;
    v45[5] = &v81;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100015694;
    v40[3] = &unk_10008D118;
    v44 = 0;
    v41 = replyCopy;
    v42 = &v76;
    v43 = &v81;
    [(smbMount *)self submitRequestBlock:v45 continuationBlock:v40];

    goto LABEL_40;
  }

  if ([nameCopy isEqualToString:@"_S_f_type"])
  {
    v14 = [NSData dataWithBytes:"smb" length:4];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([nameCopy isEqualToString:@"_S_f_subtype"])
  {
    v14 = [NSData dataWithBytes:"SMB2" length:5];
    v13 = replyCopy[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (![nameCopy isEqualToString:@"_S_f_location"])
  {
    if ([nameCopy isEqualToString:@"_S_f_vol_name"])
    {
      shareName = [(smbMount *)self shareName];
      v28 = shareName;
      uTF8String = [shareName UTF8String];

      v14 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String) + 1];
      v13 = replyCopy[2];
      if (!v14)
      {
        v13(replyCopy, 12, 0);
        goto LABEL_7;
      }

LABEL_80:
      v13(replyCopy, 0, v14);
      goto LABEL_8;
    }

    if ([nameCopy isEqualToString:@"_B_has_perm_enforcement"])
    {
      v30 = v77;
      *(v77 + 32) = 1;
      v14 = [NSData dataWithBytes:v30 + 4 length:8];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([nameCopy isEqualToString:@"_B_has_access_check"])
    {
      v31 = v77;
      *(v77 + 32) = 1;
      v14 = [NSData dataWithBytes:v31 + 4 length:8];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([nameCopy isEqualToString:@"_N_caps_format"])
    {
      v32 = v77;
      v77[4] = 139266;
      v33 = v32 + 4;
      v34 = 141314;
      if (self->_share_fstype == 1)
      {
        v34 = 139298;
      }

      *v33 = v34;
      if ((~LODWORD(self->_shareInfo.capabilities) & 0x81) == 0)
      {
        v34 |= 0x100uLL;
        *v33 = v34;
      }

      fileSystemAttrs = self->_shareInfo.fileSystemAttrs;
      if ((fileSystemAttrs & 2) != 0)
      {
        v34 |= 0x200uLL;
        *v33 = v34;
        fileSystemAttrs = self->_shareInfo.fileSystemAttrs;
      }

      if ((fileSystemAttrs & 0x40) != 0)
      {
        *v33 = v34 | 0x40;
      }

      v14 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([nameCopy isEqualToString:@"_N_mntflags"])
    {
      v36 = v77;
      v77[4] = 0;
      v36[4] = (self->_shareInfo.fileSystemAttrs & 0x40000) == 0;
      v14 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([nameCopy isEqualToString:@"_N_caps_interfaces"])
    {
      v37 = v77;
      v38 = 0x100000;
      v77[4] = 0x100000;
      v39 = v37 + 4;
      if ((self->_shareInfo.fileSystemAttrs & 0x40000) != 0)
      {
        v38 = 1064960;
      }

      *v39 = v38;
      v14 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v13 = replyCopy[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    goto LABEL_25;
  }

  userName = [(smbMount *)self userName];
  serverName = [(smbMount *)self serverName];
  v23 = [NSString stringWithFormat:@"%@@%@", userName, serverName];

  v24 = v23;
  uTF8String2 = [v23 UTF8String];
  v14 = [NSData dataWithBytes:uTF8String2 length:strlen(uTF8String2) + 1];
  v26 = replyCopy[2];
  if (v14)
  {
    v26(replyCopy, 0, v14);
  }

  else
  {
    v26(replyCopy, 12, 0);
  }

LABEL_8:
  _Block_object_dispose(&v76, 8);
}

- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes andClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  contentsCopy = contents;
  attributesCopy = attributes;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015900;
  block[3] = &unk_10008D140;
  block[4] = self;
  v28 = inCopy;
  v29 = namedCopy;
  v30 = contentsCopy;
  v32 = replyCopy;
  clientCopy = client;
  v31 = attributesCopy;
  v22 = replyCopy;
  v23 = attributesCopy;
  v24 = contentsCopy;
  v25 = namedCopy;
  v26 = inCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIMakeSymLink:(id)link named:(id)named withContents:(id)contents andAttrs:(id)attrs andClient:(unint64_t)client reply:(id)reply
{
  linkCopy = link;
  namedCopy = named;
  contentsCopy = contents;
  attrsCopy = attrs;
  replyCopy = reply;
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x3032000000;
  v115[3] = sub_10000B2A0;
  v115[4] = sub_10000B2B0;
  v116 = 0;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x3032000000;
  v113[3] = sub_10000B2A0;
  v113[4] = sub_10000B2B0;
  v114 = 0;
  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x2020000000;
  v112[3] = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_10000B2A0;
  v106 = sub_10000B2B0;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = sub_10000B2A0;
  v100 = sub_10000B2B0;
  v101 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    if ([attrsCopy length] <= 0xB7)
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000529CC(v117, [attrsCopy length]);
      }

      checkServerConnection = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001649C;
    block[3] = &unk_10008C948;
    v85 = &v102;
    block[4] = self;
    v23 = linkCopy;
    v84 = v23;
    v86 = &v88;
    dispatch_sync(nodeTableSyncQueue, block);
    v24 = *(v89 + 24);
    if (v103[5])
    {
      if ((v89[3] & 1) == 0)
      {
        v25 = self->_nodeTableSyncQueue;
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1000164F8;
        v79[3] = &unk_10008C9E8;
        v82 = &v96;
        v79[4] = self;
        v80 = v23;
        v26 = namedCopy;
        v81 = v26;
        dispatch_sync(v25, v79);
        if (v97[5])
        {
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v103[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_1000528BC();
          }

          (*(replyCopy + 2))(replyCopy, 17, 0, 0, 0, 0);
        }

        else
        {
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_1000165A0;
          v73[3] = &unk_10008CFB0;
          clientCopy = client;
          v73[4] = self;
          v76 = &v102;
          v33 = v26;
          v74 = v33;
          v77 = v87;
          v34 = replyCopy;
          v75 = v34;
          v35 = objc_retainBlock(v73);
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100016748;
          v59[3] = &unk_10008D1E0;
          v66 = &v102;
          v36 = contentsCopy;
          v60 = v36;
          v67 = &v108;
          v37 = v34;
          v64 = v37;
          v68 = &v96;
          v38 = v33;
          v61 = v38;
          v69 = &v92;
          v70 = v112;
          v62 = attrsCopy;
          selfCopy = self;
          v71 = v113;
          v72 = v115;
          v43 = v35;
          v65 = v43;
          v39 = objc_retainBlock(v59);
          v40 = malloc_type_malloc(0xF0uLL, 0x1000040D9093685uLL);
          v109[3] = v40;
          if (v40)
          {
            *(v93 + 24) = 0;
            if (([(smbMount *)self sm_flags]& 1) != 0)
            {
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_100016E4C;
              v56[3] = &unk_10008D208;
              v58[1] = &v102;
              v57 = v38;
              v58[0] = v36;
              v58[2] = &v108;
              v49[0] = _NSConcreteStackBlock;
              v49[1] = 3221225472;
              v49[2] = sub_100016F30;
              v49[3] = &unk_10008D258;
              v49[4] = self;
              v53 = &v102;
              v50 = v57;
              v51 = v58[0];
              v54 = &v108;
              v55 = &v92;
              v52 = v39;
              [(smbMount *)self submitRequestBlockOnce:v56 continuationBlock:v49];

              v41 = &v57;
              v42 = v58;
            }

            else
            {
              *(v93 + 24) = 1;
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_1000171CC;
              v46[3] = &unk_10008D208;
              v48[1] = &v102;
              v47 = v38;
              v48[0] = v36;
              v48[2] = &v108;
              v44[0] = _NSConcreteStackBlock;
              v44[1] = 3221225472;
              v44[2] = sub_1000172B0;
              v44[3] = &unk_10008CA10;
              v45 = v39;
              [(smbMount *)self submitRequestBlockOnce:v46 continuationBlock:v44];

              v41 = &v47;
              v42 = v48;
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100052908();
            }

            (*(v37 + 2))(v37, 12, 0, 0, 0, 0);
          }
        }

        goto LABEL_34;
      }
    }

    else if ((v89[3] & 1) == 0)
    {
      v31 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v32 = namedCopy;
        sub_10005294C([namedCopy UTF8String], v117);
      }

      v30 = 2;
      goto LABEL_23;
    }

    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v29 = v23;
      sub_10005298C([v23 UTF8String], v117);
    }

    v30 = 70;
LABEL_23:

    (*(replyCopy + 2))(replyCopy, v30, 0, 0, 0, 0);
LABEL_34:

    goto LABEL_9;
  }

  v20 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_10005286C();
  }

LABEL_8:

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0);
LABEL_9:
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(v112, 8);
  _Block_object_dispose(v113, 8);

  _Block_object_dispose(v115, 8);
}

- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = [(smbMount *)self opsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017418;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = configurationCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = configurationCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIPathConf:(id)conf reply:(id)reply
{
  replyCopy = reply;
  v15 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v7 = checkServerConnection;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052D5C();
    }

    replyCopy[2](replyCopy, v7, 0);
  }

  else
  {
    maxComponentNameLen = self->_shareInfo.maxComponentNameLen;
    v14[0] = 0;
    v14[1] = maxComponentNameLen;
    if ((~LODWORD(self->_shareInfo.capabilities) & 0x81) != 0)
    {
      v9 = 6;
    }

    else
    {
      v9 = 2;
    }

    LOBYTE(v15) = v9 & 0xF7 | (8 * ((self->_shareInfo.fileSystemAttrs & 2) != 0));
    if (self->_share_fstype == 1)
    {
      v10 = 33;
    }

    else
    {
      v10 = 64;
    }

    v14[2] = v10;
    v11 = [NSData dataWithBytes:v14 length:16];
    if (v11)
    {
      v12 = 0;
      v13 = v11;
    }

    else
    {
      v12 = 12;
      v13 = 0;
    }

    (replyCopy)[2](replyCopy, v12, v13);
  }
}

- (void)LIRead:(id)read atOffset:(unint64_t)offset withPointer:(char *)pointer length:(unint64_t)length reply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100017790;
  v19[3] = &unk_10008D2A8;
  v19[4] = self;
  v20 = readCopy;
  pointerCopy = pointer;
  lengthCopy = length;
  v21 = replyCopy;
  offsetCopy = offset;
  v17 = replyCopy;
  v18 = readCopy;
  dispatch_async(opsQueue, v19);
}

- (void)_LIRead:(id)read atOffset:(unint64_t)offset withPointer:(char *)pointer length:(unint64_t)length reply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000B2A0;
  v47 = sub_10000B2B0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000B2A0;
  v41 = sub_10000B2B0;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017D1C;
    block[3] = &unk_10008C948;
    v31 = &v43;
    block[4] = self;
    v17 = readCopy;
    v30 = v17;
    v32 = &v33;
    dispatch_sync(nodeTableSyncQueue, block);
    v18 = v44[5];
    if (!v18 || (v34[3] & 1) != 0)
    {
      if ((v18 != 0) | v34[3] & 1)
      {
        v23 = 70;
      }

      else
      {
        v23 = 2;
      }
    }

    else
    {
      fileRefSyncQueue = [v18 fileRefSyncQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100017D78;
      v28[3] = &unk_10008CD08;
      v28[4] = &v37;
      v28[5] = &v43;
      dispatch_sync(fileRefSyncQueue, v28);

      v20 = v38[5];
      if (v20)
      {
        fidCtx = [v20 fidCtx];
        if (fidCtx)
        {
          v22 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
          [(smbMount *)self readRequest:v17 bptr:pointer smbNode:v44[5] fileRef:v38[5] rdparamPtr:v22 result:0 thisOffset:offset bytesRemain:length bytesRead:0 pass:0 reply:replyCopy];
LABEL_20:

          goto LABEL_21;
        }

        v25 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          name = [v44[5] name];
          v27 = name;
          [name UTF8String];
          sub_100052E5C();
        }
      }

      else
      {
        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [v44[5] name];
          objc_claimAutoreleasedReturnValue();
          sub_100052EA8();
        }
      }

      v23 = 9;
    }

    replyCopy[2](replyCopy, v23, 0);
    fidCtx = 0;
    goto LABEL_20;
  }

  v15 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100052E0C();
  }

  replyCopy[2](replyCopy, checkServerConnection, 0);
LABEL_21:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

- (void)readRequest:(id)request bptr:(char *)bptr smbNode:(id)node fileRef:(id)ref rdparamPtr:(smb_read_write *)ptr result:(int)result thisOffset:(unint64_t)offset bytesRemain:(unint64_t)self0 bytesRead:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3
{
  requestCopy = request;
  nodeCopy = node;
  refCopy = ref;
  replyCopy = reply;
  readwriteSyncQueue = [(smbMount *)self readwriteSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F34;
  block[3] = &unk_10008D320;
  resultCopy = result;
  v33 = replyCopy;
  remainCopy = remain;
  ptrCopy = ptr;
  readCopy = read;
  v29 = refCopy;
  selfCopy = self;
  bptrCopy = bptr;
  offsetCopy = offset;
  passCopy = pass;
  v31 = nodeCopy;
  v32 = requestCopy;
  v22 = requestCopy;
  v23 = nodeCopy;
  v24 = replyCopy;
  v25 = refCopy;
  dispatch_async(readwriteSyncQueue, block);
}

- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  bufferCopy = buffer;
  replyCopy = reply;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000B2A0;
  v20[4] = sub_10000B2B0;
  v14 = bufferCopy;
  v21 = v14;
  mutableBytes = [v14 mutableBytes];
  if (mutableBytes)
  {
    v16 = [v14 length];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000184B4;
    v17[3] = &unk_10008D348;
    v18 = replyCopy;
    v19 = v20;
    [(smbMount *)self LIRead:fromCopy atOffset:offset withPointer:mutableBytes length:v16 reply:v17];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052FA8();
    }

    (*(replyCopy + 2))(replyCopy, 12, 0);
  }

  _Block_object_dispose(v20, 8);
}

- (void)readFrom:(id)from length:(unint64_t)length atOffset:(unint64_t)offset requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  replyCopy = reply;
  v13 = [NSMutableData dataWithLength:length];
  v14 = v13;
  if (v13)
  {
    mutableBytes = [v13 mutableBytes];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018658;
    v16[3] = &unk_10008D370;
    v17 = v14;
    lengthCopy = length;
    v18 = replyCopy;
    [(smbMount *)self LIRead:fromCopy atOffset:offset withPointer:mutableBytes length:length reply:v16];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005302C();
    }

    (*(replyCopy + 2))(replyCopy, 12, 0);
  }
}

- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001880C;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = ofCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = ofCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIReadLink:(id)link reply:(id)reply
{
  linkCopy = link;
  replyCopy = reply;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_10000B2A0;
  v54 = sub_10000B2B0;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10000B2A0;
  v48 = sub_10000B2B0;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018E84;
    block[3] = &unk_10008C948;
    v38 = &v44;
    block[4] = self;
    v11 = linkCopy;
    v37 = v11;
    v39 = &v40;
    dispatch_sync(nodeTableSyncQueue, block);
    v12 = v45[5];
    v13 = *(v41 + 24);
    if (v12)
    {
      if ((v41[3] & 1) == 0)
      {
        if ([v12 isSymlink])
        {
          symlinkTargetCache = [v45[5] symlinkTargetCache];
          v15 = v51[5];
          v51[5] = symlinkTargetCache;

          if (v51[5])
          {
            v16 = v45[5];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100018EE0;
            v32[3] = &unk_10008D398;
            v32[4] = self;
            v34 = &v44;
            v33 = replyCopy;
            v35 = &v50;
            [v16 fetchAttrDataWithCompletionHandler:v32];
          }

          else
          {
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100018FF0;
            v31[3] = &unk_10008D3C0;
            v31[4] = &v44;
            v31[5] = &v50;
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100019124;
            v27[3] = &unk_10008D3E8;
            v29 = &v44;
            v30 = &v50;
            v27[4] = self;
            v28 = replyCopy;
            [(smbMount *)self submitRequestBlockOnce:v31 continuationBlock:v27];
          }

          goto LABEL_23;
        }

        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          name = [v45[5] name];
          v26 = name;
          [name UTF8String];
          sub_1000530F4();
        }

        v19 = 22;
LABEL_22:

        (*(replyCopy + 2))(replyCopy, v19, 0, 0);
LABEL_23:

        goto LABEL_24;
      }
    }

    else if ((v41[3] & 1) == 0)
    {
      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v21 = v11;
        sub_100053140([v11 UTF8String], v57);
      }

      v19 = 2;
      goto LABEL_17;
    }

    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = v11;
      sub_100053180([v11 UTF8String], v57);
    }

    v19 = 70;
LABEL_17:

    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v23 = v11;
      sub_100053140([v11 UTF8String], v56);
    }

    goto LABEL_22;
  }

  v9 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000530A4();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0);
LABEL_24:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
}

- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  namedCopy = named;
  replyCopy = reply;
  v14 = dispatch_time(0, 15000000000);
  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  v16 = dispatch_group_wait(opsSyncGroup, v14);

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053254();
    }

    (*(replyCopy + 2))(replyCopy, 60, 0, 0, 0, &stru_10008EA58, 0, 0);
  }

  else
  {
    namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

    namespaceChangingGroup2 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_enter(namespaceChangingGroup2);

    opsQueue = self->_opsQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100019554;
    v20[3] = &unk_10008D0C8;
    v20[4] = self;
    v21 = fromCopy;
    v22 = namedCopy;
    v23 = replyCopy;
    dispatch_sync(opsQueue, v20);
  }
}

- (void)_LIRemove:(id)remove name:(id)name reply:(id)reply
{
  removeCopy = remove;
  nameCopy = name;
  replyCopy = reply;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_10000B2A0;
  v59 = sub_10000B2B0;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10000B2A0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v53 = sub_10000B2B0;
  v54 = 0;
  v48 = 1;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019C2C;
    block[3] = &unk_10008C948;
    v39 = &v55;
    block[4] = self;
    v14 = removeCopy;
    v38 = v14;
    v40 = &v43;
    dispatch_sync(nodeTableSyncQueue, block);
    v15 = *(v44 + 24);
    if (v56[5])
    {
      if ((v44[3] & 1) == 0)
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100019C88;
        v31[3] = &unk_10008D4D8;
        v34 = v41;
        v31[4] = self;
        v35 = &v55;
        v16 = nameCopy;
        v32 = v16;
        v36 = v47;
        v17 = replyCopy;
        v33 = v17;
        v18 = objc_retainBlock(v31);
        v19 = self->_nodeTableSyncQueue;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001A288;
        v27[3] = &unk_10008C9E8;
        v30 = &v49;
        v27[4] = self;
        v28 = v14;
        v29 = v16;
        dispatch_sync(v19, v27);
        v20 = v50[5];
        if (v20)
        {
          if ([v20 isDir])
          {
            (*(v17 + 2))(v17, 21, 0, 0, 0, &stru_10008EA58, 0);
          }

          else
          {
            v22 = v50[5];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_10001A330;
            v23[3] = &unk_10008D500;
            v25 = &v49;
            v26 = v47;
            v24 = v18;
            [v22 prepareForReclaim:v23];
          }
        }

        else
        {
          (v18[2])(v18, 0);
        }

        goto LABEL_21;
      }
    }

    else if ((v44[3] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000532E8();
      }

      v21 = 2;
      goto LABEL_17;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053360();
    }

    v21 = 70;
LABEL_17:
    (*(replyCopy + 2))(replyCopy, v21, 0, 0, 0, &stru_10008EA58, 0);
LABEL_21:

    goto LABEL_22;
  }

  v12 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100053298();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, &stru_10008EA58, 0);
LABEL_22:
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
}

- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  namedCopy = named;
  replyCopy = reply;
  v14 = dispatch_time(0, 15000000000);
  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  v16 = dispatch_group_wait(opsSyncGroup, v14);

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000534F4();
    }

    (*(replyCopy + 2))(replyCopy, 60, 0, 0, 0, &stru_10008EA58, 0, 0);
  }

  else
  {
    namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

    namespaceChangingGroup2 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_enter(namespaceChangingGroup2);

    opsQueue = [(smbMount *)self opsQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A568;
    v20[3] = &unk_10008D0C8;
    v20[4] = self;
    v21 = fromCopy;
    v22 = namedCopy;
    v23 = replyCopy;
    dispatch_sync(opsQueue, v20);
  }
}

- (void)_LIRemoveDir:(id)dir name:(id)name reply:(id)reply
{
  dirCopy = dir;
  nameCopy = name;
  replyCopy = reply;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10000B2A0;
  v63 = sub_10000B2B0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_10000B2A0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v57 = sub_10000B2B0;
  v58 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AC30;
    block[3] = &unk_10008C948;
    v45 = &v59;
    block[4] = self;
    v14 = dirCopy;
    v44 = v14;
    v46 = &v49;
    dispatch_sync(nodeTableSyncQueue, block);
    v15 = *(v50 + 24);
    if (v60[5])
    {
      if ((v50[3] & 1) == 0)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10001AC8C;
        v37[3] = &unk_10008D5A0;
        v41 = v47;
        v37[4] = self;
        v42 = &v59;
        v16 = nameCopy;
        v38 = v16;
        v17 = replyCopy;
        v40 = v17;
        v18 = v14;
        v39 = v18;
        v19 = objc_retainBlock(v37);
        v20 = self->_nodeTableSyncQueue;
        v29 = _NSConcreteStackBlock;
        v30 = 3221225472;
        v31 = sub_10001B2F0;
        v32 = &unk_10008C9E8;
        v36 = &v53;
        selfCopy = self;
        v34 = v18;
        v35 = v16;
        dispatch_sync(v20, &v29);
        v21 = v54[5];
        if (v21)
        {
          if (([v21 isDir] & 1) == 0)
          {
            v22 = 20;
LABEL_23:
            (*(v17 + 2))(v17, v22, 0, 0, 0, &stru_10008EA58, 0);
LABEL_26:

            goto LABEL_27;
          }

          if ([v54[5] isRoot])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100053588();
            }

            v22 = 13;
            goto LABEL_23;
          }

          v28 = v54[5];
        }

        else
        {
          v28 = 0;
        }

        (v19[2])(v19, v28);
        goto LABEL_26;
      }
    }

    else if ((v50[3] & 1) == 0)
    {
      v26 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v27 = nameCopy;
        sub_1000535CC([nameCopy UTF8String], v65);
      }

      v25 = 2;
      goto LABEL_20;
    }

    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = v14;
      sub_10005360C([v14 UTF8String], v65);
    }

    v25 = 70;
LABEL_20:

    (*(replyCopy + 2))(replyCopy, v25, 0, 0, 0, &stru_10008EA58, 0);
LABEL_27:

    goto LABEL_28;
  }

  v12 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100053538();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, &stru_10008EA58, 0);
LABEL_28:
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

- (void)renameItemIn:(id)in named:(id)named toDirectory:(id)directory newName:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  directoryCopy = directory;
  nameCopy = name;
  replyCopy = reply;
  if (flags)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053764();
    }

    v27 = 0;
    v25 = 0;
    (*(replyCopy + 2))(replyCopy, 45, 0, 0, 0, 0, 0, 0, v25, 0, 0, v27, 0);
  }

  else
  {
    v19 = dispatch_time(0, 15000000000);
    opsSyncGroup = [(smbMount *)self opsSyncGroup];
    v21 = dispatch_group_wait(opsSyncGroup, v19);

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000537F4();
      }

      v28 = 0;
      v26 = 0;
      (*(replyCopy + 2))(replyCopy, 60, 0, 0, 0, 0, 0, 0, v26, 0, 0, v28, 0);
    }

    else
    {
      namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

      namespaceChangingGroup2 = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_enter(namespaceChangingGroup2);

      opsQueue = [(smbMount *)self opsQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B5F8;
      block[3] = &unk_10008D5F0;
      block[4] = self;
      v30 = inCopy;
      v31 = namedCopy;
      v32 = directoryCopy;
      v33 = nameCopy;
      v35 = 0;
      v34 = replyCopy;
      dispatch_sync(opsQueue, block);
    }
  }
}

- (void)_LIRename:(id)rename name:(id)name toDir:(id)dir andName:(id)andName withFlags:(unsigned int)flags reply:(id)reply
{
  renameCopy = rename;
  nameCopy = name;
  dirCopy = dir;
  andNameCopy = andName;
  replyCopy = reply;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x3032000000;
  v146[3] = sub_10000B2A0;
  v146[4] = sub_10000B2B0;
  v147 = 0;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x3032000000;
  v144[3] = sub_10000B2A0;
  v144[4] = sub_10000B2B0;
  v145 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = sub_10000B2A0;
  v142 = sub_10000B2B0;
  v143 = 0;
  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = sub_10000B2A0;
  v136 = sub_10000B2B0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_10000B2A0;
  v130 = sub_10000B2B0;
  v131 = 0;
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = sub_10000B2A0;
  v124 = sub_10000B2B0;
  v177 = 0;
  v178 = &v177;
  v179 = 0x11010000000;
  v180 = "";
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v158 = 0;
  v159 = &v158;
  v160 = 0x11010000000;
  v161 = "";
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x2020000000;
  v115 = 0;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  v113[3] = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x3032000000;
  v111[3] = sub_10000B2A0;
  v111[4] = sub_10000B2B0;
  v112 = 0;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x2020000000;
  v110 = 0;
  v125 = 0;
  v137 = 0;

  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C434;
    block[3] = &unk_10008C948;
    v107 = &v138;
    block[4] = self;
    v20 = renameCopy;
    v106 = v20;
    v108 = &v116;
    dispatch_sync(nodeTableSyncQueue, block);
    v21 = *(v117 + 24);
    if (v139[5])
    {
      if ((v117[3] & 1) == 0)
      {
        v22 = [v20 isEqualToString:dirCopy];
        v23 = v22;
        if (v22)
        {
          objc_storeStrong(v127 + 5, v139[5]);
          goto LABEL_20;
        }

        v25 = self->_nodeTableSyncQueue;
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = sub_10001C490;
        v101[3] = &unk_10008C948;
        v103 = &v126;
        v101[4] = self;
        v102 = dirCopy;
        v104 = &v116;
        dispatch_sync(v25, v101);
        v26 = *(v117 + 24);
        if (v127[5])
        {
          if ((v117[3] & 1) == 0)
          {

LABEL_20:
            v27 = self->_nodeTableSyncQueue;
            v100[0] = _NSConcreteStackBlock;
            v100[1] = 3221225472;
            v100[2] = sub_10001C4EC;
            v100[3] = &unk_10008D618;
            v100[6] = &v132;
            v100[4] = self;
            v100[7] = &v138;
            v28 = nameCopy;
            v100[5] = v28;
            dispatch_sync(v27, v100);
            v29 = v133[5];
            if (v29)
            {
              v30 = v178;
              getSmbFattr = [v29 getSmbFattr];
              v32 = *getSmbFattr;
              v33 = getSmbFattr[2];
              *(v30 + 3) = getSmbFattr[1];
              *(v30 + 4) = v33;
              *(v30 + 2) = v32;
              v34 = getSmbFattr[3];
              v35 = getSmbFattr[4];
              v36 = getSmbFattr[6];
              *(v30 + 7) = getSmbFattr[5];
              *(v30 + 8) = v36;
              *(v30 + 5) = v34;
              *(v30 + 6) = v35;
              v37 = getSmbFattr[7];
              v38 = getSmbFattr[8];
              v39 = getSmbFattr[10];
              *(v30 + 11) = getSmbFattr[9];
              *(v30 + 12) = v39;
              *(v30 + 9) = v37;
              *(v30 + 10) = v38;
              v40 = getSmbFattr[11];
              v41 = getSmbFattr[12];
              v42 = getSmbFattr[14];
              *(v30 + 15) = getSmbFattr[13];
              *(v30 + 16) = v42;
              *(v30 + 13) = v40;
              *(v30 + 14) = v41;
              v70 = *(v178 + 38);
              v43 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [v133[5] name];
                objc_claimAutoreleasedReturnValue();
                sub_100053910();
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10005395C();
              }

              v70 = 0;
            }

            v44 = self->_nodeTableSyncQueue;
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = sub_10001C5AC;
            v96[3] = &unk_10008D618;
            v98 = &v120;
            v96[4] = self;
            v99 = &v126;
            v45 = andNameCopy;
            v97 = v45;
            dispatch_sync(v44, v96);
            v46 = v133[5];
            v47 = v121;
            if (v46)
            {
              v48 = v121[5];
              if (v46 == v48)
              {
                v121[5] = 0;

                v47 = v121;
              }
            }

            v49 = v47[5];
            if (v49)
            {
              v50 = v159;
              getSmbFattr2 = [v49 getSmbFattr];
              v52 = *getSmbFattr2;
              v53 = getSmbFattr2[2];
              *(v50 + 3) = getSmbFattr2[1];
              *(v50 + 4) = v53;
              *(v50 + 2) = v52;
              v54 = getSmbFattr2[3];
              v55 = getSmbFattr2[4];
              v56 = getSmbFattr2[6];
              *(v50 + 7) = getSmbFattr2[5];
              *(v50 + 8) = v56;
              *(v50 + 5) = v54;
              *(v50 + 6) = v55;
              v57 = getSmbFattr2[7];
              v58 = getSmbFattr2[8];
              v59 = getSmbFattr2[10];
              *(v50 + 11) = getSmbFattr2[9];
              *(v50 + 12) = v59;
              *(v50 + 9) = v57;
              *(v50 + 10) = v58;
              v60 = getSmbFattr2[11];
              v61 = getSmbFattr2[12];
              v62 = getSmbFattr2[14];
              *(v50 + 15) = getSmbFattr2[13];
              *(v50 + 16) = v62;
              *(v50 + 13) = v60;
              *(v50 + 14) = v61;
            }

            if (!v133[5])
            {
              goto LABEL_35;
            }

            if (!v121[5])
            {
              goto LABEL_35;
            }

            v63 = *(v178 + 38);
            v64 = *(v159 + 38);
            if (v63 == v64)
            {
              goto LABEL_35;
            }

            if (v63 != 2 || v64 == 2)
            {
              if (v63 == 2 || v64 != 2)
              {
LABEL_35:
                v89[0] = _NSConcreteStackBlock;
                v89[1] = 3221225472;
                v89[2] = sub_10001C66C;
                v89[3] = &unk_10008D640;
                v92 = &v138;
                v95 = v23;
                v90 = v28;
                v93 = &v126;
                v91 = v45;
                v94 = v70;
                v72[0] = _NSConcreteStackBlock;
                v72[1] = 3221225472;
                v72[2] = sub_10001C778;
                v72[3] = &unk_10008D730;
                v76 = &v132;
                v77 = &v138;
                v72[4] = self;
                v78 = &v120;
                v79 = v111;
                v80 = v113;
                v81 = v109;
                v82 = &v158;
                v83 = &v126;
                v88 = v23;
                v73 = v91;
                v84 = v114;
                v85 = &v177;
                v74 = v90;
                v75 = replyCopy;
                v86 = v146;
                v87 = v144;
                [(smbMount *)self submitRequestBlockOnce:v89 continuationBlock:v72];

LABEL_36:
                v65 = v100;
LABEL_48:

                goto LABEL_49;
              }

              v67 = 21;
            }

            else
            {
              v67 = 20;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v68 = *(v178 + 38);
              v69 = *(v159 + 38);
              *buf = 138413314;
              v149 = v28;
              v150 = 1024;
              v151 = v68;
              v152 = 2112;
              v153 = v45;
              v154 = 1024;
              v155 = v69;
              v156 = 1024;
              v157 = v67;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "LIRename: type mismatch, fromName: %@, fa_vtype: 0x%x, toName: %@, fa_vtype: 0x%x, error: %d\n", buf, 0x28u);
            }

            (*(replyCopy + 2))(replyCopy, v67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            goto LABEL_36;
          }
        }

        else if ((v117[3] & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100053888();
          }

          v66 = 2;
          goto LABEL_47;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000538CC();
        }

        v66 = 70;
LABEL_47:
        (*(replyCopy + 2))(replyCopy, v66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        v65 = v101;
        goto LABEL_48;
      }
    }

    else if ((v117[3] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000539D4();
      }

      v24 = 2;
      goto LABEL_16;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053A18();
    }

    v24 = 70;
LABEL_16:
    (*(replyCopy + 2))(replyCopy, v24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_49:

    goto LABEL_50;
  }

  v18 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100053838();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
LABEL_50:
  _Block_object_dispose(v109, 8);
  _Block_object_dispose(v111, 8);

  _Block_object_dispose(v113, 8);
  _Block_object_dispose(v114, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v177, 8);
  _Block_object_dispose(&v120, 8);

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v132, 8);

  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(v144, 8);

  _Block_object_dispose(v146, 8);
}

- (void)setAttrInternalLocked:(id)locked setAttrs:(id)attrs CompletionHandler:(id)handler
{
  lockedCopy = locked;
  attrsCopy = attrs;
  handlerCopy = handler;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v65 = 0;
  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0xD810000000;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47[2] = "";
  v59 = 0;
  v11 = attrsCopy;
  bytes = [attrsCopy bytes];
  v13 = *bytes;
  v14 = bytes[1];
  v15 = bytes[3];
  v50 = bytes[2];
  v51 = v15;
  v48 = v13;
  v49 = v14;
  v16 = bytes[4];
  v17 = bytes[5];
  v18 = bytes[7];
  v54 = bytes[6];
  v55 = v18;
  v52 = v16;
  v53 = v17;
  v19 = bytes[8];
  v20 = bytes[9];
  v21 = bytes[10];
  v59 = *(bytes + 22);
  v57 = v20;
  v58 = v21;
  v56 = v19;
  if (!*(v47[0] + 40))
  {
    v27 = 0;
LABEL_7:
    handlerCopy[2](handlerCopy, v27);
    goto LABEL_13;
  }

  getSmbFattr = [lockedCopy getSmbFattr];
  v61[3] = getSmbFattr;
  v23 = *(v47[0] + 40);
  *(v47[0] + 40) = v23 & 0xFFFFFFFFFFFFFFFDLL;
  if ((v23 & 0x184) != 0)
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [lockedCopy name];
      v26 = name;
      sub_100053D5C([name UTF8String], v47, v66, name);
    }

    v27 = 22;
    goto LABEL_7;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10001DC9C;
  v39[3] = &unk_10008D7A8;
  v39[4] = self;
  v42 = &v46;
  v43 = v64;
  v28 = lockedCopy;
  v40 = v28;
  v44 = &v60;
  v45 = 0;
  v29 = handlerCopy;
  v41 = v29;
  v30 = objc_retainBlock(v39);
  if ((*(v47[0] + 40) & 0x40) != 0 && [v28 isReg])
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001E064;
    v35[3] = &unk_10008CB50;
    v36 = v28;
    v37 = &v46;
    v38 = &v60;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001E148;
    v31[3] = &unk_10008D7D0;
    v32 = v36;
    v33 = v29;
    v34 = v30;
    [(smbMount *)self submitRequestBlock:v35 continuationBlock:v31];
  }

  else
  {
    (v30[2])(v30, 0);
  }

LABEL_13:
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v64, 8);
}

- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  toCopy = to;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001E318;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = ofCopy;
  v20 = toCopy;
  v21 = replyCopy;
  v15 = replyCopy;
  v16 = toCopy;
  v17 = ofCopy;
  dispatch_async(opsQueue, v18);
}

- (void)_LISetAttr:(id)attr setAttrs:(id)attrs reply:(id)reply
{
  attrCopy = attr;
  attrsCopy = attrs;
  replyCopy = reply;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_10000B2A0;
  v39[4] = sub_10000B2B0;
  v40 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000B2A0;
  v36 = sub_10000B2B0;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100053EFC();
    }

LABEL_8:

    (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0, 0, 2);
    goto LABEL_9;
  }

  if ([attrsCopy length] <= 0xB7)
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053F4C(location, [attrsCopy length]);
    }

    checkServerConnection = 22;
    goto LABEL_8;
  }

  nodeTableSyncQueue = self->_nodeTableSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E8D8;
  block[3] = &unk_10008C948;
  v26 = &v32;
  block[4] = self;
  v25 = attrCopy;
  v27 = &v28;
  dispatch_sync(nodeTableSyncQueue, block);
  v15 = v33[5];
  if (!v15 || (v29[3] & 1) != 0)
  {
    if ((v15 != 0) | v29[3] & 1)
    {
      v17 = 70;
    }

    else
    {
      v17 = 2;
    }

    (*(replyCopy + 2))(replyCopy, v17, 0, 0, 0, 0, 0, 2);
  }

  else
  {
    objc_initWeak(location, self);
    v16 = v33[5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001E934;
    v18[3] = &unk_10008D848;
    objc_copyWeak(&v23, location);
    v20 = v38;
    v21 = &v32;
    v19 = replyCopy;
    v22 = v39;
    [(smbMount *)self setAttrInternalLocked:v16 setAttrs:attrsCopy CompletionHandler:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

LABEL_9:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply
{
  statisticsCopy = statistics;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EDB0;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = statisticsCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = statisticsCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIStatFS:(id)s reply:(id)reply
{
  sCopy = s;
  replyCopy = reply;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000B2A0;
  v29 = sub_10000B2B0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100054024();
    }

    replyCopy[2](replyCopy, checkServerConnection, 0);
  }

  else
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F20C;
    block[3] = &unk_10008C948;
    v19 = &v25;
    block[4] = self;
    v18 = sCopy;
    v20 = &v21;
    dispatch_sync(nodeTableSyncQueue, block);
    v11 = v26[5];
    if (!v11 || (v22[3] & 1) != 0)
    {
      if ((v11 != 0) | v22[3] & 1)
      {
        v12 = 70;
      }

      else
      {
        v12 = 2;
      }

      replyCopy[2](replyCopy, v12, 0);
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001F268;
      v16[3] = &unk_10008CAD8;
      v16[4] = self;
      v16[5] = v31;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001F360;
      v13[3] = &unk_10008D870;
      v14 = replyCopy;
      v15 = v31;
      [(smbMount *)self submitRequestBlock:v16 continuationBlock:v13];
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(v31, 8);
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  toCopy = to;
  bufferCopy = buffer;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F578;
  block[3] = &unk_10008C920;
  block[4] = self;
  v21 = toCopy;
  v23 = replyCopy;
  offsetCopy = offset;
  v22 = bufferCopy;
  v17 = replyCopy;
  v18 = bufferCopy;
  v19 = toCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer reply:(id)reply
{
  writeCopy = write;
  bufferCopy = buffer;
  replyCopy = reply;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10000B2A0;
  v48 = sub_10000B2B0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000B2A0;
  v42 = sub_10000B2B0;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001FB40;
    block[3] = &unk_10008C948;
    v32 = &v44;
    block[4] = self;
    v16 = writeCopy;
    v31 = v16;
    v33 = &v34;
    dispatch_sync(nodeTableSyncQueue, block);
    v17 = v45[5];
    v18 = *(v35 + 24);
    if (v17)
    {
      if ((v35[3] & 1) == 0)
      {
        fileRefSyncQueue = [v17 fileRefSyncQueue];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10001FB9C;
        v29[3] = &unk_10008CD08;
        v29[4] = &v38;
        v29[5] = &v44;
        dispatch_sync(fileRefSyncQueue, v29);

        v20 = v39[5];
        if (v20)
        {
          fidCtx = [v20 fidCtx];
          v22 = fidCtx == 0;

          if (!v22)
          {
            v23 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
            -[smbMount writeRequest:withBuffer:smbNode:fileRef:wrparamPtr:result:thisOffset:bytesWritten:bytesRemain:pass:reply:](self, "writeRequest:withBuffer:smbNode:fileRef:wrparamPtr:result:thisOffset:bytesWritten:bytesRemain:pass:reply:", v16, bufferCopy, v45[5], v39[5], v23, 0, offset, 0, [bufferCopy length], 0, replyCopy);
LABEL_24:

            goto LABEL_25;
          }

          v26 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            name = [v45[5] name];
            v28 = name;
            [name UTF8String];
            sub_10005413C();
          }
        }

        else
        {
          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [v45[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_100054188();
          }
        }

        v24 = 9;
LABEL_23:
        replyCopy[2](replyCopy, v24, 0);
        goto LABEL_24;
      }
    }

    else if ((v35[3] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000541D4();
      }

      v24 = 2;
      goto LABEL_23;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005424C();
    }

    v24 = 70;
    goto LABEL_23;
  }

  v14 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000540EC();
  }

  replyCopy[2](replyCopy, checkServerConnection, 0);
LABEL_25:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

- (void)writeRequest:(id)request withBuffer:(id)buffer smbNode:(id)node fileRef:(id)ref wrparamPtr:(smb_read_write *)ptr result:(int)result thisOffset:(unint64_t)offset bytesWritten:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3
{
  requestCopy = request;
  bufferCopy = buffer;
  nodeCopy = node;
  refCopy = ref;
  replyCopy = reply;
  readwriteSyncQueue = [(smbMount *)self readwriteSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD7C;
  block[3] = &unk_10008D8E8;
  resultCopy = result;
  remainCopy = remain;
  ptrCopy = ptr;
  v31 = refCopy;
  v32 = nodeCopy;
  selfCopy = self;
  v34 = bufferCopy;
  writtenCopy = written;
  offsetCopy = offset;
  passCopy = pass;
  v35 = requestCopy;
  v36 = replyCopy;
  v24 = requestCopy;
  v25 = bufferCopy;
  v26 = replyCopy;
  v27 = nodeCopy;
  v28 = refCopy;
  dispatch_async(readwriteSyncQueue, block);
}

- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100020340;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = ofCopy;
  v20 = namedCopy;
  v21 = replyCopy;
  v15 = replyCopy;
  v16 = namedCopy;
  v17 = ofCopy;
  dispatch_async(opsQueue, v18);
}

- (void)_LIGetXattr:(id)xattr name:(id)name reply:(id)reply
{
  xattrCopy = xattr;
  nameCopy = name;
  replyCopy = reply;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10000B2A0;
  v63 = sub_10000B2B0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_10000B2A0;
  v57 = sub_10000B2B0;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000209A8;
    block[3] = &unk_10008C948;
    v43 = &v59;
    block[4] = self;
    v14 = xattrCopy;
    v42 = v14;
    v44 = &v45;
    dispatch_sync(nodeTableSyncQueue, block);
    v15 = v60[5];
    v16 = *(v46 + 24);
    if (v15)
    {
      if ((v46[3] & 1) == 0)
      {
        if ((self->_shareInfo.fileSystemAttrs & 0x40000) != 0)
        {
          xattrCache = [v15 xattrCache];
          v65[0] = 0;
          v23 = [xattrCache dataForName:nameCopy wasNegative:v65];
          if (v23)
          {
            replyCopy[2](replyCopy, 0, v23);
          }

          else if (v65[0] == 1)
          {
            replyCopy[2](replyCopy, 93, 0);
          }

          else
          {
            v50[3] = 1024;
            v24 = [NSMutableData alloc];
            v25 = [v24 initWithLength:v50[3]];
            v26 = v54[5];
            v54[5] = v25;

            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100020A04;
            v35[3] = &unk_10008D938;
            v38 = &v59;
            v36 = nameCopy;
            selfCopy = self;
            v39 = &v53;
            v40 = &v49;
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100020B0C;
            v27[3] = &unk_10008D988;
            v32 = &v53;
            v28 = xattrCache;
            v29 = v36;
            v33 = &v59;
            v34 = &v49;
            selfCopy2 = self;
            v31 = replyCopy;
            [(smbMount *)self submitRequestBlock:v35 continuationBlock:v27];
          }

          goto LABEL_18;
        }

        v17 = 93;
LABEL_17:
        replyCopy[2](replyCopy, v17, 0);
LABEL_18:

        goto LABEL_19;
      }
    }

    else if ((v46[3] & 1) == 0)
    {
      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v21 = v14;
        sub_1000543C8([v14 UTF8String], v65);
      }

      v17 = 9;
      goto LABEL_16;
    }

    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v19 = v14;
      sub_100054408([v14 UTF8String], v65);
    }

    v17 = 70;
LABEL_16:

    goto LABEL_17;
  }

  v12 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100054378();
  }

  replyCopy[2](replyCopy, checkServerConnection, 0);
LABEL_19:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  namedCopy = named;
  valueCopy = value;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000210CC;
  v24[3] = &unk_10008D9D8;
  v24[4] = self;
  v25 = ofCopy;
  v26 = namedCopy;
  v27 = valueCopy;
  howCopy = how;
  v28 = replyCopy;
  v20 = replyCopy;
  v21 = valueCopy;
  v22 = namedCopy;
  v23 = ofCopy;
  dispatch_async(opsQueue, v24);
}

- (void)_LISetXattr:(id)xattr name:(id)name value:(id)value how:(int)how reply:(id)reply
{
  xattrCopy = xattr;
  nameCopy = name;
  valueCopy = value;
  replyCopy = reply;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_10000B2A0;
  v69 = sub_10000B2B0;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_10000B2A0;
  v54[4] = sub_10000B2B0;
  v55 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    v62[3] = 0;
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002187C;
    block[3] = &unk_10008C948;
    v52 = &v65;
    block[4] = self;
    v51 = xattrCopy;
    v53 = &v56;
    dispatch_sync(nodeTableSyncQueue, block);
    v19 = v66[5];
    v20 = *(v57 + 24);
    if (v19)
    {
      if ((v57[3] & 1) == 0)
      {
        xattrCache = [v19 xattrCache];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000218D8;
        v44[3] = &unk_10008DA00;
        v46 = &v61;
        v47 = &v65;
        v48 = v54;
        v49 = v60;
        v45 = replyCopy;
        v22 = objc_retainBlock(v44);
        if (how >= 3)
        {
          if (how != 3)
          {
LABEL_20:

            goto LABEL_21;
          }

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100021C10;
          v30[3] = &unk_10008D528;
          v31[1] = &v65;
          v31[0] = nameCopy;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100021CD8;
          v25[3] = &unk_10008D960;
          v29 = &v65;
          v26 = v31[0];
          v27 = xattrCache;
          v28 = v22;
          [(smbMount *)self submitRequestBlockOnce:v30 continuationBlock:v25];

          v23 = v31;
        }

        else
        {
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_100021AA8;
          v39[3] = &unk_10008DA28;
          v42 = &v65;
          howCopy = how;
          v40[0] = nameCopy;
          v40[1] = self;
          v41 = valueCopy;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100021BA4;
          v32[3] = &unk_10008DA50;
          v37 = &v65;
          v33 = v40[0];
          howCopy2 = how;
          v34 = xattrCache;
          v35 = v41;
          v36 = v22;
          [(smbMount *)self submitRequestBlockOnce:v39 continuationBlock:v32];

          v23 = v40;
        }

        goto LABEL_20;
      }
    }

    else if ((v57[3] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100054684();
      }

      v24 = 9;
      goto LABEL_16;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000546FC();
    }

    v24 = 70;
LABEL_16:
    (*(replyCopy + 2))(replyCopy, v24, 0, 0, 0, 0, 2);
LABEL_21:

    goto LABEL_22;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100054634();
  }

  (*(replyCopy + 2))(replyCopy, checkServerConnection, 0, 0, 0, 0, 2);
LABEL_22:
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
}

- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E50;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = ofCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = ofCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LIListXattrs:(id)xattrs reply:(id)reply
{
  xattrsCopy = xattrs;
  replyCopy = reply;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10000B2A0;
  v39 = sub_10000B2B0;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10000B2A0;
  v33[4] = sub_10000B2B0;
  v34 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000223A4;
    block[3] = &unk_10008C948;
    v27 = &v35;
    block[4] = self;
    v11 = xattrsCopy;
    v26 = v11;
    v28 = &v29;
    dispatch_sync(nodeTableSyncQueue, block);
    v12 = v36[5];
    v13 = *(v30 + 24);
    if (v12)
    {
      if ((v30[3] & 1) == 0)
      {
        xattrCache = [v12 xattrCache];
        if ([xattrCache noXattrsPresent])
        {
          replyCopy[2](replyCopy, 0, &__NSArray0__struct);
        }

        else
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100022400;
          v24[3] = &unk_10008D3C0;
          v24[4] = &v35;
          v24[5] = v33;
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100022534;
          v20[3] = &unk_10008DAC8;
          v22 = replyCopy;
          v21 = xattrCache;
          v23 = v33;
          [(smbMount *)self submitRequestBlock:v24 continuationBlock:v20];
        }

        goto LABEL_19;
      }
    }

    else if ((v30[3] & 1) == 0)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v19 = v11;
        sub_100054920([v11 UTF8String], v41);
      }

      v17 = 9;
      goto LABEL_16;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v16 = v11;
      sub_100054960([v11 UTF8String], v41);
    }

    v17 = 70;
LABEL_16:

    replyCopy[2](replyCopy, v17, 0);
LABEL_19:

    goto LABEL_20;
  }

  v9 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000548D0();
  }

  replyCopy[2](replyCopy, checkServerConnection, 0);
LABEL_20:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(&v35, 8);
}

- (void)search:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  searchCopy = search;
  tokenCopy = token;
  criteriaCopy = criteria;
  proxyCopy = proxy;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  searchObjects = [(smbMount *)self searchObjects];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002285C;
  v35[3] = &unk_10008DAE8;
  v35[4] = client;
  [searchObjects enumerateKeysAndObjectsUsingBlock:v35];

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000228B8;
  v28[3] = &unk_10008D140;
  v28[4] = self;
  v29 = searchCopy;
  v30 = tokenCopy;
  v31 = criteriaCopy;
  v33 = replyCopy;
  clientCopy = client;
  v32 = proxyCopy;
  v23 = replyCopy;
  v24 = proxyCopy;
  v25 = criteriaCopy;
  v26 = tokenCopy;
  v27 = searchCopy;
  dispatch_async(opsQueue, v28);
}

- (void)_LISearch:(id)search token:(id)token criteria:(id)criteria returnProxy:(id)proxy withCallerID:(unint64_t)d reply:(id)reply
{
  searchCopy = search;
  tokenCopy = token;
  criteriaCopy = criteria;
  proxyCopy = proxy;
  replyCopy = reply;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_10000B2A0;
  v89 = sub_10000B2B0;
  v90 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v79 = 0;
  v84 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (!checkServerConnection)
  {
    searchLock = [(smbMount *)self searchLock];
    [searchLock lock];

    searchObjects = [(smbMount *)self searchObjects];
    v21 = [searchObjects objectForKey:tokenCopy];

    searchLock2 = [(smbMount *)self searchLock];
    [searchLock2 unlock];

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100054AAC();
      }

      replyCopy[2](replyCopy, 17);
      goto LABEL_9;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023730;
    block[3] = &unk_10008C948;
    v77 = &v85;
    block[4] = self;
    v28 = searchCopy;
    v76 = v28;
    v78 = &v80;
    dispatch_sync(nodeTableSyncQueue, block);
    v29 = v86[5];
    v30 = *(v81 + 24);
    if (v29)
    {
      if ((v81[3] & 1) == 0)
      {
        if ([v29 isRoot])
        {
          v31 = [NSString alloc];
          shareName = [(smbMount *)self shareName];
          v26 = [v31 initWithFormat:@"%@", shareName];
          v65 = 0;
LABEL_24:

          v39 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            [v86[5] name];
            objc_claimAutoreleasedReturnValue();
            sub_100054B70();
          }

          v21 = objc_alloc_init(smbSearchContext);
          if (!v21)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000552D0();
            }

            replyCopy[2](replyCopy, 12);
            v71 = 0;
            v72 = 0;
            v41 = 0;
            v21 = 0;
            goto LABEL_56;
          }

          v72 = objc_alloc_init(wspContext);
          if (!v72)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10005528C();
            }

            replyCopy[2](replyCopy, 12);
            v71 = 0;
            v72 = 0;
            goto LABEL_55;
          }

          if (gethostname(v95, 0x100uLL))
          {
            v40 = *__error();
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054BBC();
            }

LABEL_49:
            replyCopy[2](replyCopy, v40);
            v71 = 0;
LABEL_55:
            v41 = 0;
LABEL_56:
            v25 = v65;
            goto LABEL_57;
          }

          v71 = [NSString stringWithUTF8String:v95];
          if (!v71)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100055248();
            }

            v40 = 12;
            goto LABEL_49;
          }

          serverName = [(smbMount *)self serverName];
          [v72 setServerName:serverName];

          userName = [(smbMount *)self userName];
          [v72 setUserName:userName];

          [v72 setClientMachineName:v71];
          [v72 setSearchPath:v26];
          v45 = [(smbMount *)self pd];
          [(smbSearchContext *)v21 setPd:v45];

          [(smbSearchContext *)v21 setSearchToken:tokenCopy];
          [(smbSearchContext *)v21 setCallerID:d];
          [(smbSearchContext *)v21 setHandler:proxyCopy];
          [(smbSearchContext *)v21 setWctx:v72];
          if ([(smbSearchContext *)v21 parseSearchCriteria:criteriaCopy])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054C34();
            }

            doTreeConnect = 12;
LABEL_54:
            replyCopy[2](replyCopy, doTreeConnect);
            goto LABEL_55;
          }

          doTreeConnect = [(smbSearchContext *)v21 doTreeConnect];
          if (doTreeConnect)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054C78();
            }

            [(smbSearchContext *)v21 logoutDisconnect];
            goto LABEL_54;
          }

          v25 = sub_1000326C8(&self->serverSockAddr, self->serverSockAddrLen);

          if (v25)
          {
            [v72 setServerAddress:v25];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100054CF0();
          }

          [(smbSearchContext *)v21 logConfig];
          v47 = [(smbSearchContext *)v21 procCheckIndexingEnabled:0 IndexEnable:&v79];
          if (v47)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054D34();
            }

LABEL_76:
            replyCopy[2](replyCopy, v47);
            v41 = 0;
            goto LABEL_57;
          }

          if ((v79 & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100055204();
            }

            v47 = 45;
            goto LABEL_76;
          }

          v41 = objc_alloc_init(QueryStatusExResults);
          if (!v41)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000551C0();
            }

            v47 = 12;
            goto LABEL_76;
          }

          v66 = [(smbSearchContext *)v21 procPrimaryQuery:0 QueryExResults:v41];
          if (v66)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054DAC();
            }
          }

          else
          {
            v66 = [(smbSearchContext *)v21 procSecondaryQuery:1 QueryExResults:v41];
            if (!v66)
            {
              v48 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_100054E9C(v93, [v41 cRowsTotal], objc_msgSend(v41, "cResultsFound"));
              }

              searchLock3 = [(smbMount *)self searchLock];
              [searchLock3 lock];

              searchObjects2 = [(smbMount *)self searchObjects];
              searchToken = [(smbSearchContext *)v21 searchToken];
              [searchObjects2 setObject:v21 forKey:searchToken];

              searchLock4 = [(smbMount *)self searchLock];
              [searchLock4 unlock];

              replyCopy[2](replyCopy, 0);
              if ([(smbSearchContext *)v21 checkSearchAborted])
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_100055038();
                }
              }

              else
              {
                v84 = 0;
                while (![(smbSearchContext *)v21 checkSearchAborted])
                {
                  [(smbSearchContext *)v21 setSearchRows:0];
                  v70 = [(smbSearchContext *)v21 doGetRows:1 EndOfRowSet:&v84];
                  if (v70)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      sub_100054EF4();
                    }

LABEL_112:
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100054FB0();
                    }

                    goto LABEL_100;
                  }

                  searchRows = [(smbSearchContext *)v21 searchRows];
                  v61 = searchRows == 0;

                  if (v61)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100054F6C(&v73, v74);
                    }
                  }

                  else
                  {
                    v50 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                    {
                      searchRows2 = [(smbSearchContext *)v21 searchRows];
                      rows = [searchRows2 rows];
                      v51 = [rows count];
                      *buf = 134217984;
                      v92 = v51;
                      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "LISearch: received %lu rows", buf, 0xCu);
                    }

                    [(smbMount *)self deliverSearchResults:v21];
                  }

                  if (v84)
                  {
                    goto LABEL_112;
                  }
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_100054FF4();
                }
              }

              v70 = 0;
LABEL_100:
              searchLock5 = [(smbMount *)self searchLock];
              [searchLock5 lock];

              searchObjects3 = [(smbMount *)self searchObjects];
              searchToken2 = [(smbSearchContext *)v21 searchToken];
              [searchObjects3 removeObjectForKey:searchToken2];

              searchLock6 = [(smbMount *)self searchLock];
              [searchLock6 unlock];

              searchLock7 = [(smbSearchContext *)v21 searchLock];
              [searchLock7 lock];

              LOBYTE(searchLock7) = [(smbSearchContext *)v21 isAborted];
              v54 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
              if (searchLock7)
              {
                if (v54)
                {
                  sub_100055138();
                }

                handler = [(smbSearchContext *)v21 handler];
                [handler tokenDone:89];

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_10005517C();
                }
              }

              else
              {
                if (v54)
                {
                  sub_10005507C();
                }

                handler2 = [(smbSearchContext *)v21 handler];
                [handler2 tokenDone:v70];

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000550F4();
                }
              }

              [(smbSearchContext *)v21 setIsFinished:1];
              searchLock8 = [(smbSearchContext *)v21 searchLock];
              [searchLock8 unlock];

              [(smbSearchContext *)v21 doFreeCursor:0];
              [(smbSearchContext *)v21 doFreeCursor:1];
              [(smbSearchContext *)v21 doDisconnect:0];
              [(smbSearchContext *)v21 doDisconnect:1];
              [(smbSearchContext *)v21 logoutDisconnect];
              goto LABEL_57;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054E24();
            }
          }

          replyCopy[2](replyCopy, v66);
LABEL_57:

          goto LABEL_10;
        }

        v65 = [smb_subr makeWindowsPath:v86[5] withName:0];
        if (v65)
        {
          v38 = [NSString alloc];
          shareName = [(smbMount *)self shareName];
          v26 = [v38 initWithFormat:@"%@/%@", shareName, v65];
          goto LABEL_24;
        }

        v42 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [v86[5] name];
          objc_claimAutoreleasedReturnValue();
          sub_100054B24();
        }

        v35 = 22;
LABEL_40:

        replyCopy[2](replyCopy, v35);
        v71 = 0;
        v72 = 0;
        v41 = 0;
        v21 = 0;
        v25 = 0;
        v26 = 0;
        goto LABEL_57;
      }
    }

    else if ((v81[3] & 1) == 0)
    {
      v36 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v37 = v28;
        sub_100055314([v28 UTF8String], v94);
      }

      v35 = 9;
      goto LABEL_40;
    }

    v33 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v34 = v28;
      sub_100055354([v28 UTF8String], v94);
    }

    v35 = 70;
    goto LABEL_40;
  }

  v20 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100054A5C();
  }

  replyCopy[2](replyCopy, checkServerConnection);
  v21 = 0;
LABEL_9:
  v25 = 0;
  v26 = 0;
LABEL_10:
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v85, 8);
}

- (void)replenishSearchCreditsFor:(id)for credits:(unsigned int)credits requestID:(unint64_t)d reply:(id)reply
{
  forCopy = for;
  replyCopy = reply;
  opsQueue = self->_opsQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023860;
  v14[3] = &unk_10008CC68;
  v14[4] = self;
  v15 = forCopy;
  creditsCopy = credits;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = forCopy;
  dispatch_async(opsQueue, v14);
}

- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply
{
  searchCopy = search;
  replyCopy = reply;
  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023AD8;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v13 = searchCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = searchCopy;
  dispatch_async(opsQueue, block);
}

- (void)_LISearchAbort:(id)abort reply:(id)reply
{
  replyCopy = reply;
  abortCopy = abort;
  searchLock = [(smbMount *)self searchLock];
  [searchLock lock];

  searchObjects = [(smbMount *)self searchObjects];
  v12 = [searchObjects objectForKey:abortCopy];

  if (v12)
  {
    [v12 setSearchAborted];
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  searchLock2 = [(smbMount *)self searchLock];
  [searchLock2 unlock];

  replyCopy[2](replyCopy, v10);
}

- (void)abortAllClientSearchesFor:(unint64_t)for
{
  opsQueue = self->_opsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023CD4;
  v4[3] = &unk_10008C8A8;
  v4[4] = self;
  v4[5] = for;
  dispatch_sync(opsQueue, v4);
}

- (void)_LISearchAbortAllClientSearches:(unint64_t)searches
{
  searchLock = [(smbMount *)self searchLock];
  [searchLock lock];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    searchesCopy = searches;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "LISearchAbortAllClientSearches- stopping all live searches for client %llu", buf, 0xCu);
  }

  searchObjects = [(smbMount *)self searchObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023E1C;
  v8[3] = &unk_10008DB08;
  v8[4] = searches;
  [searchObjects enumerateKeysAndObjectsUsingBlock:v8];

  searchLock2 = [(smbMount *)self searchLock];
  [searchLock2 unlock];
}

- (void)checkAccessTo:(id)to requestedAccess:(unsigned int)access requestID:(unint64_t)d reply:(id)reply
{
  toCopy = to;
  replyCopy = reply;
  namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(opsSyncGroup);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100023F8C;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = toCopy;
  accessCopy = access;
  v18 = replyCopy;
  v14 = replyCopy;
  v15 = toCopy;
  dispatch_async(opsQueue, v16);
}

- (void)_LIAccessCheck:(id)check requestedAccess:(unsigned int)access reply:(id)reply
{
  checkCopy = check;
  replyCopy = reply;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000B2A0;
  v41 = sub_10000B2B0;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  checkServerConnection = [(smbMount *)self checkServerConnection];
  if (checkServerConnection)
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100055394();
    }

    replyCopy[2](replyCopy, checkServerConnection);
  }

  else
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002447C;
    block[3] = &unk_10008C948;
    v27 = &v37;
    block[4] = self;
    v26 = checkCopy;
    v28 = &v33;
    dispatch_sync(nodeTableSyncQueue, block);
    v13 = v38[5];
    if (!v13 || (v34[3] & 1) != 0)
    {
      if ((v13 != 0) | v34[3] & 1)
      {
        v15 = 70;
      }

      else
      {
        v15 = 2;
      }

      replyCopy[2](replyCopy, v15);
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000244D8;
      v21[3] = &unk_10008DB30;
      accessCopy = access;
      v23 = &v37;
      v21[4] = self;
      v22 = replyCopy;
      v14 = objc_retainBlock(v21);
      if ([v38[5] getMaxAccessAttr:v30 + 3])
      {
        (v14[2])(v14, *(v30 + 6));
      }

      else
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000247D0;
        v20[3] = &unk_10008D3C0;
        v20[4] = &v37;
        v20[5] = &v29;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000248A4;
        v16[3] = &unk_10008D500;
        v18 = &v37;
        v19 = &v29;
        v17 = v14;
        [(smbMount *)self submitRequestBlock:v20 continuationBlock:v16];
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client requestID:(unint64_t)d reply:(id)reply
{
  interestCopy = interest;
  replyCopy = reply;
  v13 = dispatch_time(0, 15000000000);
  opsSyncGroup = [(smbMount *)self opsSyncGroup];
  v15 = dispatch_group_wait(opsSyncGroup, v13);

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055C6C();
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    namespaceChangingGroup = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(namespaceChangingGroup, 0xFFFFFFFFFFFFFFFFLL);

    opsQueue = self->_opsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100024B0C;
    block[3] = &unk_10008DBA8;
    block[4] = self;
    v22 = a4;
    v19 = interestCopy;
    clientCopy = client;
    v20 = replyCopy;
    dispatch_async(opsQueue, block);
  }
}

- (void)_LISetUpdateInterest:(id)interest interest:(BOOL)a4 forClient:(unint64_t)client reply:(id)reply
{
  v8 = a4;
  interestCopy = interest;
  replyCopy = reply;
  location = 0;
  selfCopy = self;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10000B2A0;
  v43[4] = sub_10000B2B0;
  v31 = interestCopy;
  v44 = v31;
  if ([(smbMount *)selfCopy checkServerConnection])
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)selfCopy serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)selfCopy shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100055CB0();
    }

    v14 = getNSErrorFromLiveFSErrno();
    replyCopy[2](replyCopy, v14);
    goto LABEL_5;
  }

  v16 = ~client;
  if (![v31 isEqualToString:LIUpdateNSFileProviderRootContainerItemIdentifier])
  {
    v17 = [(NSMutableDictionary *)selfCopy->_handleTable objectForKey:v31];
    v15 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    if (v8)
    {
      [v17 setInterestedClients:{objc_msgSend(v17, "interestedClients") | client}];
      if ([v15 isDir])
      {
        objc_storeWeak(&location, v15);
        v18 = [NSString alloc];
        name = [v15 name];
        v20 = [v18 initWithString:name];

        v21 = v38;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100025154;
        v38[3] = &unk_10008CC40;
        v22 = v20;
        v38[4] = v22;
        v38[5] = replyCopy;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100025204;
        v33[3] = &unk_10008DBF8;
        v14 = v22;
        v34 = v14;
        v35 = selfCopy;
        v36 = v43;
        objc_copyWeak(&v37, &location);
        [v15 addChangeNotify:v38 NotifyHandler:v33];
        objc_destroyWeak(&v37);

LABEL_26:
        goto LABEL_6;
      }
    }

    else
    {
      [v17 setInterestedClients:{objc_msgSend(v17, "interestedClients") & v16}];
      if ([v15 isDir])
      {
        objc_storeWeak(&location, v15);
        v28 = [NSString alloc];
        name2 = [v15 name];
        v30 = [v28 initWithString:name2];

        v21 = v32;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100025394;
        v32[3] = &unk_10008CC40;
        v14 = v30;
        v32[4] = v14;
        v32[5] = replyCopy;
        [v15 clearChangeNotify:1 completionHandler:v32];
        goto LABEL_26;
      }
    }

LABEL_27:
    replyCopy[2](replyCopy, 0);
    goto LABEL_7;
  }

  if (!v8)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_handleTable allKeys];
    v15 = 0;
    v24 = [allKeys countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v24)
    {
      v25 = *v40;
      do
      {
        v26 = 0;
        v27 = v15;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = [(NSMutableDictionary *)selfCopy->_handleTable objectForKey:*(*(&v39 + 1) + 8 * v26)];

          [v15 setInterestedClients:{objc_msgSend(v15, "interestedClients") & v16}];
          v26 = v26 + 1;
          v27 = v15;
        }

        while (v24 != v26);
        v24 = [allKeys countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v24);
    }

    goto LABEL_27;
  }

LABEL_10:
  v14 = getNSErrorFromLiveFSErrno();
  replyCopy[2](replyCopy, v14);
LABEL_5:
  v15 = 0;
LABEL_6:

LABEL_7:
  _Block_object_dispose(v43, 8);

  objc_destroyWeak(&location);
}

- (int)connectionState
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_assert_queue_not_V2(self->_connectionSyncQueue);
  connectionSyncQueue = selfCopy->_connectionSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025538;
  v5[3] = &unk_10008DC20;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(connectionSyncQueue, v5);
  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_setConnectionState:(int)state
{
  connectionSyncQueue = self->_connectionSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000255D4;
  v4[3] = &unk_10008DC48;
  v4[4] = self;
  stateCopy = state;
  dispatch_sync(connectionSyncQueue, v4);
}

- (void)SetShutDownReason:(int)reason
{
  connectionSyncQueue = self->_connectionSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002566C;
  v4[3] = &unk_10008DC48;
  v4[4] = self;
  reasonCopy = reason;
  dispatch_sync(connectionSyncQueue, v4);
}

- (void)_submitRequestBlock:(id)block continuationBlock:(id)continuationBlock allowRetries:(BOOL)retries
{
  blockCopy = block;
  atomic_fetch_add(&self->_pendingRequests, 1uLL);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002588C;
  v16[3] = &unk_10008CC40;
  v16[4] = self;
  v9 = objc_retainBlock(continuationBlock);
  v17 = v9;
  v10 = objc_retainBlock(v16);
  if ([(smbMount *)self connectionState]- 3 > 0xFFFFFFFD)
  {
    connQueue = self->_connQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002595C;
    v12[3] = &unk_10008DC98;
    v12[4] = self;
    v13 = v10;
    v14 = blockCopy;
    retriesCopy = retries;
    dispatch_async(connQueue, v12);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100056110();
    }

    (v10[2])(v10, 5);
  }
}

- (void)requestDisconnect
{
  connectionSyncQueue = self->_connectionSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025D70;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
}

- (void)notifyConnectionLost
{
  connectionSyncQueue = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000260D4;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
}

- (void)reconnectSession
{
  __tp.tv_nsec = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v105.tv_nsec = 0;
  __tp.tv_sec = 0;
  v105.tv_sec = 0;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  memset(v117, 0, sizeof(v117));
  connectionState = [(smbMount *)self connectionState];
  v4 = &_os_log_default;
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (connectionState != 2)
  {
    if (v5)
    {
      [(smbMount *)self connState];
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_10005653C();
    }

    v6 = &_os_log_default;
    goto LABEL_77;
  }

  if (v5)
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_10005658C();
  }

  v6 = objc_alloc_init(SMBPiston);
  if (!v6)
  {
    v7 = &_os_log_default;
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_10005680C();
    }

    v86 = 0;
    v87 = 0;
    goto LABEL_17;
  }

  v87 = objc_alloc_init(NSMutableString);
  v86 = objc_alloc_init(NSMutableString);
  if (!v87 || !v86)
  {
    v7 = &_os_log_default;
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_1000567BC();
    }

LABEL_17:
    v85 = 0;
    goto LABEL_18;
  }

  if ([(smbMount *)self isGuestLogin])
  {
    v85 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v14 = qword_1000954F0;
  mountURL = [(smbMount *)self mountURL];
  v92 = 0;
  v7 = [v14 getPasswordForIdentifier:mountURL error:&v92];
  v85 = v92;

  if (v7)
  {
LABEL_26:
    clock_gettime(_CLOCK_REALTIME, &__tp);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *&v19 = 67109890;
    v84 = v19;
LABEL_27:
    if ((v17 & 1) == 0)
    {
      while (1)
      {
        while (1)
        {
          if ([(smbMount *)self connectionState]!= 2)
          {
            v67 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [(smbMount *)self serverName];
              objc_claimAutoreleasedReturnValue();
              [(smbMount *)self shareName];
              objc_claimAutoreleasedReturnValue();
              sub_10005653C();
            }

LABEL_76:

            goto LABEL_77;
          }

          v20 = v16;
          if (v16 >= 1)
          {
            while (1)
            {
              sleep(1u);
              if ([(smbMount *)self connectionState]!= 2)
              {
                break;
              }

              if (!--v20)
              {
                goto LABEL_32;
              }
            }

            v65 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [(smbMount *)self serverName];
              objc_claimAutoreleasedReturnValue();
              [(smbMount *)self shareName];
              objc_claimAutoreleasedReturnValue();
              sub_10005653C();
            }

            goto LABEL_76;
          }

LABEL_32:
          if (v16 < 5)
          {
            ++v16;
          }

          clock_gettime(_CLOCK_REALTIME, &v105);
          ++v18;
          v21 = v105.tv_sec - __tp.tv_sec;
          v22 = &_os_log_default;
          if (v21 >= 21)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              serverName = [(smbMount *)self serverName];
              shareName = [(smbMount *)self shareName];
              *buf = v84;
              *&buf[4] = v18;
              *&buf[8] = 2048;
              *&buf[10] = v21;
              *&buf[18] = 2112;
              *&buf[20] = serverName;
              *&buf[28] = 2112;
              *&buf[30] = shareName;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: pass: %u, reconnect timed out after %ld seconds on server: %@, share: %@ \n", buf, 0x26u);
            }

            goto LABEL_18;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            serverName2 = [(smbMount *)self serverName];
            shareName2 = [(smbMount *)self shareName];
            *buf = 67109634;
            *&buf[4] = v18;
            *&buf[8] = 2112;
            *&buf[10] = serverName2;
            *&buf[18] = 2112;
            *&buf[20] = shareName2;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reconnectSession: starting pass: %u on server: %@, share: %@ \n", buf, 0x1Cu);
          }

          serverName3 = [(smbMount *)self serverName];
          v24 = [smb_subr sendNegotiate:v6 Server:serverName3 netBIOSName:0 VPNCookie:0 Result:&v118];

          if (!v24)
          {
            break;
          }

          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v48 = v118;
            serverName4 = [(smbMount *)self serverName];
            shareName3 = [(smbMount *)self shareName];
            *buf = v84;
            *&buf[4] = v24;
            *&buf[8] = 1024;
            *&buf[10] = v48;
            *&buf[14] = 2112;
            *&buf[16] = serverName4;
            *&buf[24] = 2112;
            *&buf[26] = shareName3;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: sendNegotiate error: %u, ntstatus: 0x%x on server: %@, share: %@ \n", buf, 0x22u);
          }
        }

        v102 = 0u;
        v103 = 0u;
        sessionID = self->_sessionID;
        v104 = 0;
        *(&v102 + 1) = sessionID;
        if ([(smbMount *)self isGuestLogin])
        {
          LODWORD(v102) = 1;
          userName = [(smbMount *)self userName];
          v28 = [smb_subr sendSessionSetup:v6 User:userName Password:0 Realm:0 Param:&v102];
LABEL_52:

          goto LABEL_53;
        }

        if ((v121 & 2) != 0)
        {
          v29 = objc_opt_new();
          realms = [v29 realms];

          userDomain = [(smbMount *)self userDomain];
          if (!userDomain || (v32 = [realms count] == 0, userDomain, v32))
          {
          }

          else
          {
            LODWORD(v102) = 8;
            userName = self->_userName;
            userDomain2 = [(smbMount *)self userDomain];
            v28 = [smb_subr sendSessionSetup:v6 User:userName Password:v7 Realm:userDomain2 Param:&v102];

            if (v28 != 80)
            {
              goto LABEL_53;
            }
          }
        }

        if ((v121 & 0x44) == 0 || (LODWORD(v102) = 2, [(smbMount *)self userName], v37 = objc_claimAutoreleasedReturnValue(), v28 = [smb_subr sendSessionSetup:v6 User:v37 Password:v7 Realm:@"WELLKNOWN:COM.APPLE.LKDC" Param:&v102], v37, v28 == 80))
        {
          LODWORD(v102) = 4;
          userName = [(smbMount *)self userName];
          userDomain3 = [(smbMount *)self userDomain];
          v28 = [smb_subr sendSessionSetup:v6 User:userName Password:v7 Realm:userDomain3 Param:&v102];

          goto LABEL_52;
        }

LABEL_53:
        if (v28)
        {
          v39 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v55 = v103;
            serverName5 = [(smbMount *)self serverName];
            shareName4 = [(smbMount *)self shareName];
            *buf = v84;
            *&buf[4] = v28;
            *&buf[8] = 1024;
            *&buf[10] = v55;
            *&buf[14] = 2112;
            *&buf[16] = serverName5;
            *&buf[24] = 2112;
            *&buf[26] = shareName4;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: sendSessionSetup error: %u, ntstatus: 0x%x on server: %@, share: %@ \n", buf, 0x22u);
          }
        }

        else
        {
          shareName5 = [(smbMount *)self shareName];
          v41 = [smb_subr sendTreeConnect:v6 ShareName:shareName5 Param:&v99];

          if (v41)
          {
            v42 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v60 = v99;
              serverName6 = [(smbMount *)self serverName];
              shareName6 = [(smbMount *)self shareName];
              *buf = v84;
              *&buf[4] = v41;
              *&buf[8] = 1024;
              *&buf[10] = v60;
              *&buf[14] = 2112;
              *&buf[16] = serverName6;
              *&buf[24] = 2112;
              *&buf[26] = shareName6;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: sendTreeConnect error: %u, ntstatus: 0x%x on server: %@, share: %@ \n", buf, 0x22u);
            }
          }

          else
          {
            v43 = [smb_subr sendQueryShare:v6 ShareID:HIDWORD(v101) Model:v87 FSName:v86 Param:&v93];
            if (v43)
            {
              v44 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v45 = v93;
                serverName7 = [(smbMount *)self serverName];
                shareName7 = [(smbMount *)self shareName];
                *buf = v84;
                *&buf[4] = v43;
                *&buf[8] = 1024;
                *&buf[10] = v45;
                *&buf[14] = 2112;
                *&buf[16] = serverName7;
                *&buf[24] = 2112;
                *&buf[26] = shareName7;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: sendQueryShare error: %u, ntstatus: 0x%x on server: %@, share: %@ \n", buf, 0x22u);
              }
            }

            else
            {
              v51 = [smb_subr queryShareRootSync:v6 ShareID:self->_shareID FAttrs:v117];
              if (v51)
              {
                v52 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  serverName8 = [(smbMount *)self serverName];
                  shareName8 = [(smbMount *)self shareName];
                  *buf = 67109634;
                  *&buf[4] = v51;
                  *&buf[8] = 2112;
                  *&buf[10] = serverName8;
                  *&buf[18] = 2112;
                  *&buf[20] = shareName8;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: queryShareRoot error: %d on server: %@, share: %@ \n", buf, 0x1Cu);
                }
              }

              else
              {
                self->serverSockAddrLen = 128;
                v58 = [v6 getPeerAddress:&self->serverSockAddr withLength:&self->serverSockAddrLen];
                if (!v58)
                {
                  [(smbMount *)self setPd:v6];
                  v17 = 1;
                  [(smbMount *)self setServerConnected:1];
                  goto LABEL_27;
                }

                v59 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  serverName9 = [(smbMount *)self serverName];
                  shareName9 = [(smbMount *)self shareName];
                  *buf = 67109634;
                  *&buf[4] = v58;
                  *&buf[8] = 2112;
                  *&buf[10] = serverName9;
                  *&buf[18] = 2112;
                  *&buf[20] = shareName9;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: getPeerAddress error: %d on server: %@, share: %@ \n", buf, 0x1Cu);
                }
              }
            }

            [smb_subr sendTreeDisonnect:v6 ShareID:HIDWORD(v101) Param:&v99];
          }

          [smb_subr sendLogoff:v6 Param:&v102];
        }

        [v6 disconnect];
      }
    }

    connectionState2 = [(smbMount *)self connectionState];
    v69 = &_os_log_default;
    v70 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (connectionState2 == 2)
    {
      if (v70)
      {
        [(smbMount *)self serverName];
        objc_claimAutoreleasedReturnValue();
        [(smbMount *)self shareName];
        objc_claimAutoreleasedReturnValue();
        sub_10005662C();
      }

      [(smbMount *)self setSm_flags:1];
      self->_serverGuid = v119;
      [(smbMount *)self setServerSecMode:WORD2(v118)];
      [(smbMount *)self setServerDialect:WORD3(v118)];
      [(smbMount *)self setServerNegContextCnt:WORD4(v118)];
      [(smbMount *)self setServerCaps:v120];
      [(smbMount *)self setServerMaxTx:DWORD1(v120)];
      [(smbMount *)self setServerMaxRd:DWORD2(v120)];
      [(smbMount *)self setServerMaxWr:HIDWORD(v120)];
      [(smbMount *)self setSessionID:*(&v103 + 1)];
      [(smbMount *)self setSessionFlags:WORD2(v103)];
      [(smbMount *)self setShareID:HIDWORD(v101)];
      [(smbMount *)self setShareType:BYTE4(v99)];
      [(smbMount *)self setShareFlags:v100];
      [(smbMount *)self setShareCaps:HIDWORD(v100)];
      [(smbMount *)self setShareMaxAccess:v101];
      modelName = [(smbMount *)self modelName];
      [modelName setString:v87];

      fsName = [(smbMount *)self fsName];
      [fsName setString:v86];

      *&buf[32] = v95;
      v114 = v96;
      v115 = v97;
      v116 = v98;
      *buf = v93;
      *&buf[16] = v94;
      [(smbMount *)self setShareInfo:buf];
      [(smbMount *)self shareInfo];
      self->_sm_flags = self->_sm_flags & 0xFFFFFFFE | (v91 >> 7) & 1;
      v73 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        [(smbMount *)self serverName];
        objc_claimAutoreleasedReturnValue();
        [(smbMount *)self shareName];
        objc_claimAutoreleasedReturnValue();
        sub_10005667C();
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_10000B2A0;
      *&buf[32] = sub_10000B2B0;
      *&buf[40] = 0;
      v111[0] = 0;
      v111[1] = v111;
      v111[2] = 0x3032000000;
      v111[3] = sub_10000B2A0;
      nodeTableSyncQueue = self->_nodeTableSyncQueue;
      v111[4] = sub_10000B2B0;
      v112 = 0;
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_100027660;
      v90[3] = &unk_10008DD10;
      v90[4] = self;
      v90[5] = v111;
      v90[6] = buf;
      dispatch_sync(nodeTableSyncQueue, v90);
      v75 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        [(smbMount *)self serverName];
        objc_claimAutoreleasedReturnValue();
        [(smbMount *)self shareName];
        objc_claimAutoreleasedReturnValue();
        sub_1000566CC();
      }

      *(v108 + 24) = 0;
      v76 = self->_nodeTableSyncQueue;
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_100027848;
      v89[3] = &unk_10008DD38;
      v89[4] = self;
      v89[5] = v111;
      v89[6] = buf;
      v89[7] = &v107;
      dispatch_sync(v76, v89);
      if ([(smbMount *)self connectionState]== 2)
      {
        v77 = *(v108 + 24);
        v78 = &_os_log_default;
        v79 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v77)
        {
          if (v79)
          {
            [(smbMount *)self serverName];
            objc_claimAutoreleasedReturnValue();
            [(smbMount *)self shareName];
            objc_claimAutoreleasedReturnValue();
            sub_10005671C();
          }

          [(smbMount *)self _setConnectionState:4];
          [(smbMount *)self flushAndReconnect];
          goto LABEL_108;
        }

        if (v79)
        {
          [(smbMount *)self serverName];
          objc_claimAutoreleasedReturnValue();
          [(smbMount *)self shareName];
          objc_claimAutoreleasedReturnValue();
          sub_10005676C();
        }

        [(smbMount *)self _setConnectionState:1];
        clock_gettime(_CLOCK_REALTIME, &self->_lastRequestTime);
        [(smbMount *)self resumeIdleTimer];
        connQueue = [(smbMount *)self connQueue];
        dispatch_resume(connQueue);
      }

      else
      {
        connQueue = &_os_log_default;
        v81 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [(smbMount *)self serverName];
          objc_claimAutoreleasedReturnValue();
          [(smbMount *)self shareName];
          objc_claimAutoreleasedReturnValue();
          sub_10005653C();
        }
      }

LABEL_108:
      _Block_object_dispose(v111, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_77;
    }

    if (v70)
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_10005653C();
    }

    goto LABEL_24;
  }

  v7 = &_os_log_default;
  v66 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000565DC();
  }

LABEL_18:

  connectionState3 = [(smbMount *)self connectionState];
  v11 = &_os_log_default;
  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (connectionState3 != 2)
  {
    if (v12)
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_10005685C();
    }

LABEL_24:

    goto LABEL_77;
  }

  if (v12)
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_1000568AC();
  }

  connectionSyncQueue = self->_connectionSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027EB4;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(connectionSyncQueue, block);
  [(smbMount *)self requestDisconnect];

LABEL_77:
  _Block_object_dispose(&v107, 8);
}

- (void)flushAndReconnect
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056BA4();
  }

  connQueue = [(smbMount *)self connQueue];
  dispatch_resume(connQueue);

  connQueue2 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027FB4;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(connQueue2, block);
}

- (void)flushAndDisconnect
{
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_10000B2A0;
  v34[4] = sub_10000B2B0;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10000B2A0;
  v32[4] = sub_10000B2B0;
  v33 = 0;
  __rqtp.tv_sec = 0;
  __rqtp.tv_nsec = 0;
  v3 = dispatch_group_create();
  v4 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100056BE8();
  }

  if ([(smbMount *)self serverConnected])
  {
    v5 = 10000;
    v24 = xmmword_10006D510;
    while (1)
    {
      v6 = atomic_load(&self->_pendingRequests);
      if (!v6)
      {
        break;
      }

      __rqtp = xmmword_10006D510;
      nanosleep(&__rqtp, 0);
      if (!--v5)
      {
        v7 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          serverName = [(smbMount *)self serverName];
          shareName = [(smbMount *)self shareName];
          connState = [(smbMount *)self connState];
          *buf = 138413314;
          *&buf[4] = serverName;
          *&buf[12] = 2112;
          *&buf[14] = shareName;
          *&buf[22] = 1024;
          *&buf[24] = connState;
          *&buf[28] = 2048;
          *&buf[30] = v6;
          *&buf[38] = 1024;
          v38 = 10000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "flushAndDisconnect: server: %@ share:%@ state:%d pending: %llu time out: %d Timed out waiting for pending requests \n", buf, 0x2Cu);
        }

        break;
      }
    }
  }

  else
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028620;
    block[3] = &unk_10008DD10;
    block[4] = self;
    block[5] = v34;
    block[6] = v32;
    dispatch_sync(nodeTableSyncQueue, block);
  }

  v9 = self->_nodeTableSyncQueue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100028808;
  v26[3] = &unk_10008D618;
  v28 = v34;
  v26[4] = self;
  v29 = v32;
  v10 = v3;
  v27 = v10;
  dispatch_sync(v9, v26);
  if ([(smbMount *)self serverConnected])
  {
    memset(v36, 0, 24);
    v11 = [(smbMount *)self pd];
    [smb_subr sendTreeDisonnect:v11 ShareID:[(smbMount *)self shareID] Param:v36];

    memset(buf, 0, sizeof(buf));
    v12 = [(smbMount *)self pd];
    [smb_subr sendLogoff:v12 Param:buf];

    v13 = [(smbMount *)self pd];
    [v13 disconnect];

    [(smbMount *)self setServerConnected:0];
  }

  [(smbMount *)self setConnState:7, v24];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  connectionSyncQueue = self->_connectionSyncQueue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100028AAC;
  v25[3] = &unk_10008DC20;
  v25[4] = self;
  v25[5] = buf;
  dispatch_sync(connectionSyncQueue, v25);
  if ((*(*&buf[8] + 24) & 2) != 0)
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)self serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)self shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100056C38();
    }

    v17 = qword_1000954F0;
    mountURL = [(smbMount *)self mountURL];
    v15 = [v17 ejectVolumeForURL:mountURL share:self->_shareName how:13];

    if (v15)
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [(smbMount *)self serverName];
        objc_claimAutoreleasedReturnValue();
        [(smbMount *)self shareName];
        objc_claimAutoreleasedReturnValue();
        sub_100056C88();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [(smbMount *)self serverName];
    objc_claimAutoreleasedReturnValue();
    [(smbMount *)self shareName];
    objc_claimAutoreleasedReturnValue();
    sub_100056CFC();
  }

  [(smbMount *)self resumeIdleTimer];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

- (void)reconnectCancelWait
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056D4C();
  }

  [(smbMount *)self setConnState:6];
  connQueue = [(smbMount *)self connQueue];
  dispatch_resume(connQueue);

  connQueue2 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BAC;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(connQueue2, block);
}

- (void)flushEIOCancelWait
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056D90();
  }

  [(smbMount *)self setConnState:6];
  connQueue = [(smbMount *)self connQueue];
  dispatch_resume(connQueue);

  connQueue2 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028C80;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(connQueue2, block);
}

- (void)renameOverExistingDir:(id)dir FromName:(id)name toDir:(id)toDir NewName:(id)newName ToFile:(id)file CompletionHandler:(id)handler
{
  dirCopy = dir;
  nameCopy = name;
  toDirCopy = toDir;
  newNameCopy = newName;
  fileCopy = file;
  handlerCopy = handler;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100028E60;
  v35[3] = &unk_10008DD88;
  v36 = toDirCopy;
  v37 = fileCopy;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100028F38;
  v26[3] = &unk_10008DE00;
  v27 = v36;
  v28 = v37;
  selfCopy = self;
  v30 = dirCopy;
  v34 = toDirCopy == dirCopy;
  v31 = nameCopy;
  v32 = newNameCopy;
  v33 = handlerCopy;
  v20 = handlerCopy;
  v21 = newNameCopy;
  v22 = nameCopy;
  v23 = dirCopy;
  v24 = v37;
  v25 = v36;
  [(smbMount *)self submitRequestBlockOnce:v35 continuationBlock:v26];
}

- (void)renameOverExistingFile:(id)file FromName:(id)name toDir:(id)dir NewName:(id)newName ToFile:(id)toFile CompletionHandler:(id)handler
{
  fileCopy = file;
  nameCopy = name;
  dirCopy = dir;
  newNameCopy = newName;
  toFileCopy = toFile;
  handlerCopy = handler;
  v19 = *([toFileCopy getSmbFattr] + 30);
  makeSillyDeleteName = [toFileCopy makeSillyDeleteName];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100029498;
  v40[3] = &unk_10008DE28;
  v41 = dirCopy;
  v42 = toFileCopy;
  v43 = makeSillyDeleteName;
  v44 = v19;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100029588;
  v29[3] = &unk_10008DEA0;
  v30 = v41;
  v31 = v42;
  selfCopy = self;
  v33 = fileCopy;
  v39 = dirCopy == fileCopy;
  v34 = nameCopy;
  v35 = newNameCopy;
  v38 = v19;
  v36 = v43;
  v37 = handlerCopy;
  v21 = v43;
  v22 = newNameCopy;
  v23 = nameCopy;
  v24 = fileCopy;
  v25 = handlerCopy;
  v26 = v42;
  v27 = v41;
  [(smbMount *)self submitRequestBlockOnce:v40 continuationBlock:v29];
}

- (int)deliverSearchResults:(id)results
{
  resultsCopy = results;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100057510();
  }

  searchRows = [resultsCopy searchRows];
  v5 = [resultsCopy parseSearchResults:searchRows];
  v6 = v5;
  if (v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v30 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = searchRows;
      v9 = 0;
      path = 0;
      v11 = *v31;
      do
      {
        v12 = 0;
        v13 = v9;
        v14 = path;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v30 + 1) + 8 * v12);

          if (v9)
          {
            [v9 liAttr];
          }

          else
          {
            v29 = 0;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v18 = 0u;
          }

          v42 = v26;
          v43 = v27;
          v44 = v28;
          v45 = v29;
          v38 = v22;
          v39 = v23;
          v40 = v24;
          v41 = v25;
          v34 = v18;
          v35 = v19;
          v36 = v20;
          v37 = v21;
          path = [v9 path];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100057554(v46, path, &v47);
          }

          handler = [resultsCopy handler];
          [handler addSearchResult:path attributes:&v34 attributeSize:184 xAttrs:&__NSDictionary0__struct];

          v12 = v12 + 1;
          v13 = v9;
          v14 = path;
        }

        while (v8 != v12);
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v48 count:16];
      }

      while (v8);

      searchRows = v17;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100057598();
  }

  return 0;
}

- (timespec)lastRequestTime
{
  objc_copyStruct(v4, &self->_lastRequestTime, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

- ($153B227C17007545984278727FAEAED4)serverGuid
{
  objc_copyStruct(v4, &self->_serverGuid, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  *&result.var1[2] = v3;
  *result.var0 = v2;
  return result;
}

@end