@interface StoreDownloadQueue
+ (id)sharedDownloadQueue;
+ (void)cancelRedownloadsWithMessage:(id)message connection:(id)connection;
+ (void)getAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)reloadFromServerWithMessage:(id)message connection:(id)connection;
+ (void)setAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection;
+ (void)synchronizeAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection;
+ (void)triggerDownloadsWithMessage:(id)message connection:(id)connection;
- (BOOL)_ignoreVideos;
- (BOOL)cancelAllRedownloads;
- (BOOL)checkQueuesWithReason:(id)reason accountID:(id)d;
- (NSSet)automaticDownloadKinds;
- (NSSet)downloadKindsBeingChecked;
- (NSSet)enabledDownloadKinds;
- (StoreDownloadQueue)init;
- (id)_automaticDownloadsQueryWithDatabase:(id)database accountID:(id)d;
- (id)_downloadQueryWithQueueRequest:(id)request database:(id)database;
- (id)_newCheckQueueOperationForQueueRequest:(id)request;
- (id)_newLoadQueueOperationForQueueRequest:(id)request;
- (id)_newOperationByCommitingAutomaticDownloadKinds:(id)kinds account:(id)account;
- (id)_newQueueRequestsWithReason:(id)reason accountID:(id)d session:(id)session;
- (id)_newSetAutomaticDownloadKindsOperationWithDownloadKinds:(id)kinds account:(id)account;
- (id)_restorableDownloadsQueryInDatabase:(id)database;
- (id)_validQueueIdentifiersForDaemon;
- (id)_validQueueIdentifiersForPlatform;
- (void)_accountAuthenticatedNotification:(id)notification;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_addOperationsForRequests:(id)requests reason:(id)reason;
- (void)_checkAutomaticDownloadQueue:(id)queue;
- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block;
- (void)_networkTypeChangedNotification:(id)notification;
- (void)_retryCanceledRestoreDownloads;
- (void)_retrySoftFailedRestoreDownloads;
- (void)_setLastCheckedAccountID:(id)d;
- (void)_synchronizeAutomaticDownloadKinds:(id)kinds;
- (void)checkAutomaticDownloadQueue;
- (void)checkQueuesWithRequest:(id)request;
- (void)commitAutomaticDownloadKinds:(id)kinds markAsDirty:(BOOL)dirty;
- (void)dealloc;
- (void)disableAutomaticDownloadsWithReason:(id)reason;
- (void)enableAutomaticDownloadsWithReason:(id)reason;
- (void)restoreAllRestorableDownloadsWithReason:(id)reason;
- (void)restoreDownloadsWithIdentifiers:(id)identifiers reason:(id)reason;
- (void)setAutomaticDownloadKinds:(id)kinds;
- (void)setAutomaticDownloadKinds:(id)kinds account:(id)account;
@end

@implementation StoreDownloadQueue

- (StoreDownloadQueue)init
{
  v33.receiver = self;
  v33.super_class = StoreDownloadQueue;
  v2 = [(StoreDownloadQueue *)&v33 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_automaticDownloadsAreDisabled = 0;
    v4 = dispatch_queue_create("com.apple.itunesstored.StoreDownloadQueue", 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableOrderedSet);
    activeRestoreIDs = v3->_activeRestoreIDs;
    v3->_activeRestoreIDs = v6;

    v8 = +[SSAccountStore defaultStore];
    activeAccount = [v8 activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];
    lastCheckedAccountID = v3->_lastCheckedAccountID;
    v3->_lastCheckedAccountID = uniqueIdentifier;

    v12 = objc_alloc_init(NSMutableSet);
    storeQueueRequests = v3->_storeQueueRequests;
    v3->_storeQueueRequests = v12;

    v14 = objc_alloc_init(ISOperationQueue);
    operationQueue = v3->_operationQueue;
    v3->_operationQueue = v14;

    [(ISOperationQueue *)v3->_operationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:3];
    v16 = +[Daemon daemon];
    [v16 addKeepAliveOperationQueue:v3->_operationQueue];

    v17 = objc_alloc_init(ISOperationQueue);
    restoreOperationQueue = v3->_restoreOperationQueue;
    v3->_restoreOperationQueue = v17;

    [(ISOperationQueue *)v3->_restoreOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v3->_restoreOperationQueue setMaxConcurrentOperationCount:1];
    v19 = +[Daemon daemon];
    [v19 addKeepAliveOperationQueue:v3->_restoreOperationQueue];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v3 selector:"_accountAuthenticatedNotification:" name:kSSNotificationAuthenticateFinished object:0];
    [v20 addObserver:v3 selector:"_accountStoreChangedNotification:" name:SSAccountStoreChangedNotification object:0];
    [v20 addObserver:v3 selector:"_networkTypeChangedNotification:" name:ISNetworkTypeChangedNotification object:0];
    v21 = [SSWeakReference weakReferenceWithObject:v3];
    v22 = +[Daemon daemon];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100125C0C;
    v31[3] = &unk_1003293A8;
    v23 = v21;
    v32 = v23;
    v24 = [v22 addObserverForBackgroundTaskWithIdentifierPrefix:@"com.apple.itunesstored.RetryCanceledRestoreDownloads" withBlock:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100125C50;
    v29[3] = &unk_1003293A8;
    v30 = v23;
    v25 = v23;
    v26 = [v22 addObserverForBackgroundTaskWithIdentifierPrefix:@"com.apple.itunesstored.RetrySoftFailedRestoreDownloads" withBlock:v29];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_100125C94, kSSNotificationAutomaticDownloadSettingsChanged, 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_100125D04, kSSNotificationTriggerDownloads, 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kSSNotificationAuthenticateFinished object:0];
  [v3 removeObserver:self name:SSAccountStoreChangedNotification object:0];
  [v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kSSNotificationAutomaticDownloadSettingsChanged, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kSSNotificationTriggerDownloads, 0);
  [(LoadDownloadQueueOperation *)self->_loadAutomaticDownloadQueueOperation setCompletionBlock:0];
  v5 = +[Daemon daemon];
  [v5 removeKeepAliveOperationQueue:self->_operationQueue];

  v6 = +[Daemon daemon];
  [v6 removeKeepAliveOperationQueue:self->_restoreOperationQueue];

  v7.receiver = self;
  v7.super_class = StoreDownloadQueue;
  [(StoreDownloadQueue *)&v7 dealloc];
}

+ (id)sharedDownloadQueue
{
  if (qword_100383ED8 != -1)
  {
    sub_1002723D0();
  }

  v3 = qword_100383ED0;

  return v3;
}

- (NSSet)automaticDownloadKinds
{
  v2 = +[SSAccountStore defaultStore];
  activeAccount = [v2 activeAccount];

  automaticDownloadKinds = [activeAccount automaticDownloadKinds];
  if (automaticDownloadKinds)
  {
    [NSSet setWithArray:automaticDownloadKinds];
  }

  else
  {
    +[NSSet set];
  }
  v5 = ;

  return v5;
}

- (BOOL)cancelAllRedownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = +[DownloadsDatabase downloadsDatabase];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100126204;
  v5[3] = &unk_100329418;
  v5[4] = &v6;
  v3 = [v2 modifyUsingTransactionBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)checkAutomaticDownloadQueue
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100126458;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)checkQueuesWithReason:(id)reason accountID:(id)d
{
  reasonCopy = reason;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100126F6C;
  v24 = sub_100126F7C;
  v25 = 0;
  v8 = +[DownloadsDatabase downloadsDatabase];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100126F84;
  v16[3] = &unk_100329440;
  v19 = &v20;
  v16[4] = self;
  v9 = reasonCopy;
  v17 = v9;
  v10 = dCopy;
  v18 = v10;
  [v8 readUsingTransactionBlock:v16];

  if (v21[5])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100126FD4;
    block[3] = &unk_100329468;
    block[4] = self;
    v15 = &v20;
    v14 = v9;
    dispatch_async(dispatchQueue, block);
  }

  _Block_object_dispose(&v20, 8);
  return 1;
}

- (void)checkQueuesWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127084;
  v7[3] = &unk_100327238;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)commitAutomaticDownloadKinds:(id)kinds markAsDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  kindsCopy = kinds;
  v6 = +[SSAccountStore defaultStore];
  activeAccount = [v6 activeAccount];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (!activeAccount)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v29 = shouldLog | 2;
    }

    else
    {
      v29 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v36 = 138543362;
      v37 = objc_opt_class();
      v31 = v37;
      LODWORD(v34) = 12;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
        goto LABEL_42;
      }

      oSLogObject = [NSString stringWithCString:v32 encoding:4, &v36, v34];
      free(v32);
      SSFileLog();
    }

    goto LABEL_42;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v36 = 138412546;
    v37 = objc_opt_class();
    v38 = 2112;
    v39 = kindsCopy;
    v13 = v37;
    LODWORD(v34) = 22;
    v33 = &v36;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    oSLogObject2 = [NSString stringWithCString:v14 encoding:4, &v36, v34];
    free(v14);
    v33 = oSLogObject2;
    SSFileLog();
  }

LABEL_13:
  v15 = &kCFBooleanTrue;
  if (!dirtyCopy)
  {
    v15 = &kCFBooleanFalse;
  }

  v16 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"DirtyAutoDownloadKinds", *v15, kSSUserDefaultsIdentifier);
  allObjects = [kindsCopy allObjects];
  [activeAccount setAutomaticDownloadKinds:allObjects];

  v35 = 0;
  v18 = [v6 saveAccount:activeAccount verifyCredentials:0 error:&v35];
  v9 = v35;
  if (v18)
  {
    goto LABEL_28;
  }

  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = shouldLog3 | 2;
  }

  else
  {
    v21 = shouldLog3;
  }

  oSLogObject3 = [v19 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_26;
  }

  v23 = objc_opt_class();
  v36 = 138543618;
  v37 = v23;
  v38 = 2114;
  v39 = v9;
  v24 = v23;
  LODWORD(v34) = 22;
  v33 = &v36;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    oSLogObject3 = [NSString stringWithCString:v25 encoding:4, &v36, v34];
    free(v25);
    v33 = oSLogObject3;
    SSFileLog();
LABEL_26:
  }

LABEL_28:
  if ([kindsCopy count])
  {
    [SSDevice setPromptWithIdentifier:SSDevicePromptIdentifierAutomaticDownloadsAvailable needsDisplay:0];
  }

  CFPreferencesAppSynchronize(v16);
  v26 = +[NSNotificationCenter defaultCenter];
  [v26 postNotificationName:SSDeviceAutomaticDownloadKindsChangedNotification object:0];

  v27 = +[DistributedNotificationCenter defaultCenter];
  [v27 postNotificationName:kSSNotificationAutomaticDownloadKindsChanged];

LABEL_42:
}

- (NSSet)downloadKindsBeingChecked
{
  v3 = +[NSMutableSet set];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001276C8;
  v9[3] = &unk_100327238;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(dispatchQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)disableAutomaticDownloadsWithReason:(id)reason
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127888;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)enableAutomaticDownloadsWithReason:(id)reason
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127ABC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(dispatchQueue, v7);
}

- (NSSet)enabledDownloadKinds
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  automaticDownloadKinds = [(StoreDownloadQueue *)self automaticDownloadKinds];
  v5 = [automaticDownloadKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = SSDownloadKindAudiobook;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(automaticDownloadKinds);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((SSDownloadKindIsSoftwareKind() & 1) == 0 && (!_os_feature_enabled_impl() || (SSDownloadKindIsEBookKind() & 1) == 0 && ([v8 isEqualToString:v10] & 1) == 0))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [automaticDownloadKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)restoreAllRestorableDownloadsWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v6 = +[DownloadsDatabase downloadsDatabase];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100127EF0;
  v11 = &unk_100329490;
  selfCopy = self;
  v7 = v5;
  v13 = v7;
  [v6 readUsingTransactionBlock:&v8];

  if ([v7 count])
  {
    [(StoreDownloadQueue *)self restoreDownloadsWithIdentifiers:v7 reason:reasonCopy];
  }
}

- (void)restoreDownloadsWithIdentifiers:(id)identifiers reason:(id)reason
{
  identifiersCopy = identifiers;
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001280DC;
  block[3] = &unk_1003281A0;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = reasonCopy;
  v9 = reasonCopy;
  v10 = identifiersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)setAutomaticDownloadKinds:(id)kinds
{
  kindsCopy = kinds;
  v6 = +[SSAccountStore defaultStore];
  activeAccount = [v6 activeAccount];
  [(StoreDownloadQueue *)self setAutomaticDownloadKinds:kindsCopy account:activeAccount];
}

- (void)setAutomaticDownloadKinds:(id)kinds account:(id)account
{
  v4 = [(StoreDownloadQueue *)self _newOperationByCommitingAutomaticDownloadKinds:kinds account:account];
  if (v4)
  {
    v6 = v4;
    v5 = +[ISOperationQueue mainQueue];
    [v5 addOperation:v6];

    v4 = v6;
  }
}

+ (void)cancelRedownloadsWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  messageCopy = message;
  +[StoreDownloadQueue sharedDownloadQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001287F4;
  v9 = v8[3] = &unk_100327110;
  v7 = v9;
  [v7 _handleMessage:messageCopy connection:connectionCopy usingBlock:v8];
}

+ (void)getAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  +[StoreDownloadQueue sharedDownloadQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001288EC;
  v10[3] = &unk_1003281A0;
  v12 = v11 = messageCopy;
  v13 = connectionCopy;
  v7 = connectionCopy;
  v8 = v12;
  v9 = messageCopy;
  [v8 _handleMessage:v9 connection:v7 usingBlock:v10];
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"cancelRedownloadsWithMessage:connection:" forMessage:187];
  [serverCopy addObserver:self selector:"getAutomaticDownloadKindsWithMessage:connection:" forMessage:74];
  [serverCopy addObserver:self selector:"reloadFromServerWithMessage:connection:" forMessage:5];
  [serverCopy addObserver:self selector:"setAutomaticDownloadKindsWithMessage:connection:" forMessage:75];
  [serverCopy addObserver:self selector:"synchronizeAutomaticDownloadKindsWithMessage:connection:" forMessage:76];
  [serverCopy addObserver:self selector:"triggerDownloadsWithMessage:connection:" forMessage:41];
}

+ (void)reloadFromServerWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  messageCopy = message;
  v7 = +[StoreDownloadQueue sharedDownloadQueue];
  v8 = +[SSAccountStore defaultStore];
  activeAccount = [v8 activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100128B5C;
  v13[3] = &unk_100327238;
  v14 = v7;
  v15 = uniqueIdentifier;
  v11 = uniqueIdentifier;
  v12 = v7;
  [v12 _handleMessage:messageCopy connection:connectionCopy usingBlock:v13];
}

+ (void)setAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  +[StoreDownloadQueue sharedDownloadQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100128ED8;
  v11[3] = &unk_100329530;
  v13 = v12 = messageCopy;
  v14 = connectionCopy;
  selfCopy = self;
  v8 = connectionCopy;
  v9 = v13;
  v10 = messageCopy;
  [v9 _handleMessage:v10 connection:v8 usingBlock:v11];
}

+ (void)synchronizeAutomaticDownloadKindsWithMessage:(id)message connection:(id)connection
{
  connectionCopy = connection;
  message = xpc_dictionary_create_reply(message);
  v6 = +[StoreDownloadQueue sharedDownloadQueue];
  [v6 synchronizeAutomaticDownloadKinds];

  xpc_connection_send_message(connectionCopy, message);
}

+ (void)triggerDownloadsWithMessage:(id)message connection:(id)connection
{
  v4 = [SSLogConfig sharedDaemonConfig:message];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v15) = 138412290;
  *(&v15 + 4) = objc_opt_class();
  v8 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [NSString stringWithCString:v9 encoding:4, &v15, v14, v15];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = +[SSAccountStore defaultStore];
  activeAccount = [v10 activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  v13 = +[StoreDownloadQueue sharedDownloadQueue];
  [v13 checkQueuesWithReason:@"trigger-download" accountID:uniqueIdentifier];
}

- (void)_accountAuthenticatedNotification:(id)notification
{
  v4 = +[SSAccountStore defaultStore];
  activeAccount = [v4 activeAccount];

  if ([activeAccount isAuthenticated] && CFPreferencesGetAppBooleanValue(@"DirtyAutoDownloadKinds", kSSUserDefaultsIdentifier, 0))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = objc_opt_class();
      v10 = *(&v16 + 4);
      LODWORD(v15) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        automaticDownloadKinds = [(StoreDownloadQueue *)self automaticDownloadKinds];
        v13 = [(StoreDownloadQueue *)self _newSetAutomaticDownloadKindsOperationWithDownloadKinds:automaticDownloadKinds account:activeAccount];

        [v13 setRunsOnlyIfKindsAreDirty:1];
        v14 = +[ISOperationQueue mainQueue];
        [v14 addOperation:v13];

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v16, v15, v16];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_accountStoreChangedNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001298B4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkTypeChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:NSKeyValueChangeOldKey];

  if (![v5 integerValue])
  {
    v6 = +[DownloadsDatabase downloadsDatabase];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100129D44;
    v7[3] = &unk_100329558;
    v7[4] = self;
    [v6 modifyAsyncUsingTransactionBlock:v7];
  }
}

- (void)_addOperationsForRequests:(id)requests reason:(id)reason
{
  requestsCopy = requests;
  reasonCopy = reason;
  v8 = requestsCopy;
  v9 = reasonCopy;
  _validQueueIdentifiersForDaemon = [(StoreDownloadQueue *)self _validQueueIdentifiersForDaemon];
  [v8 minusSet:self->_storeQueueRequests];
  [(NSMutableSet *)self->_storeQueueRequests unionSet:v8];
  v53 = v9;
  v11 = [v9 isEqualToString:@"trigger-download"];
  v12 = +[SSLogConfig sharedDaemonConfig];
  v13 = v12;
  v52 = v8;
  if (v11)
  {
    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v64 = 138412802;
      v65 = v18;
      v66 = 2048;
      v67 = [v8 count];
      v68 = 2112;
      v69 = v53;
      LODWORD(v51) = 32;
      v50 = &v64;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v64, v51];
      free(v20);
      v50 = oSLogObject;
      SSFileLog();
    }

LABEL_14:
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v59;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v58 + 1) + 8 * i);
          queueIdentifier = [v26 queueIdentifier];
          v28 = [_validQueueIdentifiersForDaemon containsObject:queueIdentifier];

          if (v28)
          {
            v29 = [(StoreDownloadQueue *)self _newLoadQueueOperationForQueueRequest:v26];
            [(ISOperationQueue *)self->_operationQueue addOperation:v29];
          }

          else
          {
            queueIdentifier2 = [v26 queueIdentifier];
            v31 = [queueIdentifier2 isEqualToString:@"apps"];

            if (v31)
            {
              [(NSMutableSet *)self->_storeQueueRequests removeObject:v26];
              +[AppStoreUtility checkDownloadQueue];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v23);
    }

    goto LABEL_49;
  }

  if (!v12)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v33 = shouldLog2 | 2;
  }

  else
  {
    v33 = shouldLog2;
  }

  oSLogObject2 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v33;
  }

  else
  {
    v35 = v33 & 2;
  }

  if (v35)
  {
    v36 = objc_opt_class();
    v37 = v36;
    v64 = 138412802;
    v65 = v36;
    v66 = 2048;
    v67 = [v8 count];
    v68 = 2112;
    v69 = v53;
    LODWORD(v51) = 32;
    v50 = &v64;
    v38 = _os_log_send_and_compose_impl();

    if (!v38)
    {
      goto LABEL_38;
    }

    oSLogObject2 = [NSString stringWithCString:v38 encoding:4, &v64, v51];
    free(v38);
    v50 = oSLogObject2;
    SSFileLog();
  }

LABEL_38:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v8;
  v40 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v54 + 1) + 8 * j);
        queueIdentifier3 = [v44 queueIdentifier];
        v46 = [_validQueueIdentifiersForDaemon containsObject:queueIdentifier3];

        if (v46)
        {
          v47 = [(StoreDownloadQueue *)self _newCheckQueueOperationForQueueRequest:v44];
          [(ISOperationQueue *)self->_operationQueue addOperation:v47];
        }

        else
        {
          queueIdentifier4 = [v44 queueIdentifier];
          v49 = [queueIdentifier4 isEqualToString:@"apps"];

          if (v49)
          {
            [(NSMutableSet *)self->_storeQueueRequests removeObject:v44];
            +[AppStoreUtility checkDownloadQueue];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v41);
  }

LABEL_49:
}

- (id)_automaticDownloadsQueryWithDatabase:(id)database accountID:(id)d
{
  dCopy = d;
  databaseCopy = database;
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_automatic" equalToLongLong:1];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_account_id" equalToValue:dCopy];

  v10 = [NSArray arrayWithObjects:v7, v8, v9, 0];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [DownloadEntity queryWithDatabase:databaseCopy predicate:v11];

  return v12;
}

- (id)_downloadQueryWithQueueRequest:(id)request database:(id)database
{
  databaseCopy = database;
  requestCopy = request;
  queueIdentifier = [requestCopy queueIdentifier];
  v8 = sub_10012E540(queueIdentifier);

  v9 = [SSSQLiteCompoundPredicate predicateWithProperty:@"kind" values:v8 comparisonType:1];
  accountIdentifier = [requestCopy accountIdentifier];

  v11 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_account_id" equalToValue:accountIdentifier];

  v12 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_store_queued" equalToLongLong:1];
  v13 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.phase value:SSDownloadPhaseWaiting)" comparisonType:SSDownloadPhaseFinished, 2];
  v14 = [NSArray arrayWithObjects:v12, v11, v13, v9, 0];
  v15 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

  v16 = [DownloadEntity queryWithDatabase:databaseCopy predicate:v15];

  return v16;
}

- (void)_handleMessage:(id)message connection:(id)connection usingBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  if (SSXPCConnectionHasEntitlement())
  {
    v11 = +[Daemon daemon];
    [v11 takeKeepAliveAssertion:@"com.apple.itunesstore.StoreDownloadQueue"];

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012A714;
    block[3] = &unk_100327198;
    v15 = blockCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (reply)
    {
      xpc_connection_send_message(connectionCopy, reply);
    }
  }
}

- (void)_checkAutomaticDownloadQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = objc_opt_class();
    v9 = *(location + 4);
    LODWORD(v14) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      v11 = [NSString stringWithCString:v10 encoding:4, location, v14];
      free(v10);
      SSFileLog();
    }
  }

  else
  {
  }

  v12 = +[LoadDownloadQueueOperation newLoadAutomaticDownloadQueueOperation];
  [v12 setAccountIdentifier:queueCopy];
  objc_initWeak(location, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A9F0;
  v15[3] = &unk_1003295A8;
  v15[4] = self;
  objc_copyWeak(&v17, location);
  v13 = queueCopy;
  v16 = v13;
  [v12 setCompletionBlock:v15];
  objc_storeStrong(&self->_loadAutomaticDownloadQueueOperation, v12);
  [(ISOperationQueue *)self->_operationQueue addOperation:self->_loadAutomaticDownloadQueueOperation];

  objc_destroyWeak(&v17);
  objc_destroyWeak(location);
}

- (BOOL)_ignoreVideos
{
  v2 = objc_autoreleasePoolPush();
  v3 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.tv"];
  applicationType = [v3 applicationType];
  if ([applicationType isEqualToString:LSSystemApplicationType])
  {
    appState = [v3 appState];
    v6 = [appState isInstalled] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  objc_autoreleasePoolPop(v2);
  return (v3 != 0) & v6;
}

- (id)_newCheckQueueOperationForQueueRequest:(id)request
{
  requestCopy = request;
  v5 = [[CheckDownloadQueueOperation alloc] initWithDownloadQueueRequest:requestCopy];
  objc_initWeak(&location, v5);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012B3D4;
  v8[3] = &unk_100329508;
  objc_copyWeak(&v11, &location);
  v6 = requestCopy;
  v9 = v6;
  selfCopy = self;
  [(CheckDownloadQueueOperation *)v5 setCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_newLoadQueueOperationForQueueRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  queueContentsURLBagKey = [requestCopy queueContentsURLBagKey];
  [v5 setURLBagKey:queueContentsURLBagKey];

  v7 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v5];
  accountIdentifier = [requestCopy accountIdentifier];
  [(LoadDownloadQueueOperation *)v7 setAccountIdentifier:accountIdentifier];

  [(LoadDownloadQueueOperation *)v7 setNeedsAuthentication:0];
  objc_initWeak(&location, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012BFF8;
  v11[3] = &unk_100329648;
  v11[4] = self;
  v9 = requestCopy;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [(LoadDownloadQueueOperation *)v7 setCompletionBlock:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return v7;
}

- (id)_newOperationByCommitingAutomaticDownloadKinds:(id)kinds account:(id)account
{
  kindsCopy = kinds;
  accountCopy = account;
  automaticDownloadKinds = [(StoreDownloadQueue *)self automaticDownloadKinds];
  if ([kindsCopy isEqualToSet:automaticDownloadKinds])
  {
    v9 = 0;
  }

  else
  {
    [(StoreDownloadQueue *)self commitAutomaticDownloadKinds:kindsCopy markAsDirty:1];
    v9 = [(StoreDownloadQueue *)self _newSetAutomaticDownloadKindsOperationWithDownloadKinds:kindsCopy account:accountCopy];
    [v9 setPreviousDownloadKinds:automaticDownloadKinds];
  }

  return v9;
}

- (id)_newQueueRequestsWithReason:(id)reason accountID:(id)d session:(id)session
{
  reasonCopy = reason;
  dCopy = d;
  sessionCopy = session;
  v11 = objc_alloc_init(NSMutableSet);
  v35 = sessionCopy;
  if (([reasonCopy isEqualToString:@"account-change"] & 1) == 0)
  {
    selfCopy = self;
    _validQueueIdentifiersForDaemon = [(StoreDownloadQueue *)self _validQueueIdentifiersForDaemon];
    v12 = objc_alloc_init(SSSQLiteQueryDescriptor);
    [v12 setEntityClass:objc_opt_class()];
    [v12 setReturnsDistinctEntities:1];
    v13 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_store_queued" equalToLongLong:1];
    v14 = [SSSQLiteNullPredicate isNotNullPredicateWithProperty:@"store_transaction_id"];
    v15 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.is_server_finished equalToLongLong:0)", 0];
    v32 = v14;
    v33 = v13;
    v16 = [NSArray arrayWithObjects:v13, v14, v15, 0];
    v17 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

    [v12 setPredicate:v17];
    v18 = [SSSQLiteQuery alloc];
    database = [sessionCopy database];
    v20 = [v18 initWithDatabase:database descriptor:v12];

    v45[0] = @"kind";
    v45[1] = @"store_account_id";
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10012CD68;
    v40[3] = &unk_100328990;
    v21 = _validQueueIdentifiersForDaemon;
    v41 = v21;
    v42 = reasonCopy;
    v43 = v11;
    [v20 enumeratePersistentIDsAndProperties:v45 count:2 usingBlock:v40];

    for (i = 1; i != -1; --i)
    {
    }

    self = selfCopy;
  }

  if (dCopy)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    _validQueueIdentifiersForPlatform = [(StoreDownloadQueue *)self _validQueueIdentifiersForPlatform];
    v24 = [_validQueueIdentifiersForPlatform countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(_validQueueIdentifiersForPlatform);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          v29 = objc_alloc_init(StoreDownloadQueueRequest);
          [(StoreDownloadQueueRequest *)v29 setAccountIdentifier:dCopy];
          [(StoreDownloadQueueRequest *)v29 setQueueIdentifier:v28];
          [(StoreDownloadQueueRequest *)v29 setReason:reasonCopy];
          [v11 addObject:v29];
        }

        v25 = [_validQueueIdentifiersForPlatform countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }

    sessionCopy = v35;
  }

  return v11;
}

- (id)_newSetAutomaticDownloadKindsOperationWithDownloadKinds:(id)kinds account:(id)account
{
  accountCopy = account;
  kindsCopy = kinds;
  v7 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:kindsCopy];

  v8 = [[SSAuthenticationContext alloc] initWithAccount:accountCopy];
  [(SetAutomaticDownloadKindsOperation *)v7 setAuthenticationContext:v8];

  return v7;
}

- (void)_retryCanceledRestoreDownloads
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138412290;
  *(&v11 + 4) = objc_opt_class();
  v6 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4, &v11, v10, v11];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  +[RestoreDownloadsOperation resetShouldSuppressTermsAndConditionsDialogs];
  v8 = +[DownloadsDatabase downloadsDatabase];
  v9 = [v8 modifyUsingTransactionBlock:&stru_100329688];
}

- (void)_retrySoftFailedRestoreDownloads
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v11) = 138412290;
  *(&v11 + 4) = objc_opt_class();
  v6 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4, &v11, v10, v11];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  +[RestoreDownloadsOperation resetShouldSuppressTermsAndConditionsDialogs];
  v8 = +[DownloadsDatabase downloadsDatabase];
  v9 = [v8 modifyUsingTransactionBlock:&stru_1003296A8];
}

- (id)_restorableDownloadsQueryInDatabase:(id)database
{
  databaseCopy = database;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_restore" equalToLongLong:1];
  v5 = [NSNumber numberWithInteger:0];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download.store_item_id value:0)" comparisonType:v5, 2];

  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:0];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:0];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.restore_state equalToLongLong:0)", 0];
  v10 = [NSArray arrayWithObjects:v4, v6, v7, v8, v9, 0];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [NSArray arrayWithObject:@"order_key"];
  v13 = [DownloadEntity queryWithDatabase:databaseCopy predicate:v11 orderingProperties:v12];

  return v13;
}

- (void)_setLastCheckedAccountID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012D58C;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)_synchronizeAutomaticDownloadKinds:(id)kinds
{
  kindsCopy = kinds;
  v5 = objc_alloc_init(GetAutomaticDownloadKindsOperation);
  objc_initWeak(&location, v5);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10012D720;
  v14 = &unk_1003296D0;
  objc_copyWeak(&v17, &location);
  selfCopy = self;
  v6 = kindsCopy;
  v16 = v6;
  [(GetAutomaticDownloadKindsOperation *)v5 setCompletionBlock:&v11];
  v7 = [SSAuthenticationContext alloc];
  v8 = [SSAccountStore defaultStore:v11];
  activeAccount = [v8 activeAccount];
  v10 = [v7 initWithAccount:activeAccount];

  [(GetAutomaticDownloadKindsOperation *)v5 setAuthenticationContext:v10];
  [(ISOperationQueue *)self->_operationQueue addOperation:v5];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)_validQueueIdentifiersForDaemon
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _validQueueIdentifiersForPlatform = [(StoreDownloadQueue *)self _validQueueIdentifiersForPlatform];
  v5 = [_validQueueIdentifiersForPlatform countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_validQueueIdentifiersForPlatform);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isEqualToString:@"apps"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [_validQueueIdentifiersForPlatform countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_validQueueIdentifiersForPlatform
{
  if (MGGetSInt32Answer() == 4)
  {
    v8 = @"apps";
    v2 = &v8;
    v3 = 1;
  }

  else
  {
    v7[0] = @"apps";
    v7[1] = @"books";
    v7[2] = @"media";
    v2 = v7;
    v3 = 3;
  }

  v4 = [NSArray arrayWithObjects:v2 count:v3];
  v5 = [NSSet setWithArray:v4];

  return v5;
}

@end