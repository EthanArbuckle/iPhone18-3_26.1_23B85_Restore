@interface smbMount
+ (id)smbMountFromServerURL:(id)a3 shareName:(id)a4 password:(id)a5 result:(int *)a6;
- ($153B227C17007545984278727FAEAED4)serverGuid;
- (id)initForServerURL:(id)a3 shareName:(id)a4 password:(id)a5 result:(int *)a6;
- (id)lookupHandle:(id)a3 IsStale:(BOOL *)a4;
- (int)checkServerConnection;
- (int)connectToServer;
- (int)connectionState;
- (int)deliverSearchResults:(id)a3;
- (int)tryCreateRootNode;
- (timespec)lastRequestTime;
- (unint64_t)newConnectionIDOrError:(id *)a3;
- (void)LIRead:(id)a3 atOffset:(unint64_t)a4 withPointer:(char *)a5 length:(unint64_t)a6 reply:(id)a7;
- (void)SetShutDownReason:(int)a3;
- (void)_LIAccessCheck:(id)a3 requestedAccess:(unsigned int)a4 reply:(id)a5;
- (void)_LIClose:(id)a3 keepingMode:(int)a4 reply:(id)a5;
- (void)_LICreate:(id)a3 named:(id)a4 withAttrs:(id)a5 andClient:(unint64_t)a6 reply:(id)a7;
- (void)_LIGetFsAttr:(id)a3 name:(id)a4 reply:(id)a5;
- (void)_LIGetXattr:(id)a3 name:(id)a4 reply:(id)a5;
- (void)_LIListXattrs:(id)a3 reply:(id)a4;
- (void)_LILookup:(id)a3 name:(id)a4 forClient:(unint64_t)a5 reply:(id)a6;
- (void)_LIMakeDir:(id)a3 named:(id)a4 withAttrs:(id)a5 andClient:(unint64_t)a6 reply:(id)a7;
- (void)_LIMakeSymLink:(id)a3 named:(id)a4 withContents:(id)a5 andAttrs:(id)a6 andClient:(unint64_t)a7 reply:(id)a8;
- (void)_LIPathConf:(id)a3 reply:(id)a4;
- (void)_LIRead:(id)a3 atOffset:(unint64_t)a4 withPointer:(char *)a5 length:(unint64_t)a6 reply:(id)a7;
- (void)_LIReadDir:(id)a3 intoBuffer:(id)a4 forCookie:(unint64_t)a5 andVerifier:(unint64_t)a6 reply:(id)a7;
- (void)_LIReadDirAndAttrs:(id)a3 intoBuffer:(id)a4 forCookie:(unint64_t)a5 andVerifier:(unint64_t)a6 reply:(id)a7;
- (void)_LIReadLink:(id)a3 reply:(id)a4;
- (void)_LIReclaim:(id)a3 forClient:(unint64_t)a4 reply:(id)a5;
- (void)_LIRemove:(id)a3 name:(id)a4 reply:(id)a5;
- (void)_LIRemoveDir:(id)a3 name:(id)a4 reply:(id)a5;
- (void)_LIRename:(id)a3 name:(id)a4 toDir:(id)a5 andName:(id)a6 withFlags:(unsigned int)a7 reply:(id)a8;
- (void)_LISearch:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 withCallerID:(unint64_t)a7 reply:(id)a8;
- (void)_LISearchAbort:(id)a3 reply:(id)a4;
- (void)_LISearchAbortAllClientSearches:(unint64_t)a3;
- (void)_LISetAttr:(id)a3 setAttrs:(id)a4 reply:(id)a5;
- (void)_LISetUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 reply:(id)a6;
- (void)_LISetXattr:(id)a3 name:(id)a4 value:(id)a5 how:(int)a6 reply:(id)a7;
- (void)_LIStatFS:(id)a3 reply:(id)a4;
- (void)_LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6;
- (void)_getAttr:(id)a3 reply:(id)a4;
- (void)_invalidateFileNodesForConnection:(unint64_t)a3;
- (void)_setConnectionState:(int)a3;
- (void)_submitRequestBlock:(id)a3 continuationBlock:(id)a4 allowRetries:(BOOL)a5;
- (void)abortAllClientSearchesFor:(unint64_t)a3;
- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)cancelIdleTimer;
- (void)checkAccessTo:(id)a3 requestedAccess:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)dealloc;
- (void)decreaseChangeNotifyCount:(unint64_t)a3;
- (void)decreaseOpenFileCount:(unint64_t)a3;
- (void)disconnect;
- (void)disconnectFromServer;
- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)flushAndDisconnect;
- (void)flushAndReconnect;
- (void)flushEIOCancelWait;
- (void)handleNodeDisappeared:(id)a3;
- (void)idleTimerFired;
- (void)increaseChangeNotifyCount:(unint64_t)a3;
- (void)increaseOpenFileCount:(unint64_t)a3;
- (void)invalidateFileNodesForConnection:(unint64_t)a3;
- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)lookupin:(id)a3 name:(id)a4 forClient:(unint64_t)a5 usingFlags:(unsigned int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 andClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)notifyConnectionLost;
- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)readDirectory:(id)a3 amount:(unint64_t)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 amount:(unint64_t)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readFrom:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)readRequest:(id)a3 bptr:(char *)a4 smbNode:(id)a5 fileRef:(id)a6 rdparamPtr:(smb_read_write *)a7 result:(int)a8 thisOffset:(unint64_t)a9 bytesRemain:(unint64_t)a10 bytesRead:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13;
- (void)reclaim:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)reconnectCancelWait;
- (void)reconnectSession;
- (void)releaseConnectionAllocation:(unint64_t)a3;
- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)renameItemIn:(id)a3 named:(id)a4 toDirectory:(id)a5 newName:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)renameOverExistingDir:(id)a3 FromName:(id)a4 toDir:(id)a5 NewName:(id)a6 ToFile:(id)a7 CompletionHandler:(id)a8;
- (void)renameOverExistingFile:(id)a3 FromName:(id)a4 toDir:(id)a5 NewName:(id)a6 ToFile:(id)a7 CompletionHandler:(id)a8;
- (void)replenishSearchCreditsFor:(id)a3 credits:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)requestDisconnect;
- (void)resetChangeNotifyCount;
- (void)resetOpenFileCount;
- (void)resumeIdleTimer;
- (void)rootFileHandleForClient:(unint64_t)a3 reply:(id)a4;
- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 forClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)setAttrInternalLocked:(id)a3 setAttrs:(id)a4 CompletionHandler:(id)a5;
- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)writeRequest:(id)a3 withBuffer:(id)a4 smbNode:(id)a5 fileRef:(id)a6 wrparamPtr:(smb_read_write *)a7 result:(int)a8 thisOffset:(unint64_t)a9 bytesWritten:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
@end

@implementation smbMount

- (id)initForServerURL:(id)a3 shareName:(id)a4 password:(id)a5 result:(int *)a6
{
  v8 = a3;
  v9 = a4;
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
    v29 = [v8 host];
    serverName = v11->_serverName;
    v11->_serverName = v29;

    objc_storeStrong(&v11->_shareName, a4);
    v31 = [v8 user];
    userName = v11->_userName;
    v11->_userName = v31;

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

    v46 = [v8 URLByAppendingPathComponent:v9];
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
  v17 = [(smbMount *)self mountURL];
  v42 = 0;
  v18 = [v16 getPasswordForIdentifier:v17 error:&v42];
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
    v21 = [v20 realms];

    if (self->_userDomain && [v21 count])
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
          v29 = [(smbMount *)self rootNode];

          if (!v29)
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
    v4 = [(smbMount *)self connState];
    switch(v4)
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
        v5 = [(smbMount *)self rootNode];

        if (v5)
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
  v3 = [(smbMount *)self idleTimer];

  if (!v3)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    [(smbMount *)self setIdleTimer:v4];

    v5 = [(smbMount *)self idleTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000A5F8;
    handler[3] = &unk_10008C880;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
  }

  v6 = [(smbMount *)self idleTimer];
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0x6FC23AC00uLL, 0x2FAF080uLL);

  if (![(smbMount *)self idleTimerRunning])
  {
    [(smbMount *)self setIdleTimerRunning:1];
    v8 = [(smbMount *)self idleTimer];
    dispatch_resume(v8);
  }
}

- (void)cancelIdleTimer
{
  v3 = [(smbMount *)self idleTimer];

  if (v3 && [(smbMount *)self idleTimerRunning]== 1)
  {
    [(smbMount *)self setIdleTimerRunning:0];
    v4 = [(smbMount *)self idleTimer];
    dispatch_suspend(v4);
  }
}

- (void)increaseOpenFileCount:(unint64_t)a3
{
  v5 = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A7B4;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)decreaseOpenFileCount:(unint64_t)a3
{
  v5 = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A890;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)resetOpenFileCount
{
  v3 = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A9C0;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)increaseChangeNotifyCount:(unint64_t)a3
{
  v5 = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AA60;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)decreaseChangeNotifyCount:(unint64_t)a3
{
  v5 = [(smbMount *)self connectionSyncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AB3C;
  v6[3] = &unk_10008C8A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)resetChangeNotifyCount
{
  v3 = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC6C;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(v3, block);
}

+ (id)smbMountFromServerURL:(id)a3 shareName:(id)a4 password:(id)a5 result:(int *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initForServerURL:v12 shareName:v11 password:v10 result:a6];

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

- (void)invalidateFileNodesForConnection:(unint64_t)a3
{
  if ([(smbMount *)self connState])
  {
    v5 = dispatch_time(0, 15000000000);
    v6 = [(smbMount *)self opsSyncGroup];
    v7 = dispatch_group_wait(v6, v5);

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100050E6C();
      }
    }

    else
    {
      v8 = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

      v9 = [(smbMount *)self opsQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000AF34;
      v10[3] = &unk_10008C8A8;
      v10[4] = self;
      v10[5] = a3;
      dispatch_async(v9, v10);
    }
  }
}

- (void)_invalidateFileNodesForConnection:(unint64_t)a3
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
  v8 = [(smbMount *)self handleTable];
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = ~a3;
    v12 = *v29;
    v22 = v25;
    obj = v8;
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
        v15 = [(smbMount *)self handleTable];
        v16 = [v15 objectForKey:v14];

        v9 = v16;
        [v16 setInterestedClients:{objc_msgSend(v16, "interestedClients") & v11}];
        v17 = [v16 inUseClientSet];
        [v16 setInUseClientSet:v17 & v11];
        if ((v17 & a3) != 0 && ![v16 inUseClientSet])
        {
          v18 = [(smbMount *)self rootNode];
          v19 = [v18 fh];
          v20 = [v14 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            dispatch_group_enter(v33[5]);
            v21 = [v9 fileRefSyncQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            v25[0] = sub_10000B2B8;
            v25[1] = &unk_10008C858;
            v26 = v9;
            v27 = &v32;
            dispatch_async(v21, block);

            dispatch_group_wait(v33[5], 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v32, 8);
}

- (unint64_t)newConnectionIDOrError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = smbMount;
  return [(smbMount *)&v4 newConnectionIDOrError:a3];
}

- (void)releaseConnectionAllocation:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = smbMount;
  [(smbMount *)&v3 releaseConnectionAllocation:a3];
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

- (id)lookupHandle:(id)a3 IsStale:(BOOL *)a4
{
  v5 = [(NSMutableDictionary *)self->_handleTable objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    *a4 = [v5 isViable] ^ 1;
  }

  return v6;
}

- (void)handleNodeDisappeared:(id)a3
{
  v9 = a3;
  [v9 setZombieState:1];
  if (([v9 isRoot] & 1) == 0)
  {
    v4 = [(smbMount *)self nameTable];
    v5 = [v9 parent];
    v6 = [v5 fh];
    v7 = [v9 name];
    v8 = [LiveFSItemPair newWithParent:v6 fname:v7 caseSensitivity:[(smbMount *)self isCaseSensitive]];
    [v4 removeObjectForKey:v8];
  }
}

- (void)rootFileHandleForClient:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
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
    v5[2](v5, v7, 0);
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100050FA4();
  }

  v7 = getNSErrorFromLiveFSErrno();
  (v5)[2](v5, 0, v7);
LABEL_9:
}

- (void)lookupin:(id)a3 name:(id)a4 forClient:(unint64_t)a5 usingFlags:(unsigned int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a8;
  v15 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

  v16 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v16);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B800;
  block[3] = &unk_10008C920;
  block[4] = self;
  v22 = v12;
  v24 = v14;
  v25 = a5;
  v23 = v13;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(opsQueue, block);
}

- (void)_LILookup:(id)a3 name:(id)a4 forClient:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
  v13 = [(smbMount *)self checkServerConnection];
  if (v13)
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

  if (!v10 || ![v10 length])
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = v11;
      sub_10005116C([v11 UTF8String], v74);
    }

    goto LABEL_20;
  }

  if (!v11 || ![v11 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100051128();
    }

LABEL_20:
    v13 = 22;
LABEL_21:
    (*(v12 + 2))(v12, v13, 0, 0);
    goto LABEL_22;
  }

  nodeTableSyncQueue = self->_nodeTableSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BFD0;
  block[3] = &unk_10008C948;
  v54 = &v62;
  block[4] = self;
  v16 = v10;
  v53 = v16;
  v55 = &v56;
  dispatch_sync(nodeTableSyncQueue, block);
  if (v63[5] && *(v57 + 24) != 1)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000C02C;
    v46[3] = &unk_10008C9C0;
    v22 = v12;
    v49 = v22;
    v50 = &v62;
    v51 = a5;
    v23 = v11;
    v47 = v23;
    v48 = self;
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
      v31 = self;
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
      v18 = v11;
      sub_1000510A4([v11 UTF8String], v74);
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

    (*(v12 + 2))(v12, v19, 0, 0);
  }

LABEL_22:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v10);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1C0;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(opsQueue, block);
}

- (void)_getAttr:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(smbMount *)self checkServerConnection];
  if (!v8)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D5B4;
    block[3] = &unk_10008C948;
    v19 = &v25;
    block[4] = self;
    v18 = v6;
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
        v15 = v7;
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

    (*(v7 + 2))(v7, v13, 0);
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

  (*(v7 + 2))(v7, v8, 0);
LABEL_14:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  v12 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v12);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D848;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = v9;
  v19 = a4;
  v18 = v10;
  v14 = v10;
  v15 = v9;
  dispatch_async(opsQueue, v16);
}

- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  v12 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v12);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000E4B8;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = v9;
  v19 = a4;
  v18 = v10;
  v14 = v10;
  v15 = v9;
  dispatch_async(opsQueue, v16);
}

- (void)_LIClose:(id)a3 keepingMode:(int)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v10 = [(smbMount *)self checkServerConnection];
  if (!v10)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EB68;
    block[3] = &unk_10008C948;
    v32 = &v38;
    block[4] = self;
    v31 = v8;
    v33 = &v50;
    dispatch_sync(nodeTableSyncQueue, block);
    v13 = v39[5];
    v14 = *(v51 + 24);
    if (v13)
    {
      if ((v51[3] & 1) == 0)
      {
        v15 = [v13 isDir];
        v16 = v39[5];
        if (v15)
        {
          [v16 decDirRefCount];
          v17 = 0;
        }

        else
        {
          if ([v16 openFileRefs] > 0)
          {
            v18 = [v39[5] fileRefSyncQueue];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10000EBC4;
            v20[3] = &unk_10008CDA8;
            v29 = a4;
            v22 = &v38;
            v23 = v34;
            v24 = v46;
            v25 = v48;
            v26 = v44;
            v27 = v35;
            v28 = v36;
            v21 = v9;
            dispatch_async(v18, v20);

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
        (*(v9 + 2))(v9, v17, 0, 0, 0, 0, 0, 0);
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

  (*(v9 + 2))(v9, v10, 0, 0, 0, 0, 0, 0);
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

- (void)reclaim:(id)a3 forClient:(unint64_t)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  v12 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v12);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000EF70;
  v16[3] = &unk_10008CDD0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = a4;
  v14 = v10;
  v15 = v9;
  dispatch_async(opsQueue, v16);
}

- (void)_LIReclaim:(id)a3 forClient:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v12 = v8;
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
  v14 = [v30[5] inUseClientSet];
  [v30[5] setInUseClientSet:v14 & ~a4];
  [v30[5] unlockMeta];
  if ((v14 & a4) == 0 || [v30[5] inUseClientSet])
  {
LABEL_14:
    v9[2](v9, 0);
    goto LABEL_15;
  }

  [v30[5] setZombieState:1];
  if (([v30[5] isRoot] & 1) == 0)
  {
    v15 = [(smbMount *)self nodeTableSyncQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000F4A0;
    v22[3] = &unk_10008C858;
    v22[4] = self;
    v22[5] = &v29;
    dispatch_sync(v15, v22);
  }

  v16 = [v30[5] fileRefSyncQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000F5B8;
  v19[3] = &unk_10008CDF8;
  v21 = &v29;
  v20 = v9;
  dispatch_async(v16, v19);

LABEL_15:
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  v17 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v17);

  opsQueue = self->_opsQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000F7A0;
  v22[3] = &unk_10008CE48;
  v22[4] = self;
  v23 = v13;
  v26 = a5;
  v27 = a6;
  v24 = v14;
  v25 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  dispatch_async(opsQueue, v22);
}

- (void)_LIReadDir:(id)a3 intoBuffer:(id)a4 forCookie:(unint64_t)a5 andVerifier:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
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
  v15 = [(smbMount *)self checkServerConnection];
  v58 = v15;
  if (!v15)
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
    v19 = v12;
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
            v48 = a5;
            v49 = a6;
            v43 = v13;
            v44 = self;
            v47 = v67;
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100010098;
            v34[3] = &unk_10008CEC0;
            v36 = &v59;
            v35 = v14;
            v37 = &v63;
            v38 = &v69;
            v39 = a5;
            v40 = a6;
            [(smbMount *)self submitRequestBlock:v41 continuationBlock:v34];

LABEL_16:
            goto LABEL_17;
          }

          v31 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v32 = [v70[5] name];
            v33 = v32;
            sub_100051A28([v32 UTF8String], &v58, v75, v32);
          }

          v25 = v58;
        }

        else
        {
          v28 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v29 = [v70[5] name];
            v30 = v29;
            [v29 UTF8String];
            sub_1000519DC();
          }

          v25 = 20;
        }

LABEL_15:
        (*(v14 + 2))(v14, v25, 0, 0);
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

  (*(v14 + 2))(v14, v15, 0, 0);
  v17 = 0;
LABEL_17:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(&v69, 8);
}

- (void)readDirectory:(id)a3 amount:(unint64_t)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = [LiveFSSharedMutableBuffer dataWithLength:a4];
  v17 = v16;
  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100010290;
    v18[3] = &unk_10008CEE8;
    v19 = v16;
    v21 = a4;
    v20 = v15;
    [(smbMount *)self readDirectory:v14 intoBuffer:v19 cookie:a5 verifier:a6 requestID:a7 reply:v18];
  }

  else
  {
    (*(v15 + 2))(v15, 12, 0, 0, 0);
  }
}

- (void)readDirectory:(id)a3 amount:(unint64_t)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v15 = a3;
  v16 = a9;
  v17 = [LiveFSSharedMutableBuffer dataWithLength:a4];
  v18 = v17;
  if (v17)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000104A8;
    v19[3] = &unk_10008CEE8;
    v20 = v17;
    v22 = a4;
    v21 = v16;
    [(smbMount *)self readDirectory:v15 intoBuffer:v20 requestedAttributes:a5 cookie:a6 verifier:a7 requestID:a8 reply:v19];
  }

  else
  {
    (*(v16 + 2))(v16, 12, 0, 0, 0);
  }
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a9;
  v16 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  v17 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v17);

  opsQueue = self->_opsQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000106B0;
  v22[3] = &unk_10008CE48;
  v22[4] = self;
  v23 = v13;
  v26 = a6;
  v27 = a7;
  v24 = v14;
  v25 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  dispatch_async(opsQueue, v22);
}

- (void)_LIReadDirAndAttrs:(id)a3 intoBuffer:(id)a4 forCookie:(unint64_t)a5 andVerifier:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
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
  v15 = [(smbMount *)self checkServerConnection];
  v48 = v15;
  if (!v15)
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
    v41 = v12;
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
            v38 = a5;
            v39 = a6;
            v34 = v13;
            v37 = v57;
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_100010E9C;
            v25[3] = &unk_10008CEC0;
            v27 = &v49;
            v26 = v14;
            v28 = &v53;
            v29 = &v59;
            v30 = a5;
            v31 = a6;
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
          (*(v14 + 2))(v14, v22, 0, 0);
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

  (*(v14 + 2))(v14, v15, 0, 0);
  v17 = 0;
LABEL_22:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v59, 8);
}

- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  v18 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v18);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000110AC;
  v24[3] = &unk_10008CF88;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = a6;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  dispatch_async(opsQueue, v24);
}

- (void)_LICreate:(id)a3 named:(id)a4 withAttrs:(id)a5 andClient:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
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
  v16 = [(smbMount *)self checkServerConnection];
  if (!v16)
  {
    if ([v14 length] <= 0xB7)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100052064(v78, [v14 length]);
      }

      v16 = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011920;
    block[3] = &unk_10008C948;
    v54 = &v72;
    block[4] = self;
    v20 = v12;
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
        v23 = v13;
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

          (*(v15 + 2))(v15, 17, 0, 0, 0, 0);
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
          v35 = v15;
          v33 = self;
          v37 = v56;
          v38 = &v61;
          v43 = a6;
          v39 = v67;
          v34 = v14;
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
        v29 = v13;
        sub_100051FE4([v13 UTF8String], v78);
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

    (*(v15 + 2))(v15, v27, 0, 0, 0, 0);
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

  (*(v15 + 2))(v15, v16, 0, 0, 0, 0);
LABEL_9:
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);
}

- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 andClient:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  v18 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v18);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000126B4;
  v24[3] = &unk_10008CF88;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = a6;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  dispatch_async(opsQueue, v24);
}

- (void)_LIMakeDir:(id)a3 named:(id)a4 withAttrs:(id)a5 andClient:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
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
  v16 = [(smbMount *)self checkServerConnection];
  if (!v16)
  {
    if ([v14 length] <= 0xB7)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000524CC(v78, [v14 length]);
      }

      v16 = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012F28;
    block[3] = &unk_10008C948;
    v54 = &v67;
    block[4] = self;
    v20 = v12;
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
        v23 = v13;
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

          (*(v15 + 2))(v15, 17, 0, 0, 0, 0);
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
          v35 = v15;
          v33 = self;
          v37 = v56;
          v38 = &v61;
          v43 = a6;
          v39 = v73;
          v34 = v14;
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
        v29 = v13;
        sub_10005244C([v13 UTF8String], v78);
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

    (*(v15 + 2))(v15, v27, 0, 0, 0, 0);
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

  (*(v15 + 2))(v15, v16, 0, 0, 0, 0);
LABEL_9:
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v74, 8);

  _Block_object_dispose(v76, 8);
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  v13 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v13);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013C88;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(opsQueue, v18);
}

- (void)_LIGetFsAttr:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2810000000;
  v79 = "";
  v80 = 0;
  v11 = [(smbMount *)self checkServerConnection];
  if (v11)
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

  if ([v9 isEqualToString:@"_N_PC_LINK_MAX"])
  {
    v15 = v77;
    v77[4] = 1;
    v14 = [NSData dataWithBytes:v15 + 4 length:8];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

LABEL_81:
    v11 = 12;
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"_N_PC_NAME_MAX"])
  {
    v16 = v77;
    v77[4] = self->_shareInfo.maxComponentNameLen;
    v14 = [NSData dataWithBytes:v16 + 4 length:8];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([v9 isEqualToString:@"_B_PC_NO_TRUNC"])
  {
    v17 = v77;
    *(v77 + 32) = 0;
    v14 = [NSData dataWithBytes:v17 + 4 length:8];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([v9 isEqualToString:@"_N_PC_FILESIZEBITS"])
  {
    v18 = v77;
    v19 = 64;
    if (self->_share_fstype == 1)
    {
      v19 = 33;
    }

    v77[4] = v19;
    v14 = [NSData dataWithBytes:v18 + 4 length:8];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([v9 isEqualToString:@"_N_PC_XATTR_SIZE_BITS"])
  {
    if ((self->_shareInfo.fileSystemAttrs & 0x40000) != 0)
    {
      v20 = v77;
      v77[4] = 33;
      v14 = [NSData dataWithBytes:v20 + 4 length:8];
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

LABEL_25:
    v11 = 45;
LABEL_5:
    v13 = v10[2];
LABEL_6:
    v13(v10, v11, 0);
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"_N_f_bsize"])
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
    v71 = v10;
    v72 = &v76;
    v73 = &v81;
    [(smbMount *)self submitRequestBlock:v75 continuationBlock:v70];

LABEL_40:
    _Block_object_dispose(&v81, 8);
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"_N_f_iosize"])
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
    v65 = v10;
    v66 = &v76;
    v67 = &v81;
    [(smbMount *)self submitRequestBlock:v69 continuationBlock:v64];

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"_N_f_blocks"])
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
    v59 = v10;
    v60 = &v76;
    v61 = &v81;
    [(smbMount *)self submitRequestBlock:v63 continuationBlock:v58];

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"_N_f_bfree"])
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
    v53 = v10;
    v54 = &v76;
    v55 = &v81;
    [(smbMount *)self submitRequestBlock:v57 continuationBlock:v52];

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"_N_f_bavail"])
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
    v47 = v10;
    v48 = &v76;
    v49 = &v81;
    [(smbMount *)self submitRequestBlock:v51 continuationBlock:v46];

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"_N_f_bused"])
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
    v41 = v10;
    v42 = &v76;
    v43 = &v81;
    [(smbMount *)self submitRequestBlock:v45 continuationBlock:v40];

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"_S_f_type"])
  {
    v14 = [NSData dataWithBytes:"smb" length:4];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if ([v9 isEqualToString:@"_S_f_subtype"])
  {
    v14 = [NSData dataWithBytes:"SMB2" length:5];
    v13 = v10[2];
    if (v14)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (![v9 isEqualToString:@"_S_f_location"])
  {
    if ([v9 isEqualToString:@"_S_f_vol_name"])
    {
      v27 = [(smbMount *)self shareName];
      v28 = v27;
      v29 = [v27 UTF8String];

      v14 = [NSData dataWithBytes:v29 length:strlen(v29) + 1];
      v13 = v10[2];
      if (!v14)
      {
        v13(v10, 12, 0);
        goto LABEL_7;
      }

LABEL_80:
      v13(v10, 0, v14);
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"_B_has_perm_enforcement"])
    {
      v30 = v77;
      *(v77 + 32) = 1;
      v14 = [NSData dataWithBytes:v30 + 4 length:8];
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([v9 isEqualToString:@"_B_has_access_check"])
    {
      v31 = v77;
      *(v77 + 32) = 1;
      v14 = [NSData dataWithBytes:v31 + 4 length:8];
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([v9 isEqualToString:@"_N_caps_format"])
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
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([v9 isEqualToString:@"_N_mntflags"])
    {
      v36 = v77;
      v77[4] = 0;
      v36[4] = (self->_shareInfo.fileSystemAttrs & 0x40000) == 0;
      v14 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ([v9 isEqualToString:@"_N_caps_interfaces"])
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
      v13 = v10[2];
      if (v14)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    goto LABEL_25;
  }

  v21 = [(smbMount *)self userName];
  v22 = [(smbMount *)self serverName];
  v23 = [NSString stringWithFormat:@"%@@%@", v21, v22];

  v24 = v23;
  v25 = [v23 UTF8String];
  v14 = [NSData dataWithBytes:v25 length:strlen(v25) + 1];
  v26 = v10[2];
  if (v14)
  {
    v26(v10, 0, v14);
  }

  else
  {
    v26(v10, 12, 0);
  }

LABEL_8:
  _Block_object_dispose(&v76, 8);
}

- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 andClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

  v20 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v20);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015900;
  block[3] = &unk_10008D140;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v32 = v18;
  v33 = a7;
  v31 = v17;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(opsQueue, block);
}

- (void)_LIMakeSymLink:(id)a3 named:(id)a4 withContents:(id)a5 andAttrs:(id)a6 andClient:(unint64_t)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
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
  v19 = [(smbMount *)self checkServerConnection];
  if (!v19)
  {
    if ([v17 length] <= 0xB7)
    {
      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000529CC(v117, [v17 length]);
      }

      v19 = 22;
      goto LABEL_8;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001649C;
    block[3] = &unk_10008C948;
    v85 = &v102;
    block[4] = self;
    v23 = v14;
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
        v26 = v15;
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

          (*(v18 + 2))(v18, 17, 0, 0, 0, 0);
        }

        else
        {
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_1000165A0;
          v73[3] = &unk_10008CFB0;
          v78 = a7;
          v73[4] = self;
          v76 = &v102;
          v33 = v26;
          v74 = v33;
          v77 = v87;
          v34 = v18;
          v75 = v34;
          v35 = objc_retainBlock(v73);
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100016748;
          v59[3] = &unk_10008D1E0;
          v66 = &v102;
          v36 = v16;
          v60 = v36;
          v67 = &v108;
          v37 = v34;
          v64 = v37;
          v68 = &v96;
          v38 = v33;
          v61 = v38;
          v69 = &v92;
          v70 = v112;
          v62 = v17;
          v63 = self;
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
        v32 = v15;
        sub_10005294C([v15 UTF8String], v117);
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

    (*(v18 + 2))(v18, v30, 0, 0, 0, 0);
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

  (*(v18 + 2))(v18, v19, 0, 0, 0, 0);
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

- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v10);

  v11 = [(smbMount *)self opsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017418;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

- (void)_LIPathConf:(id)a3 reply:(id)a4
{
  v5 = a4;
  v15 = 0;
  v6 = [(smbMount *)self checkServerConnection];
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052D5C();
    }

    v5[2](v5, v7, 0);
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

    (v5)[2](v5, v12, v13);
  }
}

- (void)LIRead:(id)a3 atOffset:(unint64_t)a4 withPointer:(char *)a5 length:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

  v15 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v15);

  opsQueue = self->_opsQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100017790;
  v19[3] = &unk_10008D2A8;
  v19[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = a4;
  v17 = v13;
  v18 = v12;
  dispatch_async(opsQueue, v19);
}

- (void)_LIRead:(id)a3 atOffset:(unint64_t)a4 withPointer:(char *)a5 length:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a7;
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
  v14 = [(smbMount *)self checkServerConnection];
  if (!v14)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017D1C;
    block[3] = &unk_10008C948;
    v31 = &v43;
    block[4] = self;
    v17 = v12;
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
      v19 = [v18 fileRefSyncQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100017D78;
      v28[3] = &unk_10008CD08;
      v28[4] = &v37;
      v28[5] = &v43;
      dispatch_sync(v19, v28);

      v20 = v38[5];
      if (v20)
      {
        v21 = [v20 fidCtx];
        if (v21)
        {
          v22 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
          [(smbMount *)self readRequest:v17 bptr:a5 smbNode:v44[5] fileRef:v38[5] rdparamPtr:v22 result:0 thisOffset:a4 bytesRemain:a6 bytesRead:0 pass:0 reply:v13];
LABEL_20:

          goto LABEL_21;
        }

        v25 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v26 = [v44[5] name];
          v27 = v26;
          [v26 UTF8String];
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

    v13[2](v13, v23, 0);
    v21 = 0;
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

  v13[2](v13, v14, 0);
LABEL_21:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

- (void)readRequest:(id)a3 bptr:(char *)a4 smbNode:(id)a5 fileRef:(id)a6 rdparamPtr:(smb_read_write *)a7 result:(int)a8 thisOffset:(unint64_t)a9 bytesRemain:(unint64_t)a10 bytesRead:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a13;
  v21 = [(smbMount *)self readwriteSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F34;
  block[3] = &unk_10008D320;
  v40 = a8;
  v33 = v20;
  v34 = a10;
  v35 = a7;
  v36 = a11;
  v29 = v19;
  v30 = self;
  v37 = a4;
  v38 = a9;
  v39 = a12;
  v31 = v18;
  v32 = v17;
  v22 = v17;
  v23 = v18;
  v24 = v20;
  v25 = v19;
  dispatch_async(v21, block);
}

- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000B2A0;
  v20[4] = sub_10000B2B0;
  v14 = v12;
  v21 = v14;
  v15 = [v14 mutableBytes];
  if (v15)
  {
    v16 = [v14 length];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000184B4;
    v17[3] = &unk_10008D348;
    v18 = v13;
    v19 = v20;
    [(smbMount *)self LIRead:v11 atOffset:a4 withPointer:v15 length:v16 reply:v17];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052FA8();
    }

    (*(v13 + 2))(v13, 12, 0);
  }

  _Block_object_dispose(v20, 8);
}

- (void)readFrom:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = [NSMutableData dataWithLength:a4];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mutableBytes];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018658;
    v16[3] = &unk_10008D370;
    v17 = v14;
    v19 = a4;
    v18 = v12;
    [(smbMount *)self LIRead:v11 atOffset:a5 withPointer:v15 length:a4 reply:v16];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005302C();
    }

    (*(v12 + 2))(v12, 12, 0);
  }
}

- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v10);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001880C;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(opsQueue, block);
}

- (void)_LIReadLink:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(smbMount *)self checkServerConnection];
  if (!v8)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018E84;
    block[3] = &unk_10008C948;
    v38 = &v44;
    block[4] = self;
    v11 = v6;
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
          v14 = [v45[5] symlinkTargetCache];
          v15 = v51[5];
          v51[5] = v14;

          if (v51[5])
          {
            v16 = v45[5];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_100018EE0;
            v32[3] = &unk_10008D398;
            v32[4] = self;
            v34 = &v44;
            v33 = v7;
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
            v28 = v7;
            [(smbMount *)self submitRequestBlockOnce:v31 continuationBlock:v27];
          }

          goto LABEL_23;
        }

        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v25 = [v45[5] name];
          v26 = v25;
          [v25 UTF8String];
          sub_1000530F4();
        }

        v19 = 22;
LABEL_22:

        (*(v7 + 2))(v7, v19, 0, 0);
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

  (*(v7 + 2))(v7, v8, 0, 0);
LABEL_24:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
}

- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v11 = a4;
  v12 = a5;
  v13 = a8;
  v14 = dispatch_time(0, 15000000000);
  v15 = [(smbMount *)self opsSyncGroup];
  v16 = dispatch_group_wait(v15, v14);

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053254();
    }

    (*(v13 + 2))(v13, 60, 0, 0, 0, &stru_10008EA58, 0, 0);
  }

  else
  {
    v17 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    v18 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_enter(v18);

    opsQueue = self->_opsQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100019554;
    v20[3] = &unk_10008D0C8;
    v20[4] = self;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    dispatch_sync(opsQueue, v20);
  }
}

- (void)_LIRemove:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [(smbMount *)self checkServerConnection];
  if (!v11)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019C2C;
    block[3] = &unk_10008C948;
    v39 = &v55;
    block[4] = self;
    v14 = v8;
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
        v16 = v9;
        v32 = v16;
        v36 = v47;
        v17 = v10;
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
    (*(v10 + 2))(v10, v21, 0, 0, 0, &stru_10008EA58, 0);
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

  (*(v10 + 2))(v10, v11, 0, 0, 0, &stru_10008EA58, 0);
LABEL_22:
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
}

- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v11 = a4;
  v12 = a5;
  v13 = a8;
  v14 = dispatch_time(0, 15000000000);
  v15 = [(smbMount *)self opsSyncGroup];
  v16 = dispatch_group_wait(v15, v14);

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000534F4();
    }

    (*(v13 + 2))(v13, 60, 0, 0, 0, &stru_10008EA58, 0, 0);
  }

  else
  {
    v17 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    v18 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_enter(v18);

    v19 = [(smbMount *)self opsQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A568;
    v20[3] = &unk_10008D0C8;
    v20[4] = self;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    dispatch_sync(v19, v20);
  }
}

- (void)_LIRemoveDir:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [(smbMount *)self checkServerConnection];
  if (!v11)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AC30;
    block[3] = &unk_10008C948;
    v45 = &v59;
    block[4] = self;
    v14 = v8;
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
        v16 = v9;
        v38 = v16;
        v17 = v10;
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
        v33 = self;
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
        v27 = v9;
        sub_1000535CC([v9 UTF8String], v65);
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

    (*(v10 + 2))(v10, v25, 0, 0, 0, &stru_10008EA58, 0);
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

  (*(v10 + 2))(v10, v11, 0, 0, 0, &stru_10008EA58, 0);
LABEL_28:
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

- (void)renameItemIn:(id)a3 named:(id)a4 toDirectory:(id)a5 newName:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  if (a7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053764();
    }

    v27 = 0;
    v25 = 0;
    (*(v18 + 2))(v18, 45, 0, 0, 0, 0, 0, 0, v25, 0, 0, v27, 0);
  }

  else
  {
    v19 = dispatch_time(0, 15000000000);
    v20 = [(smbMount *)self opsSyncGroup];
    v21 = dispatch_group_wait(v20, v19);

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000537F4();
      }

      v28 = 0;
      v26 = 0;
      (*(v18 + 2))(v18, 60, 0, 0, 0, 0, 0, 0, v26, 0, 0, v28, 0);
    }

    else
    {
      v22 = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

      v23 = [(smbMount *)self namespaceChangingGroup];
      dispatch_group_enter(v23);

      v24 = [(smbMount *)self opsQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B5F8;
      block[3] = &unk_10008D5F0;
      block[4] = self;
      v30 = v14;
      v31 = v15;
      v32 = v16;
      v33 = v17;
      v35 = 0;
      v34 = v18;
      dispatch_sync(v24, block);
    }
  }
}

- (void)_LIRename:(id)a3 name:(id)a4 toDir:(id)a5 andName:(id)a6 withFlags:(unsigned int)a7 reply:(id)a8
{
  v71 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
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

  v17 = [(smbMount *)self checkServerConnection];
  if (!v17)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C434;
    block[3] = &unk_10008C948;
    v107 = &v138;
    block[4] = self;
    v20 = v71;
    v106 = v20;
    v108 = &v116;
    dispatch_sync(nodeTableSyncQueue, block);
    v21 = *(v117 + 24);
    if (v139[5])
    {
      if ((v117[3] & 1) == 0)
      {
        v22 = [v20 isEqualToString:v14];
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
        v102 = v14;
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
            v28 = v13;
            v100[5] = v28;
            dispatch_sync(v27, v100);
            v29 = v133[5];
            if (v29)
            {
              v30 = v178;
              v31 = [v29 getSmbFattr];
              v32 = *v31;
              v33 = v31[2];
              *(v30 + 3) = v31[1];
              *(v30 + 4) = v33;
              *(v30 + 2) = v32;
              v34 = v31[3];
              v35 = v31[4];
              v36 = v31[6];
              *(v30 + 7) = v31[5];
              *(v30 + 8) = v36;
              *(v30 + 5) = v34;
              *(v30 + 6) = v35;
              v37 = v31[7];
              v38 = v31[8];
              v39 = v31[10];
              *(v30 + 11) = v31[9];
              *(v30 + 12) = v39;
              *(v30 + 9) = v37;
              *(v30 + 10) = v38;
              v40 = v31[11];
              v41 = v31[12];
              v42 = v31[14];
              *(v30 + 15) = v31[13];
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
            v45 = v15;
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
              v51 = [v49 getSmbFattr];
              v52 = *v51;
              v53 = v51[2];
              *(v50 + 3) = v51[1];
              *(v50 + 4) = v53;
              *(v50 + 2) = v52;
              v54 = v51[3];
              v55 = v51[4];
              v56 = v51[6];
              *(v50 + 7) = v51[5];
              *(v50 + 8) = v56;
              *(v50 + 5) = v54;
              *(v50 + 6) = v55;
              v57 = v51[7];
              v58 = v51[8];
              v59 = v51[10];
              *(v50 + 11) = v51[9];
              *(v50 + 12) = v59;
              *(v50 + 9) = v57;
              *(v50 + 10) = v58;
              v60 = v51[11];
              v61 = v51[12];
              v62 = v51[14];
              *(v50 + 15) = v51[13];
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
                v75 = v16;
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

            (*(v16 + 2))(v16, v67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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
        (*(v16 + 2))(v16, v66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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
    (*(v16 + 2))(v16, v24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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

  (*(v16 + 2))(v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
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

- (void)setAttrInternalLocked:(id)a3 setAttrs:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = v9;
  v12 = [v9 bytes];
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v50 = v12[2];
  v51 = v15;
  v48 = v13;
  v49 = v14;
  v16 = v12[4];
  v17 = v12[5];
  v18 = v12[7];
  v54 = v12[6];
  v55 = v18;
  v52 = v16;
  v53 = v17;
  v19 = v12[8];
  v20 = v12[9];
  v21 = v12[10];
  v59 = *(v12 + 22);
  v57 = v20;
  v58 = v21;
  v56 = v19;
  if (!*(v47[0] + 40))
  {
    v27 = 0;
LABEL_7:
    v10[2](v10, v27);
    goto LABEL_13;
  }

  v22 = [v8 getSmbFattr];
  v61[3] = v22;
  v23 = *(v47[0] + 40);
  *(v47[0] + 40) = v23 & 0xFFFFFFFFFFFFFFFDLL;
  if ((v23 & 0x184) != 0)
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v25 = [v8 name];
      v26 = v25;
      sub_100053D5C([v25 UTF8String], v47, v66, v25);
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
  v28 = v8;
  v40 = v28;
  v44 = &v60;
  v45 = 0;
  v29 = v10;
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

- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  v13 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v13);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001E318;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(opsQueue, v18);
}

- (void)_LISetAttr:(id)a3 setAttrs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [(smbMount *)self checkServerConnection];
  if (v11)
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

    (*(v10 + 2))(v10, v11, 0, 0, 0, 0, 0, 2);
    goto LABEL_9;
  }

  if ([v9 length] <= 0xB7)
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053F4C(location, [v9 length]);
    }

    v11 = 22;
    goto LABEL_8;
  }

  nodeTableSyncQueue = self->_nodeTableSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E8D8;
  block[3] = &unk_10008C948;
  v26 = &v32;
  block[4] = self;
  v25 = v8;
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

    (*(v10 + 2))(v10, v17, 0, 0, 0, 0, 0, 2);
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
    v19 = v10;
    v22 = v39;
    [(smbMount *)self setAttrInternalLocked:v16 setAttrs:v9 CompletionHandler:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

LABEL_9:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v10);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EDB0;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(opsQueue, block);
}

- (void)_LIStatFS:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(smbMount *)self checkServerConnection];
  if (v8)
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

    v7[2](v7, v8, 0);
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
    v18 = v6;
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

      v7[2](v7, v12, 0);
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
      v14 = v7;
      v15 = v31;
      [(smbMount *)self submitRequestBlock:v16 continuationBlock:v13];
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(v31, 8);
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

  v15 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v15);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F578;
  block[3] = &unk_10008C920;
  block[4] = self;
  v21 = v11;
  v23 = v13;
  v24 = a4;
  v22 = v12;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(opsQueue, block);
}

- (void)_LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
  v13 = [(smbMount *)self checkServerConnection];
  if (!v13)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001FB40;
    block[3] = &unk_10008C948;
    v32 = &v44;
    block[4] = self;
    v16 = v10;
    v31 = v16;
    v33 = &v34;
    dispatch_sync(nodeTableSyncQueue, block);
    v17 = v45[5];
    v18 = *(v35 + 24);
    if (v17)
    {
      if ((v35[3] & 1) == 0)
      {
        v19 = [v17 fileRefSyncQueue];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10001FB9C;
        v29[3] = &unk_10008CD08;
        v29[4] = &v38;
        v29[5] = &v44;
        dispatch_sync(v19, v29);

        v20 = v39[5];
        if (v20)
        {
          v21 = [v20 fidCtx];
          v22 = v21 == 0;

          if (!v22)
          {
            v23 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
            -[smbMount writeRequest:withBuffer:smbNode:fileRef:wrparamPtr:result:thisOffset:bytesWritten:bytesRemain:pass:reply:](self, "writeRequest:withBuffer:smbNode:fileRef:wrparamPtr:result:thisOffset:bytesWritten:bytesRemain:pass:reply:", v16, v11, v45[5], v39[5], v23, 0, a4, 0, [v11 length], 0, v12);
LABEL_24:

            goto LABEL_25;
          }

          v26 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v27 = [v45[5] name];
            v28 = v27;
            [v27 UTF8String];
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
        v12[2](v12, v24, 0);
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

  v12[2](v12, v13, 0);
LABEL_25:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

- (void)writeRequest:(id)a3 withBuffer:(id)a4 smbNode:(id)a5 fileRef:(id)a6 wrparamPtr:(smb_read_write *)a7 result:(int)a8 thisOffset:(unint64_t)a9 bytesWritten:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a13;
  v23 = [(smbMount *)self readwriteSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD7C;
  block[3] = &unk_10008D8E8;
  v42 = a8;
  v37 = a11;
  v38 = a7;
  v31 = v21;
  v32 = v20;
  v33 = self;
  v34 = v19;
  v39 = a10;
  v40 = a9;
  v41 = a12;
  v35 = v18;
  v36 = v22;
  v24 = v18;
  v25 = v19;
  v26 = v22;
  v27 = v20;
  v28 = v21;
  dispatch_async(v23, block);
}

- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  v13 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v13);

  opsQueue = self->_opsQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100020340;
  v18[3] = &unk_10008D0C8;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(opsQueue, v18);
}

- (void)_LIGetXattr:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [(smbMount *)self checkServerConnection];
  if (!v11)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000209A8;
    block[3] = &unk_10008C948;
    v43 = &v59;
    block[4] = self;
    v14 = v8;
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
          v22 = [v15 xattrCache];
          v65[0] = 0;
          v23 = [v22 dataForName:v9 wasNegative:v65];
          if (v23)
          {
            v10[2](v10, 0, v23);
          }

          else if (v65[0] == 1)
          {
            v10[2](v10, 93, 0);
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
            v36 = v9;
            v37 = self;
            v39 = &v53;
            v40 = &v49;
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100020B0C;
            v27[3] = &unk_10008D988;
            v32 = &v53;
            v28 = v22;
            v29 = v36;
            v33 = &v59;
            v34 = &v49;
            v30 = self;
            v31 = v10;
            [(smbMount *)self submitRequestBlock:v35 continuationBlock:v27];
          }

          goto LABEL_18;
        }

        v17 = 93;
LABEL_17:
        v10[2](v10, v17, 0);
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

  v10[2](v10, v11, 0);
LABEL_19:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  v18 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v18);

  opsQueue = self->_opsQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000210CC;
  v24[3] = &unk_10008D9D8;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v29 = a6;
  v28 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  dispatch_async(opsQueue, v24);
}

- (void)_LISetXattr:(id)a3 name:(id)a4 value:(id)a5 how:(int)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
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
  v16 = [(smbMount *)self checkServerConnection];
  if (!v16)
  {
    v62[3] = 0;
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002187C;
    block[3] = &unk_10008C948;
    v52 = &v65;
    block[4] = self;
    v51 = v12;
    v53 = &v56;
    dispatch_sync(nodeTableSyncQueue, block);
    v19 = v66[5];
    v20 = *(v57 + 24);
    if (v19)
    {
      if ((v57[3] & 1) == 0)
      {
        v21 = [v19 xattrCache];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000218D8;
        v44[3] = &unk_10008DA00;
        v46 = &v61;
        v47 = &v65;
        v48 = v54;
        v49 = v60;
        v45 = v15;
        v22 = objc_retainBlock(v44);
        if (a6 >= 3)
        {
          if (a6 != 3)
          {
LABEL_20:

            goto LABEL_21;
          }

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100021C10;
          v30[3] = &unk_10008D528;
          v31[1] = &v65;
          v31[0] = v13;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100021CD8;
          v25[3] = &unk_10008D960;
          v29 = &v65;
          v26 = v31[0];
          v27 = v21;
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
          v43 = a6;
          v40[0] = v13;
          v40[1] = self;
          v41 = v14;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100021BA4;
          v32[3] = &unk_10008DA50;
          v37 = &v65;
          v33 = v40[0];
          v38 = a6;
          v34 = v21;
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
    (*(v15 + 2))(v15, v24, 0, 0, 0, 0, 2);
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

  (*(v15 + 2))(v15, v16, 0, 0, 0, 0, 2);
LABEL_22:
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
}

- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v10);

  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E50;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(opsQueue, block);
}

- (void)_LIListXattrs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(smbMount *)self checkServerConnection];
  if (!v8)
  {
    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000223A4;
    block[3] = &unk_10008C948;
    v27 = &v35;
    block[4] = self;
    v11 = v6;
    v26 = v11;
    v28 = &v29;
    dispatch_sync(nodeTableSyncQueue, block);
    v12 = v36[5];
    v13 = *(v30 + 24);
    if (v12)
    {
      if ((v30[3] & 1) == 0)
      {
        v14 = [v12 xattrCache];
        if ([v14 noXattrsPresent])
        {
          v7[2](v7, 0, &__NSArray0__struct);
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
          v22 = v7;
          v21 = v14;
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

    v7[2](v7, v17, 0);
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

  v7[2](v7, v8, 0);
LABEL_20:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(&v35, 8);
}

- (void)search:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 forClient:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

  v20 = [(smbMount *)self searchObjects];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002285C;
  v35[3] = &unk_10008DAE8;
  v35[4] = a7;
  [v20 enumerateKeysAndObjectsUsingBlock:v35];

  v21 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v21);

  opsQueue = self->_opsQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000228B8;
  v28[3] = &unk_10008D140;
  v28[4] = self;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v33 = v18;
  v34 = a7;
  v32 = v17;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
  dispatch_async(opsQueue, v28);
}

- (void)_LISearch:(id)a3 token:(id)a4 criteria:(id)a5 returnProxy:(id)a6 withCallerID:(unint64_t)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
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
  v19 = [(smbMount *)self checkServerConnection];
  if (!v19)
  {
    v22 = [(smbMount *)self searchLock];
    [v22 lock];

    v23 = [(smbMount *)self searchObjects];
    v21 = [v23 objectForKey:v15];

    v24 = [(smbMount *)self searchLock];
    [v24 unlock];

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100054AAC();
      }

      v18[2](v18, 17);
      goto LABEL_9;
    }

    nodeTableSyncQueue = self->_nodeTableSyncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023730;
    block[3] = &unk_10008C948;
    v77 = &v85;
    block[4] = self;
    v28 = v14;
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
          v32 = [(smbMount *)self shareName];
          v26 = [v31 initWithFormat:@"%@", v32];
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

            v18[2](v18, 12);
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

            v18[2](v18, 12);
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
            v18[2](v18, v40);
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

          v43 = [(smbMount *)self serverName];
          [v72 setServerName:v43];

          v44 = [(smbMount *)self userName];
          [v72 setUserName:v44];

          [v72 setClientMachineName:v71];
          [v72 setSearchPath:v26];
          v45 = [(smbMount *)self pd];
          [(smbSearchContext *)v21 setPd:v45];

          [(smbSearchContext *)v21 setSearchToken:v15];
          [(smbSearchContext *)v21 setCallerID:a7];
          [(smbSearchContext *)v21 setHandler:v17];
          [(smbSearchContext *)v21 setWctx:v72];
          if ([(smbSearchContext *)v21 parseSearchCriteria:v16])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100054C34();
            }

            v46 = 12;
LABEL_54:
            v18[2](v18, v46);
            goto LABEL_55;
          }

          v46 = [(smbSearchContext *)v21 doTreeConnect];
          if (v46)
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
            v18[2](v18, v47);
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

              v67 = [(smbMount *)self searchLock];
              [v67 lock];

              v68 = [(smbMount *)self searchObjects];
              v60 = [(smbSearchContext *)v21 searchToken];
              [v68 setObject:v21 forKey:v60];

              v69 = [(smbMount *)self searchLock];
              [v69 unlock];

              v18[2](v18, 0);
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

                  v49 = [(smbSearchContext *)v21 searchRows];
                  v61 = v49 == 0;

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
                      v62 = [(smbSearchContext *)v21 searchRows];
                      v58 = [v62 rows];
                      v51 = [v58 count];
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
              v63 = [(smbMount *)self searchLock];
              [v63 lock];

              v64 = [(smbMount *)self searchObjects];
              v59 = [(smbSearchContext *)v21 searchToken];
              [v64 removeObjectForKey:v59];

              v52 = [(smbMount *)self searchLock];
              [v52 unlock];

              v53 = [(smbSearchContext *)v21 searchLock];
              [v53 lock];

              LOBYTE(v53) = [(smbSearchContext *)v21 isAborted];
              v54 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
              if (v53)
              {
                if (v54)
                {
                  sub_100055138();
                }

                v55 = [(smbSearchContext *)v21 handler];
                [v55 tokenDone:89];

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

                v56 = [(smbSearchContext *)v21 handler];
                [v56 tokenDone:v70];

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000550F4();
                }
              }

              [(smbSearchContext *)v21 setIsFinished:1];
              v57 = [(smbSearchContext *)v21 searchLock];
              [v57 unlock];

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

          v18[2](v18, v66);
LABEL_57:

          goto LABEL_10;
        }

        v65 = [smb_subr makeWindowsPath:v86[5] withName:0];
        if (v65)
        {
          v38 = [NSString alloc];
          v32 = [(smbMount *)self shareName];
          v26 = [v38 initWithFormat:@"%@/%@", v32, v65];
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

        v18[2](v18, v35);
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

  v18[2](v18, v19);
  v21 = 0;
LABEL_9:
  v25 = 0;
  v26 = 0;
LABEL_10:
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v85, 8);
}

- (void)replenishSearchCreditsFor:(id)a3 credits:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  opsQueue = self->_opsQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023860;
  v14[3] = &unk_10008CC68;
  v14[4] = self;
  v15 = v9;
  v17 = a4;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(opsQueue, v14);
}

- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  opsQueue = self->_opsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023AD8;
  block[3] = &unk_10008CBF0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(opsQueue, block);
}

- (void)_LISearchAbort:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(smbMount *)self searchLock];
  [v8 lock];

  v9 = [(smbMount *)self searchObjects];
  v12 = [v9 objectForKey:v7];

  if (v12)
  {
    [v12 setSearchAborted];
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(smbMount *)self searchLock];
  [v11 unlock];

  v6[2](v6, v10);
}

- (void)abortAllClientSearchesFor:(unint64_t)a3
{
  opsQueue = self->_opsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023CD4;
  v4[3] = &unk_10008C8A8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(opsQueue, v4);
}

- (void)_LISearchAbortAllClientSearches:(unint64_t)a3
{
  v5 = [(smbMount *)self searchLock];
  [v5 lock];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "LISearchAbortAllClientSearches- stopping all live searches for client %llu", buf, 0xCu);
  }

  v6 = [(smbMount *)self searchObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023E1C;
  v8[3] = &unk_10008DB08;
  v8[4] = a3;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  v7 = [(smbMount *)self searchLock];
  [v7 unlock];
}

- (void)checkAccessTo:(id)a3 requestedAccess:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(smbMount *)self namespaceChangingGroup];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  v12 = [(smbMount *)self opsSyncGroup];
  dispatch_group_enter(v12);

  opsQueue = self->_opsQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100023F8C;
  v16[3] = &unk_10008CC68;
  v16[4] = self;
  v17 = v9;
  v19 = a4;
  v18 = v10;
  v14 = v10;
  v15 = v9;
  dispatch_async(opsQueue, v16);
}

- (void)_LIAccessCheck:(id)a3 requestedAccess:(unsigned int)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v10 = [(smbMount *)self checkServerConnection];
  if (v10)
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

    v9[2](v9, v10);
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
    v26 = v8;
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

      v9[2](v9, v15);
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000244D8;
      v21[3] = &unk_10008DB30;
      v24 = a4;
      v23 = &v37;
      v21[4] = self;
      v22 = v9;
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

- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = dispatch_time(0, 15000000000);
  v14 = [(smbMount *)self opsSyncGroup];
  v15 = dispatch_group_wait(v14, v13);

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055C6C();
    }

    v12[2](v12, 0);
  }

  else
  {
    v16 = [(smbMount *)self namespaceChangingGroup];
    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

    opsQueue = self->_opsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100024B0C;
    block[3] = &unk_10008DBA8;
    block[4] = self;
    v22 = a4;
    v19 = v11;
    v21 = a5;
    v20 = v12;
    dispatch_async(opsQueue, block);
  }
}

- (void)_LISetUpdateInterest:(id)a3 interest:(BOOL)a4 forClient:(unint64_t)a5 reply:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  location = 0;
  v12 = self;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10000B2A0;
  v43[4] = sub_10000B2B0;
  v31 = v10;
  v44 = v31;
  if ([(smbMount *)v12 checkServerConnection])
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [(smbMount *)v12 serverName];
      objc_claimAutoreleasedReturnValue();
      [(smbMount *)v12 shareName];
      objc_claimAutoreleasedReturnValue();
      sub_100055CB0();
    }

    v14 = getNSErrorFromLiveFSErrno();
    v11[2](v11, v14);
    goto LABEL_5;
  }

  v16 = ~a5;
  if (![v31 isEqualToString:LIUpdateNSFileProviderRootContainerItemIdentifier])
  {
    v17 = [(NSMutableDictionary *)v12->_handleTable objectForKey:v31];
    v15 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    if (v8)
    {
      [v17 setInterestedClients:{objc_msgSend(v17, "interestedClients") | a5}];
      if ([v15 isDir])
      {
        objc_storeWeak(&location, v15);
        v18 = [NSString alloc];
        v19 = [v15 name];
        v20 = [v18 initWithString:v19];

        v21 = v38;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100025154;
        v38[3] = &unk_10008CC40;
        v22 = v20;
        v38[4] = v22;
        v38[5] = v11;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100025204;
        v33[3] = &unk_10008DBF8;
        v14 = v22;
        v34 = v14;
        v35 = v12;
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
        v29 = [v15 name];
        v30 = [v28 initWithString:v29];

        v21 = v32;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100025394;
        v32[3] = &unk_10008CC40;
        v14 = v30;
        v32[4] = v14;
        v32[5] = v11;
        [v15 clearChangeNotify:1 completionHandler:v32];
        goto LABEL_26;
      }
    }

LABEL_27:
    v11[2](v11, 0);
    goto LABEL_7;
  }

  if (!v8)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [(NSMutableDictionary *)v12->_handleTable allKeys];
    v15 = 0;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v46 count:16];
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
            objc_enumerationMutation(v23);
          }

          v15 = [(NSMutableDictionary *)v12->_handleTable objectForKey:*(*(&v39 + 1) + 8 * v26)];

          [v15 setInterestedClients:{objc_msgSend(v15, "interestedClients") & v16}];
          v26 = v26 + 1;
          v27 = v15;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v24);
    }

    goto LABEL_27;
  }

LABEL_10:
  v14 = getNSErrorFromLiveFSErrno();
  v11[2](v11, v14);
LABEL_5:
  v15 = 0;
LABEL_6:

LABEL_7:
  _Block_object_dispose(v43, 8);

  objc_destroyWeak(&location);
}

- (int)connectionState
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_assert_queue_not_V2(self->_connectionSyncQueue);
  connectionSyncQueue = v2->_connectionSyncQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025538;
  v5[3] = &unk_10008DC20;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(connectionSyncQueue, v5);
  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_setConnectionState:(int)a3
{
  connectionSyncQueue = self->_connectionSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000255D4;
  v4[3] = &unk_10008DC48;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(connectionSyncQueue, v4);
}

- (void)SetShutDownReason:(int)a3
{
  connectionSyncQueue = self->_connectionSyncQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002566C;
  v4[3] = &unk_10008DC48;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(connectionSyncQueue, v4);
}

- (void)_submitRequestBlock:(id)a3 continuationBlock:(id)a4 allowRetries:(BOOL)a5
{
  v8 = a3;
  atomic_fetch_add(&self->_pendingRequests, 1uLL);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002588C;
  v16[3] = &unk_10008CC40;
  v16[4] = self;
  v9 = objc_retainBlock(a4);
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
    v14 = v8;
    v15 = a5;
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
  v3 = [(smbMount *)self connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000260D4;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(v3, block);
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
  v3 = [(smbMount *)self connectionState];
  v4 = &_os_log_default;
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v3 != 2)
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
  v15 = [(smbMount *)self mountURL];
  v92 = 0;
  v7 = [v14 getPasswordForIdentifier:v15 error:&v92];
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
              v82 = [(smbMount *)self serverName];
              v83 = [(smbMount *)self shareName];
              *buf = v84;
              *&buf[4] = v18;
              *&buf[8] = 2048;
              *&buf[10] = v21;
              *&buf[18] = 2112;
              *&buf[20] = v82;
              *&buf[28] = 2112;
              *&buf[30] = v83;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: pass: %u, reconnect timed out after %ld seconds on server: %@, share: %@ \n", buf, 0x26u);
            }

            goto LABEL_18;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v35 = [(smbMount *)self serverName];
            v36 = [(smbMount *)self shareName];
            *buf = 67109634;
            *&buf[4] = v18;
            *&buf[8] = 2112;
            *&buf[10] = v35;
            *&buf[18] = 2112;
            *&buf[20] = v36;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reconnectSession: starting pass: %u on server: %@, share: %@ \n", buf, 0x1Cu);
          }

          v23 = [(smbMount *)self serverName];
          v24 = [smb_subr sendNegotiate:v6 Server:v23 netBIOSName:0 VPNCookie:0 Result:&v118];

          if (!v24)
          {
            break;
          }

          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v48 = v118;
            v49 = [(smbMount *)self serverName];
            v50 = [(smbMount *)self shareName];
            *buf = v84;
            *&buf[4] = v24;
            *&buf[8] = 1024;
            *&buf[10] = v48;
            *&buf[14] = 2112;
            *&buf[16] = v49;
            *&buf[24] = 2112;
            *&buf[26] = v50;
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
          v27 = [(smbMount *)self userName];
          v28 = [smb_subr sendSessionSetup:v6 User:v27 Password:0 Realm:0 Param:&v102];
LABEL_52:

          goto LABEL_53;
        }

        if ((v121 & 2) != 0)
        {
          v29 = objc_opt_new();
          v30 = [v29 realms];

          v31 = [(smbMount *)self userDomain];
          if (!v31 || (v32 = [v30 count] == 0, v31, v32))
          {
          }

          else
          {
            LODWORD(v102) = 8;
            userName = self->_userName;
            v34 = [(smbMount *)self userDomain];
            v28 = [smb_subr sendSessionSetup:v6 User:userName Password:v7 Realm:v34 Param:&v102];

            if (v28 != 80)
            {
              goto LABEL_53;
            }
          }
        }

        if ((v121 & 0x44) == 0 || (LODWORD(v102) = 2, [(smbMount *)self userName], v37 = objc_claimAutoreleasedReturnValue(), v28 = [smb_subr sendSessionSetup:v6 User:v37 Password:v7 Realm:@"WELLKNOWN:COM.APPLE.LKDC" Param:&v102], v37, v28 == 80))
        {
          LODWORD(v102) = 4;
          v27 = [(smbMount *)self userName];
          v38 = [(smbMount *)self userDomain];
          v28 = [smb_subr sendSessionSetup:v6 User:v27 Password:v7 Realm:v38 Param:&v102];

          goto LABEL_52;
        }

LABEL_53:
        if (v28)
        {
          v39 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v55 = v103;
            v56 = [(smbMount *)self serverName];
            v57 = [(smbMount *)self shareName];
            *buf = v84;
            *&buf[4] = v28;
            *&buf[8] = 1024;
            *&buf[10] = v55;
            *&buf[14] = 2112;
            *&buf[16] = v56;
            *&buf[24] = 2112;
            *&buf[26] = v57;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "reconnectSession: sendSessionSetup error: %u, ntstatus: 0x%x on server: %@, share: %@ \n", buf, 0x22u);
          }
        }

        else
        {
          v40 = [(smbMount *)self shareName];
          v41 = [smb_subr sendTreeConnect:v6 ShareName:v40 Param:&v99];

          if (v41)
          {
            v42 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v60 = v99;
              v61 = [(smbMount *)self serverName];
              v62 = [(smbMount *)self shareName];
              *buf = v84;
              *&buf[4] = v41;
              *&buf[8] = 1024;
              *&buf[10] = v60;
              *&buf[14] = 2112;
              *&buf[16] = v61;
              *&buf[24] = 2112;
              *&buf[26] = v62;
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
                v46 = [(smbMount *)self serverName];
                v47 = [(smbMount *)self shareName];
                *buf = v84;
                *&buf[4] = v43;
                *&buf[8] = 1024;
                *&buf[10] = v45;
                *&buf[14] = 2112;
                *&buf[16] = v46;
                *&buf[24] = 2112;
                *&buf[26] = v47;
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
                  v53 = [(smbMount *)self serverName];
                  v54 = [(smbMount *)self shareName];
                  *buf = 67109634;
                  *&buf[4] = v51;
                  *&buf[8] = 2112;
                  *&buf[10] = v53;
                  *&buf[18] = 2112;
                  *&buf[20] = v54;
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
                  v63 = [(smbMount *)self serverName];
                  v64 = [(smbMount *)self shareName];
                  *buf = 67109634;
                  *&buf[4] = v58;
                  *&buf[8] = 2112;
                  *&buf[10] = v63;
                  *&buf[18] = 2112;
                  *&buf[20] = v64;
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

    v68 = [(smbMount *)self connectionState];
    v69 = &_os_log_default;
    v70 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v68 == 2)
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
      v71 = [(smbMount *)self modelName];
      [v71 setString:v87];

      v72 = [(smbMount *)self fsName];
      [v72 setString:v86];

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
        v80 = [(smbMount *)self connQueue];
        dispatch_resume(v80);
      }

      else
      {
        v80 = &_os_log_default;
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

  v10 = [(smbMount *)self connectionState];
  v11 = &_os_log_default;
  v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v10 != 2)
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

  v3 = [(smbMount *)self connQueue];
  dispatch_resume(v3);

  v4 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027FB4;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(v4, block);
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
          v21 = [(smbMount *)self serverName];
          v22 = [(smbMount *)self shareName];
          v23 = [(smbMount *)self connState];
          *buf = 138413314;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          *&buf[22] = 1024;
          *&buf[24] = v23;
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
    v18 = [(smbMount *)self mountURL];
    v15 = [v17 ejectVolumeForURL:v18 share:self->_shareName how:13];

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
  v3 = [(smbMount *)self connQueue];
  dispatch_resume(v3);

  v4 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BAC;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(v4, block);
}

- (void)flushEIOCancelWait
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056D90();
  }

  [(smbMount *)self setConnState:6];
  v3 = [(smbMount *)self connQueue];
  dispatch_resume(v3);

  v4 = [(smbMount *)self connQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028C80;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_barrier_async(v4, block);
}

- (void)renameOverExistingDir:(id)a3 FromName:(id)a4 toDir:(id)a5 NewName:(id)a6 ToFile:(id)a7 CompletionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100028E60;
  v35[3] = &unk_10008DD88;
  v36 = v16;
  v37 = v18;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100028F38;
  v26[3] = &unk_10008DE00;
  v27 = v36;
  v28 = v37;
  v29 = self;
  v30 = v14;
  v34 = v16 == v14;
  v31 = v15;
  v32 = v17;
  v33 = v19;
  v20 = v19;
  v21 = v17;
  v22 = v15;
  v23 = v14;
  v24 = v37;
  v25 = v36;
  [(smbMount *)self submitRequestBlockOnce:v35 continuationBlock:v26];
}

- (void)renameOverExistingFile:(id)a3 FromName:(id)a4 toDir:(id)a5 NewName:(id)a6 ToFile:(id)a7 CompletionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = *([v17 getSmbFattr] + 30);
  v20 = [v17 makeSillyDeleteName];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100029498;
  v40[3] = &unk_10008DE28;
  v41 = v15;
  v42 = v17;
  v43 = v20;
  v44 = v19;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100029588;
  v29[3] = &unk_10008DEA0;
  v30 = v41;
  v31 = v42;
  v32 = self;
  v33 = v13;
  v39 = v15 == v13;
  v34 = v14;
  v35 = v16;
  v38 = v19;
  v36 = v43;
  v37 = v18;
  v21 = v43;
  v22 = v16;
  v23 = v14;
  v24 = v13;
  v25 = v18;
  v26 = v42;
  v27 = v41;
  [(smbMount *)self submitRequestBlockOnce:v40 continuationBlock:v29];
}

- (int)deliverSearchResults:(id)a3
{
  v3 = a3;
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

  v4 = [v3 searchRows];
  v5 = [v3 parseSearchResults:v4];
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
      v17 = v4;
      v9 = 0;
      v10 = 0;
      v11 = *v31;
      do
      {
        v12 = 0;
        v13 = v9;
        v14 = v10;
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
          v10 = [v9 path];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100057554(v46, v10, &v47);
          }

          v15 = [v3 handler];
          [v15 addSearchResult:v10 attributes:&v34 attributeSize:184 xAttrs:&__NSDictionary0__struct];

          v12 = v12 + 1;
          v13 = v9;
          v14 = v10;
        }

        while (v8 != v12);
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v48 count:16];
      }

      while (v8);

      v4 = v17;
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