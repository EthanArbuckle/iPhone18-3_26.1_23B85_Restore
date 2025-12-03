@interface DownloadsDatabase
+ (id)downloadsDatabase;
+ (void)_setupDatabase:(id)database;
- (DownloadsDatabase)init;
- (id)_modifyUsingTransaction:(id)transaction block:(id)block;
- (id)_newSessionDescription;
- (id)modifyExternalUsingTransactionBlock:(id)block;
- (id)modifyUsingPurchaseTransactionBlock:(id)block;
- (id)modifyUsingTransactionBlock:(id)block;
- (void)_commitExternalChangesForChangeset:(id)changeset;
- (void)dealloc;
- (void)dispatchAfter:(unint64_t)after block:(id)block;
- (void)dispatchBlockAsync:(id)async;
- (void)downloadHandlerManager:(id)manager sessionsDidChange:(id)change;
- (void)modifyAsyncUsingPurchaseTransactionBlock:(id)block;
- (void)modifyAsyncUsingTransactionBlock:(id)block;
- (void)modifyExternalAsyncUsingTransactionBlock:(id)block;
- (void)readUsingTransactionBlock:(id)block;
@end

@implementation DownloadsDatabase

+ (id)downloadsDatabase
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009016C;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383DA0 != -1)
  {
    dispatch_once(&qword_100383DA0, block);
  }

  v2 = qword_100383D98;

  return v2;
}

- (id)_newSessionDescription
{
  v3 = objc_alloc_init(DownloadsSessionDescriptor);
  [(DownloadsSessionDescriptor *)v3 setDatabase:self->_database];
  [(DownloadsSessionDescriptor *)v3 setExternalState:self->_externalState];
  [(DownloadsSessionDescriptor *)v3 setPipeline:self->_pipeline];
  [(DownloadsSessionDescriptor *)v3 setPolicyManager:self->_policyManager];
  return v3;
}

+ (void)_setupDatabase:(id)database
{
  databaseCopy = database;
  [databaseCopy executeSQL:@"PRAGMA journal_mode=WAL;"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008FD80;
  v5[3] = &unk_1003270E8;
  v6 = databaseCopy;
  v4 = databaseCopy;
  [v4 performTransactionWithBlock:v5];
}

- (DownloadsDatabase)init
{
  v3 = +[DownloadDatabaseSchema databasePath];
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100090068;
    block[3] = &unk_100327110;
    v29 = v3;
    if (qword_100383D90 != -1)
    {
      dispatch_once(&qword_100383D90, block);
    }
  }

  v27.receiver = self;
  v27.super_class = DownloadsDatabase;
  v5 = [(DownloadsDatabase *)&v27 init];
  if (v5)
  {
    v6 = [SSSQLiteDatabase alloc];
    v7 = [NSURL fileURLWithPath:v4];
    v8 = [v6 initWithDatabaseURL:v7 readOnly:0 protectionType:NSFileProtectionCompleteUntilFirstUserAuthentication];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    [*(v5 + 1) setSetupBlock:&stru_100327150];
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = objc_alloc_init(ExternalDownloadState);
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    v14 = [[DownloadPipeline alloc] initWithDownloadsDatabase:v5];
    v15 = *(v5 + 5);
    *(v5 + 5) = v14;

    v16 = [[DownloadPolicyManager alloc] initWithDownloadsDatabase:v5];
    v17 = *(v5 + 6);
    *(v5 + 6) = v16;

    v18 = +[DownloadHandlerManager handlerManager];
    [v18 addHandlerObserver:v5];

    if (*(v5 + 1))
    {
      v19 = [SSWeakReference weakReferenceWithObject:v5];
      v20 = [*(v5 + 1) newDispatchSourceWithType:&_dispatch_source_type_timer];
      v21 = *(v5 + 7);
      *(v5 + 7) = v20;

      dispatch_source_set_timer(*(v5 + 7), 0, 0x2540BE400uLL, 0);
      v22 = *(v5 + 7);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100001F30;
      v25[3] = &unk_100327110;
      v26 = v19;
      v23 = v19;
      dispatch_source_set_event_handler(v22, v25);
      dispatch_resume(*(v5 + 7));
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[DownloadHandlerManager handlerManager];
  [v3 removeHandlerObserver:self];

  progressTickTimer = self->_progressTickTimer;
  if (progressTickTimer)
  {
    dispatch_source_cancel(progressTickTimer);
  }

  dirtyProgressTimer = self->_dirtyProgressTimer;
  if (dirtyProgressTimer)
  {
    dispatch_source_cancel(dirtyProgressTimer);
  }

  v6.receiver = self;
  v6.super_class = DownloadsDatabase;
  [(DownloadsDatabase *)&v6 dealloc];
}

- (void)dispatchAfter:(unint64_t)after block:(id)block
{
  blockCopy = block;
  v7 = +[Daemon daemon];
  [v7 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  database = self->_database;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100090278;
  v10[3] = &unk_100327198;
  v11 = blockCopy;
  v9 = blockCopy;
  [(SSSQLiteDatabase *)database dispatchAfter:after block:v10];
}

- (void)dispatchBlockAsync:(id)async
{
  asyncCopy = async;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000903A0;
  v8[3] = &unk_100327198;
  v9 = asyncCopy;
  v7 = asyncCopy;
  [(SSSQLiteDatabase *)database dispatchBlockAsync:v8];
}

- (void)modifyAsyncUsingPurchaseTransactionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009049C;
  v4[3] = &unk_1003271C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(DownloadsDatabase *)selfCopy dispatchBlockAsync:v4];
}

- (void)modifyAsyncUsingTransactionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090558;
  v4[3] = &unk_1003271C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(DownloadsDatabase *)selfCopy dispatchBlockAsync:v4];
}

- (void)modifyExternalAsyncUsingTransactionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090614;
  v4[3] = &unk_1003271C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(DownloadsDatabase *)selfCopy dispatchBlockAsync:v4];
}

- (id)modifyExternalUsingTransactionBlock:(id)block
{
  blockCopy = block;
  _newSessionDescription = [(DownloadsDatabase *)self _newSessionDescription];
  v6 = +[Daemon daemon];
  [v6 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  v7 = [[DownloadsExternalTransaction alloc] initWithSessionDescriptor:_newSessionDescription];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  database = self->_database;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000907EC;
  v14[3] = &unk_1003271E8;
  v17 = &v18;
  v9 = blockCopy;
  v16 = v9;
  v10 = v7;
  v15 = v10;
  [(SSSQLiteDatabase *)database dispatchBlockSync:v14];
  v11 = +[Daemon daemon];
  [v11 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  if (*(v19 + 24) == 1)
  {
    changeset = [(DownloadsExternalTransaction *)v10 changeset];
  }

  else
  {
    changeset = 0;
  }

  _Block_object_dispose(&v18, 8);

  return changeset;
}

- (id)modifyUsingPurchaseTransactionBlock:(id)block
{
  blockCopy = block;
  _newSessionDescription = [(DownloadsDatabase *)self _newSessionDescription];
  v6 = [(DownloadsExternalTransaction *)[PurchaseDownloadsTransaction alloc] initWithSessionDescriptor:_newSessionDescription];
  v7 = [(DownloadsDatabase *)self _modifyUsingTransaction:v6 block:blockCopy];

  return v7;
}

- (id)modifyUsingTransactionBlock:(id)block
{
  blockCopy = block;
  _newSessionDescription = [(DownloadsDatabase *)self _newSessionDescription];
  v6 = [(DownloadsExternalTransaction *)[DownloadsTransaction alloc] initWithSessionDescriptor:_newSessionDescription];
  v7 = [(DownloadsDatabase *)self _modifyUsingTransaction:v6 block:blockCopy];

  return v7;
}

- (void)readUsingTransactionBlock:(id)block
{
  blockCopy = block;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  database = self->_database;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100090A3C;
  v12 = &unk_100327210;
  selfCopy = self;
  v14 = blockCopy;
  v7 = blockCopy;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:&v9];
  v8 = [Daemon daemon:v9];
  [v8 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];
}

- (void)downloadHandlerManager:(id)manager sessionsDidChange:(id)change
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100090B3C;
  v5[3] = &unk_100327238;
  selfCopy = self;
  changeCopy = change;
  v4 = changeCopy;
  [(DownloadsDatabase *)selfCopy dispatchBlockAsync:v5];
}

- (void)_commitExternalChangesForChangeset:(id)changeset
{
  changesetCopy = changeset;
  canceledAppDataRestoreIDs = [changesetCopy canceledAppDataRestoreIDs];
  if ([canceledAppDataRestoreIDs count])
  {
    v5 = +[Daemon daemon];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100091158;
    v68[3] = &unk_100327110;
    v69 = canceledAppDataRestoreIDs;
    [v5 keepAliveWithAssertion:@"com.apple.itunesstored.DownloadsDatabase" block:v68];
  }

  applicationWorkspaceChanges = [changesetCopy applicationWorkspaceChanges];
  if ([applicationWorkspaceChanges count])
  {
    v7 = +[ApplicationWorkspace defaultWorkspace];
    [v7 applyWorkspaceChanges:applicationWorkspaceChanges];
  }

  v54 = applicationWorkspaceChanges;
  v55 = canceledAppDataRestoreIDs;
  deletedHTTPCookies = [changesetCopy deletedHTTPCookies];
  hTTPCookies = [changesetCopy HTTPCookies];
  if ([deletedHTTPCookies count] || objc_msgSend(hTTPCookies, "count"))
  {
    v10 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v11 = deletedHTTPCookies;
    v12 = [v11 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
      do
      {
        v15 = 0;
        do
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 deleteCookie:*(*(&v64 + 1) + 8 * v15)];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v13);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = hTTPCookies;
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v61;
      do
      {
        v20 = 0;
        do
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v10 setCookie:*(*(&v60 + 1) + 8 * v20)];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v18);
    }

    [v10 _saveCookies];
  }

  iPodLibraryItems = [changesetCopy IPodLibraryItems];
  if ([iPodLibraryItems count])
  {
    v22 = +[IPodLibrary deviceIPodLibrary];
    [v22 scheduleLibraryItems:iPodLibraryItems];
  }

  v53 = deletedHTTPCookies;
  deletedIPodLibraryDownloadIDs = [changesetCopy deletedIPodLibraryDownloadIDs];
  if ([deletedIPodLibraryDownloadIDs count])
  {
    v24 = +[IPodLibrary deviceIPodLibrary];
    [v24 removeDownloadsWithIdentifiers:deletedIPodLibraryDownloadIDs canceled:0];
  }

  canceledIPodLibraryDownloadIDs = [changesetCopy canceledIPodLibraryDownloadIDs];
  if ([canceledIPodLibraryDownloadIDs count])
  {
    v26 = +[IPodLibrary deviceIPodLibrary];
    [v26 removeDownloadsWithIdentifiers:canceledIPodLibraryDownloadIDs canceled:1];

    v27 = +[PurchaseController sharedController];
    [v27 cancelPurchasesForDownloadsWithIdentifiers:canceledIPodLibraryDownloadIDs];
  }

  sSAppWakeRequests = [changesetCopy SSAppWakeRequests];
  if ([sSAppWakeRequests count])
  {
    v29 = +[SpringBoardUtility sharedInstance];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v30 = sSAppWakeRequests;
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v57;
      do
      {
        v34 = 0;
        do
        {
          if (*v57 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [v29 wakeAppUsingRequest:*(*(&v56 + 1) + 8 * v34)];
          v34 = v34 + 1;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v32);
    }
  }

  downloadChangeTypes = [changesetCopy downloadChangeTypes];
  v36 = downloadChangeTypes;
  if ((downloadChangeTypes & 0x40) != 0)
  {
    v42 = +[SpringBoardUtility sharedInstance];
    [v42 resetEnabledRemoteNotificationTypes];

    if ((v36 & 4) == 0)
    {
LABEL_39:
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_40;
      }

LABEL_47:
      restoreReason = [changesetCopy restoreReason];
      v45 = +[StoreDownloadQueue sharedDownloadQueue];
      restoreReason2 = v45;
      if (restoreReason)
      {
        v46 = restoreReason;
      }

      else
      {
        v46 = @"other";
      }

      [(__CFString *)v45 restoreAllRestorableDownloadsWithReason:v46];
      goto LABEL_51;
    }
  }

  else if ((downloadChangeTypes & 4) == 0)
  {
    goto LABEL_39;
  }

  v43 = objc_alloc_init(FinishDownloadsOperation);
  v44 = +[ISOperationQueue mainQueue];
  [v44 addOperation:v43];

  if ((v36 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_40:
  if ((v36 & 0x20) != 0)
  {
    restoreReason = [changesetCopy restorableDownloadIDs];
    restoreReason2 = [changesetCopy restoreReason];
    v39 = +[StoreDownloadQueue sharedDownloadQueue];
    v40 = v39;
    if (restoreReason2)
    {
      v41 = restoreReason2;
    }

    else
    {
      v41 = @"other";
    }

    [v39 restoreDownloadsWithIdentifiers:restoreReason reason:v41];

LABEL_51:
  }

  if ((v36 & 8) != 0)
  {
    changedDownloadKinds = [changesetCopy changedDownloadKinds];
    v48 = [changedDownloadKinds containsObject:SSDownloadKindInAppContent];

    if (v48)
    {
      v49 = +[MicroPaymentQueue paymentQueue];
      removedPersistentDownloadIDs = [changesetCopy removedPersistentDownloadIDs];
      [v49 finishDownloadsWithIdentifiers:removedPersistentDownloadIDs];
    }
  }

  v51 = +[DownloadController controller];
  [v51 notifyClientsOfChangeset:changesetCopy];
}

- (id)_modifyUsingTransaction:(id)transaction block:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = +[Daemon daemon];
  [v8 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  database = self->_database;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100091310;
  v18 = &unk_100327260;
  v22 = &v23;
  v10 = blockCopy;
  v21 = v10;
  v11 = transactionCopy;
  v19 = v11;
  selfCopy = self;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:&v15];
  if (*(v24 + 24) == 1)
  {
    changeset = [v11 changeset];
    [(DownloadsDatabase *)self _commitExternalChangesForChangeset:changeset];
  }

  else
  {
    changeset = 0;
  }

  v13 = [Daemon daemon:v15];
  [v13 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];

  _Block_object_dispose(&v23, 8);

  return changeset;
}

@end