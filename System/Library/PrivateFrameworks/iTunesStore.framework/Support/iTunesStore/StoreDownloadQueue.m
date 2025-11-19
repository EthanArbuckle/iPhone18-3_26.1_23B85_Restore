@interface StoreDownloadQueue
+ (id)sharedDownloadQueue;
+ (void)cancelRedownloadsWithMessage:(id)a3 connection:(id)a4;
+ (void)getAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)reloadFromServerWithMessage:(id)a3 connection:(id)a4;
+ (void)setAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4;
+ (void)synchronizeAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4;
+ (void)triggerDownloadsWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_ignoreVideos;
- (BOOL)cancelAllRedownloads;
- (BOOL)checkQueuesWithReason:(id)a3 accountID:(id)a4;
- (NSSet)automaticDownloadKinds;
- (NSSet)downloadKindsBeingChecked;
- (NSSet)enabledDownloadKinds;
- (StoreDownloadQueue)init;
- (id)_automaticDownloadsQueryWithDatabase:(id)a3 accountID:(id)a4;
- (id)_downloadQueryWithQueueRequest:(id)a3 database:(id)a4;
- (id)_newCheckQueueOperationForQueueRequest:(id)a3;
- (id)_newLoadQueueOperationForQueueRequest:(id)a3;
- (id)_newOperationByCommitingAutomaticDownloadKinds:(id)a3 account:(id)a4;
- (id)_newQueueRequestsWithReason:(id)a3 accountID:(id)a4 session:(id)a5;
- (id)_newSetAutomaticDownloadKindsOperationWithDownloadKinds:(id)a3 account:(id)a4;
- (id)_restorableDownloadsQueryInDatabase:(id)a3;
- (id)_validQueueIdentifiersForDaemon;
- (id)_validQueueIdentifiersForPlatform;
- (void)_accountAuthenticatedNotification:(id)a3;
- (void)_accountStoreChangedNotification:(id)a3;
- (void)_addOperationsForRequests:(id)a3 reason:(id)a4;
- (void)_checkAutomaticDownloadQueue:(id)a3;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_networkTypeChangedNotification:(id)a3;
- (void)_retryCanceledRestoreDownloads;
- (void)_retrySoftFailedRestoreDownloads;
- (void)_setLastCheckedAccountID:(id)a3;
- (void)_synchronizeAutomaticDownloadKinds:(id)a3;
- (void)checkAutomaticDownloadQueue;
- (void)checkQueuesWithRequest:(id)a3;
- (void)commitAutomaticDownloadKinds:(id)a3 markAsDirty:(BOOL)a4;
- (void)dealloc;
- (void)disableAutomaticDownloadsWithReason:(id)a3;
- (void)enableAutomaticDownloadsWithReason:(id)a3;
- (void)restoreAllRestorableDownloadsWithReason:(id)a3;
- (void)restoreDownloadsWithIdentifiers:(id)a3 reason:(id)a4;
- (void)setAutomaticDownloadKinds:(id)a3;
- (void)setAutomaticDownloadKinds:(id)a3 account:(id)a4;
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
    v9 = [v8 activeAccount];
    v10 = [v9 uniqueIdentifier];
    lastCheckedAccountID = v3->_lastCheckedAccountID;
    v3->_lastCheckedAccountID = v10;

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
  v3 = [v2 activeAccount];

  v4 = [v3 automaticDownloadKinds];
  if (v4)
  {
    [NSSet setWithArray:v4];
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

- (BOOL)checkQueuesWithReason:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v9 = v6;
  v17 = v9;
  v10 = v7;
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

- (void)checkQueuesWithRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127084;
  v7[3] = &unk_100327238;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)commitAutomaticDownloadKinds:(id)a3 markAsDirty:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[SSAccountStore defaultStore];
  v7 = [v6 activeAccount];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (!v7)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v28 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v9 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
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

      v30 = [NSString stringWithCString:v32 encoding:4, &v36, v34];
      free(v32);
      SSFileLog();
    }

    goto LABEL_42;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v36 = 138412546;
    v37 = objc_opt_class();
    v38 = 2112;
    v39 = v5;
    v13 = v37;
    LODWORD(v34) = 22;
    v33 = &v36;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, &v36, v34];
    free(v14);
    v33 = v12;
    SSFileLog();
  }

LABEL_13:
  v15 = &kCFBooleanTrue;
  if (!v4)
  {
    v15 = &kCFBooleanFalse;
  }

  v16 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"DirtyAutoDownloadKinds", *v15, kSSUserDefaultsIdentifier);
  v17 = [v5 allObjects];
  [v7 setAutomaticDownloadKinds:v17];

  v35 = 0;
  v18 = [v6 saveAccount:v7 verifyCredentials:0 error:&v35];
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

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
    v22 = [NSString stringWithCString:v25 encoding:4, &v36, v34];
    free(v25);
    v33 = v22;
    SSFileLog();
LABEL_26:
  }

LABEL_28:
  if ([v5 count])
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

- (void)disableAutomaticDownloadsWithReason:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127888;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)enableAutomaticDownloadsWithReason:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127ABC;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (NSSet)enabledDownloadKinds
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(StoreDownloadQueue *)self automaticDownloadKinds];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((SSDownloadKindIsSoftwareKind() & 1) == 0 && (!_os_feature_enabled_impl() || (SSDownloadKindIsEBookKind() & 1) == 0 && ([v8 isEqualToString:v10] & 1) == 0))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)restoreAllRestorableDownloadsWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v6 = +[DownloadsDatabase downloadsDatabase];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100127EF0;
  v11 = &unk_100329490;
  v12 = self;
  v7 = v5;
  v13 = v7;
  [v6 readUsingTransactionBlock:&v8];

  if ([v7 count])
  {
    [(StoreDownloadQueue *)self restoreDownloadsWithIdentifiers:v7 reason:v4];
  }
}

- (void)restoreDownloadsWithIdentifiers:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001280DC;
  block[3] = &unk_1003281A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)setAutomaticDownloadKinds:(id)a3
{
  v4 = a3;
  v6 = +[SSAccountStore defaultStore];
  v5 = [v6 activeAccount];
  [(StoreDownloadQueue *)self setAutomaticDownloadKinds:v4 account:v5];
}

- (void)setAutomaticDownloadKinds:(id)a3 account:(id)a4
{
  v4 = [(StoreDownloadQueue *)self _newOperationByCommitingAutomaticDownloadKinds:a3 account:a4];
  if (v4)
  {
    v6 = v4;
    v5 = +[ISOperationQueue mainQueue];
    [v5 addOperation:v6];

    v4 = v6;
  }
}

+ (void)cancelRedownloadsWithMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[StoreDownloadQueue sharedDownloadQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001287F4;
  v9 = v8[3] = &unk_100327110;
  v7 = v9;
  [v7 _handleMessage:v6 connection:v5 usingBlock:v8];
}

+ (void)getAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[StoreDownloadQueue sharedDownloadQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001288EC;
  v10[3] = &unk_1003281A0;
  v12 = v11 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v12;
  v9 = v5;
  [v8 _handleMessage:v9 connection:v7 usingBlock:v10];
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"cancelRedownloadsWithMessage:connection:" forMessage:187];
  [v4 addObserver:a1 selector:"getAutomaticDownloadKindsWithMessage:connection:" forMessage:74];
  [v4 addObserver:a1 selector:"reloadFromServerWithMessage:connection:" forMessage:5];
  [v4 addObserver:a1 selector:"setAutomaticDownloadKindsWithMessage:connection:" forMessage:75];
  [v4 addObserver:a1 selector:"synchronizeAutomaticDownloadKindsWithMessage:connection:" forMessage:76];
  [v4 addObserver:a1 selector:"triggerDownloadsWithMessage:connection:" forMessage:41];
}

+ (void)reloadFromServerWithMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[StoreDownloadQueue sharedDownloadQueue];
  v8 = +[SSAccountStore defaultStore];
  v9 = [v8 activeAccount];
  v10 = [v9 uniqueIdentifier];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100128B5C;
  v13[3] = &unk_100327238;
  v14 = v7;
  v15 = v10;
  v11 = v10;
  v12 = v7;
  [v12 _handleMessage:v6 connection:v5 usingBlock:v13];
}

+ (void)setAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[StoreDownloadQueue sharedDownloadQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100128ED8;
  v11[3] = &unk_100329530;
  v13 = v12 = v6;
  v14 = v7;
  v15 = a1;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 _handleMessage:v10 connection:v8 usingBlock:v11];
}

+ (void)synchronizeAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  message = xpc_dictionary_create_reply(a3);
  v6 = +[StoreDownloadQueue sharedDownloadQueue];
  [v6 synchronizeAutomaticDownloadKinds];

  xpc_connection_send_message(v5, message);
}

+ (void)triggerDownloadsWithMessage:(id)a3 connection:(id)a4
{
  v4 = [SSLogConfig sharedDaemonConfig:a3];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
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
    v7 = [NSString stringWithCString:v9 encoding:4, &v15, v14, v15];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = +[SSAccountStore defaultStore];
  v11 = [v10 activeAccount];
  v12 = [v11 uniqueIdentifier];

  v13 = +[StoreDownloadQueue sharedDownloadQueue];
  [v13 checkQueuesWithReason:@"trigger-download" accountID:v12];
}

- (void)_accountAuthenticatedNotification:(id)a3
{
  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];

  if ([v5 isAuthenticated] && CFPreferencesGetAppBooleanValue(@"DirtyAutoDownloadKinds", kSSUserDefaultsIdentifier, 0))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
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

        v12 = [(StoreDownloadQueue *)self automaticDownloadKinds];
        v13 = [(StoreDownloadQueue *)self _newSetAutomaticDownloadKindsOperationWithDownloadKinds:v12 account:v5];

        [v13 setRunsOnlyIfKindsAreDirty:1];
        v14 = +[ISOperationQueue mainQueue];
        [v14 addOperation:v13];

        goto LABEL_15;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, &v16, v15, v16];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_accountStoreChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001298B4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkTypeChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NSKeyValueChangeOldKey];

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

- (void)_addOperationsForRequests:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [(StoreDownloadQueue *)self _validQueueIdentifiersForDaemon];
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

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

      v16 = [NSString stringWithCString:v20 encoding:4, &v64, v51];
      free(v20);
      v50 = v16;
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
          v27 = [v26 queueIdentifier];
          v28 = [v10 containsObject:v27];

          if (v28)
          {
            v29 = [(StoreDownloadQueue *)self _newLoadQueueOperationForQueueRequest:v26];
            [(ISOperationQueue *)self->_operationQueue addOperation:v29];
          }

          else
          {
            v30 = [v26 queueIdentifier];
            v31 = [v30 isEqualToString:@"apps"];

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

  v32 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v33 = v32 | 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = [v13 OSLogObject];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
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

    v34 = [NSString stringWithCString:v38 encoding:4, &v64, v51];
    free(v38);
    v50 = v34;
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
        v45 = [v44 queueIdentifier];
        v46 = [v10 containsObject:v45];

        if (v46)
        {
          v47 = [(StoreDownloadQueue *)self _newCheckQueueOperationForQueueRequest:v44];
          [(ISOperationQueue *)self->_operationQueue addOperation:v47];
        }

        else
        {
          v48 = [v44 queueIdentifier];
          v49 = [v48 isEqualToString:@"apps"];

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

- (id)_automaticDownloadsQueryWithDatabase:(id)a3 accountID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_automatic" equalToLongLong:1];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_account_id" equalToValue:v5];

  v10 = [NSArray arrayWithObjects:v7, v8, v9, 0];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [DownloadEntity queryWithDatabase:v6 predicate:v11];

  return v12;
}

- (id)_downloadQueryWithQueueRequest:(id)a3 database:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 queueIdentifier];
  v8 = sub_10012E540(v7);

  v9 = [SSSQLiteCompoundPredicate predicateWithProperty:@"kind" values:v8 comparisonType:1];
  v10 = [v6 accountIdentifier];

  v11 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_account_id" equalToValue:v10];

  v12 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_store_queued" equalToLongLong:1];
  v13 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.phase value:SSDownloadPhaseWaiting)" comparisonType:SSDownloadPhaseFinished, 2];
  v14 = [NSArray arrayWithObjects:v12, v11, v13, v9, 0];
  v15 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

  v16 = [DownloadEntity queryWithDatabase:v5 predicate:v15];

  return v16;
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (SSXPCConnectionHasEntitlement())
  {
    v11 = +[Daemon daemon];
    [v11 takeKeepAliveAssertion:@"com.apple.itunesstore.StoreDownloadQueue"];

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012A714;
    block[3] = &unk_100327198;
    v15 = v10;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v8);
    if (reply)
    {
      xpc_connection_send_message(v9, reply);
    }
  }
}

- (void)_checkAutomaticDownloadQueue:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
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
  [v12 setAccountIdentifier:v4];
  objc_initWeak(location, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A9F0;
  v15[3] = &unk_1003295A8;
  v15[4] = self;
  objc_copyWeak(&v17, location);
  v13 = v4;
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
  v4 = [v3 applicationType];
  if ([v4 isEqualToString:LSSystemApplicationType])
  {
    v5 = [v3 appState];
    v6 = [v5 isInstalled] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  objc_autoreleasePoolPop(v2);
  return (v3 != 0) & v6;
}

- (id)_newCheckQueueOperationForQueueRequest:(id)a3
{
  v4 = a3;
  v5 = [[CheckDownloadQueueOperation alloc] initWithDownloadQueueRequest:v4];
  objc_initWeak(&location, v5);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012B3D4;
  v8[3] = &unk_100329508;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v9 = v6;
  v10 = self;
  [(CheckDownloadQueueOperation *)v5 setCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_newLoadQueueOperationForQueueRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  v6 = [v4 queueContentsURLBagKey];
  [v5 setURLBagKey:v6];

  v7 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v5];
  v8 = [v4 accountIdentifier];
  [(LoadDownloadQueueOperation *)v7 setAccountIdentifier:v8];

  [(LoadDownloadQueueOperation *)v7 setNeedsAuthentication:0];
  objc_initWeak(&location, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012BFF8;
  v11[3] = &unk_100329648;
  v11[4] = self;
  v9 = v4;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [(LoadDownloadQueueOperation *)v7 setCompletionBlock:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return v7;
}

- (id)_newOperationByCommitingAutomaticDownloadKinds:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StoreDownloadQueue *)self automaticDownloadKinds];
  if ([v6 isEqualToSet:v8])
  {
    v9 = 0;
  }

  else
  {
    [(StoreDownloadQueue *)self commitAutomaticDownloadKinds:v6 markAsDirty:1];
    v9 = [(StoreDownloadQueue *)self _newSetAutomaticDownloadKindsOperationWithDownloadKinds:v6 account:v7];
    [v9 setPreviousDownloadKinds:v8];
  }

  return v9;
}

- (id)_newQueueRequestsWithReason:(id)a3 accountID:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableSet);
  v35 = v10;
  if (([v8 isEqualToString:@"account-change"] & 1) == 0)
  {
    v34 = self;
    v31 = [(StoreDownloadQueue *)self _validQueueIdentifiersForDaemon];
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
    v19 = [v10 database];
    v20 = [v18 initWithDatabase:v19 descriptor:v12];

    v45[0] = @"kind";
    v45[1] = @"store_account_id";
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10012CD68;
    v40[3] = &unk_100328990;
    v21 = v31;
    v41 = v21;
    v42 = v8;
    v43 = v11;
    [v20 enumeratePersistentIDsAndProperties:v45 count:2 usingBlock:v40];

    for (i = 1; i != -1; --i)
    {
    }

    self = v34;
  }

  if (v9)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [(StoreDownloadQueue *)self _validQueueIdentifiersForPlatform];
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          v29 = objc_alloc_init(StoreDownloadQueueRequest);
          [(StoreDownloadQueueRequest *)v29 setAccountIdentifier:v9];
          [(StoreDownloadQueueRequest *)v29 setQueueIdentifier:v28];
          [(StoreDownloadQueueRequest *)v29 setReason:v8];
          [v11 addObject:v29];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }

    v10 = v35;
  }

  return v11;
}

- (id)_newSetAutomaticDownloadKindsOperationWithDownloadKinds:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:v6];

  v8 = [[SSAuthenticationContext alloc] initWithAccount:v5];
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

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
    v5 = [NSString stringWithCString:v7 encoding:4, &v11, v10, v11];
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

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
    v5 = [NSString stringWithCString:v7 encoding:4, &v11, v10, v11];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  +[RestoreDownloadsOperation resetShouldSuppressTermsAndConditionsDialogs];
  v8 = +[DownloadsDatabase downloadsDatabase];
  v9 = [v8 modifyUsingTransactionBlock:&stru_1003296A8];
}

- (id)_restorableDownloadsQueryInDatabase:(id)a3
{
  v3 = a3;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_restore" equalToLongLong:1];
  v5 = [NSNumber numberWithInteger:0];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download.store_item_id value:0)" comparisonType:v5, 2];

  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:0];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:0];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.restore_state equalToLongLong:0)", 0];
  v10 = [NSArray arrayWithObjects:v4, v6, v7, v8, v9, 0];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [NSArray arrayWithObject:@"order_key"];
  v13 = [DownloadEntity queryWithDatabase:v3 predicate:v11 orderingProperties:v12];

  return v13;
}

- (void)_setLastCheckedAccountID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012D58C;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)_synchronizeAutomaticDownloadKinds:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GetAutomaticDownloadKindsOperation);
  objc_initWeak(&location, v5);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10012D720;
  v14 = &unk_1003296D0;
  objc_copyWeak(&v17, &location);
  v15 = self;
  v6 = v4;
  v16 = v6;
  [(GetAutomaticDownloadKindsOperation *)v5 setCompletionBlock:&v11];
  v7 = [SSAuthenticationContext alloc];
  v8 = [SSAccountStore defaultStore:v11];
  v9 = [v8 activeAccount];
  v10 = [v7 initWithAccount:v9];

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
  v4 = [(StoreDownloadQueue *)self _validQueueIdentifiersForPlatform];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isEqualToString:@"apps"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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